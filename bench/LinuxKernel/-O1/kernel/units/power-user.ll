; ModuleID = 'kernel/power/user.c'
source_filename = "kernel/power/user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_user__340_466_snapshot_device_init\22, \22a\22\09\09"
module asm "__initcall__kmod_user__340_466_snapshot_device_init6:\09\09\09"
module asm ".long\09__initstub__kmod_user__340_466_snapshot_device_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.snapshot_data = type { %struct.snapshot_handle, i32, i32, i8, i8, i8, i8, i32 }
%struct.snapshot_handle = type { i32, ptr, i32 }
%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pcpu_hot = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17, [16 x i8] }
%struct.anon.17 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.compat_resume_swap_area = type <{ i64, i32 }>
%struct.resume_swap_area = type <{ i64, i32 }>
%struct.thread_info = type { i64, i64, i32, i32 }

@snapshot_state = internal global %struct.snapshot_data zeroinitializer, align 8, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_user__340_466_snapshot_device_init6341 = internal global ptr @__initstub__kmod_user__340_466_snapshot_device_init6, section ".discard.addressable", align 8, !dbg !5236
@snapshot_device = internal global %struct.miscdevice { i32 231, ptr @.str, ptr @snapshot_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, align 8, !dbg !5243
@.str = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1, !dbg !5238
@snapshot_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr @snapshot_read, ptr @snapshot_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snapshot_ioctl, ptr @snapshot_compat_ioctl, ptr null, i64 0, ptr @snapshot_open, ptr null, ptr @snapshot_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5257
@need_wait = internal global i8 0, align 1, !dbg !5259
@system_transition_mutex = external dso_local global %struct.mutex, align 8
@in_suspend = external dso_local global i32, align 4
@freezer_test_done = external dso_local global i8, align 1
@image_size = external dso_local global i64, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !5261
@swsusp_resume_device = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_user__340_466_snapshot_device_init6341], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @is_hibernate_resume_dev(i32 noundef %dev) #0 align 16 !dbg !5293 {
entry:
  %dev.addr = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5297, metadata !DIExpression()), !dbg !5298
  %call = call zeroext i1 @hibernation_available() #14, !dbg !5299
  br i1 %call, label %land.rhs, label %land.end, !dbg !5300

land.rhs:                                         ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.snapshot_data, ptr @snapshot_state, i32 0, i32 7), align 4, !dbg !5301
  %1 = load i32, ptr %dev.addr, align 4, !dbg !5302
  %cmp = icmp eq i32 %0, %1, !dbg !5303
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !5304
  %land.ext = zext i1 %2 to i32, !dbg !5300
  ret i32 %land.ext, !dbg !5305
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5306 dso_local zeroext i1 @hibernation_available() #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_user__340_466_snapshot_device_init6() #3 section ".init.text" align 16 !dbg !5307 {
entry:
  %call = call i32 @snapshot_device_init() #15, !dbg !5308
  ret i32 %call, !dbg !5308
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @snapshot_device_init() #3 section ".init.text" align 16 !dbg !5309 {
entry:
  %call = call i32 @misc_register(ptr noundef @snapshot_device) #14, !dbg !5310
  ret i32 %call, !dbg !5311
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5312 dso_local i32 @misc_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snapshot_read(ptr noundef %filp, ptr noundef %buf, i64 noundef %count, ptr noundef %offp) #0 align 16 !dbg !5316 {
entry:
  %filp.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %offp.addr = alloca ptr, align 8
  %pg_offp = alloca i64, align 8
  %data = alloca ptr, align 8
  %sleep_flags = alloca i32, align 4
  %res = alloca i64, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5318, metadata !DIExpression()), !dbg !5328
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5319, metadata !DIExpression()), !dbg !5329
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5320, metadata !DIExpression()), !dbg !5330
  store ptr %offp, ptr %offp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offp.addr, metadata !5321, metadata !DIExpression()), !dbg !5331
  call void @llvm.lifetime.start.p0(i64 8, ptr %pg_offp) #16, !dbg !5332
  call void @llvm.dbg.declare(metadata ptr %pg_offp, metadata !5322, metadata !DIExpression()), !dbg !5333
  %0 = load ptr, ptr %offp.addr, align 8, !dbg !5334
  %1 = load i64, ptr %0, align 8, !dbg !5335
  %and = and i64 %1, 4095, !dbg !5336
  store i64 %and, ptr %pg_offp, align 8, !dbg !5333
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5337
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5323, metadata !DIExpression()), !dbg !5338
  call void @llvm.lifetime.start.p0(i64 4, ptr %sleep_flags) #16, !dbg !5339
  call void @llvm.dbg.declare(metadata ptr %sleep_flags, metadata !5325, metadata !DIExpression()), !dbg !5340
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5341
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5326, metadata !DIExpression()), !dbg !5342
  %call = call i32 @lock_system_sleep() #14, !dbg !5343
  store i32 %call, ptr %sleep_flags, align 4, !dbg !5344
  %2 = load ptr, ptr %filp.addr, align 8, !dbg !5345
  %private_data = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 15, !dbg !5346
  %3 = load ptr, ptr %private_data, align 8, !dbg !5346
  store ptr %3, ptr %data, align 8, !dbg !5347
  %4 = load ptr, ptr %data, align 8, !dbg !5348
  %ready = getelementptr inbounds %struct.snapshot_data, ptr %4, i32 0, i32 4, !dbg !5350
  %5 = load i8, ptr %ready, align 1, !dbg !5350, !range !5351, !noundef !603
  %tobool = trunc i8 %5 to i1, !dbg !5350
  br i1 %tobool, label %if.end, label %if.then, !dbg !5352

if.then:                                          ; preds = %entry
  store i64 -61, ptr %res, align 8, !dbg !5353
  br label %Unlock, !dbg !5355

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %pg_offp, align 8, !dbg !5356
  %tobool1 = icmp ne i64 %6, 0, !dbg !5356
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !5358

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %data, align 8, !dbg !5359
  %handle = getelementptr inbounds %struct.snapshot_data, ptr %7, i32 0, i32 0, !dbg !5361
  %call3 = call i32 @snapshot_read_next(ptr noundef %handle) #14, !dbg !5362
  %conv = sext i32 %call3 to i64, !dbg !5362
  store i64 %conv, ptr %res, align 8, !dbg !5363
  %8 = load i64, ptr %res, align 8, !dbg !5364
  %cmp = icmp sle i64 %8, 0, !dbg !5366
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5367

if.then5:                                         ; preds = %if.then2
  br label %Unlock, !dbg !5368

if.end6:                                          ; preds = %if.then2
  br label %if.end7, !dbg !5369

if.else:                                          ; preds = %if.end
  %9 = load i64, ptr %pg_offp, align 8, !dbg !5370
  %sub = sub i64 4096, %9, !dbg !5372
  store i64 %sub, ptr %res, align 8, !dbg !5373
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end6
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !5374
  %11 = load i64, ptr %count.addr, align 8, !dbg !5375
  %12 = load ptr, ptr %data, align 8, !dbg !5376
  %handle8 = getelementptr inbounds %struct.snapshot_data, ptr %12, i32 0, i32 0, !dbg !5376
  %buffer = getelementptr inbounds %struct.snapshot_handle, ptr %handle8, i32 0, i32 1, !dbg !5376
  %13 = load ptr, ptr %buffer, align 8, !dbg !5376
  %14 = load i64, ptr %res, align 8, !dbg !5377
  %call9 = call i64 @simple_read_from_buffer(ptr noundef %10, i64 noundef %11, ptr noundef %pg_offp, ptr noundef %13, i64 noundef %14) #14, !dbg !5378
  store i64 %call9, ptr %res, align 8, !dbg !5379
  %15 = load i64, ptr %res, align 8, !dbg !5380
  %cmp10 = icmp sgt i64 %15, 0, !dbg !5382
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !5383

if.then12:                                        ; preds = %if.end7
  %16 = load i64, ptr %res, align 8, !dbg !5384
  %17 = load ptr, ptr %offp.addr, align 8, !dbg !5385
  %18 = load i64, ptr %17, align 8, !dbg !5386
  %add = add i64 %18, %16, !dbg !5386
  store i64 %add, ptr %17, align 8, !dbg !5386
  br label %if.end13, !dbg !5387

if.end13:                                         ; preds = %if.then12, %if.end7
  br label %Unlock, !dbg !5388

Unlock:                                           ; preds = %if.end13, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !5327), !dbg !5389
  %19 = load i32, ptr %sleep_flags, align 4, !dbg !5390
  call void @unlock_system_sleep(i32 noundef %19) #14, !dbg !5391
  %20 = load i64, ptr %res, align 8, !dbg !5392
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5393
  call void @llvm.lifetime.end.p0(i64 4, ptr %sleep_flags) #16, !dbg !5393
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5393
  call void @llvm.lifetime.end.p0(i64 8, ptr %pg_offp) #16, !dbg !5393
  ret i64 %20, !dbg !5394
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snapshot_write(ptr noundef %filp, ptr noundef %buf, i64 noundef %count, ptr noundef %offp) #0 align 16 !dbg !5395 {
entry:
  %filp.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %offp.addr = alloca ptr, align 8
  %pg_offp = alloca i64, align 8
  %data = alloca ptr, align 8
  %sleep_flags = alloca i64, align 8
  %res = alloca i64, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5397, metadata !DIExpression()), !dbg !5406
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5398, metadata !DIExpression()), !dbg !5407
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5399, metadata !DIExpression()), !dbg !5408
  store ptr %offp, ptr %offp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offp.addr, metadata !5400, metadata !DIExpression()), !dbg !5409
  call void @llvm.lifetime.start.p0(i64 8, ptr %pg_offp) #16, !dbg !5410
  call void @llvm.dbg.declare(metadata ptr %pg_offp, metadata !5401, metadata !DIExpression()), !dbg !5411
  %0 = load ptr, ptr %offp.addr, align 8, !dbg !5412
  %1 = load i64, ptr %0, align 8, !dbg !5413
  %and = and i64 %1, 4095, !dbg !5414
  store i64 %and, ptr %pg_offp, align 8, !dbg !5411
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5402, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 8, ptr %sleep_flags) #16, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %sleep_flags, metadata !5403, metadata !DIExpression()), !dbg !5418
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #16, !dbg !5419
  call void @llvm.dbg.declare(metadata ptr %res, metadata !5404, metadata !DIExpression()), !dbg !5420
  %2 = load i8, ptr @need_wait, align 1, !dbg !5421, !range !5351, !noundef !603
  %tobool = trunc i8 %2 to i1, !dbg !5421
  br i1 %tobool, label %if.then, label %if.end, !dbg !5423

if.then:                                          ; preds = %entry
  call void @wait_for_device_probe() #14, !dbg !5424
  store i8 0, ptr @need_wait, align 1, !dbg !5426
  br label %if.end, !dbg !5427

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @lock_system_sleep() #14, !dbg !5428
  %conv = zext i32 %call to i64, !dbg !5428
  store i64 %conv, ptr %sleep_flags, align 8, !dbg !5429
  %3 = load ptr, ptr %filp.addr, align 8, !dbg !5430
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15, !dbg !5431
  %4 = load ptr, ptr %private_data, align 8, !dbg !5431
  store ptr %4, ptr %data, align 8, !dbg !5432
  %5 = load i64, ptr %pg_offp, align 8, !dbg !5433
  %tobool1 = icmp ne i64 %5, 0, !dbg !5433
  br i1 %tobool1, label %if.else, label %if.then2, !dbg !5435

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %data, align 8, !dbg !5436
  %handle = getelementptr inbounds %struct.snapshot_data, ptr %6, i32 0, i32 0, !dbg !5438
  %call3 = call i32 @snapshot_write_next(ptr noundef %handle) #14, !dbg !5439
  %conv4 = sext i32 %call3 to i64, !dbg !5439
  store i64 %conv4, ptr %res, align 8, !dbg !5440
  %7 = load i64, ptr %res, align 8, !dbg !5441
  %cmp = icmp sle i64 %7, 0, !dbg !5443
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !5444

if.then6:                                         ; preds = %if.then2
  br label %unlock, !dbg !5445

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !5446

if.else:                                          ; preds = %if.end
  store i64 4096, ptr %res, align 8, !dbg !5447
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.end7
  %8 = load ptr, ptr %data, align 8, !dbg !5449
  %handle9 = getelementptr inbounds %struct.snapshot_data, ptr %8, i32 0, i32 0, !dbg !5449
  %buffer = getelementptr inbounds %struct.snapshot_handle, ptr %handle9, i32 0, i32 1, !dbg !5449
  %9 = load ptr, ptr %buffer, align 8, !dbg !5449
  %tobool10 = icmp ne ptr %9, null, !dbg !5449
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5451

if.then11:                                        ; preds = %if.end8
  store i64 -22, ptr %res, align 8, !dbg !5452
  br label %unlock, !dbg !5454

if.end12:                                         ; preds = %if.end8
  %10 = load ptr, ptr %data, align 8, !dbg !5455
  %handle13 = getelementptr inbounds %struct.snapshot_data, ptr %10, i32 0, i32 0, !dbg !5455
  %buffer14 = getelementptr inbounds %struct.snapshot_handle, ptr %handle13, i32 0, i32 1, !dbg !5455
  %11 = load ptr, ptr %buffer14, align 8, !dbg !5455
  %12 = load i64, ptr %res, align 8, !dbg !5456
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !5457
  %14 = load i64, ptr %count.addr, align 8, !dbg !5458
  %call15 = call i64 @simple_write_to_buffer(ptr noundef %11, i64 noundef %12, ptr noundef %pg_offp, ptr noundef %13, i64 noundef %14) #14, !dbg !5459
  store i64 %call15, ptr %res, align 8, !dbg !5460
  %15 = load i64, ptr %res, align 8, !dbg !5461
  %cmp16 = icmp sgt i64 %15, 0, !dbg !5463
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !5464

if.then18:                                        ; preds = %if.end12
  %16 = load i64, ptr %res, align 8, !dbg !5465
  %17 = load ptr, ptr %offp.addr, align 8, !dbg !5466
  %18 = load i64, ptr %17, align 8, !dbg !5467
  %add = add i64 %18, %16, !dbg !5467
  store i64 %add, ptr %17, align 8, !dbg !5467
  br label %if.end19, !dbg !5468

if.end19:                                         ; preds = %if.then18, %if.end12
  br label %unlock, !dbg !5469

unlock:                                           ; preds = %if.end19, %if.then11, %if.then6
  call void @llvm.dbg.label(metadata !5405), !dbg !5470
  %19 = load i64, ptr %sleep_flags, align 8, !dbg !5471
  %conv20 = trunc i64 %19 to i32, !dbg !5471
  call void @unlock_system_sleep(i32 noundef %conv20) #14, !dbg !5472
  %20 = load i64, ptr %res, align 8, !dbg !5473
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #16, !dbg !5474
  call void @llvm.lifetime.end.p0(i64 8, ptr %sleep_flags) #16, !dbg !5474
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5474
  call void @llvm.lifetime.end.p0(i64 8, ptr %pg_offp) #16, !dbg !5474
  ret i64 %20, !dbg !5475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snapshot_ioctl(ptr noundef %filp, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5476 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %error = alloca i32, align 4
  %data = alloca ptr, align 8
  %size = alloca i64, align 8
  %offset = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp48 = alloca i64, align 8
  %tmp82 = alloca i64, align 8
  %__ret_pu83 = alloca i32, align 4
  %__ptr_pu84 = alloca ptr, align 8
  %__val_pu85 = alloca i64, align 8
  %__x86 = alloca i64, align 8
  %__ptr87 = alloca ptr, align 8
  %tmp90 = alloca i64, align 8
  %tmp98 = alloca i64, align 8
  %__ret_pu99 = alloca i32, align 4
  %__ptr_pu100 = alloca ptr, align 8
  %__val_pu101 = alloca i64, align 8
  %__x102 = alloca i64, align 8
  %__ptr103 = alloca ptr, align 8
  %tmp106 = alloca i64, align 8
  %tmp125 = alloca i64, align 8
  %__ret_pu126 = alloca i32, align 4
  %__ptr_pu127 = alloca ptr, align 8
  %__val_pu128 = alloca i64, align 8
  %__x129 = alloca i64, align 8
  %__ptr130 = alloca ptr, align 8
  %tmp133 = alloca i64, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5478, metadata !DIExpression()), !dbg !5518
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5479, metadata !DIExpression()), !dbg !5519
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5480, metadata !DIExpression()), !dbg !5520
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5521
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5481, metadata !DIExpression()), !dbg !5522
  store i32 0, ptr %error, align 4, !dbg !5522
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5523
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5482, metadata !DIExpression()), !dbg !5524
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #16, !dbg !5525
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5483, metadata !DIExpression()), !dbg !5526
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !5527
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5484, metadata !DIExpression()), !dbg !5528
  %0 = load i8, ptr @need_wait, align 1, !dbg !5529, !range !5351, !noundef !603
  %tobool = trunc i8 %0 to i1, !dbg !5529
  br i1 %tobool, label %if.then, label %if.end, !dbg !5531

if.then:                                          ; preds = %entry
  call void @wait_for_device_probe() #14, !dbg !5532
  store i8 0, ptr @need_wait, align 1, !dbg !5534
  br label %if.end, !dbg !5535

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %cmd.addr, align 4, !dbg !5536
  %shr = lshr i32 %1, 8, !dbg !5536
  %and = and i32 %shr, 255, !dbg !5536
  %cmp = icmp ne i32 %and, 51, !dbg !5538
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5539

if.then1:                                         ; preds = %if.end
  store i64 -25, ptr %retval, align 8, !dbg !5540
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5540

if.end2:                                          ; preds = %if.end
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !5541
  %shr3 = lshr i32 %2, 0, !dbg !5541
  %and4 = and i32 %shr3, 255, !dbg !5541
  %cmp5 = icmp ugt i32 %and4, 20, !dbg !5543
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5544

if.then6:                                         ; preds = %if.end2
  store i64 -25, ptr %retval, align 8, !dbg !5545
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5545

if.end7:                                          ; preds = %if.end2
  %call = call zeroext i1 @capable(i32 noundef 21) #14, !dbg !5546
  br i1 %call, label %if.end9, label %if.then8, !dbg !5548

if.then8:                                         ; preds = %if.end7
  store i64 -1, ptr %retval, align 8, !dbg !5549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5549

if.end9:                                          ; preds = %if.end7
  %call10 = call i32 @mutex_trylock(ptr noundef @system_transition_mutex) #14, !dbg !5550
  %tobool11 = icmp ne i32 %call10, 0, !dbg !5550
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5552

if.then12:                                        ; preds = %if.end9
  store i64 -16, ptr %retval, align 8, !dbg !5553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5553

if.end13:                                         ; preds = %if.end9
  call void @lock_device_hotplug() #14, !dbg !5554
  %3 = load ptr, ptr %filp.addr, align 8, !dbg !5555
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15, !dbg !5556
  %4 = load ptr, ptr %private_data, align 8, !dbg !5556
  store ptr %4, ptr %data, align 8, !dbg !5557
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5558
  switch i32 %5, label %sw.default [
    i32 13057, label %sw.bb
    i32 13058, label %sw.bb26
    i32 1074017041, label %sw.bb33
    i32 13060, label %sw.bb55
    i32 13061, label %sw.bb72
    i32 13074, label %sw.bb75
    i32 -2146946290, label %sw.bb76
    i32 -2146946285, label %sw.bb94
    i32 -2146946284, label %sw.bb110
    i32 13065, label %sw.bb139
    i32 13067, label %sw.bb150
    i32 13071, label %sw.bb157
    i32 13072, label %sw.bb163
    i32 1074541325, label %sw.bb169
  ], !dbg !5559

sw.bb:                                            ; preds = %if.end13
  %6 = load ptr, ptr %data, align 8, !dbg !5560
  %frozen = getelementptr inbounds %struct.snapshot_data, ptr %6, i32 0, i32 3, !dbg !5562
  %7 = load i8, ptr %frozen, align 8, !dbg !5562, !range !5351, !noundef !603
  %tobool14 = trunc i8 %7 to i1, !dbg !5562
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !5563

if.then15:                                        ; preds = %sw.bb
  br label %sw.epilog, !dbg !5564

if.end16:                                         ; preds = %sw.bb
  call void @ksys_sync_helper() #14, !dbg !5565
  %call17 = call i32 @freeze_processes() #14, !dbg !5566
  store i32 %call17, ptr %error, align 4, !dbg !5567
  %8 = load i32, ptr %error, align 4, !dbg !5568
  %tobool18 = icmp ne i32 %8, 0, !dbg !5568
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !5570

if.then19:                                        ; preds = %if.end16
  br label %sw.epilog, !dbg !5571

if.end20:                                         ; preds = %if.end16
  %call21 = call i32 @create_basic_memory_bitmaps() #14, !dbg !5572
  store i32 %call21, ptr %error, align 4, !dbg !5573
  %9 = load i32, ptr %error, align 4, !dbg !5574
  %tobool22 = icmp ne i32 %9, 0, !dbg !5574
  br i1 %tobool22, label %if.then23, label %if.else, !dbg !5576

if.then23:                                        ; preds = %if.end20
  call void @thaw_processes() #14, !dbg !5577
  br label %if.end25, !dbg !5577

if.else:                                          ; preds = %if.end20
  %10 = load ptr, ptr %data, align 8, !dbg !5578
  %frozen24 = getelementptr inbounds %struct.snapshot_data, ptr %10, i32 0, i32 3, !dbg !5579
  store i8 1, ptr %frozen24, align 8, !dbg !5580
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23
  br label %sw.epilog, !dbg !5581

sw.bb26:                                          ; preds = %if.end13
  %11 = load ptr, ptr %data, align 8, !dbg !5582
  %frozen27 = getelementptr inbounds %struct.snapshot_data, ptr %11, i32 0, i32 3, !dbg !5584
  %12 = load i8, ptr %frozen27, align 8, !dbg !5584, !range !5351, !noundef !603
  %tobool28 = trunc i8 %12 to i1, !dbg !5584
  br i1 %tobool28, label %lor.lhs.false, label %if.then30, !dbg !5585

lor.lhs.false:                                    ; preds = %sw.bb26
  %13 = load ptr, ptr %data, align 8, !dbg !5586
  %ready = getelementptr inbounds %struct.snapshot_data, ptr %13, i32 0, i32 4, !dbg !5587
  %14 = load i8, ptr %ready, align 1, !dbg !5587, !range !5351, !noundef !603
  %tobool29 = trunc i8 %14 to i1, !dbg !5587
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !5588

if.then30:                                        ; preds = %lor.lhs.false, %sw.bb26
  br label %sw.epilog, !dbg !5589

if.end31:                                         ; preds = %lor.lhs.false
  call void @pm_restore_gfp_mask() #14, !dbg !5590
  call void @free_basic_memory_bitmaps() #14, !dbg !5591
  %15 = load ptr, ptr %data, align 8, !dbg !5592
  %free_bitmaps = getelementptr inbounds %struct.snapshot_data, ptr %15, i32 0, i32 6, !dbg !5593
  store i8 0, ptr %free_bitmaps, align 1, !dbg !5594
  call void @thaw_processes() #14, !dbg !5595
  %16 = load ptr, ptr %data, align 8, !dbg !5596
  %frozen32 = getelementptr inbounds %struct.snapshot_data, ptr %16, i32 0, i32 3, !dbg !5597
  store i8 0, ptr %frozen32, align 8, !dbg !5598
  br label %sw.epilog, !dbg !5599

sw.bb33:                                          ; preds = %if.end13
  %17 = load ptr, ptr %data, align 8, !dbg !5600
  %mode = getelementptr inbounds %struct.snapshot_data, ptr %17, i32 0, i32 2, !dbg !5602
  %18 = load i32, ptr %mode, align 4, !dbg !5602
  %cmp34 = icmp ne i32 %18, 0, !dbg !5603
  br i1 %cmp34, label %if.then41, label %lor.lhs.false35, !dbg !5604

lor.lhs.false35:                                  ; preds = %sw.bb33
  %19 = load ptr, ptr %data, align 8, !dbg !5605
  %frozen36 = getelementptr inbounds %struct.snapshot_data, ptr %19, i32 0, i32 3, !dbg !5606
  %20 = load i8, ptr %frozen36, align 8, !dbg !5606, !range !5351, !noundef !603
  %tobool37 = trunc i8 %20 to i1, !dbg !5606
  br i1 %tobool37, label %lor.lhs.false38, label %if.then41, !dbg !5607

lor.lhs.false38:                                  ; preds = %lor.lhs.false35
  %21 = load ptr, ptr %data, align 8, !dbg !5608
  %ready39 = getelementptr inbounds %struct.snapshot_data, ptr %21, i32 0, i32 4, !dbg !5609
  %22 = load i8, ptr %ready39, align 1, !dbg !5609, !range !5351, !noundef !603
  %tobool40 = trunc i8 %22 to i1, !dbg !5609
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !5610

if.then41:                                        ; preds = %lor.lhs.false38, %lor.lhs.false35, %sw.bb33
  store i32 -1, ptr %error, align 4, !dbg !5611
  br label %sw.epilog, !dbg !5613

if.end42:                                         ; preds = %lor.lhs.false38
  call void @pm_restore_gfp_mask() #14, !dbg !5614
  %23 = load ptr, ptr %data, align 8, !dbg !5615
  %platform_support = getelementptr inbounds %struct.snapshot_data, ptr %23, i32 0, i32 5, !dbg !5616
  %24 = load i8, ptr %platform_support, align 2, !dbg !5616, !range !5351, !noundef !603
  %tobool43 = trunc i8 %24 to i1, !dbg !5616
  %conv = zext i1 %tobool43 to i32, !dbg !5615
  %call44 = call i32 @hibernation_snapshot(i32 noundef %conv) #14, !dbg !5617
  store i32 %call44, ptr %error, align 4, !dbg !5618
  %25 = load i32, ptr %error, align 4, !dbg !5619
  %tobool45 = icmp ne i32 %25, 0, !dbg !5619
  br i1 %tobool45, label %if.end54, label %if.then46, !dbg !5620

if.then46:                                        ; preds = %if.end42
  call void @might_fault() #14, !dbg !5621
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #16, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !5485, metadata !DIExpression()), !dbg !5622
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #16, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !5491, metadata !DIExpression()), !dbg !5622
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #16, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !5492, metadata !DIExpression()), !dbg !5622
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #16, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !5493, metadata !DIExpression()), !dbg !5622
  %26 = load i32, ptr @in_suspend, align 4, !dbg !5622
  store i32 %26, ptr %__x, align 4, !dbg !5622
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #16, !dbg !5622
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !5494, metadata !DIExpression()), !dbg !5622
  %27 = load i64, ptr %arg.addr, align 8, !dbg !5622
  %28 = inttoptr i64 %27 to ptr, !dbg !5622
  store ptr %28, ptr %__ptr, align 8, !dbg !5622
  %29 = load ptr, ptr %__ptr, align 8, !dbg !5622
  store ptr %29, ptr %__ptr_pu, align 8, !dbg !5622
  %30 = load i32, ptr %__x, align 4, !dbg !5622
  store i32 %30, ptr %__val_pu, align 4, !dbg !5622
  %31 = call i64 @llvm.read_register.i64(metadata !5283), !dbg !5622
  %32 = load ptr, ptr %__ptr_pu, align 8, !dbg !5622
  %33 = load i32, ptr %__val_pu, align 4, !dbg !5622
  %34 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %32, i32 %33, i64 4, i64 %31) #16, !dbg !5622, !srcloc !5623
  %asmresult = extractvalue { ptr, i64 } %34, 0, !dbg !5622
  %asmresult47 = extractvalue { ptr, i64 } %34, 1, !dbg !5622
  %35 = ptrtoint ptr %asmresult to i64, !dbg !5622
  %36 = trunc i64 %35 to i32, !dbg !5622
  store i32 %36, ptr %__ret_pu, align 4, !dbg !5622
  call void @llvm.write_register.i64(metadata !5283, i64 %asmresult47), !dbg !5622
  %37 = load ptr, ptr %__ptr, align 8, !dbg !5624
  call void @kmsan_copy_to_user(ptr noundef %37, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #14, !dbg !5624
  %38 = load i32, ptr %__ret_pu, align 4, !dbg !5622
  %conv49 = sext i32 %38 to i64, !dbg !5622
  %expval = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !5622
  store i64 %expval, ptr %tmp48, align 8, !dbg !5622
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #16, !dbg !5621
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #16, !dbg !5621
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #16, !dbg !5621
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #16, !dbg !5621
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #16, !dbg !5621
  %39 = load i64, ptr %tmp48, align 8, !dbg !5622
  store i64 %39, ptr %tmp, align 8, !dbg !5621
  %40 = load i64, ptr %tmp, align 8, !dbg !5621
  %conv50 = trunc i64 %40 to i32, !dbg !5626
  store i32 %conv50, ptr %error, align 4, !dbg !5627
  %41 = load i8, ptr @freezer_test_done, align 1, !dbg !5628, !range !5351, !noundef !603
  %tobool51 = trunc i8 %41 to i1, !dbg !5628
  br i1 %tobool51, label %land.end, label %land.rhs, !dbg !5629

land.rhs:                                         ; preds = %if.then46
  %42 = load i32, ptr %error, align 4, !dbg !5630
  %tobool52 = icmp ne i32 %42, 0, !dbg !5631
  %lnot = xor i1 %tobool52, true, !dbg !5631
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then46
  %43 = phi i1 [ false, %if.then46 ], [ %lnot, %land.rhs ], !dbg !5632
  %44 = load ptr, ptr %data, align 8, !dbg !5633
  %ready53 = getelementptr inbounds %struct.snapshot_data, ptr %44, i32 0, i32 4, !dbg !5634
  %frombool = zext i1 %43 to i8, !dbg !5635
  store i8 %frombool, ptr %ready53, align 1, !dbg !5635
  store i8 0, ptr @freezer_test_done, align 1, !dbg !5636
  br label %if.end54, !dbg !5637

if.end54:                                         ; preds = %land.end, %if.end42
  br label %sw.epilog, !dbg !5638

sw.bb55:                                          ; preds = %if.end13
  %45 = load ptr, ptr %data, align 8, !dbg !5639
  %handle = getelementptr inbounds %struct.snapshot_data, ptr %45, i32 0, i32 0, !dbg !5640
  call void @snapshot_write_finalize(ptr noundef %handle) #14, !dbg !5641
  %46 = load ptr, ptr %data, align 8, !dbg !5642
  %mode56 = getelementptr inbounds %struct.snapshot_data, ptr %46, i32 0, i32 2, !dbg !5644
  %47 = load i32, ptr %mode56, align 4, !dbg !5644
  %cmp57 = icmp ne i32 %47, 1, !dbg !5645
  br i1 %cmp57, label %if.then66, label %lor.lhs.false59, !dbg !5646

lor.lhs.false59:                                  ; preds = %sw.bb55
  %48 = load ptr, ptr %data, align 8, !dbg !5647
  %frozen60 = getelementptr inbounds %struct.snapshot_data, ptr %48, i32 0, i32 3, !dbg !5648
  %49 = load i8, ptr %frozen60, align 8, !dbg !5648, !range !5351, !noundef !603
  %tobool61 = trunc i8 %49 to i1, !dbg !5648
  br i1 %tobool61, label %lor.lhs.false62, label %if.then66, !dbg !5649

lor.lhs.false62:                                  ; preds = %lor.lhs.false59
  %50 = load ptr, ptr %data, align 8, !dbg !5650
  %handle63 = getelementptr inbounds %struct.snapshot_data, ptr %50, i32 0, i32 0, !dbg !5651
  %call64 = call i32 @snapshot_image_loaded(ptr noundef %handle63) #14, !dbg !5652
  %tobool65 = icmp ne i32 %call64, 0, !dbg !5652
  br i1 %tobool65, label %if.end67, label %if.then66, !dbg !5653

if.then66:                                        ; preds = %lor.lhs.false62, %lor.lhs.false59, %sw.bb55
  store i32 -1, ptr %error, align 4, !dbg !5654
  br label %sw.epilog, !dbg !5656

if.end67:                                         ; preds = %lor.lhs.false62
  %51 = load ptr, ptr %data, align 8, !dbg !5657
  %platform_support68 = getelementptr inbounds %struct.snapshot_data, ptr %51, i32 0, i32 5, !dbg !5658
  %52 = load i8, ptr %platform_support68, align 2, !dbg !5658, !range !5351, !noundef !603
  %tobool69 = trunc i8 %52 to i1, !dbg !5658
  %conv70 = zext i1 %tobool69 to i32, !dbg !5657
  %call71 = call i32 @hibernation_restore(i32 noundef %conv70) #14, !dbg !5659
  store i32 %call71, ptr %error, align 4, !dbg !5660
  br label %sw.epilog, !dbg !5661

sw.bb72:                                          ; preds = %if.end13
  call void @swsusp_free() #14, !dbg !5662
  %53 = load ptr, ptr %data, align 8, !dbg !5663
  %handle73 = getelementptr inbounds %struct.snapshot_data, ptr %53, i32 0, i32 0, !dbg !5664
  call void @llvm.memset.p0.i64(ptr align 8 %handle73, i8 0, i64 24, i1 false), !dbg !5665
  %54 = load ptr, ptr %data, align 8, !dbg !5666
  %ready74 = getelementptr inbounds %struct.snapshot_data, ptr %54, i32 0, i32 4, !dbg !5667
  store i8 0, ptr %ready74, align 1, !dbg !5668
  call void @thaw_kernel_threads() #14, !dbg !5669
  br label %sw.epilog, !dbg !5670

sw.bb75:                                          ; preds = %if.end13
  %55 = load i64, ptr %arg.addr, align 8, !dbg !5671
  store i64 %55, ptr @image_size, align 8, !dbg !5672
  br label %sw.epilog, !dbg !5673

sw.bb76:                                          ; preds = %if.end13
  %56 = load ptr, ptr %data, align 8, !dbg !5674
  %ready77 = getelementptr inbounds %struct.snapshot_data, ptr %56, i32 0, i32 4, !dbg !5676
  %57 = load i8, ptr %ready77, align 1, !dbg !5676, !range !5351, !noundef !603
  %tobool78 = trunc i8 %57 to i1, !dbg !5676
  br i1 %tobool78, label %if.end80, label %if.then79, !dbg !5677

if.then79:                                        ; preds = %sw.bb76
  store i32 -61, ptr %error, align 4, !dbg !5678
  br label %sw.epilog, !dbg !5680

if.end80:                                         ; preds = %sw.bb76
  %call81 = call i64 @snapshot_get_image_size() #14, !dbg !5681
  store i64 %call81, ptr %size, align 8, !dbg !5682
  %58 = load i64, ptr %size, align 8, !dbg !5683
  %shl = shl i64 %58, 12, !dbg !5683
  store i64 %shl, ptr %size, align 8, !dbg !5683
  call void @might_fault() #14, !dbg !5684
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu83) #16, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__ret_pu83, metadata !5495, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu84) #16, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu84, metadata !5498, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu85) #16, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__val_pu85, metadata !5499, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x86) #16, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__x86, metadata !5500, metadata !DIExpression()), !dbg !5685
  %59 = load i64, ptr %size, align 8, !dbg !5685
  store i64 %59, ptr %__x86, align 8, !dbg !5685
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr87) #16, !dbg !5685
  call void @llvm.dbg.declare(metadata ptr %__ptr87, metadata !5501, metadata !DIExpression()), !dbg !5685
  %60 = load i64, ptr %arg.addr, align 8, !dbg !5685
  %61 = inttoptr i64 %60 to ptr, !dbg !5685
  store ptr %61, ptr %__ptr87, align 8, !dbg !5685
  %62 = load ptr, ptr %__ptr87, align 8, !dbg !5685
  store ptr %62, ptr %__ptr_pu84, align 8, !dbg !5685
  %63 = load i64, ptr %__x86, align 8, !dbg !5685
  store i64 %63, ptr %__val_pu85, align 8, !dbg !5685
  %64 = call i64 @llvm.read_register.i64(metadata !5283), !dbg !5685
  %65 = load ptr, ptr %__ptr_pu84, align 8, !dbg !5685
  %66 = load i64, ptr %__val_pu85, align 8, !dbg !5685
  %67 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %65, i64 %66, i64 8, i64 %64) #16, !dbg !5685, !srcloc !5686
  %asmresult88 = extractvalue { ptr, i64 } %67, 0, !dbg !5685
  %asmresult89 = extractvalue { ptr, i64 } %67, 1, !dbg !5685
  %68 = ptrtoint ptr %asmresult88 to i64, !dbg !5685
  %69 = trunc i64 %68 to i32, !dbg !5685
  store i32 %69, ptr %__ret_pu83, align 4, !dbg !5685
  call void @llvm.write_register.i64(metadata !5283, i64 %asmresult89), !dbg !5685
  %70 = load ptr, ptr %__ptr87, align 8, !dbg !5687
  call void @kmsan_copy_to_user(ptr noundef %70, ptr noundef %__x86, i64 noundef 8, i64 noundef 0) #14, !dbg !5687
  %71 = load i32, ptr %__ret_pu83, align 4, !dbg !5685
  %conv91 = sext i32 %71 to i64, !dbg !5685
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !5685
  store i64 %expval92, ptr %tmp90, align 8, !dbg !5685
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr87) #16, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x86) #16, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu85) #16, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu84) #16, !dbg !5684
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu83) #16, !dbg !5684
  %72 = load i64, ptr %tmp90, align 8, !dbg !5685
  store i64 %72, ptr %tmp82, align 8, !dbg !5684
  %73 = load i64, ptr %tmp82, align 8, !dbg !5684
  %conv93 = trunc i64 %73 to i32, !dbg !5689
  store i32 %conv93, ptr %error, align 4, !dbg !5690
  br label %sw.epilog, !dbg !5691

sw.bb94:                                          ; preds = %if.end13
  %74 = load ptr, ptr %data, align 8, !dbg !5692
  %swap = getelementptr inbounds %struct.snapshot_data, ptr %74, i32 0, i32 1, !dbg !5693
  %75 = load i32, ptr %swap, align 8, !dbg !5693
  %call95 = call i32 @count_swap_pages(i32 noundef %75, i32 noundef 1) #14, !dbg !5694
  %conv96 = zext i32 %call95 to i64, !dbg !5694
  store i64 %conv96, ptr %size, align 8, !dbg !5695
  %76 = load i64, ptr %size, align 8, !dbg !5696
  %shl97 = shl i64 %76, 12, !dbg !5696
  store i64 %shl97, ptr %size, align 8, !dbg !5696
  call void @might_fault() #14, !dbg !5697
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu99) #16, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__ret_pu99, metadata !5502, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu100) #16, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu100, metadata !5505, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu101) #16, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__val_pu101, metadata !5506, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x102) #16, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__x102, metadata !5507, metadata !DIExpression()), !dbg !5698
  %77 = load i64, ptr %size, align 8, !dbg !5698
  store i64 %77, ptr %__x102, align 8, !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr103) #16, !dbg !5698
  call void @llvm.dbg.declare(metadata ptr %__ptr103, metadata !5508, metadata !DIExpression()), !dbg !5698
  %78 = load i64, ptr %arg.addr, align 8, !dbg !5698
  %79 = inttoptr i64 %78 to ptr, !dbg !5698
  store ptr %79, ptr %__ptr103, align 8, !dbg !5698
  %80 = load ptr, ptr %__ptr103, align 8, !dbg !5698
  store ptr %80, ptr %__ptr_pu100, align 8, !dbg !5698
  %81 = load i64, ptr %__x102, align 8, !dbg !5698
  store i64 %81, ptr %__val_pu101, align 8, !dbg !5698
  %82 = call i64 @llvm.read_register.i64(metadata !5283), !dbg !5698
  %83 = load ptr, ptr %__ptr_pu100, align 8, !dbg !5698
  %84 = load i64, ptr %__val_pu101, align 8, !dbg !5698
  %85 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %83, i64 %84, i64 8, i64 %82) #16, !dbg !5698, !srcloc !5699
  %asmresult104 = extractvalue { ptr, i64 } %85, 0, !dbg !5698
  %asmresult105 = extractvalue { ptr, i64 } %85, 1, !dbg !5698
  %86 = ptrtoint ptr %asmresult104 to i64, !dbg !5698
  %87 = trunc i64 %86 to i32, !dbg !5698
  store i32 %87, ptr %__ret_pu99, align 4, !dbg !5698
  call void @llvm.write_register.i64(metadata !5283, i64 %asmresult105), !dbg !5698
  %88 = load ptr, ptr %__ptr103, align 8, !dbg !5700
  call void @kmsan_copy_to_user(ptr noundef %88, ptr noundef %__x102, i64 noundef 8, i64 noundef 0) #14, !dbg !5700
  %89 = load i32, ptr %__ret_pu99, align 4, !dbg !5698
  %conv107 = sext i32 %89 to i64, !dbg !5698
  %expval108 = call i64 @llvm.expect.i64(i64 %conv107, i64 0), !dbg !5698
  store i64 %expval108, ptr %tmp106, align 8, !dbg !5698
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr103) #16, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x102) #16, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu101) #16, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu100) #16, !dbg !5697
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu99) #16, !dbg !5697
  %90 = load i64, ptr %tmp106, align 8, !dbg !5698
  store i64 %90, ptr %tmp98, align 8, !dbg !5697
  %91 = load i64, ptr %tmp98, align 8, !dbg !5697
  %conv109 = trunc i64 %91 to i32, !dbg !5702
  store i32 %conv109, ptr %error, align 4, !dbg !5703
  br label %sw.epilog, !dbg !5704

sw.bb110:                                         ; preds = %if.end13
  %92 = load ptr, ptr %data, align 8, !dbg !5705
  %swap111 = getelementptr inbounds %struct.snapshot_data, ptr %92, i32 0, i32 1, !dbg !5707
  %93 = load i32, ptr %swap111, align 8, !dbg !5707
  %cmp112 = icmp slt i32 %93, 0, !dbg !5708
  br i1 %cmp112, label %if.then118, label %lor.lhs.false114, !dbg !5709

lor.lhs.false114:                                 ; preds = %sw.bb110
  %94 = load ptr, ptr %data, align 8, !dbg !5710
  %swap115 = getelementptr inbounds %struct.snapshot_data, ptr %94, i32 0, i32 1, !dbg !5711
  %95 = load i32, ptr %swap115, align 8, !dbg !5711
  %cmp116 = icmp sge i32 %95, 28, !dbg !5712
  br i1 %cmp116, label %if.then118, label %if.end119, !dbg !5713

if.then118:                                       ; preds = %lor.lhs.false114, %sw.bb110
  store i32 -19, ptr %error, align 4, !dbg !5714
  br label %sw.epilog, !dbg !5716

if.end119:                                        ; preds = %lor.lhs.false114
  %96 = load ptr, ptr %data, align 8, !dbg !5717
  %swap120 = getelementptr inbounds %struct.snapshot_data, ptr %96, i32 0, i32 1, !dbg !5718
  %97 = load i32, ptr %swap120, align 8, !dbg !5718
  %call121 = call i64 @alloc_swapdev_block(i32 noundef %97) #14, !dbg !5719
  store i64 %call121, ptr %offset, align 8, !dbg !5720
  %98 = load i64, ptr %offset, align 8, !dbg !5721
  %tobool122 = icmp ne i64 %98, 0, !dbg !5721
  br i1 %tobool122, label %if.then123, label %if.else137, !dbg !5722

if.then123:                                       ; preds = %if.end119
  %99 = load i64, ptr %offset, align 8, !dbg !5723
  %shl124 = shl i64 %99, 12, !dbg !5723
  store i64 %shl124, ptr %offset, align 8, !dbg !5723
  call void @might_fault() #14, !dbg !5724
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu126) #16, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__ret_pu126, metadata !5509, metadata !DIExpression()), !dbg !5725
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu127) #16, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu127, metadata !5514, metadata !DIExpression()), !dbg !5725
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val_pu128) #16, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__val_pu128, metadata !5515, metadata !DIExpression()), !dbg !5725
  call void @llvm.lifetime.start.p0(i64 8, ptr %__x129) #16, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__x129, metadata !5516, metadata !DIExpression()), !dbg !5725
  %100 = load i64, ptr %offset, align 8, !dbg !5725
  store i64 %100, ptr %__x129, align 8, !dbg !5725
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr130) #16, !dbg !5725
  call void @llvm.dbg.declare(metadata ptr %__ptr130, metadata !5517, metadata !DIExpression()), !dbg !5725
  %101 = load i64, ptr %arg.addr, align 8, !dbg !5725
  %102 = inttoptr i64 %101 to ptr, !dbg !5725
  store ptr %102, ptr %__ptr130, align 8, !dbg !5725
  %103 = load ptr, ptr %__ptr130, align 8, !dbg !5725
  store ptr %103, ptr %__ptr_pu127, align 8, !dbg !5725
  %104 = load i64, ptr %__x129, align 8, !dbg !5725
  store i64 %104, ptr %__val_pu128, align 8, !dbg !5725
  %105 = call i64 @llvm.read_register.i64(metadata !5283), !dbg !5725
  %106 = load ptr, ptr %__ptr_pu127, align 8, !dbg !5725
  %107 = load i64, ptr %__val_pu128, align 8, !dbg !5725
  %108 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %106, i64 %107, i64 8, i64 %105) #16, !dbg !5725, !srcloc !5726
  %asmresult131 = extractvalue { ptr, i64 } %108, 0, !dbg !5725
  %asmresult132 = extractvalue { ptr, i64 } %108, 1, !dbg !5725
  %109 = ptrtoint ptr %asmresult131 to i64, !dbg !5725
  %110 = trunc i64 %109 to i32, !dbg !5725
  store i32 %110, ptr %__ret_pu126, align 4, !dbg !5725
  call void @llvm.write_register.i64(metadata !5283, i64 %asmresult132), !dbg !5725
  %111 = load ptr, ptr %__ptr130, align 8, !dbg !5727
  call void @kmsan_copy_to_user(ptr noundef %111, ptr noundef %__x129, i64 noundef 8, i64 noundef 0) #14, !dbg !5727
  %112 = load i32, ptr %__ret_pu126, align 4, !dbg !5725
  %conv134 = sext i32 %112 to i64, !dbg !5725
  %expval135 = call i64 @llvm.expect.i64(i64 %conv134, i64 0), !dbg !5725
  store i64 %expval135, ptr %tmp133, align 8, !dbg !5725
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr130) #16, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__x129) #16, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val_pu128) #16, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu127) #16, !dbg !5724
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu126) #16, !dbg !5724
  %113 = load i64, ptr %tmp133, align 8, !dbg !5725
  store i64 %113, ptr %tmp125, align 8, !dbg !5724
  %114 = load i64, ptr %tmp125, align 8, !dbg !5724
  %conv136 = trunc i64 %114 to i32, !dbg !5729
  store i32 %conv136, ptr %error, align 4, !dbg !5730
  br label %if.end138, !dbg !5731

if.else137:                                       ; preds = %if.end119
  store i32 -28, ptr %error, align 4, !dbg !5732
  br label %if.end138

if.end138:                                        ; preds = %if.else137, %if.then123
  br label %sw.epilog, !dbg !5734

sw.bb139:                                         ; preds = %if.end13
  %115 = load ptr, ptr %data, align 8, !dbg !5735
  %swap140 = getelementptr inbounds %struct.snapshot_data, ptr %115, i32 0, i32 1, !dbg !5737
  %116 = load i32, ptr %swap140, align 8, !dbg !5737
  %cmp141 = icmp slt i32 %116, 0, !dbg !5738
  br i1 %cmp141, label %if.then147, label %lor.lhs.false143, !dbg !5739

lor.lhs.false143:                                 ; preds = %sw.bb139
  %117 = load ptr, ptr %data, align 8, !dbg !5740
  %swap144 = getelementptr inbounds %struct.snapshot_data, ptr %117, i32 0, i32 1, !dbg !5741
  %118 = load i32, ptr %swap144, align 8, !dbg !5741
  %cmp145 = icmp sge i32 %118, 28, !dbg !5742
  br i1 %cmp145, label %if.then147, label %if.end148, !dbg !5743

if.then147:                                       ; preds = %lor.lhs.false143, %sw.bb139
  store i32 -19, ptr %error, align 4, !dbg !5744
  br label %sw.epilog, !dbg !5746

if.end148:                                        ; preds = %lor.lhs.false143
  %119 = load ptr, ptr %data, align 8, !dbg !5747
  %swap149 = getelementptr inbounds %struct.snapshot_data, ptr %119, i32 0, i32 1, !dbg !5748
  %120 = load i32, ptr %swap149, align 8, !dbg !5748
  call void @free_all_swap_pages(i32 noundef %120) #14, !dbg !5749
  br label %sw.epilog, !dbg !5750

sw.bb150:                                         ; preds = %if.end13
  %121 = load ptr, ptr %data, align 8, !dbg !5751
  %frozen151 = getelementptr inbounds %struct.snapshot_data, ptr %121, i32 0, i32 3, !dbg !5753
  %122 = load i8, ptr %frozen151, align 8, !dbg !5753, !range !5351, !noundef !603
  %tobool152 = trunc i8 %122 to i1, !dbg !5753
  br i1 %tobool152, label %if.end154, label %if.then153, !dbg !5754

if.then153:                                       ; preds = %sw.bb150
  store i32 -1, ptr %error, align 4, !dbg !5755
  br label %sw.epilog, !dbg !5757

if.end154:                                        ; preds = %sw.bb150
  %call155 = call i32 @suspend_devices_and_enter(i32 noundef 3) #14, !dbg !5758
  store i32 %call155, ptr %error, align 4, !dbg !5759
  %123 = load ptr, ptr %data, align 8, !dbg !5760
  %ready156 = getelementptr inbounds %struct.snapshot_data, ptr %123, i32 0, i32 4, !dbg !5761
  store i8 0, ptr %ready156, align 1, !dbg !5762
  br label %sw.epilog, !dbg !5763

sw.bb157:                                         ; preds = %if.end13
  %124 = load i64, ptr %arg.addr, align 8, !dbg !5764
  %tobool158 = icmp ne i64 %124, 0, !dbg !5765
  %lnot159 = xor i1 %tobool158, true, !dbg !5765
  %lnot160 = xor i1 %lnot159, true, !dbg !5766
  %125 = load ptr, ptr %data, align 8, !dbg !5767
  %platform_support161 = getelementptr inbounds %struct.snapshot_data, ptr %125, i32 0, i32 5, !dbg !5768
  %frombool162 = zext i1 %lnot160 to i8, !dbg !5769
  store i8 %frombool162, ptr %platform_support161, align 2, !dbg !5769
  br label %sw.epilog, !dbg !5770

sw.bb163:                                         ; preds = %if.end13
  %126 = load ptr, ptr %data, align 8, !dbg !5771
  %platform_support164 = getelementptr inbounds %struct.snapshot_data, ptr %126, i32 0, i32 5, !dbg !5773
  %127 = load i8, ptr %platform_support164, align 2, !dbg !5773, !range !5351, !noundef !603
  %tobool165 = trunc i8 %127 to i1, !dbg !5773
  br i1 %tobool165, label %if.then166, label %if.end168, !dbg !5774

if.then166:                                       ; preds = %sw.bb163
  %call167 = call i32 @hibernation_platform_enter() #14, !dbg !5775
  store i32 %call167, ptr %error, align 4, !dbg !5776
  br label %if.end168, !dbg !5777

if.end168:                                        ; preds = %if.then166, %sw.bb163
  br label %sw.epilog, !dbg !5778

sw.bb169:                                         ; preds = %if.end13
  %128 = load ptr, ptr %data, align 8, !dbg !5779
  %129 = load i64, ptr %arg.addr, align 8, !dbg !5780
  %130 = inttoptr i64 %129 to ptr, !dbg !5781
  %call170 = call i32 @snapshot_set_swap_area(ptr noundef %128, ptr noundef %130) #14, !dbg !5782
  store i32 %call170, ptr %error, align 4, !dbg !5783
  br label %sw.epilog, !dbg !5784

sw.default:                                       ; preds = %if.end13
  store i32 -25, ptr %error, align 4, !dbg !5785
  br label %sw.epilog, !dbg !5786

sw.epilog:                                        ; preds = %sw.default, %sw.bb169, %if.end168, %sw.bb157, %if.end154, %if.then153, %if.end148, %if.then147, %if.end138, %if.then118, %sw.bb94, %if.end80, %if.then79, %sw.bb75, %sw.bb72, %if.end67, %if.then66, %if.end54, %if.then41, %if.end31, %if.then30, %if.end25, %if.then19, %if.then15
  call void @unlock_device_hotplug() #14, !dbg !5787
  call void @mutex_unlock(ptr noundef @system_transition_mutex) #14, !dbg !5788
  %131 = load i32, ptr %error, align 4, !dbg !5789
  %conv171 = sext i32 %131 to i64, !dbg !5789
  store i64 %conv171, ptr %retval, align 8, !dbg !5790
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5790

cleanup:                                          ; preds = %sw.epilog, %if.then12, %if.then8, %if.then6, %if.then1
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #16, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5791
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5791
  %132 = load i64, ptr %retval, align 8, !dbg !5791
  ret i64 %132, !dbg !5791
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @snapshot_compat_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5792 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5794, metadata !DIExpression()), !dbg !5797
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5795, metadata !DIExpression()), !dbg !5798
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5796, metadata !DIExpression()), !dbg !5799
  br label %do.body, !dbg !5800

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5801

do.end:                                           ; preds = %do.body
  %0 = load i32, ptr %cmd.addr, align 4, !dbg !5803
  switch i32 %0, label %sw.default [
    i32 -2146946290, label %sw.bb
    i32 -2146946285, label %sw.bb
    i32 -2146946284, label %sw.bb
    i32 1074017041, label %sw.bb
    i32 1074541325, label %sw.bb
  ], !dbg !5804

sw.bb:                                            ; preds = %do.end, %do.end, %do.end, %do.end, %do.end
  %1 = load ptr, ptr %file.addr, align 8, !dbg !5805
  %2 = load i32, ptr %cmd.addr, align 4, !dbg !5807
  %3 = load i64, ptr %arg.addr, align 8, !dbg !5808
  %conv = trunc i64 %3 to i32, !dbg !5808
  %call = call ptr @compat_ptr(i32 noundef %conv) #14, !dbg !5809
  %4 = ptrtoint ptr %call to i64, !dbg !5810
  %call1 = call i64 @snapshot_ioctl(ptr noundef %1, i32 noundef %2, i64 noundef %4) #14, !dbg !5811
  store i64 %call1, ptr %retval, align 8, !dbg !5812
  br label %return, !dbg !5812

sw.default:                                       ; preds = %do.end
  %5 = load ptr, ptr %file.addr, align 8, !dbg !5813
  %6 = load i32, ptr %cmd.addr, align 4, !dbg !5814
  %7 = load i64, ptr %arg.addr, align 8, !dbg !5815
  %call2 = call i64 @snapshot_ioctl(ptr noundef %5, i32 noundef %6, i64 noundef %7) #14, !dbg !5816
  store i64 %call2, ptr %retval, align 8, !dbg !5817
  br label %return, !dbg !5817

return:                                           ; preds = %sw.default, %sw.bb
  %8 = load i64, ptr %retval, align 8, !dbg !5818
  ret i64 %8, !dbg !5818
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snapshot_open(ptr noundef %inode, ptr noundef %filp) #0 align 16 !dbg !5819 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %sleep_flags = alloca i32, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5821, metadata !DIExpression()), !dbg !5827
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5822, metadata !DIExpression()), !dbg !5828
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5829
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5823, metadata !DIExpression()), !dbg !5830
  call void @llvm.lifetime.start.p0(i64 4, ptr %sleep_flags) #16, !dbg !5831
  call void @llvm.dbg.declare(metadata ptr %sleep_flags, metadata !5824, metadata !DIExpression()), !dbg !5832
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #16, !dbg !5833
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5825, metadata !DIExpression()), !dbg !5834
  %call = call zeroext i1 @hibernation_available() #14, !dbg !5835
  br i1 %call, label %if.end, label %if.then, !dbg !5837

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !5838
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5838

if.end:                                           ; preds = %entry
  %call1 = call i32 @lock_system_sleep() #14, !dbg !5839
  store i32 %call1, ptr %sleep_flags, align 4, !dbg !5840
  %call2 = call zeroext i1 @hibernate_acquire() #14, !dbg !5841
  br i1 %call2, label %if.end4, label %if.then3, !dbg !5843

if.then3:                                         ; preds = %if.end
  store i32 -16, ptr %error, align 4, !dbg !5844
  br label %Unlock, !dbg !5846

if.end4:                                          ; preds = %if.end
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5847
  %f_flags = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 6, !dbg !5849
  %1 = load i32, ptr %f_flags, align 8, !dbg !5849
  %and = and i32 %1, 3, !dbg !5850
  %cmp = icmp eq i32 %and, 2, !dbg !5851
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5852

if.then5:                                         ; preds = %if.end4
  call void @hibernate_release() #14, !dbg !5853
  store i32 -38, ptr %error, align 4, !dbg !5855
  br label %Unlock, !dbg !5856

if.end6:                                          ; preds = %if.end4
  %2 = load ptr, ptr %inode.addr, align 8, !dbg !5857
  %3 = load ptr, ptr %filp.addr, align 8, !dbg !5858
  %call7 = call i32 @nonseekable_open(ptr noundef %2, ptr noundef %3) #14, !dbg !5859
  store ptr @snapshot_state, ptr %data, align 8, !dbg !5860
  %4 = load ptr, ptr %data, align 8, !dbg !5861
  %5 = load ptr, ptr %filp.addr, align 8, !dbg !5862
  %private_data = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 15, !dbg !5863
  store ptr %4, ptr %private_data, align 8, !dbg !5864
  %6 = load ptr, ptr %data, align 8, !dbg !5865
  %handle = getelementptr inbounds %struct.snapshot_data, ptr %6, i32 0, i32 0, !dbg !5866
  call void @llvm.memset.p0.i64(ptr align 8 %handle, i8 0, i64 24, i1 false), !dbg !5867
  %7 = load ptr, ptr %filp.addr, align 8, !dbg !5868
  %f_flags8 = getelementptr inbounds %struct.file, ptr %7, i32 0, i32 6, !dbg !5870
  %8 = load i32, ptr %f_flags8, align 8, !dbg !5870
  %and9 = and i32 %8, 3, !dbg !5871
  %cmp10 = icmp eq i32 %and9, 0, !dbg !5872
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !5873

if.then11:                                        ; preds = %if.end6
  %9 = load i32, ptr @swsusp_resume_device, align 4, !dbg !5874
  %call12 = call i32 @swap_type_of(i32 noundef %9, i64 noundef 0) #14, !dbg !5876
  %10 = load ptr, ptr %data, align 8, !dbg !5877
  %swap = getelementptr inbounds %struct.snapshot_data, ptr %10, i32 0, i32 1, !dbg !5878
  store i32 %call12, ptr %swap, align 8, !dbg !5879
  %11 = load ptr, ptr %data, align 8, !dbg !5880
  %mode = getelementptr inbounds %struct.snapshot_data, ptr %11, i32 0, i32 2, !dbg !5881
  store i32 0, ptr %mode, align 4, !dbg !5882
  %12 = load ptr, ptr %data, align 8, !dbg !5883
  %free_bitmaps = getelementptr inbounds %struct.snapshot_data, ptr %12, i32 0, i32 6, !dbg !5884
  store i8 0, ptr %free_bitmaps, align 1, !dbg !5885
  %call13 = call i32 @pm_notifier_call_chain_robust(i64 noundef 1, i64 noundef 2) #14, !dbg !5886
  store i32 %call13, ptr %error, align 4, !dbg !5887
  br label %if.end22, !dbg !5888

if.else:                                          ; preds = %if.end6
  store i8 1, ptr @need_wait, align 1, !dbg !5889
  %13 = load ptr, ptr %data, align 8, !dbg !5891
  %swap14 = getelementptr inbounds %struct.snapshot_data, ptr %13, i32 0, i32 1, !dbg !5892
  store i32 -1, ptr %swap14, align 8, !dbg !5893
  %14 = load ptr, ptr %data, align 8, !dbg !5894
  %mode15 = getelementptr inbounds %struct.snapshot_data, ptr %14, i32 0, i32 2, !dbg !5895
  store i32 1, ptr %mode15, align 4, !dbg !5896
  %call16 = call i32 @pm_notifier_call_chain_robust(i64 noundef 5, i64 noundef 6) #14, !dbg !5897
  store i32 %call16, ptr %error, align 4, !dbg !5898
  %15 = load i32, ptr %error, align 4, !dbg !5899
  %tobool = icmp ne i32 %15, 0, !dbg !5899
  br i1 %tobool, label %if.end21, label %if.then17, !dbg !5901

if.then17:                                        ; preds = %if.else
  %call18 = call i32 @create_basic_memory_bitmaps() #14, !dbg !5902
  store i32 %call18, ptr %error, align 4, !dbg !5904
  %16 = load i32, ptr %error, align 4, !dbg !5905
  %tobool19 = icmp ne i32 %16, 0, !dbg !5906
  %lnot = xor i1 %tobool19, true, !dbg !5906
  %17 = load ptr, ptr %data, align 8, !dbg !5907
  %free_bitmaps20 = getelementptr inbounds %struct.snapshot_data, ptr %17, i32 0, i32 6, !dbg !5908
  %frombool = zext i1 %lnot to i8, !dbg !5909
  store i8 %frombool, ptr %free_bitmaps20, align 1, !dbg !5909
  br label %if.end21, !dbg !5910

if.end21:                                         ; preds = %if.then17, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then11
  %18 = load i32, ptr %error, align 4, !dbg !5911
  %tobool23 = icmp ne i32 %18, 0, !dbg !5911
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !5913

if.then24:                                        ; preds = %if.end22
  call void @hibernate_release() #14, !dbg !5914
  br label %if.end25, !dbg !5914

if.end25:                                         ; preds = %if.then24, %if.end22
  %19 = load ptr, ptr %data, align 8, !dbg !5915
  %frozen = getelementptr inbounds %struct.snapshot_data, ptr %19, i32 0, i32 3, !dbg !5916
  store i8 0, ptr %frozen, align 8, !dbg !5917
  %20 = load ptr, ptr %data, align 8, !dbg !5918
  %ready = getelementptr inbounds %struct.snapshot_data, ptr %20, i32 0, i32 4, !dbg !5919
  store i8 0, ptr %ready, align 1, !dbg !5920
  %21 = load ptr, ptr %data, align 8, !dbg !5921
  %platform_support = getelementptr inbounds %struct.snapshot_data, ptr %21, i32 0, i32 5, !dbg !5922
  store i8 0, ptr %platform_support, align 2, !dbg !5923
  %22 = load ptr, ptr %data, align 8, !dbg !5924
  %dev = getelementptr inbounds %struct.snapshot_data, ptr %22, i32 0, i32 7, !dbg !5925
  store i32 0, ptr %dev, align 4, !dbg !5926
  br label %Unlock, !dbg !5924

Unlock:                                           ; preds = %if.end25, %if.then5, %if.then3
  call void @llvm.dbg.label(metadata !5826), !dbg !5927
  %23 = load i32, ptr %sleep_flags, align 4, !dbg !5928
  call void @unlock_system_sleep(i32 noundef %23) #14, !dbg !5929
  %24 = load i32, ptr %error, align 4, !dbg !5930
  store i32 %24, ptr %retval, align 4, !dbg !5931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5931

cleanup:                                          ; preds = %Unlock, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #16, !dbg !5932
  call void @llvm.lifetime.end.p0(i64 4, ptr %sleep_flags) #16, !dbg !5932
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5932
  %25 = load i32, ptr %retval, align 4, !dbg !5932
  ret i32 %25, !dbg !5932
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snapshot_release(ptr noundef %inode, ptr noundef %filp) #0 align 16 !dbg !5933 {
entry:
  %inode.addr = alloca ptr, align 8
  %filp.addr = alloca ptr, align 8
  %data = alloca ptr, align 8
  %sleep_flags = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5935, metadata !DIExpression()), !dbg !5939
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5936, metadata !DIExpression()), !dbg !5940
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5941
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5937, metadata !DIExpression()), !dbg !5942
  call void @llvm.lifetime.start.p0(i64 4, ptr %sleep_flags) #16, !dbg !5943
  call void @llvm.dbg.declare(metadata ptr %sleep_flags, metadata !5938, metadata !DIExpression()), !dbg !5944
  %call = call i32 @lock_system_sleep() #14, !dbg !5945
  store i32 %call, ptr %sleep_flags, align 4, !dbg !5946
  call void @swsusp_free() #14, !dbg !5947
  %0 = load ptr, ptr %filp.addr, align 8, !dbg !5948
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5949
  %1 = load ptr, ptr %private_data, align 8, !dbg !5949
  store ptr %1, ptr %data, align 8, !dbg !5950
  %2 = load ptr, ptr %data, align 8, !dbg !5951
  %dev = getelementptr inbounds %struct.snapshot_data, ptr %2, i32 0, i32 7, !dbg !5952
  store i32 0, ptr %dev, align 4, !dbg !5953
  %3 = load ptr, ptr %data, align 8, !dbg !5954
  %swap = getelementptr inbounds %struct.snapshot_data, ptr %3, i32 0, i32 1, !dbg !5955
  %4 = load i32, ptr %swap, align 8, !dbg !5955
  call void @free_all_swap_pages(i32 noundef %4) #14, !dbg !5956
  %5 = load ptr, ptr %data, align 8, !dbg !5957
  %frozen = getelementptr inbounds %struct.snapshot_data, ptr %5, i32 0, i32 3, !dbg !5959
  %6 = load i8, ptr %frozen, align 8, !dbg !5959, !range !5351, !noundef !603
  %tobool = trunc i8 %6 to i1, !dbg !5959
  br i1 %tobool, label %if.then, label %if.else, !dbg !5960

if.then:                                          ; preds = %entry
  call void @pm_restore_gfp_mask() #14, !dbg !5961
  call void @free_basic_memory_bitmaps() #14, !dbg !5963
  call void @thaw_processes() #14, !dbg !5964
  br label %if.end3, !dbg !5965

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %data, align 8, !dbg !5966
  %free_bitmaps = getelementptr inbounds %struct.snapshot_data, ptr %7, i32 0, i32 6, !dbg !5968
  %8 = load i8, ptr %free_bitmaps, align 1, !dbg !5968, !range !5351, !noundef !603
  %tobool1 = trunc i8 %8 to i1, !dbg !5968
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !5969

if.then2:                                         ; preds = %if.else
  call void @free_basic_memory_bitmaps() #14, !dbg !5970
  br label %if.end, !dbg !5972

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %9 = load ptr, ptr %data, align 8, !dbg !5973
  %mode = getelementptr inbounds %struct.snapshot_data, ptr %9, i32 0, i32 2, !dbg !5974
  %10 = load i32, ptr %mode, align 4, !dbg !5974
  %cmp = icmp eq i32 %10, 0, !dbg !5975
  %11 = zext i1 %cmp to i64, !dbg !5973
  %cond = select i1 %cmp, i32 2, i32 6, !dbg !5973
  %conv = sext i32 %cond to i64, !dbg !5973
  %call4 = call i32 @pm_notifier_call_chain(i64 noundef %conv) #14, !dbg !5976
  call void @hibernate_release() #14, !dbg !5977
  %12 = load i32, ptr %sleep_flags, align 4, !dbg !5978
  call void @unlock_system_sleep(i32 noundef %12) #14, !dbg !5979
  call void @llvm.lifetime.end.p0(i64 4, ptr %sleep_flags) #16, !dbg !5980
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5980
  ret i32 0, !dbg !5981
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5982 dso_local i32 @lock_system_sleep() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5985 dso_local i32 @snapshot_read_next(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5989 dso_local i64 @simple_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5992 dso_local void @unlock_system_sleep(i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5995 dso_local void @wait_for_device_probe() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5996 dso_local i32 @snapshot_write_next(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5997 dso_local i64 @simple_write_to_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5998 dso_local zeroext i1 @capable(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6001 dso_local i32 @mutex_trylock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6005 dso_local void @lock_device_hotplug() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6006 dso_local void @ksys_sync_helper() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6007 dso_local i32 @freeze_processes() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6009 dso_local i32 @create_basic_memory_bitmaps() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6010 dso_local void @thaw_processes() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6011 dso_local void @pm_restore_gfp_mask() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6012 dso_local void @free_basic_memory_bitmaps() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6013 dso_local i32 @hibernation_snapshot(i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !6014 {
entry:
  ret void, !dbg !6016
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #5 align 16 !dbg !6017 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6022, metadata !DIExpression()), !dbg !6026
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6023, metadata !DIExpression()), !dbg !6027
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !6024, metadata !DIExpression()), !dbg !6028
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !6025, metadata !DIExpression()), !dbg !6029
  ret void, !dbg !6030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6031 dso_local void @snapshot_write_finalize(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6034 dso_local i32 @snapshot_image_loaded(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6035 dso_local i32 @hibernation_restore(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6036 dso_local void @swsusp_free() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6037 dso_local void @thaw_kernel_threads() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6038 dso_local i64 @snapshot_get_image_size() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6041 dso_local i32 @count_swap_pages(i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6044 dso_local i64 @alloc_swapdev_block(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6047 dso_local void @free_all_swap_pages(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6048 dso_local i32 @suspend_devices_and_enter(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6051 dso_local i32 @hibernation_platform_enter() #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @snapshot_set_swap_area(ptr noundef %data, ptr noundef %argp) #0 align 16 !dbg !6052 {
entry:
  %retval = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %argp.addr = alloca ptr, align 8
  %offset = alloca i64, align 8
  %swdev = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %swap_area = alloca %struct.compat_resume_swap_area, align 1
  %swap_area9 = alloca %struct.resume_swap_area, align 1
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !6056, metadata !DIExpression()), !dbg !6075
  store ptr %argp, ptr %argp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %argp.addr, metadata !6057, metadata !DIExpression()), !dbg !6076
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #16, !dbg !6077
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !6058, metadata !DIExpression()), !dbg !6078
  call void @llvm.lifetime.start.p0(i64 4, ptr %swdev) #16, !dbg !6079
  call void @llvm.dbg.declare(metadata ptr %swdev, metadata !6059, metadata !DIExpression()), !dbg !6080
  %call = call i32 @swsusp_swap_in_use() #14, !dbg !6081
  %tobool = icmp ne i32 %call, 0, !dbg !6081
  br i1 %tobool, label %if.then, label %if.end, !dbg !6083

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !6084
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !6084

if.end:                                           ; preds = %entry
  %call1 = call zeroext i1 @in_compat_syscall() #14, !dbg !6085
  br i1 %call1, label %if.then2, label %if.else, !dbg !6086

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr %swap_area) #16, !dbg !6087
  call void @llvm.dbg.declare(metadata ptr %swap_area, metadata !6060, metadata !DIExpression()), !dbg !6088
  %0 = load ptr, ptr %argp.addr, align 8, !dbg !6089
  %call3 = call i64 @copy_from_user(ptr noundef %swap_area, ptr noundef %0, i64 noundef 12) #14, !dbg !6091
  %tobool4 = icmp ne i64 %call3, 0, !dbg !6091
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !6092

if.then5:                                         ; preds = %if.then2
  store i32 -14, ptr %retval, align 4, !dbg !6093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6093

if.end6:                                          ; preds = %if.then2
  %dev = getelementptr inbounds %struct.compat_resume_swap_area, ptr %swap_area, i32 0, i32 1, !dbg !6094
  %1 = load i32, ptr %dev, align 1, !dbg !6094
  %call7 = call i32 @new_decode_dev(i32 noundef %1) #14, !dbg !6095
  store i32 %call7, ptr %swdev, align 4, !dbg !6096
  %offset8 = getelementptr inbounds %struct.compat_resume_swap_area, ptr %swap_area, i32 0, i32 0, !dbg !6097
  %2 = load i64, ptr %offset8, align 1, !dbg !6097
  store i64 %2, ptr %offset, align 8, !dbg !6098
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6099
  br label %cleanup, !dbg !6099

cleanup:                                          ; preds = %if.end6, %if.then5
  call void @llvm.lifetime.end.p0(i64 12, ptr %swap_area) #16, !dbg !6099
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup27 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end20, !dbg !6100

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 12, ptr %swap_area9) #16, !dbg !6101
  call void @llvm.dbg.declare(metadata ptr %swap_area9, metadata !6068, metadata !DIExpression()), !dbg !6102
  %3 = load ptr, ptr %argp.addr, align 8, !dbg !6103
  %call10 = call i64 @copy_from_user(ptr noundef %swap_area9, ptr noundef %3, i64 noundef 12) #14, !dbg !6105
  %tobool11 = icmp ne i64 %call10, 0, !dbg !6105
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !6106

if.then12:                                        ; preds = %if.else
  store i32 -14, ptr %retval, align 4, !dbg !6107
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup17, !dbg !6107

if.end13:                                         ; preds = %if.else
  %dev14 = getelementptr inbounds %struct.resume_swap_area, ptr %swap_area9, i32 0, i32 1, !dbg !6108
  %4 = load i32, ptr %dev14, align 1, !dbg !6108
  %call15 = call i32 @new_decode_dev(i32 noundef %4) #14, !dbg !6109
  store i32 %call15, ptr %swdev, align 4, !dbg !6110
  %offset16 = getelementptr inbounds %struct.resume_swap_area, ptr %swap_area9, i32 0, i32 0, !dbg !6111
  %5 = load i64, ptr %offset16, align 1, !dbg !6111
  store i64 %5, ptr %offset, align 8, !dbg !6112
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6113
  br label %cleanup17, !dbg !6113

cleanup17:                                        ; preds = %if.end13, %if.then12
  call void @llvm.lifetime.end.p0(i64 12, ptr %swap_area9) #16, !dbg !6113
  %cleanup.dest18 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest18, label %cleanup27 [
    i32 0, label %cleanup.cont19
  ]

cleanup.cont19:                                   ; preds = %cleanup17
  br label %if.end20

if.end20:                                         ; preds = %cleanup.cont19, %cleanup.cont
  %6 = load i32, ptr %swdev, align 4, !dbg !6114
  %7 = load i64, ptr %offset, align 8, !dbg !6115
  %call21 = call i32 @swap_type_of(i32 noundef %6, i64 noundef %7) #14, !dbg !6116
  %8 = load ptr, ptr %data.addr, align 8, !dbg !6117
  %swap = getelementptr inbounds %struct.snapshot_data, ptr %8, i32 0, i32 1, !dbg !6118
  store i32 %call21, ptr %swap, align 8, !dbg !6119
  %9 = load ptr, ptr %data.addr, align 8, !dbg !6120
  %swap22 = getelementptr inbounds %struct.snapshot_data, ptr %9, i32 0, i32 1, !dbg !6122
  %10 = load i32, ptr %swap22, align 8, !dbg !6122
  %cmp = icmp slt i32 %10, 0, !dbg !6123
  br i1 %cmp, label %if.then23, label %if.end25, !dbg !6124

if.then23:                                        ; preds = %if.end20
  %11 = load i32, ptr %swdev, align 4, !dbg !6125
  %tobool24 = icmp ne i32 %11, 0, !dbg !6125
  %12 = zext i1 %tobool24 to i64, !dbg !6125
  %cond = select i1 %tobool24, i32 -19, i32 -22, !dbg !6125
  store i32 %cond, ptr %retval, align 4, !dbg !6126
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !6126

if.end25:                                         ; preds = %if.end20
  %13 = load i32, ptr %swdev, align 4, !dbg !6127
  %14 = load ptr, ptr %data.addr, align 8, !dbg !6128
  %dev26 = getelementptr inbounds %struct.snapshot_data, ptr %14, i32 0, i32 7, !dbg !6129
  store i32 %13, ptr %dev26, align 4, !dbg !6130
  store i32 0, ptr %retval, align 4, !dbg !6131
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup27, !dbg !6131

cleanup27:                                        ; preds = %if.end25, %if.then23, %cleanup17, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %swdev) #16, !dbg !6132
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #16, !dbg !6132
  %15 = load i32, ptr %retval, align 4, !dbg !6132
  ret i32 %15, !dbg !6132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6133 dso_local void @unlock_device_hotplug() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6134 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6137 dso_local i32 @swsusp_swap_in_use() #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_compat_syscall() #5 align 16 !dbg !6138 {
entry:
  %call = call zeroext i1 @in_32bit_syscall() #14, !dbg !6140
  ret i1 %call, !dbg !6141
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #10 align 16 !dbg !6142 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !6147, metadata !DIExpression()), !dbg !6150
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !6148, metadata !DIExpression()), !dbg !6151
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6149, metadata !DIExpression()), !dbg !6152
  %0 = load ptr, ptr %to.addr, align 8, !dbg !6153
  %1 = load i64, ptr %n.addr, align 8, !dbg !6155
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #14, !dbg !6156
  br i1 %call, label %if.then, label %if.end, !dbg !6157

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !6158
  %3 = load ptr, ptr %from.addr, align 8, !dbg !6159
  %4 = load i64, ptr %n.addr, align 8, !dbg !6160
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #14, !dbg !6161
  store i64 %call1, ptr %n.addr, align 8, !dbg !6162
  br label %if.end, !dbg !6163

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6164
  ret i64 %5, !dbg !6165
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @new_decode_dev(i32 noundef %dev) #10 align 16 !dbg !6166 {
entry:
  %dev.addr = alloca i32, align 4
  %major = alloca i32, align 4
  %minor = alloca i32, align 4
  store i32 %dev, ptr %dev.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6171, metadata !DIExpression()), !dbg !6174
  call void @llvm.lifetime.start.p0(i64 4, ptr %major) #16, !dbg !6175
  call void @llvm.dbg.declare(metadata ptr %major, metadata !6172, metadata !DIExpression()), !dbg !6176
  %0 = load i32, ptr %dev.addr, align 4, !dbg !6177
  %and = and i32 %0, 1048320, !dbg !6178
  %shr = lshr i32 %and, 8, !dbg !6179
  store i32 %shr, ptr %major, align 4, !dbg !6176
  call void @llvm.lifetime.start.p0(i64 4, ptr %minor) #16, !dbg !6180
  call void @llvm.dbg.declare(metadata ptr %minor, metadata !6173, metadata !DIExpression()), !dbg !6181
  %1 = load i32, ptr %dev.addr, align 4, !dbg !6182
  %and1 = and i32 %1, 255, !dbg !6183
  %2 = load i32, ptr %dev.addr, align 4, !dbg !6184
  %shr2 = lshr i32 %2, 12, !dbg !6185
  %and3 = and i32 %shr2, 1048320, !dbg !6186
  %or = or i32 %and1, %and3, !dbg !6187
  store i32 %or, ptr %minor, align 4, !dbg !6181
  %3 = load i32, ptr %major, align 4, !dbg !6188
  %shl = shl i32 %3, 20, !dbg !6188
  %4 = load i32, ptr %minor, align 4, !dbg !6188
  %or4 = or i32 %shl, %4, !dbg !6188
  call void @llvm.lifetime.end.p0(i64 4, ptr %minor) #16, !dbg !6189
  call void @llvm.lifetime.end.p0(i64 4, ptr %major) #16, !dbg !6189
  ret i32 %or4, !dbg !6190
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6191 dso_local i32 @swap_type_of(i32 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_32bit_syscall() #5 align 16 !dbg !6194 {
entry:
  %call = call ptr @get_current() #14, !dbg !6195
  %status = getelementptr inbounds %struct.thread_info, ptr %call, i32 0, i32 2, !dbg !6195
  %0 = load i32, ptr %status, align 8, !dbg !6195
  %and = and i32 %0, 2, !dbg !6195
  %tobool = icmp ne i32 %and, 0, !dbg !6195
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6196

lor.rhs:                                          ; preds = %entry
  %call1 = call zeroext i1 @in_x32_syscall() #14, !dbg !6197
  br label %lor.end, !dbg !6196

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %call1, %lor.rhs ]
  ret i1 %1, !dbg !6198
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #10 align 16 !dbg !6199 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #16, !dbg !6210
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !6204, metadata !DIExpression()), !dbg !6210
  br label %do.body, !dbg !6210

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6211
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !6206, metadata !DIExpression()), !dbg !6211
  store ptr null, ptr %__vpp_verify, align 8, !dbg !6211
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !6211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #16, !dbg !6210
  br label %do.cond, !dbg !6211

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6211

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #16, !dbg !6212
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !6208, metadata !DIExpression()), !dbg !6212
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #17, !dbg !6212, !srcloc !6213
  store i64 %1, ptr %pfo_val__, align 8, !dbg !6212
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !6212
  %3 = inttoptr i64 %2 to ptr, !dbg !6212
  store ptr %3, ptr %tmp, align 8, !dbg !6212
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #16, !dbg !6210
  %4 = load ptr, ptr %tmp, align 8, !dbg !6212
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !6210
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !6210
  store ptr %5, ptr %tmp1, align 8, !dbg !6210
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #16, !dbg !6214
  %6 = load ptr, ptr %tmp1, align 8, !dbg !6210
  ret ptr %6, !dbg !6215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @in_x32_syscall() #5 align 16 !dbg !6216 {
entry:
  ret i1 false, !dbg !6217
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #10 align 16 !dbg !6218 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6222, metadata !DIExpression()), !dbg !6232
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !6223, metadata !DIExpression()), !dbg !6233
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !6224, metadata !DIExpression()), !dbg !6234
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #16, !dbg !6235
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !6225, metadata !DIExpression()), !dbg !6236
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !6237
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !6238
  %conv = trunc i64 %1 to i32, !dbg !6238
  store i32 %conv, ptr %sz, align 4, !dbg !6236
  %2 = load i32, ptr %sz, align 4, !dbg !6239
  %cmp = icmp sge i32 %2, 0, !dbg !6239
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6239

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !6239
  %conv2 = sext i32 %3 to i64, !dbg !6239
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !6239
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !6239
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !6241
  %lnot = xor i1 %5, true, !dbg !6239
  %lnot5 = xor i1 %lnot, true, !dbg !6239
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !6239
  %conv6 = sext i32 %lnot.ext to i64, !dbg !6239
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !6239
  %tobool = icmp ne i64 %expval, 0, !dbg !6239
  br i1 %tobool, label %if.then, label %if.end12, !dbg !6242

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !6243
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !6246
  br i1 %7, label %if.else, label %if.then7, !dbg !6247

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !6248
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !6249
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #14, !dbg !6250
  br label %if.end11, !dbg !6250

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !6251, !range !5351, !noundef !603
  %tobool8 = trunc i8 %10 to i1, !dbg !6251
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !6253

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #14, !dbg !6254, !srcloc !6255
  br label %if.end, !dbg !6254

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #14, !dbg !6256, !srcloc !6257
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !6258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6258

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6259
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6226, metadata !DIExpression()), !dbg !6259
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !6259
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !6259
  %lnot15 = xor i1 %cmp13, true, !dbg !6259
  %lnot17 = xor i1 %lnot15, true, !dbg !6259
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !6259
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !6259
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !6260
  %tobool19 = icmp ne i32 %12, 0, !dbg !6260
  %lnot20 = xor i1 %tobool19, true, !dbg !6260
  %lnot22 = xor i1 %lnot20, true, !dbg !6260
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !6260
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !6260
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !6260
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !6260
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !6259

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !6260

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6261
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6229, metadata !DIExpression()), !dbg !6261
  store i32 2307, ptr %__flags, align 4, !dbg !6261
  br label %do.body28, !dbg !6261

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !6262

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !6262

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !6261

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !6264
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 249, i32 %13, i64 12) #16, !dbg !6264, !srcloc !6266
  br label %do.cond30, !dbg !6264

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !6264

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !6261

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !6267

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !6267

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6260
  br label %do.cond35, !dbg !6261

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !6261

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !6261

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !6259
  %tobool38 = icmp ne i32 %14, 0, !dbg !6259
  %lnot39 = xor i1 %tobool38, true, !dbg !6259
  %lnot41 = xor i1 %lnot39, true, !dbg !6259
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !6259
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !6259
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !6259
  store i64 %expval44, ptr %tmp, align 8, !dbg !6260
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6269
  %15 = load i64, ptr %tmp, align 8, !dbg !6259
  %tobool45 = icmp ne i64 %15, 0, !dbg !6269
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !6270

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !6271
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6271

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !6272
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !6273
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !6274, !range !5351, !noundef !603
  %tobool48 = trunc i8 %18 to i1, !dbg !6274
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #14, !dbg !6275
  store i1 true, ptr %retval, align 1, !dbg !6276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6276

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #16, !dbg !6277
  %19 = load i1, ptr %retval, align 1, !dbg !6277
  ret i1 %19, !dbg !6277
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6278 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !6279 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6283, metadata !DIExpression()), !dbg !6285
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6284, metadata !DIExpression()), !dbg !6286
  %0 = load i32, ptr %size.addr, align 4, !dbg !6287
  %1 = load i64, ptr %count.addr, align 8, !dbg !6289
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #14, !dbg !6290
  ret void, !dbg !6291
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6292 dso_local void @__bad_copy_from() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6293 dso_local void @__bad_copy_to() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !6294 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6298, metadata !DIExpression()), !dbg !6301
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6299, metadata !DIExpression()), !dbg !6302
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !6300, metadata !DIExpression()), !dbg !6303
  ret void, !dbg !6304
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6305 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @compat_ptr(i32 noundef %uptr) #5 align 16 !dbg !6306 {
entry:
  %uptr.addr = alloca i32, align 4
  store i32 %uptr, ptr %uptr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uptr.addr, metadata !6310, metadata !DIExpression()), !dbg !6311
  %0 = load i32, ptr %uptr.addr, align 4, !dbg !6312
  %conv = zext i32 %0 to i64, !dbg !6313
  %1 = inttoptr i64 %conv to ptr, !dbg !6314
  ret ptr %1, !dbg !6315
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6316 dso_local zeroext i1 @hibernate_acquire() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6317 dso_local void @hibernate_release() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6318 dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6319 dso_local i32 @pm_notifier_call_chain_robust(i64 noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6322 dso_local i32 @pm_notifier_call_chain(i64 noundef) #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { cold noredzone }
attributes #16 = { nounwind }
attributes #17 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!5283}
!llvm.module.flags = !{!5284, !5285, !5286, !5287, !5288, !5289, !5290, !5291}
!llvm.ident = !{!5292}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "snapshot_state", scope: !2, file: !3, line: 40, type: !5267, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/power/.user.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/power/user\22 -D KBUILD_BASENAME=\22user\22 -D KBUILD_MODNAME=\22user\22 -D __KBUILD_MODNAME=kmod_user -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/power/user.ll kernel/power/user.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !258, globals: !5235, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/power/user.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "148ae5be11d07c7a95c521c968e75e53")
!4 = !{!5, !13, !18, !23, !31, !127, !133, !139, !146, !151, !159, !166, !172, !181, !186, !191, !197, !209, !215, !231, !239, !246, !253}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "writeback_sync_modes", file: !14, line: 32, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/writeback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "529df0d846991cd3030ee9505d2aaa60")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "WB_SYNC_NONE", value: 0)
!17 = !DIEnumerator(name: "WB_SYNC_ALL", value: 1)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !19, line: 2052, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!20 = !{!21, !22}
!21 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!22 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !24, line: 9, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!27 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!28 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!29 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!30 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !33, file: !32, line: 147, baseType: !7, size: 32, elements: !124)
!32 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table", file: !32, line: 135, size: 512, elements: !34)
!34 = !{!35, !39, !41, !43, !47, !48, !64, !122, !123}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "procname", scope: !33, file: !32, line: 136, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !33, file: !32, line: 137, baseType: !40, size: 64, offset: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !33, file: !32, line: 138, baseType: !42, size: 32, offset: 128)
!42 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !33, file: !32, line: 139, baseType: !44, size: 16, offset: 160)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !45, line: 24, baseType: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !33, file: !32, line: 150, baseType: !31, size: 32, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "proc_handler", scope: !33, file: !32, line: 151, baseType: !49, size: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "proc_handler", file: !32, line: 64, baseType: !51)
!51 = !DISubroutineType(types: !52)
!52 = !{!42, !53, !42, !40, !54, !60}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !57, line: 72, baseType: !58)
!57 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !57, line: 16, baseType: !59)
!59 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !45, line: 52, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !57, line: 88, baseType: !63)
!63 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !33, file: !32, line: 152, baseType: !65, size: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_poll", file: !32, line: 117, size: 256, elements: !67)
!67 = !{!68, !73}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !66, file: !32, line: 118, baseType: !69, size: 32)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !71)
!71 = !{!72}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !70, file: !45, line: 173, baseType: !42, size: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !66, file: !32, line: 119, baseType: !74, size: 192, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !75, line: 41, baseType: !76)
!75 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !75, line: 37, size: 192, elements: !77)
!77 = !{!78, !116}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !76, file: !75, line: 38, baseType: !79, size: 32)
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
!97 = !{!98, !99, !109}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !96, file: !92, line: 16, baseType: !69, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 24, baseType: !100, size: 16)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 24, size: 16, elements: !101)
!101 = !{!102, !108}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !100, file: !92, line: 25, baseType: !103, size: 8)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !104, line: 17, baseType: !105)
!104 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !106, line: 21, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!107 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !100, file: !92, line: 26, baseType: !103, size: 8, offset: 8)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !92, line: 28, baseType: !110, size: 32)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !96, file: !92, line: 28, size: 32, elements: !111)
!111 = !{!112, !115}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !110, file: !92, line: 29, baseType: !113, size: 16)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !104, line: 19, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !106, line: 24, baseType: !46)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !110, file: !92, line: 30, baseType: !113, size: 16, offset: 16)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !76, file: !75, line: 39, baseType: !117, size: 128, offset: 64)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !45, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !117, file: !45, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "extra1", scope: !33, file: !32, line: 153, baseType: !40, size: 64, offset: 384)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "extra2", scope: !33, file: !32, line: 154, baseType: !40, size: 64, offset: 448)
!124 = !{!125, !126}
!125 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_DEFAULT", value: 0)
!126 = !DIEnumerator(name: "SYSCTL_TABLE_TYPE_PERMANENTLY_EMPTY", value: 1)
!127 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !128, line: 54, baseType: !7, size: 32, elements: !129)
!128 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!129 = !{!130, !131, !132}
!130 = !DIEnumerator(name: "USRQUOTA", value: 0)
!131 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!132 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!133 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !134, line: 45, baseType: !7, size: 32, elements: !135)
!134 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!135 = !{!136, !137, !138}
!136 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!137 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!138 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !140, line: 487, baseType: !7, size: 32, elements: !141)
!140 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!141 = !{!142, !143, !144, !145}
!142 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!143 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!144 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!145 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!146 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !147, line: 65, baseType: !7, size: 32, elements: !148)
!147 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!148 = !{!149, !150}
!149 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!150 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!151 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !152, line: 620, baseType: !7, size: 32, elements: !153)
!152 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!153 = !{!154, !155, !156, !157, !158}
!154 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!155 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!156 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!157 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!158 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !152, line: 597, baseType: !42, size: 32, elements: !160)
!160 = !{!161, !162, !163, !164, !165}
!161 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!162 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!163 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!164 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!165 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !167, line: 26, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!168 = !{!169, !170, !171}
!169 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!170 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!171 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!172 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !140, line: 547, baseType: !7, size: 32, elements: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180}
!174 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!175 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!176 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!177 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!178 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!179 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!180 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!181 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !140, line: 564, baseType: !7, size: 32, elements: !182)
!182 = !{!183, !184, !185}
!183 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!184 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!185 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!186 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !140, line: 577, baseType: !7, size: 32, elements: !187)
!187 = !{!188, !189, !190}
!188 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!189 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!190 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!191 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !140, line: 503, baseType: !7, size: 32, elements: !192)
!192 = !{!193, !194, !195, !196}
!193 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!194 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!195 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!196 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "wb_reason", file: !198, line: 44, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "./include/linux/backing-dev-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48876dd2050c245a6230a2e03c4bc3c9")
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208}
!200 = !DIEnumerator(name: "WB_REASON_BACKGROUND", value: 0)
!201 = !DIEnumerator(name: "WB_REASON_VMSCAN", value: 1)
!202 = !DIEnumerator(name: "WB_REASON_SYNC", value: 2)
!203 = !DIEnumerator(name: "WB_REASON_PERIODIC", value: 3)
!204 = !DIEnumerator(name: "WB_REASON_LAPTOP_TIMER", value: 4)
!205 = !DIEnumerator(name: "WB_REASON_FS_FREE_SPACE", value: 5)
!206 = !DIEnumerator(name: "WB_REASON_FORKER_THREAD", value: 6)
!207 = !DIEnumerator(name: "WB_REASON_FOREIGN_FLUSH", value: 7)
!208 = !DIEnumerator(name: "WB_REASON_MAX", value: 8)
!209 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !210, line: 16, baseType: !7, size: 32, elements: !211)
!210 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!211 = !{!212, !213, !214}
!212 = !DIEnumerator(name: "TT_NONE", value: 0)
!213 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!214 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !216, line: 1325, baseType: !7, size: 32, elements: !217)
!216 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!218 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!219 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!220 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!221 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!222 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!223 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!224 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!225 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!226 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!227 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!228 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!229 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!230 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !232, line: 68, baseType: !7, size: 32, elements: !233)
!232 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!233 = !{!234, !235, !236, !237, !238}
!234 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!235 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!236 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!237 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!238 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !240, line: 51, baseType: !7, size: 32, elements: !241)
!240 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!241 = !{!242, !243, !244, !245}
!242 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!243 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!244 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!245 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !247, line: 15, baseType: !7, size: 32, elements: !248)
!247 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!248 = !{!249, !250, !251, !252}
!249 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!250 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!251 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!252 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!253 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !254, line: 10, baseType: !7, size: 32, elements: !255)
!254 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!255 = !{!256, !257}
!256 = !DIEnumerator(name: "false", value: 0)
!257 = !DIEnumerator(name: "true", value: 1)
!258 = !{!40, !259, !60, !260, !262, !272, !273, !59, !42}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "suspend_state_t", file: !261, line: 34, baseType: !42)
!261 = !DIFile(filename: "./include/linux/suspend.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdf8a52b9a460775d8f457b5a21f557")
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !264, line: 56, size: 192, elements: !265)
!264 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!265 = !{!266, !267, !268, !271}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !264, line: 57, baseType: !59, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !263, file: !264, line: 58, baseType: !59, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !263, file: !264, line: 59, baseType: !269, size: 32, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !104, line: 21, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !106, line: 27, baseType: !7)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !263, file: !264, line: 61, baseType: !269, size: 32, offset: 160)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !275, line: 746, size: 58368, elements: !276)
!275 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!276 = !{!277, !278, !279, !280, !286, !287, !288, !289, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !372, !383, !484, !488, !491, !522, !523, !524, !525, !536, !538, !539, !540, !541, !542, !543, !554, !555, !558, !559, !560, !561, !562, !563, !564, !565, !572, !573, !580, !581, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !4051, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4062, !4063, !4064, !4066, !4067, !4068, !4069, !4070, !4071, !4072, !4073, !4074, !4075, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4099, !4105, !4106, !4107, !4108, !4109, !4111, !4114, !4121, !4126, !4129, !4132, !4135, !4445, !4643, !4670, !4671, !4672, !4673, !4674, !4675, !4676, !4677, !4678, !4681, !4682, !4683, !4692, !4700, !4701, !4702, !4703, !4704, !4709, !4710, !4711, !4714, !4715, !4718, !4721, !4726, !4733, !4736, !4737, !4823, !4824, !4825, !4826, !4827, !4833, !4834, !4835, !4836, !4837, !4838, !4841, !4855, !4856, !4859, !4860, !4861, !4864, !4865, !4866, !4867, !4868, !4869, !4882, !4883, !4884, !4885, !4886, !4887, !4888, !4889, !4890, !4901, !4902, !4908, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4990, !4992, !4993, !4994, !4995, !4996, !4997, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5010, !5014, !5015, !5016}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !274, file: !275, line: 752, baseType: !263, size: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !274, file: !275, line: 754, baseType: !7, size: 32, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !274, file: !275, line: 767, baseType: !40, size: 64, offset: 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !274, file: !275, line: 768, baseType: !281, size: 32, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !282, line: 113, baseType: !283)
!282 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !282, line: 111, size: 32, elements: !284)
!284 = !{!285}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !283, file: !282, line: 112, baseType: !69, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !274, file: !275, line: 770, baseType: !7, size: 32, offset: 352)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !274, file: !275, line: 771, baseType: !7, size: 32, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !274, file: !275, line: 774, baseType: !42, size: 32, offset: 416)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !274, file: !275, line: 775, baseType: !290, size: 128, offset: 448)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !291, line: 58, size: 128, elements: !292)
!291 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!292 = !{!293, !299, !304, !305}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !290, file: !291, line: 59, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !295, line: 60, size: 64, elements: !296)
!295 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !294, file: !295, line: 61, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !291, line: 60, baseType: !300, size: 32, offset: 64)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !291, line: 60, size: 32, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !300, file: !291, line: 61, baseType: !7, size: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !300, file: !291, line: 62, baseType: !69, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !290, file: !291, line: 65, baseType: !113, size: 16, offset: 96)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !290, file: !291, line: 65, baseType: !113, size: 16, offset: 112)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !274, file: !275, line: 776, baseType: !7, size: 32, offset: 576)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !274, file: !275, line: 777, baseType: !59, size: 64, offset: 640)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !274, file: !275, line: 778, baseType: !273, size: 64, offset: 704)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !274, file: !275, line: 787, baseType: !42, size: 32, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !274, file: !275, line: 788, baseType: !42, size: 32, offset: 800)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !274, file: !275, line: 790, baseType: !42, size: 32, offset: 832)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !274, file: !275, line: 792, baseType: !42, size: 32, offset: 864)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !274, file: !275, line: 793, baseType: !42, size: 32, offset: 896)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !274, file: !275, line: 794, baseType: !42, size: 32, offset: 928)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !274, file: !275, line: 795, baseType: !7, size: 32, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !274, file: !275, line: 797, baseType: !317, size: 2048, offset: 1024)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !275, line: 551, size: 2048, elements: !318)
!318 = !{!319, !324, !332, !336, !337, !338, !339, !340, !341, !342, !343, !346, !347, !348, !349, !351, !354, !355, !356}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !317, file: !275, line: 553, baseType: !320, size: 128)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !275, line: 411, size: 128, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !320, file: !275, line: 412, baseType: !59, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !320, file: !275, line: 413, baseType: !269, size: 32, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !317, file: !275, line: 554, baseType: !325, size: 192, align: 64, offset: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !326, line: 5, size: 192, align: 64, elements: !327)
!326 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!327 = !{!328, !329, !331}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !325, file: !326, line: 6, baseType: !59, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !325, file: !326, line: 7, baseType: !330, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !325, file: !326, line: 8, baseType: !330, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !317, file: !275, line: 555, baseType: !333, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !104, line: 23, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !106, line: 31, baseType: !335)
!335 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !317, file: !275, line: 556, baseType: !333, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !317, file: !275, line: 558, baseType: !117, size: 128, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !317, file: !275, line: 559, baseType: !7, size: 32, offset: 576)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !317, file: !275, line: 561, baseType: !333, size: 64, offset: 640)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !317, file: !275, line: 562, baseType: !333, size: 64, offset: 704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !317, file: !275, line: 563, baseType: !333, size: 64, offset: 768)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !317, file: !275, line: 564, baseType: !333, size: 64, offset: 832)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !317, file: !275, line: 565, baseType: !344, size: 64, offset: 896)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !104, line: 22, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !106, line: 30, baseType: !63)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !317, file: !275, line: 566, baseType: !333, size: 64, offset: 960)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !317, file: !275, line: 568, baseType: !333, size: 64, offset: 1024)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !317, file: !275, line: 571, baseType: !42, size: 32, offset: 1088)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !317, file: !275, line: 572, baseType: !350, size: 64, offset: 1152)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !317, file: !275, line: 574, baseType: !352, size: 64, offset: 1216)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !275, line: 49, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !317, file: !275, line: 576, baseType: !352, size: 64, offset: 1280)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !317, file: !275, line: 578, baseType: !59, size: 64, offset: 1344)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !317, file: !275, line: 588, baseType: !357, size: 512, align: 512, offset: 1536)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !275, line: 497, size: 512, align: 512, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364, !365, !366, !367}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !357, file: !275, line: 498, baseType: !333, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !357, file: !275, line: 499, baseType: !333, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !357, file: !275, line: 500, baseType: !333, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !357, file: !275, line: 501, baseType: !269, size: 32, offset: 192)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !357, file: !275, line: 502, baseType: !269, size: 32, offset: 224)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !357, file: !275, line: 503, baseType: !59, size: 64, offset: 256)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !357, file: !275, line: 504, baseType: !59, size: 64, offset: 320)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !357, file: !275, line: 505, baseType: !59, size: 64, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !357, file: !275, line: 506, baseType: !368, size: 64, align: 64, offset: 448)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !275, line: 445, size: 64, align: 64, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !368, file: !275, line: 446, baseType: !7, size: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !368, file: !275, line: 447, baseType: !7, size: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !274, file: !275, line: 798, baseType: !373, size: 384, offset: 3072)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !275, line: 592, size: 384, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !373, file: !275, line: 593, baseType: !117, size: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !373, file: !275, line: 594, baseType: !59, size: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !373, file: !275, line: 595, baseType: !59, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !373, file: !275, line: 596, baseType: !7, size: 32, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !373, file: !275, line: 597, baseType: !46, size: 16, offset: 288)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !373, file: !275, line: 598, baseType: !46, size: 16, offset: 304)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !373, file: !275, line: 600, baseType: !382, size: 64, offset: 320)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !274, file: !275, line: 799, baseType: !384, size: 1792, offset: 3456)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !275, line: 610, size: 1792, elements: !385)
!385 = !{!386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !481, !482}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !384, file: !275, line: 611, baseType: !325, size: 192, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !384, file: !275, line: 618, baseType: !333, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !384, file: !275, line: 619, baseType: !333, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !384, file: !275, line: 620, baseType: !333, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !384, file: !275, line: 621, baseType: !333, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !384, file: !275, line: 622, baseType: !333, size: 64, offset: 448)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !384, file: !275, line: 629, baseType: !344, size: 64, offset: 512)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !384, file: !275, line: 630, baseType: !333, size: 64, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !384, file: !275, line: 631, baseType: !7, size: 32, offset: 640)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !384, file: !275, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !384, file: !275, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !384, file: !275, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !384, file: !275, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !384, file: !275, line: 662, baseType: !400, size: 512, offset: 704)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !147, line: 118, size: 512, elements: !401)
!401 = !{!402, !410, !411, !416, !477, !478, !479, !480}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !400, file: !147, line: 119, baseType: !403, size: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !404, line: 9, size: 256, elements: !405)
!404 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !403, file: !404, line: 10, baseType: !325, size: 192, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !403, file: !404, line: 11, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !409, line: 29, baseType: !344)
!409 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !400, file: !147, line: 120, baseType: !408, size: 64, offset: 256)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !400, file: !147, line: 121, baseType: !412, size: 64, offset: 320)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!146, !415}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !400, file: !147, line: 122, baseType: !417, size: 64, offset: 384)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !147, line: 159, size: 512, align: 512, elements: !419)
!419 = !{!420, !446, !447, !450, !460, !461, !472, !476}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !418, file: !147, line: 160, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !147, line: 215, size: 4608, align: 512, elements: !423)
!423 = !{!424, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !422, file: !147, line: 216, baseType: !425, size: 32)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !88, line: 23, baseType: !87)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !422, file: !147, line: 217, baseType: !7, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !422, file: !147, line: 218, baseType: !7, size: 32, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !422, file: !147, line: 219, baseType: !7, size: 32, offset: 96)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !422, file: !147, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !422, file: !147, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !422, file: !147, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !422, file: !147, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !422, file: !147, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !422, file: !147, line: 226, baseType: !7, size: 32, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !422, file: !147, line: 227, baseType: !46, size: 16, offset: 192)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !422, file: !147, line: 228, baseType: !46, size: 16, offset: 208)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !422, file: !147, line: 229, baseType: !7, size: 32, offset: 224)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !422, file: !147, line: 235, baseType: !408, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !422, file: !147, line: 236, baseType: !415, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !422, file: !147, line: 237, baseType: !408, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !422, file: !147, line: 238, baseType: !415, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !422, file: !147, line: 239, baseType: !443, size: 4096, align: 512, offset: 512)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !418, size: 4096, align: 512, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 8)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !418, file: !147, line: 161, baseType: !7, size: 32, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !418, file: !147, line: 162, baseType: !448, size: 32, offset: 96)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !45, line: 32, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !57, line: 96, baseType: !42)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !418, file: !147, line: 163, baseType: !451, size: 32, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !452, line: 274, baseType: !453)
!452 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !452, line: 274, size: 32, elements: !454)
!454 = !{!455}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !453, file: !452, line: 274, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !452, line: 69, baseType: !457)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !452, line: 64, size: 32, elements: !458)
!458 = !{!459}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !457, file: !452, line: 65, baseType: !7, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !418, file: !147, line: 164, baseType: !415, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !418, file: !147, line: 165, baseType: !462, size: 128, offset: 256)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !404, line: 14, size: 128, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !462, file: !404, line: 15, baseType: !465, size: 128)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !326, line: 26, size: 128, elements: !466)
!466 = !{!467, !471}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !465, file: !326, line: 27, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !326, line: 12, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !468, file: !326, line: 13, baseType: !330, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !465, file: !326, line: 28, baseType: !330, size: 64, offset: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !418, file: !147, line: 166, baseType: !473, size: 64, offset: 384)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!408}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !418, file: !147, line: 167, baseType: !408, size: 64, offset: 448)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !400, file: !147, line: 123, baseType: !103, size: 8, offset: 448)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !400, file: !147, line: 124, baseType: !103, size: 8, offset: 456)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !400, file: !147, line: 125, baseType: !103, size: 8, offset: 464)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !400, file: !147, line: 126, baseType: !103, size: 8, offset: 472)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !384, file: !275, line: 671, baseType: !400, size: 512, offset: 1216)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !384, file: !275, line: 679, baseType: !483, size: 64, offset: 1728)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !274, file: !275, line: 800, baseType: !485, size: 64, offset: 5248)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !275, line: 800, flags: DIFlagFwdDecl)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !274, file: !275, line: 809, baseType: !489, size: 64, offset: 5312)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !275, line: 70, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !274, file: !275, line: 825, baseType: !492, size: 2048, align: 512, offset: 5632)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !275, line: 509, size: 2048, align: 512, elements: !493)
!493 = !{!494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !492, file: !275, line: 511, baseType: !333, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !492, file: !275, line: 512, baseType: !333, size: 64, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !492, file: !275, line: 513, baseType: !333, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !492, file: !275, line: 514, baseType: !333, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !492, file: !275, line: 515, baseType: !333, size: 64, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !492, file: !275, line: 516, baseType: !333, size: 64, offset: 320)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !492, file: !275, line: 518, baseType: !333, size: 64, offset: 384)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !492, file: !275, line: 519, baseType: !333, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !492, file: !275, line: 520, baseType: !344, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !492, file: !275, line: 522, baseType: !333, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !492, file: !275, line: 523, baseType: !333, size: 64, offset: 640)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !492, file: !275, line: 524, baseType: !344, size: 64, offset: 704)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !492, file: !275, line: 526, baseType: !344, size: 64, offset: 768)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !492, file: !275, line: 527, baseType: !333, size: 64, offset: 832)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !492, file: !275, line: 529, baseType: !333, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !492, file: !275, line: 530, baseType: !333, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !492, file: !275, line: 531, baseType: !333, size: 64, offset: 1024)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !492, file: !275, line: 532, baseType: !333, size: 64, offset: 1088)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !492, file: !275, line: 533, baseType: !333, size: 64, offset: 1152)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !492, file: !275, line: 535, baseType: !333, size: 64, offset: 1216)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !492, file: !275, line: 536, baseType: !333, size: 64, offset: 1280)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !492, file: !275, line: 537, baseType: !333, size: 64, offset: 1344)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !492, file: !275, line: 538, baseType: !333, size: 64, offset: 1408)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !492, file: !275, line: 539, baseType: !333, size: 64, offset: 1472)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !492, file: !275, line: 540, baseType: !333, size: 64, offset: 1536)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !492, file: !275, line: 541, baseType: !333, size: 64, offset: 1600)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !492, file: !275, line: 542, baseType: !333, size: 64, offset: 1664)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !492, file: !275, line: 543, baseType: !333, size: 64, offset: 1728)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !274, file: !275, line: 833, baseType: !7, size: 32, offset: 7680)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !274, file: !275, line: 836, baseType: !7, size: 32, offset: 7712)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !274, file: !275, line: 837, baseType: !42, size: 32, offset: 7744)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !274, file: !275, line: 838, baseType: !526, size: 64, offset: 7808)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !529, line: 19, baseType: !530)
!529 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !529, line: 19, size: 64, elements: !531)
!531 = !{!532}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !530, file: !529, line: 19, baseType: !533, size: 64)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 1)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !274, file: !275, line: 839, baseType: !537, size: 64, offset: 7872)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !274, file: !275, line: 840, baseType: !528, size: 64, offset: 7936)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !274, file: !275, line: 841, baseType: !40, size: 64, offset: 8000)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !274, file: !275, line: 843, baseType: !46, size: 16, offset: 8064)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !274, file: !275, line: 845, baseType: !46, size: 16, offset: 8080)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !274, file: !275, line: 848, baseType: !42, size: 32, offset: 8096)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !274, file: !275, line: 849, baseType: !544, size: 32, offset: 8128)
!544 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !275, line: 718, size: 32, elements: !545)
!545 = !{!546, !553}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !544, file: !275, line: 724, baseType: !547, size: 32)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !544, file: !275, line: 719, size: 32, elements: !548)
!548 = !{!549, !550, !551, !552}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !547, file: !275, line: 720, baseType: !103, size: 8)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !547, file: !275, line: 721, baseType: !103, size: 8, offset: 8)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !547, file: !275, line: 722, baseType: !103, size: 8, offset: 16)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !547, file: !275, line: 723, baseType: !103, size: 8, offset: 24)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !544, file: !275, line: 725, baseType: !269, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !274, file: !275, line: 850, baseType: !117, size: 128, offset: 8192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !274, file: !275, line: 851, baseType: !556, size: 64, offset: 8320)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !275, line: 60, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !274, file: !275, line: 855, baseType: !59, size: 64, offset: 8384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !274, file: !275, line: 856, baseType: !103, size: 8, offset: 8448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !274, file: !275, line: 857, baseType: !103, size: 8, offset: 8456)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !274, file: !275, line: 858, baseType: !42, size: 32, offset: 8480)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !274, file: !275, line: 859, baseType: !117, size: 128, offset: 8512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !274, file: !275, line: 860, baseType: !42, size: 32, offset: 8640)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !274, file: !275, line: 861, baseType: !117, size: 128, offset: 8704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !274, file: !275, line: 873, baseType: !566, size: 256, offset: 8832)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !275, line: 376, size: 256, elements: !567)
!567 = !{!568, !569, !570, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !566, file: !275, line: 381, baseType: !59, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !566, file: !275, line: 384, baseType: !335, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !566, file: !275, line: 389, baseType: !335, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !566, file: !275, line: 392, baseType: !335, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !274, file: !275, line: 875, baseType: !117, size: 128, offset: 9088)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !274, file: !275, line: 877, baseType: !574, size: 320, offset: 9216)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !575, line: 86, size: 320, elements: !576)
!575 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!576 = !{!577, !578, !579}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !574, file: !575, line: 87, baseType: !42, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !574, file: !575, line: 88, baseType: !117, size: 128, offset: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !574, file: !575, line: 89, baseType: !117, size: 128, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !274, file: !275, line: 878, baseType: !325, size: 192, align: 64, offset: 9536)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !274, file: !275, line: 881, baseType: !582, size: 64, offset: 9728)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !216, line: 733, size: 10240, elements: !584)
!584 = !{!585, !3970}
!585 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !216, line: 734, baseType: !586, size: 10240)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !583, file: !216, line: 734, size: 10240, elements: !587)
!587 = !{!588, !592, !606, !3850, !3851, !3852, !3853, !3854, !3855, !3862, !3863, !3864, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3903, !3904, !3907, !3950, !3951, !3952, !3955, !3956, !3957, !3960, !3961, !3962, !3968, !3969}
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !586, file: !216, line: 739, baseType: !589, size: 512, align: 512)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !586, file: !216, line: 739, size: 512, align: 512, elements: !590)
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !589, file: !216, line: 747, baseType: !69, size: 32)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !586, file: !216, line: 750, baseType: !593, size: 128, offset: 512)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !594, line: 218, size: 128, elements: !595)
!594 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!595 = !{!596, !604, !605}
!596 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !594, line: 219, baseType: !597, size: 32)
!597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !594, line: 219, size: 32, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !597, file: !594, line: 220, baseType: !79, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !597, file: !594, line: 221, baseType: !601)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !594, line: 197, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !594, line: 197, elements: !603)
!603 = !{}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !593, file: !594, line: 223, baseType: !7, size: 32, offset: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !593, file: !594, line: 224, baseType: !40, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !586, file: !216, line: 752, baseType: !607, size: 64, offset: 640)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!59, !610, !59, !59, !59, !59}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !19, line: 994, size: 1856, align: 64, elements: !612)
!612 = !{!613, !627, !628, !630, !637, !649, !650, !651, !721, !1078, !1087, !3840, !3841, !3842, !3843, !3844, !3845, !3847, !3848, !3849}
!613 = !DIDerivedType(tag: DW_TAG_member, scope: !611, file: !19, line: 995, baseType: !614, size: 128)
!614 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !611, file: !19, line: 995, size: 128, elements: !615)
!615 = !{!616, !617, !626}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !614, file: !19, line: 996, baseType: !294, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !614, file: !19, line: 997, baseType: !618, size: 128, align: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !619)
!619 = !{!620, !622}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !618, file: !45, line: 233, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !618, file: !45, line: 234, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !621}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !614, file: !19, line: 998, baseType: !7, size: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !611, file: !19, line: 1005, baseType: !79, size: 32, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !611, file: !19, line: 1006, baseType: !629, size: 32, offset: 160)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !45, line: 156, baseType: !7)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !611, file: !19, line: 1007, baseType: !631, size: 64, offset: 192)
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !632, line: 13, baseType: !633)
!632 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !45, line: 181, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 179, size: 64, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !634, file: !45, line: 180, baseType: !344, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !611, file: !19, line: 1008, baseType: !638, size: 256, offset: 256)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !639, line: 66, size: 256, elements: !640)
!639 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!640 = !{!641, !642, !643, !648}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !639, line: 67, baseType: !631, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !638, file: !639, line: 68, baseType: !425, size: 32, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !638, file: !639, line: 70, baseType: !644, size: 32, offset: 96)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !645, line: 15, size: 32, elements: !646)
!645 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!646 = !{!647}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !644, file: !645, line: 20, baseType: !69, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !638, file: !639, line: 72, baseType: !117, size: 128, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !611, file: !19, line: 1009, baseType: !61, size: 64, offset: 512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !611, file: !19, line: 1010, baseType: !7, size: 32, offset: 576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !611, file: !19, line: 1011, baseType: !652, size: 256, offset: 640)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !19, line: 948, size: 256, elements: !653)
!653 = !{!654, !677, !710, !711, !719, !720}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !652, file: !19, line: 949, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !656, line: 34, baseType: !657)
!656 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !656, line: 25, size: 64, elements: !658)
!658 = !{!659}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !657, file: !656, line: 26, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !661, line: 27, baseType: !662)
!661 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !661, line: 13, size: 64, elements: !663)
!663 = !{!664, !676}
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !661, line: 14, baseType: !665, size: 32)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !661, line: 14, size: 32, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !665, file: !661, line: 15, baseType: !69, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !661, line: 16, baseType: !669, size: 32)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !665, file: !661, line: 16, size: 32, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !669, file: !661, line: 18, baseType: !103, size: 8)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !669, file: !661, line: 19, baseType: !673, size: 24, offset: 8)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 24, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 3)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !662, file: !661, line: 26, baseType: !91, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !652, file: !19, line: 950, baseType: !678, size: 64, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !24, line: 59, size: 768, elements: !680)
!680 = !{!681, !682, !683, !684, !697, !698, !699, !700}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !679, file: !24, line: 61, baseType: !281, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !679, file: !24, line: 62, baseType: !7, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !679, file: !24, line: 63, baseType: !79, size: 32, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !679, file: !24, line: 65, baseType: !685, size: 256, offset: 128)
!685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !686, size: 256, elements: !695)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !45, line: 194, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !686, file: !45, line: 195, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !45, line: 198, size: 128, elements: !691)
!691 = !{!692, !693}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !690, file: !45, line: 199, baseType: !689, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !690, file: !45, line: 199, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!695 = !{!696}
!696 = !DISubrange(count: 4)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !679, file: !24, line: 66, baseType: !686, size: 64, offset: 384)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !679, file: !24, line: 68, baseType: !74, size: 192, offset: 448)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !679, file: !24, line: 69, baseType: !618, size: 128, align: 64, offset: 640)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !679, file: !24, line: 70, baseType: !701, offset: 768)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !702, elements: !708)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !24, line: 54, size: 128, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !702, file: !24, line: 55, baseType: !42, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !702, file: !24, line: 56, baseType: !706, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !24, line: 56, flags: DIFlagFwdDecl)
!708 = !{!709}
!709 = !DISubrange(count: -1)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !652, file: !19, line: 951, baseType: !23, size: 32, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !652, file: !19, line: 952, baseType: !712, size: 32, offset: 160)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !713, line: 23, baseType: !714)
!713 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 21, size: 32, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !714, file: !713, line: 22, baseType: !717, size: 32)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !45, line: 37, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !57, line: 49, baseType: !7)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !652, file: !19, line: 952, baseType: !712, size: 32, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !652, file: !19, line: 953, baseType: !42, size: 32, offset: 224)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !611, file: !19, line: 1012, baseType: !722, size: 64, offset: 896)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !725, line: 110, size: 1472, elements: !726)
!725 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!726 = !{!727, !728, !729, !736, !737, !738, !739, !740, !741, !742, !743, !749, !750, !751, !752, !753, !754, !878, !879, !880, !881, !882, !913, !1064, !1065, !1073}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !724, file: !725, line: 111, baseType: !631, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !724, file: !725, line: 112, baseType: !712, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !724, file: !725, line: 113, baseType: !730, size: 32, offset: 96)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !713, line: 28, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !713, line: 26, size: 32, elements: !732)
!732 = !{!733}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !731, file: !713, line: 27, baseType: !734, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !45, line: 38, baseType: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !57, line: 50, baseType: !7)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !724, file: !725, line: 114, baseType: !712, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !724, file: !725, line: 115, baseType: !730, size: 32, offset: 160)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !724, file: !725, line: 116, baseType: !712, size: 32, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !724, file: !725, line: 117, baseType: !730, size: 32, offset: 224)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !724, file: !725, line: 118, baseType: !712, size: 32, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !724, file: !725, line: 119, baseType: !730, size: 32, offset: 288)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !724, file: !725, line: 120, baseType: !7, size: 32, offset: 320)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !724, file: !725, line: 121, baseType: !744, size: 64, offset: 384)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !745, line: 24, baseType: !746)
!745 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !745, line: 24, size: 64, elements: !747)
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !746, file: !745, line: 24, baseType: !333, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !724, file: !725, line: 122, baseType: !744, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !724, file: !725, line: 123, baseType: !744, size: 64, offset: 512)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !724, file: !725, line: 124, baseType: !744, size: 64, offset: 576)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !724, file: !725, line: 125, baseType: !744, size: 64, offset: 640)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !724, file: !725, line: 127, baseType: !107, size: 8, offset: 704)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !724, file: !725, line: 129, baseType: !755, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !757, line: 195, size: 1728, elements: !758)
!757 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!758 = !{!759, !760, !765, !770, !779, !782, !783, !790, !791, !792, !793, !796, !797, !798, !800, !801, !842, !863}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !756, file: !757, line: 196, baseType: !281, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !756, file: !757, line: 197, baseType: !761, size: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !757, line: 28, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !45, line: 104, baseType: !763)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !104, line: 20, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !106, line: 26, baseType: !42)
!765 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 198, baseType: !766, size: 192, offset: 64)
!766 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 198, size: 192, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !766, file: !757, line: 199, baseType: !117, size: 128)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !766, file: !757, line: 200, baseType: !325, size: 192, align: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !756, file: !757, line: 205, baseType: !771, size: 320, offset: 256)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !772, line: 48, size: 320, elements: !773)
!772 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!773 = !{!774, !775, !776, !777, !778}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !771, file: !772, line: 49, baseType: !631, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !771, file: !772, line: 55, baseType: !631, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !771, file: !772, line: 57, baseType: !644, size: 32, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !771, file: !772, line: 59, baseType: !425, size: 32, offset: 160)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !771, file: !772, line: 60, baseType: !117, size: 128, offset: 192)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !756, file: !757, line: 206, baseType: !780, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !757, line: 206, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !756, file: !757, line: 207, baseType: !40, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 208, baseType: !784, size: 64, offset: 704)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 208, size: 64, elements: !785)
!785 = !{!786, !789}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !784, file: !757, line: 209, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !788, line: 8, baseType: !345)
!788 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!789 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !784, file: !757, line: 210, baseType: !787, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !756, file: !757, line: 212, baseType: !787, size: 64, offset: 768)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !756, file: !757, line: 213, baseType: !712, size: 32, offset: 832)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !756, file: !757, line: 214, baseType: !730, size: 32, offset: 864)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !756, file: !757, line: 215, baseType: !794, size: 32, offset: 896)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !757, line: 31, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !45, line: 110, baseType: !269)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !756, file: !757, line: 216, baseType: !46, size: 16, offset: 928)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !756, file: !757, line: 217, baseType: !46, size: 16, offset: 944)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !756, file: !757, line: 221, baseType: !799, size: 16, offset: 960)
!799 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !756, file: !757, line: 228, baseType: !59, size: 64, offset: 1024)
!801 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 245, baseType: !802, size: 320, offset: 1088)
!802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 245, size: 320, elements: !803)
!803 = !{!804, !833}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !802, file: !757, line: 246, baseType: !805, size: 320)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !757, line: 114, size: 320, elements: !806)
!806 = !{!807, !808, !820, !823, !832}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !805, file: !757, line: 116, baseType: !59, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !805, file: !757, line: 117, baseType: !809, size: 64, offset: 64)
!809 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !805, file: !757, line: 117, size: 64, elements: !810)
!810 = !{!811, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, scope: !809, file: !757, line: 118, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !809, file: !757, line: 118, size: 64, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !812, file: !757, line: 120, baseType: !113, size: 16)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !812, file: !757, line: 121, baseType: !816, size: 48, offset: 16)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 6)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !809, file: !757, line: 127, baseType: !59, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !805, file: !757, line: 129, baseType: !821, size: 64, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !757, line: 102, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !805, file: !757, line: 130, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !757, line: 108, size: 192, elements: !826)
!826 = !{!827, !828, !829}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !825, file: !757, line: 109, baseType: !618, size: 128, align: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !825, file: !757, line: 110, baseType: !281, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !825, file: !757, line: 111, baseType: !830, size: 8, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !831)
!831 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !805, file: !757, line: 131, baseType: !36, size: 64, offset: 256)
!833 = !DIDerivedType(tag: DW_TAG_member, scope: !802, file: !757, line: 247, baseType: !834, size: 320)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !802, file: !757, line: 247, size: 320, elements: !835)
!835 = !{!836, !837, !838, !839, !840}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !834, file: !757, line: 248, baseType: !59, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !834, file: !757, line: 249, baseType: !59, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !834, file: !757, line: 250, baseType: !821, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !834, file: !757, line: 251, baseType: !824, size: 64, offset: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !834, file: !757, line: 252, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 260, baseType: !843, size: 256, offset: 1408)
!843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 260, size: 256, elements: !844)
!844 = !{!845, !851}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !843, file: !757, line: 261, baseType: !846, size: 256)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !757, line: 134, size: 256, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !846, file: !757, line: 135, baseType: !40, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !846, file: !757, line: 136, baseType: !850, size: 256)
!850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !695)
!851 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !757, line: 262, baseType: !852, size: 256)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !843, file: !757, line: 262, size: 256, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !852, file: !757, line: 264, baseType: !117, size: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !852, file: !757, line: 265, baseType: !856, size: 128, offset: 128)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !857, line: 22, size: 128, elements: !858)
!857 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!858 = !{!859, !862}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !856, file: !857, line: 23, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !857, line: 23, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !856, file: !857, line: 24, baseType: !59, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !756, file: !757, line: 280, baseType: !864, size: 64, offset: 1664)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !757, line: 176, size: 192, elements: !866)
!866 = !{!867, !876, !877}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !865, file: !757, line: 177, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !757, line: 171, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!42, !755, !872, !874, !755}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !822)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !865, file: !757, line: 178, baseType: !755, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !865, file: !757, line: 179, baseType: !821, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !724, file: !725, line: 130, baseType: !755, size: 64, offset: 832)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !724, file: !725, line: 131, baseType: !755, size: 64, offset: 896)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !724, file: !725, line: 132, baseType: !755, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !724, file: !725, line: 135, baseType: !40, size: 64, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !724, file: !725, line: 137, baseType: !883, size: 64, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !885, line: 14, size: 1088, elements: !886)
!885 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!886 = !{!887, !888, !897, !898, !899, !900, !901, !902}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !884, file: !885, line: 15, baseType: !281, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !884, file: !885, line: 17, baseType: !889, size: 320, offset: 64)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !890, line: 22, size: 320, elements: !891)
!890 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!891 = !{!892, !893, !894, !895}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !889, file: !890, line: 23, baseType: !425, size: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !889, file: !890, line: 24, baseType: !344, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !889, file: !890, line: 26, baseType: !117, size: 128, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !889, file: !890, line: 28, baseType: !896, size: 64, offset: 256)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !884, file: !885, line: 19, baseType: !59, size: 64, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !884, file: !885, line: 20, baseType: !631, size: 64, offset: 448)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !884, file: !885, line: 23, baseType: !690, size: 128, offset: 512)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !884, file: !885, line: 24, baseType: !712, size: 32, offset: 640)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !884, file: !885, line: 29, baseType: !631, size: 64, offset: 704)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !884, file: !885, line: 36, baseType: !903, size: 320, offset: 768)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !904, line: 15, size: 320, elements: !905)
!904 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!905 = !{!906, !907, !908, !909, !910, !911, !912}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !903, file: !904, line: 16, baseType: !425, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !903, file: !904, line: 18, baseType: !42, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !903, file: !904, line: 19, baseType: !42, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !903, file: !904, line: 20, baseType: !42, size: 32, offset: 96)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !903, file: !904, line: 21, baseType: !42, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !903, file: !904, line: 22, baseType: !59, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !903, file: !904, line: 23, baseType: !59, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !724, file: !725, line: 138, baseType: !914, size: 64, offset: 1152)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !916, line: 68, size: 4800, elements: !917)
!916 = !DIFile(filename: "./include/linux/user_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f5aa90efa9b3db38866197604219093")
!917 = !{!918, !940, !941, !942, !943, !944, !945, !946, !957, !958, !959, !960, !961, !962, !974, !1044, !1045, !1059, !1062}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "uid_map", scope: !915, file: !916, line: 69, baseType: !919, size: 576)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_map", file: !916, line: 23, size: 576, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nr_extents", scope: !919, file: !916, line: 24, baseType: !269, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, scope: !919, file: !916, line: 25, baseType: !923, size: 512, offset: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !919, file: !916, line: 25, size: 512, elements: !924)
!924 = !{!925, !934}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "extent", scope: !923, file: !916, line: 26, baseType: !926, size: 480)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 480, elements: !932)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uid_gid_extent", file: !916, line: 17, size: 96, elements: !928)
!928 = !{!929, !930, !931}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !927, file: !916, line: 18, baseType: !269, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lower_first", scope: !927, file: !916, line: 19, baseType: !269, size: 32, offset: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !927, file: !916, line: 20, baseType: !269, size: 32, offset: 64)
!932 = !{!933}
!933 = !DISubrange(count: 5)
!934 = !DIDerivedType(tag: DW_TAG_member, scope: !923, file: !916, line: 27, baseType: !935, size: 128)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !923, file: !916, line: 27, size: 128, elements: !936)
!936 = !{!937, !939}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "forward", scope: !935, file: !916, line: 28, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "reverse", scope: !935, file: !916, line: 29, baseType: !938, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "gid_map", scope: !915, file: !916, line: 70, baseType: !919, size: 576, offset: 576)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "projid_map", scope: !915, file: !916, line: 71, baseType: !919, size: 576, offset: 1152)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !915, file: !916, line: 72, baseType: !914, size: 64, offset: 1728)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !915, file: !916, line: 73, baseType: !42, size: 32, offset: 1792)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !915, file: !916, line: 74, baseType: !712, size: 32, offset: 1824)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !915, file: !916, line: 75, baseType: !730, size: 32, offset: 1856)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !915, file: !916, line: 76, baseType: !947, size: 192, offset: 1920)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !948, line: 9, size: 192, elements: !949)
!948 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!949 = !{!950, !951, !955, !956}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !947, file: !948, line: 10, baseType: !631, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !947, file: !948, line: 11, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !948, line: 7, flags: DIFlagFwdDecl)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !947, file: !948, line: 12, baseType: !7, size: 32, offset: 128)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !947, file: !948, line: 13, baseType: !281, size: 32, offset: 160)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !915, file: !916, line: 77, baseType: !59, size: 64, offset: 2112)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "parent_could_setfcap", scope: !915, file: !916, line: 80, baseType: !830, size: 8, offset: 2176)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_name_list", scope: !915, file: !916, line: 88, baseType: !117, size: 128, offset: 2240)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "user_keyring_register", scope: !915, file: !916, line: 89, baseType: !755, size: 64, offset: 2368)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "keyring_sem", scope: !915, file: !916, line: 90, baseType: !771, size: 320, offset: 2432)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !915, file: !916, line: 97, baseType: !963, size: 256, offset: 2752)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !964, line: 98, size: 256, elements: !965)
!964 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!965 = !{!966, !967, !968}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !963, file: !964, line: 99, baseType: !631, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !963, file: !964, line: 100, baseType: !117, size: 128, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !963, file: !964, line: 101, baseType: !969, size: 64, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !964, line: 21, baseType: !970)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{null, !973}
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !915, file: !916, line: 99, baseType: !975, size: 768, offset: 3008)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_set", file: !32, line: 199, size: 768, elements: !976)
!976 = !{!977, !982}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "is_seen", scope: !975, file: !32, line: 200, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!42, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !975, file: !32, line: 201, baseType: !983, size: 704, offset: 64)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_dir", file: !32, line: 193, size: 704, elements: !984)
!984 = !{!985, !1043}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !983, file: !32, line: 195, baseType: !986, size: 640)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_header", file: !32, line: 173, size: 640, elements: !987)
!987 = !{!988, !1000, !1012, !1013, !1033, !1034, !1036, !1042}
!988 = !DIDerivedType(tag: DW_TAG_member, scope: !986, file: !32, line: 174, baseType: !989, size: 192)
!989 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !986, file: !32, line: 174, size: 192, elements: !990)
!990 = !{!991, !999}
!991 = !DIDerivedType(tag: DW_TAG_member, scope: !989, file: !32, line: 175, baseType: !992, size: 192)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !989, file: !32, line: 175, size: 192, elements: !993)
!993 = !{!994, !995, !996, !997, !998}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table", scope: !992, file: !32, line: 176, baseType: !53, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_size", scope: !992, file: !32, line: 177, baseType: !42, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !992, file: !32, line: 178, baseType: !42, size: 32, offset: 96)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !992, file: !32, line: 179, baseType: !42, size: 32, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "nreg", scope: !992, file: !32, line: 180, baseType: !42, size: 32, offset: 160)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !989, file: !32, line: 182, baseType: !618, size: 128, align: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "unregistering", scope: !986, file: !32, line: 184, baseType: !1001, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1003, line: 26, size: 256, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1002, file: !1003, line: 27, baseType: !7, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1002, file: !1003, line: 28, baseType: !1007, size: 192, offset: 64)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1008, line: 43, size: 192, elements: !1009)
!1008 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1007, file: !1008, line: 44, baseType: !425, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1007, file: !1008, line: 45, baseType: !117, size: 128, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_table_arg", scope: !986, file: !32, line: 185, baseType: !53, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !986, file: !32, line: 186, baseType: !1014, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_table_root", file: !32, line: 204, size: 960, elements: !1016)
!1016 = !{!1017, !1018, !1022, !1029}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "default_set", scope: !1015, file: !32, line: 205, baseType: !975, size: 768)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1015, file: !32, line: 206, baseType: !1019, size: 64, offset: 768)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!981, !1014}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "set_ownership", scope: !1015, file: !32, line: 207, baseType: !1023, size: 64, offset: 832)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !1026, !1027, !1028}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "permissions", scope: !1015, file: !32, line: 209, baseType: !1030, size: 64, offset: 896)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!42, !1026, !53}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !986, file: !32, line: 187, baseType: !981, size: 64, offset: 384)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !986, file: !32, line: 188, baseType: !1035, size: 64, offset: 448)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !986, file: !32, line: 189, baseType: !1037, size: 64, offset: 512)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctl_node", file: !32, line: 157, size: 256, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1038, file: !32, line: 158, baseType: !325, size: 192, align: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1038, file: !32, line: 159, baseType: !1026, size: 64, offset: 192)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !986, file: !32, line: 190, baseType: !686, size: 64, offset: 576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !983, file: !32, line: 196, baseType: !468, size: 64, offset: 640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sysctls", scope: !915, file: !916, line: 100, baseType: !1026, size: 64, offset: 3776)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !915, file: !916, line: 102, baseType: !1046, size: 64, offset: 3840)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !916, line: 107, size: 1152, elements: !1048)
!1048 = !{!1049, !1050, !1051, !1052, !1053, !1057}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1047, file: !916, line: 108, baseType: !690, size: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1047, file: !916, line: 109, baseType: !914, size: 64, offset: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1047, file: !916, line: 110, baseType: !712, size: 32, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1047, file: !916, line: 111, baseType: !69, size: 32, offset: 224)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "ucount", scope: !1047, file: !916, line: 112, baseType: !1054, size: 640, offset: 256)
!1054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 640, elements: !1055)
!1055 = !{!1056}
!1056 = !DISubrange(count: 10)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit", scope: !1047, file: !916, line: 113, baseType: !1058, size: 256, offset: 896)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 256, elements: !695)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "ucount_max", scope: !915, file: !916, line: 103, baseType: !1060, size: 640, offset: 3904)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 640, elements: !1055)
!1061 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "rlimit_max", scope: !915, file: !916, line: 104, baseType: !1063, size: 256, offset: 4544)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1061, size: 256, elements: !695)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !724, file: !725, line: 139, baseType: !1046, size: 64, offset: 1216)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !724, file: !725, line: 140, baseType: !1066, size: 64, offset: 1280)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !725, line: 25, size: 64, elements: !1068)
!1068 = !{!1069, !1070, !1071}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1067, file: !725, line: 26, baseType: !69, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1067, file: !725, line: 27, baseType: !42, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1067, file: !725, line: 28, baseType: !1072, offset: 64)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !730, elements: !708)
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !724, file: !725, line: 142, baseType: !1074, size: 128, offset: 1344)
!1074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !724, file: !725, line: 142, size: 128, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1074, file: !725, line: 143, baseType: !42, size: 32)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1074, file: !725, line: 144, baseType: !618, size: 128, align: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !611, file: !19, line: 1013, baseType: !1079, size: 256, offset: 960)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !19, line: 970, size: 256, elements: !1080)
!1080 = !{!1081, !1082, !1083, !1084, !1085, !1086}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1079, file: !19, line: 971, baseType: !59, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1079, file: !19, line: 972, baseType: !7, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1079, file: !19, line: 973, baseType: !7, size: 32, offset: 96)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1079, file: !19, line: 974, baseType: !7, size: 32, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1079, file: !19, line: 975, baseType: !7, size: 32, offset: 160)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1079, file: !19, line: 976, baseType: !61, size: 64, offset: 192)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !611, file: !19, line: 1014, baseType: !1088, size: 128, offset: 1216)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1089, line: 8, size: 128, elements: !1090)
!1089 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1090 = !{!1091, !3839}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1088, file: !1089, line: 9, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !1094, line: 70, size: 256, elements: !1095)
!1094 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!1095 = !{!1096, !3836, !3837, !3838}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !1093, file: !1094, line: 71, baseType: !1097, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1099, line: 82, size: 1536, elements: !1100)
!1099 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!1100 = !{!1101, !1102, !1107, !1115, !1116, !1131, !3803, !3805, !3818, !3819, !3820, !3821, !3822, !3828, !3829, !3830}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !1098, file: !1099, line: 84, baseType: !7, size: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !1098, file: !1099, line: 85, baseType: !1103, size: 32, offset: 32)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !452, line: 275, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !452, line: 275, size: 32, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1104, file: !452, line: 275, baseType: !456, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !1098, file: !1099, line: 86, baseType: !1108, size: 128, offset: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !1109, line: 38, size: 128, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!1110 = !{!1111, !1113}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !1109, line: 39, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1108, file: !1109, line: 39, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !1098, file: !1099, line: 87, baseType: !1097, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !1098, file: !1099, line: 88, baseType: !1117, size: 128, offset: 256)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !1099, line: 49, size: 128, elements: !1118)
!1118 = !{!1119, !1128}
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1117, file: !1099, line: 50, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1117, file: !1099, line: 50, size: 64, elements: !1121)
!1121 = !{!1122, !1127}
!1122 = !DIDerivedType(tag: DW_TAG_member, scope: !1120, file: !1099, line: 51, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1120, file: !1099, line: 51, size: 64, elements: !1124)
!1124 = !{!1125, !1126}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1123, file: !1099, line: 52, baseType: !269, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1123, file: !1099, line: 52, baseType: !269, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !1120, file: !1099, line: 54, baseType: !333, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1117, file: !1099, line: 56, baseType: !1129, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !1098, file: !1099, line: 89, baseType: !1132, size: 64, offset: 384)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !19, line: 641, size: 4800, elements: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1144, !1145, !1339, !3617, !3618, !3619, !3620, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3785, !3788, !3789, !3790, !3799, !3800, !3801, !3802}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !1133, file: !19, line: 642, baseType: !44, size: 16)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !1133, file: !19, line: 643, baseType: !46, size: 16, offset: 16)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !1133, file: !19, line: 644, baseType: !712, size: 32, offset: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !1133, file: !19, line: 645, baseType: !117, size: 128, offset: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !1133, file: !19, line: 646, baseType: !730, size: 32, offset: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1133, file: !19, line: 647, baseType: !7, size: 32, offset: 224)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !1133, file: !19, line: 650, baseType: !1142, size: 64, offset: 256)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !19, line: 607, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !1133, file: !19, line: 651, baseType: !1142, size: 64, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !1133, file: !19, line: 654, baseType: !1146, size: 64, offset: 384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1148)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !19, line: 1966, size: 2048, align: 512, elements: !1149)
!1149 = !{!1150, !1154, !1167, !1173, !1177, !1181, !1185, !1189, !1193, !1197, !1201, !1202, !1208, !1212, !1249, !1280, !1287, !1293, !1297, !1301, !1305, !1309, !1313, !1319, !1323}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !1148, file: !19, line: 1967, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!1097, !1132, !1097, !7}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !1148, file: !19, line: 1968, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!36, !1097, !1132, !1158}
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !1160, line: 10, size: 128, elements: !1161)
!1160 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!1161 = !{!1162, !1166}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1159, file: !1160, line: 11, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{null, !40}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1159, file: !1160, line: 12, baseType: !40, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !1148, file: !19, line: 1969, baseType: !1168, size: 64, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!42, !1171, !1132, !42}
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !745, line: 42, flags: DIFlagFwdDecl)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !1148, file: !19, line: 1970, baseType: !1174, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!1142, !1132, !42, !830}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !1148, file: !19, line: 1972, baseType: !1178, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!42, !1097, !841, !42}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !1148, file: !19, line: 1974, baseType: !1182, size: 64, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!42, !1171, !1132, !1097, !44, !830}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1148, file: !19, line: 1976, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!42, !1097, !1132, !1097}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !1148, file: !19, line: 1977, baseType: !1190, size: 64, offset: 448)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!42, !1132, !1097}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1148, file: !19, line: 1978, baseType: !1194, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!42, !1171, !1132, !1097, !36}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1148, file: !19, line: 1980, baseType: !1198, size: 64, offset: 576)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!42, !1171, !1132, !1097, !44}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1148, file: !19, line: 1982, baseType: !1190, size: 64, offset: 640)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !1148, file: !19, line: 1983, baseType: !1203, size: 64, offset: 704)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!42, !1171, !1132, !1097, !44, !1206}
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !45, line: 21, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !45, line: 18, baseType: !269)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1148, file: !19, line: 1985, baseType: !1209, size: 64, offset: 768)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!42, !1171, !1132, !1097, !1132, !1097, !7}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !1148, file: !19, line: 1987, baseType: !1213, size: 64, offset: 832)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!42, !1171, !1097, !1216}
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !19, line: 226, size: 640, elements: !1218)
!1218 = !{!1219, !1220, !1221, !1231, !1240, !1241, !1246, !1247, !1248}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !1217, file: !19, line: 227, baseType: !7, size: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !1217, file: !19, line: 228, baseType: !44, size: 16, offset: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !19, line: 241, baseType: !1222, size: 32, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !19, line: 241, size: 32, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !1222, file: !19, line: 242, baseType: !712, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !1222, file: !19, line: 243, baseType: !1226, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !1227, line: 16, baseType: !1228)
!1227 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1227, line: 14, size: 32, elements: !1229)
!1229 = !{!1230}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1228, file: !1227, line: 15, baseType: !717, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1217, file: !19, line: 245, baseType: !1232, size: 32, offset: 96)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1217, file: !19, line: 245, size: 32, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !1232, file: !19, line: 246, baseType: !730, size: 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !1232, file: !19, line: 247, baseType: !1236, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !1227, line: 20, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1227, line: 18, size: 32, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1237, file: !1227, line: 19, baseType: !734, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !1217, file: !19, line: 249, baseType: !61, size: 64, offset: 128)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !1217, file: !19, line: 250, baseType: !1242, size: 128, offset: 192)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !788, line: 13, size: 128, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1242, file: !788, line: 14, baseType: !787, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1242, file: !788, line: 15, baseType: !1061, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !1217, file: !19, line: 251, baseType: !1242, size: 128, offset: 320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !1217, file: !19, line: 252, baseType: !1242, size: 128, offset: 448)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !1217, file: !19, line: 259, baseType: !610, size: 64, offset: 576)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !1148, file: !19, line: 1988, baseType: !1250, size: 64, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!42, !1171, !1253, !1255, !269, !7}
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1088)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1257, line: 22, size: 1280, elements: !1258)
!1257 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1256, file: !1257, line: 23, baseType: !269, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1256, file: !1257, line: 24, baseType: !44, size: 16, offset: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1256, file: !1257, line: 25, baseType: !7, size: 32, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1256, file: !1257, line: 26, baseType: !795, size: 32, offset: 96)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1256, file: !1257, line: 27, baseType: !333, size: 64, offset: 128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1256, file: !1257, line: 28, baseType: !333, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1256, file: !1257, line: 41, baseType: !333, size: 64, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1256, file: !1257, line: 42, baseType: !1206, size: 32, offset: 320)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1256, file: !1257, line: 43, baseType: !1206, size: 32, offset: 352)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1256, file: !1257, line: 44, baseType: !712, size: 32, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1256, file: !1257, line: 45, baseType: !730, size: 32, offset: 416)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1256, file: !1257, line: 46, baseType: !61, size: 64, offset: 448)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1256, file: !1257, line: 47, baseType: !1242, size: 128, offset: 512)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1256, file: !1257, line: 48, baseType: !1242, size: 128, offset: 640)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1256, file: !1257, line: 49, baseType: !1242, size: 128, offset: 768)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1256, file: !1257, line: 50, baseType: !1242, size: 128, offset: 896)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1256, file: !1257, line: 51, baseType: !333, size: 64, offset: 1024)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1256, file: !1257, line: 52, baseType: !333, size: 64, offset: 1088)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1256, file: !1257, line: 53, baseType: !269, size: 32, offset: 1152)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1256, file: !1257, line: 54, baseType: !269, size: 32, offset: 1184)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1256, file: !1257, line: 55, baseType: !333, size: 64, offset: 1216)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !1148, file: !19, line: 1990, baseType: !1281, size: 64, offset: 960)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!1284, !1097, !841, !55}
!1284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !45, line: 66, baseType: !1285)
!1285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !57, line: 73, baseType: !1286)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !57, line: 15, baseType: !1061)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !1148, file: !19, line: 1991, baseType: !1288, size: 64, offset: 1024)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!42, !1132, !1291, !333, !333}
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !19, line: 55, flags: DIFlagFwdDecl)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !1148, file: !19, line: 1993, baseType: !1294, size: 64, offset: 1088)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!42, !1132, !42}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !1148, file: !19, line: 1994, baseType: !1298, size: 64, offset: 1152)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!42, !1132, !1097, !610, !7, !44}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !1148, file: !19, line: 1997, baseType: !1302, size: 64, offset: 1216)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!42, !1171, !1132, !610, !44}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !1148, file: !19, line: 1999, baseType: !1306, size: 64, offset: 1280)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DISubroutineType(types: !1308)
!1308 = !{!1142, !1171, !1097, !42}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !1148, file: !19, line: 2001, baseType: !1310, size: 64, offset: 1344)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!42, !1171, !1097, !1142, !42}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !1148, file: !19, line: 2003, baseType: !1314, size: 64, offset: 1408)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!42, !1171, !1097, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !19, line: 76, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !1148, file: !19, line: 2005, baseType: !1320, size: 64, offset: 1472)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!42, !1097, !1317}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !1148, file: !19, line: 2006, baseType: !1324, size: 64, offset: 1536)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{!1327, !1132}
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !19, line: 3192, size: 192, elements: !1329)
!1329 = !{!1330, !1338}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1328, file: !19, line: 3193, baseType: !1331, size: 128)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1332, line: 296, size: 128, elements: !1333)
!1332 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1333 = !{!1334, !1335, !1337}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1331, file: !1332, line: 297, baseType: !79, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1331, file: !1332, line: 299, baseType: !1336, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1331, file: !1332, line: 300, baseType: !40, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1328, file: !19, line: 3194, baseType: !269, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !1133, file: !19, line: 655, baseType: !1340, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !19, line: 1190, size: 10752, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !3076, !3208, !3248, !3331, !3335, !3336, !3337, !3338, !3339, !3340, !3341, !3342, !3343, !3348, !3352, !3353, !3354, !3357, !3416, !3419, !3420, !3421, !3462, !3488, !3489, !3490, !3491, !3492, !3493, !3496, !3500, !3509, !3510, !3511, !3512, !3571, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1341, file: !19, line: 1191, baseType: !117, size: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1341, file: !19, line: 1192, baseType: !1206, size: 32, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1341, file: !19, line: 1193, baseType: !107, size: 8, offset: 160)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1341, file: !19, line: 1194, baseType: !59, size: 64, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1341, file: !19, line: 1195, baseType: !61, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1341, file: !19, line: 1196, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !19, line: 2366, size: 576, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1360, !1364, !1368, !1372, !3064, !3065, !3066, !3068, !3069, !3070, !3072, !3073, !3074, !3075}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1350, file: !19, line: 2367, baseType: !36, size: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1350, file: !19, line: 2368, baseType: !42, size: 32, offset: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1350, file: !19, line: 2376, baseType: !1355, size: 64, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!42, !1358}
!1358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1359, size: 64)
!1359 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !1094, line: 21, flags: DIFlagFwdDecl)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1350, file: !19, line: 2377, baseType: !1361, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1363)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !19, line: 75, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1350, file: !19, line: 2378, baseType: !1365, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!1097, !1349, !42, !36, !40}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1350, file: !19, line: 2380, baseType: !1369, size: 64, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1340}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1350, file: !19, line: 2381, baseType: !1373, size: 64, offset: 384)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1382, !2733, !2759, !2760, !2761, !2762, !2766, !2769, !2770, !2771, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2837, !2841, !2861, !2880, !2881, !2882, !2883, !2892, !2915, !2916, !2919, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2933, !2934, !3022, !3030, !3031, !3032, !3034, !3038, !3039, !3043, !3044, !3045, !3046, !3048, !3049, !3050, !3057, !3058, !3059, !3063}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1374, file: !6, line: 403, baseType: !5, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1374, file: !6, line: 406, baseType: !117, size: 128, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1374, file: !6, line: 409, baseType: !1379, size: 448, offset: 192)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 448, elements: !1380)
!1380 = !{!1381}
!1381 = !DISubrange(count: 56)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1374, file: !6, line: 417, baseType: !1383, size: 768, offset: 640)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !1384)
!1384 = !{!1385, !2727, !2728, !2729, !2732}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1383, file: !6, line: 46, baseType: !1386, size: 512)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1387, line: 64, size: 512, elements: !1388)
!1387 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1388 = !{!1389, !1390, !1391, !1393, !1437, !2583, !2717, !2722, !2723, !2724, !2725, !2726}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1386, file: !1387, line: 65, baseType: !36, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1386, file: !1387, line: 66, baseType: !117, size: 128, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1386, file: !1387, line: 67, baseType: !1392, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1386, file: !1387, line: 68, baseType: !1394, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1387, line: 168, size: 768, elements: !1396)
!1396 = !{!1397, !1398, !1399, !1400}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1395, file: !1387, line: 169, baseType: !117, size: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1395, file: !1387, line: 170, baseType: !79, size: 32, offset: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1395, file: !1387, line: 171, baseType: !1386, size: 512, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1395, file: !1387, line: 172, baseType: !1401, size: 64, offset: 704)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1403)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1387, line: 133, size: 192, elements: !1404)
!1404 = !{!1405, !1412, !1417}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1403, file: !1387, line: 134, baseType: !1406, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1407)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!42, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1386)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1403, file: !1387, line: 135, baseType: !1413, size: 64, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!36, !1410}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1403, file: !1387, line: 136, baseType: !1418, size: 64, offset: 128)
!1418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1419)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = !DISubroutineType(types: !1421)
!1421 = !{!42, !1410, !1422}
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1387, line: 125, size: 20736, elements: !1424)
!1424 = !{!1425, !1427, !1431, !1432, !1436}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1423, file: !1387, line: 126, baseType: !1426, size: 192)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 192, elements: !674)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1423, file: !1387, line: 127, baseType: !1428, size: 4096, offset: 192)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 4096, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1423, file: !1387, line: 128, baseType: !42, size: 32, offset: 4288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1423, file: !1387, line: 129, baseType: !1433, size: 16384, offset: 4320)
!1433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 16384, elements: !1434)
!1434 = !{!1435}
!1435 = !DISubrange(count: 2048)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1423, file: !1387, line: 130, baseType: !42, size: 32, offset: 20704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1386, file: !1387, line: 69, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1387, line: 116, size: 384, elements: !1441)
!1441 = !{!1442, !1446, !1465, !2571, !2575, !2579}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1440, file: !1387, line: 117, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{null, !1392}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1440, file: !1387, line: 118, baseType: !1447, size: 64, offset: 64)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1450, line: 254, size: 128, elements: !1451)
!1450 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1451 = !{!1452, !1461}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1449, file: !1450, line: 255, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1284, !1392, !1456, !841}
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1450, line: 30, size: 128, elements: !1458)
!1458 = !{!1459, !1460}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1457, file: !1450, line: 31, baseType: !36, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1457, file: !1450, line: 32, baseType: !44, size: 16, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1449, file: !1450, line: 256, baseType: !1462, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1284, !1392, !1456, !36, !55}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1440, file: !1387, line: 119, baseType: !1466, size: 64, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1469)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1450, line: 84, size: 320, elements: !1470)
!1470 = !{!1471, !1472, !1476, !2567, !2569}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1469, file: !1450, line: 85, baseType: !36, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1469, file: !1450, line: 86, baseType: !1473, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!44, !1392, !1456, !42}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1469, file: !1450, line: 88, baseType: !1477, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!44, !1392, !1480, !42}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1450, line: 175, size: 512, elements: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !2558, !2562, !2563}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1481, file: !1450, line: 176, baseType: !1457, size: 128)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1481, file: !1450, line: 177, baseType: !55, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1481, file: !1450, line: 178, baseType: !40, size: 64, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1481, file: !1450, line: 179, baseType: !1487, size: 64, offset: 256)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !19, line: 472, size: 1536, align: 64, elements: !1492)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !2550, !2551, !2552, !2555, !2556, !2557}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1491, file: !19, line: 473, baseType: !1132, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1491, file: !19, line: 474, baseType: !1331, size: 128, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1491, file: !19, line: 475, baseType: !771, size: 320, offset: 192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1491, file: !19, line: 476, baseType: !1336, size: 32, offset: 512)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1491, file: !19, line: 477, baseType: !69, size: 32, offset: 544)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1491, file: !19, line: 482, baseType: !465, size: 128, offset: 576)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1491, file: !19, line: 483, baseType: !59, size: 64, offset: 704)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1491, file: !19, line: 484, baseType: !59, size: 64, offset: 768)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1491, file: !19, line: 485, baseType: !1502, size: 64, offset: 832)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !19, line: 404, size: 1280, elements: !1505)
!1505 = !{!1506, !1817, !1887, !1891, !1895, !1912, !1918, !1922, !1927, !1931, !1935, !1939, !2038, !2042, !2046, !2050, !2055, !2059, !2542, !2546}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1504, file: !19, line: 405, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!42, !1510, !1797}
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !216, line: 74, size: 512, align: 128, elements: !1512)
!1512 = !{!1513, !1514, !1791, !1796}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1511, file: !216, line: 75, baseType: !59, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !216, line: 83, baseType: !1515, size: 320, offset: 64)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !216, line: 83, size: 320, elements: !1516)
!1516 = !{!1517, !1538, !1552, !1556, !1790}
!1517 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !216, line: 84, baseType: !1518, size: 320)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !216, line: 84, size: 320, elements: !1519)
!1519 = !{!1520, !1531, !1532, !1537}
!1520 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !216, line: 90, baseType: !1521, size: 128)
!1521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !216, line: 90, size: 128, elements: !1522)
!1522 = !{!1523, !1524, !1529, !1530}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1521, file: !216, line: 91, baseType: !117, size: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, scope: !1521, file: !216, line: 94, baseType: !1525, size: 128)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1521, file: !216, line: 94, size: 128, elements: !1526)
!1526 = !{!1527, !1528}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1525, file: !216, line: 96, baseType: !40, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1525, file: !216, line: 98, baseType: !7, size: 32, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1521, file: !216, line: 102, baseType: !117, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1521, file: !216, line: 103, baseType: !117, size: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1518, file: !216, line: 106, baseType: !1490, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1518, file: !216, line: 107, baseType: !1533, size: 64, offset: 192)
!1533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1518, file: !216, line: 107, size: 64, elements: !1534)
!1534 = !{!1535, !1536}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1533, file: !216, line: 108, baseType: !59, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1533, file: !216, line: 109, baseType: !59, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1518, file: !216, line: 117, baseType: !59, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !216, line: 119, baseType: !1539, size: 320)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !216, line: 119, size: 320, elements: !1540)
!1540 = !{!1541, !1542, !1545, !1546, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1539, file: !216, line: 124, baseType: !59, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1539, file: !216, line: 125, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !216, line: 125, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1539, file: !216, line: 126, baseType: !59, size: 64, offset: 128)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1539, file: !216, line: 127, baseType: !59, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !216, line: 128, baseType: !1548, size: 64, offset: 256)
!1548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1539, file: !216, line: 128, size: 64, elements: !1549)
!1549 = !{!1550, !1551}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1548, file: !216, line: 133, baseType: !59, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1548, file: !216, line: 138, baseType: !631, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !216, line: 141, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !216, line: 141, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1553, file: !216, line: 142, baseType: !59, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1515, file: !216, line: 144, baseType: !1557, size: 128)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1515, file: !216, line: 144, size: 128, elements: !1558)
!1558 = !{!1559, !1789}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1557, file: !216, line: 146, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !232, line: 126, size: 1216, elements: !1562)
!1562 = !{!1563, !1573, !1594, !1595, !1596, !1597, !1598, !1771, !1772, !1773}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1561, file: !232, line: 127, baseType: !1564, size: 384)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !232, line: 21, size: 384, elements: !1565)
!1565 = !{!1566, !1567, !1569, !1570, !1571, !1572}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1564, file: !232, line: 22, baseType: !59, size: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1564, file: !232, line: 23, baseType: !1568, size: 64, offset: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1564, file: !232, line: 24, baseType: !1568, size: 64, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1564, file: !232, line: 25, baseType: !59, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1564, file: !232, line: 26, baseType: !59, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1564, file: !232, line: 27, baseType: !59, size: 64, offset: 320)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1561, file: !232, line: 128, baseType: !1574, size: 128, offset: 384)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1575, line: 105, size: 128, elements: !1576)
!1575 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1574, file: !1575, line: 110, baseType: !59, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1574, file: !1575, line: 118, baseType: !1579, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1575, line: 95, size: 448, elements: !1581)
!1581 = !{!1582, !1583, !1589, !1590, !1591, !1592, !1593}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1580, file: !1575, line: 96, baseType: !631, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1580, file: !1575, line: 97, baseType: !1584, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1575, line: 60, baseType: !1586)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{null, !1588}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1580, file: !1575, line: 98, baseType: !1584, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1580, file: !1575, line: 99, baseType: !830, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1580, file: !1575, line: 100, baseType: !830, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1580, file: !1575, line: 101, baseType: !618, size: 128, align: 64, offset: 256)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1580, file: !1575, line: 102, baseType: !1588, size: 64, offset: 384)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1561, file: !232, line: 129, baseType: !1002, size: 256, offset: 512)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1561, file: !232, line: 130, baseType: !231, size: 32, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1561, file: !232, line: 131, baseType: !7, size: 32, offset: 800)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1561, file: !232, line: 132, baseType: !59, size: 64, offset: 832)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1561, file: !232, line: 133, baseType: !1599, size: 64, offset: 896)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !232, line: 77, size: 192, elements: !1602)
!1602 = !{!1603, !1607, !1767}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1601, file: !232, line: 83, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{null, !1510}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1601, file: !232, line: 89, baseType: !1608, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1611, !1612}
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !216, line: 1184, baseType: !7)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1614, line: 512, size: 896, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1615 = !{!1616, !1734, !1735, !1742, !1749, !1759, !1760, !1761, !1763, !1765}
!1616 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !1614, line: 513, baseType: !1617, size: 320)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1613, file: !1614, line: 513, size: 320, elements: !1618)
!1618 = !{!1619, !1730, !1731, !1732, !1733}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1617, file: !1614, line: 514, baseType: !1620, size: 64)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !216, line: 625, size: 1344, elements: !1622)
!1622 = !{!1623, !1632, !1633, !1641, !1648, !1649, !1654, !1655, !1660, !1661, !1664, !1723, !1724, !1725, !1726, !1727, !1728}
!1623 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !216, line: 628, baseType: !1624, size: 128)
!1624 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !216, line: 628, size: 128, elements: !1625)
!1625 = !{!1626, !1631}
!1626 = !DIDerivedType(tag: DW_TAG_member, scope: !1624, file: !216, line: 629, baseType: !1627, size: 128)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1624, file: !216, line: 629, size: 128, elements: !1628)
!1628 = !{!1629, !1630}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1627, file: !216, line: 631, baseType: !59, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1627, file: !216, line: 632, baseType: !59, size: 64, offset: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1624, file: !216, line: 635, baseType: !618, size: 128, align: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1621, file: !216, line: 639, baseType: !582, size: 64, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1621, file: !216, line: 640, baseType: !1634, size: 64, offset: 192)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1635, line: 297, baseType: !1636)
!1635 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1635, line: 297, size: 64, elements: !1637)
!1637 = !{!1638}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1636, file: !1635, line: 297, baseType: !1639, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1640, line: 19, baseType: !59)
!1640 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1641 = !DIDerivedType(tag: DW_TAG_member, scope: !1621, file: !216, line: 646, baseType: !1642, size: 64, offset: 256)
!1642 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1621, file: !216, line: 646, size: 64, elements: !1643)
!1643 = !{!1644, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1642, file: !216, line: 647, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !216, line: 542, baseType: !59)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1642, file: !216, line: 648, baseType: !1646, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1621, file: !216, line: 666, baseType: !42, size: 32, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1621, file: !216, line: 667, baseType: !1650, size: 64, offset: 384)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !216, line: 579, size: 320, elements: !1652)
!1652 = !{!1653}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1651, file: !216, line: 580, baseType: !771, size: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1621, file: !216, line: 670, baseType: !830, size: 8, offset: 448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1621, file: !216, line: 681, baseType: !1656, size: 256, offset: 512)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1621, file: !216, line: 678, size: 256, elements: !1657)
!1657 = !{!1658, !1659}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1656, file: !216, line: 679, baseType: !325, size: 192, align: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1656, file: !216, line: 680, baseType: !59, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1621, file: !216, line: 689, baseType: !117, size: 128, offset: 768)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1621, file: !216, line: 691, baseType: !1662, size: 64, offset: 896)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !216, line: 691, flags: DIFlagFwdDecl)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1621, file: !216, line: 694, baseType: !1665, size: 64, offset: 960)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1667)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1614, line: 563, size: 1024, elements: !1668)
!1668 = !{!1669, !1673, !1674, !1678, !1682, !1686, !1687, !1691, !1695, !1699, !1700, !1701, !1705, !1709, !1715, !1719}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1667, file: !1614, line: 564, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1620}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1667, file: !1614, line: 569, baseType: !1670, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1667, file: !1614, line: 571, baseType: !1675, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!42, !1620, !59}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1667, file: !1614, line: 572, baseType: !1679, size: 64, offset: 192)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!42, !1620}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1667, file: !1614, line: 578, baseType: !1683, size: 64, offset: 256)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!42, !1620, !59, !59, !59}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1667, file: !1614, line: 580, baseType: !1608, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1667, file: !1614, line: 581, baseType: !1688, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1611, !1612, !7}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1667, file: !1614, line: 582, baseType: !1692, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1611, !1612, !59, !59}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1667, file: !1614, line: 584, baseType: !1696, size: 64, offset: 512)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!59, !1620}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1667, file: !1614, line: 588, baseType: !1608, size: 64, offset: 576)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1667, file: !1614, line: 591, baseType: !1608, size: 64, offset: 640)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1667, file: !1614, line: 597, baseType: !1702, size: 64, offset: 704)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!42, !1620, !59, !40, !42, !42}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1667, file: !1614, line: 603, baseType: !1706, size: 64, offset: 768)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!36, !1620}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1667, file: !1614, line: 613, baseType: !1710, size: 64, offset: 832)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!42, !1620, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !216, line: 717, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1667, file: !1614, line: 625, baseType: !1716, size: 64, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!1713, !1620, !59}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1667, file: !1614, line: 633, baseType: !1720, size: 64, offset: 960)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!1510, !1620, !59}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1621, file: !216, line: 697, baseType: !59, size: 64, offset: 1024)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1621, file: !216, line: 699, baseType: !610, size: 64, offset: 1088)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1621, file: !216, line: 700, baseType: !40, size: 64, offset: 1152)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1621, file: !216, line: 711, baseType: !631, size: 64, offset: 1216)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1621, file: !216, line: 717, baseType: !1713, size: 64, offset: 1280)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1621, file: !216, line: 722, baseType: !1729, offset: 1344)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !216, line: 570, elements: !603)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1617, file: !1614, line: 515, baseType: !1336, size: 32, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1617, file: !1614, line: 516, baseType: !59, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1617, file: !1614, line: 517, baseType: !59, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1617, file: !1614, line: 518, baseType: !59, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1613, file: !1614, line: 520, baseType: !215, size: 32, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1613, file: !1614, line: 522, baseType: !1736, size: 64, offset: 384)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1640, line: 22, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 22, size: 64, elements: !1739)
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1738, file: !1640, line: 22, baseType: !1741, size: 64)
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1640, line: 15, baseType: !59)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1613, file: !1614, line: 524, baseType: !1743, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1635, line: 372, baseType: !1745)
!1745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1635, line: 372, size: 64, elements: !1746)
!1746 = !{!1747}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1745, file: !1635, line: 372, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1640, line: 16, baseType: !59)
!1749 = !DIDerivedType(tag: DW_TAG_member, scope: !1613, file: !1614, line: 527, baseType: !1750, size: 64, offset: 512)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1613, file: !1614, line: 527, size: 64, elements: !1751)
!1751 = !{!1752, !1758}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1750, file: !1614, line: 528, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1640, line: 21, baseType: !1754)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1640, line: 21, size: 64, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1754, file: !1640, line: 21, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1640, line: 14, baseType: !59)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1750, file: !1614, line: 529, baseType: !1737, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1613, file: !1614, line: 534, baseType: !1510, size: 64, offset: 576)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1613, file: !1614, line: 535, baseType: !1510, size: 64, offset: 640)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1613, file: !1614, line: 541, baseType: !1762, size: 64, offset: 704)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1613, file: !1614, line: 545, baseType: !1764, size: 64, offset: 768)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1613, file: !1614, line: 549, baseType: !1766, size: 64, offset: 832)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1635, line: 520, baseType: !1510)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1601, file: !232, line: 100, baseType: !1768, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!42, !1560, !59, !59, !42}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1561, file: !232, line: 134, baseType: !40, size: 64, offset: 960)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1561, file: !232, line: 135, baseType: !42, size: 32, offset: 1024)
!1773 = !DIDerivedType(tag: DW_TAG_member, scope: !1561, file: !232, line: 136, baseType: !1774, size: 128, offset: 1088)
!1774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1561, file: !232, line: 136, size: 128, elements: !1775)
!1775 = !{!1776, !1782}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1774, file: !232, line: 137, baseType: !1777, size: 128)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1778, line: 6, size: 128, elements: !1779)
!1778 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1779 = !{!1780, !1781}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1777, file: !1778, line: 7, baseType: !333, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1777, file: !1778, line: 8, baseType: !333, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, scope: !1774, file: !232, line: 138, baseType: !1783)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1774, file: !232, line: 138, elements: !1784)
!1784 = !{!1785, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1783, file: !232, line: 138, baseType: !1786)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !232, line: 138, elements: !603)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1783, file: !232, line: 138, baseType: !1788)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1777, elements: !708)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1557, file: !216, line: 147, baseType: !40, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1515, file: !216, line: 161, baseType: !618, size: 128, align: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1511, file: !216, line: 164, baseType: !1792, size: 32, offset: 384)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1511, file: !216, line: 164, size: 32, elements: !1793)
!1793 = !{!1794, !1795}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1792, file: !216, line: 169, baseType: !69, size: 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1792, file: !216, line: 177, baseType: !7, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1511, file: !216, line: 181, baseType: !69, size: 32, offset: 416)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 42, size: 384, elements: !1799)
!1799 = !{!1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_write", scope: !1798, file: !14, line: 43, baseType: !1061, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pages_skipped", scope: !1798, file: !14, line: 45, baseType: !1061, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !1798, file: !14, line: 52, baseType: !61, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "range_end", scope: !1798, file: !14, line: 53, baseType: !61, size: 64, offset: 192)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "sync_mode", scope: !1798, file: !14, line: 55, baseType: !13, size: 32, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "for_kupdate", scope: !1798, file: !14, line: 57, baseType: !7, size: 1, offset: 288, flags: DIFlagBitField, extraData: i64 288)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "for_background", scope: !1798, file: !14, line: 58, baseType: !7, size: 1, offset: 289, flags: DIFlagBitField, extraData: i64 288)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "tagged_writepages", scope: !1798, file: !14, line: 59, baseType: !7, size: 1, offset: 290, flags: DIFlagBitField, extraData: i64 288)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "for_reclaim", scope: !1798, file: !14, line: 60, baseType: !7, size: 1, offset: 291, flags: DIFlagBitField, extraData: i64 288)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "range_cyclic", scope: !1798, file: !14, line: 61, baseType: !7, size: 1, offset: 292, flags: DIFlagBitField, extraData: i64 288)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "for_sync", scope: !1798, file: !14, line: 62, baseType: !7, size: 1, offset: 293, flags: DIFlagBitField, extraData: i64 288)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "unpinned_fscache_wb", scope: !1798, file: !14, line: 63, baseType: !7, size: 1, offset: 294, flags: DIFlagBitField, extraData: i64 288)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_owner", scope: !1798, file: !14, line: 71, baseType: !7, size: 1, offset: 295, flags: DIFlagBitField, extraData: i64 288)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "swap_plug", scope: !1798, file: !14, line: 78, baseType: !1814, size: 64, offset: 320)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_iocb", file: !14, line: 78, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1504, file: !19, line: 406, baseType: !1818, size: 64, offset: 64)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{!42, !610, !1821}
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !216, line: 293, size: 1536, elements: !1823)
!1823 = !{!1824, !1854, !1868}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !216, line: 295, baseType: !1825, size: 512)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !216, line: 295, size: 512, elements: !1826)
!1826 = !{!1827, !1853}
!1827 = !DIDerivedType(tag: DW_TAG_member, scope: !1825, file: !216, line: 296, baseType: !1828, size: 448)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1825, file: !216, line: 296, size: 448, elements: !1829)
!1829 = !{!1830, !1831, !1840, !1841, !1842, !1851, !1852}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1828, file: !216, line: 298, baseType: !59, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !216, line: 299, baseType: !1832, size: 128, offset: 64)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !216, line: 299, size: 128, elements: !1833)
!1833 = !{!1834, !1835}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1832, file: !216, line: 300, baseType: !117, size: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !216, line: 302, baseType: !1836, size: 128)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !216, line: 302, size: 128, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1836, file: !216, line: 303, baseType: !40, size: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1836, file: !216, line: 305, baseType: !7, size: 32, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1828, file: !216, line: 310, baseType: !1490, size: 64, offset: 192)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1828, file: !216, line: 311, baseType: !59, size: 64, offset: 256)
!1842 = !DIDerivedType(tag: DW_TAG_member, scope: !1828, file: !216, line: 312, baseType: !1843, size: 64, offset: 320)
!1843 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1828, file: !216, line: 312, size: 64, elements: !1844)
!1844 = !{!1845, !1846}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1843, file: !216, line: 313, baseType: !40, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1843, file: !216, line: 314, baseType: !1847, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !216, line: 257, baseType: !1848)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !216, line: 255, size: 64, elements: !1849)
!1849 = !{!1850}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1848, file: !216, line: 256, baseType: !59, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1828, file: !216, line: 316, baseType: !69, size: 32, offset: 384)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1828, file: !216, line: 317, baseType: !69, size: 32, offset: 416)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1825, file: !216, line: 323, baseType: !1511, size: 512, align: 128)
!1854 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !216, line: 325, baseType: !1855, size: 512, offset: 512)
!1855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !216, line: 325, size: 512, elements: !1856)
!1856 = !{!1857, !1867}
!1857 = !DIDerivedType(tag: DW_TAG_member, scope: !1855, file: !216, line: 326, baseType: !1858, size: 320)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1855, file: !216, line: 326, size: 320, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1858, file: !216, line: 327, baseType: !59, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1858, file: !216, line: 328, baseType: !59, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1858, file: !216, line: 329, baseType: !59, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1858, file: !216, line: 331, baseType: !69, size: 32, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1858, file: !216, line: 332, baseType: !69, size: 32, offset: 224)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1858, file: !216, line: 333, baseType: !69, size: 32, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1858, file: !216, line: 335, baseType: !7, size: 32, offset: 288)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1855, file: !216, line: 339, baseType: !1511, size: 512, align: 128)
!1868 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !216, line: 341, baseType: !1869, size: 512, offset: 1024)
!1869 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !216, line: 341, size: 512, elements: !1870)
!1870 = !{!1871, !1880, !1886}
!1871 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !216, line: 342, baseType: !1872, size: 384)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !216, line: 342, size: 384, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1872, file: !216, line: 343, baseType: !59, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1872, file: !216, line: 344, baseType: !59, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1872, file: !216, line: 346, baseType: !40, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1872, file: !216, line: 347, baseType: !40, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1872, file: !216, line: 348, baseType: !40, size: 64, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1872, file: !216, line: 349, baseType: !40, size: 64, offset: 320)
!1880 = !DIDerivedType(tag: DW_TAG_member, scope: !1869, file: !216, line: 352, baseType: !1881, size: 256)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1869, file: !216, line: 352, size: 256, elements: !1882)
!1882 = !{!1883, !1884, !1885}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1881, file: !216, line: 353, baseType: !59, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1881, file: !216, line: 354, baseType: !59, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1881, file: !216, line: 356, baseType: !117, size: 128, offset: 128)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1869, file: !216, line: 359, baseType: !1511, size: 512, align: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1504, file: !19, line: 409, baseType: !1888, size: 64, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!42, !1490, !1797}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1504, file: !19, line: 412, baseType: !1892, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!830, !1490, !1821}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1504, file: !19, line: 414, baseType: !1896, size: 64, offset: 256)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !1901, line: 1276, size: 448, elements: !1902)
!1901 = !DIFile(filename: "./include/linux/pagemap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "76aa51d60be898371b0ef39d034a0ec4")
!1902 = !{!1903, !1904, !1905, !1907, !1908, !1909, !1910, !1911}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1900, file: !1901, line: 1277, baseType: !610, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1900, file: !1901, line: 1278, baseType: !1490, size: 64, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ra", scope: !1900, file: !1901, line: 1279, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "_index", scope: !1900, file: !1901, line: 1281, baseType: !59, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages", scope: !1900, file: !1901, line: 1282, baseType: !7, size: 32, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "_batch_count", scope: !1900, file: !1901, line: 1283, baseType: !7, size: 32, offset: 288)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "_workingset", scope: !1900, file: !1901, line: 1284, baseType: !830, size: 8, offset: 320)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "_pflags", scope: !1900, file: !1901, line: 1285, baseType: !59, size: 64, offset: 384)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1504, file: !19, line: 416, baseType: !1913, size: 64, offset: 320)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!42, !610, !1490, !61, !7, !1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1504, file: !19, line: 419, baseType: !1919, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!42, !610, !1490, !61, !7, !7, !1510, !40}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1504, file: !19, line: 424, baseType: !1923, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1926, !1490, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !45, line: 131, baseType: !333)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1504, file: !19, line: 425, baseType: !1928, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{null, !1821, !55, !55}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1504, file: !19, line: 426, baseType: !1932, size: 64, offset: 576)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!830, !1821, !1336}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1504, file: !19, line: 427, baseType: !1936, size: 64, offset: 640)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{null, !1821}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1504, file: !19, line: 428, baseType: !1940, size: 64, offset: 704)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DISubroutineType(types: !1942)
!1942 = !{!1284, !1943, !1981}
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !19, line: 373, size: 384, elements: !1945)
!1945 = !{!1946, !1947, !1948, !1952, !1953, !1954, !1955}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1944, file: !19, line: 374, baseType: !610, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1944, file: !19, line: 375, baseType: !61, size: 64, offset: 64)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1944, file: !19, line: 376, baseType: !1949, size: 64, offset: 128)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{null, !1943, !1061}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1944, file: !19, line: 377, baseType: !40, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1944, file: !19, line: 378, baseType: !42, size: 32, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1944, file: !19, line: 379, baseType: !113, size: 16, offset: 288)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1944, file: !19, line: 380, baseType: !1956, size: 64, offset: 320)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1944, file: !19, line: 380, size: 64, elements: !1957)
!1957 = !{!1958, !1977}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1956, file: !19, line: 386, baseType: !1959, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !1901, line: 998, size: 448, elements: !1961)
!1961 = !{!1962, !1963, !1964}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "folio", scope: !1960, file: !1901, line: 999, baseType: !1821, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "bit_nr", scope: !1960, file: !1901, line: 1000, baseType: !42, size: 32, offset: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1960, file: !1901, line: 1001, baseType: !1965, size: 320, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !75, line: 14, baseType: !1966)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !75, line: 30, size: 320, elements: !1967)
!1967 = !{!1968, !1969, !1970, !1976}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1966, file: !75, line: 31, baseType: !7, size: 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1966, file: !75, line: 32, baseType: !40, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1966, file: !75, line: 33, baseType: !1971, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !75, line: 16, baseType: !1972)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!42, !1975, !7, !42, !40}
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1966, file: !75, line: 34, baseType: !117, size: 128, offset: 192)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1956, file: !19, line: 395, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!1284, !40}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1983, line: 41, size: 320, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1990, !1995, !2033}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1982, file: !1983, line: 42, baseType: !103, size: 8)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1982, file: !1983, line: 43, baseType: !830, size: 8, offset: 8)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1982, file: !1983, line: 44, baseType: !830, size: 8, offset: 16)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1982, file: !1983, line: 45, baseType: !830, size: 8, offset: 24)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1982, file: !1983, line: 46, baseType: !830, size: 8, offset: 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1983, line: 47, baseType: !1991, size: 64, offset: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1982, file: !1983, line: 47, size: 64, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1991, file: !1983, line: 48, baseType: !55, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1991, file: !1983, line: 49, baseType: !42, size: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1983, line: 61, baseType: !1996, size: 128, offset: 128)
!1996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1982, file: !1983, line: 61, size: 128, elements: !1997)
!1997 = !{!1998, !2004}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1996, file: !1983, line: 67, baseType: !1999, size: 128)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !2000, line: 17, size: 128, elements: !2001)
!2000 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!2001 = !{!2002, !2003}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1999, file: !2000, line: 19, baseType: !40, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1999, file: !2000, line: 20, baseType: !56, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, scope: !1996, file: !1983, line: 68, baseType: !2005, size: 128)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1996, file: !1983, line: 68, size: 128, elements: !2006)
!2006 = !{!2007, !2032}
!2007 = !DIDerivedType(tag: DW_TAG_member, scope: !2005, file: !1983, line: 69, baseType: !2008, size: 64)
!2008 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2005, file: !1983, line: 69, size: 64, elements: !2009)
!2009 = !{!2010, !2013, !2020, !2029, !2031}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !2008, file: !1983, line: 71, baseType: !2011, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1999)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !2008, file: !1983, line: 72, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2016)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1983, line: 17, size: 128, elements: !2017)
!2017 = !{!2018, !2019}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2016, file: !1983, line: 18, baseType: !40, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2016, file: !1983, line: 19, baseType: !55, size: 64, offset: 64)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !2008, file: !1983, line: 73, baseType: !2021, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !2024, line: 31, size: 128, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !2023, file: !2024, line: 32, baseType: !1510, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !2023, file: !2024, line: 33, baseType: !7, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !2023, file: !2024, line: 34, baseType: !7, size: 32, offset: 96)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !2008, file: !1983, line: 74, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !2008, file: !1983, line: 75, baseType: !40, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2005, file: !1983, line: 77, baseType: !55, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, scope: !1982, file: !1983, line: 80, baseType: !2034, size: 64, offset: 256)
!2034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1982, file: !1983, line: 80, size: 64, elements: !2035)
!2035 = !{!2036, !2037}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !2034, file: !1983, line: 81, baseType: !59, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !2034, file: !1983, line: 82, baseType: !61, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1504, file: !19, line: 433, baseType: !2039, size: 64, offset: 768)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!42, !1490, !1821, !1821, !246}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1504, file: !19, line: 435, baseType: !2043, size: 64, offset: 832)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!42, !1821}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1504, file: !19, line: 436, baseType: !2047, size: 64, offset: 896)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!830, !1821, !55, !55}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1504, file: !19, line: 438, baseType: !2051, size: 64, offset: 960)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !1821, !2054, !2054}
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1504, file: !19, line: 439, baseType: !2056, size: 64, offset: 1024)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{!42, !1490, !1510}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1504, file: !19, line: 442, baseType: !2060, size: 64, offset: 1088)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!42, !2063, !610, !2541}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !2065, line: 282, size: 2176, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/swap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b48f968c4d3c1313a5ba7451c8be5b79")
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2073, !2074, !2076, !2083, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2096, !2102, !2103, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !2064, file: !2065, line: 283, baseType: !1574, size: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2064, file: !2065, line: 284, baseType: !59, size: 64, offset: 128)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2064, file: !2065, line: 285, baseType: !799, size: 16, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2064, file: !2065, line: 286, baseType: !574, size: 320, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2064, file: !2065, line: 287, baseType: !2072, size: 8, offset: 576)
!2072 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2064, file: !2065, line: 288, baseType: !7, size: 32, offset: 608)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "swap_map", scope: !2064, file: !2065, line: 289, baseType: !2075, size: 64, offset: 640)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_info", scope: !2064, file: !2065, line: 290, baseType: !2077, size: 64, offset: 704)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_info", file: !2065, line: 250, size: 64, elements: !2079)
!2079 = !{!2080, !2081, !2082}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2078, file: !2065, line: 251, baseType: !79, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2078, file: !2065, line: 257, baseType: !7, size: 24, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2078, file: !2065, line: 258, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "free_clusters", scope: !2064, file: !2065, line: 291, baseType: !2084, size: 128, offset: 768)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swap_cluster_list", file: !2065, line: 274, size: 128, elements: !2085)
!2085 = !{!2086, !2087}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2084, file: !2065, line: 275, baseType: !2078, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2084, file: !2065, line: 276, baseType: !2078, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "lowest_bit", scope: !2064, file: !2065, line: 292, baseType: !7, size: 32, offset: 896)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "highest_bit", scope: !2064, file: !2065, line: 293, baseType: !7, size: 32, offset: 928)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2064, file: !2065, line: 294, baseType: !7, size: 32, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "inuse_pages", scope: !2064, file: !2065, line: 295, baseType: !7, size: 32, offset: 992)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next", scope: !2064, file: !2065, line: 296, baseType: !7, size: 32, offset: 1024)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_nr", scope: !2064, file: !2065, line: 297, baseType: !7, size: 32, offset: 1056)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "cluster_next_cpu", scope: !2064, file: !2065, line: 298, baseType: !2095, size: 64, offset: 1088)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_cluster", scope: !2064, file: !2065, line: 299, baseType: !2097, size: 64, offset: 1152)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_cluster", file: !2065, line: 269, size: 96, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2098, file: !2065, line: 270, baseType: !2078, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2098, file: !2065, line: 271, baseType: !7, size: 32, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "swap_extent_root", scope: !2064, file: !2065, line: 300, baseType: !468, size: 64, offset: 1216)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !2064, file: !2065, line: 301, baseType: !2104, size: 64, offset: 1280)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !2106, line: 40, size: 7424, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!2107 = !{!2108, !2109, !2110, !2113, !2117, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2144, !2145}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !2105, file: !2106, line: 41, baseType: !1926, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !2105, file: !2106, line: 42, baseType: !1926, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !2105, file: !2106, line: 43, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !275, line: 1453, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !2105, file: !2106, line: 44, baseType: !2114, size: 64, offset: 192)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !2116, line: 74, flags: DIFlagFwdDecl)
!2116 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !2105, file: !2106, line: 45, baseType: !2118, size: 64, offset: 256)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !2106, line: 45, flags: DIFlagFwdDecl)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !2105, file: !2106, line: 46, baseType: !59, size: 64, offset: 320)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !2105, file: !2106, line: 47, baseType: !830, size: 8, offset: 384)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !2105, file: !2106, line: 48, baseType: !103, size: 8, offset: 392)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !2105, file: !2106, line: 49, baseType: !830, size: 8, offset: 400)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !2105, file: !2106, line: 50, baseType: !830, size: 8, offset: 408)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !2105, file: !2106, line: 51, baseType: !1206, size: 32, offset: 416)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !2105, file: !2106, line: 52, baseType: !69, size: 32, offset: 448)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !2105, file: !2106, line: 53, baseType: !79, size: 32, offset: 480)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !2105, file: !2106, line: 54, baseType: !1132, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !2105, file: !2106, line: 55, baseType: !40, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !2105, file: !2106, line: 56, baseType: !40, size: 64, offset: 640)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !2105, file: !2106, line: 57, baseType: !2132, size: 64, offset: 704)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2134)
!2134 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !2106, line: 57, flags: DIFlagFwdDecl)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !2105, file: !2106, line: 58, baseType: !638, size: 256, offset: 768)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !2105, file: !2106, line: 60, baseType: !42, size: 32, offset: 1024)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !2105, file: !2106, line: 61, baseType: !42, size: 32, offset: 1056)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !2105, file: !2106, line: 62, baseType: !1392, size: 64, offset: 1088)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !2105, file: !2106, line: 65, baseType: !638, size: 256, offset: 1152)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !2105, file: !2106, line: 66, baseType: !1340, size: 64, offset: 1408)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !2105, file: !2106, line: 68, baseType: !2142, size: 64, offset: 1472)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !2106, line: 68, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !2105, file: !2106, line: 72, baseType: !830, size: 8, offset: 1536)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !2105, file: !2106, line: 77, baseType: !2146, size: 5824, offset: 1600)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !140, line: 705, size: 5824, elements: !2147)
!2147 = !{!2148, !2149, !2151, !2154, !2155, !2208, !2278, !2279, !2280, !2281, !2282, !2289, !2392, !2405, !2415, !2419, !2421, !2422, !2423, !2427, !2434, !2435, !2438, !2441, !2445, !2448, !2449, !2450, !2451, !2452, !2453, !2509, !2510, !2511, !2514, !2517, !2526, !2527, !2528, !2529, !2530, !2531}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2146, file: !140, line: 706, baseType: !1386, size: 512)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2146, file: !140, line: 707, baseType: !2150, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2146, file: !140, line: 709, baseType: !2152, size: 64, offset: 576)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !140, line: 37, flags: DIFlagFwdDecl)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !2146, file: !140, line: 711, baseType: !36, size: 64, offset: 640)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2146, file: !140, line: 712, baseType: !2156, size: 64, offset: 704)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !140, line: 89, size: 384, elements: !2159)
!2159 = !{!2160, !2161, !2162, !2168, !2173, !2177}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2158, file: !140, line: 90, baseType: !36, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2158, file: !140, line: 91, baseType: !1466, size: 64, offset: 64)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2158, file: !140, line: 92, baseType: !2163, size: 64, offset: 128)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!42, !2166, !1422}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2158, file: !140, line: 93, baseType: !2169, size: 64, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!841, !2166, !2172, !1027, !1028}
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2158, file: !140, line: 95, baseType: !2174, size: 64, offset: 256)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{null, !2150}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2158, file: !140, line: 97, baseType: !2178, size: 64, offset: 320)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2180)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !152, line: 286, size: 1472, elements: !2181)
!2181 = !{!2182, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206, !2207}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2180, file: !152, line: 287, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!42, !2150}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2180, file: !152, line: 288, baseType: !2174, size: 64, offset: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2180, file: !152, line: 289, baseType: !2183, size: 64, offset: 128)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2180, file: !152, line: 290, baseType: !2183, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2180, file: !152, line: 291, baseType: !2183, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2180, file: !152, line: 292, baseType: !2183, size: 64, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2180, file: !152, line: 293, baseType: !2183, size: 64, offset: 384)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2180, file: !152, line: 294, baseType: !2183, size: 64, offset: 448)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2180, file: !152, line: 295, baseType: !2183, size: 64, offset: 512)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2180, file: !152, line: 296, baseType: !2183, size: 64, offset: 576)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2180, file: !152, line: 297, baseType: !2183, size: 64, offset: 640)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2180, file: !152, line: 298, baseType: !2183, size: 64, offset: 704)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2180, file: !152, line: 299, baseType: !2183, size: 64, offset: 768)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2180, file: !152, line: 300, baseType: !2183, size: 64, offset: 832)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2180, file: !152, line: 301, baseType: !2183, size: 64, offset: 896)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2180, file: !152, line: 302, baseType: !2183, size: 64, offset: 960)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2180, file: !152, line: 303, baseType: !2183, size: 64, offset: 1024)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2180, file: !152, line: 304, baseType: !2183, size: 64, offset: 1088)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2180, file: !152, line: 305, baseType: !2183, size: 64, offset: 1152)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2180, file: !152, line: 306, baseType: !2183, size: 64, offset: 1216)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2180, file: !152, line: 307, baseType: !2183, size: 64, offset: 1280)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2180, file: !152, line: 308, baseType: !2183, size: 64, offset: 1344)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2180, file: !152, line: 309, baseType: !2183, size: 64, offset: 1408)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2146, file: !140, line: 714, baseType: !2209, size: 64, offset: 768)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2211)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2212, line: 80, size: 1344, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2213 = !{!2214, !2215, !2216, !2217, !2218, !2219, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2277}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2211, file: !2212, line: 81, baseType: !36, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2211, file: !2212, line: 82, baseType: !36, size: 64, offset: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2211, file: !2212, line: 83, baseType: !1466, size: 64, offset: 128)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2211, file: !2212, line: 84, baseType: !1466, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2211, file: !2212, line: 85, baseType: !1466, size: 64, offset: 256)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2211, file: !2212, line: 87, baseType: !2220, size: 64, offset: 320)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!42, !2150, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !134, line: 96, size: 1152, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2236, !2240, !2241, !2242, !2243, !2244, !2252, !2253, !2254, !2255, !2256, !2257}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2224, file: !134, line: 97, baseType: !36, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2224, file: !134, line: 98, baseType: !2209, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2224, file: !134, line: 100, baseType: !1373, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2224, file: !134, line: 101, baseType: !36, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2224, file: !134, line: 103, baseType: !830, size: 8, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2224, file: !134, line: 104, baseType: !133, size: 32, offset: 288)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2224, file: !134, line: 106, baseType: !2233, size: 64, offset: 320)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2235)
!2235 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !134, line: 106, flags: DIFlagFwdDecl)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2224, file: !134, line: 107, baseType: !2237, size: 64, offset: 384)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2239)
!2239 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !134, line: 107, flags: DIFlagFwdDecl)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2224, file: !134, line: 109, baseType: !2183, size: 64, offset: 448)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2224, file: !134, line: 110, baseType: !2174, size: 64, offset: 512)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2224, file: !134, line: 111, baseType: !2183, size: 64, offset: 576)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2224, file: !134, line: 112, baseType: !2174, size: 64, offset: 640)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2224, file: !134, line: 113, baseType: !2245, size: 64, offset: 704)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!42, !2150, !2248}
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !152, line: 60, baseType: !2249)
!2249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !152, line: 58, size: 32, elements: !2250)
!2250 = !{!2251}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2249, file: !152, line: 59, baseType: !42, size: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2224, file: !134, line: 114, baseType: !2183, size: 64, offset: 768)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2224, file: !134, line: 115, baseType: !1466, size: 64, offset: 832)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2224, file: !134, line: 116, baseType: !1466, size: 64, offset: 896)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2224, file: !134, line: 118, baseType: !2178, size: 64, offset: 960)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2224, file: !134, line: 119, baseType: !2174, size: 64, offset: 1024)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2224, file: !134, line: 121, baseType: !2258, size: 64, offset: 1088)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !134, line: 121, flags: DIFlagFwdDecl)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2211, file: !2212, line: 88, baseType: !2163, size: 64, offset: 384)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2211, file: !2212, line: 89, baseType: !2183, size: 64, offset: 448)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2211, file: !2212, line: 90, baseType: !2174, size: 64, offset: 512)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2211, file: !2212, line: 91, baseType: !2174, size: 64, offset: 576)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2211, file: !2212, line: 92, baseType: !2174, size: 64, offset: 640)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2211, file: !2212, line: 94, baseType: !2183, size: 64, offset: 704)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2211, file: !2212, line: 95, baseType: !2183, size: 64, offset: 768)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2211, file: !2212, line: 97, baseType: !2245, size: 64, offset: 832)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2211, file: !2212, line: 98, baseType: !2183, size: 64, offset: 896)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2211, file: !2212, line: 100, baseType: !2183, size: 64, offset: 960)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2211, file: !2212, line: 102, baseType: !2183, size: 64, offset: 1024)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2211, file: !2212, line: 103, baseType: !2174, size: 64, offset: 1088)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2211, file: !2212, line: 105, baseType: !2178, size: 64, offset: 1152)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2211, file: !2212, line: 107, baseType: !2274, size: 64, offset: 1216)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2212, line: 107, flags: DIFlagFwdDecl)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2211, file: !2212, line: 109, baseType: !830, size: 8, offset: 1280)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2146, file: !140, line: 715, baseType: !2223, size: 64, offset: 832)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !2146, file: !140, line: 717, baseType: !40, size: 64, offset: 896)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2146, file: !140, line: 719, baseType: !40, size: 64, offset: 960)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2146, file: !140, line: 721, baseType: !638, size: 256, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !2146, file: !140, line: 725, baseType: !2283, size: 448, offset: 1280)
!2283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !140, line: 517, size: 448, elements: !2284)
!2284 = !{!2285, !2286, !2287, !2288}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2283, file: !140, line: 518, baseType: !117, size: 128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2283, file: !140, line: 519, baseType: !117, size: 128, offset: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2283, file: !140, line: 520, baseType: !117, size: 128, offset: 256)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2283, file: !140, line: 521, baseType: !139, size: 32, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2146, file: !140, line: 726, baseType: !2290, size: 2496, offset: 1728)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !152, line: 663, size: 2496, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2385, !2389}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2290, file: !152, line: 664, baseType: !2248, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2290, file: !152, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2290, file: !152, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2290, file: !152, line: 667, baseType: !830, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2290, file: !152, line: 668, baseType: !830, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2290, file: !152, line: 669, baseType: !830, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2290, file: !152, line: 670, baseType: !830, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2290, file: !152, line: 671, baseType: !830, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2290, file: !152, line: 672, baseType: !830, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2290, file: !152, line: 673, baseType: !830, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2290, file: !152, line: 674, baseType: !830, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2290, file: !152, line: 675, baseType: !269, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2290, file: !152, line: 676, baseType: !79, size: 32, offset: 96)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2290, file: !152, line: 678, baseType: !117, size: 128, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2290, file: !152, line: 679, baseType: !1002, size: 256, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2290, file: !152, line: 680, baseType: !2308, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2310, line: 43, size: 1536, elements: !2311)
!2310 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2311 = !{!2312, !2313, !2314, !2315, !2316, !2319, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2343, !2344}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2309, file: !2310, line: 44, baseType: !36, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2309, file: !2310, line: 45, baseType: !42, size: 32, offset: 64)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2309, file: !2310, line: 46, baseType: !117, size: 128, offset: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2309, file: !2310, line: 47, baseType: !79, size: 32, offset: 256)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2309, file: !2310, line: 48, baseType: !2317, size: 64, offset: 320)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !152, line: 629, flags: DIFlagFwdDecl)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2309, file: !2310, line: 49, baseType: !2320, size: 320, offset: 384)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2321, line: 11, size: 320, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2322 = !{!2323, !2324, !2325, !2330}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2320, file: !2321, line: 16, baseType: !690, size: 128)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2320, file: !2321, line: 17, baseType: !59, size: 64, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2320, file: !2321, line: 18, baseType: !2326, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{null, !2329}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2320, file: !2321, line: 19, baseType: !269, size: 32, offset: 256)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2309, file: !2310, line: 50, baseType: !59, size: 64, offset: 704)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2309, file: !2310, line: 51, baseType: !408, size: 64, offset: 768)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2309, file: !2310, line: 52, baseType: !408, size: 64, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2309, file: !2310, line: 53, baseType: !408, size: 64, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2309, file: !2310, line: 54, baseType: !408, size: 64, offset: 960)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2309, file: !2310, line: 55, baseType: !408, size: 64, offset: 1024)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2309, file: !2310, line: 56, baseType: !59, size: 64, offset: 1088)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2309, file: !2310, line: 57, baseType: !59, size: 64, offset: 1152)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2309, file: !2310, line: 58, baseType: !59, size: 64, offset: 1216)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2309, file: !2310, line: 59, baseType: !59, size: 64, offset: 1280)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2309, file: !2310, line: 60, baseType: !59, size: 64, offset: 1344)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2309, file: !2310, line: 61, baseType: !2150, size: 64, offset: 1408)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2309, file: !2310, line: 62, baseType: !830, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2309, file: !2310, line: 63, baseType: !830, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2290, file: !152, line: 681, baseType: !830, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2290, file: !152, line: 682, baseType: !830, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2290, file: !152, line: 683, baseType: !830, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2290, file: !152, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2290, file: !152, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2290, file: !152, line: 690, baseType: !400, size: 512, offset: 640)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2290, file: !152, line: 691, baseType: !333, size: 64, offset: 1152)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2290, file: !152, line: 692, baseType: !963, size: 256, offset: 1216)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2290, file: !152, line: 693, baseType: !74, size: 192, offset: 1472)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2290, file: !152, line: 694, baseType: !2317, size: 64, offset: 1664)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2290, file: !152, line: 695, baseType: !69, size: 32, offset: 1728)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2290, file: !152, line: 696, baseType: !69, size: 32, offset: 1760)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2290, file: !152, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2290, file: !152, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2290, file: !152, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2290, file: !152, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2290, file: !152, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2290, file: !152, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2290, file: !152, line: 703, baseType: !830, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2290, file: !152, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2290, file: !152, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2290, file: !152, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2290, file: !152, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2290, file: !152, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2290, file: !152, line: 709, baseType: !7, size: 32, offset: 1824)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2290, file: !152, line: 710, baseType: !151, size: 32, offset: 1856)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2290, file: !152, line: 711, baseType: !159, size: 32, offset: 1888)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2290, file: !152, line: 712, baseType: !159, size: 32, offset: 1920)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2290, file: !152, line: 713, baseType: !42, size: 32, offset: 1952)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2290, file: !152, line: 714, baseType: !42, size: 32, offset: 1984)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2290, file: !152, line: 715, baseType: !333, size: 64, offset: 2048)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2290, file: !152, line: 716, baseType: !333, size: 64, offset: 2112)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2290, file: !152, line: 717, baseType: !333, size: 64, offset: 2176)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2290, file: !152, line: 718, baseType: !333, size: 64, offset: 2240)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2290, file: !152, line: 720, baseType: !2380, size: 64, offset: 2304)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !152, line: 632, size: 64, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2381, file: !152, line: 633, baseType: !79, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2381, file: !152, line: 634, baseType: !7, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2290, file: !152, line: 721, baseType: !2386, size: 64, offset: 2368)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{null, !2150, !763}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2290, file: !152, line: 722, baseType: !2390, size: 64, offset: 2432)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !152, line: 722, flags: DIFlagFwdDecl)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !2146, file: !140, line: 727, baseType: !2393, size: 64, offset: 4224)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !152, line: 742, size: 1792, elements: !2395)
!2395 = !{!2396, !2397, !2398, !2402, !2403, !2404}
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2394, file: !152, line: 743, baseType: !2180, size: 1472)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2394, file: !152, line: 744, baseType: !2183, size: 64, offset: 1472)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2394, file: !152, line: 745, baseType: !2399, size: 64, offset: 1536)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !2150, !830}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2394, file: !152, line: 746, baseType: !2183, size: 64, offset: 1600)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2394, file: !152, line: 747, baseType: !2174, size: 64, offset: 1664)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2394, file: !152, line: 748, baseType: !2174, size: 64, offset: 1728)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !2146, file: !140, line: 736, baseType: !2406, size: 128, offset: 4288)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !140, line: 529, size: 128, elements: !2407)
!2407 = !{!2408, !2412}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2406, file: !140, line: 531, baseType: !2409, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2411, line: 13, flags: DIFlagFwdDecl)
!2411 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2406, file: !140, line: 532, baseType: !2413, size: 64, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !140, line: 49, flags: DIFlagFwdDecl)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !2146, file: !140, line: 738, baseType: !2416, size: 64, offset: 4416)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !140, line: 738, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2146, file: !140, line: 740, baseType: !2420, size: 64, offset: 4480)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !2146, file: !140, line: 741, baseType: !333, size: 64, offset: 4544)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !2146, file: !140, line: 746, baseType: !333, size: 64, offset: 4608)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !2146, file: !140, line: 747, baseType: !2424, size: 64, offset: 4672)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2426)
!2426 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !140, line: 747, flags: DIFlagFwdDecl)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2146, file: !140, line: 749, baseType: !2428, size: 64, offset: 4736)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !140, line: 428, size: 128, elements: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2429, file: !140, line: 433, baseType: !7, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2429, file: !140, line: 434, baseType: !7, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2429, file: !140, line: 435, baseType: !59, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !2146, file: !140, line: 751, baseType: !117, size: 128, offset: 4800)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !2146, file: !140, line: 762, baseType: !2436, size: 64, offset: 4928)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !140, line: 762, flags: DIFlagFwdDecl)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2146, file: !140, line: 770, baseType: !2439, offset: 4992)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2440, line: 5, elements: !603)
!2440 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2146, file: !140, line: 772, baseType: !2442, size: 64, offset: 4992)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2444, line: 18, flags: DIFlagFwdDecl)
!2444 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2146, file: !140, line: 773, baseType: !2446, size: 64, offset: 5056)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2212, line: 22, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !2146, file: !140, line: 776, baseType: !42, size: 32, offset: 5120)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !2146, file: !140, line: 778, baseType: !1206, size: 32, offset: 5152)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2146, file: !140, line: 779, baseType: !269, size: 32, offset: 5184)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !2146, file: !140, line: 781, baseType: !79, size: 32, offset: 5216)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !2146, file: !140, line: 782, baseType: !117, size: 128, offset: 5248)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2146, file: !140, line: 784, baseType: !2454, size: 64, offset: 5376)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2456)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2457, line: 52, size: 768, elements: !2458)
!2457 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2458 = !{!2459, !2460, !2461, !2462, !2463, !2467, !2471, !2472, !2473, !2500, !2504, !2508}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2456, file: !2457, line: 53, baseType: !36, size: 64)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2456, file: !2457, line: 55, baseType: !1466, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2456, file: !2457, line: 56, baseType: !1466, size: 64, offset: 128)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2456, file: !2457, line: 58, baseType: !2163, size: 64, offset: 192)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2456, file: !2457, line: 59, baseType: !2464, size: 64, offset: 256)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!841, !2166, !2172}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2456, file: !2457, line: 61, baseType: !2468, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2454}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2456, file: !2457, line: 62, baseType: !2174, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2456, file: !2457, line: 64, baseType: !2183, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2456, file: !2457, line: 66, baseType: !2474, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2476)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !167, line: 39, size: 384, elements: !2477)
!2477 = !{!2478, !2479, !2483, !2487, !2495, !2499}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2476, file: !167, line: 40, baseType: !166, size: 32)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2476, file: !167, line: 41, baseType: !2480, size: 64, offset: 64)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!830}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2476, file: !167, line: 42, baseType: !2484, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!40}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2476, file: !167, line: 43, baseType: !2488, size: 64, offset: 192)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{!2491, !2493}
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !167, line: 19, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2476, file: !167, line: 44, baseType: !2496, size: 64, offset: 256)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!2491}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2476, file: !167, line: 45, baseType: !1163, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2456, file: !2457, line: 67, baseType: !2501, size: 64, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DISubroutineType(types: !2503)
!2503 = !{!2491, !2166}
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2456, file: !2457, line: 69, baseType: !2505, size: 64, offset: 640)
!2505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{null, !2166, !1027, !1028}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2456, file: !2457, line: 71, baseType: !2178, size: 64, offset: 704)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2146, file: !140, line: 785, baseType: !1466, size: 64, offset: 5440)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2146, file: !140, line: 787, baseType: !2174, size: 64, offset: 5504)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !2146, file: !140, line: 788, baseType: !2512, size: 64, offset: 5568)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !140, line: 46, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !2146, file: !140, line: 789, baseType: !2515, size: 64, offset: 5632)
!2515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2516 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !140, line: 48, flags: DIFlagFwdDecl)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !2146, file: !140, line: 791, baseType: !2518, size: 64, offset: 5696)
!2518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2519, size: 64)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !140, line: 597, size: 128, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2524, !2525}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2519, file: !140, line: 598, baseType: !172, size: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2519, file: !140, line: 599, baseType: !181, size: 32, offset: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2519, file: !140, line: 600, baseType: !186, size: 32, offset: 64)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2519, file: !140, line: 601, baseType: !830, size: 8, offset: 96)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2519, file: !140, line: 602, baseType: !830, size: 8, offset: 104)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2146, file: !140, line: 793, baseType: !191, size: 32, offset: 5760)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !2146, file: !140, line: 795, baseType: !830, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2146, file: !140, line: 796, baseType: !830, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2146, file: !140, line: 797, baseType: !830, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !2146, file: !140, line: 798, baseType: !830, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !2146, file: !140, line: 799, baseType: !830, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "swap_file", scope: !2064, file: !2065, line: 302, baseType: !610, size: 64, offset: 1344)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "old_block_size", scope: !2064, file: !2065, line: 303, baseType: !7, size: 32, offset: 1408)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !2064, file: !2065, line: 304, baseType: !1002, size: 256, offset: 1472)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2064, file: !2065, line: 305, baseType: !79, size: 32, offset: 1728)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cont_lock", scope: !2064, file: !2065, line: 318, baseType: !79, size: 32, offset: 1760)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "discard_work", scope: !2064, file: !2065, line: 322, baseType: !963, size: 256, offset: 1792)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "discard_clusters", scope: !2064, file: !2065, line: 323, baseType: !2084, size: 128, offset: 2048)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "avail_lists", scope: !2064, file: !2065, line: 324, baseType: !2540, offset: 2176)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, elements: !708)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1504, file: !19, line: 444, baseType: !2543, size: 64, offset: 1152)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !610}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1504, file: !19, line: 445, baseType: !2547, size: 64, offset: 1216)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!42, !1943, !1981}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1491, file: !19, line: 486, baseType: !59, size: 64, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1491, file: !19, line: 487, baseType: !771, size: 320, offset: 960)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1491, file: !19, line: 488, baseType: !2553, size: 32, offset: 1280)
!2553 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2554, line: 8, baseType: !269)
!2554 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1491, file: !19, line: 489, baseType: !79, size: 32, offset: 1312)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1491, file: !19, line: 490, baseType: !117, size: 128, offset: 1344)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1491, file: !19, line: 491, baseType: !40, size: 64, offset: 1472)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1481, file: !1450, line: 180, baseType: !2559, size: 64, offset: 320)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2560, size: 64)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!1284, !610, !1392, !1480, !841, !61, !55}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1481, file: !1450, line: 182, baseType: !2559, size: 64, offset: 384)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1481, file: !1450, line: 184, baseType: !2564, size: 64, offset: 448)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!42, !610, !1392, !1480, !1620}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1469, file: !1450, line: 90, baseType: !2568, size: 64, offset: 192)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1469, file: !1450, line: 91, baseType: !2570, size: 64, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1440, file: !1387, line: 120, baseType: !2572, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!2474, !1410}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1440, file: !1387, line: 121, baseType: !2576, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!2491, !1410}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1440, file: !1387, line: 122, baseType: !2580, size: 64, offset: 320)
!2580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2581, size: 64)
!2581 = !DISubroutineType(types: !2582)
!2582 = !{null, !1410, !1027, !1028}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1386, file: !1387, line: 70, baseType: !2584, size: 64, offset: 384)
!2584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !2586, line: 190, size: 1152, elements: !2587)
!2586 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!2587 = !{!2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2709, !2710, !2711, !2712, !2713, !2716}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2585, file: !2586, line: 191, baseType: !69, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2585, file: !2586, line: 192, baseType: !69, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2585, file: !2586, line: 202, baseType: !2584, size: 64, offset: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2585, file: !2586, line: 203, baseType: !36, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2585, file: !2586, line: 205, baseType: !325, size: 192, align: 64, offset: 192)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !2585, file: !2586, line: 207, baseType: !2491, size: 64, offset: 384)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2585, file: !2586, line: 208, baseType: !7, size: 32, offset: 448)
!2595 = !DIDerivedType(tag: DW_TAG_member, scope: !2585, file: !2586, line: 209, baseType: !2596, size: 256, offset: 512)
!2596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2585, file: !2586, line: 209, size: 256, elements: !2597)
!2597 = !{!2598, !2607, !2611}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2596, file: !2586, line: 210, baseType: !2599, size: 256)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !2586, line: 153, size: 256, elements: !2600)
!2600 = !{!2601, !2602, !2603, !2606}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !2599, file: !2586, line: 154, baseType: !59, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2599, file: !2586, line: 156, baseType: !468, size: 64, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2599, file: !2586, line: 162, baseType: !2604, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2605, size: 64)
!2605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !2586, line: 162, flags: DIFlagFwdDecl)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !2599, file: !2586, line: 167, baseType: !59, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !2596, file: !2586, line: 211, baseType: !2608, size: 64)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !2586, line: 170, size: 64, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !2608, file: !2586, line: 171, baseType: !2584, size: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2596, file: !2586, line: 212, baseType: !2612, size: 256)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !2586, line: 174, size: 256, elements: !2613)
!2613 = !{!2614, !2704, !2707, !2708}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2612, file: !2586, line: 175, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2617)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !2586, line: 271, size: 768, elements: !2618)
!2618 = !{!2619, !2677, !2681, !2682, !2683, !2684, !2685, !2689, !2690, !2691, !2692, !2700}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2617, file: !2586, line: 276, baseType: !2620, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{!42, !2623}
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !2586, line: 251, size: 1216, elements: !2625)
!2625 = !{!2626, !2627, !2628, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !2624, file: !2586, line: 253, baseType: !2584, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2624, file: !2586, line: 254, baseType: !610, size: 64, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !2624, file: !2586, line: 255, baseType: !2629, size: 64, offset: 128)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2631, line: 17, size: 960, elements: !2632)
!2631 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2662, !2663, !2666}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2630, file: !2631, line: 18, baseType: !841, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2630, file: !2631, line: 19, baseType: !55, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2630, file: !2631, line: 20, baseType: !55, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2630, file: !2631, line: 21, baseType: !55, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2630, file: !2631, line: 22, baseType: !55, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2630, file: !2631, line: 23, baseType: !61, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2630, file: !2631, line: 24, baseType: !61, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2630, file: !2631, line: 25, baseType: !638, size: 256, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2630, file: !2631, line: 26, baseType: !2642, size: 64, offset: 704)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2644)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2631, line: 32, size: 256, elements: !2645)
!2645 = !{!2646, !2650, !2654, !2658}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2644, file: !2631, line: 33, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2648 = !DISubroutineType(types: !2649)
!2649 = !{!40, !2629, !60}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2644, file: !2631, line: 34, baseType: !2651, size: 64, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DISubroutineType(types: !2653)
!2653 = !{null, !2629, !40}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2644, file: !2631, line: 35, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!40, !2629, !40, !60}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2644, file: !2631, line: 36, baseType: !2659, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2660 = !DISubroutineType(types: !2661)
!2661 = !{!42, !2629, !40}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2630, file: !2631, line: 27, baseType: !42, size: 32, offset: 768)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2630, file: !2631, line: 28, baseType: !2664, size: 64, offset: 832)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2630, file: !2631, line: 29, baseType: !40, size: 64, offset: 896)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2624, file: !2586, line: 256, baseType: !40, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2624, file: !2586, line: 259, baseType: !638, size: 256, offset: 256)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !2624, file: !2586, line: 260, baseType: !638, size: 256, offset: 512)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2624, file: !2586, line: 261, baseType: !42, size: 32, offset: 768)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2624, file: !2586, line: 262, baseType: !117, size: 128, offset: 832)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !2624, file: !2586, line: 263, baseType: !841, size: 64, offset: 960)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2624, file: !2586, line: 265, baseType: !55, size: 64, offset: 1024)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !2624, file: !2586, line: 266, baseType: !830, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !2624, file: !2586, line: 267, baseType: !830, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2624, file: !2586, line: 268, baseType: !1665, size: 64, offset: 1152)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2617, file: !2586, line: 277, baseType: !2678, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2623}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !2617, file: !2586, line: 290, baseType: !2659, size: 64, offset: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !2617, file: !2586, line: 292, baseType: !2647, size: 64, offset: 192)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !2617, file: !2586, line: 293, baseType: !2655, size: 64, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !2617, file: !2586, line: 294, baseType: !2651, size: 64, offset: 320)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2617, file: !2586, line: 296, baseType: !2686, size: 64, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!1284, !2623, !841, !55, !61}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !2617, file: !2586, line: 306, baseType: !55, size: 64, offset: 448)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !2617, file: !2586, line: 313, baseType: !830, size: 8, offset: 512)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2617, file: !2586, line: 314, baseType: !2686, size: 64, offset: 576)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2617, file: !2586, line: 317, baseType: !2693, size: 64, offset: 640)
!2693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2694 = !DISubroutineType(types: !2695)
!2695 = !{!2696, !2623, !2698}
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2697, line: 59, baseType: !7)
!2697 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2699, size: 64)
!2699 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !19, line: 61, flags: DIFlagFwdDecl)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2617, file: !2586, line: 320, baseType: !2701, size: 64, offset: 704)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!42, !2623, !1620}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2612, file: !2586, line: 176, baseType: !2705, size: 64, offset: 64)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !2586, line: 35, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2612, file: !2586, line: 177, baseType: !61, size: 64, offset: 128)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !2612, file: !2586, line: 178, baseType: !2584, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2585, file: !2586, line: 215, baseType: !40, size: 64, offset: 768)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2585, file: !2586, line: 221, baseType: !333, size: 64, offset: 832)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2585, file: !2586, line: 223, baseType: !46, size: 16, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2585, file: !2586, line: 224, baseType: !44, size: 16, offset: 912)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !2585, file: !2586, line: 225, baseType: !2714, size: 64, offset: 960)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !2586, line: 36, flags: DIFlagFwdDecl)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2585, file: !2586, line: 227, baseType: !618, size: 128, align: 64, offset: 1024)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1386, file: !1387, line: 71, baseType: !2718, size: 32, offset: 448)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2719, line: 19, size: 32, elements: !2720)
!2719 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2720 = !{!2721}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2718, file: !2719, line: 20, baseType: !281, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1386, file: !1387, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1386, file: !1387, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1386, file: !1387, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1386, file: !1387, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1386, file: !1387, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1383, file: !6, line: 47, baseType: !1373, size: 64, offset: 512)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1383, file: !6, line: 48, baseType: !1392, size: 64, offset: 576)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1383, file: !6, line: 49, baseType: !2730, size: 64, offset: 640)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1383, file: !6, line: 50, baseType: !1001, size: 64, offset: 704)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1374, file: !6, line: 418, baseType: !2734, size: 64, offset: 1408)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !2736)
!2736 = !{!2737, !2738, !2743, !2747, !2751, !2755}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2735, file: !6, line: 54, baseType: !1457, size: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2735, file: !6, line: 55, baseType: !2739, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{!1284, !2734, !2742, !841}
!2742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2735, file: !6, line: 57, baseType: !2744, size: 64, offset: 192)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{!1284, !2734, !2742, !36, !55}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2735, file: !6, line: 59, baseType: !2748, size: 64, offset: 256)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{null, !1373, !36}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !2735, file: !6, line: 60, baseType: !2752, size: 64, offset: 320)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!42, !1373}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2735, file: !6, line: 61, baseType: !2756, size: 64, offset: 384)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !1373}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1374, file: !6, line: 419, baseType: !36, size: 64, offset: 1472)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1374, file: !6, line: 420, baseType: !36, size: 64, offset: 1536)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1374, file: !6, line: 421, baseType: !1392, size: 64, offset: 1600)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1374, file: !6, line: 424, baseType: !2763, size: 64, offset: 1664)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2765)
!2765 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1374, file: !6, line: 425, baseType: !2767, size: 64, offset: 1728)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !763)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1374, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1374, file: !6, line: 435, baseType: !638, size: 256, offset: 1856)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1374, file: !6, line: 437, baseType: !2772, size: 64, offset: 2112)
!2772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2773, size: 64)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2774, line: 69, size: 320, elements: !2775)
!2774 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!2775 = !{!2776, !2777, !2778, !2795, !2797, !2800, !2801}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2773, file: !2774, line: 70, baseType: !36, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2773, file: !2774, line: 71, baseType: !1373, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2773, file: !2774, line: 72, baseType: !2779, size: 64, offset: 128)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2781)
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2774, line: 47, size: 256, elements: !2782)
!2782 = !{!2783, !2784, !2790, !2794}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2781, file: !2774, line: 49, baseType: !7, size: 32)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2781, file: !2774, line: 51, baseType: !2785, size: 64, offset: 64)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!42, !36, !2788}
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2773)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2781, file: !2774, line: 53, baseType: !2791, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2792, size: 64)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!42, !841, !2788}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2781, file: !2774, line: 55, baseType: !1163, size: 64, offset: 192)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2773, file: !2774, line: 73, baseType: !2796, size: 16, offset: 192)
!2796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2773, file: !2774, line: 74, baseType: !2798, size: 8, offset: 208)
!2798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !104, line: 16, baseType: !2799)
!2799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !106, line: 20, baseType: !2072)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2773, file: !2774, line: 75, baseType: !103, size: 8, offset: 216)
!2801 = !DIDerivedType(tag: DW_TAG_member, scope: !2773, file: !2774, line: 76, baseType: !2802, size: 64, offset: 256)
!2802 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2773, file: !2774, line: 76, size: 64, elements: !2803)
!2803 = !{!2804, !2805, !2812}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2802, file: !2774, line: 77, baseType: !40, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2802, file: !2774, line: 78, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2807, size: 64)
!2807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2808)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2774, line: 86, size: 128, elements: !2809)
!2809 = !{!2810, !2811}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2808, file: !2774, line: 87, baseType: !7, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2808, file: !2774, line: 88, baseType: !841, size: 64, offset: 64)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2802, file: !2774, line: 79, baseType: !2813, size: 64)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2814, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2774, line: 92, size: 256, elements: !2816)
!2816 = !{!2817, !2818, !2819, !2820, !2821}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2815, file: !2774, line: 94, baseType: !7, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2815, file: !2774, line: 95, baseType: !7, size: 32, offset: 32)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2815, file: !2774, line: 96, baseType: !2095, size: 64, offset: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2815, file: !2774, line: 97, baseType: !2779, size: 64, offset: 128)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2815, file: !2774, line: 98, baseType: !40, size: 64, offset: 192)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1374, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1374, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1374, file: !6, line: 442, baseType: !2763, size: 64, offset: 2240)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1374, file: !6, line: 443, baseType: !2767, size: 64, offset: 2304)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1374, file: !6, line: 444, baseType: !830, size: 8, offset: 2368)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1374, file: !6, line: 451, baseType: !830, size: 8, offset: 2376)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1374, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1374, file: !6, line: 455, baseType: !2830, size: 64, offset: 2432)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2831, size: 64)
!2831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2832, line: 23, size: 96, elements: !2833)
!2832 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2833 = !{!2834, !2835, !2836}
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2831, file: !2832, line: 24, baseType: !42, size: 32)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2831, file: !2832, line: 24, baseType: !42, size: 32, offset: 32)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2831, file: !2832, line: 24, baseType: !42, size: 32, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1374, file: !6, line: 458, baseType: !2838, size: 64, offset: 2496)
!2838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2839, size: 64)
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!42}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1374, file: !6, line: 460, baseType: !2842, size: 4032, align: 512, offset: 2560)
!2842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2843, size: 4032, elements: !2859)
!2843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !2844)
!2844 = !{!2845, !2846, !2847}
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2843, file: !6, line: 363, baseType: !40, size: 64)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2843, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2843, file: !6, line: 367, baseType: !2848, size: 448, offset: 128)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !2849)
!2849 = !{!2850, !2851}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2848, file: !6, line: 320, baseType: !1373, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2848, file: !6, line: 321, baseType: !2852, size: 384, offset: 64)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2853, line: 40, size: 384, elements: !2854)
!2853 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2854 = !{!2855}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2852, file: !2853, line: 41, baseType: !2856, size: 384, align: 64)
!2856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, size: 384, align: 64, elements: !2857)
!2857 = !{!2858}
!2858 = !DISubrange(count: 2)
!2859 = !{!2860}
!2860 = !DISubrange(count: 7)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1374, file: !6, line: 463, baseType: !2862, size: 192, offset: 6592)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2863, line: 8, size: 192, elements: !2864)
!2863 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2864 = !{!2865, !2866, !2867}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2862, file: !2863, line: 10, baseType: !7, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2862, file: !2863, line: 11, baseType: !259, size: 64, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2862, file: !2863, line: 12, baseType: !2868, size: 64, offset: 128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2870, line: 59, size: 48, elements: !2871)
!2870 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2871 = !{!2872, !2875, !2876, !2877, !2878, !2879}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2869, file: !2870, line: 60, baseType: !2873, size: 16)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !104, line: 18, baseType: !2874)
!2874 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !106, line: 23, baseType: !799)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2869, file: !2870, line: 61, baseType: !2873, size: 16, offset: 16)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2869, file: !2870, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2869, file: !2870, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2869, file: !2870, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2869, file: !2870, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1374, file: !6, line: 465, baseType: !59, size: 64, offset: 6784)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1374, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1374, file: !6, line: 470, baseType: !117, size: 128, offset: 6912)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1374, file: !6, line: 471, baseType: !2884, size: 64, offset: 7040)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2886, line: 33, size: 96, elements: !2887)
!2886 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2887 = !{!2888, !2889, !2890, !2891}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2885, file: !2886, line: 37, baseType: !42, size: 32)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2885, file: !2886, line: 43, baseType: !42, size: 32, offset: 32)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2885, file: !2886, line: 45, baseType: !46, size: 16, offset: 64)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2885, file: !2886, line: 47, baseType: !46, size: 16, offset: 80)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1374, file: !6, line: 476, baseType: !2893, size: 64, offset: 7104)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !2895)
!2895 = !{!2896, !2912, !2913, !2914}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2894, file: !6, line: 379, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2899, line: 204, baseType: !2900)
!2899 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2899, line: 197, size: 192, elements: !2901)
!2901 = !{!2902, !2904, !2905, !2906, !2908, !2910}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2900, file: !2899, line: 198, baseType: !2903, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2899, line: 21, baseType: !270)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2900, file: !2899, line: 199, baseType: !107, size: 8, offset: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2900, file: !2899, line: 200, baseType: !107, size: 8, offset: 40)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2900, file: !2899, line: 201, baseType: !2907, size: 16, offset: 48)
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2899, line: 17, baseType: !114)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2900, file: !2899, line: 202, baseType: !2909, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2899, line: 16, baseType: !334)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2900, file: !2899, line: 203, baseType: !2911, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2899, line: 22, baseType: !334)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2894, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2894, file: !6, line: 381, baseType: !841, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2894, file: !6, line: 382, baseType: !841, size: 64, offset: 192)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1374, file: !6, line: 477, baseType: !2894, size: 256, offset: 7168)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1374, file: !6, line: 480, baseType: !2917, size: 64, offset: 7424)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1374, file: !6, line: 483, baseType: !2920, size: 64, offset: 7488)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1374, file: !6, line: 488, baseType: !841, size: 64, offset: 7552)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1374, file: !6, line: 492, baseType: !40, size: 64, offset: 7616)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1374, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1374, file: !6, line: 495, baseType: !40, size: 64, offset: 7744)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1374, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1374, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1374, file: !6, line: 500, baseType: !2929, size: 64, offset: 7872)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2931, line: 45, baseType: !2932)
!2931 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1374, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1374, file: !6, line: 504, baseType: !2935, size: 64, offset: 8000)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2938, line: 96, size: 192, elements: !2939)
!2938 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2939 = !{!2940, !2941, !2983, !2986}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2937, file: !2938, line: 97, baseType: !7, size: 32)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2937, file: !2938, line: 98, baseType: !2942, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2938, line: 24, size: 3072, elements: !2944)
!2944 = !{!2945, !2947, !2948, !2949, !2950, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2980, !2981, !2982}
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2943, file: !2938, line: 26, baseType: !2946, size: 128)
!2946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !631, size: 128, elements: !2857)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2943, file: !2938, line: 27, baseType: !2946, size: 128, offset: 128)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2943, file: !2938, line: 28, baseType: !42, size: 32, offset: 256)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2943, file: !2938, line: 31, baseType: !79, size: 32, align: 512, offset: 512)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2943, file: !2938, line: 32, baseType: !2951, size: 960, offset: 576)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2952, line: 206, size: 960, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2953 = !{!2954, !2955, !2958, !2960, !2961, !2962}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2951, file: !2952, line: 207, baseType: !621, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2951, file: !2952, line: 208, baseType: !2956, size: 256, offset: 64)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2957, size: 256, elements: !695)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2951, file: !2952, line: 209, baseType: !2959, size: 256, offset: 320)
!2959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 256, elements: !695)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2951, file: !2952, line: 213, baseType: !1061, size: 64, offset: 576)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2951, file: !2952, line: 215, baseType: !1063, size: 256, offset: 640)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2951, file: !2952, line: 216, baseType: !103, size: 8, offset: 896)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2943, file: !2938, line: 33, baseType: !59, size: 64, offset: 1536)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2943, file: !2938, line: 34, baseType: !59, size: 64, offset: 1600)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2943, file: !2938, line: 35, baseType: !830, size: 8, offset: 1664)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2943, file: !2938, line: 36, baseType: !2320, size: 320, offset: 1728)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2943, file: !2938, line: 37, baseType: !963, size: 256, offset: 2048)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2943, file: !2938, line: 38, baseType: !618, size: 128, align: 64, offset: 2304)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2943, file: !2938, line: 39, baseType: !2970, size: 64, offset: 2432)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2938, line: 49, size: 768, elements: !2972)
!2972 = !{!2973, !2974, !2975, !2976, !2977, !2978, !2979}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2971, file: !2938, line: 50, baseType: !79, size: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2971, file: !2938, line: 51, baseType: !2959, size: 256, offset: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2971, file: !2938, line: 53, baseType: !2959, size: 256, offset: 320)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2971, file: !2938, line: 54, baseType: !59, size: 64, offset: 576)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2971, file: !2938, line: 55, baseType: !2970, size: 64, offset: 640)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2971, file: !2938, line: 56, baseType: !42, size: 32, offset: 704)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2971, file: !2938, line: 57, baseType: !42, size: 32, offset: 736)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2943, file: !2938, line: 40, baseType: !59, size: 64, offset: 2496)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2943, file: !2938, line: 42, baseType: !42, size: 32, offset: 2560)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2943, file: !2938, line: 43, baseType: !2936, size: 64, offset: 2624)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2937, file: !2938, line: 99, baseType: !2984, offset: 128)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2985, line: 211, elements: !603)
!2985 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2937, file: !2938, line: 100, baseType: !2987, size: 64, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2938, line: 63, size: 3008, elements: !2989)
!2989 = !{!2990, !2991, !2993, !2994, !2995, !2996, !2997, !2998, !2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3021}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2988, file: !2938, line: 64, baseType: !2970, size: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2988, file: !2938, line: 65, baseType: !2992, size: 192, offset: 64)
!2992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2970, size: 192, elements: !674)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2988, file: !2938, line: 67, baseType: !42, size: 32, offset: 256)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2988, file: !2938, line: 68, baseType: !638, size: 256, offset: 320)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2988, file: !2938, line: 69, baseType: !79, size: 32, offset: 576)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2988, file: !2938, line: 70, baseType: !638, size: 256, offset: 640)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2988, file: !2938, line: 71, baseType: !59, size: 64, offset: 896)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2988, file: !2938, line: 72, baseType: !59, size: 64, offset: 960)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2988, file: !2938, line: 73, baseType: !59, size: 64, offset: 1024)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2988, file: !2938, line: 74, baseType: !59, size: 64, offset: 1088)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2988, file: !2938, line: 75, baseType: !59, size: 64, offset: 1152)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2988, file: !2938, line: 76, baseType: !59, size: 64, offset: 1216)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2988, file: !2938, line: 77, baseType: !59, size: 64, offset: 1280)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2988, file: !2938, line: 78, baseType: !59, size: 64, offset: 1344)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2988, file: !2938, line: 79, baseType: !830, size: 8, offset: 1408)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2988, file: !2938, line: 80, baseType: !59, size: 64, offset: 1472)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2988, file: !2938, line: 81, baseType: !638, size: 256, offset: 1536)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2988, file: !2938, line: 82, baseType: !1002, size: 256, offset: 1792)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2988, file: !2938, line: 84, baseType: !69, size: 32, offset: 2048)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2988, file: !2938, line: 87, baseType: !59, size: 64, offset: 2112)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2988, file: !2938, line: 88, baseType: !59, size: 64, offset: 2176)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2988, file: !2938, line: 89, baseType: !3013, size: 704, offset: 2240)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !964, line: 111, size: 704, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3020}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3013, file: !964, line: 112, baseType: !963, size: 256)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3013, file: !964, line: 113, baseType: !2320, size: 320, offset: 256)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3013, file: !964, line: 116, baseType: !3018, size: 64, offset: 576)
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !964, line: 18, flags: DIFlagFwdDecl)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3013, file: !964, line: 117, baseType: !42, size: 32, offset: 640)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2988, file: !2938, line: 90, baseType: !2936, size: 64, offset: 2944)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1374, file: !6, line: 515, baseType: !3023, size: 64, offset: 8064)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3025, line: 117, size: 128, elements: !3026)
!3025 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3026 = !{!3027, !3028, !3029}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3024, file: !3025, line: 118, baseType: !763, size: 32)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3024, file: !3025, line: 119, baseType: !763, size: 32, offset: 32)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3024, file: !3025, line: 120, baseType: !1061, size: 64, offset: 64)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1374, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1374, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1374, file: !6, line: 520, baseType: !3033, size: 64, offset: 8192)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1374, file: !6, line: 523, baseType: !3035, size: 64, offset: 8256)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1374, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1374, file: !6, line: 525, baseType: !3040, size: 64, offset: 8384)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1374, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1374, file: !6, line: 533, baseType: !40, size: 64, offset: 8512)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1374, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1374, file: !6, line: 535, baseType: !3047, size: 64, offset: 8640)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1374, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1374, file: !6, line: 539, baseType: !42, size: 32, offset: 8736)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1374, file: !6, line: 540, baseType: !3051, size: 64, offset: 8768)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3053, line: 32, size: 64, elements: !3054)
!3053 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3054 = !{!3055, !3056}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3052, file: !3053, line: 33, baseType: !763, size: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3052, file: !3053, line: 34, baseType: !763, size: 32, offset: 32)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1374, file: !6, line: 563, baseType: !117, size: 128, offset: 8832)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1374, file: !6, line: 565, baseType: !117, size: 128, offset: 8960)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1374, file: !6, line: 568, baseType: !3060, size: 64, offset: 9088)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{null}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1374, file: !6, line: 570, baseType: !69, size: 32, offset: 9152)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1350, file: !19, line: 2382, baseType: !1349, size: 64, offset: 448)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1350, file: !19, line: 2383, baseType: !686, size: 64, offset: 512)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1350, file: !19, line: 2385, baseType: !3067, offset: 576)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2985, line: 206, elements: !603)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1350, file: !19, line: 2386, baseType: !3067, offset: 576)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1350, file: !19, line: 2387, baseType: !3067, offset: 576)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1350, file: !19, line: 2388, baseType: !3071, offset: 576)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3067, elements: !674)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1350, file: !19, line: 2390, baseType: !3067, offset: 576)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1350, file: !19, line: 2391, baseType: !3067, offset: 576)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1350, file: !19, line: 2392, baseType: !3067, offset: 576)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1350, file: !19, line: 2393, baseType: !3067, offset: 576)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1341, file: !19, line: 1197, baseType: !3077, size: 64, offset: 384)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3079)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !19, line: 2057, size: 1664, elements: !3080)
!3080 = !{!3081, !3085, !3089, !3090, !3094, !3098, !3102, !3103, !3104, !3108, !3112, !3116, !3117, !3118, !3124, !3128, !3129, !3133, !3134, !3135, !3136, !3140, !3144, !3191, !3206, !3207}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !3079, file: !19, line: 2058, baseType: !3082, size: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DISubroutineType(types: !3084)
!3084 = !{!1132, !1340}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !3079, file: !19, line: 2059, baseType: !3086, size: 64, offset: 64)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !1132}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3079, file: !19, line: 2060, baseType: !3086, size: 64, offset: 128)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !3079, file: !19, line: 2062, baseType: !3091, size: 64, offset: 192)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = !DISubroutineType(types: !3093)
!3093 = !{null, !1132, !42}
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !3079, file: !19, line: 2063, baseType: !3095, size: 64, offset: 256)
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3096, size: 64)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{!42, !1132, !1797}
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !3079, file: !19, line: 2064, baseType: !3099, size: 64, offset: 320)
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3100, size: 64)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{!42, !1132}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !3079, file: !19, line: 2065, baseType: !3086, size: 64, offset: 384)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !3079, file: !19, line: 2066, baseType: !1369, size: 64, offset: 448)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !3079, file: !19, line: 2067, baseType: !3105, size: 64, offset: 512)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!42, !1340, !42}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !3079, file: !19, line: 2068, baseType: !3109, size: 64, offset: 576)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!42, !1340, !18}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !3079, file: !19, line: 2069, baseType: !3113, size: 64, offset: 640)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!42, !1340}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !3079, file: !19, line: 2070, baseType: !3109, size: 64, offset: 704)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !3079, file: !19, line: 2071, baseType: !3113, size: 64, offset: 768)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !3079, file: !19, line: 2072, baseType: !3119, size: 64, offset: 832)
!3119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3120, size: 64)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!42, !1097, !3122}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3123, size: 64)
!3123 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !19, line: 62, flags: DIFlagFwdDecl)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !3079, file: !19, line: 2073, baseType: !3125, size: 64, offset: 896)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!42, !1340, !259, !841}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !3079, file: !19, line: 2074, baseType: !1369, size: 64, offset: 960)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !3079, file: !19, line: 2076, baseType: !3130, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!42, !2629, !1097}
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !3079, file: !19, line: 2077, baseType: !3130, size: 64, offset: 1088)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !3079, file: !19, line: 2078, baseType: !3130, size: 64, offset: 1152)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !3079, file: !19, line: 2079, baseType: !3130, size: 64, offset: 1216)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !3079, file: !19, line: 2081, baseType: !3137, size: 64, offset: 1280)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!1284, !1340, !42, !841, !55, !61}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !3079, file: !19, line: 2082, baseType: !3141, size: 64, offset: 1344)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DISubroutineType(types: !3143)
!3143 = !{!1284, !1340, !42, !36, !55, !61}
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !3079, file: !19, line: 2083, baseType: !3145, size: 64, offset: 1408)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!3148, !1132}
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3150, size: 64)
!3150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !128, line: 296, size: 1664, elements: !3151)
!3151 = !{!3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3176, !3177, !3178}
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3150, file: !128, line: 297, baseType: !690, size: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3150, file: !128, line: 298, baseType: !117, size: 128, offset: 128)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3150, file: !128, line: 299, baseType: !117, size: 128, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3150, file: !128, line: 300, baseType: !117, size: 128, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3150, file: !128, line: 301, baseType: !638, size: 256, offset: 512)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3150, file: !128, line: 302, baseType: !79, size: 32, offset: 768)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3150, file: !128, line: 303, baseType: !69, size: 32, offset: 800)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3150, file: !128, line: 304, baseType: !1340, size: 64, offset: 832)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3150, file: !128, line: 305, baseType: !3161, size: 64, offset: 896)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !128, line: 68, size: 64, elements: !3162)
!3162 = !{!3163, !3175}
!3163 = !DIDerivedType(tag: DW_TAG_member, scope: !3161, file: !128, line: 69, baseType: !3164, size: 32)
!3164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3161, file: !128, line: 69, size: 32, elements: !3165)
!3165 = !{!3166, !3167, !3168}
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3164, file: !128, line: 70, baseType: !712, size: 32)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3164, file: !128, line: 71, baseType: !730, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3164, file: !128, line: 72, baseType: !3169, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3170, line: 24, baseType: !3171)
!3170 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3170, line: 22, size: 32, elements: !3172)
!3172 = !{!3173}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3171, file: !3170, line: 23, baseType: !3174, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3170, line: 20, baseType: !718)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3161, file: !128, line: 74, baseType: !127, size: 32, offset: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3150, file: !128, line: 306, baseType: !61, size: 64, offset: 960)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3150, file: !128, line: 307, baseType: !59, size: 64, offset: 1024)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3150, file: !128, line: 308, baseType: !3179, size: 576, offset: 1088)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !128, line: 205, size: 576, elements: !3180)
!3180 = !{!3181, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3179, file: !128, line: 206, baseType: !3182, size: 64)
!3182 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !128, line: 66, baseType: !63)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3179, file: !128, line: 207, baseType: !3182, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3179, file: !128, line: 208, baseType: !3182, size: 64, offset: 128)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3179, file: !128, line: 209, baseType: !3182, size: 64, offset: 192)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3179, file: !128, line: 210, baseType: !3182, size: 64, offset: 256)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3179, file: !128, line: 211, baseType: !3182, size: 64, offset: 320)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3179, file: !128, line: 212, baseType: !3182, size: 64, offset: 384)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3179, file: !128, line: 213, baseType: !787, size: 64, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3179, file: !128, line: 214, baseType: !787, size: 64, offset: 512)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !3079, file: !19, line: 2085, baseType: !3192, size: 64, offset: 1472)
!3192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3193, size: 64)
!3193 = !DISubroutineType(types: !3194)
!3194 = !{!1061, !1340, !3195}
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3196, size: 64)
!3196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3197, line: 15, size: 256, elements: !3198)
!3197 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3198 = !{!3199, !3200, !3201, !3202, !3203}
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3196, file: !3197, line: 16, baseType: !1336, size: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3196, file: !3197, line: 19, baseType: !42, size: 32, offset: 32)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3196, file: !3197, line: 26, baseType: !59, size: 64, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3196, file: !3197, line: 33, baseType: !59, size: 64, offset: 128)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3196, file: !3197, line: 36, baseType: !3204, size: 64, offset: 192)
!3204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3205, size: 64)
!3205 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !216, line: 33, flags: DIFlagFwdDecl)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !3079, file: !19, line: 2087, baseType: !3192, size: 64, offset: 1536)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3079, file: !19, line: 2089, baseType: !1369, size: 64, offset: 1600)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1341, file: !19, line: 1198, baseType: !3209, size: 64, offset: 448)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3211)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !128, line: 324, size: 704, elements: !3212)
!3212 = !{!3213, !3217, !3221, !3225, !3226, !3227, !3228, !3229, !3234, !3239, !3243}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3211, file: !128, line: 325, baseType: !3214, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3215, size: 64)
!3215 = !DISubroutineType(types: !3216)
!3216 = !{!42, !3149}
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3211, file: !128, line: 326, baseType: !3218, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3219, size: 64)
!3219 = !DISubroutineType(types: !3220)
!3220 = !{!3149, !1340, !42}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3211, file: !128, line: 327, baseType: !3222, size: 64, offset: 128)
!3222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3223, size: 64)
!3223 = !DISubroutineType(types: !3224)
!3224 = !{null, !3149}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3211, file: !128, line: 328, baseType: !3214, size: 64, offset: 192)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3211, file: !128, line: 329, baseType: !3214, size: 64, offset: 256)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3211, file: !128, line: 330, baseType: !3214, size: 64, offset: 320)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3211, file: !128, line: 331, baseType: !3105, size: 64, offset: 384)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3211, file: !128, line: 334, baseType: !3230, size: 64, offset: 448)
!3230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3231, size: 64)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{!3233, !1132}
!3233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3182, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3211, file: !128, line: 335, baseType: !3235, size: 64, offset: 512)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DISubroutineType(types: !3237)
!3237 = !{!42, !1132, !3238}
!3238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3211, file: !128, line: 337, baseType: !3240, size: 64, offset: 576)
!3240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3241, size: 64)
!3241 = !DISubroutineType(types: !3242)
!3242 = !{!42, !1132, !3233}
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3211, file: !128, line: 339, baseType: !3244, size: 64, offset: 640)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!42, !1340, !3247}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1341, file: !19, line: 1199, baseType: !3249, size: 64, offset: 512)
!3249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3250, size: 64)
!3250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3251)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !128, line: 430, size: 704, elements: !3252)
!3252 = !{!3253, !3257, !3258, !3262, !3263, !3264, !3279, !3302, !3306, !3307, !3330}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3251, file: !128, line: 431, baseType: !3254, size: 64)
!3254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3255, size: 64)
!3255 = !DISubroutineType(types: !3256)
!3256 = !{!42, !1340, !42, !42, !1253}
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3251, file: !128, line: 432, baseType: !3105, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3251, file: !128, line: 433, baseType: !3259, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3260, size: 64)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{!42, !1340, !7}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3251, file: !128, line: 434, baseType: !3259, size: 64, offset: 192)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3251, file: !128, line: 435, baseType: !3105, size: 64, offset: 256)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3251, file: !128, line: 436, baseType: !3265, size: 64, offset: 320)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!42, !1340, !42, !3268}
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !128, line: 417, size: 256, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3269, file: !128, line: 418, baseType: !42, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3269, file: !128, line: 419, baseType: !7, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3269, file: !128, line: 420, baseType: !7, size: 32, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3269, file: !128, line: 422, baseType: !7, size: 32, offset: 96)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3269, file: !128, line: 423, baseType: !7, size: 32, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3269, file: !128, line: 424, baseType: !7, size: 32, offset: 160)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3269, file: !128, line: 425, baseType: !7, size: 32, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3269, file: !128, line: 426, baseType: !7, size: 32, offset: 224)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3251, file: !128, line: 437, baseType: !3280, size: 64, offset: 384)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DISubroutineType(types: !3282)
!3282 = !{!42, !1340, !3161, !3283}
!3283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3284, size: 64)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !128, line: 345, size: 960, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3284, file: !128, line: 346, baseType: !42, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3284, file: !128, line: 347, baseType: !333, size: 64, offset: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3284, file: !128, line: 348, baseType: !333, size: 64, offset: 128)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3284, file: !128, line: 349, baseType: !333, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3284, file: !128, line: 350, baseType: !333, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3284, file: !128, line: 351, baseType: !333, size: 64, offset: 320)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3284, file: !128, line: 352, baseType: !333, size: 64, offset: 384)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3284, file: !128, line: 353, baseType: !344, size: 64, offset: 448)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3284, file: !128, line: 355, baseType: !344, size: 64, offset: 512)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3284, file: !128, line: 356, baseType: !42, size: 32, offset: 576)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3284, file: !128, line: 357, baseType: !42, size: 32, offset: 608)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3284, file: !128, line: 358, baseType: !333, size: 64, offset: 640)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3284, file: !128, line: 359, baseType: !333, size: 64, offset: 704)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3284, file: !128, line: 360, baseType: !333, size: 64, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3284, file: !128, line: 361, baseType: !344, size: 64, offset: 832)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3284, file: !128, line: 362, baseType: !42, size: 32, offset: 896)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3251, file: !128, line: 438, baseType: !3303, size: 64, offset: 448)
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DISubroutineType(types: !3305)
!3305 = !{!42, !1340, !3247, !3283}
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3251, file: !128, line: 440, baseType: !3280, size: 64, offset: 512)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3251, file: !128, line: 441, baseType: !3308, size: 64, offset: 576)
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3309, size: 64)
!3309 = !DISubroutineType(types: !3310)
!3310 = !{!42, !1340, !3311}
!3311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3312, size: 64)
!3312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !128, line: 411, size: 1408, elements: !3313)
!3313 = !{!3314, !3315}
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3312, file: !128, line: 412, baseType: !7, size: 32)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3312, file: !128, line: 413, baseType: !3316, size: 1344, offset: 64)
!3316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3317, size: 1344, elements: !674)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !128, line: 397, size: 448, elements: !3318)
!3318 = !{!3319, !3320, !3321, !3322, !3323, !3324, !3325, !3326, !3327, !3329}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3317, file: !128, line: 398, baseType: !7, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3317, file: !128, line: 399, baseType: !7, size: 32, offset: 32)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3317, file: !128, line: 401, baseType: !7, size: 32, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3317, file: !128, line: 402, baseType: !7, size: 32, offset: 96)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3317, file: !128, line: 403, baseType: !7, size: 32, offset: 128)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3317, file: !128, line: 404, baseType: !7, size: 32, offset: 160)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3317, file: !128, line: 405, baseType: !7, size: 32, offset: 192)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3317, file: !128, line: 406, baseType: !335, size: 64, offset: 256)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3317, file: !128, line: 407, baseType: !3328, size: 64, offset: 320)
!3328 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !45, line: 132, baseType: !333)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3317, file: !128, line: 408, baseType: !3328, size: 64, offset: 384)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3251, file: !128, line: 442, baseType: !3259, size: 64, offset: 640)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1341, file: !19, line: 1200, baseType: !3332, size: 64, offset: 576)
!3332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3333, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3334)
!3334 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !19, line: 54, flags: DIFlagFwdDecl)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1341, file: !19, line: 1201, baseType: !59, size: 64, offset: 640)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1341, file: !19, line: 1202, baseType: !59, size: 64, offset: 704)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1341, file: !19, line: 1203, baseType: !59, size: 64, offset: 768)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1341, file: !19, line: 1204, baseType: !1097, size: 64, offset: 832)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1341, file: !19, line: 1205, baseType: !771, size: 320, offset: 896)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1341, file: !19, line: 1206, baseType: !42, size: 32, offset: 1216)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1341, file: !19, line: 1207, baseType: !69, size: 32, offset: 1248)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1341, file: !19, line: 1209, baseType: !40, size: 64, offset: 1280)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1341, file: !19, line: 1211, baseType: !3344, size: 64, offset: 1344)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3347)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !19, line: 1211, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1341, file: !19, line: 1223, baseType: !3349, size: 64, offset: 1408)
!3349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !1109, line: 34, size: 64, elements: !3350)
!3350 = !{!3351}
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3349, file: !1109, line: 35, baseType: !1112, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1341, file: !19, line: 1224, baseType: !117, size: 128, offset: 1472)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1341, file: !19, line: 1225, baseType: !2104, size: 64, offset: 1600)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1341, file: !19, line: 1226, baseType: !3355, size: 64, offset: 1664)
!3355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3356, size: 64)
!3356 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !19, line: 1226, flags: DIFlagFwdDecl)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1341, file: !19, line: 1227, baseType: !3358, size: 64, offset: 1728)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !198, line: 163, size: 6848, elements: !3360)
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3408, !3409, !3410, !3411, !3413, !3414, !3415}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3359, file: !198, line: 164, baseType: !333, size: 64)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3359, file: !198, line: 165, baseType: !325, size: 192, align: 64, offset: 64)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_list", scope: !3359, file: !198, line: 166, baseType: !117, size: 128, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3359, file: !198, line: 167, baseType: !59, size: 64, offset: 384)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "io_pages", scope: !3359, file: !198, line: 168, baseType: !59, size: 64, offset: 448)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !3359, file: !198, line: 170, baseType: !2718, size: 32, offset: 512)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !3359, file: !198, line: 171, baseType: !7, size: 32, offset: 544)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "min_ratio", scope: !3359, file: !198, line: 172, baseType: !7, size: 32, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "max_ratio", scope: !3359, file: !198, line: 173, baseType: !7, size: 32, offset: 608)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "max_prop_frac", scope: !3359, file: !198, line: 173, baseType: !7, size: 32, offset: 640)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "tot_write_bandwidth", scope: !3359, file: !198, line: 179, baseType: !631, size: 64, offset: 704)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "last_bdp_sleep", scope: !3359, file: !198, line: 184, baseType: !59, size: 64, offset: 768)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "wb", scope: !3359, file: !198, line: 186, baseType: !3374, size: 4672, offset: 832)
!3374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdi_writeback", file: !198, line: 105, size: 4672, elements: !3375)
!3375 = !{!3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3387, !3388, !3389, !3390, !3391, !3392, !3393, !3394, !3401, !3402, !3403, !3404, !3405, !3406, !3407}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !3374, file: !198, line: 106, baseType: !3358, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3374, file: !198, line: 108, baseType: !59, size: 64, offset: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "last_old_flush", scope: !3374, file: !198, line: 109, baseType: !59, size: 64, offset: 128)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty", scope: !3374, file: !198, line: 111, baseType: !117, size: 128, offset: 192)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "b_io", scope: !3374, file: !198, line: 112, baseType: !117, size: 128, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "b_more_io", scope: !3374, file: !198, line: 113, baseType: !117, size: 128, offset: 448)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "b_dirty_time", scope: !3374, file: !198, line: 114, baseType: !117, size: 128, offset: 576)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !3374, file: !198, line: 115, baseType: !79, size: 32, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_inodes", scope: !3374, file: !198, line: 117, baseType: !69, size: 32, offset: 736)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "stat", scope: !3374, file: !198, line: 118, baseType: !3386, size: 1280, offset: 768)
!3386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !889, size: 1280, elements: !695)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "bw_time_stamp", scope: !3374, file: !198, line: 120, baseType: !59, size: 64, offset: 2048)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_stamp", scope: !3374, file: !198, line: 121, baseType: !59, size: 64, offset: 2112)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "written_stamp", scope: !3374, file: !198, line: 122, baseType: !59, size: 64, offset: 2176)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "write_bandwidth", scope: !3374, file: !198, line: 123, baseType: !59, size: 64, offset: 2240)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "avg_write_bandwidth", scope: !3374, file: !198, line: 124, baseType: !59, size: 64, offset: 2304)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_ratelimit", scope: !3374, file: !198, line: 132, baseType: !59, size: 64, offset: 2368)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "balanced_dirty_ratelimit", scope: !3374, file: !198, line: 133, baseType: !59, size: 64, offset: 2432)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "completions", scope: !3374, file: !198, line: 135, baseType: !3395, size: 384, offset: 2496)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fprop_local_percpu", file: !3396, line: 76, size: 384, elements: !3397)
!3396 = !DIFile(filename: "./include/linux/flex_proportions.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a71374c9cbe54a4b0f3b6bbea75a8cfc")
!3397 = !{!3398, !3399, !3400}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !3395, file: !3396, line: 78, baseType: !889, size: 320)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !3395, file: !3396, line: 80, baseType: !7, size: 32, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3395, file: !3396, line: 81, baseType: !425, size: 32, offset: 352)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_exceeded", scope: !3374, file: !198, line: 136, baseType: !42, size: 32, offset: 2880)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "start_all_reason", scope: !3374, file: !198, line: 137, baseType: !197, size: 32, offset: 2912)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "work_lock", scope: !3374, file: !198, line: 139, baseType: !79, size: 32, offset: 2944)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "work_list", scope: !3374, file: !198, line: 140, baseType: !117, size: 128, offset: 3008)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3374, file: !198, line: 141, baseType: !3013, size: 704, offset: 3136)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "bw_dwork", scope: !3374, file: !198, line: 142, baseType: !3013, size: 704, offset: 3840)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bdi_node", scope: !3374, file: !198, line: 144, baseType: !117, size: 128, offset: 4544)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "wb_list", scope: !3359, file: !198, line: 187, baseType: !117, size: 128, offset: 5504)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "wb_waitq", scope: !3359, file: !198, line: 193, baseType: !74, size: 192, offset: 5632)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3359, file: !198, line: 195, baseType: !2150, size: 64, offset: 5824)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3359, file: !198, line: 196, baseType: !3412, size: 512, offset: 5888)
!3412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 512, elements: !1429)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3359, file: !198, line: 197, baseType: !2150, size: 64, offset: 6400)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "laptop_mode_wb_timer", scope: !3359, file: !198, line: 199, baseType: !2320, size: 320, offset: 6464)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "debug_dir", scope: !3359, file: !198, line: 202, baseType: !1097, size: 64, offset: 6784)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1341, file: !19, line: 1228, baseType: !3417, size: 64, offset: 1792)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !19, line: 1228, flags: DIFlagFwdDecl)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1341, file: !19, line: 1229, baseType: !690, size: 128, offset: 1856)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1341, file: !19, line: 1230, baseType: !7, size: 32, offset: 1984)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1341, file: !19, line: 1231, baseType: !3422, size: 2496, offset: 2048)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !128, line: 521, size: 2496, elements: !3423)
!3423 = !{!3424, !3425, !3426, !3428, !3460}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3422, file: !128, line: 522, baseType: !7, size: 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3422, file: !128, line: 523, baseType: !771, size: 320, offset: 64)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3422, file: !128, line: 524, baseType: !3427, size: 192, offset: 384)
!3427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1132, size: 192, elements: !674)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3422, file: !128, line: 525, baseType: !3429, size: 1728, offset: 576)
!3429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3430, size: 1728, elements: !674)
!3430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !128, line: 222, size: 576, elements: !3431)
!3431 = !{!3432, !3452, !3453, !3454, !3455, !3456, !3457, !3458, !3459}
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3430, file: !128, line: 223, baseType: !3433, size: 64)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !128, line: 445, size: 256, elements: !3435)
!3435 = !{!3436, !3437, !3450, !3451}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3434, file: !128, line: 446, baseType: !42, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3434, file: !128, line: 447, baseType: !3438, size: 64, offset: 64)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3440)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !128, line: 312, size: 512, elements: !3441)
!3441 = !{!3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3440, file: !128, line: 313, baseType: !3105, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3440, file: !128, line: 314, baseType: !3105, size: 64, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3440, file: !128, line: 315, baseType: !3105, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3440, file: !128, line: 316, baseType: !3105, size: 64, offset: 192)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3440, file: !128, line: 317, baseType: !3214, size: 64, offset: 256)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3440, file: !128, line: 318, baseType: !3214, size: 64, offset: 320)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3440, file: !128, line: 319, baseType: !3214, size: 64, offset: 384)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3440, file: !128, line: 320, baseType: !3244, size: 64, offset: 448)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3434, file: !128, line: 448, baseType: !1373, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3434, file: !128, line: 449, baseType: !3433, size: 64, offset: 192)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3430, file: !128, line: 224, baseType: !42, size: 32, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3430, file: !128, line: 226, baseType: !117, size: 128, offset: 128)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3430, file: !128, line: 227, baseType: !59, size: 64, offset: 256)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3430, file: !128, line: 228, baseType: !7, size: 32, offset: 320)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3430, file: !128, line: 229, baseType: !7, size: 32, offset: 352)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3430, file: !128, line: 230, baseType: !3182, size: 64, offset: 384)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3430, file: !128, line: 231, baseType: !3182, size: 64, offset: 448)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3430, file: !128, line: 232, baseType: !40, size: 64, offset: 512)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3422, file: !128, line: 526, baseType: !3461, size: 192, offset: 2304)
!3461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3438, size: 192, elements: !674)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1341, file: !19, line: 1233, baseType: !3463, size: 2368, offset: 4544)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !19, line: 1184, size: 2368, elements: !3464)
!3464 = !{!3465, !3466, !3467}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3463, file: !19, line: 1185, baseType: !46, size: 16)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3463, file: !19, line: 1186, baseType: !46, size: 16, offset: 16)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3463, file: !19, line: 1187, baseType: !3468, size: 2304, offset: 64)
!3468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3469, size: 2304, elements: !674)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3470, line: 12, size: 768, elements: !3471)
!3470 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3471 = !{!3472, !3480, !3481, !3486, !3487}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3469, file: !3470, line: 13, baseType: !3473, size: 384)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3474, line: 17, size: 384, elements: !3475)
!3474 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3475 = !{!3476, !3477, !3478, !3479}
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3473, file: !3474, line: 18, baseType: !42, size: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3473, file: !3474, line: 19, baseType: !42, size: 32, offset: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3473, file: !3474, line: 20, baseType: !74, size: 192, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3473, file: !3474, line: 22, baseType: !618, size: 128, align: 64, offset: 256)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3469, file: !3470, line: 14, baseType: !2095, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3469, file: !3470, line: 15, baseType: !3482, size: 64, offset: 448)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3483, line: 16, size: 64, elements: !3484)
!3483 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3484 = !{!3485}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3482, file: !3483, line: 17, baseType: !273, size: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3469, file: !3470, line: 16, baseType: !74, size: 192, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3469, file: !3470, line: 17, baseType: !69, size: 32, offset: 704)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1341, file: !19, line: 1240, baseType: !40, size: 64, offset: 6912)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1341, file: !19, line: 1243, baseType: !269, size: 32, offset: 6976)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1341, file: !19, line: 1245, baseType: !787, size: 64, offset: 7040)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1341, file: !19, line: 1246, baseType: !787, size: 64, offset: 7104)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1341, file: !19, line: 1248, baseType: !270, size: 32, offset: 7168)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1341, file: !19, line: 1249, baseType: !3494, size: 64, offset: 7232)
!3494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3495, size: 64)
!3495 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !19, line: 634, flags: DIFlagFwdDecl)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1341, file: !19, line: 1252, baseType: !3497, size: 256, offset: 7296)
!3497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 256, elements: !3498)
!3498 = !{!3499}
!3499 = !DISubrange(count: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1341, file: !19, line: 1253, baseType: !3501, size: 128, offset: 7552)
!3501 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3502, line: 21, baseType: !3503)
!3502 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3502, line: 19, size: 128, elements: !3504)
!3504 = !{!3505}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3503, file: !3502, line: 20, baseType: !3506, size: 128)
!3506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, elements: !3507)
!3507 = !{!3508}
!3508 = !DISubrange(count: 16)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1341, file: !19, line: 1255, baseType: !7, size: 32, offset: 7680)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1341, file: !19, line: 1261, baseType: !638, size: 256, offset: 7744)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1341, file: !19, line: 1267, baseType: !36, size: 64, offset: 8000)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1341, file: !19, line: 1269, baseType: !3513, size: 64, offset: 8064)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3515)
!3515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !1099, line: 128, size: 1024, align: 512, elements: !3516)
!3516 = !{!3517, !3521, !3522, !3529, !3535, !3539, !3543, !3547, !3548, !3552, !3556, !3561, !3565}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3515, file: !1099, line: 129, baseType: !3518, size: 64)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!42, !1097, !7}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3515, file: !1099, line: 130, baseType: !3518, size: 64, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3515, file: !1099, line: 131, baseType: !3523, size: 64, offset: 128)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{!42, !3526, !3528}
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1098)
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3515, file: !1099, line: 132, baseType: !3530, size: 64, offset: 192)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DISubroutineType(types: !3532)
!3532 = !{!42, !3526, !7, !36, !3533}
!3533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3534, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1117)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3515, file: !1099, line: 134, baseType: !3536, size: 64, offset: 256)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!42, !3526}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3515, file: !1099, line: 135, baseType: !3540, size: 64, offset: 320)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!42, !1097}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3515, file: !1099, line: 136, baseType: !3544, size: 64, offset: 384)
!3544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3545, size: 64)
!3545 = !DISubroutineType(types: !3546)
!3546 = !{null, !1097}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3515, file: !1099, line: 137, baseType: !3544, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3515, file: !1099, line: 138, baseType: !3549, size: 64, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{null, !1097, !1132}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3515, file: !1099, line: 139, baseType: !3553, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DISubroutineType(types: !3555)
!3555 = !{!841, !1097, !841, !42}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3515, file: !1099, line: 140, baseType: !3557, size: 64, offset: 640)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!1092, !3560}
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3515, file: !1099, line: 141, baseType: !3562, size: 64, offset: 704)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!42, !1253, !830}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3515, file: !1099, line: 142, baseType: !3566, size: 64, offset: 768)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!1097, !1097, !3569}
!3569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3570, size: 64)
!3570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1133)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1341, file: !19, line: 1271, baseType: !3572, size: 448, offset: 8128)
!3572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3197, line: 63, size: 448, elements: !3573)
!3573 = !{!3574, !3579, !3580, !3581, !3582, !3583, !3584}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3572, file: !3197, line: 64, baseType: !3575, size: 64)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!59, !3578, !3195}
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3572, file: !3197, line: 66, baseType: !3575, size: 64, offset: 64)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3572, file: !3197, line: 69, baseType: !1061, size: 64, offset: 128)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3572, file: !3197, line: 70, baseType: !42, size: 32, offset: 192)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3572, file: !3197, line: 71, baseType: !7, size: 32, offset: 224)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3572, file: !3197, line: 74, baseType: !117, size: 128, offset: 256)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3572, file: !3197, line: 85, baseType: !3585, size: 64, offset: 384)
!3585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1341, file: !19, line: 1274, baseType: !631, size: 64, offset: 8576)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1341, file: !19, line: 1280, baseType: !631, size: 64, offset: 8640)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1341, file: !19, line: 1283, baseType: !42, size: 32, offset: 8704)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1341, file: !19, line: 1286, baseType: !2553, size: 32, offset: 8736)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1341, file: !19, line: 1289, baseType: !3018, size: 64, offset: 8768)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1341, file: !19, line: 1290, baseType: !686, size: 64, offset: 8832)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1341, file: !19, line: 1297, baseType: !914, size: 64, offset: 8896)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1341, file: !19, line: 1304, baseType: !3594, size: 64, offset: 8960)
!3594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3595, line: 49, size: 64, elements: !3596)
!3595 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3596 = !{!3597}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3594, file: !3595, line: 50, baseType: !3598, size: 64)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3595, line: 41, size: 512, align: 512, elements: !3600)
!3600 = !{!3601, !3602, !3607}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3599, file: !3595, line: 43, baseType: !79, size: 32)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3599, file: !3595, line: 45, baseType: !3603, size: 192, offset: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3595, line: 29, size: 192, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3603, file: !3595, line: 30, baseType: !117, size: 128)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3603, file: !3595, line: 32, baseType: !1061, size: 64, offset: 128)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3599, file: !3595, line: 46, baseType: !1061, size: 64, offset: 256)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1341, file: !19, line: 1305, baseType: !3594, size: 64, offset: 9024)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1341, file: !19, line: 1306, baseType: !618, size: 128, align: 64, offset: 9088)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1341, file: !19, line: 1307, baseType: !963, size: 256, offset: 9216)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1341, file: !19, line: 1309, baseType: !638, size: 256, offset: 9472)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1341, file: !19, line: 1314, baseType: !42, size: 32, offset: 9728)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1341, file: !19, line: 1317, baseType: !79, size: 32, align: 512, offset: 10240)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1341, file: !19, line: 1318, baseType: !117, size: 128, offset: 10304)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1341, file: !19, line: 1320, baseType: !79, size: 32, offset: 10432)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1341, file: !19, line: 1321, baseType: !117, size: 128, offset: 10496)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !1133, file: !19, line: 656, baseType: !1490, size: 64, offset: 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !1133, file: !19, line: 659, baseType: !40, size: 64, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !1133, file: !19, line: 663, baseType: !59, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !19, line: 671, baseType: !3621, size: 32, offset: 704)
!3621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !19, line: 671, size: 32, elements: !3622)
!3622 = !{!3623, !3625}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3621, file: !19, line: 672, baseType: !3624, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3621, file: !19, line: 673, baseType: !7, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !1133, file: !19, line: 675, baseType: !1206, size: 32, offset: 736)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !1133, file: !19, line: 676, baseType: !61, size: 64, offset: 768)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !1133, file: !19, line: 677, baseType: !1242, size: 128, offset: 832)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !1133, file: !19, line: 678, baseType: !1242, size: 128, offset: 960)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !1133, file: !19, line: 679, baseType: !1242, size: 128, offset: 1088)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !1133, file: !19, line: 680, baseType: !79, size: 32, offset: 1216)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !1133, file: !19, line: 681, baseType: !46, size: 16, offset: 1248)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !1133, file: !19, line: 682, baseType: !103, size: 8, offset: 1264)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !1133, file: !19, line: 683, baseType: !103, size: 8, offset: 1272)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !1133, file: !19, line: 684, baseType: !3328, size: 64, offset: 1280)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !1133, file: !19, line: 691, baseType: !59, size: 64, offset: 1344)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !1133, file: !19, line: 692, baseType: !771, size: 320, offset: 1408)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !1133, file: !19, line: 694, baseType: !59, size: 64, offset: 1728)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !1133, file: !19, line: 695, baseType: !59, size: 64, offset: 1792)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !1133, file: !19, line: 697, baseType: !690, size: 128, offset: 1856)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !1133, file: !19, line: 698, baseType: !117, size: 128, offset: 1984)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !1133, file: !19, line: 707, baseType: !117, size: 128, offset: 2112)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !1133, file: !19, line: 708, baseType: !117, size: 128, offset: 2240)
!3644 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !19, line: 709, baseType: !3645, size: 128, offset: 2368)
!3645 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !19, line: 709, size: 128, elements: !3646)
!3646 = !{!3647, !3648}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3645, file: !19, line: 710, baseType: !686, size: 64)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3645, file: !19, line: 711, baseType: !618, size: 128, align: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !1133, file: !19, line: 713, baseType: !633, size: 64, offset: 2496)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !1133, file: !19, line: 714, baseType: !633, size: 64, offset: 2560)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !1133, file: !19, line: 715, baseType: !69, size: 32, offset: 2624)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !1133, file: !19, line: 716, baseType: !69, size: 32, offset: 2656)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !1133, file: !19, line: 717, baseType: !69, size: 32, offset: 2688)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !1133, file: !19, line: 719, baseType: !69, size: 32, offset: 2720)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !19, line: 721, baseType: !3656, size: 64, offset: 2752)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !19, line: 721, size: 64, elements: !3657)
!3657 = !{!3658, !3784}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3656, file: !19, line: 722, baseType: !3659, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3661)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !19, line: 1914, size: 2112, elements: !3662)
!3662 = !{!3663, !3664, !3668, !3672, !3676, !3677, !3678, !3684, !3697, !3701, !3705, !3706, !3710, !3711, !3715, !3720, !3721, !3725, !3729, !3735, !3736, !3740, !3741, !3747, !3751, !3752, !3757, !3761, !3765, !3769, !3773, !3774, !3780}
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3661, file: !19, line: 1915, baseType: !1373, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3661, file: !19, line: 1916, baseType: !3665, size: 64, offset: 64)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!61, !610, !61, !42}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3661, file: !19, line: 1917, baseType: !3669, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!1284, !610, !841, !55, !60}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3661, file: !19, line: 1918, baseType: !3673, size: 64, offset: 192)
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DISubroutineType(types: !3675)
!3675 = !{!1284, !610, !36, !55, !60}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3661, file: !19, line: 1919, baseType: !1940, size: 64, offset: 256)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3661, file: !19, line: 1920, baseType: !1940, size: 64, offset: 320)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3661, file: !19, line: 1921, baseType: !3679, size: 64, offset: 384)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!42, !1943, !3682, !7}
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !19, line: 53, flags: DIFlagFwdDecl)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3661, file: !19, line: 1923, baseType: !3685, size: 64, offset: 448)
!3685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3686, size: 64)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!42, !610, !3688}
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !19, line: 1858, size: 128, elements: !3690)
!3690 = !{!3691, !3696}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3689, file: !19, line: 1859, baseType: !3692, size: 64)
!3692 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !19, line: 1855, baseType: !3693)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!830, !3688, !36, !42, !61, !333, !7}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3689, file: !19, line: 1860, baseType: !61, size: 64, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3661, file: !19, line: 1924, baseType: !3698, size: 64, offset: 512)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DISubroutineType(types: !3700)
!3700 = !{!2696, !610, !2698}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3661, file: !19, line: 1925, baseType: !3702, size: 64, offset: 576)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!1061, !610, !7, !59}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3661, file: !19, line: 1926, baseType: !3702, size: 64, offset: 640)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3661, file: !19, line: 1927, baseType: !3707, size: 64, offset: 704)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!42, !610, !1620}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3661, file: !19, line: 1928, baseType: !59, size: 64, offset: 768)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3661, file: !19, line: 1929, baseType: !3712, size: 64, offset: 832)
!3712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3713, size: 64)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!42, !1132, !610}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3661, file: !19, line: 1930, baseType: !3716, size: 64, offset: 896)
!3716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3717, size: 64)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!42, !610, !3719}
!3719 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !19, line: 1061, baseType: !40)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3661, file: !19, line: 1931, baseType: !3712, size: 64, offset: 960)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3661, file: !19, line: 1932, baseType: !3722, size: 64, offset: 1024)
!3722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3723, size: 64)
!3723 = !DISubroutineType(types: !3724)
!3724 = !{!42, !610, !61, !61, !42}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3661, file: !19, line: 1933, baseType: !3726, size: 64, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!42, !42, !610, !42}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3661, file: !19, line: 1934, baseType: !3730, size: 64, offset: 1152)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!42, !610, !42, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !19, line: 1063, flags: DIFlagFwdDecl)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3661, file: !19, line: 1935, baseType: !607, size: 64, offset: 1216)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3661, file: !19, line: 1936, baseType: !3737, size: 64, offset: 1280)
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3738, size: 64)
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!42, !42}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3661, file: !19, line: 1937, baseType: !3730, size: 64, offset: 1344)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3661, file: !19, line: 1938, baseType: !3742, size: 64, offset: 1408)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!1284, !3745, !610, !60, !55, !7}
!3745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3746, size: 64)
!3746 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !275, line: 59, flags: DIFlagFwdDecl)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3661, file: !19, line: 1939, baseType: !3748, size: 64, offset: 1472)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!1284, !610, !60, !3745, !55, !7}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3661, file: !19, line: 1940, baseType: !2543, size: 64, offset: 1536)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3661, file: !19, line: 1941, baseType: !3753, size: 64, offset: 1600)
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DISubroutineType(types: !3755)
!3755 = !{!42, !610, !42, !3756, !1917}
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3661, file: !19, line: 1942, baseType: !3758, size: 64, offset: 1664)
!3758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!1061, !610, !42, !61, !61}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3661, file: !19, line: 1944, baseType: !3762, size: 64, offset: 1728)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{null, !2629, !610}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3661, file: !19, line: 1948, baseType: !3766, size: 64, offset: 1792)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!1284, !610, !61, !610, !61, !55, !7}
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3661, file: !19, line: 1950, baseType: !3770, size: 64, offset: 1856)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!61, !610, !61, !610, !61, !61, !7}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3661, file: !19, line: 1953, baseType: !3722, size: 64, offset: 1920)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3661, file: !19, line: 1954, baseType: !3775, size: 64, offset: 1984)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!42, !3778, !7}
!3778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3779, size: 64)
!3779 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !19, line: 1911, flags: DIFlagFwdDecl)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3661, file: !19, line: 1955, baseType: !3781, size: 64, offset: 2048)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!42, !3778, !3682, !7}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3656, file: !19, line: 723, baseType: !3086, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !1133, file: !19, line: 725, baseType: !3786, size: 64, offset: 2816)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !19, line: 725, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !1133, file: !19, line: 726, baseType: !1491, size: 1536, align: 64, offset: 2880)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !1133, file: !19, line: 727, baseType: !117, size: 128, offset: 4416)
!3790 = !DIDerivedType(tag: DW_TAG_member, scope: !1133, file: !19, line: 728, baseType: !3791, size: 64, offset: 4544)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1133, file: !19, line: 728, size: 64, elements: !3792)
!3792 = !{!3793, !3794, !3797, !3798}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3791, file: !19, line: 729, baseType: !3745, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3791, file: !19, line: 730, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !19, line: 730, flags: DIFlagFwdDecl)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3791, file: !19, line: 731, baseType: !841, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3791, file: !19, line: 732, baseType: !7, size: 32)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !1133, file: !19, line: 735, baseType: !270, size: 32, offset: 4608)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !1133, file: !19, line: 738, baseType: !270, size: 32, offset: 4640)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !1133, file: !19, line: 739, baseType: !3494, size: 64, offset: 4672)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !1133, file: !19, line: 750, baseType: !40, size: 64, offset: 4736)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !1098, file: !1099, line: 91, baseType: !3804, size: 256, offset: 448)
!3804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !3498)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !1098, file: !1099, line: 94, baseType: !3806, size: 64, offset: 704)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3807, line: 25, size: 64, elements: !3808)
!3807 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3808 = !{!3809}
!3809 = !DIDerivedType(tag: DW_TAG_member, scope: !3806, file: !3807, line: 26, baseType: !3810, size: 64)
!3810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3806, file: !3807, line: 26, size: 64, elements: !3811)
!3811 = !{!3812, !3813}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3810, file: !3807, line: 28, baseType: !334, size: 64, align: 64)
!3813 = !DIDerivedType(tag: DW_TAG_member, scope: !3810, file: !3807, line: 30, baseType: !3814, size: 64)
!3814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3810, file: !3807, line: 30, size: 64, elements: !3815)
!3815 = !{!3816, !3817}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3814, file: !3807, line: 31, baseType: !79, size: 32)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3814, file: !3807, line: 32, baseType: !42, size: 32, offset: 32)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !1098, file: !1099, line: 95, baseType: !3513, size: 64, offset: 768)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !1098, file: !1099, line: 96, baseType: !1340, size: 64, offset: 832)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !1098, file: !1099, line: 97, baseType: !59, size: 64, offset: 896)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !1098, file: !1099, line: 98, baseType: !40, size: 64, offset: 960)
!3822 = !DIDerivedType(tag: DW_TAG_member, scope: !1098, file: !1099, line: 100, baseType: !3823, size: 128, offset: 1024)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !1099, line: 100, size: 128, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3823, file: !1099, line: 101, baseType: !117, size: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3823, file: !1099, line: 102, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !1098, file: !1099, line: 104, baseType: !117, size: 128, offset: 1152)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !1098, file: !1099, line: 105, baseType: !117, size: 128, offset: 1280)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !1098, file: !1099, line: 113, baseType: !3831, size: 128, offset: 1408)
!3831 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1098, file: !1099, line: 109, size: 128, elements: !3832)
!3832 = !{!3833, !3834, !3835}
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3831, file: !1099, line: 110, baseType: !690, size: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3831, file: !1099, line: 111, baseType: !1108, size: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3831, file: !1099, line: 112, baseType: !618, size: 128, align: 64)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !1093, file: !1094, line: 72, baseType: !1340, size: 64, offset: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !1093, file: !1094, line: 73, baseType: !42, size: 32, offset: 128)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !1093, file: !1094, line: 74, baseType: !1171, size: 64, offset: 192)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1088, file: !1089, line: 10, baseType: !1097, size: 64, offset: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !611, file: !19, line: 1015, baseType: !1132, size: 64, offset: 1344)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !611, file: !19, line: 1016, baseType: !3659, size: 64, offset: 1408)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !611, file: !19, line: 1018, baseType: !333, size: 64, offset: 1472)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !611, file: !19, line: 1020, baseType: !40, size: 64, offset: 1536)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !611, file: !19, line: 1023, baseType: !40, size: 64, offset: 1600)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !611, file: !19, line: 1027, baseType: !3846, size: 64, offset: 1664)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !611, file: !19, line: 1029, baseType: !1490, size: 64, offset: 1728)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !611, file: !19, line: 1030, baseType: !2553, size: 32, offset: 1792)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !611, file: !19, line: 1031, baseType: !2553, size: 32, offset: 1824)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !586, file: !216, line: 756, baseType: !59, size: 64, offset: 704)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !586, file: !216, line: 757, baseType: !59, size: 64, offset: 768)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !586, file: !216, line: 760, baseType: !59, size: 64, offset: 832)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !586, file: !216, line: 761, baseType: !59, size: 64, offset: 896)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !586, file: !216, line: 763, baseType: !59, size: 64, offset: 960)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !586, file: !216, line: 764, baseType: !3856, size: 64, offset: 1024)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1635, line: 299, baseType: !3858)
!3858 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1635, line: 299, size: 64, elements: !3859)
!3859 = !{!3860}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3858, file: !1635, line: 299, baseType: !3861, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1640, line: 18, baseType: !59)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !586, file: !216, line: 773, baseType: !69, size: 32, offset: 1088)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !586, file: !216, line: 785, baseType: !69, size: 32, offset: 1120)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !586, file: !216, line: 795, baseType: !3865, size: 64, offset: 1152)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !216, line: 726, size: 128, elements: !3867)
!3867 = !{!3868, !3869}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3866, file: !216, line: 727, baseType: !333, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3866, file: !216, line: 728, baseType: !42, size: 32, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !586, file: !216, line: 801, baseType: !59, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !586, file: !216, line: 804, baseType: !631, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !586, file: !216, line: 806, baseType: !42, size: 32, offset: 1344)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !586, file: !216, line: 808, baseType: !79, size: 32, offset: 1376)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !586, file: !216, line: 823, baseType: !771, size: 320, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !586, file: !216, line: 825, baseType: !117, size: 128, offset: 1728)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !586, file: !216, line: 845, baseType: !42, size: 32, offset: 1856)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !586, file: !216, line: 849, baseType: !59, size: 64, offset: 1920)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !586, file: !216, line: 850, baseType: !59, size: 64, offset: 1984)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !586, file: !216, line: 852, baseType: !59, size: 64, offset: 2048)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !586, file: !216, line: 853, baseType: !59, size: 64, offset: 2112)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !586, file: !216, line: 854, baseType: !633, size: 64, offset: 2176)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !586, file: !216, line: 855, baseType: !59, size: 64, offset: 2240)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !586, file: !216, line: 856, baseType: !59, size: 64, offset: 2304)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !586, file: !216, line: 857, baseType: !59, size: 64, offset: 2368)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !586, file: !216, line: 858, baseType: !59, size: 64, offset: 2432)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !586, file: !216, line: 865, baseType: !456, size: 32, offset: 2496)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !586, file: !216, line: 867, baseType: !79, size: 32, offset: 2528)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !586, file: !216, line: 869, baseType: !59, size: 64, offset: 2560)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !586, file: !216, line: 869, baseType: !59, size: 64, offset: 2624)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !586, file: !216, line: 869, baseType: !59, size: 64, offset: 2688)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !586, file: !216, line: 869, baseType: !59, size: 64, offset: 2752)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !586, file: !216, line: 870, baseType: !59, size: 64, offset: 2816)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !586, file: !216, line: 870, baseType: !59, size: 64, offset: 2880)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !586, file: !216, line: 870, baseType: !59, size: 64, offset: 2944)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !586, file: !216, line: 871, baseType: !59, size: 64, offset: 3008)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !586, file: !216, line: 871, baseType: !59, size: 64, offset: 3072)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !586, file: !216, line: 871, baseType: !59, size: 64, offset: 3136)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !586, file: !216, line: 871, baseType: !59, size: 64, offset: 3200)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !586, file: !216, line: 873, baseType: !3900, size: 3328, offset: 3264)
!3900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3328, elements: !3901)
!3901 = !{!3902}
!3902 = !DISubrange(count: 52)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !586, file: !216, line: 875, baseType: !3386, size: 1280, offset: 6592)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !586, file: !216, line: 877, baseType: !3905, size: 64, offset: 7872)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !216, line: 877, flags: DIFlagFwdDecl)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !586, file: !216, line: 880, baseType: !3908, size: 1088, offset: 7936)
!3908 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3909, line: 72, baseType: !3910)
!3909 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3909, line: 23, size: 1088, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3919, !3920, !3921, !3922, !3947, !3948, !3949}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3910, file: !3909, line: 28, baseType: !333, size: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3910, file: !3909, line: 38, baseType: !633, size: 64, offset: 64)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3910, file: !3909, line: 40, baseType: !59, size: 64, offset: 128)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3910, file: !3909, line: 43, baseType: !771, size: 320, offset: 192)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3910, file: !3909, line: 44, baseType: !3917, size: 64, offset: 512)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3909, line: 44, flags: DIFlagFwdDecl)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3910, file: !3909, line: 48, baseType: !59, size: 64, offset: 576)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3910, file: !3909, line: 59, baseType: !638, size: 256, offset: 640)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3910, file: !3909, line: 60, baseType: !40, size: 64, offset: 896)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3910, file: !3909, line: 61, baseType: !3923, size: 64, offset: 960)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3925)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3926, line: 13, size: 1216, elements: !3927)
!3926 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3927 = !{!3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3925, file: !3926, line: 14, baseType: !40, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3925, file: !3926, line: 15, baseType: !59, size: 64, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3925, file: !3926, line: 17, baseType: !59, size: 64, offset: 128)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3925, file: !3926, line: 17, baseType: !59, size: 64, offset: 192)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3925, file: !3926, line: 18, baseType: !59, size: 64, offset: 256)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3925, file: !3926, line: 18, baseType: !59, size: 64, offset: 320)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3925, file: !3926, line: 19, baseType: !2491, size: 64, offset: 384)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3925, file: !3926, line: 21, baseType: !1061, size: 64, offset: 448)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3925, file: !3926, line: 23, baseType: !1061, size: 64, offset: 512)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3925, file: !3926, line: 24, baseType: !1061, size: 64, offset: 576)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3925, file: !3926, line: 25, baseType: !1061, size: 64, offset: 640)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3925, file: !3926, line: 26, baseType: !1061, size: 64, offset: 704)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3925, file: !3926, line: 27, baseType: !1061, size: 64, offset: 768)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3925, file: !3926, line: 28, baseType: !1061, size: 64, offset: 832)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3925, file: !3926, line: 29, baseType: !1061, size: 64, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3925, file: !3926, line: 30, baseType: !1061, size: 64, offset: 960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3925, file: !3926, line: 31, baseType: !1061, size: 64, offset: 1024)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3925, file: !3926, line: 32, baseType: !1061, size: 64, offset: 1088)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3925, file: !3926, line: 33, baseType: !1061, size: 64, offset: 1152)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3910, file: !3909, line: 63, baseType: !69, size: 32, offset: 1024)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3910, file: !3909, line: 69, baseType: !113, size: 16, offset: 1056)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3910, file: !3909, line: 70, baseType: !2873, size: 16, offset: 1072)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !586, file: !216, line: 882, baseType: !59, size: 64, offset: 9024)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !586, file: !216, line: 885, baseType: !79, size: 32, offset: 9088)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !586, file: !216, line: 886, baseType: !3953, size: 64, offset: 9152)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !216, line: 732, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !586, file: !216, line: 901, baseType: !914, size: 64, offset: 9216)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !586, file: !216, line: 904, baseType: !610, size: 64, offset: 9280)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !586, file: !216, line: 906, baseType: !3958, size: 64, offset: 9344)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3959, size: 64)
!3959 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !216, line: 906, flags: DIFlagFwdDecl)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !586, file: !216, line: 930, baseType: !69, size: 32, offset: 9408)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !586, file: !216, line: 933, baseType: !69, size: 32, offset: 9440)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !586, file: !216, line: 935, baseType: !3963, size: 64, offset: 9472)
!3963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !240, line: 103, size: 64, elements: !3964)
!3964 = !{!3965}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3963, file: !240, line: 104, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !240, line: 101, flags: DIFlagFwdDecl)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !586, file: !216, line: 940, baseType: !631, size: 64, offset: 9536)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !586, file: !216, line: 942, baseType: !963, size: 256, offset: 9600)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !583, file: !216, line: 986, baseType: !3971, offset: 10240)
!3971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, elements: !708)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !274, file: !275, line: 882, baseType: !582, size: 64, offset: 9792)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !274, file: !275, line: 884, baseType: !42, size: 32, offset: 9856)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !274, file: !275, line: 885, baseType: !42, size: 32, offset: 9888)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !274, file: !275, line: 886, baseType: !42, size: 32, offset: 9920)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !274, file: !275, line: 888, baseType: !42, size: 32, offset: 9952)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !274, file: !275, line: 890, baseType: !59, size: 64, offset: 9984)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !274, file: !275, line: 893, baseType: !7, size: 32, offset: 10048)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !274, file: !275, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !274, file: !275, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !274, file: !275, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !274, file: !275, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !274, file: !275, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !274, file: !275, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !274, file: !275, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !274, file: !275, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !274, file: !275, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !274, file: !275, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !274, file: !275, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !274, file: !275, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !274, file: !275, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !274, file: !275, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !274, file: !275, line: 969, baseType: !59, size: 64, offset: 10176)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !274, file: !275, line: 971, baseType: !3995, size: 448, offset: 10240)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !210, line: 25, size: 448, elements: !3996)
!3996 = !{!3997, !3998, !4003}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3995, file: !210, line: 26, baseType: !59, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3995, file: !210, line: 27, baseType: !3999, size: 64, offset: 64)
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!1061, !4002}
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, scope: !3995, file: !210, line: 28, baseType: !4004, size: 320, offset: 128)
!4004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3995, file: !210, line: 28, size: 320, elements: !4005)
!4005 = !{!4006, !4016, !4041}
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !4004, file: !210, line: 37, baseType: !4007, size: 320)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4004, file: !210, line: 30, size: 320, elements: !4008)
!4008 = !{!4009, !4011, !4012, !4013, !4014, !4015}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !4007, file: !210, line: 31, baseType: !4010, size: 64)
!4010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4007, file: !210, line: 32, baseType: !269, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4007, file: !210, line: 33, baseType: !269, size: 32, offset: 96)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !4007, file: !210, line: 34, baseType: !269, size: 32, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4007, file: !210, line: 35, baseType: !333, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !4007, file: !210, line: 36, baseType: !4010, size: 64, offset: 256)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !4004, file: !210, line: 47, baseType: !4017, size: 192)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4004, file: !210, line: 39, size: 192, elements: !4018)
!4018 = !{!4019, !4020, !4021, !4040}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !4017, file: !210, line: 40, baseType: !448, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4017, file: !210, line: 41, baseType: !209, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, scope: !4017, file: !210, line: 42, baseType: !4022, size: 64, offset: 64)
!4022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4017, file: !210, line: 42, size: 64, elements: !4023)
!4023 = !{!4024, !4032}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !4022, file: !210, line: 43, baseType: !4025, size: 64)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !4027, line: 7, size: 128, elements: !4028)
!4027 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!4028 = !{!4029, !4031}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4026, file: !4027, line: 8, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !57, line: 93, baseType: !63)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4026, file: !4027, line: 9, baseType: !63, size: 64, offset: 64)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !4022, file: !210, line: 44, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !4035, line: 7, size: 64, elements: !4036)
!4035 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!4036 = !{!4037, !4039}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4034, file: !4035, line: 8, baseType: !4038, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !4035, line: 5, baseType: !763)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4034, file: !4035, line: 9, baseType: !763, size: 32, offset: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4017, file: !210, line: 46, baseType: !333, size: 64, offset: 128)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4004, file: !210, line: 55, baseType: !4042, size: 256)
!4042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4004, file: !210, line: 49, size: 256, elements: !4043)
!4043 = !{!4044, !4047, !4048, !4049, !4050}
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !4042, file: !210, line: 50, baseType: !4045, size: 64)
!4045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4046, size: 64)
!4046 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !210, line: 14, flags: DIFlagFwdDecl)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !4042, file: !210, line: 51, baseType: !42, size: 32, offset: 64)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !4042, file: !210, line: 52, baseType: !42, size: 32, offset: 96)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4042, file: !210, line: 53, baseType: !59, size: 64, offset: 128)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4042, file: !210, line: 54, baseType: !59, size: 64, offset: 192)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !274, file: !275, line: 973, baseType: !4052, size: 32, offset: 10688)
!4052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !45, line: 27, baseType: !4053)
!4053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !57, line: 28, baseType: !42)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !274, file: !275, line: 974, baseType: !4052, size: 32, offset: 10720)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !274, file: !275, line: 978, baseType: !59, size: 64, offset: 10752)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !274, file: !275, line: 987, baseType: !273, size: 64, offset: 10816)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !274, file: !275, line: 990, baseType: !273, size: 64, offset: 10880)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !274, file: !275, line: 995, baseType: !117, size: 128, offset: 10944)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !274, file: !275, line: 996, baseType: !117, size: 128, offset: 11072)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !274, file: !275, line: 997, baseType: !273, size: 64, offset: 11200)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !274, file: !275, line: 1005, baseType: !117, size: 128, offset: 11264)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !274, file: !275, line: 1006, baseType: !117, size: 128, offset: 11392)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !274, file: !275, line: 1009, baseType: !678, size: 64, offset: 11520)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !274, file: !275, line: 1010, baseType: !4065, size: 512, offset: 11584)
!4065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !690, size: 512, elements: !695)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !274, file: !275, line: 1011, baseType: !117, size: 128, offset: 12096)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !274, file: !275, line: 1012, baseType: !117, size: 128, offset: 12224)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !274, file: !275, line: 1014, baseType: !1001, size: 64, offset: 12352)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !274, file: !275, line: 1017, baseType: !259, size: 64, offset: 12416)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !274, file: !275, line: 1020, baseType: !259, size: 64, offset: 12480)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !274, file: !275, line: 1023, baseType: !40, size: 64, offset: 12544)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !274, file: !275, line: 1025, baseType: !333, size: 64, offset: 12608)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !274, file: !275, line: 1026, baseType: !333, size: 64, offset: 12672)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !274, file: !275, line: 1031, baseType: !333, size: 64, offset: 12736)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !274, file: !275, line: 1032, baseType: !4076, size: 192, offset: 12800)
!4076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !275, line: 324, size: 192, elements: !4077)
!4077 = !{!4078, !4079, !4080}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4076, file: !275, line: 326, baseType: !333, size: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4076, file: !275, line: 327, baseType: !333, size: 64, offset: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4076, file: !275, line: 328, baseType: !425, size: 32, offset: 128)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !274, file: !275, line: 1041, baseType: !59, size: 64, offset: 12992)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !274, file: !275, line: 1042, baseType: !59, size: 64, offset: 13056)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !274, file: !275, line: 1045, baseType: !333, size: 64, offset: 13120)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !274, file: !275, line: 1048, baseType: !333, size: 64, offset: 13184)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !274, file: !275, line: 1051, baseType: !59, size: 64, offset: 13248)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !274, file: !275, line: 1052, baseType: !59, size: 64, offset: 13312)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !274, file: !275, line: 1055, baseType: !4088, size: 640, offset: 13376)
!4088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !4089, line: 132, size: 640, elements: !4090)
!4089 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!4090 = !{!4091, !4097, !4098}
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !4088, file: !4089, line: 133, baseType: !4092, size: 576)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4093, size: 576, elements: !674)
!4093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !4089, line: 117, size: 192, elements: !4094)
!4094 = !{!4095, !4096}
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !4093, file: !4089, line: 118, baseType: !333, size: 64)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !4093, file: !4089, line: 119, baseType: !462, size: 128, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !4088, file: !4089, line: 134, baseType: !7, size: 32, offset: 576)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !4088, file: !4089, line: 135, baseType: !7, size: 32, offset: 608)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !274, file: !275, line: 1058, baseType: !4100, size: 448, offset: 14016)
!4100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !4089, line: 144, size: 448, elements: !4101)
!4101 = !{!4102, !4103, !4104}
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4100, file: !4089, line: 145, baseType: !618, size: 128, align: 64)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4100, file: !4089, line: 146, baseType: !638, size: 256, offset: 128)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !4100, file: !4089, line: 147, baseType: !7, size: 32, offset: 384)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !274, file: !275, line: 1064, baseType: !722, size: 64, offset: 14464)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !274, file: !275, line: 1067, baseType: !722, size: 64, offset: 14528)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !274, file: !275, line: 1070, baseType: !722, size: 64, offset: 14592)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !274, file: !275, line: 1074, baseType: !755, size: 64, offset: 14656)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !274, file: !275, line: 1084, baseType: !4110, size: 128, offset: 14720)
!4110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 128, elements: !3507)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !274, file: !275, line: 1086, baseType: !4112, size: 64, offset: 14848)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !275, line: 55, flags: DIFlagFwdDecl)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !274, file: !275, line: 1089, baseType: !4115, size: 64, offset: 14912)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !4116, line: 12, size: 64, elements: !4117)
!4116 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!4117 = !{!4118}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !4115, file: !4116, line: 13, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !4116, line: 8, flags: DIFlagFwdDecl)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !274, file: !275, line: 1090, baseType: !4122, size: 128, offset: 14976)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !4123, line: 13, size: 128, elements: !4124)
!4123 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!4124 = !{!4125}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !4122, file: !4123, line: 14, baseType: !117, size: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !274, file: !275, line: 1097, baseType: !4127, size: 64, offset: 15104)
!4127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4128, size: 64)
!4128 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !275, line: 50, flags: DIFlagFwdDecl)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !274, file: !275, line: 1100, baseType: !4130, size: 64, offset: 15168)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !275, line: 1100, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !274, file: !275, line: 1103, baseType: !4133, size: 64, offset: 15232)
!4133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4134, size: 64)
!4134 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !275, line: 53, flags: DIFlagFwdDecl)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !274, file: !275, line: 1107, baseType: !4136, size: 64, offset: 15296)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !4138, line: 31, size: 576, elements: !4139)
!4138 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!4139 = !{!4140, !4141, !4162, !4165, !4168, !4169, !4172, !4175, !4176}
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4137, file: !4138, line: 32, baseType: !281, size: 32)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !4137, file: !4138, line: 33, baseType: !4142, size: 64, offset: 64)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !4144, line: 24, size: 3456, elements: !4145)
!4144 = !DIFile(filename: "./include/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d7c7738a60e085c4dfa8b09989fd6dce")
!4145 = !{!4146, !4159, !4160, !4161}
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4143, file: !4144, line: 25, baseType: !4147, size: 3120)
!4147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "new_utsname", file: !4148, line: 25, size: 3120, elements: !4149)
!4148 = !DIFile(filename: "./include/uapi/linux/utsname.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ce568c2f88d7dce3b32bd7d3c8b00b87")
!4149 = !{!4150, !4154, !4155, !4156, !4157, !4158}
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "sysname", scope: !4147, file: !4148, line: 26, baseType: !4151, size: 520)
!4151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 520, elements: !4152)
!4152 = !{!4153}
!4153 = !DISubrange(count: 65)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !4147, file: !4148, line: 27, baseType: !4151, size: 520, offset: 520)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4147, file: !4148, line: 28, baseType: !4151, size: 520, offset: 1040)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4147, file: !4148, line: 29, baseType: !4151, size: 520, offset: 1560)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !4147, file: !4148, line: 30, baseType: !4151, size: 520, offset: 2080)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "domainname", scope: !4147, file: !4148, line: 31, baseType: !4151, size: 520, offset: 2600)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4143, file: !4144, line: 26, baseType: !914, size: 64, offset: 3136)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4143, file: !4144, line: 27, baseType: !1046, size: 64, offset: 3200)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4143, file: !4144, line: 28, baseType: !947, size: 192, offset: 3264)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !4137, file: !4138, line: 34, baseType: !4163, size: 64, offset: 128)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !4138, line: 10, flags: DIFlagFwdDecl)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !4137, file: !4138, line: 35, baseType: !4166, size: 64, offset: 192)
!4166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4167, size: 64)
!4167 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !4138, line: 8, flags: DIFlagFwdDecl)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !4137, file: !4138, line: 36, baseType: !706, size: 64, offset: 256)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !4137, file: !4138, line: 37, baseType: !4170, size: 64, offset: 320)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !757, line: 34, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !4137, file: !4138, line: 38, baseType: !4173, size: 64, offset: 384)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !4138, line: 38, flags: DIFlagFwdDecl)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !4137, file: !4138, line: 39, baseType: !4173, size: 64, offset: 448)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !4137, file: !4138, line: 40, baseType: !4177, size: 64, offset: 512)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !4179, line: 771, size: 384, elements: !4180)
!4179 = !DIFile(filename: "./include/linux/cgroup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97aaa852548eda64085953d0d92854db")
!4180 = !{!4181, !4182, !4183, !4184}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4178, file: !4179, line: 772, baseType: !947, size: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !4178, file: !4179, line: 773, baseType: !914, size: 64, offset: 192)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !4178, file: !4179, line: 774, baseType: !1046, size: 64, offset: 256)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "root_cset", scope: !4178, file: !4179, line: 775, baseType: !4185, size: 64, offset: 320)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !4187, line: 209, size: 4736, elements: !4188)
!4187 = !DIFile(filename: "./include/linux/cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdd4e53e0d7da49aa5e005884486de6")
!4188 = !{!4189, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444}
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4186, file: !4187, line: 215, baseType: !4190, size: 896)
!4190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4191, size: 896, elements: !4248)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys_state", file: !4187, line: 152, size: 1600, elements: !4193)
!4193 = !{!4194, !4299, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4423}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup", scope: !4192, file: !4187, line: 154, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup", file: !4187, line: 389, size: 7872, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4217, !4218, !4222, !4223, !4224, !4225, !4226, !4227, !4245, !4246, !4250, !4251, !4252, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4286, !4289, !4290, !4297}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !4196, file: !4187, line: 391, baseType: !4192, size: 1600)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4196, file: !4187, line: 393, baseType: !59, size: 64, offset: 1600)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !4196, file: !4187, line: 401, baseType: !42, size: 32, offset: 1664)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "max_depth", scope: !4196, file: !4187, line: 404, baseType: !42, size: 32, offset: 1696)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "nr_descendants", scope: !4196, file: !4187, line: 417, baseType: !42, size: 32, offset: 1728)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dying_descendants", scope: !4196, file: !4187, line: 418, baseType: !42, size: 32, offset: 1760)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "max_descendants", scope: !4196, file: !4187, line: 419, baseType: !42, size: 32, offset: 1792)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_csets", scope: !4196, file: !4187, line: 432, baseType: !42, size: 32, offset: 1824)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_domain_children", scope: !4196, file: !4187, line: 433, baseType: !42, size: 32, offset: 1856)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "nr_populated_threaded_children", scope: !4196, file: !4187, line: 434, baseType: !42, size: 32, offset: 1888)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threaded_children", scope: !4196, file: !4187, line: 436, baseType: !42, size: 32, offset: 1920)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "kill_seq", scope: !4196, file: !4187, line: 439, baseType: !7, size: 32, offset: 1952)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4196, file: !4187, line: 441, baseType: !2584, size: 64, offset: 1984)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "procs_file", scope: !4196, file: !4187, line: 442, baseType: !4212, size: 448, offset: 2048)
!4212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_file", file: !4187, line: 138, size: 448, elements: !4213)
!4213 = !{!4214, !4215, !4216}
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4212, file: !4187, line: 140, baseType: !2584, size: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "notified_at", scope: !4212, file: !4187, line: 141, baseType: !59, size: 64, offset: 64)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "notify_timer", scope: !4212, file: !4187, line: 142, baseType: !2320, size: 320, offset: 128)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "events_file", scope: !4196, file: !4187, line: 443, baseType: !4212, size: 448, offset: 2496)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "psi_files", scope: !4196, file: !4187, line: 446, baseType: !4219, offset: 2944)
!4219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4212, elements: !4220)
!4220 = !{!4221}
!4221 = !DISubrange(count: 0)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_control", scope: !4196, file: !4187, line: 455, baseType: !113, size: 16, offset: 2944)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_ss_mask", scope: !4196, file: !4187, line: 456, baseType: !113, size: 16, offset: 2960)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_control", scope: !4196, file: !4187, line: 457, baseType: !113, size: 16, offset: 2976)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "old_subtree_ss_mask", scope: !4196, file: !4187, line: 458, baseType: !113, size: 16, offset: 2992)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "subsys", scope: !4196, file: !4187, line: 461, baseType: !4190, size: 896, offset: 3008)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4196, file: !4187, line: 463, baseType: !4228, size: 64, offset: 3904)
!4228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4229, size: 64)
!4229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_root", file: !4187, line: 537, size: 41664, elements: !4230)
!4230 = !{!4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4244}
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "kf_root", scope: !4229, file: !4187, line: 538, baseType: !2604, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_mask", scope: !4229, file: !4187, line: 541, baseType: !7, size: 32, offset: 64)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "hierarchy_id", scope: !4229, file: !4187, line: 544, baseType: !42, size: 32, offset: 96)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "root_list", scope: !4229, file: !4187, line: 547, baseType: !117, size: 128, offset: 128)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4229, file: !4187, line: 548, baseType: !618, size: 128, align: 64, offset: 256)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp", scope: !4229, file: !4187, line: 555, baseType: !4196, size: 7872, offset: 384)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_ancestor_storage", scope: !4229, file: !4187, line: 558, baseType: !4195, size: 64, offset: 8256)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cgrps", scope: !4229, file: !4187, line: 561, baseType: !69, size: 32, offset: 8320)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4229, file: !4187, line: 564, baseType: !7, size: 32, offset: 8352)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_path", scope: !4229, file: !4187, line: 567, baseType: !4241, size: 32768, offset: 8384)
!4241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 32768, elements: !4242)
!4242 = !{!4243}
!4243 = !DISubrange(count: 4096)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4229, file: !4187, line: 570, baseType: !3412, size: 512, offset: 41152)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "cset_links", scope: !4196, file: !4187, line: 469, baseType: !117, size: 128, offset: 3968)
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "e_csets", scope: !4196, file: !4187, line: 478, baseType: !4247, size: 1792, offset: 4096)
!4247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 1792, elements: !4248)
!4248 = !{!4249}
!4249 = !DISubrange(count: 14)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cgrp", scope: !4196, file: !4187, line: 487, baseType: !4195, size: 64, offset: 5888)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "old_dom_cgrp", scope: !4196, file: !4187, line: 488, baseType: !4195, size: 64, offset: 5952)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_cpu", scope: !4196, file: !4187, line: 491, baseType: !4253, size: 64, offset: 6016)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_rstat_cpu", file: !4187, line: 327, size: 896, elements: !4255)
!4255 = !{!4256, !4259, !4269, !4270, !4271, !4272, !4273}
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "bsync", scope: !4254, file: !4187, line: 332, baseType: !4257)
!4257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "u64_stats_sync", file: !4258, line: 64, elements: !603)
!4258 = !DIFile(filename: "./include/linux/u64_stats_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3da4ff7bace7f53a3466d26e2eb40342")
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4254, file: !4187, line: 333, baseType: !4260, size: 192)
!4260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_base_stat", file: !4187, line: 299, size: 192, elements: !4261)
!4261 = !{!4262}
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "cputime", scope: !4260, file: !4187, line: 300, baseType: !4263, size: 192)
!4263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime", file: !4264, line: 17, size: 192, elements: !4265)
!4264 = !DIFile(filename: "./include/linux/sched/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b17de761385ab6ff6e0b9d14b072923b")
!4265 = !{!4266, !4267, !4268}
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4263, file: !4264, line: 18, baseType: !333, size: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4263, file: !4264, line: 19, baseType: !333, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4263, file: !4264, line: 20, baseType: !335, size: 64, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4254, file: !4187, line: 339, baseType: !4260, size: 192, offset: 192)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_bstat", scope: !4254, file: !4187, line: 347, baseType: !4260, size: 192, offset: 384)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "last_subtree_bstat", scope: !4254, file: !4187, line: 353, baseType: !4260, size: 192, offset: 576)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "updated_children", scope: !4254, file: !4187, line: 366, baseType: !4195, size: 64, offset: 768)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "updated_next", scope: !4254, file: !4187, line: 367, baseType: !4195, size: 64, offset: 832)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_list", scope: !4196, file: !4187, line: 492, baseType: !117, size: 128, offset: 6080)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "last_bstat", scope: !4196, file: !4187, line: 495, baseType: !4260, size: 192, offset: 6208)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "bstat", scope: !4196, file: !4187, line: 496, baseType: !4260, size: 192, offset: 6400)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4196, file: !4187, line: 497, baseType: !4076, size: 192, offset: 6592)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "pidlists", scope: !4196, file: !4187, line: 503, baseType: !117, size: 128, offset: 6784)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "pidlist_mutex", scope: !4196, file: !4187, line: 504, baseType: !638, size: 256, offset: 6912)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "offline_waitq", scope: !4196, file: !4187, line: 507, baseType: !74, size: 192, offset: 7168)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "release_agent_work", scope: !4196, file: !4187, line: 510, baseType: !963, size: 256, offset: 7360)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "psi", scope: !4196, file: !4187, line: 513, baseType: !4283, size: 64, offset: 7616)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "psi_group", file: !4285, line: 214, elements: !603)
!4285 = !DIFile(filename: "./include/linux/psi_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3153bfbcc4370f75208e4d12aca55f1")
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "bpf", scope: !4196, file: !4187, line: 516, baseType: !4287, offset: 7680)
!4287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_bpf", file: !4288, line: 76, elements: !603)
!4288 = !DIFile(filename: "./include/linux/bpf-cgroup-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cdb48335f2a87696923f57fec8235c0")
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "congestion_count", scope: !4196, file: !4187, line: 519, baseType: !69, size: 32, offset: 7680)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "freezer", scope: !4196, file: !4187, line: 522, baseType: !4291, size: 128, offset: 7712)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_freezer_state", file: !4187, line: 370, size: 128, elements: !4292)
!4292 = !{!4293, !4294, !4295, !4296}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4291, file: !4187, line: 372, baseType: !830, size: 8)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "e_freeze", scope: !4291, file: !4187, line: 375, baseType: !42, size: 32, offset: 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_descendants", scope: !4291, file: !4187, line: 380, baseType: !42, size: 32, offset: 64)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_frozen_tasks", scope: !4291, file: !4187, line: 386, baseType: !42, size: 32, offset: 96)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "ancestors", scope: !4196, file: !4187, line: 529, baseType: !4298, offset: 7872)
!4298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4195, elements: !708)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4192, file: !4187, line: 157, baseType: !4300, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_subsys", file: !4187, line: 669, size: 1984, elements: !4302)
!4302 = !{!4303, !4307, !4311, !4315, !4316, !4317, !4318, !4322, !4326, !4327, !4333, !4337, !4338, !4339, !4343, !4347, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4361, !4368, !4369, !4406, !4407}
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "css_alloc", scope: !4301, file: !4187, line: 670, baseType: !4304, size: 64)
!4304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4305, size: 64)
!4305 = !DISubroutineType(types: !4306)
!4306 = !{!4191, !4191}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "css_online", scope: !4301, file: !4187, line: 671, baseType: !4308, size: 64, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4309, size: 64)
!4309 = !DISubroutineType(types: !4310)
!4310 = !{!42, !4191}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "css_offline", scope: !4301, file: !4187, line: 672, baseType: !4312, size: 64, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{null, !4191}
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "css_released", scope: !4301, file: !4187, line: 673, baseType: !4312, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "css_free", scope: !4301, file: !4187, line: 674, baseType: !4312, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "css_reset", scope: !4301, file: !4187, line: 675, baseType: !4312, size: 64, offset: 320)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "css_rstat_flush", scope: !4301, file: !4187, line: 676, baseType: !4319, size: 64, offset: 384)
!4319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4320, size: 64)
!4320 = !DISubroutineType(types: !4321)
!4321 = !{null, !4191, !42}
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "css_extra_stat_show", scope: !4301, file: !4187, line: 677, baseType: !4323, size: 64, offset: 448)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DISubroutineType(types: !4325)
!4325 = !{!42, !2629, !4191}
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "css_local_stat_show", scope: !4301, file: !4187, line: 679, baseType: !4323, size: 64, offset: 512)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "can_attach", scope: !4301, file: !4187, line: 682, baseType: !4328, size: 64, offset: 576)
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DISubroutineType(types: !4330)
!4330 = !{!42, !4331}
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_taskset", file: !4187, line: 30, flags: DIFlagFwdDecl)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_attach", scope: !4301, file: !4187, line: 683, baseType: !4334, size: 64, offset: 640)
!4334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4335, size: 64)
!4335 = !DISubroutineType(types: !4336)
!4336 = !{null, !4331}
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !4301, file: !4187, line: 684, baseType: !4334, size: 64, offset: 704)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "post_attach", scope: !4301, file: !4187, line: 685, baseType: !3060, size: 64, offset: 768)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "can_fork", scope: !4301, file: !4187, line: 686, baseType: !4340, size: 64, offset: 832)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!42, !273, !4185}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "cancel_fork", scope: !4301, file: !4187, line: 688, baseType: !4344, size: 64, offset: 896)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{null, !273, !4185}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "fork", scope: !4301, file: !4187, line: 689, baseType: !4348, size: 64, offset: 960)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{null, !273}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !4301, file: !4187, line: 690, baseType: !4348, size: 64, offset: 1024)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4301, file: !4187, line: 691, baseType: !4348, size: 64, offset: 1088)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !4301, file: !4187, line: 692, baseType: !4312, size: 64, offset: 1152)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4301, file: !4187, line: 694, baseType: !830, size: 1, offset: 1216, flags: DIFlagBitField, extraData: i64 1216)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "implicit_on_dfl", scope: !4301, file: !4187, line: 707, baseType: !830, size: 1, offset: 1217, flags: DIFlagBitField, extraData: i64 1216)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "threaded", scope: !4301, file: !4187, line: 719, baseType: !830, size: 1, offset: 1218, flags: DIFlagBitField, extraData: i64 1216)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4301, file: !4187, line: 722, baseType: !42, size: 32, offset: 1248)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4301, file: !4187, line: 723, baseType: !36, size: 64, offset: 1280)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_name", scope: !4301, file: !4187, line: 726, baseType: !36, size: 64, offset: 1344)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4301, file: !4187, line: 729, baseType: !4228, size: 64, offset: 1408)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "css_idr", scope: !4301, file: !4187, line: 732, baseType: !4362, size: 192, offset: 1472)
!4362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4363, line: 19, size: 192, elements: !4364)
!4363 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4364 = !{!4365, !4366, !4367}
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4362, file: !4363, line: 20, baseType: !1331, size: 128)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4362, file: !4363, line: 21, baseType: !7, size: 32, offset: 128)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4362, file: !4363, line: 22, baseType: !7, size: 32, offset: 160)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cfts", scope: !4301, file: !4187, line: 738, baseType: !117, size: 128, offset: 1664)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cftypes", scope: !4301, file: !4187, line: 744, baseType: !4370, size: 64, offset: 1792)
!4370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4371, size: 64)
!4371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cftype", file: !4187, line: 580, size: 1728, elements: !4372)
!4372 = !{!4373, !4374, !4375, !4376, !4377, !4378, !4379, !4380, !4382, !4383, !4384, !4388, !4392, !4393, !4394, !4395, !4396, !4400, !4404, !4405}
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4371, file: !4187, line: 586, baseType: !3412, size: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4371, file: !4187, line: 587, baseType: !59, size: 64, offset: 512)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !4371, file: !4187, line: 593, baseType: !55, size: 64, offset: 576)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4371, file: !4187, line: 596, baseType: !7, size: 32, offset: 640)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "file_offset", scope: !4371, file: !4187, line: 604, baseType: !7, size: 32, offset: 672)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4371, file: !4187, line: 610, baseType: !4300, size: 64, offset: 704)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4371, file: !4187, line: 611, baseType: !117, size: 128, offset: 768)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "kf_ops", scope: !4371, file: !4187, line: 612, baseType: !4381, size: 64, offset: 896)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4371, file: !4187, line: 614, baseType: !2620, size: 64, offset: 960)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4371, file: !4187, line: 615, baseType: !2678, size: 64, offset: 1024)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "read_u64", scope: !4371, file: !4187, line: 621, baseType: !4385, size: 64, offset: 1088)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!333, !4191, !4370}
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "read_s64", scope: !4371, file: !4187, line: 625, baseType: !4389, size: 64, offset: 1152)
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{!344, !4191, !4370}
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4371, file: !4187, line: 628, baseType: !2659, size: 64, offset: 1216)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4371, file: !4187, line: 631, baseType: !2647, size: 64, offset: 1280)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4371, file: !4187, line: 632, baseType: !2655, size: 64, offset: 1344)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4371, file: !4187, line: 633, baseType: !2651, size: 64, offset: 1408)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "write_u64", scope: !4371, file: !4187, line: 640, baseType: !4397, size: 64, offset: 1472)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!42, !4191, !4370, !333}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "write_s64", scope: !4371, file: !4187, line: 645, baseType: !4401, size: 64, offset: 1536)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!42, !4191, !4370, !344}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4371, file: !4187, line: 654, baseType: !2686, size: 64, offset: 1600)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4371, file: !4187, line: 657, baseType: !2693, size: 64, offset: 1664)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cftypes", scope: !4301, file: !4187, line: 745, baseType: !4370, size: 64, offset: 1856)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "depends_on", scope: !4301, file: !4187, line: 754, baseType: !7, size: 32, offset: 1920)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !4192, file: !4187, line: 160, baseType: !1574, size: 128, offset: 128)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4192, file: !4187, line: 163, baseType: !117, size: 128, offset: 256)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4192, file: !4187, line: 164, baseType: !117, size: 128, offset: 384)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "rstat_css_node", scope: !4192, file: !4187, line: 167, baseType: !117, size: 128, offset: 512)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4192, file: !4187, line: 173, baseType: !42, size: 32, offset: 640)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4192, file: !4187, line: 175, baseType: !7, size: 32, offset: 672)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "serial_nr", scope: !4192, file: !4187, line: 183, baseType: !333, size: 64, offset: 704)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "online_cnt", scope: !4192, file: !4187, line: 189, baseType: !69, size: 32, offset: 768)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !4192, file: !4187, line: 192, baseType: !963, size: 256, offset: 832)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_rwork", scope: !4192, file: !4187, line: 193, baseType: !4418, size: 448, offset: 1088)
!4418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_work", file: !964, line: 120, size: 448, elements: !4419)
!4419 = !{!4420, !4421, !4422}
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4418, file: !964, line: 121, baseType: !963, size: 256)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4418, file: !964, line: 122, baseType: !618, size: 128, align: 64, offset: 256)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !4418, file: !964, line: 125, baseType: !3018, size: 64, offset: 384)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4192, file: !4187, line: 199, baseType: !4191, size: 64, offset: 1536)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4186, file: !4187, line: 218, baseType: !281, size: 32, offset: 896)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "dom_cset", scope: !4186, file: !4187, line: 226, baseType: !4185, size: 64, offset: 960)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "dfl_cgrp", scope: !4186, file: !4187, line: 229, baseType: !4195, size: 64, offset: 1024)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tasks", scope: !4186, file: !4187, line: 232, baseType: !42, size: 32, offset: 1088)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !4186, file: !4187, line: 241, baseType: !117, size: 128, offset: 1152)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "mg_tasks", scope: !4186, file: !4187, line: 242, baseType: !117, size: 128, offset: 1280)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "dying_tasks", scope: !4186, file: !4187, line: 243, baseType: !117, size: 128, offset: 1408)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "task_iters", scope: !4186, file: !4187, line: 246, baseType: !117, size: 128, offset: 1536)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "e_cset_node", scope: !4186, file: !4187, line: 255, baseType: !4247, size: 1792, offset: 1664)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets", scope: !4186, file: !4187, line: 258, baseType: !117, size: 128, offset: 3456)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "threaded_csets_node", scope: !4186, file: !4187, line: 259, baseType: !117, size: 128, offset: 3584)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "hlist", scope: !4186, file: !4187, line: 265, baseType: !690, size: 128, offset: 3712)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "cgrp_links", scope: !4186, file: !4187, line: 271, baseType: !117, size: 128, offset: 3840)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_preload_node", scope: !4186, file: !4187, line: 277, baseType: !117, size: 128, offset: 3968)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_preload_node", scope: !4186, file: !4187, line: 278, baseType: !117, size: 128, offset: 4096)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "mg_node", scope: !4186, file: !4187, line: 279, baseType: !117, size: 128, offset: 4224)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "mg_src_cgrp", scope: !4186, file: !4187, line: 288, baseType: !4195, size: 64, offset: 4352)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cgrp", scope: !4186, file: !4187, line: 289, baseType: !4195, size: 64, offset: 4416)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "mg_dst_cset", scope: !4186, file: !4187, line: 290, baseType: !4185, size: 64, offset: 4480)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !4186, file: !4187, line: 293, baseType: !830, size: 8, offset: 4544)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !4186, file: !4187, line: 296, baseType: !618, size: 128, align: 64, offset: 4608)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !274, file: !275, line: 1110, baseType: !4446, size: 64, offset: 15360)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !4448, line: 93, size: 8768, elements: !4449)
!4448 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!4449 = !{!4450, !4451, !4452, !4453, !4454, !4455, !4456, !4457, !4468, !4469, !4470, !4471, !4472, !4473, !4474, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4498, !4507, !4508, !4510, !4511, !4512, !4515, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4531, !4532, !4533, !4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4553, !4554, !4561, !4571, !4633, !4634, !4637, !4638, !4639, !4640, !4641, !4642}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !4447, file: !4448, line: 94, baseType: !281, size: 32)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !4447, file: !4448, line: 95, baseType: !69, size: 32, offset: 32)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4447, file: !4448, line: 96, baseType: !42, size: 32, offset: 64)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !4447, file: !4448, line: 97, baseType: !42, size: 32, offset: 96)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !4447, file: !4448, line: 98, baseType: !117, size: 128, offset: 128)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !4447, file: !4448, line: 100, baseType: !74, size: 192, offset: 256)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !4447, file: !4448, line: 103, baseType: !273, size: 64, offset: 448)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !4447, file: !4448, line: 106, baseType: !4458, size: 192, offset: 512)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !4459, line: 32, size: 192, elements: !4460)
!4459 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!4460 = !{!4461, !4462}
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4458, file: !4459, line: 33, baseType: !117, size: 128)
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !4458, file: !4459, line: 34, baseType: !4463, size: 64, offset: 128)
!4463 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !4464, line: 25, baseType: !4465)
!4464 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!4465 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4464, line: 23, size: 64, elements: !4466)
!4466 = !{!4467}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !4465, file: !4464, line: 24, baseType: !533, size: 64)
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !4447, file: !4448, line: 109, baseType: !686, size: 64, offset: 704)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !4447, file: !4448, line: 112, baseType: !42, size: 32, offset: 768)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !4447, file: !4448, line: 114, baseType: !42, size: 32, offset: 800)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !4447, file: !4448, line: 115, baseType: !273, size: 64, offset: 832)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !4447, file: !4448, line: 118, baseType: !42, size: 32, offset: 896)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4447, file: !4448, line: 119, baseType: !7, size: 32, offset: 928)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !4447, file: !4448, line: 121, baseType: !4475, size: 64, offset: 960)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !4448, line: 80, size: 448, elements: !4477)
!4477 = !{!4478, !4479, !4485}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !4476, file: !4448, line: 81, baseType: !69, size: 32)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !4476, file: !4448, line: 82, baseType: !4480, size: 128, offset: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !4448, line: 75, size: 128, elements: !4481)
!4481 = !{!4482, !4483}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4480, file: !4448, line: 76, baseType: !273, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4480, file: !4448, line: 77, baseType: !4484, size: 64, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !4476, file: !4448, line: 83, baseType: !1002, size: 256, offset: 192)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !4447, file: !4448, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !4447, file: !4448, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !4447, file: !4448, line: 138, baseType: !7, size: 32, offset: 1056)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !4447, file: !4448, line: 139, baseType: !117, size: 128, offset: 1088)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !4447, file: !4448, line: 142, baseType: !400, size: 512, offset: 1216)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !4447, file: !4448, line: 143, baseType: !408, size: 64, offset: 1728)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !4447, file: !4448, line: 150, baseType: !4493, size: 256, offset: 1792)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4494, size: 256, elements: !2857)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !4448, line: 38, size: 128, elements: !4495)
!4495 = !{!4496, !4497}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !4494, file: !4448, line: 39, baseType: !333, size: 64)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !4494, file: !4448, line: 40, baseType: !333, size: 64, offset: 64)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !4447, file: !4448, line: 156, baseType: !4499, size: 192, offset: 2048)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !4448, line: 66, size: 192, elements: !4500)
!4500 = !{!4501}
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !4499, file: !4448, line: 67, baseType: !4502, size: 192)
!4502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !4448, line: 47, size: 192, elements: !4503)
!4503 = !{!4504, !4505, !4506}
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4502, file: !4448, line: 48, baseType: !633, size: 64)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4502, file: !4448, line: 49, baseType: !633, size: 64, offset: 64)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !4502, file: !4448, line: 50, baseType: !633, size: 64, offset: 128)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !4447, file: !4448, line: 160, baseType: !4088, size: 640, offset: 2240)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !4447, file: !4448, line: 163, baseType: !4509, size: 256, offset: 2880)
!4509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !678, size: 256, elements: !695)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !4447, file: !4448, line: 169, baseType: !678, size: 64, offset: 3136)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !4447, file: !4448, line: 172, baseType: !42, size: 32, offset: 3200)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !4447, file: !4448, line: 174, baseType: !4513, size: 64, offset: 3264)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !4448, line: 174, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !4447, file: !4448, line: 185, baseType: !4516, size: 64, offset: 3328)
!4516 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !452, line: 860, baseType: !4517)
!4517 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !452, line: 853, size: 64, elements: !4518)
!4518 = !{!4519, !4520}
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !4517, file: !452, line: 858, baseType: !1103, size: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4517, file: !452, line: 859, baseType: !79, size: 32, offset: 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !4447, file: !4448, line: 186, baseType: !333, size: 64, offset: 3392)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !4447, file: !4448, line: 186, baseType: !333, size: 64, offset: 3456)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !4447, file: !4448, line: 186, baseType: !333, size: 64, offset: 3520)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !4447, file: !4448, line: 186, baseType: !333, size: 64, offset: 3584)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !4447, file: !4448, line: 187, baseType: !333, size: 64, offset: 3648)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !4447, file: !4448, line: 188, baseType: !333, size: 64, offset: 3712)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !4447, file: !4448, line: 189, baseType: !4076, size: 192, offset: 3776)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4447, file: !4448, line: 190, baseType: !59, size: 64, offset: 3968)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4447, file: !4448, line: 190, baseType: !59, size: 64, offset: 4032)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !4447, file: !4448, line: 190, baseType: !59, size: 64, offset: 4096)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !4447, file: !4448, line: 190, baseType: !59, size: 64, offset: 4160)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !4447, file: !4448, line: 191, baseType: !59, size: 64, offset: 4224)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !4447, file: !4448, line: 191, baseType: !59, size: 64, offset: 4288)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !4447, file: !4448, line: 191, baseType: !59, size: 64, offset: 4352)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !4447, file: !4448, line: 191, baseType: !59, size: 64, offset: 4416)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !4447, file: !4448, line: 192, baseType: !59, size: 64, offset: 4480)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !4447, file: !4448, line: 192, baseType: !59, size: 64, offset: 4544)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !4447, file: !4448, line: 192, baseType: !59, size: 64, offset: 4608)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !4447, file: !4448, line: 192, baseType: !59, size: 64, offset: 4672)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !4447, file: !4448, line: 193, baseType: !59, size: 64, offset: 4736)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !4447, file: !4448, line: 193, baseType: !59, size: 64, offset: 4800)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !4447, file: !4448, line: 194, baseType: !4543, size: 448, offset: 4864)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !4544, line: 12, size: 448, elements: !4545)
!4544 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!4545 = !{!4546, !4547, !4548, !4549, !4550, !4551, !4552}
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !4543, file: !4544, line: 15, baseType: !333, size: 64)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !4543, file: !4544, line: 17, baseType: !333, size: 64, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !4543, file: !4544, line: 19, baseType: !333, size: 64, offset: 128)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !4543, file: !4544, line: 21, baseType: !333, size: 64, offset: 192)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4543, file: !4544, line: 29, baseType: !333, size: 64, offset: 256)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4543, file: !4544, line: 35, baseType: !333, size: 64, offset: 320)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4543, file: !4544, line: 44, baseType: !333, size: 64, offset: 384)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !4447, file: !4448, line: 202, baseType: !335, size: 64, offset: 5312)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !4447, file: !4448, line: 213, baseType: !4555, size: 2048, offset: 5376)
!4555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4556, size: 2048, elements: !3507)
!4556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !4557, line: 43, size: 128, elements: !4558)
!4557 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!4558 = !{!4559, !4560}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !4556, file: !4557, line: 44, baseType: !58, size: 64)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !4556, file: !4557, line: 45, baseType: !58, size: 64, offset: 64)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !4447, file: !4448, line: 216, baseType: !4562, size: 448, offset: 7424)
!4562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !4448, line: 30, size: 448, elements: !4563)
!4563 = !{!4564, !4565, !4566, !4567, !4568, !4569, !4570}
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4562, file: !4448, line: 31, baseType: !42, size: 32)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4562, file: !4448, line: 32, baseType: !1061, size: 64, offset: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !4562, file: !4448, line: 33, baseType: !59, size: 64, offset: 128)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4562, file: !4448, line: 34, baseType: !333, size: 64, offset: 192)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4562, file: !4448, line: 34, baseType: !333, size: 64, offset: 256)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4562, file: !4448, line: 35, baseType: !59, size: 64, offset: 320)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4562, file: !4448, line: 35, baseType: !59, size: 64, offset: 384)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !4447, file: !4448, line: 219, baseType: !4572, size: 64, offset: 7872)
!4572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4573, size: 64)
!4573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !4574, line: 41, size: 3456, elements: !4575)
!4574 = !DIFile(filename: "./include/uapi/linux/taskstats.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "406c164c2424c0b62d3cc8974eb1f3c8")
!4575 = !{!4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4592, !4593, !4594, !4595, !4596, !4597, !4598, !4599, !4600, !4601, !4602, !4603, !4604, !4605, !4606, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632}
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4573, file: !4574, line: 47, baseType: !114, size: 16)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !4573, file: !4574, line: 48, baseType: !270, size: 32, offset: 32)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !4573, file: !4574, line: 54, baseType: !105, size: 8, offset: 64)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "ac_nice", scope: !4573, file: !4574, line: 55, baseType: !105, size: 8, offset: 72)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_count", scope: !4573, file: !4574, line: 73, baseType: !334, size: 64, align: 64, offset: 128)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_delay_total", scope: !4573, file: !4574, line: 74, baseType: !334, size: 64, offset: 192)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_count", scope: !4573, file: !4574, line: 81, baseType: !334, size: 64, offset: 256)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "blkio_delay_total", scope: !4573, file: !4574, line: 82, baseType: !334, size: 64, offset: 320)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_count", scope: !4573, file: !4574, line: 85, baseType: !334, size: 64, offset: 384)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "swapin_delay_total", scope: !4573, file: !4574, line: 86, baseType: !334, size: 64, offset: 448)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_real_total", scope: !4573, file: !4574, line: 94, baseType: !334, size: 64, offset: 512)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_run_virtual_total", scope: !4573, file: !4574, line: 102, baseType: !334, size: 64, offset: 576)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "ac_comm", scope: !4573, file: !4574, line: 107, baseType: !3497, size: 256, offset: 640)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "ac_sched", scope: !4573, file: !4574, line: 108, baseType: !105, size: 8, align: 64, offset: 896)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pad", scope: !4573, file: !4574, line: 110, baseType: !4591, size: 24, offset: 904)
!4591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 24, elements: !674)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "ac_uid", scope: !4573, file: !4574, line: 111, baseType: !270, size: 32, align: 64, offset: 960)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "ac_gid", scope: !4573, file: !4574, line: 113, baseType: !270, size: 32, offset: 992)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "ac_pid", scope: !4573, file: !4574, line: 114, baseType: !270, size: 32, offset: 1024)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "ac_ppid", scope: !4573, file: !4574, line: 115, baseType: !270, size: 32, offset: 1056)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime", scope: !4573, file: !4574, line: 117, baseType: !270, size: 32, offset: 1088)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "ac_etime", scope: !4573, file: !4574, line: 118, baseType: !334, size: 64, align: 64, offset: 1152)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !4573, file: !4574, line: 120, baseType: !334, size: 64, offset: 1216)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !4573, file: !4574, line: 121, baseType: !334, size: 64, offset: 1280)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !4573, file: !4574, line: 122, baseType: !334, size: 64, offset: 1344)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !4573, file: !4574, line: 123, baseType: !334, size: 64, offset: 1408)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "coremem", scope: !4573, file: !4574, line: 133, baseType: !334, size: 64, offset: 1472)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "virtmem", scope: !4573, file: !4574, line: 137, baseType: !334, size: 64, offset: 1536)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !4573, file: !4574, line: 142, baseType: !334, size: 64, offset: 1600)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !4573, file: !4574, line: 143, baseType: !334, size: 64, offset: 1664)
!4606 = !DIDerivedType(tag: DW_TAG_member, name: "read_char", scope: !4573, file: !4574, line: 146, baseType: !334, size: 64, offset: 1728)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "write_char", scope: !4573, file: !4574, line: 147, baseType: !334, size: 64, offset: 1792)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "read_syscalls", scope: !4573, file: !4574, line: 148, baseType: !334, size: 64, offset: 1856)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "write_syscalls", scope: !4573, file: !4574, line: 149, baseType: !334, size: 64, offset: 1920)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !4573, file: !4574, line: 154, baseType: !334, size: 64, offset: 1984)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !4573, file: !4574, line: 155, baseType: !334, size: 64, offset: 2048)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !4573, file: !4574, line: 156, baseType: !334, size: 64, offset: 2112)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !4573, file: !4574, line: 158, baseType: !334, size: 64, offset: 2176)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !4573, file: !4574, line: 159, baseType: !334, size: 64, offset: 2240)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utimescaled", scope: !4573, file: !4574, line: 162, baseType: !334, size: 64, offset: 2304)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stimescaled", scope: !4573, file: !4574, line: 163, baseType: !334, size: 64, offset: 2368)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_scaled_run_real_total", scope: !4573, file: !4574, line: 164, baseType: !334, size: 64, offset: 2432)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_count", scope: !4573, file: !4574, line: 167, baseType: !334, size: 64, offset: 2496)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "freepages_delay_total", scope: !4573, file: !4574, line: 168, baseType: !334, size: 64, offset: 2560)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_count", scope: !4573, file: !4574, line: 171, baseType: !334, size: 64, offset: 2624)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "thrashing_delay_total", scope: !4573, file: !4574, line: 172, baseType: !334, size: 64, offset: 2688)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "ac_btime64", scope: !4573, file: !4574, line: 175, baseType: !334, size: 64, offset: 2752)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "compact_count", scope: !4573, file: !4574, line: 178, baseType: !334, size: 64, offset: 2816)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "compact_delay_total", scope: !4573, file: !4574, line: 179, baseType: !334, size: 64, offset: 2880)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgid", scope: !4573, file: !4574, line: 182, baseType: !270, size: 32, offset: 2944)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "ac_tgetime", scope: !4573, file: !4574, line: 186, baseType: !334, size: 64, align: 64, offset: 3008)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_dev", scope: !4573, file: !4574, line: 194, baseType: !334, size: 64, offset: 3072)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exe_inode", scope: !4573, file: !4574, line: 195, baseType: !334, size: 64, offset: 3136)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_count", scope: !4573, file: !4574, line: 199, baseType: !334, size: 64, offset: 3200)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "wpcopy_delay_total", scope: !4573, file: !4574, line: 200, baseType: !334, size: 64, offset: 3264)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "irq_count", scope: !4573, file: !4574, line: 203, baseType: !334, size: 64, offset: 3328)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "irq_delay_total", scope: !4573, file: !4574, line: 204, baseType: !334, size: 64, offset: 3392)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !4447, file: !4448, line: 222, baseType: !7, size: 32, offset: 7936)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !4447, file: !4448, line: 223, baseType: !4635, size: 64, offset: 8000)
!4635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4636, size: 64)
!4636 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !4448, line: 223, flags: DIFlagFwdDecl)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !4447, file: !4448, line: 230, baseType: !830, size: 8, offset: 8064)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !4447, file: !4448, line: 231, baseType: !799, size: 16, offset: 8080)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !4447, file: !4448, line: 232, baseType: !799, size: 16, offset: 8096)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !4447, file: !4448, line: 234, baseType: !582, size: 64, offset: 8128)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !4447, file: !4448, line: 237, baseType: !638, size: 256, offset: 8192)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !4447, file: !4448, line: 243, baseType: !771, size: 320, offset: 8448)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !274, file: !275, line: 1111, baseType: !4644, size: 64, offset: 15424)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !4448, line: 20, size: 16640, elements: !4646)
!4646 = !{!4647, !4648, !4649, !4650}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !4645, file: !4448, line: 21, baseType: !79, size: 32)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4645, file: !4448, line: 22, baseType: !281, size: 32, offset: 32)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !4645, file: !4448, line: 23, baseType: !74, size: 192, offset: 64)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !4645, file: !4448, line: 24, baseType: !4651, size: 16384, offset: 256)
!4651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4652, size: 16384, elements: !1429)
!4652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !4459, line: 51, size: 256, elements: !4653)
!4653 = !{!4654}
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !4652, file: !4459, line: 52, baseType: !4655, size: 256)
!4655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !4459, line: 37, size: 256, elements: !4656)
!4656 = !{!4657, !4664, !4665, !4669}
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !4655, file: !4459, line: 39, baseType: !4658, size: 64)
!4658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !4659, line: 83, baseType: !4660)
!4659 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !4659, line: 82, baseType: !4662)
!4662 = !DISubroutineType(types: !4663)
!4663 = !{null, !42}
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !4655, file: !4459, line: 40, baseType: !59, size: 64, offset: 64)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !4655, file: !4459, line: 46, baseType: !4666, size: 64, offset: 128)
!4666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !4659, line: 86, baseType: !4667)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !4659, line: 85, baseType: !3061)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !4655, file: !4459, line: 48, baseType: !4463, size: 64, offset: 192)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !274, file: !275, line: 1112, baseType: !4463, size: 64, offset: 15488)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !274, file: !275, line: 1113, baseType: !4463, size: 64, offset: 15552)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !274, file: !275, line: 1115, baseType: !4463, size: 64, offset: 15616)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !274, file: !275, line: 1116, baseType: !4458, size: 192, offset: 15680)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !274, file: !275, line: 1117, baseType: !59, size: 64, offset: 15872)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !274, file: !275, line: 1118, baseType: !55, size: 64, offset: 15936)
!4676 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !274, file: !275, line: 1119, baseType: !7, size: 32, offset: 16000)
!4677 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !274, file: !275, line: 1121, baseType: !621, size: 64, offset: 16064)
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !274, file: !275, line: 1125, baseType: !4679, size: 64, offset: 16128)
!4679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4680, size: 64)
!4680 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !275, line: 43, flags: DIFlagFwdDecl)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !274, file: !275, line: 1127, baseType: !712, size: 32, offset: 16192)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !274, file: !275, line: 1128, baseType: !7, size: 32, offset: 16224)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !274, file: !275, line: 1130, baseType: !4684, size: 128, offset: 16256)
!4684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !4685, line: 37, size: 128, elements: !4686)
!4685 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!4686 = !{!4687, !4688, !4689}
!4687 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4684, file: !4685, line: 38, baseType: !42, size: 32)
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !4684, file: !4685, line: 39, baseType: !69, size: 32, offset: 32)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4684, file: !4685, line: 40, baseType: !4690, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !4685, line: 24, flags: DIFlagFwdDecl)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !274, file: !275, line: 1131, baseType: !4693, size: 256, offset: 16384)
!4693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !4694, line: 12, size: 256, elements: !4695)
!4694 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!4695 = !{!4696, !4697, !4698, !4699}
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !4693, file: !4694, line: 13, baseType: !841, size: 64)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4693, file: !4694, line: 14, baseType: !59, size: 64, offset: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !4693, file: !4694, line: 15, baseType: !59, size: 64, offset: 128)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !4693, file: !4694, line: 16, baseType: !830, size: 8, offset: 192)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !274, file: !275, line: 1134, baseType: !333, size: 64, offset: 16640)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !274, file: !275, line: 1135, baseType: !333, size: 64, offset: 16704)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !274, file: !275, line: 1138, baseType: !79, size: 32, offset: 16768)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !274, file: !275, line: 1141, baseType: !425, size: 32, offset: 16800)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !274, file: !275, line: 1143, baseType: !4705, size: 64, offset: 16832)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !275, line: 735, size: 64, elements: !4706)
!4706 = !{!4707}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4705, file: !275, line: 736, baseType: !4708, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !274, file: !275, line: 1147, baseType: !465, size: 128, offset: 16896)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !274, file: !275, line: 1149, baseType: !273, size: 64, offset: 17024)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !274, file: !275, line: 1151, baseType: !4712, size: 64, offset: 17088)
!4712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4713, size: 64)
!4713 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !275, line: 1151, flags: DIFlagFwdDecl)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !274, file: !275, line: 1188, baseType: !40, size: 64, offset: 17152)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !274, file: !275, line: 1191, baseType: !4716, size: 64, offset: 17216)
!4716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4717, size: 64)
!4717 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !275, line: 44, flags: DIFlagFwdDecl)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !274, file: !275, line: 1194, baseType: !4719, size: 64, offset: 17280)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !275, line: 45, flags: DIFlagFwdDecl)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !274, file: !275, line: 1197, baseType: !4722, size: 64, offset: 17344)
!4722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4723, size: 64)
!4723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2065, line: 155, size: 64, elements: !4724)
!4724 = !{!4725}
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "reclaimed", scope: !4723, file: !2065, line: 157, baseType: !59, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !274, file: !275, line: 1199, baseType: !4727, size: 64, offset: 17408)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2116, line: 99, size: 128, elements: !4729)
!4729 = !{!4730, !4731, !4732}
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4728, file: !2116, line: 100, baseType: !631, size: 64)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !4728, file: !2116, line: 101, baseType: !69, size: 32, offset: 64)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !4728, file: !2116, line: 103, baseType: !46, size: 16, offset: 96)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !274, file: !275, line: 1202, baseType: !4734, size: 64, offset: 17472)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !275, line: 48, flags: DIFlagFwdDecl)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !274, file: !275, line: 1205, baseType: !59, size: 64, offset: 17536)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !274, file: !275, line: 1206, baseType: !4738, size: 64, offset: 17600)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !4459, line: 14, baseType: !4740)
!4740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !4459, line: 12, size: 384, elements: !4741)
!4741 = !{!4742}
!4742 = !DIDerivedType(tag: DW_TAG_member, scope: !4740, file: !4459, line: 13, baseType: !4743, size: 384)
!4743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4740, file: !4459, line: 13, size: 384, elements: !4744)
!4744 = !{!4745, !4746, !4747, !4748}
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4743, file: !4459, line: 13, baseType: !42, size: 32)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4743, file: !4459, line: 13, baseType: !42, size: 32, offset: 32)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4743, file: !4459, line: 13, baseType: !42, size: 32, offset: 64)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4743, file: !4459, line: 13, baseType: !4749, size: 256, offset: 128)
!4749 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4750, line: 37, size: 256, elements: !4751)
!4750 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4751 = !{!4752, !4757, !4770, !4776, !4785, !4812, !4817}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4749, file: !4750, line: 42, baseType: !4753, size: 64)
!4753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !4750, line: 39, size: 64, elements: !4754)
!4754 = !{!4755, !4756}
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4753, file: !4750, line: 40, baseType: !4053, size: 32)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4753, file: !4750, line: 41, baseType: !718, size: 32, offset: 32)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4749, file: !4750, line: 50, baseType: !4758, size: 192)
!4758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !4750, line: 45, size: 192, elements: !4759)
!4759 = !{!4760, !4762, !4763, !4769}
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4758, file: !4750, line: 46, baseType: !4761, size: 32)
!4761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !57, line: 95, baseType: !42)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4758, file: !4750, line: 47, baseType: !42, size: 32, offset: 32)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4758, file: !4750, line: 48, baseType: !4764, size: 64, offset: 64)
!4764 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4750, line: 11, baseType: !4765)
!4765 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4750, line: 8, size: 64, elements: !4766)
!4766 = !{!4767, !4768}
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4765, file: !4750, line: 9, baseType: !42, size: 32)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4765, file: !4750, line: 10, baseType: !40, size: 64)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4758, file: !4750, line: 49, baseType: !42, size: 32, offset: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4749, file: !4750, line: 57, baseType: !4771, size: 128)
!4771 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !4750, line: 53, size: 128, elements: !4772)
!4772 = !{!4773, !4774, !4775}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4771, file: !4750, line: 54, baseType: !4053, size: 32)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4771, file: !4750, line: 55, baseType: !718, size: 32, offset: 32)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4771, file: !4750, line: 56, baseType: !4764, size: 64, offset: 64)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4749, file: !4750, line: 66, baseType: !4777, size: 256)
!4777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !4750, line: 60, size: 256, elements: !4778)
!4778 = !{!4779, !4780, !4781, !4782, !4784}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4777, file: !4750, line: 61, baseType: !4053, size: 32)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4777, file: !4750, line: 62, baseType: !718, size: 32, offset: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4777, file: !4750, line: 63, baseType: !42, size: 32, offset: 64)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4777, file: !4750, line: 64, baseType: !4783, size: 64, offset: 128)
!4783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !57, line: 94, baseType: !1286)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4777, file: !4750, line: 65, baseType: !4783, size: 64, offset: 192)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4749, file: !4750, line: 105, baseType: !4786, size: 256)
!4786 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !4750, line: 69, size: 256, elements: !4787)
!4787 = !{!4788, !4789}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4786, file: !4750, line: 70, baseType: !40, size: 64)
!4789 = !DIDerivedType(tag: DW_TAG_member, scope: !4786, file: !4750, line: 79, baseType: !4790, size: 192, offset: 64)
!4790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4786, file: !4750, line: 79, size: 192, elements: !4791)
!4791 = !{!4792, !4793, !4794, !4801, !4806}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4790, file: !4750, line: 81, baseType: !42, size: 32)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4790, file: !4750, line: 86, baseType: !799, size: 16)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4790, file: !4750, line: 92, baseType: !4795, size: 192)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4790, file: !4750, line: 88, size: 192, elements: !4796)
!4796 = !{!4797, !4799, !4800}
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4795, file: !4750, line: 89, baseType: !4798, size: 64)
!4798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 64, elements: !444)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4795, file: !4750, line: 90, baseType: !40, size: 64, offset: 64)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4795, file: !4750, line: 91, baseType: !40, size: 64, offset: 128)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4790, file: !4750, line: 97, baseType: !4802, size: 96)
!4802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4790, file: !4750, line: 94, size: 96, elements: !4803)
!4803 = !{!4804, !4805}
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4802, file: !4750, line: 95, baseType: !4798, size: 64)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4802, file: !4750, line: 96, baseType: !270, size: 32, offset: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4790, file: !4750, line: 103, baseType: !4807, size: 128)
!4807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4790, file: !4750, line: 99, size: 128, elements: !4808)
!4808 = !{!4809, !4810, !4811}
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4807, file: !4750, line: 100, baseType: !59, size: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4807, file: !4750, line: 101, baseType: !270, size: 32, offset: 64)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4807, file: !4750, line: 102, baseType: !270, size: 32, offset: 96)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4749, file: !4750, line: 111, baseType: !4813, size: 128)
!4813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !4750, line: 108, size: 128, elements: !4814)
!4814 = !{!4815, !4816}
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4813, file: !4750, line: 109, baseType: !1061, size: 64)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4813, file: !4750, line: 110, baseType: !42, size: 32, offset: 64)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4749, file: !4750, line: 118, baseType: !4818, size: 128)
!4818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4749, file: !4750, line: 114, size: 128, elements: !4819)
!4819 = !{!4820, !4821, !4822}
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4818, file: !4750, line: 115, baseType: !40, size: 64)
!4821 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4818, file: !4750, line: 116, baseType: !42, size: 32, offset: 64)
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4818, file: !4750, line: 117, baseType: !7, size: 32, offset: 96)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !274, file: !275, line: 1208, baseType: !4543, size: 448, offset: 17664)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !274, file: !275, line: 1215, baseType: !333, size: 64, offset: 18112)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !274, file: !275, line: 1217, baseType: !333, size: 64, offset: 18176)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !274, file: !275, line: 1219, baseType: !333, size: 64, offset: 18240)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !274, file: !275, line: 1223, baseType: !4828, size: 64, offset: 18304)
!4828 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4829, line: 99, baseType: !4830)
!4829 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4830 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4829, line: 99, size: 64, elements: !4831)
!4831 = !{!4832}
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4830, file: !4829, line: 99, baseType: !533, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !274, file: !275, line: 1225, baseType: !1103, size: 32, offset: 18368)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !274, file: !275, line: 1226, baseType: !42, size: 32, offset: 18400)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !274, file: !275, line: 1227, baseType: !42, size: 32, offset: 18432)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !274, file: !275, line: 1231, baseType: !4185, size: 64, offset: 18496)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !274, file: !275, line: 1233, baseType: !117, size: 128, offset: 18560)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !274, file: !275, line: 1240, baseType: !4839, size: 64, offset: 18688)
!4839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4840, size: 64)
!4840 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !275, line: 62, flags: DIFlagFwdDecl)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !274, file: !275, line: 1242, baseType: !4842, size: 64, offset: 18752)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !4844, line: 392, size: 96, elements: !4845)
!4844 = !DIFile(filename: "./include/linux/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4fb3431a0ca9e11a8015b961c002b640")
!4845 = !{!4846, !4852, !4854}
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4843, file: !4844, line: 393, baseType: !4847, size: 32)
!4847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list", file: !4844, line: 388, size: 32, elements: !4848)
!4848 = !{!4849}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4847, file: !4844, line: 389, baseType: !4850, size: 32)
!4850 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_uptr_t", file: !4851, line: 46, baseType: !269)
!4851 = !DIFile(filename: "./include/asm-generic/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "789dd20e6944b4211a8be38fb9d0b245")
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "futex_offset", scope: !4843, file: !4844, line: 394, baseType: !4853, size: 32, offset: 32)
!4853 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_long_t", file: !4851, line: 42, baseType: !763)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "list_op_pending", scope: !4843, file: !4844, line: 395, baseType: !4850, size: 32, offset: 64)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !274, file: !275, line: 1244, baseType: !117, size: 128, offset: 18816)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !274, file: !275, line: 1245, baseType: !4857, size: 64, offset: 18944)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !275, line: 51, flags: DIFlagFwdDecl)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !274, file: !275, line: 1246, baseType: !638, size: 256, offset: 19008)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !274, file: !275, line: 1247, baseType: !7, size: 32, offset: 19264)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !274, file: !275, line: 1250, baseType: !4862, size: 64, offset: 19328)
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !275, line: 57, flags: DIFlagFwdDecl)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !274, file: !275, line: 1251, baseType: !638, size: 256, offset: 19392)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !274, file: !275, line: 1252, baseType: !117, size: 128, offset: 19648)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !274, file: !275, line: 1259, baseType: !1713, size: 64, offset: 19776)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !274, file: !275, line: 1260, baseType: !799, size: 16, offset: 19840)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !274, file: !275, line: 1261, baseType: !799, size: 16, offset: 19856)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !274, file: !275, line: 1314, baseType: !4870, size: 64, offset: 19904)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4872, line: 62, size: 256, align: 256, elements: !4873)
!4872 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4873 = !{!4874, !4875, !4876, !4877, !4878, !4879, !4880}
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4871, file: !4872, line: 75, baseType: !270, size: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4871, file: !4872, line: 90, baseType: !270, size: 32, offset: 32)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4871, file: !4872, line: 112, baseType: !334, size: 64, offset: 64)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4871, file: !4872, line: 132, baseType: !270, size: 32, offset: 128)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4871, file: !4872, line: 140, baseType: !270, size: 32, offset: 160)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4871, file: !4872, line: 149, baseType: !270, size: 32, offset: 192)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4871, file: !4872, line: 154, baseType: !4881, offset: 224)
!4881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, elements: !708)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !274, file: !275, line: 1315, baseType: !269, size: 32, offset: 19968)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !274, file: !275, line: 1316, baseType: !269, size: 32, offset: 20000)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !274, file: !275, line: 1321, baseType: !59, size: 64, offset: 20032)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !274, file: !275, line: 1325, baseType: !42, size: 32, offset: 20096)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !274, file: !275, line: 1326, baseType: !42, size: 32, offset: 20128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !274, file: !275, line: 1327, baseType: !42, size: 32, offset: 20160)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !274, file: !275, line: 1328, baseType: !42, size: 32, offset: 20192)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !274, file: !275, line: 1329, baseType: !618, size: 128, align: 64, offset: 20224)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !274, file: !275, line: 1332, baseType: !4891, size: 128, offset: 20352)
!4891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4892, line: 51, size: 128, elements: !4893)
!4892 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4893 = !{!4894, !4899, !4900}
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4891, file: !4892, line: 60, baseType: !4895, size: 64)
!4895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4896, line: 7, size: 64, elements: !4897)
!4896 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4897 = !{!4898}
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4895, file: !4896, line: 12, baseType: !530, size: 64)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4891, file: !4892, line: 63, baseType: !830, size: 8, offset: 64)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4891, file: !4892, line: 70, baseType: !830, size: 8, offset: 72)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !274, file: !275, line: 1335, baseType: !3745, size: 64, offset: 20480)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !274, file: !275, line: 1337, baseType: !4903, size: 128, offset: 20544)
!4903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4892, line: 39, size: 128, elements: !4904)
!4904 = !{!4905, !4906, !4907}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4903, file: !4892, line: 40, baseType: !1510, size: 64)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4903, file: !4892, line: 42, baseType: !270, size: 32, offset: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4903, file: !4892, line: 43, baseType: !270, size: 32, offset: 96)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !274, file: !275, line: 1340, baseType: !4909, size: 64, offset: 20672)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !275, line: 69, flags: DIFlagFwdDecl)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !274, file: !275, line: 1351, baseType: !42, size: 32, offset: 20736)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !274, file: !275, line: 1352, baseType: !42, size: 32, offset: 20768)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !274, file: !275, line: 1354, baseType: !59, size: 64, offset: 20800)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !274, file: !275, line: 1364, baseType: !333, size: 64, offset: 20864)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !274, file: !275, line: 1365, baseType: !333, size: 64, offset: 20928)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !274, file: !275, line: 1412, baseType: !59, size: 64, offset: 20992)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !274, file: !275, line: 1453, baseType: !2111, size: 64, offset: 21056)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !274, file: !275, line: 1457, baseType: !4919, size: 64, offset: 21120)
!4919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !240, line: 61, size: 576, elements: !4921)
!4921 = !{!4922, !4923, !4942, !4945, !4946, !4979, !4989}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4920, file: !240, line: 62, baseType: !239, size: 32)
!4923 = !DIDerivedType(tag: DW_TAG_member, scope: !4920, file: !240, line: 64, baseType: !4924, size: 192, offset: 64)
!4924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4920, file: !240, line: 64, size: 192, elements: !4925)
!4925 = !{!4926, !4937}
!4926 = !DIDerivedType(tag: DW_TAG_member, scope: !4924, file: !240, line: 65, baseType: !4927, size: 192)
!4927 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4924, file: !240, line: 65, size: 192, elements: !4928)
!4928 = !{!4929, !4936}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4927, file: !240, line: 66, baseType: !4930, size: 128)
!4930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4931, line: 50, size: 128, elements: !4932)
!4931 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4932 = !{!4933, !4934, !4935}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4930, file: !4931, line: 52, baseType: !59, size: 64)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4930, file: !4931, line: 54, baseType: !7, size: 32, offset: 64)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4930, file: !4931, line: 55, baseType: !7, size: 32, offset: 96)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4927, file: !240, line: 67, baseType: !59, size: 64, offset: 128)
!4937 = !DIDerivedType(tag: DW_TAG_member, scope: !4924, file: !240, line: 70, baseType: !4938, size: 192)
!4938 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4924, file: !240, line: 70, size: 192, elements: !4939)
!4939 = !{!4940, !4941}
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4938, file: !240, line: 71, baseType: !618, size: 128, align: 64)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4938, file: !240, line: 72, baseType: !59, size: 64, offset: 128)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4920, file: !240, line: 76, baseType: !4943, size: 64, offset: 256)
!4943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4944 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !240, line: 76, flags: DIFlagFwdDecl)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4920, file: !240, line: 77, baseType: !59, size: 64, offset: 320)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4920, file: !240, line: 79, baseType: !4947, size: 64, offset: 384)
!4947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4948, size: 64)
!4948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4931, line: 25, size: 256, elements: !4949)
!4949 = !{!4950, !4956, !4960}
!4950 = !DIDerivedType(tag: DW_TAG_member, scope: !4948, file: !4931, line: 26, baseType: !4951, size: 128)
!4951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4948, file: !4931, line: 26, size: 128, elements: !4952)
!4952 = !{!4953, !4955}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4951, file: !4931, line: 27, baseType: !4954, size: 128)
!4954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 128, elements: !3507)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4951, file: !4931, line: 28, baseType: !4954, size: 128)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4948, file: !4931, line: 31, baseType: !4957, size: 64, offset: 128)
!4957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4959)
!4959 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4931, line: 23, flags: DIFlagFwdDecl)
!4960 = !DIDerivedType(tag: DW_TAG_member, scope: !4948, file: !4931, line: 33, baseType: !4961, size: 64, offset: 192)
!4961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4948, file: !4931, line: 33, size: 64, elements: !4962)
!4962 = !{!4963, !4969, !4974}
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4961, file: !4931, line: 38, baseType: !4964, size: 64)
!4964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4961, file: !4931, line: 34, size: 64, elements: !4965)
!4965 = !{!4966, !4967, !4968}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4964, file: !4931, line: 35, baseType: !763, size: 32)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4964, file: !4931, line: 36, baseType: !103, size: 8, offset: 32)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4964, file: !4931, line: 37, baseType: !103, size: 8, offset: 40)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4961, file: !4931, line: 42, baseType: !4970, size: 16)
!4970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4961, file: !4931, line: 39, size: 16, elements: !4971)
!4971 = !{!4972, !4973}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4970, file: !4931, line: 40, baseType: !103, size: 8)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4970, file: !4931, line: 41, baseType: !103, size: 8, offset: 8)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4961, file: !4931, line: 46, baseType: !4975, size: 16)
!4975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4961, file: !4931, line: 43, size: 16, elements: !4976)
!4976 = !{!4977, !4978}
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4975, file: !4931, line: 44, baseType: !103, size: 8)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4975, file: !4931, line: 45, baseType: !103, size: 8, offset: 8)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4920, file: !240, line: 81, baseType: !4980, size: 64, offset: 448)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !240, line: 85, size: 384, elements: !4982)
!4982 = !{!4983, !4984, !4985, !4986, !4987, !4988}
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4981, file: !240, line: 86, baseType: !4943, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4981, file: !240, line: 87, baseType: !59, size: 64, offset: 64)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4981, file: !240, line: 88, baseType: !59, size: 64, offset: 128)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4981, file: !240, line: 89, baseType: !59, size: 64, offset: 192)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4981, file: !240, line: 90, baseType: !830, size: 8, offset: 256)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4981, file: !240, line: 92, baseType: !4980, size: 64, offset: 320)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4920, file: !240, line: 82, baseType: !7, size: 32, offset: 512)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !274, file: !275, line: 1463, baseType: !4991, offset: 21184)
!4991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !275, line: 739, elements: !603)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !274, file: !275, line: 1470, baseType: !618, size: 128, align: 64, offset: 21184)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !274, file: !275, line: 1471, baseType: !281, size: 32, offset: 21312)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !274, file: !275, line: 1472, baseType: !42, size: 32, offset: 21344)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !274, file: !275, line: 1474, baseType: !273, size: 64, offset: 21376)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !274, file: !275, line: 1475, baseType: !2320, size: 320, offset: 21440)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !274, file: !275, line: 1478, baseType: !4998, size: 64, offset: 21760)
!4998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4999, size: 64)
!4999 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !275, line: 1478, flags: DIFlagFwdDecl)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !274, file: !275, line: 1482, baseType: !281, size: 32, offset: 21824)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !274, file: !275, line: 1489, baseType: !40, size: 64, offset: 21888)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !274, file: !275, line: 1504, baseType: !40, size: 64, offset: 21952)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !274, file: !275, line: 1505, baseType: !334, size: 64, offset: 22016)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !274, file: !275, line: 1506, baseType: !333, size: 64, offset: 22080)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !274, file: !275, line: 1507, baseType: !334, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !274, file: !275, line: 1508, baseType: !334, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !274, file: !275, line: 1509, baseType: !334, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !274, file: !275, line: 1510, baseType: !618, size: 128, align: 64, offset: 22208)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !274, file: !275, line: 1511, baseType: !42, size: 32, offset: 22336)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !274, file: !275, line: 1515, baseType: !5011, size: 64, offset: 22400)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !295, line: 56, size: 64, elements: !5012)
!5012 = !{!5013}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5011, file: !295, line: 57, baseType: !298, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !274, file: !275, line: 1518, baseType: !5011, size: 64, offset: 22464)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !274, file: !275, line: 1528, baseType: !618, size: 128, align: 64, offset: 22528)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !274, file: !275, line: 1552, baseType: !5017, size: 35328, offset: 23040)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !5018, line: 430, size: 35328, elements: !5019)
!5018 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!5019 = !{!5020, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5049, !5050, !5051, !5052, !5053, !5054, !5057, !5058, !5059, !5060}
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !5017, file: !5018, line: 432, baseType: !5021, size: 192)
!5021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5022, size: 192, elements: !674)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !5023, line: 16, size: 64, elements: !5024)
!5023 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!5024 = !{!5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5035, !5036, !5037}
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !5022, file: !5023, line: 17, baseType: !113, size: 16)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !5022, file: !5023, line: 18, baseType: !113, size: 16, offset: 16)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !5022, file: !5023, line: 19, baseType: !113, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5022, file: !5023, line: 19, baseType: !113, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5022, file: !5023, line: 19, baseType: !113, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !5022, file: !5023, line: 19, baseType: !113, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !5022, file: !5023, line: 19, baseType: !113, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !5022, file: !5023, line: 20, baseType: !113, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !5022, file: !5023, line: 20, baseType: !113, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !5022, file: !5023, line: 20, baseType: !113, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !5022, file: !5023, line: 20, baseType: !113, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !5022, file: !5023, line: 20, baseType: !113, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !5022, file: !5023, line: 20, baseType: !113, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5017, file: !5018, line: 436, baseType: !59, size: 64, offset: 192)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !5017, file: !5018, line: 440, baseType: !46, size: 16, offset: 256)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !5017, file: !5018, line: 441, baseType: !46, size: 16, offset: 272)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !5017, file: !5018, line: 442, baseType: !46, size: 16, offset: 288)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !5017, file: !5018, line: 443, baseType: !46, size: 16, offset: 304)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !5017, file: !5018, line: 447, baseType: !59, size: 64, offset: 320)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !5017, file: !5018, line: 448, baseType: !59, size: 64, offset: 384)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !5017, file: !5018, line: 459, baseType: !5046, size: 256, offset: 448)
!5046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5047, size: 256, elements: !695)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5048, size: 64)
!5048 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !5018, line: 428, flags: DIFlagFwdDecl)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !5017, file: !5018, line: 461, baseType: !59, size: 64, offset: 704)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !5017, file: !5018, line: 463, baseType: !59, size: 64, offset: 768)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !5017, file: !5018, line: 465, baseType: !59, size: 64, offset: 832)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !5017, file: !5018, line: 466, baseType: !59, size: 64, offset: 896)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !5017, file: !5018, line: 467, baseType: !59, size: 64, offset: 960)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !5017, file: !5018, line: 473, baseType: !5055, size: 64, offset: 1024)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !5018, line: 10, flags: DIFlagFwdDecl)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !5017, file: !5018, line: 480, baseType: !59, size: 64, offset: 1088)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !5017, file: !5018, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !5017, file: !5018, line: 491, baseType: !269, size: 32, offset: 1184)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !5017, file: !5018, line: 501, baseType: !5061, size: 33792, offset: 1536)
!5061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !5062, line: 448, size: 33792, elements: !5063)
!5062 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!5063 = !{!5064, !5065, !5066, !5226, !5227, !5233, !5234}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !5061, file: !5062, line: 461, baseType: !7, size: 32)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !5061, file: !5062, line: 468, baseType: !59, size: 64, offset: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !5061, file: !5062, line: 476, baseType: !5067, size: 64, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !5062, line: 356, size: 33280, align: 512, elements: !5069)
!5069 = !{!5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079}
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5068, file: !5062, line: 358, baseType: !7, size: 32)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !5068, file: !5062, line: 361, baseType: !7, size: 32, offset: 32)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5068, file: !5062, line: 364, baseType: !333, size: 64, offset: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !5068, file: !5062, line: 367, baseType: !333, size: 64, offset: 128)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !5068, file: !5062, line: 370, baseType: !333, size: 64, offset: 192)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !5068, file: !5062, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !5068, file: !5062, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !5068, file: !5062, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !5068, file: !5062, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5068, file: !5062, line: 397, baseType: !5080, size: 32768, offset: 512)
!5080 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !5062, line: 348, size: 32768, elements: !5081)
!5081 = !{!5082, !5097, !5134, !5211, !5224}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !5080, file: !5062, line: 349, baseType: !5083, size: 896)
!5083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !5062, line: 12, size: 896, elements: !5084)
!5084 = !{!5085, !5086, !5087, !5088, !5089, !5090, !5091, !5092, !5096}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5083, file: !5062, line: 13, baseType: !269, size: 32)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5083, file: !5062, line: 14, baseType: !269, size: 32, offset: 32)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5083, file: !5062, line: 15, baseType: !269, size: 32, offset: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5083, file: !5062, line: 16, baseType: !269, size: 32, offset: 96)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5083, file: !5062, line: 17, baseType: !269, size: 32, offset: 128)
!5090 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5083, file: !5062, line: 18, baseType: !269, size: 32, offset: 160)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5083, file: !5062, line: 19, baseType: !269, size: 32, offset: 192)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5083, file: !5062, line: 22, baseType: !5093, size: 640, offset: 224)
!5093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 640, elements: !5094)
!5094 = !{!5095}
!5095 = !DISubrange(count: 20)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5083, file: !5062, line: 25, baseType: !269, size: 32, offset: 864)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !5080, file: !5062, line: 350, baseType: !5098, size: 4096, align: 128)
!5098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !5062, line: 34, size: 4096, align: 128, elements: !5099)
!5099 = !{!5100, !5101, !5102, !5103, !5104, !5119, !5120, !5121, !5123, !5125, !5129}
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5098, file: !5062, line: 35, baseType: !113, size: 16)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5098, file: !5062, line: 36, baseType: !113, size: 16, offset: 16)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5098, file: !5062, line: 37, baseType: !113, size: 16, offset: 32)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !5098, file: !5062, line: 38, baseType: !113, size: 16, offset: 48)
!5104 = !DIDerivedType(tag: DW_TAG_member, scope: !5098, file: !5062, line: 39, baseType: !5105, size: 128, offset: 64)
!5105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5098, file: !5062, line: 39, size: 128, elements: !5106)
!5106 = !{!5107, !5112}
!5107 = !DIDerivedType(tag: DW_TAG_member, scope: !5105, file: !5062, line: 40, baseType: !5108, size: 128)
!5108 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5105, file: !5062, line: 40, size: 128, elements: !5109)
!5109 = !{!5110, !5111}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !5108, file: !5062, line: 41, baseType: !333, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !5108, file: !5062, line: 42, baseType: !333, size: 64, offset: 64)
!5112 = !DIDerivedType(tag: DW_TAG_member, scope: !5105, file: !5062, line: 44, baseType: !5113, size: 128)
!5113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5105, file: !5062, line: 44, size: 128, elements: !5114)
!5114 = !{!5115, !5116, !5117, !5118}
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5113, file: !5062, line: 45, baseType: !269, size: 32)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5113, file: !5062, line: 46, baseType: !269, size: 32, offset: 32)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5113, file: !5062, line: 47, baseType: !269, size: 32, offset: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5113, file: !5062, line: 48, baseType: !269, size: 32, offset: 96)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !5098, file: !5062, line: 51, baseType: !269, size: 32, offset: 192)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !5098, file: !5062, line: 52, baseType: !269, size: 32, offset: 224)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5098, file: !5062, line: 55, baseType: !5122, size: 1024, offset: 256)
!5122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 1024, elements: !3498)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !5098, file: !5062, line: 58, baseType: !5124, size: 2048, offset: 1280)
!5124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 2048, elements: !1429)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5098, file: !5062, line: 60, baseType: !5126, size: 384, offset: 3328)
!5126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !269, size: 384, elements: !5127)
!5127 = !{!5128}
!5128 = !DISubrange(count: 12)
!5129 = !DIDerivedType(tag: DW_TAG_member, scope: !5098, file: !5062, line: 62, baseType: !5130, size: 384, offset: 3712)
!5130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5098, file: !5062, line: 62, size: 384, elements: !5131)
!5131 = !{!5132, !5133}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5130, file: !5062, line: 63, baseType: !5126, size: 384)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !5130, file: !5062, line: 64, baseType: !5126, size: 384)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !5080, file: !5062, line: 351, baseType: !5135, size: 1088)
!5135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !5062, line: 79, size: 1088, elements: !5136)
!5136 = !{!5137, !5138, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5210}
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !5135, file: !5062, line: 80, baseType: !269, size: 32)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !5135, file: !5062, line: 81, baseType: !269, size: 32, offset: 32)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !5135, file: !5062, line: 82, baseType: !269, size: 32, offset: 64)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !5135, file: !5062, line: 83, baseType: !269, size: 32, offset: 96)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !5135, file: !5062, line: 84, baseType: !269, size: 32, offset: 128)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !5135, file: !5062, line: 85, baseType: !269, size: 32, offset: 160)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !5135, file: !5062, line: 86, baseType: !269, size: 32, offset: 192)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !5135, file: !5062, line: 88, baseType: !5093, size: 640, offset: 224)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !5135, file: !5062, line: 89, baseType: !103, size: 8, offset: 864)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !5135, file: !5062, line: 90, baseType: !103, size: 8, offset: 872)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !5135, file: !5062, line: 91, baseType: !103, size: 8, offset: 880)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !5135, file: !5062, line: 92, baseType: !103, size: 8, offset: 888)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !5135, file: !5062, line: 93, baseType: !103, size: 8, offset: 896)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !5135, file: !5062, line: 94, baseType: !103, size: 8, offset: 904)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5135, file: !5062, line: 95, baseType: !5152, size: 64, offset: 960)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !5154, line: 11, size: 128, elements: !5155)
!5154 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!5155 = !{!5156, !5157}
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !5153, file: !5154, line: 12, baseType: !1061, size: 64)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5153, file: !5154, line: 13, baseType: !5158, size: 64, offset: 64)
!5158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5159, size: 64)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !5160, line: 103, size: 1344, elements: !5161)
!5160 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!5161 = !{!5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5190, !5191, !5192}
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !5159, file: !5160, line: 109, baseType: !59, size: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !5159, file: !5160, line: 110, baseType: !59, size: 64, offset: 64)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !5159, file: !5160, line: 111, baseType: !59, size: 64, offset: 128)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !5159, file: !5160, line: 112, baseType: !59, size: 64, offset: 192)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !5159, file: !5160, line: 113, baseType: !59, size: 64, offset: 256)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !5159, file: !5160, line: 114, baseType: !59, size: 64, offset: 320)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !5159, file: !5160, line: 117, baseType: !59, size: 64, offset: 384)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !5159, file: !5160, line: 118, baseType: !59, size: 64, offset: 448)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !5159, file: !5160, line: 119, baseType: !59, size: 64, offset: 512)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !5159, file: !5160, line: 120, baseType: !59, size: 64, offset: 576)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !5159, file: !5160, line: 121, baseType: !59, size: 64, offset: 640)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !5159, file: !5160, line: 122, baseType: !59, size: 64, offset: 704)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !5159, file: !5160, line: 123, baseType: !59, size: 64, offset: 768)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !5159, file: !5160, line: 124, baseType: !59, size: 64, offset: 832)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !5159, file: !5160, line: 125, baseType: !59, size: 64, offset: 896)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !5159, file: !5160, line: 139, baseType: !59, size: 64, offset: 960)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !5159, file: !5160, line: 142, baseType: !59, size: 64, offset: 1024)
!5179 = !DIDerivedType(tag: DW_TAG_member, scope: !5159, file: !5160, line: 144, baseType: !5180, size: 64, offset: 1088)
!5180 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5159, file: !5160, line: 144, size: 64, elements: !5181)
!5181 = !{!5182, !5183, !5184}
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5180, file: !5160, line: 146, baseType: !113, size: 16)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !5180, file: !5160, line: 148, baseType: !333, size: 64)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !5180, file: !5160, line: 150, baseType: !5185, size: 64)
!5185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !5160, line: 59, size: 64, elements: !5186)
!5186 = !{!5187, !5188, !5189}
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !5185, file: !5160, line: 61, baseType: !333, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !5185, file: !5160, line: 63, baseType: !333, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !5185, file: !5160, line: 65, baseType: !333, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5159, file: !5160, line: 153, baseType: !59, size: 64, offset: 1152)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !5159, file: !5160, line: 154, baseType: !59, size: 64, offset: 1216)
!5192 = !DIDerivedType(tag: DW_TAG_member, scope: !5159, file: !5160, line: 156, baseType: !5193, size: 64, offset: 1280)
!5193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5159, file: !5160, line: 156, size: 64, elements: !5194)
!5194 = !{!5195, !5196, !5197}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5193, file: !5160, line: 158, baseType: !113, size: 16)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !5193, file: !5160, line: 160, baseType: !333, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !5193, file: !5160, line: 162, baseType: !5198, size: 64)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !5160, line: 69, size: 64, elements: !5199)
!5199 = !{!5200, !5201, !5202, !5203, !5204, !5205, !5206, !5207, !5208, !5209}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !5198, file: !5160, line: 71, baseType: !333, size: 16, flags: DIFlagBitField, extraData: i64 0)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !5198, file: !5160, line: 73, baseType: !333, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !5198, file: !5160, line: 75, baseType: !333, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !5198, file: !5160, line: 77, baseType: !333, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !5198, file: !5160, line: 80, baseType: !333, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5198, file: !5160, line: 83, baseType: !333, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !5198, file: !5160, line: 86, baseType: !333, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!5207 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !5198, file: !5160, line: 88, baseType: !333, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !5198, file: !5160, line: 93, baseType: !333, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !5198, file: !5160, line: 100, baseType: !333, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !5135, file: !5062, line: 96, baseType: !269, size: 32, offset: 1024)
!5211 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !5080, file: !5062, line: 352, baseType: !5212, size: 4608, align: 512)
!5212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !5062, line: 333, size: 4608, align: 512, elements: !5213)
!5213 = !{!5214, !5215, !5222}
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !5212, file: !5062, line: 334, baseType: !5098, size: 4096, align: 128)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5212, file: !5062, line: 335, baseType: !5216, size: 512, offset: 4096)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !5062, line: 312, size: 512, elements: !5217)
!5217 = !{!5218, !5219, !5220}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !5216, file: !5062, line: 313, baseType: !333, size: 64)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !5216, file: !5062, line: 314, baseType: !333, size: 64, offset: 64)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5216, file: !5062, line: 315, baseType: !5221, size: 384, offset: 128)
!5221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !333, size: 384, elements: !817)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !5212, file: !5062, line: 336, baseType: !5223, offset: 4608)
!5223 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, elements: !708)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !5080, file: !5062, line: 353, baseType: !5225, size: 32768)
!5225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 32768, elements: !4242)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !5061, file: !5062, line: 484, baseType: !5067, size: 64, offset: 192)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5061, file: !5062, line: 491, baseType: !5228, size: 128, offset: 256)
!5228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !5062, line: 404, size: 128, elements: !5229)
!5229 = !{!5230, !5231, !5232}
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !5228, file: !5062, line: 424, baseType: !333, size: 64)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !5228, file: !5062, line: 432, baseType: !7, size: 32, offset: 64)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !5228, file: !5062, line: 440, baseType: !7, size: 32, offset: 96)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !5061, file: !5062, line: 498, baseType: !5228, size: 128, offset: 384)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !5061, file: !5062, line: 508, baseType: !5068, size: 33280, align: 512, offset: 512)
!5235 = !{!5236, !0, !5238, !5243, !5257, !5259, !5261}
!5236 = !DIGlobalVariableExpression(var: !5237, expr: !DIExpression())
!5237 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_user__340_466_snapshot_device_init6341", scope: !2, file: !3, line: 466, type: !40, isLocal: true, isDefinition: true)
!5238 = !DIGlobalVariableExpression(var: !5239, expr: !DIExpression())
!5239 = distinct !DIGlobalVariable(scope: null, file: !3, line: 457, type: !5240, isLocal: true, isDefinition: true)
!5240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 72, elements: !5241)
!5241 = !{!5242}
!5242 = !DISubrange(count: 9)
!5243 = !DIGlobalVariableExpression(var: !5244, expr: !DIExpression())
!5244 = distinct !DIGlobalVariable(name: "snapshot_device", scope: !2, file: !3, line: 455, type: !5245, isLocal: true, isDefinition: true)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "miscdevice", file: !5246, line: 79, size: 640, elements: !5247)
!5246 = !DIFile(filename: "./include/linux/miscdevice.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a69389defd2997053c089e14bd956b02")
!5247 = !{!5248, !5249, !5250, !5251, !5252, !5253, !5254, !5255, !5256}
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5245, file: !5246, line: 80, baseType: !42, size: 32)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5245, file: !5246, line: 81, baseType: !36, size: 64, offset: 64)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !5245, file: !5246, line: 82, baseType: !3659, size: 64, offset: 128)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5245, file: !5246, line: 83, baseType: !117, size: 128, offset: 192)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5245, file: !5246, line: 84, baseType: !2150, size: 64, offset: 320)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "this_device", scope: !5245, file: !5246, line: 85, baseType: !2150, size: 64, offset: 384)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !5245, file: !5246, line: 86, baseType: !1466, size: 64, offset: 448)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "nodename", scope: !5245, file: !5246, line: 87, baseType: !36, size: 64, offset: 512)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5245, file: !5246, line: 88, baseType: !44, size: 16, offset: 576)
!5257 = !DIGlobalVariableExpression(var: !5258, expr: !DIExpression())
!5258 = distinct !DIGlobalVariable(name: "snapshot_fops", scope: !2, file: !3, line: 443, type: !3660, isLocal: true, isDefinition: true)
!5259 = !DIGlobalVariableExpression(var: !5260, expr: !DIExpression())
!5260 = distinct !DIGlobalVariable(name: "need_wait", scope: !2, file: !3, line: 29, type: !830, isLocal: true, isDefinition: true)
!5261 = !DIGlobalVariableExpression(var: !5262, expr: !DIExpression())
!5262 = distinct !DIGlobalVariable(scope: null, file: !5263, line: 249, type: !5264, isLocal: true, isDefinition: true)
!5263 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!5264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 224, elements: !5265)
!5265 = !{!5266}
!5266 = !DISubrange(count: 28)
!5267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snapshot_data", file: !3, line: 31, size: 320, elements: !5268)
!5268 = !{!5269, !5276, !5277, !5278, !5279, !5280, !5281, !5282}
!5269 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !5267, file: !3, line: 32, baseType: !5270, size: 192)
!5270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "snapshot_handle", file: !5271, line: 128, size: 192, elements: !5272)
!5271 = !DIFile(filename: "kernel/power/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fbfe7b327c4ed8e877afcacadd5697f1")
!5272 = !{!5273, !5274, !5275}
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !5270, file: !5271, line: 129, baseType: !7, size: 32)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !5270, file: !5271, line: 132, baseType: !40, size: 64, offset: 64)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "sync_read", scope: !5270, file: !5271, line: 135, baseType: !42, size: 32, offset: 128)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !5267, file: !3, line: 33, baseType: !42, size: 32, offset: 192)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5267, file: !3, line: 34, baseType: !42, size: 32, offset: 224)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !5267, file: !3, line: 35, baseType: !830, size: 8, offset: 256)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !5267, file: !3, line: 36, baseType: !830, size: 8, offset: 264)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "platform_support", scope: !5267, file: !3, line: 37, baseType: !830, size: 8, offset: 272)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "free_bitmaps", scope: !5267, file: !3, line: 38, baseType: !830, size: 8, offset: 280)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5267, file: !3, line: 39, baseType: !1206, size: 32, offset: 288)
!5283 = !{!"rsp"}
!5284 = !{i32 7, !"Dwarf Version", i32 5}
!5285 = !{i32 2, !"Debug Info Version", i32 3}
!5286 = !{i32 1, !"wchar_size", i32 2}
!5287 = !{i32 8, !"cf-protection-branch", i32 1}
!5288 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5289 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5290 = !{i32 1, !"Code Model", i32 2}
!5291 = !{i32 1, !"override-stack-alignment", i32 8}
!5292 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5293 = distinct !DISubprogram(name: "is_hibernate_resume_dev", scope: !3, file: !3, line: 42, type: !5294, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5296)
!5294 = !DISubroutineType(types: !5295)
!5295 = !{!42, !1206}
!5296 = !{!5297}
!5297 = !DILocalVariable(name: "dev", arg: 1, scope: !5293, file: !3, line: 42, type: !1206)
!5298 = !DILocation(line: 42, column: 35, scope: !5293)
!5299 = !DILocation(line: 44, column: 9, scope: !5293)
!5300 = !DILocation(line: 44, column: 33, scope: !5293)
!5301 = !DILocation(line: 44, column: 51, scope: !5293)
!5302 = !DILocation(line: 44, column: 58, scope: !5293)
!5303 = !DILocation(line: 44, column: 55, scope: !5293)
!5304 = !DILocation(line: 0, scope: !5293)
!5305 = !DILocation(line: 44, column: 2, scope: !5293)
!5306 = !DISubprogram(name: "hibernation_available", scope: !261, file: !261, line: 449, type: !2481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5307 = distinct !DISubprogram(name: "__initstub__kmod_user__340_466_snapshot_device_init6", scope: !3, file: !3, line: 466, type: !2839, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5308 = !DILocation(line: 466, column: 1, scope: !5307)
!5309 = distinct !DISubprogram(name: "snapshot_device_init", scope: !3, file: !3, line: 461, type: !2839, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5310 = !DILocation(line: 463, column: 9, scope: !5309)
!5311 = !DILocation(line: 463, column: 2, scope: !5309)
!5312 = !DISubprogram(name: "misc_register", scope: !5246, file: !5246, line: 91, type: !5313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5313 = !DISubroutineType(types: !5314)
!5314 = !{!42, !5315}
!5315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5316 = distinct !DISubprogram(name: "snapshot_read", scope: !3, file: !3, line: 134, type: !3670, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5317)
!5317 = !{!5318, !5319, !5320, !5321, !5322, !5323, !5325, !5326, !5327}
!5318 = !DILocalVariable(name: "filp", arg: 1, scope: !5316, file: !3, line: 134, type: !610)
!5319 = !DILocalVariable(name: "buf", arg: 2, scope: !5316, file: !3, line: 134, type: !841)
!5320 = !DILocalVariable(name: "count", arg: 3, scope: !5316, file: !3, line: 135, type: !55)
!5321 = !DILocalVariable(name: "offp", arg: 4, scope: !5316, file: !3, line: 135, type: !60)
!5322 = !DILocalVariable(name: "pg_offp", scope: !5316, file: !3, line: 137, type: !61)
!5323 = !DILocalVariable(name: "data", scope: !5316, file: !3, line: 138, type: !5324)
!5324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5267, size: 64)
!5325 = !DILocalVariable(name: "sleep_flags", scope: !5316, file: !3, line: 139, type: !7)
!5326 = !DILocalVariable(name: "res", scope: !5316, file: !3, line: 140, type: !1284)
!5327 = !DILabel(scope: !5316, name: "Unlock", file: !3, line: 162)
!5328 = !DILocation(line: 134, column: 43, scope: !5316)
!5329 = !DILocation(line: 134, column: 62, scope: !5316)
!5330 = !DILocation(line: 135, column: 37, scope: !5316)
!5331 = !DILocation(line: 135, column: 52, scope: !5316)
!5332 = !DILocation(line: 137, column: 2, scope: !5316)
!5333 = !DILocation(line: 137, column: 9, scope: !5316)
!5334 = !DILocation(line: 137, column: 20, scope: !5316)
!5335 = !DILocation(line: 137, column: 19, scope: !5316)
!5336 = !DILocation(line: 137, column: 25, scope: !5316)
!5337 = !DILocation(line: 138, column: 2, scope: !5316)
!5338 = !DILocation(line: 138, column: 24, scope: !5316)
!5339 = !DILocation(line: 139, column: 2, scope: !5316)
!5340 = !DILocation(line: 139, column: 15, scope: !5316)
!5341 = !DILocation(line: 140, column: 2, scope: !5316)
!5342 = !DILocation(line: 140, column: 10, scope: !5316)
!5343 = !DILocation(line: 142, column: 16, scope: !5316)
!5344 = !DILocation(line: 142, column: 14, scope: !5316)
!5345 = !DILocation(line: 144, column: 9, scope: !5316)
!5346 = !DILocation(line: 144, column: 15, scope: !5316)
!5347 = !DILocation(line: 144, column: 7, scope: !5316)
!5348 = !DILocation(line: 145, column: 7, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 145, column: 6)
!5350 = !DILocation(line: 145, column: 13, scope: !5349)
!5351 = !{i8 0, i8 2}
!5352 = !DILocation(line: 145, column: 6, scope: !5316)
!5353 = !DILocation(line: 146, column: 7, scope: !5354)
!5354 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 145, column: 20)
!5355 = !DILocation(line: 147, column: 3, scope: !5354)
!5356 = !DILocation(line: 149, column: 7, scope: !5357)
!5357 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 149, column: 6)
!5358 = !DILocation(line: 149, column: 6, scope: !5316)
!5359 = !DILocation(line: 150, column: 29, scope: !5360)
!5360 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 149, column: 16)
!5361 = !DILocation(line: 150, column: 35, scope: !5360)
!5362 = !DILocation(line: 150, column: 9, scope: !5360)
!5363 = !DILocation(line: 150, column: 7, scope: !5360)
!5364 = !DILocation(line: 151, column: 7, scope: !5365)
!5365 = distinct !DILexicalBlock(scope: !5360, file: !3, line: 151, column: 7)
!5366 = !DILocation(line: 151, column: 11, scope: !5365)
!5367 = !DILocation(line: 151, column: 7, scope: !5360)
!5368 = !DILocation(line: 152, column: 4, scope: !5365)
!5369 = !DILocation(line: 153, column: 2, scope: !5360)
!5370 = !DILocation(line: 154, column: 21, scope: !5371)
!5371 = distinct !DILexicalBlock(scope: !5357, file: !3, line: 153, column: 9)
!5372 = !DILocation(line: 154, column: 19, scope: !5371)
!5373 = !DILocation(line: 154, column: 7, scope: !5371)
!5374 = !DILocation(line: 157, column: 32, scope: !5316)
!5375 = !DILocation(line: 157, column: 37, scope: !5316)
!5376 = !DILocation(line: 158, column: 4, scope: !5316)
!5377 = !DILocation(line: 158, column: 27, scope: !5316)
!5378 = !DILocation(line: 157, column: 8, scope: !5316)
!5379 = !DILocation(line: 157, column: 6, scope: !5316)
!5380 = !DILocation(line: 159, column: 6, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5316, file: !3, line: 159, column: 6)
!5382 = !DILocation(line: 159, column: 10, scope: !5381)
!5383 = !DILocation(line: 159, column: 6, scope: !5316)
!5384 = !DILocation(line: 160, column: 12, scope: !5381)
!5385 = !DILocation(line: 160, column: 4, scope: !5381)
!5386 = !DILocation(line: 160, column: 9, scope: !5381)
!5387 = !DILocation(line: 160, column: 3, scope: !5381)
!5388 = !DILocation(line: 159, column: 12, scope: !5381)
!5389 = !DILocation(line: 162, column: 2, scope: !5316)
!5390 = !DILocation(line: 163, column: 22, scope: !5316)
!5391 = !DILocation(line: 163, column: 2, scope: !5316)
!5392 = !DILocation(line: 165, column: 9, scope: !5316)
!5393 = !DILocation(line: 166, column: 1, scope: !5316)
!5394 = !DILocation(line: 165, column: 2, scope: !5316)
!5395 = distinct !DISubprogram(name: "snapshot_write", scope: !3, file: !3, line: 168, type: !3674, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5396)
!5396 = !{!5397, !5398, !5399, !5400, !5401, !5402, !5403, !5404, !5405}
!5397 = !DILocalVariable(name: "filp", arg: 1, scope: !5395, file: !3, line: 168, type: !610)
!5398 = !DILocalVariable(name: "buf", arg: 2, scope: !5395, file: !3, line: 168, type: !36)
!5399 = !DILocalVariable(name: "count", arg: 3, scope: !5395, file: !3, line: 169, type: !55)
!5400 = !DILocalVariable(name: "offp", arg: 4, scope: !5395, file: !3, line: 169, type: !60)
!5401 = !DILocalVariable(name: "pg_offp", scope: !5395, file: !3, line: 171, type: !61)
!5402 = !DILocalVariable(name: "data", scope: !5395, file: !3, line: 172, type: !5324)
!5403 = !DILocalVariable(name: "sleep_flags", scope: !5395, file: !3, line: 173, type: !59)
!5404 = !DILocalVariable(name: "res", scope: !5395, file: !3, line: 174, type: !1284)
!5405 = !DILabel(scope: !5395, name: "unlock", file: !3, line: 202)
!5406 = !DILocation(line: 168, column: 44, scope: !5395)
!5407 = !DILocation(line: 168, column: 69, scope: !5395)
!5408 = !DILocation(line: 169, column: 38, scope: !5395)
!5409 = !DILocation(line: 169, column: 53, scope: !5395)
!5410 = !DILocation(line: 171, column: 2, scope: !5395)
!5411 = !DILocation(line: 171, column: 9, scope: !5395)
!5412 = !DILocation(line: 171, column: 20, scope: !5395)
!5413 = !DILocation(line: 171, column: 19, scope: !5395)
!5414 = !DILocation(line: 171, column: 25, scope: !5395)
!5415 = !DILocation(line: 172, column: 2, scope: !5395)
!5416 = !DILocation(line: 172, column: 24, scope: !5395)
!5417 = !DILocation(line: 173, column: 2, scope: !5395)
!5418 = !DILocation(line: 173, column: 16, scope: !5395)
!5419 = !DILocation(line: 174, column: 2, scope: !5395)
!5420 = !DILocation(line: 174, column: 10, scope: !5395)
!5421 = !DILocation(line: 176, column: 6, scope: !5422)
!5422 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 176, column: 6)
!5423 = !DILocation(line: 176, column: 6, scope: !5395)
!5424 = !DILocation(line: 177, column: 3, scope: !5425)
!5425 = distinct !DILexicalBlock(scope: !5422, file: !3, line: 176, column: 17)
!5426 = !DILocation(line: 178, column: 13, scope: !5425)
!5427 = !DILocation(line: 179, column: 2, scope: !5425)
!5428 = !DILocation(line: 181, column: 16, scope: !5395)
!5429 = !DILocation(line: 181, column: 14, scope: !5395)
!5430 = !DILocation(line: 183, column: 9, scope: !5395)
!5431 = !DILocation(line: 183, column: 15, scope: !5395)
!5432 = !DILocation(line: 183, column: 7, scope: !5395)
!5433 = !DILocation(line: 185, column: 7, scope: !5434)
!5434 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 185, column: 6)
!5435 = !DILocation(line: 185, column: 6, scope: !5395)
!5436 = !DILocation(line: 186, column: 30, scope: !5437)
!5437 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 185, column: 16)
!5438 = !DILocation(line: 186, column: 36, scope: !5437)
!5439 = !DILocation(line: 186, column: 9, scope: !5437)
!5440 = !DILocation(line: 186, column: 7, scope: !5437)
!5441 = !DILocation(line: 187, column: 7, scope: !5442)
!5442 = distinct !DILexicalBlock(scope: !5437, file: !3, line: 187, column: 7)
!5443 = !DILocation(line: 187, column: 11, scope: !5442)
!5444 = !DILocation(line: 187, column: 7, scope: !5437)
!5445 = !DILocation(line: 188, column: 4, scope: !5442)
!5446 = !DILocation(line: 189, column: 2, scope: !5437)
!5447 = !DILocation(line: 190, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5434, file: !3, line: 189, column: 9)
!5449 = !DILocation(line: 193, column: 7, scope: !5450)
!5450 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 193, column: 6)
!5451 = !DILocation(line: 193, column: 6, scope: !5395)
!5452 = !DILocation(line: 194, column: 7, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5450, file: !3, line: 193, column: 30)
!5454 = !DILocation(line: 195, column: 3, scope: !5453)
!5455 = !DILocation(line: 198, column: 31, scope: !5395)
!5456 = !DILocation(line: 198, column: 54, scope: !5395)
!5457 = !DILocation(line: 199, column: 4, scope: !5395)
!5458 = !DILocation(line: 199, column: 9, scope: !5395)
!5459 = !DILocation(line: 198, column: 8, scope: !5395)
!5460 = !DILocation(line: 198, column: 6, scope: !5395)
!5461 = !DILocation(line: 200, column: 6, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5395, file: !3, line: 200, column: 6)
!5463 = !DILocation(line: 200, column: 10, scope: !5462)
!5464 = !DILocation(line: 200, column: 6, scope: !5395)
!5465 = !DILocation(line: 201, column: 12, scope: !5462)
!5466 = !DILocation(line: 201, column: 4, scope: !5462)
!5467 = !DILocation(line: 201, column: 9, scope: !5462)
!5468 = !DILocation(line: 201, column: 3, scope: !5462)
!5469 = !DILocation(line: 200, column: 12, scope: !5462)
!5470 = !DILocation(line: 202, column: 1, scope: !5395)
!5471 = !DILocation(line: 203, column: 22, scope: !5395)
!5472 = !DILocation(line: 203, column: 2, scope: !5395)
!5473 = !DILocation(line: 205, column: 9, scope: !5395)
!5474 = !DILocation(line: 206, column: 1, scope: !5395)
!5475 = !DILocation(line: 205, column: 2, scope: !5395)
!5476 = distinct !DISubprogram(name: "snapshot_ioctl", scope: !3, file: !3, line: 249, type: !3703, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5477)
!5477 = !{!5478, !5479, !5480, !5481, !5482, !5483, !5484, !5485, !5491, !5492, !5493, !5494, !5495, !5498, !5499, !5500, !5501, !5502, !5505, !5506, !5507, !5508, !5509, !5514, !5515, !5516, !5517}
!5478 = !DILocalVariable(name: "filp", arg: 1, scope: !5476, file: !3, line: 249, type: !610)
!5479 = !DILocalVariable(name: "cmd", arg: 2, scope: !5476, file: !3, line: 249, type: !7)
!5480 = !DILocalVariable(name: "arg", arg: 3, scope: !5476, file: !3, line: 250, type: !59)
!5481 = !DILocalVariable(name: "error", scope: !5476, file: !3, line: 252, type: !42)
!5482 = !DILocalVariable(name: "data", scope: !5476, file: !3, line: 253, type: !5324)
!5483 = !DILocalVariable(name: "size", scope: !5476, file: !3, line: 254, type: !61)
!5484 = !DILocalVariable(name: "offset", scope: !5476, file: !3, line: 255, type: !1926)
!5485 = !DILocalVariable(name: "__ret_pu", scope: !5486, file: !3, line: 313, type: !42)
!5486 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 313, column: 12)
!5487 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 313, column: 12)
!5488 = distinct !DILexicalBlock(scope: !5489, file: !3, line: 312, column: 15)
!5489 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 312, column: 7)
!5490 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 275, column: 15)
!5491 = !DILocalVariable(name: "__ptr_pu", scope: !5486, file: !3, line: 313, type: !40)
!5492 = !DILocalVariable(name: "__val_pu", scope: !5486, file: !3, line: 313, type: !42)
!5493 = !DILocalVariable(name: "__x", scope: !5486, file: !3, line: 313, type: !42)
!5494 = !DILocalVariable(name: "__ptr", scope: !5486, file: !3, line: 313, type: !259)
!5495 = !DILocalVariable(name: "__ret_pu", scope: !5496, file: !3, line: 355, type: !42)
!5496 = distinct !DILexicalBlock(scope: !5497, file: !3, line: 355, column: 11)
!5497 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 355, column: 11)
!5498 = !DILocalVariable(name: "__ptr_pu", scope: !5496, file: !3, line: 355, type: !40)
!5499 = !DILocalVariable(name: "__val_pu", scope: !5496, file: !3, line: 355, type: !61)
!5500 = !DILocalVariable(name: "__x", scope: !5496, file: !3, line: 355, type: !61)
!5501 = !DILocalVariable(name: "__ptr", scope: !5496, file: !3, line: 355, type: !60)
!5502 = !DILocalVariable(name: "__ret_pu", scope: !5503, file: !3, line: 361, type: !42)
!5503 = distinct !DILexicalBlock(scope: !5504, file: !3, line: 361, column: 11)
!5504 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 361, column: 11)
!5505 = !DILocalVariable(name: "__ptr_pu", scope: !5503, file: !3, line: 361, type: !40)
!5506 = !DILocalVariable(name: "__val_pu", scope: !5503, file: !3, line: 361, type: !61)
!5507 = !DILocalVariable(name: "__x", scope: !5503, file: !3, line: 361, type: !61)
!5508 = !DILocalVariable(name: "__ptr", scope: !5503, file: !3, line: 361, type: !60)
!5509 = !DILocalVariable(name: "__ret_pu", scope: !5510, file: !3, line: 372, type: !42)
!5510 = distinct !DILexicalBlock(scope: !5511, file: !3, line: 372, column: 12)
!5511 = distinct !DILexicalBlock(scope: !5512, file: !3, line: 372, column: 12)
!5512 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 370, column: 15)
!5513 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 370, column: 7)
!5514 = !DILocalVariable(name: "__ptr_pu", scope: !5510, file: !3, line: 372, type: !40)
!5515 = !DILocalVariable(name: "__val_pu", scope: !5510, file: !3, line: 372, type: !61)
!5516 = !DILocalVariable(name: "__x", scope: !5510, file: !3, line: 372, type: !61)
!5517 = !DILocalVariable(name: "__ptr", scope: !5510, file: !3, line: 372, type: !60)
!5518 = !DILocation(line: 249, column: 41, scope: !5476)
!5519 = !DILocation(line: 249, column: 60, scope: !5476)
!5520 = !DILocation(line: 250, column: 22, scope: !5476)
!5521 = !DILocation(line: 252, column: 2, scope: !5476)
!5522 = !DILocation(line: 252, column: 6, scope: !5476)
!5523 = !DILocation(line: 253, column: 2, scope: !5476)
!5524 = !DILocation(line: 253, column: 24, scope: !5476)
!5525 = !DILocation(line: 254, column: 2, scope: !5476)
!5526 = !DILocation(line: 254, column: 9, scope: !5476)
!5527 = !DILocation(line: 255, column: 2, scope: !5476)
!5528 = !DILocation(line: 255, column: 11, scope: !5476)
!5529 = !DILocation(line: 257, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 257, column: 6)
!5531 = !DILocation(line: 257, column: 6, scope: !5476)
!5532 = !DILocation(line: 258, column: 3, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5530, file: !3, line: 257, column: 17)
!5534 = !DILocation(line: 259, column: 13, scope: !5533)
!5535 = !DILocation(line: 260, column: 2, scope: !5533)
!5536 = !DILocation(line: 262, column: 6, scope: !5537)
!5537 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 262, column: 6)
!5538 = !DILocation(line: 262, column: 21, scope: !5537)
!5539 = !DILocation(line: 262, column: 6, scope: !5476)
!5540 = !DILocation(line: 263, column: 3, scope: !5537)
!5541 = !DILocation(line: 264, column: 6, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 264, column: 6)
!5543 = !DILocation(line: 264, column: 19, scope: !5542)
!5544 = !DILocation(line: 264, column: 6, scope: !5476)
!5545 = !DILocation(line: 265, column: 3, scope: !5542)
!5546 = !DILocation(line: 266, column: 7, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 266, column: 6)
!5548 = !DILocation(line: 266, column: 6, scope: !5476)
!5549 = !DILocation(line: 267, column: 3, scope: !5547)
!5550 = !DILocation(line: 269, column: 7, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 269, column: 6)
!5552 = !DILocation(line: 269, column: 6, scope: !5476)
!5553 = !DILocation(line: 270, column: 3, scope: !5551)
!5554 = !DILocation(line: 272, column: 2, scope: !5476)
!5555 = !DILocation(line: 273, column: 9, scope: !5476)
!5556 = !DILocation(line: 273, column: 15, scope: !5476)
!5557 = !DILocation(line: 273, column: 7, scope: !5476)
!5558 = !DILocation(line: 275, column: 10, scope: !5476)
!5559 = !DILocation(line: 275, column: 2, scope: !5476)
!5560 = !DILocation(line: 278, column: 7, scope: !5561)
!5561 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 278, column: 7)
!5562 = !DILocation(line: 278, column: 13, scope: !5561)
!5563 = !DILocation(line: 278, column: 7, scope: !5490)
!5564 = !DILocation(line: 279, column: 4, scope: !5561)
!5565 = !DILocation(line: 281, column: 3, scope: !5490)
!5566 = !DILocation(line: 283, column: 11, scope: !5490)
!5567 = !DILocation(line: 283, column: 9, scope: !5490)
!5568 = !DILocation(line: 284, column: 7, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 284, column: 7)
!5570 = !DILocation(line: 284, column: 7, scope: !5490)
!5571 = !DILocation(line: 285, column: 4, scope: !5569)
!5572 = !DILocation(line: 287, column: 11, scope: !5490)
!5573 = !DILocation(line: 287, column: 9, scope: !5490)
!5574 = !DILocation(line: 288, column: 7, scope: !5575)
!5575 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 288, column: 7)
!5576 = !DILocation(line: 288, column: 7, scope: !5490)
!5577 = !DILocation(line: 289, column: 4, scope: !5575)
!5578 = !DILocation(line: 291, column: 4, scope: !5575)
!5579 = !DILocation(line: 291, column: 10, scope: !5575)
!5580 = !DILocation(line: 291, column: 17, scope: !5575)
!5581 = !DILocation(line: 293, column: 3, scope: !5490)
!5582 = !DILocation(line: 296, column: 8, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 296, column: 7)
!5584 = !DILocation(line: 296, column: 14, scope: !5583)
!5585 = !DILocation(line: 296, column: 21, scope: !5583)
!5586 = !DILocation(line: 296, column: 24, scope: !5583)
!5587 = !DILocation(line: 296, column: 30, scope: !5583)
!5588 = !DILocation(line: 296, column: 7, scope: !5490)
!5589 = !DILocation(line: 297, column: 4, scope: !5583)
!5590 = !DILocation(line: 298, column: 3, scope: !5490)
!5591 = !DILocation(line: 299, column: 3, scope: !5490)
!5592 = !DILocation(line: 300, column: 3, scope: !5490)
!5593 = !DILocation(line: 300, column: 9, scope: !5490)
!5594 = !DILocation(line: 300, column: 22, scope: !5490)
!5595 = !DILocation(line: 301, column: 3, scope: !5490)
!5596 = !DILocation(line: 302, column: 3, scope: !5490)
!5597 = !DILocation(line: 302, column: 9, scope: !5490)
!5598 = !DILocation(line: 302, column: 16, scope: !5490)
!5599 = !DILocation(line: 303, column: 3, scope: !5490)
!5600 = !DILocation(line: 306, column: 7, scope: !5601)
!5601 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 306, column: 7)
!5602 = !DILocation(line: 306, column: 13, scope: !5601)
!5603 = !DILocation(line: 306, column: 18, scope: !5601)
!5604 = !DILocation(line: 306, column: 30, scope: !5601)
!5605 = !DILocation(line: 306, column: 34, scope: !5601)
!5606 = !DILocation(line: 306, column: 40, scope: !5601)
!5607 = !DILocation(line: 306, column: 48, scope: !5601)
!5608 = !DILocation(line: 306, column: 51, scope: !5601)
!5609 = !DILocation(line: 306, column: 57, scope: !5601)
!5610 = !DILocation(line: 306, column: 7, scope: !5490)
!5611 = !DILocation(line: 307, column: 10, scope: !5612)
!5612 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 306, column: 64)
!5613 = !DILocation(line: 308, column: 4, scope: !5612)
!5614 = !DILocation(line: 310, column: 3, scope: !5490)
!5615 = !DILocation(line: 311, column: 32, scope: !5490)
!5616 = !DILocation(line: 311, column: 38, scope: !5490)
!5617 = !DILocation(line: 311, column: 11, scope: !5490)
!5618 = !DILocation(line: 311, column: 9, scope: !5490)
!5619 = !DILocation(line: 312, column: 8, scope: !5489)
!5620 = !DILocation(line: 312, column: 7, scope: !5490)
!5621 = !DILocation(line: 313, column: 12, scope: !5487)
!5622 = !DILocation(line: 313, column: 12, scope: !5486)
!5623 = !{i64 2155576922}
!5624 = !DILocation(line: 313, column: 12, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5486, file: !3, line: 313, column: 12)
!5626 = !DILocation(line: 313, column: 12, scope: !5488)
!5627 = !DILocation(line: 313, column: 10, scope: !5488)
!5628 = !DILocation(line: 314, column: 19, scope: !5488)
!5629 = !DILocation(line: 314, column: 37, scope: !5488)
!5630 = !DILocation(line: 314, column: 41, scope: !5488)
!5631 = !DILocation(line: 314, column: 40, scope: !5488)
!5632 = !DILocation(line: 0, scope: !5488)
!5633 = !DILocation(line: 314, column: 4, scope: !5488)
!5634 = !DILocation(line: 314, column: 10, scope: !5488)
!5635 = !DILocation(line: 314, column: 16, scope: !5488)
!5636 = !DILocation(line: 315, column: 22, scope: !5488)
!5637 = !DILocation(line: 316, column: 3, scope: !5488)
!5638 = !DILocation(line: 317, column: 3, scope: !5490)
!5639 = !DILocation(line: 320, column: 28, scope: !5490)
!5640 = !DILocation(line: 320, column: 34, scope: !5490)
!5641 = !DILocation(line: 320, column: 3, scope: !5490)
!5642 = !DILocation(line: 321, column: 7, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 321, column: 7)
!5644 = !DILocation(line: 321, column: 13, scope: !5643)
!5645 = !DILocation(line: 321, column: 18, scope: !5643)
!5646 = !DILocation(line: 321, column: 30, scope: !5643)
!5647 = !DILocation(line: 321, column: 34, scope: !5643)
!5648 = !DILocation(line: 321, column: 40, scope: !5643)
!5649 = !DILocation(line: 321, column: 47, scope: !5643)
!5650 = !DILocation(line: 322, column: 31, scope: !5643)
!5651 = !DILocation(line: 322, column: 37, scope: !5643)
!5652 = !DILocation(line: 322, column: 8, scope: !5643)
!5653 = !DILocation(line: 321, column: 7, scope: !5490)
!5654 = !DILocation(line: 323, column: 10, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5643, file: !3, line: 322, column: 46)
!5656 = !DILocation(line: 324, column: 4, scope: !5655)
!5657 = !DILocation(line: 326, column: 31, scope: !5490)
!5658 = !DILocation(line: 326, column: 37, scope: !5490)
!5659 = !DILocation(line: 326, column: 11, scope: !5490)
!5660 = !DILocation(line: 326, column: 9, scope: !5490)
!5661 = !DILocation(line: 327, column: 3, scope: !5490)
!5662 = !DILocation(line: 330, column: 3, scope: !5490)
!5663 = !DILocation(line: 331, column: 11, scope: !5490)
!5664 = !DILocation(line: 331, column: 17, scope: !5490)
!5665 = !DILocation(line: 331, column: 3, scope: !5490)
!5666 = !DILocation(line: 332, column: 3, scope: !5490)
!5667 = !DILocation(line: 332, column: 9, scope: !5490)
!5668 = !DILocation(line: 332, column: 15, scope: !5490)
!5669 = !DILocation(line: 341, column: 3, scope: !5490)
!5670 = !DILocation(line: 342, column: 3, scope: !5490)
!5671 = !DILocation(line: 345, column: 16, scope: !5490)
!5672 = !DILocation(line: 345, column: 14, scope: !5490)
!5673 = !DILocation(line: 346, column: 3, scope: !5490)
!5674 = !DILocation(line: 349, column: 8, scope: !5675)
!5675 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 349, column: 7)
!5676 = !DILocation(line: 349, column: 14, scope: !5675)
!5677 = !DILocation(line: 349, column: 7, scope: !5490)
!5678 = !DILocation(line: 350, column: 10, scope: !5679)
!5679 = distinct !DILexicalBlock(scope: !5675, file: !3, line: 349, column: 21)
!5680 = !DILocation(line: 351, column: 4, scope: !5679)
!5681 = !DILocation(line: 353, column: 10, scope: !5490)
!5682 = !DILocation(line: 353, column: 8, scope: !5490)
!5683 = !DILocation(line: 354, column: 8, scope: !5490)
!5684 = !DILocation(line: 355, column: 11, scope: !5497)
!5685 = !DILocation(line: 355, column: 11, scope: !5496)
!5686 = !{i64 2155580157}
!5687 = !DILocation(line: 355, column: 11, scope: !5688)
!5688 = distinct !DILexicalBlock(scope: !5496, file: !3, line: 355, column: 11)
!5689 = !DILocation(line: 355, column: 11, scope: !5490)
!5690 = !DILocation(line: 355, column: 9, scope: !5490)
!5691 = !DILocation(line: 356, column: 3, scope: !5490)
!5692 = !DILocation(line: 359, column: 27, scope: !5490)
!5693 = !DILocation(line: 359, column: 33, scope: !5490)
!5694 = !DILocation(line: 359, column: 10, scope: !5490)
!5695 = !DILocation(line: 359, column: 8, scope: !5490)
!5696 = !DILocation(line: 360, column: 8, scope: !5490)
!5697 = !DILocation(line: 361, column: 11, scope: !5504)
!5698 = !DILocation(line: 361, column: 11, scope: !5503)
!5699 = !{i64 2155582160}
!5700 = !DILocation(line: 361, column: 11, scope: !5701)
!5701 = distinct !DILexicalBlock(scope: !5503, file: !3, line: 361, column: 11)
!5702 = !DILocation(line: 361, column: 11, scope: !5490)
!5703 = !DILocation(line: 361, column: 9, scope: !5490)
!5704 = !DILocation(line: 362, column: 3, scope: !5490)
!5705 = !DILocation(line: 365, column: 7, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 365, column: 7)
!5707 = !DILocation(line: 365, column: 13, scope: !5706)
!5708 = !DILocation(line: 365, column: 18, scope: !5706)
!5709 = !DILocation(line: 365, column: 22, scope: !5706)
!5710 = !DILocation(line: 365, column: 25, scope: !5706)
!5711 = !DILocation(line: 365, column: 31, scope: !5706)
!5712 = !DILocation(line: 365, column: 36, scope: !5706)
!5713 = !DILocation(line: 365, column: 7, scope: !5490)
!5714 = !DILocation(line: 366, column: 10, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 365, column: 54)
!5716 = !DILocation(line: 367, column: 4, scope: !5715)
!5717 = !DILocation(line: 369, column: 32, scope: !5490)
!5718 = !DILocation(line: 369, column: 38, scope: !5490)
!5719 = !DILocation(line: 369, column: 12, scope: !5490)
!5720 = !DILocation(line: 369, column: 10, scope: !5490)
!5721 = !DILocation(line: 370, column: 7, scope: !5513)
!5722 = !DILocation(line: 370, column: 7, scope: !5490)
!5723 = !DILocation(line: 371, column: 11, scope: !5512)
!5724 = !DILocation(line: 372, column: 12, scope: !5511)
!5725 = !DILocation(line: 372, column: 12, scope: !5510)
!5726 = !{i64 2155584290}
!5727 = !DILocation(line: 372, column: 12, scope: !5728)
!5728 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 372, column: 12)
!5729 = !DILocation(line: 372, column: 12, scope: !5512)
!5730 = !DILocation(line: 372, column: 10, scope: !5512)
!5731 = !DILocation(line: 373, column: 3, scope: !5512)
!5732 = !DILocation(line: 374, column: 10, scope: !5733)
!5733 = distinct !DILexicalBlock(scope: !5513, file: !3, line: 373, column: 10)
!5734 = !DILocation(line: 376, column: 3, scope: !5490)
!5735 = !DILocation(line: 379, column: 7, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 379, column: 7)
!5737 = !DILocation(line: 379, column: 13, scope: !5736)
!5738 = !DILocation(line: 379, column: 18, scope: !5736)
!5739 = !DILocation(line: 379, column: 22, scope: !5736)
!5740 = !DILocation(line: 379, column: 25, scope: !5736)
!5741 = !DILocation(line: 379, column: 31, scope: !5736)
!5742 = !DILocation(line: 379, column: 36, scope: !5736)
!5743 = !DILocation(line: 379, column: 7, scope: !5490)
!5744 = !DILocation(line: 380, column: 10, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 379, column: 54)
!5746 = !DILocation(line: 381, column: 4, scope: !5745)
!5747 = !DILocation(line: 383, column: 23, scope: !5490)
!5748 = !DILocation(line: 383, column: 29, scope: !5490)
!5749 = !DILocation(line: 383, column: 3, scope: !5490)
!5750 = !DILocation(line: 384, column: 3, scope: !5490)
!5751 = !DILocation(line: 387, column: 8, scope: !5752)
!5752 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 387, column: 7)
!5753 = !DILocation(line: 387, column: 14, scope: !5752)
!5754 = !DILocation(line: 387, column: 7, scope: !5490)
!5755 = !DILocation(line: 388, column: 10, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5752, file: !3, line: 387, column: 22)
!5757 = !DILocation(line: 389, column: 4, scope: !5756)
!5758 = !DILocation(line: 395, column: 11, scope: !5490)
!5759 = !DILocation(line: 395, column: 9, scope: !5490)
!5760 = !DILocation(line: 396, column: 3, scope: !5490)
!5761 = !DILocation(line: 396, column: 9, scope: !5490)
!5762 = !DILocation(line: 396, column: 15, scope: !5490)
!5763 = !DILocation(line: 397, column: 3, scope: !5490)
!5764 = !DILocation(line: 400, column: 30, scope: !5490)
!5765 = !DILocation(line: 400, column: 29, scope: !5490)
!5766 = !DILocation(line: 400, column: 28, scope: !5490)
!5767 = !DILocation(line: 400, column: 3, scope: !5490)
!5768 = !DILocation(line: 400, column: 9, scope: !5490)
!5769 = !DILocation(line: 400, column: 26, scope: !5490)
!5770 = !DILocation(line: 401, column: 3, scope: !5490)
!5771 = !DILocation(line: 404, column: 7, scope: !5772)
!5772 = distinct !DILexicalBlock(scope: !5490, file: !3, line: 404, column: 7)
!5773 = !DILocation(line: 404, column: 13, scope: !5772)
!5774 = !DILocation(line: 404, column: 7, scope: !5490)
!5775 = !DILocation(line: 405, column: 12, scope: !5772)
!5776 = !DILocation(line: 405, column: 10, scope: !5772)
!5777 = !DILocation(line: 405, column: 4, scope: !5772)
!5778 = !DILocation(line: 406, column: 3, scope: !5490)
!5779 = !DILocation(line: 409, column: 34, scope: !5490)
!5780 = !DILocation(line: 409, column: 55, scope: !5490)
!5781 = !DILocation(line: 409, column: 40, scope: !5490)
!5782 = !DILocation(line: 409, column: 11, scope: !5490)
!5783 = !DILocation(line: 409, column: 9, scope: !5490)
!5784 = !DILocation(line: 410, column: 3, scope: !5490)
!5785 = !DILocation(line: 413, column: 9, scope: !5490)
!5786 = !DILocation(line: 415, column: 2, scope: !5490)
!5787 = !DILocation(line: 417, column: 2, scope: !5476)
!5788 = !DILocation(line: 418, column: 2, scope: !5476)
!5789 = !DILocation(line: 420, column: 9, scope: !5476)
!5790 = !DILocation(line: 420, column: 2, scope: !5476)
!5791 = !DILocation(line: 421, column: 1, scope: !5476)
!5792 = distinct !DISubprogram(name: "snapshot_compat_ioctl", scope: !3, file: !3, line: 425, type: !3703, scopeLine: 426, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5793)
!5793 = !{!5794, !5795, !5796}
!5794 = !DILocalVariable(name: "file", arg: 1, scope: !5792, file: !3, line: 425, type: !610)
!5795 = !DILocalVariable(name: "cmd", arg: 2, scope: !5792, file: !3, line: 425, type: !7)
!5796 = !DILocalVariable(name: "arg", arg: 3, scope: !5792, file: !3, line: 425, type: !59)
!5797 = !DILocation(line: 425, column: 36, scope: !5792)
!5798 = !DILocation(line: 425, column: 55, scope: !5792)
!5799 = !DILocation(line: 425, column: 74, scope: !5792)
!5800 = !DILocation(line: 427, column: 2, scope: !5792)
!5801 = !DILocation(line: 427, column: 2, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 427, column: 2)
!5803 = !DILocation(line: 429, column: 10, scope: !5792)
!5804 = !DILocation(line: 429, column: 2, scope: !5792)
!5805 = !DILocation(line: 435, column: 25, scope: !5806)
!5806 = distinct !DILexicalBlock(scope: !5792, file: !3, line: 429, column: 15)
!5807 = !DILocation(line: 435, column: 31, scope: !5806)
!5808 = !DILocation(line: 436, column: 38, scope: !5806)
!5809 = !DILocation(line: 436, column: 27, scope: !5806)
!5810 = !DILocation(line: 436, column: 11, scope: !5806)
!5811 = !DILocation(line: 435, column: 10, scope: !5806)
!5812 = !DILocation(line: 435, column: 3, scope: !5806)
!5813 = !DILocation(line: 438, column: 25, scope: !5806)
!5814 = !DILocation(line: 438, column: 31, scope: !5806)
!5815 = !DILocation(line: 438, column: 36, scope: !5806)
!5816 = !DILocation(line: 438, column: 10, scope: !5806)
!5817 = !DILocation(line: 438, column: 3, scope: !5806)
!5818 = !DILocation(line: 440, column: 1, scope: !5792)
!5819 = distinct !DISubprogram(name: "snapshot_open", scope: !3, file: !3, line: 47, type: !3713, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5820)
!5820 = !{!5821, !5822, !5823, !5824, !5825, !5826}
!5821 = !DILocalVariable(name: "inode", arg: 1, scope: !5819, file: !3, line: 47, type: !1132)
!5822 = !DILocalVariable(name: "filp", arg: 2, scope: !5819, file: !3, line: 47, type: !610)
!5823 = !DILocalVariable(name: "data", scope: !5819, file: !3, line: 49, type: !5324)
!5824 = !DILocalVariable(name: "sleep_flags", scope: !5819, file: !3, line: 50, type: !7)
!5825 = !DILocalVariable(name: "error", scope: !5819, file: !3, line: 51, type: !42)
!5826 = !DILabel(scope: !5819, name: "Unlock", file: !3, line: 101)
!5827 = !DILocation(line: 47, column: 40, scope: !5819)
!5828 = !DILocation(line: 47, column: 60, scope: !5819)
!5829 = !DILocation(line: 49, column: 2, scope: !5819)
!5830 = !DILocation(line: 49, column: 24, scope: !5819)
!5831 = !DILocation(line: 50, column: 2, scope: !5819)
!5832 = !DILocation(line: 50, column: 15, scope: !5819)
!5833 = !DILocation(line: 51, column: 2, scope: !5819)
!5834 = !DILocation(line: 51, column: 6, scope: !5819)
!5835 = !DILocation(line: 53, column: 7, scope: !5836)
!5836 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 53, column: 6)
!5837 = !DILocation(line: 53, column: 6, scope: !5819)
!5838 = !DILocation(line: 54, column: 3, scope: !5836)
!5839 = !DILocation(line: 56, column: 16, scope: !5819)
!5840 = !DILocation(line: 56, column: 14, scope: !5819)
!5841 = !DILocation(line: 58, column: 7, scope: !5842)
!5842 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 58, column: 6)
!5843 = !DILocation(line: 58, column: 6, scope: !5819)
!5844 = !DILocation(line: 59, column: 9, scope: !5845)
!5845 = distinct !DILexicalBlock(scope: !5842, file: !3, line: 58, column: 28)
!5846 = !DILocation(line: 60, column: 3, scope: !5845)
!5847 = !DILocation(line: 63, column: 7, scope: !5848)
!5848 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 63, column: 6)
!5849 = !DILocation(line: 63, column: 13, scope: !5848)
!5850 = !DILocation(line: 63, column: 21, scope: !5848)
!5851 = !DILocation(line: 63, column: 34, scope: !5848)
!5852 = !DILocation(line: 63, column: 6, scope: !5819)
!5853 = !DILocation(line: 64, column: 3, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5848, file: !3, line: 63, column: 45)
!5855 = !DILocation(line: 65, column: 9, scope: !5854)
!5856 = !DILocation(line: 66, column: 3, scope: !5854)
!5857 = !DILocation(line: 68, column: 19, scope: !5819)
!5858 = !DILocation(line: 68, column: 26, scope: !5819)
!5859 = !DILocation(line: 68, column: 2, scope: !5819)
!5860 = !DILocation(line: 69, column: 7, scope: !5819)
!5861 = !DILocation(line: 70, column: 23, scope: !5819)
!5862 = !DILocation(line: 70, column: 2, scope: !5819)
!5863 = !DILocation(line: 70, column: 8, scope: !5819)
!5864 = !DILocation(line: 70, column: 21, scope: !5819)
!5865 = !DILocation(line: 71, column: 10, scope: !5819)
!5866 = !DILocation(line: 71, column: 16, scope: !5819)
!5867 = !DILocation(line: 71, column: 2, scope: !5819)
!5868 = !DILocation(line: 72, column: 7, scope: !5869)
!5869 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 72, column: 6)
!5870 = !DILocation(line: 72, column: 13, scope: !5869)
!5871 = !DILocation(line: 72, column: 21, scope: !5869)
!5872 = !DILocation(line: 72, column: 34, scope: !5869)
!5873 = !DILocation(line: 72, column: 6, scope: !5819)
!5874 = !DILocation(line: 74, column: 29, scope: !5875)
!5875 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 72, column: 47)
!5876 = !DILocation(line: 74, column: 16, scope: !5875)
!5877 = !DILocation(line: 74, column: 3, scope: !5875)
!5878 = !DILocation(line: 74, column: 9, scope: !5875)
!5879 = !DILocation(line: 74, column: 14, scope: !5875)
!5880 = !DILocation(line: 75, column: 3, scope: !5875)
!5881 = !DILocation(line: 75, column: 9, scope: !5875)
!5882 = !DILocation(line: 75, column: 14, scope: !5875)
!5883 = !DILocation(line: 76, column: 3, scope: !5875)
!5884 = !DILocation(line: 76, column: 9, scope: !5875)
!5885 = !DILocation(line: 76, column: 22, scope: !5875)
!5886 = !DILocation(line: 77, column: 11, scope: !5875)
!5887 = !DILocation(line: 77, column: 9, scope: !5875)
!5888 = !DILocation(line: 78, column: 2, scope: !5875)
!5889 = !DILocation(line: 83, column: 13, scope: !5890)
!5890 = distinct !DILexicalBlock(scope: !5869, file: !3, line: 78, column: 9)
!5891 = !DILocation(line: 85, column: 3, scope: !5890)
!5892 = !DILocation(line: 85, column: 9, scope: !5890)
!5893 = !DILocation(line: 85, column: 14, scope: !5890)
!5894 = !DILocation(line: 86, column: 3, scope: !5890)
!5895 = !DILocation(line: 86, column: 9, scope: !5890)
!5896 = !DILocation(line: 86, column: 14, scope: !5890)
!5897 = !DILocation(line: 87, column: 11, scope: !5890)
!5898 = !DILocation(line: 87, column: 9, scope: !5890)
!5899 = !DILocation(line: 88, column: 8, scope: !5900)
!5900 = distinct !DILexicalBlock(scope: !5890, file: !3, line: 88, column: 7)
!5901 = !DILocation(line: 88, column: 7, scope: !5890)
!5902 = !DILocation(line: 89, column: 12, scope: !5903)
!5903 = distinct !DILexicalBlock(scope: !5900, file: !3, line: 88, column: 15)
!5904 = !DILocation(line: 89, column: 10, scope: !5903)
!5905 = !DILocation(line: 90, column: 26, scope: !5903)
!5906 = !DILocation(line: 90, column: 25, scope: !5903)
!5907 = !DILocation(line: 90, column: 4, scope: !5903)
!5908 = !DILocation(line: 90, column: 10, scope: !5903)
!5909 = !DILocation(line: 90, column: 23, scope: !5903)
!5910 = !DILocation(line: 91, column: 3, scope: !5903)
!5911 = !DILocation(line: 93, column: 6, scope: !5912)
!5912 = distinct !DILexicalBlock(scope: !5819, file: !3, line: 93, column: 6)
!5913 = !DILocation(line: 93, column: 6, scope: !5819)
!5914 = !DILocation(line: 94, column: 3, scope: !5912)
!5915 = !DILocation(line: 96, column: 2, scope: !5819)
!5916 = !DILocation(line: 96, column: 8, scope: !5819)
!5917 = !DILocation(line: 96, column: 15, scope: !5819)
!5918 = !DILocation(line: 97, column: 2, scope: !5819)
!5919 = !DILocation(line: 97, column: 8, scope: !5819)
!5920 = !DILocation(line: 97, column: 14, scope: !5819)
!5921 = !DILocation(line: 98, column: 2, scope: !5819)
!5922 = !DILocation(line: 98, column: 8, scope: !5819)
!5923 = !DILocation(line: 98, column: 25, scope: !5819)
!5924 = !DILocation(line: 99, column: 2, scope: !5819)
!5925 = !DILocation(line: 99, column: 8, scope: !5819)
!5926 = !DILocation(line: 99, column: 12, scope: !5819)
!5927 = !DILocation(line: 101, column: 2, scope: !5819)
!5928 = !DILocation(line: 102, column: 22, scope: !5819)
!5929 = !DILocation(line: 102, column: 2, scope: !5819)
!5930 = !DILocation(line: 104, column: 9, scope: !5819)
!5931 = !DILocation(line: 104, column: 2, scope: !5819)
!5932 = !DILocation(line: 105, column: 1, scope: !5819)
!5933 = distinct !DISubprogram(name: "snapshot_release", scope: !3, file: !3, line: 107, type: !3713, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5934)
!5934 = !{!5935, !5936, !5937, !5938}
!5935 = !DILocalVariable(name: "inode", arg: 1, scope: !5933, file: !3, line: 107, type: !1132)
!5936 = !DILocalVariable(name: "filp", arg: 2, scope: !5933, file: !3, line: 107, type: !610)
!5937 = !DILocalVariable(name: "data", scope: !5933, file: !3, line: 109, type: !5324)
!5938 = !DILocalVariable(name: "sleep_flags", scope: !5933, file: !3, line: 110, type: !7)
!5939 = !DILocation(line: 107, column: 43, scope: !5933)
!5940 = !DILocation(line: 107, column: 63, scope: !5933)
!5941 = !DILocation(line: 109, column: 2, scope: !5933)
!5942 = !DILocation(line: 109, column: 24, scope: !5933)
!5943 = !DILocation(line: 110, column: 2, scope: !5933)
!5944 = !DILocation(line: 110, column: 15, scope: !5933)
!5945 = !DILocation(line: 112, column: 16, scope: !5933)
!5946 = !DILocation(line: 112, column: 14, scope: !5933)
!5947 = !DILocation(line: 114, column: 2, scope: !5933)
!5948 = !DILocation(line: 115, column: 9, scope: !5933)
!5949 = !DILocation(line: 115, column: 15, scope: !5933)
!5950 = !DILocation(line: 115, column: 7, scope: !5933)
!5951 = !DILocation(line: 116, column: 2, scope: !5933)
!5952 = !DILocation(line: 116, column: 8, scope: !5933)
!5953 = !DILocation(line: 116, column: 12, scope: !5933)
!5954 = !DILocation(line: 117, column: 22, scope: !5933)
!5955 = !DILocation(line: 117, column: 28, scope: !5933)
!5956 = !DILocation(line: 117, column: 2, scope: !5933)
!5957 = !DILocation(line: 118, column: 6, scope: !5958)
!5958 = distinct !DILexicalBlock(scope: !5933, file: !3, line: 118, column: 6)
!5959 = !DILocation(line: 118, column: 12, scope: !5958)
!5960 = !DILocation(line: 118, column: 6, scope: !5933)
!5961 = !DILocation(line: 119, column: 3, scope: !5962)
!5962 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 118, column: 20)
!5963 = !DILocation(line: 120, column: 3, scope: !5962)
!5964 = !DILocation(line: 121, column: 3, scope: !5962)
!5965 = !DILocation(line: 122, column: 2, scope: !5962)
!5966 = !DILocation(line: 122, column: 13, scope: !5967)
!5967 = distinct !DILexicalBlock(scope: !5958, file: !3, line: 122, column: 13)
!5968 = !DILocation(line: 122, column: 19, scope: !5967)
!5969 = !DILocation(line: 122, column: 13, scope: !5958)
!5970 = !DILocation(line: 123, column: 3, scope: !5971)
!5971 = distinct !DILexicalBlock(scope: !5967, file: !3, line: 122, column: 33)
!5972 = !DILocation(line: 124, column: 2, scope: !5971)
!5973 = !DILocation(line: 125, column: 25, scope: !5933)
!5974 = !DILocation(line: 125, column: 31, scope: !5933)
!5975 = !DILocation(line: 125, column: 36, scope: !5933)
!5976 = !DILocation(line: 125, column: 2, scope: !5933)
!5977 = !DILocation(line: 127, column: 2, scope: !5933)
!5978 = !DILocation(line: 129, column: 22, scope: !5933)
!5979 = !DILocation(line: 129, column: 2, scope: !5933)
!5980 = !DILocation(line: 132, column: 1, scope: !5933)
!5981 = !DILocation(line: 131, column: 2, scope: !5933)
!5982 = !DISubprogram(name: "lock_system_sleep", scope: !261, file: !261, line: 529, type: !5983, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5983 = !DISubroutineType(types: !5984)
!5984 = !{!7}
!5985 = !DISubprogram(name: "snapshot_read_next", scope: !5271, file: !5271, line: 149, type: !5986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5986 = !DISubroutineType(types: !5987)
!5987 = !{!42, !5988}
!5988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5270, size: 64)
!5989 = !DISubprogram(name: "simple_read_from_buffer", scope: !19, file: !19, line: 3187, type: !5990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5990 = !DISubroutineType(types: !5991)
!5991 = !{!1284, !40, !55, !60, !2491, !55}
!5992 = !DISubprogram(name: "unlock_system_sleep", scope: !261, file: !261, line: 530, type: !5993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5993 = !DISubroutineType(types: !5994)
!5994 = !{null, !7}
!5995 = !DISubprogram(name: "wait_for_device_probe", scope: !134, file: !134, line: 130, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5996 = !DISubprogram(name: "snapshot_write_next", scope: !5271, file: !5271, line: 150, type: !5986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5997 = !DISubprogram(name: "simple_write_to_buffer", scope: !19, file: !19, line: 3189, type: !5990, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5998 = !DISubprogram(name: "capable", scope: !745, file: !745, line: 148, type: !5999, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5999 = !DISubroutineType(types: !6000)
!6000 = !{!830, !42}
!6001 = !DISubprogram(name: "mutex_trylock", scope: !639, file: !639, line: 245, type: !6002, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6002 = !DISubroutineType(types: !6003)
!6003 = !{!42, !6004}
!6004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!6005 = !DISubprogram(name: "lock_device_hotplug", scope: !140, file: !140, line: 1129, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6006 = !DISubprogram(name: "ksys_sync_helper", scope: !261, file: !261, line: 500, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6007 = !DISubprogram(name: "freeze_processes", scope: !6008, file: !6008, line: 46, type: !2839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6008 = !DIFile(filename: "./include/linux/freezer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "980eccc8e3c8a58000df4fcfa102b7a2")
!6009 = !DISubprogram(name: "create_basic_memory_bitmaps", scope: !5271, file: !5271, line: 102, type: !2839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6010 = !DISubprogram(name: "thaw_processes", scope: !6008, file: !6008, line: 48, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6011 = !DISubprogram(name: "pm_restore_gfp_mask", scope: !5271, file: !5271, line: 214, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6012 = !DISubprogram(name: "free_basic_memory_bitmaps", scope: !5271, file: !5271, line: 103, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6013 = !DISubprogram(name: "hibernation_snapshot", scope: !5271, file: !5271, line: 58, type: !3738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6014 = distinct !DISubprogram(name: "might_fault", scope: !6015, file: !6015, line: 202, type: !3061, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6015 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!6016 = !DILocation(line: 202, column: 40, scope: !6014)
!6017 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !6018, file: !6018, line: 76, type: !6019, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6021)
!6018 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!6019 = !DISubroutineType(types: !6020)
!6020 = !{null, !40, !2491, !55, !55}
!6021 = !{!6022, !6023, !6024, !6025}
!6022 = !DILocalVariable(name: "to", arg: 1, scope: !6017, file: !6018, line: 76, type: !40)
!6023 = !DILocalVariable(name: "from", arg: 2, scope: !6017, file: !6018, line: 76, type: !2491)
!6024 = !DILocalVariable(name: "to_copy", arg: 3, scope: !6017, file: !6018, line: 77, type: !55)
!6025 = !DILocalVariable(name: "left", arg: 4, scope: !6017, file: !6018, line: 77, type: !55)
!6026 = !DILocation(line: 76, column: 52, scope: !6017)
!6027 = !DILocation(line: 76, column: 68, scope: !6017)
!6028 = !DILocation(line: 77, column: 18, scope: !6017)
!6029 = !DILocation(line: 77, column: 34, scope: !6017)
!6030 = !DILocation(line: 79, column: 1, scope: !6017)
!6031 = !DISubprogram(name: "snapshot_write_finalize", scope: !5271, file: !5271, line: 151, type: !6032, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6032 = !DISubroutineType(types: !6033)
!6033 = !{null, !5988}
!6034 = !DISubprogram(name: "snapshot_image_loaded", scope: !5271, file: !5271, line: 152, type: !5986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6035 = !DISubprogram(name: "hibernation_restore", scope: !5271, file: !5271, line: 59, type: !3738, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6036 = !DISubprogram(name: "swsusp_free", scope: !5271, file: !5271, line: 172, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6037 = !DISubprogram(name: "thaw_kernel_threads", scope: !6008, file: !6008, line: 49, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6038 = !DISubprogram(name: "snapshot_get_image_size", scope: !5271, file: !5271, line: 148, type: !6039, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6039 = !DISubroutineType(types: !6040)
!6040 = !{!59}
!6041 = !DISubprogram(name: "count_swap_pages", scope: !2065, file: !2065, line: 487, type: !6042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6042 = !DISubroutineType(types: !6043)
!6043 = !{!7, !42, !42}
!6044 = !DISubprogram(name: "alloc_swapdev_block", scope: !5271, file: !5271, line: 157, type: !6045, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6045 = !DISubroutineType(types: !6046)
!6046 = !{!1926, !42}
!6047 = !DISubprogram(name: "free_all_swap_pages", scope: !5271, file: !5271, line: 158, type: !4662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6048 = !DISubprogram(name: "suspend_devices_and_enter", scope: !5271, file: !5271, line: 190, type: !6049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6049 = !DISubroutineType(types: !6050)
!6050 = !{!42, !260}
!6051 = !DISubprogram(name: "hibernation_platform_enter", scope: !5271, file: !5271, line: 60, type: !2839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6052 = distinct !DISubprogram(name: "snapshot_set_swap_area", scope: !3, file: !3, line: 213, type: !6053, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6053 = !DISubroutineType(types: !6054)
!6054 = !{!42, !5324, !40}
!6055 = !{!6056, !6057, !6058, !6059, !6060, !6068}
!6056 = !DILocalVariable(name: "data", arg: 1, scope: !6052, file: !3, line: 213, type: !5324)
!6057 = !DILocalVariable(name: "argp", arg: 2, scope: !6052, file: !3, line: 214, type: !40)
!6058 = !DILocalVariable(name: "offset", scope: !6052, file: !3, line: 216, type: !1926)
!6059 = !DILocalVariable(name: "swdev", scope: !6052, file: !3, line: 217, type: !1206)
!6060 = !DILocalVariable(name: "swap_area", scope: !6061, file: !3, line: 223, type: !6063)
!6061 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 222, column: 27)
!6062 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 222, column: 6)
!6063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "compat_resume_swap_area", file: !3, line: 208, size: 96, elements: !6064)
!6064 = !{!6065, !6067}
!6065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6063, file: !3, line: 209, baseType: !6066, size: 64)
!6066 = !DIDerivedType(tag: DW_TAG_typedef, name: "compat_loff_t", file: !4851, line: 36, baseType: !344)
!6067 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6063, file: !3, line: 210, baseType: !269, size: 32, offset: 64)
!6068 = !DILocalVariable(name: "swap_area", scope: !6069, file: !3, line: 230, type: !6070)
!6069 = distinct !DILexicalBlock(scope: !6062, file: !3, line: 229, column: 9)
!6070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resume_swap_area", file: !6071, line: 11, size: 96, elements: !6072)
!6071 = !DIFile(filename: "./include/uapi/linux/suspend_ioctls.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3de3d4cf2a95808b6de07813c8c6594f")
!6072 = !{!6073, !6074}
!6073 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !6070, file: !6071, line: 12, baseType: !62, size: 64)
!6074 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !6070, file: !6071, line: 13, baseType: !270, size: 32, offset: 64)
!6075 = !DILocation(line: 213, column: 57, scope: !6052)
!6076 = !DILocation(line: 214, column: 16, scope: !6052)
!6077 = !DILocation(line: 216, column: 2, scope: !6052)
!6078 = !DILocation(line: 216, column: 11, scope: !6052)
!6079 = !DILocation(line: 217, column: 2, scope: !6052)
!6080 = !DILocation(line: 217, column: 8, scope: !6052)
!6081 = !DILocation(line: 219, column: 6, scope: !6082)
!6082 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 219, column: 6)
!6083 = !DILocation(line: 219, column: 6, scope: !6052)
!6084 = !DILocation(line: 220, column: 3, scope: !6082)
!6085 = !DILocation(line: 222, column: 6, scope: !6062)
!6086 = !DILocation(line: 222, column: 6, scope: !6052)
!6087 = !DILocation(line: 223, column: 3, scope: !6061)
!6088 = !DILocation(line: 223, column: 34, scope: !6061)
!6089 = !DILocation(line: 225, column: 34, scope: !6090)
!6090 = distinct !DILexicalBlock(scope: !6061, file: !3, line: 225, column: 7)
!6091 = !DILocation(line: 225, column: 7, scope: !6090)
!6092 = !DILocation(line: 225, column: 7, scope: !6061)
!6093 = !DILocation(line: 226, column: 4, scope: !6090)
!6094 = !DILocation(line: 227, column: 36, scope: !6061)
!6095 = !DILocation(line: 227, column: 11, scope: !6061)
!6096 = !DILocation(line: 227, column: 9, scope: !6061)
!6097 = !DILocation(line: 228, column: 22, scope: !6061)
!6098 = !DILocation(line: 228, column: 10, scope: !6061)
!6099 = !DILocation(line: 229, column: 2, scope: !6062)
!6100 = !DILocation(line: 229, column: 2, scope: !6061)
!6101 = !DILocation(line: 230, column: 3, scope: !6069)
!6102 = !DILocation(line: 230, column: 27, scope: !6069)
!6103 = !DILocation(line: 232, column: 34, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !6069, file: !3, line: 232, column: 7)
!6105 = !DILocation(line: 232, column: 7, scope: !6104)
!6106 = !DILocation(line: 232, column: 7, scope: !6069)
!6107 = !DILocation(line: 233, column: 4, scope: !6104)
!6108 = !DILocation(line: 234, column: 36, scope: !6069)
!6109 = !DILocation(line: 234, column: 11, scope: !6069)
!6110 = !DILocation(line: 234, column: 9, scope: !6069)
!6111 = !DILocation(line: 235, column: 22, scope: !6069)
!6112 = !DILocation(line: 235, column: 10, scope: !6069)
!6113 = !DILocation(line: 236, column: 2, scope: !6062)
!6114 = !DILocation(line: 242, column: 28, scope: !6052)
!6115 = !DILocation(line: 242, column: 35, scope: !6052)
!6116 = !DILocation(line: 242, column: 15, scope: !6052)
!6117 = !DILocation(line: 242, column: 2, scope: !6052)
!6118 = !DILocation(line: 242, column: 8, scope: !6052)
!6119 = !DILocation(line: 242, column: 13, scope: !6052)
!6120 = !DILocation(line: 243, column: 6, scope: !6121)
!6121 = distinct !DILexicalBlock(scope: !6052, file: !3, line: 243, column: 6)
!6122 = !DILocation(line: 243, column: 12, scope: !6121)
!6123 = !DILocation(line: 243, column: 17, scope: !6121)
!6124 = !DILocation(line: 243, column: 6, scope: !6052)
!6125 = !DILocation(line: 244, column: 10, scope: !6121)
!6126 = !DILocation(line: 244, column: 3, scope: !6121)
!6127 = !DILocation(line: 245, column: 14, scope: !6052)
!6128 = !DILocation(line: 245, column: 2, scope: !6052)
!6129 = !DILocation(line: 245, column: 8, scope: !6052)
!6130 = !DILocation(line: 245, column: 12, scope: !6052)
!6131 = !DILocation(line: 246, column: 2, scope: !6052)
!6132 = !DILocation(line: 247, column: 1, scope: !6052)
!6133 = !DISubprogram(name: "unlock_device_hotplug", scope: !140, file: !140, line: 1130, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6134 = !DISubprogram(name: "mutex_unlock", scope: !639, file: !639, line: 246, type: !6135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6135 = !DISubroutineType(types: !6136)
!6136 = !{null, !6004}
!6137 = !DISubprogram(name: "swsusp_swap_in_use", scope: !5271, file: !5271, line: 159, type: !2839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6138 = distinct !DISubprogram(name: "in_compat_syscall", scope: !6139, file: !6139, line: 98, type: !2481, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6139 = !DIFile(filename: "./arch/x86/include/asm/compat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "13e4bbbeecac635d510b530a702cc1fd")
!6140 = !DILocation(line: 100, column: 9, scope: !6138)
!6141 = !DILocation(line: 100, column: 2, scope: !6138)
!6142 = distinct !DISubprogram(name: "copy_from_user", scope: !6143, file: !6143, line: 180, type: !6144, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6146)
!6143 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!6144 = !DISubroutineType(types: !6145)
!6145 = !{!59, !40, !2491, !59}
!6146 = !{!6147, !6148, !6149}
!6147 = !DILocalVariable(name: "to", arg: 1, scope: !6142, file: !6143, line: 180, type: !40)
!6148 = !DILocalVariable(name: "from", arg: 2, scope: !6142, file: !6143, line: 180, type: !2491)
!6149 = !DILocalVariable(name: "n", arg: 3, scope: !6142, file: !6143, line: 180, type: !59)
!6150 = !DILocation(line: 180, column: 22, scope: !6142)
!6151 = !DILocation(line: 180, column: 45, scope: !6142)
!6152 = !DILocation(line: 180, column: 65, scope: !6142)
!6153 = !DILocation(line: 182, column: 22, scope: !6154)
!6154 = distinct !DILexicalBlock(scope: !6142, file: !6143, line: 182, column: 6)
!6155 = !DILocation(line: 182, column: 26, scope: !6154)
!6156 = !DILocation(line: 182, column: 6, scope: !6154)
!6157 = !DILocation(line: 182, column: 6, scope: !6142)
!6158 = !DILocation(line: 183, column: 23, scope: !6154)
!6159 = !DILocation(line: 183, column: 27, scope: !6154)
!6160 = !DILocation(line: 183, column: 33, scope: !6154)
!6161 = !DILocation(line: 183, column: 7, scope: !6154)
!6162 = !DILocation(line: 183, column: 5, scope: !6154)
!6163 = !DILocation(line: 183, column: 3, scope: !6154)
!6164 = !DILocation(line: 184, column: 9, scope: !6142)
!6165 = !DILocation(line: 184, column: 2, scope: !6142)
!6166 = distinct !DISubprogram(name: "new_decode_dev", scope: !6167, file: !6167, line: 46, type: !6168, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6170)
!6167 = !DIFile(filename: "./include/linux/kdev_t.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d4069c7bb69bcdf1e01b1b06b87483f5")
!6168 = !DISubroutineType(types: !6169)
!6169 = !{!1206, !269}
!6170 = !{!6171, !6172, !6173}
!6171 = !DILocalVariable(name: "dev", arg: 1, scope: !6166, file: !6167, line: 46, type: !269)
!6172 = !DILocalVariable(name: "major", scope: !6166, file: !6167, line: 48, type: !7)
!6173 = !DILocalVariable(name: "minor", scope: !6166, file: !6167, line: 49, type: !7)
!6174 = !DILocation(line: 46, column: 49, scope: !6166)
!6175 = !DILocation(line: 48, column: 2, scope: !6166)
!6176 = !DILocation(line: 48, column: 11, scope: !6166)
!6177 = !DILocation(line: 48, column: 20, scope: !6166)
!6178 = !DILocation(line: 48, column: 24, scope: !6166)
!6179 = !DILocation(line: 48, column: 35, scope: !6166)
!6180 = !DILocation(line: 49, column: 2, scope: !6166)
!6181 = !DILocation(line: 49, column: 11, scope: !6166)
!6182 = !DILocation(line: 49, column: 20, scope: !6166)
!6183 = !DILocation(line: 49, column: 24, scope: !6166)
!6184 = !DILocation(line: 49, column: 36, scope: !6166)
!6185 = !DILocation(line: 49, column: 40, scope: !6166)
!6186 = !DILocation(line: 49, column: 47, scope: !6166)
!6187 = !DILocation(line: 49, column: 32, scope: !6166)
!6188 = !DILocation(line: 50, column: 9, scope: !6166)
!6189 = !DILocation(line: 51, column: 1, scope: !6166)
!6190 = !DILocation(line: 50, column: 2, scope: !6166)
!6191 = !DISubprogram(name: "swap_type_of", scope: !2065, file: !2065, line: 485, type: !6192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6192 = !DISubroutineType(types: !6193)
!6193 = !{!42, !1206, !1926}
!6194 = distinct !DISubprogram(name: "in_32bit_syscall", scope: !6139, file: !6139, line: 92, type: !2481, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6195 = !DILocation(line: 94, column: 9, scope: !6194)
!6196 = !DILocation(line: 94, column: 27, scope: !6194)
!6197 = !DILocation(line: 94, column: 30, scope: !6194)
!6198 = !DILocation(line: 94, column: 2, scope: !6194)
!6199 = distinct !DISubprogram(name: "get_current", scope: !6200, file: !6200, line: 39, type: !6201, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6203)
!6200 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!6201 = !DISubroutineType(types: !6202)
!6202 = !{!273}
!6203 = !{!6204, !6206, !6208}
!6204 = !DILocalVariable(name: "pscr_ret__", scope: !6205, file: !6200, line: 41, type: !273)
!6205 = distinct !DILexicalBlock(scope: !6199, file: !6200, line: 41, column: 9)
!6206 = !DILocalVariable(name: "__vpp_verify", scope: !6207, file: !6200, line: 41, type: !2491)
!6207 = distinct !DILexicalBlock(scope: !6205, file: !6200, line: 41, column: 9)
!6208 = !DILocalVariable(name: "pfo_val__", scope: !6209, file: !6200, line: 41, type: !333)
!6209 = distinct !DILexicalBlock(scope: !6205, file: !6200, line: 41, column: 9)
!6210 = !DILocation(line: 41, column: 9, scope: !6205)
!6211 = !DILocation(line: 41, column: 9, scope: !6207)
!6212 = !DILocation(line: 41, column: 9, scope: !6209)
!6213 = !{i64 2148314865}
!6214 = !DILocation(line: 41, column: 9, scope: !6199)
!6215 = !DILocation(line: 41, column: 2, scope: !6199)
!6216 = distinct !DISubprogram(name: "in_x32_syscall", scope: !6139, file: !6139, line: 83, type: !2481, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!6217 = !DILocation(line: 89, column: 2, scope: !6216)
!6218 = distinct !DISubprogram(name: "check_copy_size", scope: !5263, file: !5263, line: 237, type: !6219, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6221)
!6219 = !DISubroutineType(types: !6220)
!6220 = !{!830, !2491, !55, !830}
!6221 = !{!6222, !6223, !6224, !6225, !6226, !6229}
!6222 = !DILocalVariable(name: "addr", arg: 1, scope: !6218, file: !5263, line: 237, type: !2491)
!6223 = !DILocalVariable(name: "bytes", arg: 2, scope: !6218, file: !5263, line: 237, type: !55)
!6224 = !DILocalVariable(name: "is_source", arg: 3, scope: !6218, file: !5263, line: 237, type: !830)
!6225 = !DILocalVariable(name: "sz", scope: !6218, file: !5263, line: 239, type: !42)
!6226 = !DILocalVariable(name: "__ret_warn_on", scope: !6227, file: !5263, line: 249, type: !42)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !5263, line: 249, column: 6)
!6228 = distinct !DILexicalBlock(scope: !6218, file: !5263, line: 249, column: 6)
!6229 = !DILocalVariable(name: "__flags", scope: !6230, file: !5263, line: 249, type: !42)
!6230 = distinct !DILexicalBlock(scope: !6231, file: !5263, line: 249, column: 6)
!6231 = distinct !DILexicalBlock(scope: !6227, file: !5263, line: 249, column: 6)
!6232 = !DILocation(line: 237, column: 29, scope: !6218)
!6233 = !DILocation(line: 237, column: 42, scope: !6218)
!6234 = !DILocation(line: 237, column: 54, scope: !6218)
!6235 = !DILocation(line: 239, column: 2, scope: !6218)
!6236 = !DILocation(line: 239, column: 6, scope: !6218)
!6237 = !DILocation(line: 239, column: 33, scope: !6218)
!6238 = !DILocation(line: 239, column: 11, scope: !6218)
!6239 = !DILocation(line: 240, column: 6, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6218, file: !5263, line: 240, column: 6)
!6241 = !DILocation(line: 0, scope: !6240)
!6242 = !DILocation(line: 240, column: 6, scope: !6218)
!6243 = !DILocation(line: 241, column: 29, scope: !6244)
!6244 = distinct !DILexicalBlock(scope: !6245, file: !5263, line: 241, column: 7)
!6245 = distinct !DILexicalBlock(scope: !6240, file: !5263, line: 240, column: 39)
!6246 = !DILocation(line: 241, column: 8, scope: !6244)
!6247 = !DILocation(line: 241, column: 7, scope: !6245)
!6248 = !DILocation(line: 242, column: 18, scope: !6244)
!6249 = !DILocation(line: 242, column: 22, scope: !6244)
!6250 = !DILocation(line: 242, column: 4, scope: !6244)
!6251 = !DILocation(line: 243, column: 12, scope: !6252)
!6252 = distinct !DILexicalBlock(scope: !6244, file: !5263, line: 243, column: 12)
!6253 = !DILocation(line: 243, column: 12, scope: !6244)
!6254 = !DILocation(line: 244, column: 4, scope: !6252)
!6255 = !{i32 838535}
!6256 = !DILocation(line: 246, column: 4, scope: !6252)
!6257 = !{i32 838564}
!6258 = !DILocation(line: 247, column: 3, scope: !6245)
!6259 = !DILocation(line: 249, column: 6, scope: !6227)
!6260 = !DILocation(line: 249, column: 6, scope: !6231)
!6261 = !DILocation(line: 249, column: 6, scope: !6230)
!6262 = !DILocation(line: 249, column: 6, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6230, file: !5263, line: 249, column: 6)
!6264 = !DILocation(line: 249, column: 6, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6230, file: !5263, line: 249, column: 6)
!6266 = !{i64 2149490806, i64 2149490835, i64 2149490881, i64 2149490939, i64 2149490993, i64 2149491047, i64 2149491102, i64 2149491133, i64 2149491441, i64 2149491447, i64 2149491494, i64 2149491517, i64 2149491543}
!6267 = !DILocation(line: 249, column: 6, scope: !6268)
!6268 = distinct !DILexicalBlock(scope: !6230, file: !5263, line: 249, column: 6)
!6269 = !DILocation(line: 249, column: 6, scope: !6228)
!6270 = !DILocation(line: 249, column: 6, scope: !6218)
!6271 = !DILocation(line: 250, column: 3, scope: !6228)
!6272 = !DILocation(line: 251, column: 20, scope: !6218)
!6273 = !DILocation(line: 251, column: 26, scope: !6218)
!6274 = !DILocation(line: 251, column: 33, scope: !6218)
!6275 = !DILocation(line: 251, column: 2, scope: !6218)
!6276 = !DILocation(line: 252, column: 2, scope: !6218)
!6277 = !DILocation(line: 253, column: 1, scope: !6218)
!6278 = !DISubprogram(name: "_copy_from_user", scope: !6143, file: !6143, line: 158, type: !6144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6279 = distinct !DISubprogram(name: "copy_overflow", scope: !5263, file: !5263, line: 230, type: !6280, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6282)
!6280 = !DISubroutineType(types: !6281)
!6281 = !{null, !42, !59}
!6282 = !{!6283, !6284}
!6283 = !DILocalVariable(name: "size", arg: 1, scope: !6279, file: !5263, line: 230, type: !42)
!6284 = !DILocalVariable(name: "count", arg: 2, scope: !6279, file: !5263, line: 230, type: !59)
!6285 = !DILocation(line: 230, column: 38, scope: !6279)
!6286 = !DILocation(line: 230, column: 58, scope: !6279)
!6287 = !DILocation(line: 233, column: 19, scope: !6288)
!6288 = distinct !DILexicalBlock(scope: !6279, file: !5263, line: 232, column: 6)
!6289 = !DILocation(line: 233, column: 25, scope: !6288)
!6290 = !DILocation(line: 233, column: 3, scope: !6288)
!6291 = !DILocation(line: 234, column: 1, scope: !6279)
!6292 = !DISubprogram(name: "__bad_copy_from", scope: !5263, file: !5263, line: 224, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6293 = !DISubprogram(name: "__bad_copy_to", scope: !5263, file: !5263, line: 226, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6294 = distinct !DISubprogram(name: "check_object_size", scope: !5263, file: !5263, line: 218, type: !6295, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6297)
!6295 = !DISubroutineType(types: !6296)
!6296 = !{null, !2491, !59, !830}
!6297 = !{!6298, !6299, !6300}
!6298 = !DILocalVariable(name: "ptr", arg: 1, scope: !6294, file: !5263, line: 218, type: !2491)
!6299 = !DILocalVariable(name: "n", arg: 2, scope: !6294, file: !5263, line: 218, type: !59)
!6300 = !DILocalVariable(name: "to_user", arg: 3, scope: !6294, file: !5263, line: 219, type: !830)
!6301 = !DILocation(line: 218, column: 50, scope: !6294)
!6302 = !DILocation(line: 218, column: 69, scope: !6294)
!6303 = !DILocation(line: 219, column: 15, scope: !6294)
!6304 = !DILocation(line: 220, column: 3, scope: !6294)
!6305 = !DISubprogram(name: "__copy_overflow", scope: !5263, file: !5263, line: 228, type: !6280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6306 = distinct !DISubprogram(name: "compat_ptr", scope: !4844, file: !4844, line: 977, type: !6307, scopeLine: 978, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6309)
!6307 = !DISubroutineType(types: !6308)
!6308 = !{!40, !4850}
!6309 = !{!6310}
!6310 = !DILocalVariable(name: "uptr", arg: 1, scope: !6306, file: !4844, line: 977, type: !4850)
!6311 = !DILocation(line: 977, column: 53, scope: !6306)
!6312 = !DILocation(line: 979, column: 39, scope: !6306)
!6313 = !DILocation(line: 979, column: 24, scope: !6306)
!6314 = !DILocation(line: 979, column: 9, scope: !6306)
!6315 = !DILocation(line: 979, column: 2, scope: !6306)
!6316 = !DISubprogram(name: "hibernate_acquire", scope: !5271, file: !5271, line: 154, type: !2481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6317 = !DISubprogram(name: "hibernate_release", scope: !5271, file: !5271, line: 155, type: !3061, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6318 = !DISubprogram(name: "nonseekable_open", scope: !19, file: !19, line: 3021, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6319 = !DISubprogram(name: "pm_notifier_call_chain_robust", scope: !5271, file: !5271, line: 211, type: !6320, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6320 = !DISubroutineType(types: !6321)
!6321 = !{!42, !59, !59}
!6322 = !DISubprogram(name: "pm_notifier_call_chain", scope: !5271, file: !5271, line: 212, type: !6323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6323 = !DISubroutineType(types: !6324)
!6324 = !{!42, !59}
