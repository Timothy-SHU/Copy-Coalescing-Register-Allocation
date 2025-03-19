; ModuleID = 'drivers/tty/serial/serial_base_bus.c'
source_filename = "drivers/tty/serial/serial_base_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall3.init..kmod_serial_base__292_235_serial_base_init\22, \22a\22\09\09"
module asm "__initcall__kmod_serial_base__292_235_serial_base_init3:\09\09\09"
module asm ".long\09__initstub__kmod_serial_base__292_235_serial_base_init3 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.serial_ctrl_device = type { %struct.device, %struct.ida }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.uart_port = type { %struct.spinlock, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i64, i32, i32, i8, i8, i8, i8, i32, i32, ptr, %struct.uart_icount, ptr, i64, i32, i8, i32, i32, i32, ptr, i32, i32, i32, i64, i64, ptr, ptr, i64, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, %struct.serial_rs485, %struct.serial_rs485, ptr, ptr, %struct.serial_iso7816, ptr }
%struct.uart_icount = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.serial_rs485 = type { i32, i32, i32, %union.anon.16 }
%union.anon.16 = type { [5 x i32] }
%struct.serial_iso7816 = type { i32, i32, i32, i32, i32, [5 x i32] }
%struct.serial_port_device = type { %struct.device, ptr, i8 }

@serial_base_bus_type = internal global %struct.bus_type { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @serial_base_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0 }, align 8, !dbg !0
@serial_ctrl_type = internal constant %struct.device_type { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5345
@serial_port_type = internal constant %struct.device_type { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !5349
@__UNIQUE_ID___addressable___initstub__kmod_serial_base__292_235_serial_base_init3293 = internal global ptr @__initstub__kmod_serial_base__292_235_serial_base_init3, section ".discard.addressable", align 8, !dbg !5303
@__exitcall_serial_base_exit = internal global ptr @serial_base_exit, section ".exitcall.exit", align 8, !dbg !5305
@__UNIQUE_ID_author294 = internal constant [52 x i8] c"serial_base.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1, !dbg !5309
@__UNIQUE_ID_description295 = internal constant [40 x i8] c"serial_base.description=Serial core bus\00", section ".modinfo", align 1, !dbg !5312
@__UNIQUE_ID_file296 = internal constant [48 x i8] c"serial_base.file=drivers/tty/serial/serial_base\00", section ".modinfo", align 1, !dbg !5317
@__UNIQUE_ID_license297 = internal constant [24 x i8] c"serial_base.license=GPL\00", section ".modinfo", align 1, !dbg !5322
@.str = private unnamed_addr constant [12 x i8] c"serial-base\00", align 1, !dbg !5327
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5330
@serial_base_initialized = internal global i8 0, align 1, !dbg !5340
@.str.2 = private unnamed_addr constant [6 x i8] c"%s:%d\00", align 1, !dbg !5335
@.str.3 = private unnamed_addr constant [9 x i8] c"%s:%d.%d\00", align 1, !dbg !5337
@.str.4 = private unnamed_addr constant [5 x i8] c"ctrl\00", align 1, !dbg !5342
@.str.5 = private unnamed_addr constant [5 x i8] c"port\00", align 1, !dbg !5347
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_serial_base__292_235_serial_base_init3293, ptr @__exitcall_serial_base_exit, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @serial_base_driver_register(ptr noundef %driver) #0 align 16 !dbg !5360 {
entry:
  %driver.addr = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5364, metadata !DIExpression()), !dbg !5365
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !5366
  %bus = getelementptr inbounds %struct.device_driver, ptr %0, i32 0, i32 1, !dbg !5367
  store ptr @serial_base_bus_type, ptr %bus, align 8, !dbg !5368
  %1 = load ptr, ptr %driver.addr, align 8, !dbg !5369
  %call = call i32 @driver_register(ptr noundef %1) #15, !dbg !5370
  ret i32 %call, !dbg !5371
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5372 dso_local i32 @driver_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serial_base_driver_unregister(ptr noundef %driver) #0 align 16 !dbg !5373 {
entry:
  %driver.addr = alloca ptr, align 8
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !5377, metadata !DIExpression()), !dbg !5378
  %0 = load ptr, ptr %driver.addr, align 8, !dbg !5379
  call void @driver_unregister(ptr noundef %0) #15, !dbg !5380
  ret void, !dbg !5381
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5382 dso_local void @driver_unregister(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serial_base_ctrl_device_remove(ptr noundef %ctrl_dev) #0 align 16 !dbg !5383 {
entry:
  %ctrl_dev.addr = alloca ptr, align 8
  store ptr %ctrl_dev, ptr %ctrl_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctrl_dev.addr, metadata !5387, metadata !DIExpression()), !dbg !5388
  %0 = load ptr, ptr %ctrl_dev.addr, align 8, !dbg !5389
  %tobool = icmp ne ptr %0, null, !dbg !5389
  br i1 %tobool, label %if.end, label %if.then, !dbg !5391

if.then:                                          ; preds = %entry
  br label %return, !dbg !5392

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctrl_dev.addr, align 8, !dbg !5393
  %dev = getelementptr inbounds %struct.serial_ctrl_device, ptr %1, i32 0, i32 0, !dbg !5394
  call void @device_del(ptr noundef %dev) #15, !dbg !5395
  %2 = load ptr, ptr %ctrl_dev.addr, align 8, !dbg !5396
  %dev1 = getelementptr inbounds %struct.serial_ctrl_device, ptr %2, i32 0, i32 0, !dbg !5397
  call void @put_device(ptr noundef %dev1) #15, !dbg !5398
  br label %return, !dbg !5399

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5399
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5400 dso_local void @device_del(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5401 dso_local void @put_device(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @serial_base_ctrl_add(ptr noundef %port, ptr noundef %parent) #0 align 16 !dbg !5402 {
entry:
  %retval = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %ctrl_dev = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5406, metadata !DIExpression()), !dbg !5411
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !5407, metadata !DIExpression()), !dbg !5412
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl_dev) #16, !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %ctrl_dev, metadata !5408, metadata !DIExpression()), !dbg !5414
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5409, metadata !DIExpression()), !dbg !5416
  %call = call noalias ptr @kzalloc(i64 noundef 744, i32 noundef 3264) #17, !dbg !5417
  store ptr %call, ptr %ctrl_dev, align 8, !dbg !5418
  %0 = load ptr, ptr %ctrl_dev, align 8, !dbg !5419
  %tobool = icmp ne ptr %0, null, !dbg !5419
  br i1 %tobool, label %if.end, label %if.then, !dbg !5421

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !5422
  store ptr %call1, ptr %retval, align 8, !dbg !5423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5423

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ctrl_dev, align 8, !dbg !5424
  %port_ida = getelementptr inbounds %struct.serial_ctrl_device, ptr %1, i32 0, i32 1, !dbg !5425
  call void @ida_init(ptr noundef %port_ida) #15, !dbg !5426
  %2 = load ptr, ptr %port.addr, align 8, !dbg !5427
  %3 = load ptr, ptr %ctrl_dev, align 8, !dbg !5428
  %dev = getelementptr inbounds %struct.serial_ctrl_device, ptr %3, i32 0, i32 0, !dbg !5429
  %4 = load ptr, ptr %parent.addr, align 8, !dbg !5430
  %5 = load ptr, ptr %port.addr, align 8, !dbg !5431
  %ctrl_id = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 20, !dbg !5432
  %6 = load i32, ptr %ctrl_id, align 8, !dbg !5432
  %call2 = call i32 @serial_base_device_init(ptr noundef %2, ptr noundef %dev, ptr noundef %4, ptr noundef @serial_ctrl_type, ptr noundef @serial_base_ctrl_release, i32 noundef %6, i32 noundef 0) #15, !dbg !5433
  store i32 %call2, ptr %err, align 4, !dbg !5434
  %7 = load i32, ptr %err, align 4, !dbg !5435
  %tobool3 = icmp ne i32 %7, 0, !dbg !5435
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5437

if.then4:                                         ; preds = %if.end
  br label %err_put_device, !dbg !5438

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %ctrl_dev, align 8, !dbg !5439
  %dev6 = getelementptr inbounds %struct.serial_ctrl_device, ptr %8, i32 0, i32 0, !dbg !5440
  %call7 = call i32 @device_add(ptr noundef %dev6) #15, !dbg !5441
  store i32 %call7, ptr %err, align 4, !dbg !5442
  %9 = load i32, ptr %err, align 4, !dbg !5443
  %tobool8 = icmp ne i32 %9, 0, !dbg !5443
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5445

if.then9:                                         ; preds = %if.end5
  br label %err_put_device, !dbg !5446

if.end10:                                         ; preds = %if.end5
  %10 = load ptr, ptr %ctrl_dev, align 8, !dbg !5447
  store ptr %10, ptr %retval, align 8, !dbg !5448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5448

err_put_device:                                   ; preds = %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !5410), !dbg !5449
  %11 = load ptr, ptr %ctrl_dev, align 8, !dbg !5450
  %dev11 = getelementptr inbounds %struct.serial_ctrl_device, ptr %11, i32 0, i32 0, !dbg !5451
  call void @put_device(ptr noundef %dev11) #15, !dbg !5452
  %12 = load i32, ptr %err, align 4, !dbg !5453
  %conv = sext i32 %12 to i64, !dbg !5453
  %call12 = call ptr @ERR_PTR(i64 noundef %conv) #15, !dbg !5454
  store ptr %call12, ptr %retval, align 8, !dbg !5455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5455

cleanup:                                          ; preds = %err_put_device, %if.end10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5456
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl_dev) #16, !dbg !5456
  %13 = load ptr, ptr %retval, align 8, !dbg !5456
  ret ptr %13, !dbg !5456
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !5457 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5461, metadata !DIExpression()), !dbg !5463
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5462, metadata !DIExpression()), !dbg !5464
  %0 = load i64, ptr %size.addr, align 8, !dbg !5465
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5466
  %or = or i32 %1, 256, !dbg !5467
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !5468
  ret ptr %call, !dbg !5469
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #5 align 16 !dbg !5470 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !5475, metadata !DIExpression()), !dbg !5476
  %0 = load i64, ptr %error.addr, align 8, !dbg !5477
  %1 = inttoptr i64 %0 to ptr, !dbg !5478
  ret ptr %1, !dbg !5479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ida_init(ptr noundef %ida) #5 align 16 !dbg !5480 {
entry:
  %ida.addr = alloca ptr, align 8
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !5485, metadata !DIExpression()), !dbg !5486
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !5487
  %xa = getelementptr inbounds %struct.ida, ptr %0, i32 0, i32 0, !dbg !5488
  call void @xa_init_flags(ptr noundef %xa, i32 noundef 67108869) #15, !dbg !5489
  ret void, !dbg !5490
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serial_base_device_init(ptr noundef %port, ptr noundef %dev, ptr noundef %parent_dev, ptr noundef %type, ptr noundef %release, i32 noundef %ctrl_id, i32 noundef %port_id) #0 align 16 !dbg !5491 {
entry:
  %retval = alloca i32, align 4
  %port.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %parent_dev.addr = alloca ptr, align 8
  %type.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  %ctrl_id.addr = alloca i32, align 4
  %port_id.addr = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5495, metadata !DIExpression()), !dbg !5502
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5496, metadata !DIExpression()), !dbg !5503
  store ptr %parent_dev, ptr %parent_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent_dev.addr, metadata !5497, metadata !DIExpression()), !dbg !5504
  store ptr %type, ptr %type.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5498, metadata !DIExpression()), !dbg !5505
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !5499, metadata !DIExpression()), !dbg !5506
  store i32 %ctrl_id, ptr %ctrl_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %ctrl_id.addr, metadata !5500, metadata !DIExpression()), !dbg !5507
  store i32 %port_id, ptr %port_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %port_id.addr, metadata !5501, metadata !DIExpression()), !dbg !5508
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5509
  call void @device_initialize(ptr noundef %0) #15, !dbg !5510
  %1 = load ptr, ptr %type.addr, align 8, !dbg !5511
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5512
  %type1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 4, !dbg !5513
  store ptr %1, ptr %type1, align 8, !dbg !5514
  %3 = load ptr, ptr %parent_dev.addr, align 8, !dbg !5515
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5516
  %parent = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !5517
  store ptr %3, ptr %parent, align 8, !dbg !5518
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5519
  %bus = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 5, !dbg !5520
  store ptr @serial_base_bus_type, ptr %bus, align 8, !dbg !5521
  %6 = load ptr, ptr %release.addr, align 8, !dbg !5522
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !5523
  %release2 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 32, !dbg !5524
  store ptr %6, ptr %release2, align 8, !dbg !5525
  %8 = load i8, ptr @serial_base_initialized, align 1, !dbg !5526, !range !5528, !noundef !900
  %tobool = trunc i8 %8 to i1, !dbg !5526
  br i1 %tobool, label %if.end, label %if.then, !dbg !5529

if.then:                                          ; preds = %entry
  store i32 -517, ptr %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %type.addr, align 8, !dbg !5532
  %cmp = icmp eq ptr %9, @serial_ctrl_type, !dbg !5534
  br i1 %cmp, label %if.then3, label %if.end6, !dbg !5535

if.then3:                                         ; preds = %if.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !5536
  %11 = load ptr, ptr %port.addr, align 8, !dbg !5537
  %dev4 = getelementptr inbounds %struct.uart_port, ptr %11, i32 0, i32 47, !dbg !5538
  %12 = load ptr, ptr %dev4, align 8, !dbg !5538
  %call = call ptr @dev_name(ptr noundef %12) #15, !dbg !5539
  %13 = load i32, ptr %ctrl_id.addr, align 4, !dbg !5540
  %call5 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %10, ptr noundef @.str.2, ptr noundef %call, i32 noundef %13) #15, !dbg !5541
  store i32 %call5, ptr %retval, align 4, !dbg !5542
  br label %return, !dbg !5542

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %type.addr, align 8, !dbg !5543
  %cmp7 = icmp eq ptr %14, @serial_port_type, !dbg !5545
  br i1 %cmp7, label %if.then8, label %if.end12, !dbg !5546

if.then8:                                         ; preds = %if.end6
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !5547
  %16 = load ptr, ptr %port.addr, align 8, !dbg !5548
  %dev9 = getelementptr inbounds %struct.uart_port, ptr %16, i32 0, i32 47, !dbg !5549
  %17 = load ptr, ptr %dev9, align 8, !dbg !5549
  %call10 = call ptr @dev_name(ptr noundef %17) #15, !dbg !5550
  %18 = load i32, ptr %ctrl_id.addr, align 4, !dbg !5551
  %19 = load i32, ptr %port_id.addr, align 4, !dbg !5552
  %call11 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %15, ptr noundef @.str.3, ptr noundef %call10, i32 noundef %18, i32 noundef %19) #15, !dbg !5553
  store i32 %call11, ptr %retval, align 4, !dbg !5554
  br label %return, !dbg !5554

if.end12:                                         ; preds = %if.end6
  store i32 -22, ptr %retval, align 4, !dbg !5555
  br label %return, !dbg !5555

return:                                           ; preds = %if.end12, %if.then8, %if.then3, %if.then
  %20 = load i32, ptr %retval, align 4, !dbg !5556
  ret i32 %20, !dbg !5556
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serial_base_ctrl_release(ptr noundef %dev) #0 align 16 !dbg !5557 {
entry:
  %dev.addr = alloca ptr, align 8
  %ctrl_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5559, metadata !DIExpression()), !dbg !5563
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl_dev) #16, !dbg !5564
  call void @llvm.dbg.declare(metadata ptr %ctrl_dev, metadata !5560, metadata !DIExpression()), !dbg !5565
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5566
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5561, metadata !DIExpression()), !dbg !5566
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5566
  store ptr %0, ptr %__mptr, align 8, !dbg !5566
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5566
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5566
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5566
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5567
  %2 = load ptr, ptr %tmp, align 8, !dbg !5566
  store ptr %2, ptr %ctrl_dev, align 8, !dbg !5565
  %3 = load ptr, ptr %ctrl_dev, align 8, !dbg !5568
  call void @kfree(ptr noundef %3) #15, !dbg !5569
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl_dev) #16, !dbg !5570
  ret void, !dbg !5570
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5571 dso_local i32 @device_add(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @serial_base_port_add(ptr noundef %port, ptr noundef %ctrl_dev) #0 align 16 !dbg !5572 {
entry:
  %retval = alloca ptr, align 8
  %port.addr = alloca ptr, align 8
  %ctrl_dev.addr = alloca ptr, align 8
  %port_dev = alloca ptr, align 8
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !5576, metadata !DIExpression()), !dbg !5583
  store ptr %ctrl_dev, ptr %ctrl_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ctrl_dev.addr, metadata !5577, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 8, ptr %port_dev) #16, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %port_dev, metadata !5578, metadata !DIExpression()), !dbg !5586
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #16, !dbg !5587
  call void @llvm.dbg.declare(metadata ptr %min, metadata !5579, metadata !DIExpression()), !dbg !5588
  store i32 0, ptr %min, align 4, !dbg !5588
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #16, !dbg !5587
  call void @llvm.dbg.declare(metadata ptr %max, metadata !5580, metadata !DIExpression()), !dbg !5589
  store i32 -1, ptr %max, align 4, !dbg !5589
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5590
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5581, metadata !DIExpression()), !dbg !5591
  %call = call noalias ptr @kzalloc(i64 noundef 744, i32 noundef 3264) #17, !dbg !5592
  store ptr %call, ptr %port_dev, align 8, !dbg !5593
  %0 = load ptr, ptr %port_dev, align 8, !dbg !5594
  %tobool = icmp ne ptr %0, null, !dbg !5594
  br i1 %tobool, label %if.end, label %if.then, !dbg !5596

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #15, !dbg !5597
  store ptr %call1, ptr %retval, align 8, !dbg !5598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5598

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %port.addr, align 8, !dbg !5599
  %port_id = getelementptr inbounds %struct.uart_port, ptr %1, i32 0, i32 21, !dbg !5601
  %2 = load i32, ptr %port_id, align 4, !dbg !5601
  %tobool2 = icmp ne i32 %2, 0, !dbg !5599
  br i1 %tobool2, label %if.then3, label %if.end6, !dbg !5602

if.then3:                                         ; preds = %if.end
  %3 = load ptr, ptr %port.addr, align 8, !dbg !5603
  %port_id4 = getelementptr inbounds %struct.uart_port, ptr %3, i32 0, i32 21, !dbg !5605
  %4 = load i32, ptr %port_id4, align 4, !dbg !5605
  store i32 %4, ptr %min, align 4, !dbg !5606
  %5 = load ptr, ptr %port.addr, align 8, !dbg !5607
  %port_id5 = getelementptr inbounds %struct.uart_port, ptr %5, i32 0, i32 21, !dbg !5608
  %6 = load i32, ptr %port_id5, align 4, !dbg !5608
  store i32 %6, ptr %max, align 4, !dbg !5609
  br label %if.end6, !dbg !5610

if.end6:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %ctrl_dev.addr, align 8, !dbg !5611
  %port_ida = getelementptr inbounds %struct.serial_ctrl_device, ptr %7, i32 0, i32 1, !dbg !5612
  %8 = load i32, ptr %min, align 4, !dbg !5613
  %9 = load i32, ptr %max, align 4, !dbg !5614
  %call7 = call i32 @ida_alloc_range(ptr noundef %port_ida, i32 noundef %8, i32 noundef %9, i32 noundef 3264) #15, !dbg !5615
  store i32 %call7, ptr %err, align 4, !dbg !5616
  %10 = load i32, ptr %err, align 4, !dbg !5617
  %cmp = icmp slt i32 %10, 0, !dbg !5619
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !5620

if.then8:                                         ; preds = %if.end6
  %11 = load ptr, ptr %port_dev, align 8, !dbg !5621
  call void @kfree(ptr noundef %11) #15, !dbg !5623
  %12 = load i32, ptr %err, align 4, !dbg !5624
  %conv = sext i32 %12 to i64, !dbg !5624
  %call9 = call ptr @ERR_PTR(i64 noundef %conv) #15, !dbg !5625
  store ptr %call9, ptr %retval, align 8, !dbg !5626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5626

if.end10:                                         ; preds = %if.end6
  %13 = load i32, ptr %err, align 4, !dbg !5627
  %14 = load ptr, ptr %port.addr, align 8, !dbg !5628
  %port_id11 = getelementptr inbounds %struct.uart_port, ptr %14, i32 0, i32 21, !dbg !5629
  store i32 %13, ptr %port_id11, align 4, !dbg !5630
  %15 = load ptr, ptr %port.addr, align 8, !dbg !5631
  %16 = load ptr, ptr %port_dev, align 8, !dbg !5632
  %dev = getelementptr inbounds %struct.serial_port_device, ptr %16, i32 0, i32 0, !dbg !5633
  %17 = load ptr, ptr %ctrl_dev.addr, align 8, !dbg !5634
  %dev12 = getelementptr inbounds %struct.serial_ctrl_device, ptr %17, i32 0, i32 0, !dbg !5635
  %18 = load ptr, ptr %port.addr, align 8, !dbg !5636
  %ctrl_id = getelementptr inbounds %struct.uart_port, ptr %18, i32 0, i32 20, !dbg !5637
  %19 = load i32, ptr %ctrl_id, align 8, !dbg !5637
  %20 = load ptr, ptr %port.addr, align 8, !dbg !5638
  %port_id13 = getelementptr inbounds %struct.uart_port, ptr %20, i32 0, i32 21, !dbg !5639
  %21 = load i32, ptr %port_id13, align 4, !dbg !5639
  %call14 = call i32 @serial_base_device_init(ptr noundef %15, ptr noundef %dev, ptr noundef %dev12, ptr noundef @serial_port_type, ptr noundef @serial_base_port_release, i32 noundef %19, i32 noundef %21) #15, !dbg !5640
  store i32 %call14, ptr %err, align 4, !dbg !5641
  %22 = load i32, ptr %err, align 4, !dbg !5642
  %tobool15 = icmp ne i32 %22, 0, !dbg !5642
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !5644

if.then16:                                        ; preds = %if.end10
  br label %err_put_device, !dbg !5645

if.end17:                                         ; preds = %if.end10
  %23 = load ptr, ptr %port.addr, align 8, !dbg !5646
  %24 = load ptr, ptr %port_dev, align 8, !dbg !5647
  %port18 = getelementptr inbounds %struct.serial_port_device, ptr %24, i32 0, i32 1, !dbg !5648
  store ptr %23, ptr %port18, align 8, !dbg !5649
  %25 = load ptr, ptr %port_dev, align 8, !dbg !5650
  %dev19 = getelementptr inbounds %struct.serial_port_device, ptr %25, i32 0, i32 0, !dbg !5651
  %call20 = call i32 @device_add(ptr noundef %dev19) #15, !dbg !5652
  store i32 %call20, ptr %err, align 4, !dbg !5653
  %26 = load i32, ptr %err, align 4, !dbg !5654
  %tobool21 = icmp ne i32 %26, 0, !dbg !5654
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !5656

if.then22:                                        ; preds = %if.end17
  br label %err_put_device, !dbg !5657

if.end23:                                         ; preds = %if.end17
  %27 = load ptr, ptr %port_dev, align 8, !dbg !5658
  store ptr %27, ptr %retval, align 8, !dbg !5659
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5659

err_put_device:                                   ; preds = %if.then22, %if.then16
  call void @llvm.dbg.label(metadata !5582), !dbg !5660
  %28 = load ptr, ptr %port_dev, align 8, !dbg !5661
  %dev24 = getelementptr inbounds %struct.serial_port_device, ptr %28, i32 0, i32 0, !dbg !5662
  call void @put_device(ptr noundef %dev24) #15, !dbg !5663
  %29 = load ptr, ptr %ctrl_dev.addr, align 8, !dbg !5664
  %port_ida25 = getelementptr inbounds %struct.serial_ctrl_device, ptr %29, i32 0, i32 1, !dbg !5665
  %30 = load ptr, ptr %port.addr, align 8, !dbg !5666
  %port_id26 = getelementptr inbounds %struct.uart_port, ptr %30, i32 0, i32 21, !dbg !5667
  %31 = load i32, ptr %port_id26, align 4, !dbg !5667
  call void @ida_free(ptr noundef %port_ida25, i32 noundef %31) #15, !dbg !5668
  %32 = load i32, ptr %err, align 4, !dbg !5669
  %conv27 = sext i32 %32 to i64, !dbg !5669
  %call28 = call ptr @ERR_PTR(i64 noundef %conv27) #15, !dbg !5670
  store ptr %call28, ptr %retval, align 8, !dbg !5671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5671

cleanup:                                          ; preds = %err_put_device, %if.end23, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #16, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #16, !dbg !5672
  call void @llvm.lifetime.end.p0(i64 8, ptr %port_dev) #16, !dbg !5672
  %33 = load ptr, ptr %retval, align 8, !dbg !5672
  ret ptr %33, !dbg !5672
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5673 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5676 dso_local void @kfree(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serial_base_port_release(ptr noundef %dev) #0 align 16 !dbg !5679 {
entry:
  %dev.addr = alloca ptr, align 8
  %port_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5681, metadata !DIExpression()), !dbg !5685
  call void @llvm.lifetime.start.p0(i64 8, ptr %port_dev) #16, !dbg !5686
  call void @llvm.dbg.declare(metadata ptr %port_dev, metadata !5682, metadata !DIExpression()), !dbg !5687
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5688
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5683, metadata !DIExpression()), !dbg !5688
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5688
  store ptr %0, ptr %__mptr, align 8, !dbg !5688
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5688
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5688
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5689
  %2 = load ptr, ptr %tmp, align 8, !dbg !5688
  store ptr %2, ptr %port_dev, align 8, !dbg !5687
  %3 = load ptr, ptr %port_dev, align 8, !dbg !5690
  call void @kfree(ptr noundef %3) #15, !dbg !5691
  call void @llvm.lifetime.end.p0(i64 8, ptr %port_dev) #16, !dbg !5692
  ret void, !dbg !5692
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5693 dso_local void @ida_free(ptr noundef, i32 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @serial_base_port_device_remove(ptr noundef %port_dev) #0 align 16 !dbg !5696 {
entry:
  %port_dev.addr = alloca ptr, align 8
  %ctrl_dev = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %port_dev, ptr %port_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port_dev.addr, metadata !5700, metadata !DIExpression()), !dbg !5705
  call void @llvm.lifetime.start.p0(i64 8, ptr %ctrl_dev) #16, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %ctrl_dev, metadata !5701, metadata !DIExpression()), !dbg !5707
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #16, !dbg !5708
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !5702, metadata !DIExpression()), !dbg !5709
  %0 = load ptr, ptr %port_dev.addr, align 8, !dbg !5710
  %tobool = icmp ne ptr %0, null, !dbg !5710
  br i1 %tobool, label %if.end, label %if.then, !dbg !5712

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5713

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %port_dev.addr, align 8, !dbg !5714
  %dev = getelementptr inbounds %struct.serial_port_device, ptr %1, i32 0, i32 0, !dbg !5715
  %parent1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5716
  %2 = load ptr, ptr %parent1, align 8, !dbg !5716
  store ptr %2, ptr %parent, align 8, !dbg !5717
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5718
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5703, metadata !DIExpression()), !dbg !5718
  %3 = load ptr, ptr %parent, align 8, !dbg !5718
  store ptr %3, ptr %__mptr, align 8, !dbg !5718
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5718
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !5718
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5718
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5719
  %5 = load ptr, ptr %tmp, align 8, !dbg !5718
  store ptr %5, ptr %ctrl_dev, align 8, !dbg !5720
  %6 = load ptr, ptr %port_dev.addr, align 8, !dbg !5721
  %dev2 = getelementptr inbounds %struct.serial_port_device, ptr %6, i32 0, i32 0, !dbg !5722
  call void @device_del(ptr noundef %dev2) #15, !dbg !5723
  %7 = load ptr, ptr %ctrl_dev, align 8, !dbg !5724
  %port_ida = getelementptr inbounds %struct.serial_ctrl_device, ptr %7, i32 0, i32 1, !dbg !5725
  %8 = load ptr, ptr %port_dev.addr, align 8, !dbg !5726
  %port = getelementptr inbounds %struct.serial_port_device, ptr %8, i32 0, i32 1, !dbg !5727
  %9 = load ptr, ptr %port, align 8, !dbg !5727
  %port_id = getelementptr inbounds %struct.uart_port, ptr %9, i32 0, i32 21, !dbg !5728
  %10 = load i32, ptr %port_id, align 4, !dbg !5728
  call void @ida_free(ptr noundef %port_ida, i32 noundef %10) #15, !dbg !5729
  %11 = load ptr, ptr %port_dev.addr, align 8, !dbg !5730
  %dev3 = getelementptr inbounds %struct.serial_port_device, ptr %11, i32 0, i32 0, !dbg !5731
  call void @put_device(ptr noundef %dev3) #15, !dbg !5732
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5733
  br label %cleanup, !dbg !5733

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #16, !dbg !5733
  call void @llvm.lifetime.end.p0(i64 8, ptr %ctrl_dev) #16, !dbg !5733
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5733

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_serial_base__292_235_serial_base_init3() #6 section ".init.text" align 16 !dbg !5734 {
entry:
  %call = call i32 @serial_base_init() #15, !dbg !5735
  ret i32 %call, !dbg !5735
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serial_base_init() #0 align 16 !dbg !5736 {
entry:
  %retval = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5738, metadata !DIExpression()), !dbg !5742
  %call = call i32 @bus_register(ptr noundef @serial_base_bus_type) #15, !dbg !5743
  store i32 %call, ptr %ret, align 4, !dbg !5744
  %0 = load i32, ptr %ret, align 4, !dbg !5745
  %tobool = icmp ne i32 %0, 0, !dbg !5745
  br i1 %tobool, label %if.then, label %if.end, !dbg !5747

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !5748
  store i32 %1, ptr %retval, align 4, !dbg !5749
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5749

if.end:                                           ; preds = %entry
  %call1 = call i32 @serial_base_ctrl_init() #15, !dbg !5750
  store i32 %call1, ptr %ret, align 4, !dbg !5751
  %2 = load i32, ptr %ret, align 4, !dbg !5752
  %tobool2 = icmp ne i32 %2, 0, !dbg !5752
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5754

if.then3:                                         ; preds = %if.end
  br label %err_bus_unregister, !dbg !5755

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @serial_base_port_init() #15, !dbg !5756
  store i32 %call5, ptr %ret, align 4, !dbg !5757
  %3 = load i32, ptr %ret, align 4, !dbg !5758
  %tobool6 = icmp ne i32 %3, 0, !dbg !5758
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5760

if.then7:                                         ; preds = %if.end4
  br label %err_ctrl_exit, !dbg !5761

if.end8:                                          ; preds = %if.end4
  store i8 1, ptr @serial_base_initialized, align 1, !dbg !5762
  store i32 0, ptr %retval, align 4, !dbg !5763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5763

err_ctrl_exit:                                    ; preds = %if.then7
  call void @llvm.dbg.label(metadata !5739), !dbg !5764
  call void @serial_base_ctrl_exit() #15, !dbg !5765
  br label %err_bus_unregister, !dbg !5765

err_bus_unregister:                               ; preds = %err_ctrl_exit, %if.then3
  call void @llvm.dbg.label(metadata !5740), !dbg !5766
  call void @bus_unregister(ptr noundef @serial_base_bus_type) #15, !dbg !5767
  %4 = load i32, ptr %ret, align 4, !dbg !5768
  store i32 %4, ptr %retval, align 4, !dbg !5769
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5769

cleanup:                                          ; preds = %err_bus_unregister, %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5770
  %5 = load i32, ptr %retval, align 4, !dbg !5770
  ret i32 %5, !dbg !5770
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serial_base_exit() #0 align 16 !dbg !5771 {
entry:
  call void @serial_base_port_exit() #15, !dbg !5772
  call void @serial_base_ctrl_exit() #15, !dbg !5773
  call void @bus_unregister(ptr noundef @serial_base_bus_type) #15, !dbg !5774
  ret void, !dbg !5775
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @serial_base_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !5776 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5778, metadata !DIExpression()), !dbg !5780
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !5779, metadata !DIExpression()), !dbg !5781
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5782
  %type = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 4, !dbg !5784
  %1 = load ptr, ptr %type, align 8, !dbg !5784
  %cmp = icmp eq ptr %1, @serial_ctrl_type, !dbg !5785
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !5786

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !5787
  %name = getelementptr inbounds %struct.device_driver, ptr %2, i32 0, i32 0, !dbg !5788
  %3 = load ptr, ptr %name, align 8, !dbg !5788
  %4 = load ptr, ptr @serial_ctrl_type, align 8, !dbg !5789
  %call = call i64 @str_has_prefix(ptr noundef %3, ptr noundef %4) #15, !dbg !5790
  %tobool = icmp ne i64 %call, 0, !dbg !5790
  br i1 %tobool, label %if.then, label %if.end, !dbg !5791

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5792
  br label %return, !dbg !5792

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5793
  %type1 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 4, !dbg !5795
  %6 = load ptr, ptr %type1, align 8, !dbg !5795
  %cmp2 = icmp eq ptr %6, @serial_port_type, !dbg !5796
  br i1 %cmp2, label %land.lhs.true3, label %if.end8, !dbg !5797

land.lhs.true3:                                   ; preds = %if.end
  %7 = load ptr, ptr %drv.addr, align 8, !dbg !5798
  %name4 = getelementptr inbounds %struct.device_driver, ptr %7, i32 0, i32 0, !dbg !5799
  %8 = load ptr, ptr %name4, align 8, !dbg !5799
  %9 = load ptr, ptr @serial_port_type, align 8, !dbg !5800
  %call5 = call i64 @str_has_prefix(ptr noundef %8, ptr noundef %9) #15, !dbg !5801
  %tobool6 = icmp ne i64 %call5, 0, !dbg !5801
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !5802

if.then7:                                         ; preds = %land.lhs.true3
  store i32 1, ptr %retval, align 4, !dbg !5803
  br label %return, !dbg !5803

if.end8:                                          ; preds = %land.lhs.true3, %if.end
  store i32 0, ptr %retval, align 4, !dbg !5804
  br label %return, !dbg !5804

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !5805
  ret i32 %10, !dbg !5805
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @str_has_prefix(ptr noundef %str, ptr noundef %prefix) #7 align 16 !dbg !5806 {
entry:
  %str.addr = alloca ptr, align 8
  %prefix.addr = alloca ptr, align 8
  %len = alloca i64, align 8
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !5811, metadata !DIExpression()), !dbg !5814
  store ptr %prefix, ptr %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prefix.addr, metadata !5812, metadata !DIExpression()), !dbg !5815
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #16, !dbg !5816
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5813, metadata !DIExpression()), !dbg !5817
  %0 = load ptr, ptr %prefix.addr, align 8, !dbg !5818
  %call = call i64 @strlen(ptr noundef %0) #15, !dbg !5819
  store i64 %call, ptr %len, align 8, !dbg !5817
  %1 = load ptr, ptr %str.addr, align 8, !dbg !5820
  %2 = load ptr, ptr %prefix.addr, align 8, !dbg !5821
  %3 = load i64, ptr %len, align 8, !dbg !5822
  %call1 = call i32 @strncmp(ptr noundef %1, ptr noundef %2, i64 noundef %3) #15, !dbg !5823
  %cmp = icmp eq i32 %call1, 0, !dbg !5824
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !5823

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr %len, align 8, !dbg !5825
  br label %cond.end, !dbg !5823

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5823

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !5823
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #16, !dbg !5826
  ret i64 %cond, !dbg !5827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5828 dso_local i64 @strlen(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5831 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5834 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5836, metadata !DIExpression()), !dbg !5841
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5837, metadata !DIExpression()), !dbg !5842
  %0 = load i64, ptr %size.addr, align 8, !dbg !5843
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5844
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5845

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5846
  %tobool = icmp ne i64 %2, 0, !dbg !5846
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5847

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5848
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5838, metadata !DIExpression()), !dbg !5849
  %3 = load i64, ptr %size.addr, align 8, !dbg !5850
  %cmp = icmp ugt i64 %3, 8192, !dbg !5852
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5853

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5854
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5855
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5856
  store ptr %call, ptr %retval, align 8, !dbg !5857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5857

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5858
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !5858
  store i32 %call2, ptr %index, align 4, !dbg !5859
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5860
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5861
  %9 = ptrtoint ptr %8 to i64, !dbg !5861
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !5862
  %idxprom = zext i32 %call3 to i64, !dbg !5863
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5863
  %10 = load i32, ptr %index, align 4, !dbg !5864
  %idxprom4 = zext i32 %10 to i64, !dbg !5863
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5863
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5863
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5865
  %13 = load i64, ptr %size.addr, align 8, !dbg !5866
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !5867
  store ptr %call6, ptr %retval, align 8, !dbg !5868
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5868

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5869
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5870
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5871
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5872
  store ptr %call8, ptr %retval, align 8, !dbg !5873
  br label %return, !dbg !5873

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5874
  ret ptr %16, !dbg !5874
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5875 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !5876 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5880, metadata !DIExpression()), !dbg !5882
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5881, metadata !DIExpression()), !dbg !5883
  %0 = load i64, ptr %size.addr, align 8, !dbg !5884
  %tobool = icmp ne i64 %0, 0, !dbg !5884
  br i1 %tobool, label %if.end, label %if.then, !dbg !5886

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5887
  br label %return, !dbg !5887

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5888
  %cmp = icmp ule i64 %1, 8, !dbg !5890
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5891

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5892
  br label %return, !dbg !5892

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5893
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5895
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5896

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5897
  %cmp4 = icmp ule i64 %3, 96, !dbg !5898
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5899

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5900
  br label %return, !dbg !5900

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5901
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5903
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5904

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5905
  %cmp9 = icmp ule i64 %5, 192, !dbg !5906
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5907

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5908
  br label %return, !dbg !5908

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5909
  %cmp12 = icmp ule i64 %6, 8, !dbg !5911
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5912

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5913
  br label %return, !dbg !5913

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5914
  %cmp15 = icmp ule i64 %7, 16, !dbg !5916
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5917

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5918
  br label %return, !dbg !5918

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5919
  %cmp18 = icmp ule i64 %8, 32, !dbg !5921
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5922

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5923
  br label %return, !dbg !5923

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5924
  %cmp21 = icmp ule i64 %9, 64, !dbg !5926
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5927

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5928
  br label %return, !dbg !5928

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5929
  %cmp24 = icmp ule i64 %10, 128, !dbg !5931
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5932

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5933
  br label %return, !dbg !5933

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5934
  %cmp27 = icmp ule i64 %11, 256, !dbg !5936
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5937

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5938
  br label %return, !dbg !5938

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5939
  %cmp30 = icmp ule i64 %12, 512, !dbg !5941
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5942

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5943
  br label %return, !dbg !5943

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5944
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5946
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5947

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5948
  br label %return, !dbg !5948

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5949
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5951
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5952

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5953
  br label %return, !dbg !5953

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5954
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5956
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5957

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5958
  br label %return, !dbg !5958

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5959
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5961
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5962

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5963
  br label %return, !dbg !5963

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5964
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5966
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5967

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5968
  br label %return, !dbg !5968

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5969
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5971
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5972

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5973
  br label %return, !dbg !5973

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5974
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5976
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5977

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5978
  br label %return, !dbg !5978

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5979
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5981
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5982

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5983
  br label %return, !dbg !5983

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5984
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5986
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5987

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5988
  br label %return, !dbg !5988

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5989
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5991
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5992

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5993
  br label %return, !dbg !5993

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5994
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5996
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5997

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5998
  br label %return, !dbg !5998

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5999
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6001
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6002

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6003
  br label %return, !dbg !6003

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6004, !range !5528, !noundef !900
  %tobool69 = trunc i8 %25 to i1, !dbg !6004
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6006

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6007

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_265() #19, !dbg !6008, !srcloc !6011
  unreachable, !dbg !6008

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6012

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6013

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6014

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6016

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6014

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !6018, !srcloc !6020
  br label %do.end75, !dbg !6018

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6014

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6021
  br label %return, !dbg !6021

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6022
  ret i32 %26, !dbg !6022
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6023 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !6029 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6033, metadata !DIExpression()), !dbg !6035
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6034, metadata !DIExpression()), !dbg !6036
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6037
  %and = and i32 %0, 17, !dbg !6037
  %cmp = icmp eq i32 %and, 0, !dbg !6037
  %lnot = xor i1 %cmp, true, !dbg !6037
  %lnot1 = xor i1 %lnot, true, !dbg !6037
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6037
  %conv = sext i32 %lnot.ext to i64, !dbg !6037
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6037
  %tobool = icmp ne i64 %expval, 0, !dbg !6037
  br i1 %tobool, label %if.then, label %if.end, !dbg !6039

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6040
  br label %return, !dbg !6040

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6041
  %and2 = and i32 %1, 1, !dbg !6043
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6043
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6044

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6045
  br label %return, !dbg !6045

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6046
  br label %return, !dbg !6046

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6048
  ret i32 %2, !dbg !6048
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6049 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6050 dso_local void @__compiletime_assert_265() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @xa_init_flags(ptr noundef %xa, i32 noundef %flags) #5 align 16 !dbg !6051 {
entry:
  %xa.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  store ptr %xa, ptr %xa.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %xa.addr, metadata !6056, metadata !DIExpression()), !dbg !6058
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6057, metadata !DIExpression()), !dbg !6059
  br label %do.body, !dbg !6060

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %xa.addr, align 8, !dbg !6061
  %xa_lock = getelementptr inbounds %struct.xarray, ptr %0, i32 0, i32 0, !dbg !6061
  %call = call ptr @spinlock_check(ptr noundef %xa_lock) #15, !dbg !6061
  %1 = load ptr, ptr %xa.addr, align 8, !dbg !6061
  %xa_lock1 = getelementptr inbounds %struct.xarray, ptr %1, i32 0, i32 0, !dbg !6061
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6061
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !6061
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6061
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !6061
  store i32 0, ptr %counter, align 4, !dbg !6061
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %xa_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6061
  br label %do.end, !dbg !6061

do.end:                                           ; preds = %do.body
  %4 = load i32, ptr %flags.addr, align 4, !dbg !6063
  %5 = load ptr, ptr %xa.addr, align 8, !dbg !6064
  %xa_flags = getelementptr inbounds %struct.xarray, ptr %5, i32 0, i32 1, !dbg !6065
  store i32 %4, ptr %xa_flags, align 4, !dbg !6066
  %6 = load ptr, ptr %xa.addr, align 8, !dbg !6067
  %xa_head = getelementptr inbounds %struct.xarray, ptr %6, i32 0, i32 2, !dbg !6068
  store ptr null, ptr %xa_head, align 8, !dbg !6069
  ret void, !dbg !6070
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #7 align 16 !dbg !6071 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6077, metadata !DIExpression()), !dbg !6078
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6079
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6080
  ret ptr %1, !dbg !6081
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6082 dso_local void @device_initialize(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6083 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #5 align 16 !dbg !6086 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6090, metadata !DIExpression()), !dbg !6091
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6092
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !6094
  %1 = load ptr, ptr %init_name, align 8, !dbg !6094
  %tobool = icmp ne ptr %1, null, !dbg !6092
  br i1 %tobool, label %if.then, label %if.end, !dbg !6095

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !6096
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !6097
  %3 = load ptr, ptr %init_name1, align 8, !dbg !6097
  store ptr %3, ptr %retval, align 8, !dbg !6098
  br label %return, !dbg !6098

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !6099
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !6100
  %call = call ptr @kobject_name(ptr noundef %kobj) #15, !dbg !6101
  store ptr %call, ptr %retval, align 8, !dbg !6102
  br label %return, !dbg !6102

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !6103
  ret ptr %5, !dbg !6103
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #5 align 16 !dbg !6104 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6106, metadata !DIExpression()), !dbg !6107
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6108
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !6109
  %1 = load ptr, ptr %name, align 8, !dbg !6109
  ret ptr %1, !dbg !6110
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6111 dso_local i32 @bus_register(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6114 dso_local i32 @serial_base_ctrl_init() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6115 dso_local i32 @serial_base_port_init() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6116 dso_local void @serial_base_ctrl_exit() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6117 dso_local void @bus_unregister(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6120 dso_local void @serial_base_port_exit() #2

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358}
!llvm.ident = !{!5359}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "serial_base_bus_type", scope: !2, file: !3, line: 44, type: !4650, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/tty/serial/.serial_base_bus.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/tty/serial/serial_base\22 -D KBUILD_BASENAME=\22serial_base_bus\22 -D KBUILD_MODNAME=\22serial_base\22 -D __KBUILD_MODNAME=kmod_serial_base -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/tty/serial/serial_base_bus.ll drivers/tty/serial/serial_base_bus.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !167, globals: !5302, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/tty/serial/serial_base_bus.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54546d8304ddcff5782fe289e5f881d3")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !64, !72, !81, !86, !91, !97, !113, !120, !128, !135, !141, !147, !152, !162}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !6, line: 26, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11}
!9 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!10 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!11 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !13, line: 9, baseType: !7, size: 32, elements: !14)
!13 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!14 = !{!15, !16, !17, !18, !19}
!15 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!16 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!17 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!18 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!19 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !21, line: 312, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!24 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!25 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!26 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !28, line: 2052, baseType: !7, size: 32, elements: !29)
!28 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!29 = !{!30, !31}
!30 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!31 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !33, line: 54, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!34 = !{!35, !36, !37}
!35 = !DIEnumerator(name: "USRQUOTA", value: 0)
!36 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!37 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !7, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !44, line: 16, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!45 = !{!46, !47, !48}
!46 = !DIEnumerator(name: "TT_NONE", value: 0)
!47 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!48 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !50, line: 487, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!53 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!54 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!55 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !57, line: 620, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!58 = !{!59, !60, !61, !62, !63}
!59 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!60 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!61 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!62 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!63 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !57, line: 597, baseType: !65, size: 32, elements: !66)
!65 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!66 = !{!67, !68, !69, !70, !71}
!67 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!68 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!69 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!70 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!71 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !50, line: 547, baseType: !7, size: 32, elements: !73)
!73 = !{!74, !75, !76, !77, !78, !79, !80}
!74 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!75 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!76 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!77 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!78 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!79 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!80 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !50, line: 564, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!84 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!85 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !50, line: 577, baseType: !7, size: 32, elements: !87)
!87 = !{!88, !89, !90}
!88 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!89 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!90 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!91 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !50, line: 503, baseType: !7, size: 32, elements: !92)
!92 = !{!93, !94, !95, !96}
!93 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!94 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!95 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!96 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !98, line: 1325, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112}
!100 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!101 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!102 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!103 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!104 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!105 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!106 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!107 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!108 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!109 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!110 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!111 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!112 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!113 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !114, line: 15, baseType: !7, size: 32, elements: !115)
!114 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!115 = !{!116, !117, !118, !119}
!116 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!117 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!118 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!119 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!120 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !121, line: 68, baseType: !7, size: 32, elements: !122)
!121 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!122 = !{!123, !124, !125, !126, !127}
!123 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!124 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!125 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!126 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!127 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !129, line: 51, baseType: !7, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!130 = !{!131, !132, !133, !134}
!131 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!132 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!133 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!134 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !136, line: 45, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!139 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!140 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uart_pm_state", file: !142, line: 687, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/serial_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7055ea58a7a181cb3963c528b528c8b1")
!143 = !{!144, !145, !146}
!144 = !DIEnumerator(name: "UART_PM_STATE_ON", value: 0)
!145 = !DIEnumerator(name: "UART_PM_STATE_OFF", value: 3)
!146 = !DIEnumerator(name: "UART_PM_STATE_UNDEFINED", value: 4)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !148, line: 10, baseType: !7, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!149 = !{!150, !151}
!150 = !DIEnumerator(name: "false", value: 0)
!151 = !DIEnumerator(name: "true", value: 1)
!152 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !153, line: 364, baseType: !7, size: 32, elements: !154)
!153 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!154 = !{!155, !156, !157, !158, !159, !160, !161}
!155 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!156 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!157 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!158 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!159 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!160 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!161 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!162 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xa_lock_type", file: !163, line: 258, baseType: !7, size: 32, elements: !164)
!163 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!164 = !{!165, !166}
!165 = !DIEnumerator(name: "XA_LOCK_IRQ", value: 1)
!166 = !DIEnumerator(name: "XA_LOCK_BH", value: 2)
!167 = !{!168, !170, !171, !320, !7, !5040, !5041}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !169, line: 154, baseType: !7)
!169 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_ctrl_device", file: !173, line: 17, size: 5952, elements: !174)
!173 = !DIFile(filename: "drivers/tty/serial/serial_base.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f56d5016e726543d3219baaf0c863362")
!174 = !{!175, !5035}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !172, file: !173, line: 18, baseType: !176, size: 5824)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !50, line: 705, size: 5824, elements: !177)
!177 = !{!178, !4589, !4590, !4593, !4594, !4647, !4717, !4718, !4719, !4720, !4721, !4728, !4820, !4833, !4843, !4847, !4849, !4850, !4851, !4855, !4862, !4863, !4866, !4869, !4873, !4977, !4978, !4979, !4980, !4981, !4982, !5012, !5013, !5014, !5017, !5020, !5029, !5030, !5031, !5032, !5033, !5034}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !176, file: !50, line: 706, baseType: !179, size: 512)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !180, line: 64, size: 512, elements: !181)
!180 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!181 = !{!182, !186, !192, !194, !283, !4492, !4583, !4584, !4585, !4586, !4587, !4588}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !180, line: 65, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!185 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !179, file: !180, line: 66, baseType: !187, size: 128, offset: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !169, line: 190, size: 128, elements: !188)
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !169, line: 191, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !187, file: !169, line: 191, baseType: !190, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !180, line: 67, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !179, file: !180, line: 68, baseType: !195, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !180, line: 168, size: 768, elements: !197)
!197 = !{!198, !199, !242, !243}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !196, file: !180, line: 169, baseType: !187, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !196, file: !180, line: 170, baseType: !200, size: 32, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !201, line: 29, baseType: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !201, line: 17, size: 32, elements: !203)
!203 = !{!204}
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !202, file: !201, line: 18, baseType: !205, size: 32)
!205 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !202, file: !201, line: 18, size: 32, elements: !206)
!206 = !{!207}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !205, file: !201, line: 19, baseType: !208, size: 32)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !209, line: 14, size: 32, elements: !210)
!209 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!210 = !{!211}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !208, file: !209, line: 15, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !213, line: 44, baseType: !214)
!213 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !213, line: 14, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !214, file: !213, line: 15, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !214, file: !213, line: 15, size: 32, elements: !218)
!218 = !{!219, !224, !234}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !217, file: !213, line: 16, baseType: !220, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !169, line: 174, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 172, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !221, file: !169, line: 173, baseType: !65, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !213, line: 24, baseType: !225, size: 16)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !213, line: 24, size: 16, elements: !226)
!226 = !{!227, !233}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !225, file: !213, line: 25, baseType: !228, size: 8)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !229, line: 17, baseType: !230)
!229 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !231, line: 21, baseType: !232)
!231 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!232 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !225, file: !213, line: 26, baseType: !228, size: 8, offset: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !213, line: 28, baseType: !235, size: 32)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !217, file: !213, line: 28, size: 32, elements: !236)
!236 = !{!237, !241}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !235, file: !213, line: 29, baseType: !238, size: 16)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !229, line: 19, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !231, line: 24, baseType: !240)
!240 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !235, file: !213, line: 30, baseType: !238, size: 16, offset: 16)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !196, file: !180, line: 171, baseType: !179, size: 512, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !196, file: !180, line: 172, baseType: !244, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !180, line: 133, size: 192, elements: !247)
!247 = !{!248, !255, !260}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !246, file: !180, line: 134, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!65, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !180, line: 135, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!183, !253}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !246, file: !180, line: 136, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!65, !253, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !180, line: 125, size: 20736, elements: !267)
!267 = !{!268, !273, !277, !278, !282}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !180, line: 126, baseType: !269, size: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 192, elements: !271)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!271 = !{!272}
!272 = !DISubrange(count: 3)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !266, file: !180, line: 127, baseType: !274, size: 4096, offset: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 4096, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !266, file: !180, line: 128, baseType: !65, size: 32, offset: 4288)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !266, file: !180, line: 129, baseType: !279, size: 16384, offset: 4320)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 16384, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2048)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !266, file: !180, line: 130, baseType: !65, size: 32, offset: 20704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !179, file: !180, line: 69, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !180, line: 116, size: 384, elements: !287)
!287 = !{!288, !292, !321, !4454, !4482, !4486}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !180, line: 117, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !193}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !286, file: !180, line: 118, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !296, line: 254, size: 128, elements: !297)
!296 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!297 = !{!298, !313}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !295, file: !296, line: 255, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !193, !307, !270}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !169, line: 66, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !304, line: 73, baseType: !305)
!304 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !304, line: 15, baseType: !306)
!306 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !296, line: 30, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !296, line: 31, baseType: !183, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !308, file: !296, line: 32, baseType: !312, size: 16, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !169, line: 24, baseType: !240)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !295, file: !296, line: 256, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!302, !193, !307, !183, !317}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !169, line: 61, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !304, line: 72, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !304, line: 16, baseType: !320)
!320 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !286, file: !180, line: 119, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !296, line: 84, size: 320, elements: !326)
!326 = !{!327, !328, !332, !4450, !4452}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !296, line: 85, baseType: !183, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !325, file: !296, line: 86, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!312, !193, !307, !65}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !325, file: !296, line: 88, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!312, !193, !336, !65}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !296, line: 175, size: 512, elements: !338)
!338 = !{!339, !340, !341, !342, !4441, !4445, !4446}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !337, file: !296, line: 176, baseType: !308, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !337, file: !296, line: 177, baseType: !317, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !337, file: !296, line: 178, baseType: !170, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !337, file: !296, line: 179, baseType: !343, size: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !348)
!348 = !{!349, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4435, !4436, !4437, !4438, !4439, !4440}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !347, file: !28, line: 473, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !352)
!352 = !{!353, !354, !355, !363, !364, !371, !372, !375, !376, !4216, !4217, !4218, !4219, !4220, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4236, !4237, !4238, !4239, !4240, !4241, !4242, !4243, !4244, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4260, !4263, !4264, !4265, !4272, !4273, !4274, !4275}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !351, file: !28, line: 642, baseType: !312, size: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !351, file: !28, line: 643, baseType: !240, size: 16, offset: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !351, file: !28, line: 644, baseType: !356, size: 32, offset: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !357, line: 23, baseType: !358)
!357 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 21, size: 32, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !358, file: !357, line: 22, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !169, line: 37, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !304, line: 49, baseType: !7)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !351, file: !28, line: 645, baseType: !187, size: 128, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !351, file: !28, line: 646, baseType: !365, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !357, line: 28, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 26, size: 32, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !366, file: !357, line: 27, baseType: !369, size: 32)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !169, line: 38, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !304, line: 50, baseType: !7)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !351, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !351, file: !28, line: 650, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !351, file: !28, line: 651, baseType: !373, size: 64, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !351, file: !28, line: 654, baseType: !377, size: 64, offset: 384)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !380)
!380 = !{!381, !4045, !4055, !4059, !4063, !4067, !4071, !4075, !4079, !4083, !4087, !4088, !4092, !4096, !4133, !4162, !4166, !4172, !4176, !4180, !4184, !4188, !4192, !4198, !4202}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !379, file: !28, line: 1967, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!385, !350, !385, !7}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !387, line: 82, size: 1536, elements: !388)
!387 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!388 = !{!389, !390, !400, !408, !409, !429, !430, !434, !447, !4028, !4029, !4030, !4031, !4037, !4038, !4039}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !386, file: !387, line: 84, baseType: !7, size: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !386, file: !387, line: 85, baseType: !391, size: 32, offset: 32)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !392, line: 275, baseType: !393)
!392 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !392, line: 275, size: 32, elements: !394)
!394 = !{!395}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !393, file: !392, line: 275, baseType: !396, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !392, line: 69, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !392, line: 64, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !397, file: !392, line: 65, baseType: !7, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !386, file: !387, line: 86, baseType: !401, size: 128, offset: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !402, line: 38, size: 128, elements: !403)
!402 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !401, file: !402, line: 39, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !401, file: !402, line: 39, baseType: !407, size: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !386, file: !387, line: 87, baseType: !385, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !386, file: !387, line: 88, baseType: !410, size: 128, offset: 256)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !387, line: 49, size: 128, elements: !411)
!411 = !{!412, !426}
!412 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !387, line: 50, baseType: !413, size: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !387, line: 50, size: 64, elements: !414)
!414 = !{!415, !422}
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !413, file: !387, line: 51, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !413, file: !387, line: 51, size: 64, elements: !417)
!417 = !{!418, !421}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !416, file: !387, line: 52, baseType: !419, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !229, line: 21, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !231, line: 27, baseType: !7)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !416, file: !387, line: 52, baseType: !419, size: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !413, file: !387, line: 54, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !229, line: 23, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !231, line: 31, baseType: !425)
!425 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !410, file: !387, line: 56, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !386, file: !387, line: 89, baseType: !350, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !386, file: !387, line: 91, baseType: !431, size: 256, offset: 448)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !386, file: !387, line: 94, baseType: !435, size: 64, offset: 704)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !436, line: 25, size: 64, elements: !437)
!436 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, scope: !435, file: !436, line: 26, baseType: !439, size: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !435, file: !436, line: 26, size: 64, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !439, file: !436, line: 28, baseType: !424, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, scope: !439, file: !436, line: 30, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !439, file: !436, line: 30, size: 64, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !443, file: !436, line: 31, baseType: !200, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !443, file: !436, line: 32, baseType: !65, size: 32, offset: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !386, file: !387, line: 95, baseType: !448, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !387, line: 128, size: 1024, align: 512, elements: !451)
!451 = !{!452, !456, !457, !464, !470, !474, !478, !482, !483, !487, !491, !4018, !4022}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !450, file: !387, line: 129, baseType: !453, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!65, !385, !7}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !450, file: !387, line: 130, baseType: !453, size: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !450, file: !387, line: 131, baseType: !458, size: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!65, !461, !463}
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !386)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !450, file: !387, line: 132, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!65, !461, !7, !183, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !450, file: !387, line: 134, baseType: !471, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!65, !461}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !450, file: !387, line: 135, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!65, !385}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !450, file: !387, line: 136, baseType: !479, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !385}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !450, file: !387, line: 137, baseType: !479, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !450, file: !387, line: 138, baseType: !484, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !385, !350}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !450, file: !387, line: 139, baseType: !488, size: 64, offset: 576)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!270, !385, !270, !65}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !450, file: !387, line: 140, baseType: !492, size: 64, offset: 640)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !4017}
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !497, line: 70, size: 256, elements: !498)
!497 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!498 = !{!499, !500, !4013, !4014}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !496, file: !497, line: 71, baseType: !385, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !496, file: !497, line: 72, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !503)
!503 = !{!504, !505, !508, !509, !510, !514, !994, !2076, !2116, !2201, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2218, !2222, !2223, !2226, !2229, !2232, !2235, !2236, !2237, !2278, !3946, !3947, !3948, !3949, !3950, !3951, !3954, !3956, !3963, !3964, !3965, !3966, !3967, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !502, file: !28, line: 1191, baseType: !187, size: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !502, file: !28, line: 1192, baseType: !506, size: 32, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !169, line: 21, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !169, line: 18, baseType: !419)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !502, file: !28, line: 1193, baseType: !232, size: 8, offset: 160)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !502, file: !28, line: 1194, baseType: !320, size: 64, offset: 192)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !502, file: !28, line: 1195, baseType: !511, size: 64, offset: 256)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !169, line: 52, baseType: !512)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !304, line: 88, baseType: !513)
!513 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !502, file: !28, line: 1196, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !517)
!517 = !{!518, !519, !520, !527, !531, !535, !539, !979, !980, !984, !986, !987, !988, !990, !991, !992, !993}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !28, line: 2367, baseType: !183, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !516, file: !28, line: 2368, baseType: !65, size: 32, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !516, file: !28, line: 2376, baseType: !521, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!65, !524}
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !526, line: 32, flags: DIFlagFwdDecl)
!526 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !516, file: !28, line: 2377, baseType: !528, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !530)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !516, file: !28, line: 2378, baseType: !532, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!385, !515, !65, !183, !170}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !516, file: !28, line: 2380, baseType: !536, size: 64, offset: 320)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DISubroutineType(types: !538)
!538 = !{null, !501}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !516, file: !28, line: 2381, baseType: !540, size: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !542)
!542 = !{!543, !544, !545, !549, !571, !597, !598, !599, !600, !604, !609, !610, !630, !686, !687, !688, !689, !690, !693, !694, !695, !703, !707, !734, !755, !756, !757, !758, !767, !790, !791, !794, !797, !798, !799, !800, !801, !802, !803, !808, !809, !937, !945, !946, !947, !949, !953, !954, !958, !959, !960, !961, !963, !964, !965, !972, !973, !974, !978}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !541, file: !21, line: 403, baseType: !20, size: 32)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !541, file: !21, line: 406, baseType: !187, size: 128, offset: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !541, file: !21, line: 409, baseType: !546, size: 448, offset: 192)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 448, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 56)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !541, file: !21, line: 417, baseType: !550, size: 768, offset: 640)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !551)
!551 = !{!552, !553, !554, !555, !558}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !550, file: !21, line: 46, baseType: !179, size: 512)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !550, file: !21, line: 47, baseType: !540, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !550, file: !21, line: 48, baseType: !193, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !550, file: !21, line: 49, baseType: !556, size: 64, offset: 640)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !550, file: !21, line: 50, baseType: !559, size: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !561, line: 26, size: 256, elements: !562)
!561 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!562 = !{!563, !564}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !560, file: !561, line: 27, baseType: !7, size: 32)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !560, file: !561, line: 28, baseType: !565, size: 192, offset: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !566, line: 43, size: 192, elements: !567)
!566 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!567 = !{!568, !570}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !565, file: !566, line: 44, baseType: !569, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !209, line: 23, baseType: !208)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !565, file: !566, line: 45, baseType: !187, size: 128, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !541, file: !21, line: 418, baseType: !572, size: 64, offset: 1408)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !574)
!574 = !{!575, !576, !581, !585, !589, !593}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !573, file: !21, line: 54, baseType: !308, size: 128)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !573, file: !21, line: 55, baseType: !577, size: 64, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DISubroutineType(types: !579)
!579 = !{!302, !572, !580, !270}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !573, file: !21, line: 57, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{!302, !572, !580, !183, !317}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !573, file: !21, line: 59, baseType: !586, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !540, !183}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !573, file: !21, line: 60, baseType: !590, size: 64, offset: 320)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!65, !540}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !573, file: !21, line: 61, baseType: !594, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !540}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !541, file: !21, line: 419, baseType: !183, size: 64, offset: 1472)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !541, file: !21, line: 420, baseType: !183, size: 64, offset: 1536)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !541, file: !21, line: 421, baseType: !193, size: 64, offset: 1600)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !541, file: !21, line: 424, baseType: !601, size: 64, offset: 1664)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !541, file: !21, line: 425, baseType: !605, size: 64, offset: 1728)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !229, line: 20, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !231, line: 26, baseType: !65)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !541, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !541, file: !21, line: 435, baseType: !611, size: 256, offset: 1856)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !612, line: 66, size: 256, elements: !613)
!612 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!613 = !{!614, !623, !624, !629}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !612, line: 67, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !616, line: 13, baseType: !617)
!616 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !169, line: 181, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !169, line: 179, size: 64, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !618, file: !169, line: 180, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !229, line: 22, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !231, line: 30, baseType: !513)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !611, file: !612, line: 68, baseType: !569, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !611, file: !612, line: 70, baseType: !625, size: 32, offset: 96)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !626, line: 15, size: 32, elements: !627)
!626 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !625, file: !626, line: 20, baseType: !220, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !611, file: !612, line: 72, baseType: !187, size: 128, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !541, file: !21, line: 437, baseType: !631, size: 64, offset: 2112)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !633, line: 69, size: 320, elements: !634)
!633 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!634 = !{!635, !636, !637, !657, !659, !663, !664}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !632, file: !633, line: 70, baseType: !183, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !632, file: !633, line: 71, baseType: !540, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !632, file: !633, line: 72, baseType: !638, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !633, line: 47, size: 256, elements: !641)
!641 = !{!642, !643, !649, !653}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !633, line: 49, baseType: !7, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !640, file: !633, line: 51, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!65, !183, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !640, file: !633, line: 53, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!65, !270, !647}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !640, file: !633, line: 55, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !170}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !632, file: !633, line: 73, baseType: !658, size: 16, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !632, file: !633, line: 74, baseType: !660, size: 8, offset: 208)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !229, line: 16, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !231, line: 20, baseType: !662)
!662 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !632, file: !633, line: 75, baseType: !228, size: 8, offset: 216)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !632, file: !633, line: 76, baseType: !665, size: 64, offset: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !632, file: !633, line: 76, size: 64, elements: !666)
!666 = !{!667, !668, !675}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !665, file: !633, line: 77, baseType: !170, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !665, file: !633, line: 78, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !633, line: 86, size: 128, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !671, file: !633, line: 87, baseType: !7, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !671, file: !633, line: 88, baseType: !270, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !665, file: !633, line: 79, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !633, line: 92, size: 256, elements: !679)
!679 = !{!680, !681, !682, !684, !685}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !678, file: !633, line: 94, baseType: !7, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !678, file: !633, line: 95, baseType: !7, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !678, file: !633, line: 96, baseType: !683, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !678, file: !633, line: 97, baseType: !638, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !678, file: !633, line: 98, baseType: !170, size: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !541, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !541, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !541, file: !21, line: 442, baseType: !601, size: 64, offset: 2240)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !541, file: !21, line: 443, baseType: !605, size: 64, offset: 2304)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !541, file: !21, line: 444, baseType: !691, size: 8, offset: 2368)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !169, line: 35, baseType: !692)
!692 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !541, file: !21, line: 451, baseType: !691, size: 8, offset: 2376)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !541, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !541, file: !21, line: 455, baseType: !696, size: 64, offset: 2432)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !698, line: 23, size: 96, elements: !699)
!698 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!699 = !{!700, !701, !702}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !697, file: !698, line: 24, baseType: !65, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !697, file: !698, line: 24, baseType: !65, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !697, file: !698, line: 24, baseType: !65, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !541, file: !21, line: 458, baseType: !704, size: 64, offset: 2496)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!65}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !541, file: !21, line: 460, baseType: !708, size: 4032, align: 512, offset: 2560)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 4032, elements: !732)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !710)
!710 = !{!711, !712, !713}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !709, file: !21, line: 363, baseType: !170, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !709, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !709, file: !21, line: 367, baseType: !714, size: 448, offset: 128)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !714, file: !21, line: 320, baseType: !540, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !714, file: !21, line: 321, baseType: !718, size: 384, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !719, line: 40, size: 384, elements: !720)
!719 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!720 = !{!721}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !719, line: 41, baseType: !722, size: 384, align: 64)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 384, align: 64, elements: !730)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !724, line: 5, size: 192, align: 64, elements: !725)
!724 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!725 = !{!726, !727, !729}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !723, file: !724, line: 6, baseType: !320, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !723, file: !724, line: 7, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !723, file: !724, line: 8, baseType: !728, size: 64, offset: 128)
!730 = !{!731}
!731 = !DISubrange(count: 2)
!732 = !{!733}
!733 = !DISubrange(count: 7)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !541, file: !21, line: 463, baseType: !735, size: 192, offset: 6592)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !736, line: 8, size: 192, elements: !737)
!736 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!737 = !{!738, !739, !741}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !735, file: !736, line: 10, baseType: !7, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !735, file: !736, line: 11, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !735, file: !736, line: 12, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !744, line: 59, size: 48, elements: !745)
!744 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!745 = !{!746, !750, !751, !752, !753, !754}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !743, file: !744, line: 60, baseType: !747, size: 16)
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !229, line: 18, baseType: !748)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !231, line: 23, baseType: !749)
!749 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !743, file: !744, line: 61, baseType: !747, size: 16, offset: 16)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !743, file: !744, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !743, file: !744, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !743, file: !744, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !743, file: !744, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !541, file: !21, line: 465, baseType: !320, size: 64, offset: 6784)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !541, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !541, file: !21, line: 470, baseType: !187, size: 128, offset: 6912)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !541, file: !21, line: 471, baseType: !759, size: 64, offset: 7040)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !761, line: 33, size: 96, elements: !762)
!761 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!762 = !{!763, !764, !765, !766}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !760, file: !761, line: 37, baseType: !65, size: 32)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !760, file: !761, line: 43, baseType: !65, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !760, file: !761, line: 45, baseType: !240, size: 16, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !760, file: !761, line: 47, baseType: !240, size: 16, offset: 80)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !541, file: !21, line: 476, baseType: !768, size: 64, offset: 7104)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !770)
!770 = !{!771, !787, !788, !789}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !769, file: !21, line: 379, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !774, line: 204, baseType: !775)
!774 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !774, line: 197, size: 192, elements: !776)
!776 = !{!777, !779, !780, !781, !783, !785}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !775, file: !774, line: 198, baseType: !778, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !774, line: 21, baseType: !420)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !775, file: !774, line: 199, baseType: !232, size: 8, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !775, file: !774, line: 200, baseType: !232, size: 8, offset: 40)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !775, file: !774, line: 201, baseType: !782, size: 16, offset: 48)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !774, line: 17, baseType: !239)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !775, file: !774, line: 202, baseType: !784, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !774, line: 16, baseType: !424)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !775, file: !774, line: 203, baseType: !786, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !774, line: 22, baseType: !424)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !769, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !769, file: !21, line: 381, baseType: !270, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !769, file: !21, line: 382, baseType: !270, size: 64, offset: 192)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !541, file: !21, line: 477, baseType: !769, size: 256, offset: 7168)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !541, file: !21, line: 480, baseType: !792, size: 64, offset: 7424)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !541, file: !21, line: 483, baseType: !795, size: 64, offset: 7488)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !541, file: !21, line: 488, baseType: !270, size: 64, offset: 7552)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !541, file: !21, line: 492, baseType: !170, size: 64, offset: 7616)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !541, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !541, file: !21, line: 495, baseType: !170, size: 64, offset: 7744)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !541, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !541, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !541, file: !21, line: 500, baseType: !804, size: 64, offset: 7872)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !806, line: 45, baseType: !807)
!806 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !541, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !541, file: !21, line: 504, baseType: !810, size: 64, offset: 8000)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !813, line: 96, size: 192, elements: !814)
!813 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!814 = !{!815, !816, !897, !901}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !812, file: !813, line: 97, baseType: !7, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !812, file: !813, line: 98, baseType: !817, size: 64, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !813, line: 24, size: 3072, elements: !819)
!819 = !{!820, !822, !823, !824, !825, !849, !850, !851, !852, !870, !882, !883, !894, !895, !896}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !818, file: !813, line: 26, baseType: !821, size: 128)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 128, elements: !730)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !818, file: !813, line: 27, baseType: !821, size: 128, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !818, file: !813, line: 28, baseType: !65, size: 32, offset: 256)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !818, file: !813, line: 31, baseType: !200, size: 32, align: 512, offset: 512)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !818, file: !813, line: 32, baseType: !826, size: 960, offset: 576)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !827, line: 206, size: 960, elements: !828)
!827 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!828 = !{!829, !838, !843, !845, !846, !848}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !826, file: !827, line: 207, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !169, line: 232, size: 128, align: 64, elements: !832)
!832 = !{!833, !834}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !831, file: !169, line: 233, baseType: !830, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !831, file: !169, line: 234, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{null, !830}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !826, file: !827, line: 208, baseType: !839, size: 256, offset: 64)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !840, size: 256, elements: !841)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!841 = !{!842}
!842 = !DISubrange(count: 4)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !826, file: !827, line: 209, baseType: !844, size: 256, offset: 320)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !841)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !826, file: !827, line: 213, baseType: !306, size: 64, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !826, file: !827, line: 215, baseType: !847, size: 256, offset: 640)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !841)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !826, file: !827, line: 216, baseType: !228, size: 8, offset: 896)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !818, file: !813, line: 33, baseType: !320, size: 64, offset: 1536)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !818, file: !813, line: 34, baseType: !320, size: 64, offset: 1600)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !818, file: !813, line: 35, baseType: !691, size: 8, offset: 1664)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !818, file: !813, line: 36, baseType: !853, size: 320, offset: 1728)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !854, line: 11, size: 320, elements: !855)
!854 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!855 = !{!856, !863, !864, !869}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !853, file: !854, line: 16, baseType: !857, size: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !169, line: 198, size: 128, elements: !858)
!858 = !{!859, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !857, file: !169, line: 199, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !857, file: !169, line: 199, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !853, file: !854, line: 17, baseType: !320, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !853, file: !854, line: 18, baseType: !865, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DISubroutineType(types: !867)
!867 = !{null, !868}
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !854, line: 19, baseType: !419, size: 32, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !818, file: !813, line: 37, baseType: !871, size: 256, offset: 2048)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !872, line: 98, size: 256, elements: !873)
!872 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!873 = !{!874, !875, !876}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !871, file: !872, line: 99, baseType: !615, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !871, file: !872, line: 100, baseType: !187, size: 128, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !871, file: !872, line: 101, baseType: !877, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !872, line: 21, baseType: !878)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{null, !881}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !818, file: !813, line: 38, baseType: !831, size: 128, align: 64, offset: 2304)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !818, file: !813, line: 39, baseType: !884, size: 64, offset: 2432)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !813, line: 49, size: 768, elements: !886)
!886 = !{!887, !888, !889, !890, !891, !892, !893}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !885, file: !813, line: 50, baseType: !200, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !885, file: !813, line: 51, baseType: !844, size: 256, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !885, file: !813, line: 53, baseType: !844, size: 256, offset: 320)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !885, file: !813, line: 54, baseType: !320, size: 64, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !885, file: !813, line: 55, baseType: !884, size: 64, offset: 640)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !885, file: !813, line: 56, baseType: !65, size: 32, offset: 704)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !885, file: !813, line: 57, baseType: !65, size: 32, offset: 736)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !818, file: !813, line: 40, baseType: !320, size: 64, offset: 2496)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !818, file: !813, line: 42, baseType: !65, size: 32, offset: 2560)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !818, file: !813, line: 43, baseType: !811, size: 64, offset: 2624)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !812, file: !813, line: 99, baseType: !898, offset: 128)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !899, line: 211, elements: !900)
!899 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!900 = !{}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !812, file: !813, line: 100, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !813, line: 63, size: 3008, elements: !904)
!904 = !{!905, !906, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !936}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !903, file: !813, line: 64, baseType: !884, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !903, file: !813, line: 65, baseType: !907, size: 192, offset: 64)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !884, size: 192, elements: !271)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !903, file: !813, line: 67, baseType: !65, size: 32, offset: 256)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !903, file: !813, line: 68, baseType: !611, size: 256, offset: 320)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !903, file: !813, line: 69, baseType: !200, size: 32, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !903, file: !813, line: 70, baseType: !611, size: 256, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !903, file: !813, line: 71, baseType: !320, size: 64, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !903, file: !813, line: 72, baseType: !320, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !903, file: !813, line: 73, baseType: !320, size: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !903, file: !813, line: 74, baseType: !320, size: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !903, file: !813, line: 75, baseType: !320, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !903, file: !813, line: 76, baseType: !320, size: 64, offset: 1216)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !903, file: !813, line: 77, baseType: !320, size: 64, offset: 1280)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !903, file: !813, line: 78, baseType: !320, size: 64, offset: 1344)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !903, file: !813, line: 79, baseType: !691, size: 8, offset: 1408)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !903, file: !813, line: 80, baseType: !320, size: 64, offset: 1472)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !903, file: !813, line: 81, baseType: !611, size: 256, offset: 1536)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !903, file: !813, line: 82, baseType: !560, size: 256, offset: 1792)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !903, file: !813, line: 84, baseType: !220, size: 32, offset: 2048)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !903, file: !813, line: 87, baseType: !320, size: 64, offset: 2112)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !903, file: !813, line: 88, baseType: !320, size: 64, offset: 2176)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !903, file: !813, line: 89, baseType: !928, size: 704, offset: 2240)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !872, line: 111, size: 704, elements: !929)
!929 = !{!930, !931, !932, !935}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !928, file: !872, line: 112, baseType: !871, size: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !928, file: !872, line: 113, baseType: !853, size: 320, offset: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !928, file: !872, line: 116, baseType: !933, size: 64, offset: 576)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !872, line: 18, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !928, file: !872, line: 117, baseType: !65, size: 32, offset: 640)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !903, file: !813, line: 90, baseType: !811, size: 64, offset: 2944)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !541, file: !21, line: 515, baseType: !938, size: 64, offset: 8064)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !940, line: 117, size: 128, elements: !941)
!940 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!941 = !{!942, !943, !944}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !939, file: !940, line: 118, baseType: !607, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !939, file: !940, line: 119, baseType: !607, size: 32, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !939, file: !940, line: 120, baseType: !306, size: 64, offset: 64)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !541, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !541, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !541, file: !21, line: 520, baseType: !948, size: 64, offset: 8192)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !541, file: !21, line: 523, baseType: !950, size: 64, offset: 8256)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !541, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !541, file: !21, line: 525, baseType: !955, size: 64, offset: 8384)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !541, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !541, file: !21, line: 533, baseType: !170, size: 64, offset: 8512)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !541, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !541, file: !21, line: 535, baseType: !962, size: 64, offset: 8640)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !541, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !541, file: !21, line: 539, baseType: !65, size: 32, offset: 8736)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !541, file: !21, line: 540, baseType: !966, size: 64, offset: 8768)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !968, line: 32, size: 64, elements: !969)
!968 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !967, file: !968, line: 33, baseType: !607, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !967, file: !968, line: 34, baseType: !607, size: 32, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !541, file: !21, line: 563, baseType: !187, size: 128, offset: 8832)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !541, file: !21, line: 565, baseType: !187, size: 128, offset: 8960)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !541, file: !21, line: 568, baseType: !975, size: 64, offset: 9088)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !541, file: !21, line: 570, baseType: !220, size: 32, offset: 9152)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !516, file: !28, line: 2382, baseType: !515, size: 64, offset: 448)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !516, file: !28, line: 2383, baseType: !981, size: 64, offset: 512)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !169, line: 194, size: 64, elements: !982)
!982 = !{!983}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !981, file: !169, line: 195, baseType: !860, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !516, file: !28, line: 2385, baseType: !985, offset: 576)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !899, line: 206, elements: !900)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !516, file: !28, line: 2386, baseType: !985, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !516, file: !28, line: 2387, baseType: !985, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !516, file: !28, line: 2388, baseType: !989, offset: 576)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, elements: !271)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !516, file: !28, line: 2390, baseType: !985, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !516, file: !28, line: 2391, baseType: !985, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !516, file: !28, line: 2392, baseType: !985, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !516, file: !28, line: 2393, baseType: !985, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !502, file: !28, line: 1197, baseType: !995, size: 64, offset: 384)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !998)
!998 = !{!999, !1003, !1007, !1008, !1012, !1018, !1022, !1023, !1024, !1028, !1032, !1036, !1037, !1038, !1044, !1048, !1049, !2001, !2002, !2003, !2004, !2008, !2012, !2059, !2074, !2075}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !997, file: !28, line: 2058, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DISubroutineType(types: !1002)
!1002 = !{!350, !501}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !997, file: !28, line: 2059, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !350}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !997, file: !28, line: 2060, baseType: !1004, size: 64, offset: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !997, file: !28, line: 2062, baseType: !1009, size: 64, offset: 192)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !350, !65}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !997, file: !28, line: 2063, baseType: !1013, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!65, !350, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !997, file: !28, line: 2064, baseType: !1019, size: 64, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{!65, !350}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !997, file: !28, line: 2065, baseType: !1004, size: 64, offset: 384)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !997, file: !28, line: 2066, baseType: !536, size: 64, offset: 448)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !997, file: !28, line: 2067, baseType: !1025, size: 64, offset: 512)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!65, !501, !65}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !997, file: !28, line: 2068, baseType: !1029, size: 64, offset: 576)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!65, !501, !27}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !997, file: !28, line: 2069, baseType: !1033, size: 64, offset: 640)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!65, !501}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !997, file: !28, line: 2070, baseType: !1029, size: 64, offset: 704)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !997, file: !28, line: 2071, baseType: !1033, size: 64, offset: 768)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !997, file: !28, line: 2072, baseType: !1039, size: 64, offset: 832)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!65, !385, !1042}
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !997, file: !28, line: 2073, baseType: !1045, size: 64, offset: 896)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!65, !501, !740, !270}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !997, file: !28, line: 2074, baseType: !536, size: 64, offset: 960)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !997, file: !28, line: 2076, baseType: !1050, size: 64, offset: 1024)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!65, !1053, !385}
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1055, line: 17, size: 960, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1056 = !{!1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1087, !1088, !2000}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1054, file: !1055, line: 18, baseType: !270, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1054, file: !1055, line: 19, baseType: !317, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1054, file: !1055, line: 20, baseType: !317, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1054, file: !1055, line: 21, baseType: !317, size: 64, offset: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1054, file: !1055, line: 22, baseType: !317, size: 64, offset: 256)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1054, file: !1055, line: 23, baseType: !511, size: 64, offset: 320)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1054, file: !1055, line: 24, baseType: !511, size: 64, offset: 384)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1054, file: !1055, line: 25, baseType: !611, size: 256, offset: 448)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1054, file: !1055, line: 26, baseType: !1066, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1068)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1055, line: 32, size: 256, elements: !1069)
!1069 = !{!1070, !1075, !1079, !1083}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1068, file: !1055, line: 33, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!170, !1053, !1074}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1068, file: !1055, line: 34, baseType: !1076, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DISubroutineType(types: !1078)
!1078 = !{null, !1053, !170}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1068, file: !1055, line: 35, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!170, !1053, !170, !1074}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1068, file: !1055, line: 36, baseType: !1084, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!65, !1053, !170}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1054, file: !1055, line: 27, baseType: !65, size: 32, offset: 768)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1054, file: !1055, line: 28, baseType: !1089, size: 64, offset: 832)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1092)
!1092 = !{!1093, !1104, !1105, !1107, !1108, !1109, !1110, !1111, !1172, !1372, !1381, !1387, !1388, !1990, !1991, !1992, !1993, !1995, !1996, !1999}
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !28, line: 995, baseType: !1094, size: 128)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !28, line: 995, size: 128, elements: !1095)
!1095 = !{!1096, !1102, !1103}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1094, file: !28, line: 996, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1098, line: 60, size: 64, elements: !1099)
!1098 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1099 = !{!1100}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !1098, line: 61, baseType: !1101, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1094, file: !28, line: 997, baseType: !831, size: 128, align: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1094, file: !28, line: 998, baseType: !7, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1091, file: !28, line: 1005, baseType: !200, size: 32, offset: 128)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1091, file: !28, line: 1006, baseType: !1106, size: 32, offset: 160)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !169, line: 156, baseType: !7)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1091, file: !28, line: 1007, baseType: !615, size: 64, offset: 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1091, file: !28, line: 1008, baseType: !611, size: 256, offset: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1091, file: !28, line: 1009, baseType: !511, size: 64, offset: 512)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1091, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1091, file: !28, line: 1011, baseType: !1112, size: 256, offset: 640)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1113)
!1113 = !{!1114, !1135, !1168, !1169, !1170, !1171}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1112, file: !28, line: 949, baseType: !1115, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1116, line: 34, baseType: !1117)
!1116 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1116, line: 25, size: 64, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1117, file: !1116, line: 26, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1121, line: 27, baseType: !1122)
!1121 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1121, line: 13, size: 64, elements: !1123)
!1123 = !{!1124, !1134}
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !1121, line: 14, baseType: !1125, size: 32)
!1125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1122, file: !1121, line: 14, size: 32, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1125, file: !1121, line: 15, baseType: !220, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !1121, line: 16, baseType: !1129, size: 32)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1125, file: !1121, line: 16, size: 32, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1129, file: !1121, line: 18, baseType: !228, size: 8)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1129, file: !1121, line: 19, baseType: !1133, size: 24, offset: 8)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 24, elements: !271)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1122, file: !1121, line: 26, baseType: !212, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1112, file: !28, line: 950, baseType: !1136, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1138)
!1138 = !{!1139, !1145, !1146, !1147, !1149, !1150, !1157, !1158}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1137, file: !13, line: 61, baseType: !1140, size: 32)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1141, line: 113, baseType: !1142)
!1141 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1141, line: 111, size: 32, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1142, file: !1141, line: 112, baseType: !220, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1137, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1137, file: !13, line: 63, baseType: !200, size: 32, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1137, file: !13, line: 65, baseType: !1148, size: 256, offset: 128)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !981, size: 256, elements: !841)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1137, file: !13, line: 66, baseType: !981, size: 64, offset: 384)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1137, file: !13, line: 68, baseType: !1151, size: 192, offset: 448)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1152, line: 41, baseType: !1153)
!1152 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1152, line: 37, size: 192, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1153, file: !1152, line: 38, baseType: !200, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1153, file: !1152, line: 39, baseType: !187, size: 128, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1137, file: !13, line: 69, baseType: !831, size: 128, align: 64, offset: 640)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1137, file: !13, line: 70, baseType: !1159, offset: 768)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1160, elements: !1166)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1160, file: !13, line: 55, baseType: !65, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1160, file: !13, line: 56, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1166 = !{!1167}
!1167 = !DISubrange(count: -1)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1112, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1112, file: !28, line: 952, baseType: !356, size: 32, offset: 160)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1112, file: !28, line: 952, baseType: !356, size: 32, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1112, file: !28, line: 953, baseType: !65, size: 32, offset: 224)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1091, file: !28, line: 1012, baseType: !1173, size: 64, offset: 896)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1175)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1176, line: 110, size: 1472, elements: !1177)
!1176 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1177 = !{!1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1194, !1195, !1196, !1197, !1198, !1199, !1317, !1318, !1319, !1320, !1321, !1352, !1355, !1359, !1367}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1175, file: !1176, line: 111, baseType: !615, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1175, file: !1176, line: 112, baseType: !356, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1175, file: !1176, line: 113, baseType: !365, size: 32, offset: 96)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1175, file: !1176, line: 114, baseType: !356, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1175, file: !1176, line: 115, baseType: !365, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1175, file: !1176, line: 116, baseType: !356, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1175, file: !1176, line: 117, baseType: !365, size: 32, offset: 224)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1175, file: !1176, line: 118, baseType: !356, size: 32, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1175, file: !1176, line: 119, baseType: !365, size: 32, offset: 288)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1175, file: !1176, line: 120, baseType: !7, size: 32, offset: 320)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1175, file: !1176, line: 121, baseType: !1189, size: 64, offset: 384)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1190, line: 24, baseType: !1191)
!1190 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1190, line: 24, size: 64, elements: !1192)
!1192 = !{!1193}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1191, file: !1190, line: 24, baseType: !423, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1175, file: !1176, line: 122, baseType: !1189, size: 64, offset: 448)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1175, file: !1176, line: 123, baseType: !1189, size: 64, offset: 512)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1175, file: !1176, line: 124, baseType: !1189, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1175, file: !1176, line: 125, baseType: !1189, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1175, file: !1176, line: 127, baseType: !232, size: 8, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1175, file: !1176, line: 129, baseType: !1200, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1202, line: 195, size: 1728, elements: !1203)
!1202 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1203 = !{!1204, !1205, !1208, !1213, !1222, !1225, !1226, !1233, !1234, !1235, !1236, !1239, !1240, !1241, !1242, !1243, !1281, !1302}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1201, file: !1202, line: 196, baseType: !1140, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1201, file: !1202, line: 197, baseType: !1206, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1202, line: 28, baseType: !1207)
!1207 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !169, line: 104, baseType: !607)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 198, baseType: !1209, size: 192, offset: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1202, line: 198, size: 192, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1209, file: !1202, line: 199, baseType: !187, size: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1209, file: !1202, line: 200, baseType: !723, size: 192, align: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1201, file: !1202, line: 205, baseType: !1214, size: 320, offset: 256)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1215, line: 48, size: 320, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1216 = !{!1217, !1218, !1219, !1220, !1221}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1214, file: !1215, line: 49, baseType: !615, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1214, file: !1215, line: 55, baseType: !615, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1214, file: !1215, line: 57, baseType: !625, size: 32, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1214, file: !1215, line: 59, baseType: !569, size: 32, offset: 160)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1214, file: !1215, line: 60, baseType: !187, size: 128, offset: 192)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1201, file: !1202, line: 206, baseType: !1223, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1202, line: 206, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1201, file: !1202, line: 207, baseType: !170, size: 64, offset: 640)
!1226 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 208, baseType: !1227, size: 64, offset: 704)
!1227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1202, line: 208, size: 64, elements: !1228)
!1228 = !{!1229, !1232}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1227, file: !1202, line: 209, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1231, line: 8, baseType: !622)
!1231 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1227, file: !1202, line: 210, baseType: !1230, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1201, file: !1202, line: 212, baseType: !1230, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1201, file: !1202, line: 213, baseType: !356, size: 32, offset: 832)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1201, file: !1202, line: 214, baseType: !365, size: 32, offset: 864)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1201, file: !1202, line: 215, baseType: !1237, size: 32, offset: 896)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1202, line: 31, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !169, line: 110, baseType: !419)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1201, file: !1202, line: 216, baseType: !240, size: 16, offset: 928)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1201, file: !1202, line: 217, baseType: !240, size: 16, offset: 944)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1201, file: !1202, line: 221, baseType: !749, size: 16, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1201, file: !1202, line: 228, baseType: !320, size: 64, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 245, baseType: !1244, size: 320, offset: 1088)
!1244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1202, line: 245, size: 320, elements: !1245)
!1245 = !{!1246, !1273}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1244, file: !1202, line: 246, baseType: !1247, size: 320)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1202, line: 114, size: 320, elements: !1248)
!1248 = !{!1249, !1250, !1262, !1265, !1272}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1247, file: !1202, line: 116, baseType: !320, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !1202, line: 117, baseType: !1251, size: 64, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !1202, line: 117, size: 64, elements: !1252)
!1252 = !{!1253, !1261}
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1251, file: !1202, line: 118, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1251, file: !1202, line: 118, size: 64, elements: !1255)
!1255 = !{!1256, !1257}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1254, file: !1202, line: 120, baseType: !238, size: 16)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1254, file: !1202, line: 121, baseType: !1258, size: 48, offset: 16)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 48, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 6)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1251, file: !1202, line: 127, baseType: !320, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1247, file: !1202, line: 129, baseType: !1263, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1202, line: 102, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1247, file: !1202, line: 130, baseType: !1266, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1202, line: 108, size: 192, elements: !1268)
!1268 = !{!1269, !1270, !1271}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1267, file: !1202, line: 109, baseType: !831, size: 128, align: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1267, file: !1202, line: 110, baseType: !1140, size: 32, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1267, file: !1202, line: 111, baseType: !691, size: 8, offset: 160)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1247, file: !1202, line: 131, baseType: !183, size: 64, offset: 256)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1244, file: !1202, line: 247, baseType: !1274, size: 320)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1244, file: !1202, line: 247, size: 320, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1274, file: !1202, line: 248, baseType: !320, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1274, file: !1202, line: 249, baseType: !320, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1274, file: !1202, line: 250, baseType: !1263, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1274, file: !1202, line: 251, baseType: !1266, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1274, file: !1202, line: 252, baseType: !270, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !1202, line: 260, baseType: !1282, size: 256, offset: 1408)
!1282 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !1202, line: 260, size: 256, elements: !1283)
!1283 = !{!1284, !1290}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1282, file: !1202, line: 261, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1202, line: 134, size: 256, elements: !1286)
!1286 = !{!1287, !1288}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1285, file: !1202, line: 135, baseType: !170, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1285, file: !1202, line: 136, baseType: !1289, size: 256)
!1289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 256, elements: !841)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1202, line: 262, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1282, file: !1202, line: 262, size: 256, elements: !1292)
!1292 = !{!1293, !1294}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1291, file: !1202, line: 264, baseType: !187, size: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1291, file: !1202, line: 265, baseType: !1295, size: 128, offset: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1296, line: 22, size: 128, elements: !1297)
!1296 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1297 = !{!1298, !1301}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1295, file: !1296, line: 23, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1296, line: 23, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1295, file: !1296, line: 24, baseType: !320, size: 64, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1201, file: !1202, line: 280, baseType: !1303, size: 64, offset: 1664)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1202, line: 176, size: 192, elements: !1305)
!1305 = !{!1306, !1315, !1316}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1304, file: !1202, line: 177, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1202, line: 171, baseType: !1308)
!1308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!65, !1200, !1311, !1313, !1200}
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1264)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1304, file: !1202, line: 178, baseType: !1200, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1304, file: !1202, line: 179, baseType: !1263, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1175, file: !1176, line: 130, baseType: !1200, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1175, file: !1176, line: 131, baseType: !1200, size: 64, offset: 896)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1175, file: !1176, line: 132, baseType: !1200, size: 64, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1175, file: !1176, line: 135, baseType: !170, size: 64, offset: 1024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1175, file: !1176, line: 137, baseType: !1322, size: 64, offset: 1088)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1324, line: 14, size: 1088, elements: !1325)
!1324 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1325 = !{!1326, !1327, !1336, !1337, !1338, !1339, !1340, !1341}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1323, file: !1324, line: 15, baseType: !1140, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1323, file: !1324, line: 17, baseType: !1328, size: 320, offset: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1329, line: 22, size: 320, elements: !1330)
!1329 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1328, file: !1329, line: 23, baseType: !569, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1328, file: !1329, line: 24, baseType: !621, size: 64, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1328, file: !1329, line: 26, baseType: !187, size: 128, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1328, file: !1329, line: 28, baseType: !1335, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1323, file: !1324, line: 19, baseType: !320, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1323, file: !1324, line: 20, baseType: !615, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1323, file: !1324, line: 23, baseType: !857, size: 128, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1323, file: !1324, line: 24, baseType: !356, size: 32, offset: 640)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1323, file: !1324, line: 29, baseType: !615, size: 64, offset: 704)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1323, file: !1324, line: 36, baseType: !1342, size: 320, offset: 768)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1343, line: 15, size: 320, elements: !1344)
!1343 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !1343, line: 16, baseType: !569, size: 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1342, file: !1343, line: 18, baseType: !65, size: 32, offset: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1342, file: !1343, line: 19, baseType: !65, size: 32, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1342, file: !1343, line: 20, baseType: !65, size: 32, offset: 96)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1342, file: !1343, line: 21, baseType: !65, size: 32, offset: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1342, file: !1343, line: 22, baseType: !320, size: 64, offset: 192)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1342, file: !1343, line: 23, baseType: !320, size: 64, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1175, file: !1176, line: 138, baseType: !1353, size: 64, offset: 1152)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !357, line: 18, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1175, file: !1176, line: 139, baseType: !1356, size: 64, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1358, line: 16, flags: DIFlagFwdDecl)
!1358 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1175, file: !1176, line: 140, baseType: !1360, size: 64, offset: 1280)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1176, line: 25, size: 64, elements: !1362)
!1362 = !{!1363, !1364, !1365}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1361, file: !1176, line: 26, baseType: !220, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1361, file: !1176, line: 27, baseType: !65, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1361, file: !1176, line: 28, baseType: !1366, offset: 64)
!1366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, elements: !1166)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1175, file: !1176, line: 142, baseType: !1368, size: 128, offset: 1344)
!1368 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1175, file: !1176, line: 142, size: 128, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1368, file: !1176, line: 143, baseType: !65, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1368, file: !1176, line: 144, baseType: !831, size: 128, align: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1091, file: !28, line: 1013, baseType: !1373, size: 256, offset: 960)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1374)
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1373, file: !28, line: 971, baseType: !320, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1373, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1373, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1373, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1373, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1373, file: !28, line: 976, baseType: !511, size: 64, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1091, file: !28, line: 1014, baseType: !1382, size: 128, offset: 1216)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1383, line: 8, size: 128, elements: !1384)
!1383 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1384 = !{!1385, !1386}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1382, file: !1383, line: 9, baseType: !495, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1382, file: !1383, line: 10, baseType: !385, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1091, file: !28, line: 1015, baseType: !350, size: 64, offset: 1344)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1091, file: !28, line: 1016, baseType: !1389, size: 64, offset: 1408)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1391)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1392)
!1392 = !{!1393, !1394, !1399, !1403, !1407, !1435, !1436, !1442, !1455, !1463, !1467, !1468, !1912, !1913, !1917, !1922, !1923, !1927, !1931, !1937, !1938, !1942, !1943, !1949, !1953, !1957, !1963, !1967, !1971, !1975, !1979, !1980, !1986}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1391, file: !28, line: 1915, baseType: !540, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1391, file: !28, line: 1916, baseType: !1395, size: 64, offset: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!511, !1398, !511, !65}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1391, file: !28, line: 1917, baseType: !1400, size: 64, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = !DISubroutineType(types: !1402)
!1402 = !{!302, !1398, !270, !317, !1074}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1391, file: !28, line: 1918, baseType: !1404, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!302, !1398, !183, !317, !1074}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1391, file: !28, line: 1919, baseType: !1408, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!302, !1411, !1433}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1413)
!1413 = !{!1414, !1415, !1416, !1420, !1421, !1422, !1423}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1412, file: !28, line: 374, baseType: !1398, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1412, file: !28, line: 375, baseType: !511, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1412, file: !28, line: 376, baseType: !1417, size: 64, offset: 128)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !1411, !306}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1412, file: !28, line: 377, baseType: !170, size: 64, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1412, file: !28, line: 378, baseType: !65, size: 32, offset: 256)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1412, file: !28, line: 379, baseType: !238, size: 16, offset: 288)
!1423 = !DIDerivedType(tag: DW_TAG_member, scope: !1412, file: !28, line: 380, baseType: !1424, size: 64, offset: 320)
!1424 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1412, file: !28, line: 380, size: 64, elements: !1425)
!1425 = !{!1426, !1429}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1424, file: !28, line: 386, baseType: !1427, size: 64)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1424, file: !28, line: 395, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!302, !170}
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1391, file: !28, line: 1920, baseType: !1408, size: 64, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1391, file: !28, line: 1921, baseType: !1437, size: 64, offset: 384)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!65, !1411, !1440, !7}
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1391, file: !28, line: 1923, baseType: !1443, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!65, !1398, !1446}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !1448)
!1448 = !{!1449, !1454}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1447, file: !28, line: 1859, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !1451)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DISubroutineType(types: !1453)
!1453 = !{!691, !1446, !183, !65, !511, !423, !7}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1447, file: !28, line: 1860, baseType: !511, size: 64, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1391, file: !28, line: 1924, baseType: !1456, size: 64, offset: 512)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!1459, !1398, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1460, line: 59, baseType: !7)
!1460 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !526, line: 31, flags: DIFlagFwdDecl)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1391, file: !28, line: 1925, baseType: !1464, size: 64, offset: 576)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!306, !1398, !7, !320}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1391, file: !28, line: 1926, baseType: !1464, size: 64, offset: 640)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1391, file: !28, line: 1927, baseType: !1469, size: 64, offset: 704)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!65, !1398, !1472}
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !98, line: 625, size: 1344, elements: !1474)
!1474 = !{!1475, !1484, !1639, !1645, !1652, !1653, !1658, !1659, !1664, !1665, !1668, !1905, !1906, !1907, !1908, !1909, !1910}
!1475 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !98, line: 628, baseType: !1476, size: 128)
!1476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1473, file: !98, line: 628, size: 128, elements: !1477)
!1477 = !{!1478, !1483}
!1478 = !DIDerivedType(tag: DW_TAG_member, scope: !1476, file: !98, line: 629, baseType: !1479, size: 128)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1476, file: !98, line: 629, size: 128, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1479, file: !98, line: 631, baseType: !320, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1479, file: !98, line: 632, baseType: !320, size: 64, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1476, file: !98, line: 635, baseType: !831, size: 128, align: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1473, file: !98, line: 639, baseType: !1485, size: 64, offset: 128)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !98, line: 733, size: 10240, elements: !1487)
!1487 = !{!1488, !1637}
!1488 = !DIDerivedType(tag: DW_TAG_member, scope: !1486, file: !98, line: 734, baseType: !1489, size: 10240)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1486, file: !98, line: 734, size: 10240, elements: !1490)
!1490 = !{!1491, !1495, !1508, !1512, !1513, !1514, !1515, !1516, !1517, !1526, !1527, !1528, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1567, !1569, !1572, !1617, !1618, !1619, !1622, !1623, !1624, !1627, !1628, !1629, !1635, !1636}
!1491 = !DIDerivedType(tag: DW_TAG_member, scope: !1489, file: !98, line: 739, baseType: !1492, size: 512, align: 512)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1489, file: !98, line: 739, size: 512, align: 512, elements: !1493)
!1493 = !{!1494}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1492, file: !98, line: 747, baseType: !220, size: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1489, file: !98, line: 750, baseType: !1496, size: 128, offset: 512)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1497, line: 218, size: 128, elements: !1498)
!1497 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1498 = !{!1499, !1506, !1507}
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1496, file: !1497, line: 219, baseType: !1500, size: 32)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1496, file: !1497, line: 219, size: 32, elements: !1501)
!1501 = !{!1502, !1503}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1500, file: !1497, line: 220, baseType: !200, size: 32)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1500, file: !1497, line: 221, baseType: !1504)
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1497, line: 197, baseType: !1505)
!1505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1497, line: 197, elements: !900)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1496, file: !1497, line: 223, baseType: !7, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1496, file: !1497, line: 224, baseType: !170, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1489, file: !98, line: 752, baseType: !1509, size: 64, offset: 640)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!320, !1398, !320, !320, !320, !320}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1489, file: !98, line: 756, baseType: !320, size: 64, offset: 704)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1489, file: !98, line: 757, baseType: !320, size: 64, offset: 768)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1489, file: !98, line: 760, baseType: !320, size: 64, offset: 832)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1489, file: !98, line: 761, baseType: !320, size: 64, offset: 896)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1489, file: !98, line: 763, baseType: !320, size: 64, offset: 960)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1489, file: !98, line: 764, baseType: !1518, size: 64, offset: 1024)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1520, line: 299, baseType: !1521)
!1520 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 299, size: 64, elements: !1522)
!1522 = !{!1523}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1521, file: !1520, line: 299, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1525, line: 18, baseType: !320)
!1525 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1489, file: !98, line: 773, baseType: !220, size: 32, offset: 1088)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1489, file: !98, line: 785, baseType: !220, size: 32, offset: 1120)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1489, file: !98, line: 795, baseType: !1529, size: 64, offset: 1152)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !98, line: 726, size: 128, elements: !1531)
!1531 = !{!1532, !1533}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1530, file: !98, line: 727, baseType: !423, size: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1530, file: !98, line: 728, baseType: !65, size: 32, offset: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1489, file: !98, line: 801, baseType: !320, size: 64, offset: 1216)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1489, file: !98, line: 804, baseType: !615, size: 64, offset: 1280)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1489, file: !98, line: 806, baseType: !65, size: 32, offset: 1344)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1489, file: !98, line: 808, baseType: !200, size: 32, offset: 1376)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1489, file: !98, line: 823, baseType: !1214, size: 320, offset: 1408)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1489, file: !98, line: 825, baseType: !187, size: 128, offset: 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1489, file: !98, line: 845, baseType: !65, size: 32, offset: 1856)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1489, file: !98, line: 849, baseType: !320, size: 64, offset: 1920)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1489, file: !98, line: 850, baseType: !320, size: 64, offset: 1984)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1489, file: !98, line: 852, baseType: !320, size: 64, offset: 2048)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1489, file: !98, line: 853, baseType: !320, size: 64, offset: 2112)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1489, file: !98, line: 854, baseType: !617, size: 64, offset: 2176)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1489, file: !98, line: 855, baseType: !320, size: 64, offset: 2240)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1489, file: !98, line: 856, baseType: !320, size: 64, offset: 2304)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1489, file: !98, line: 857, baseType: !320, size: 64, offset: 2368)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1489, file: !98, line: 858, baseType: !320, size: 64, offset: 2432)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1489, file: !98, line: 865, baseType: !396, size: 32, offset: 2496)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1489, file: !98, line: 867, baseType: !200, size: 32, offset: 2528)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1489, file: !98, line: 869, baseType: !320, size: 64, offset: 2560)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1489, file: !98, line: 869, baseType: !320, size: 64, offset: 2624)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1489, file: !98, line: 869, baseType: !320, size: 64, offset: 2688)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1489, file: !98, line: 869, baseType: !320, size: 64, offset: 2752)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1489, file: !98, line: 870, baseType: !320, size: 64, offset: 2816)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1489, file: !98, line: 870, baseType: !320, size: 64, offset: 2880)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1489, file: !98, line: 870, baseType: !320, size: 64, offset: 2944)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1489, file: !98, line: 871, baseType: !320, size: 64, offset: 3008)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1489, file: !98, line: 871, baseType: !320, size: 64, offset: 3072)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1489, file: !98, line: 871, baseType: !320, size: 64, offset: 3136)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1489, file: !98, line: 871, baseType: !320, size: 64, offset: 3200)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1489, file: !98, line: 873, baseType: !1564, size: 3328, offset: 3264)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 3328, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 52)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1489, file: !98, line: 875, baseType: !1568, size: 1280, offset: 6592)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 1280, elements: !841)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1489, file: !98, line: 877, baseType: !1570, size: 64, offset: 7872)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !98, line: 877, flags: DIFlagFwdDecl)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1489, file: !98, line: 880, baseType: !1573, size: 1088, offset: 7936)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1574, line: 72, baseType: !1575)
!1574 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1574, line: 23, size: 1088, elements: !1576)
!1576 = !{!1577, !1578, !1579, !1580, !1581, !1584, !1585, !1586, !1587, !1614, !1615, !1616}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1575, file: !1574, line: 28, baseType: !423, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1575, file: !1574, line: 38, baseType: !617, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1575, file: !1574, line: 40, baseType: !320, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1575, file: !1574, line: 43, baseType: !1214, size: 320, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1575, file: !1574, line: 44, baseType: !1582, size: 64, offset: 512)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1574, line: 44, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !1574, line: 48, baseType: !320, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1575, file: !1574, line: 59, baseType: !611, size: 256, offset: 640)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1575, file: !1574, line: 60, baseType: !170, size: 64, offset: 896)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1575, file: !1574, line: 61, baseType: !1588, size: 64, offset: 960)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1590)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1591, line: 13, size: 1216, elements: !1592)
!1591 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1592 = !{!1593, !1594, !1595, !1596, !1597, !1598, !1599, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1590, file: !1591, line: 14, baseType: !170, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1590, file: !1591, line: 15, baseType: !320, size: 64, offset: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1590, file: !1591, line: 17, baseType: !320, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1590, file: !1591, line: 17, baseType: !320, size: 64, offset: 192)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1590, file: !1591, line: 18, baseType: !320, size: 64, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1590, file: !1591, line: 18, baseType: !320, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1590, file: !1591, line: 19, baseType: !1600, size: 64, offset: 384)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1590, file: !1591, line: 21, baseType: !306, size: 64, offset: 448)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1590, file: !1591, line: 23, baseType: !306, size: 64, offset: 512)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1590, file: !1591, line: 24, baseType: !306, size: 64, offset: 576)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1590, file: !1591, line: 25, baseType: !306, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1590, file: !1591, line: 26, baseType: !306, size: 64, offset: 704)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1590, file: !1591, line: 27, baseType: !306, size: 64, offset: 768)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1590, file: !1591, line: 28, baseType: !306, size: 64, offset: 832)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1590, file: !1591, line: 29, baseType: !306, size: 64, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1590, file: !1591, line: 30, baseType: !306, size: 64, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1590, file: !1591, line: 31, baseType: !306, size: 64, offset: 1024)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1590, file: !1591, line: 32, baseType: !306, size: 64, offset: 1088)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1590, file: !1591, line: 33, baseType: !306, size: 64, offset: 1152)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1575, file: !1574, line: 63, baseType: !220, size: 32, offset: 1024)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1575, file: !1574, line: 69, baseType: !238, size: 16, offset: 1056)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1575, file: !1574, line: 70, baseType: !747, size: 16, offset: 1072)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1489, file: !98, line: 882, baseType: !320, size: 64, offset: 9024)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1489, file: !98, line: 885, baseType: !200, size: 32, offset: 9088)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1489, file: !98, line: 886, baseType: !1620, size: 64, offset: 9152)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !98, line: 732, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1489, file: !98, line: 901, baseType: !1353, size: 64, offset: 9216)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1489, file: !98, line: 904, baseType: !1398, size: 64, offset: 9280)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1489, file: !98, line: 906, baseType: !1625, size: 64, offset: 9344)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !98, line: 906, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1489, file: !98, line: 930, baseType: !220, size: 32, offset: 9408)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1489, file: !98, line: 933, baseType: !220, size: 32, offset: 9440)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1489, file: !98, line: 935, baseType: !1630, size: 64, offset: 9472)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !129, line: 103, size: 64, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1630, file: !129, line: 104, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !129, line: 101, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1489, file: !98, line: 940, baseType: !615, size: 64, offset: 9536)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1489, file: !98, line: 942, baseType: !871, size: 256, offset: 9600)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1486, file: !98, line: 986, baseType: !1638, offset: 10240)
!1638 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, elements: !1166)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1473, file: !98, line: 640, baseType: !1640, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1520, line: 297, baseType: !1641)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1520, line: 297, size: 64, elements: !1642)
!1642 = !{!1643}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1641, file: !1520, line: 297, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1525, line: 19, baseType: !320)
!1645 = !DIDerivedType(tag: DW_TAG_member, scope: !1473, file: !98, line: 646, baseType: !1646, size: 64, offset: 256)
!1646 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1473, file: !98, line: 646, size: 64, elements: !1647)
!1647 = !{!1648, !1651}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1646, file: !98, line: 647, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1650)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !98, line: 542, baseType: !320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1646, file: !98, line: 648, baseType: !1650, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1473, file: !98, line: 666, baseType: !65, size: 32, offset: 320)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1473, file: !98, line: 667, baseType: !1654, size: 64, offset: 384)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !98, line: 579, size: 320, elements: !1656)
!1656 = !{!1657}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1655, file: !98, line: 580, baseType: !1214, size: 320)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1473, file: !98, line: 670, baseType: !691, size: 8, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1473, file: !98, line: 681, baseType: !1660, size: 256, offset: 512)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1473, file: !98, line: 678, size: 256, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1660, file: !98, line: 679, baseType: !723, size: 192, align: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1660, file: !98, line: 680, baseType: !320, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1473, file: !98, line: 689, baseType: !187, size: 128, offset: 768)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1473, file: !98, line: 691, baseType: !1666, size: 64, offset: 896)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !98, line: 691, flags: DIFlagFwdDecl)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1473, file: !98, line: 694, baseType: !1669, size: 64, offset: 960)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1671)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1672, line: 563, size: 1024, elements: !1673)
!1672 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1673 = !{!1674, !1678, !1679, !1683, !1687, !1691, !1868, !1872, !1876, !1880, !1881, !1882, !1886, !1890, !1897, !1901}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1671, file: !1672, line: 564, baseType: !1675, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !1472}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1671, file: !1672, line: 569, baseType: !1675, size: 64, offset: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1671, file: !1672, line: 571, baseType: !1680, size: 64, offset: 128)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!65, !1472, !320}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1671, file: !1672, line: 572, baseType: !1684, size: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!65, !1472}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1671, file: !1672, line: 578, baseType: !1688, size: 64, offset: 256)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!65, !1472, !320, !320, !320}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1671, file: !1672, line: 580, baseType: !1692, size: 64, offset: 320)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!1695, !1696}
!1695 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !98, line: 1184, baseType: !7)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1672, line: 512, size: 896, elements: !1698)
!1698 = !{!1699, !1707, !1708, !1715, !1722, !1732, !1861, !1862, !1864, !1866}
!1699 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1672, line: 513, baseType: !1700, size: 320)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1672, line: 513, size: 320, elements: !1701)
!1701 = !{!1702, !1703, !1704, !1705, !1706}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1700, file: !1672, line: 514, baseType: !1472, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1700, file: !1672, line: 515, baseType: !168, size: 32, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1700, file: !1672, line: 516, baseType: !320, size: 64, offset: 128)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1700, file: !1672, line: 517, baseType: !320, size: 64, offset: 192)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1700, file: !1672, line: 518, baseType: !320, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1697, file: !1672, line: 520, baseType: !97, size: 32, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1697, file: !1672, line: 522, baseType: !1709, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1525, line: 22, baseType: !1711)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1525, line: 22, size: 64, elements: !1712)
!1712 = !{!1713}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1711, file: !1525, line: 22, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1525, line: 15, baseType: !320)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1697, file: !1672, line: 524, baseType: !1716, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1520, line: 372, baseType: !1718)
!1718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 372, size: 64, elements: !1719)
!1719 = !{!1720}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1718, file: !1520, line: 372, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1525, line: 16, baseType: !320)
!1722 = !DIDerivedType(tag: DW_TAG_member, scope: !1697, file: !1672, line: 527, baseType: !1723, size: 64, offset: 512)
!1723 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1697, file: !1672, line: 527, size: 64, elements: !1724)
!1724 = !{!1725, !1731}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1723, file: !1672, line: 528, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1525, line: 21, baseType: !1727)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1525, line: 21, size: 64, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1727, file: !1525, line: 21, baseType: !1730, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1525, line: 14, baseType: !320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1723, file: !1672, line: 529, baseType: !1710, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1697, file: !1672, line: 534, baseType: !1733, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !98, line: 74, size: 512, align: 128, elements: !1735)
!1735 = !{!1736, !1737, !1855, !1860}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1734, file: !98, line: 75, baseType: !320, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !98, line: 83, baseType: !1738, size: 320, offset: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1734, file: !98, line: 83, size: 320, elements: !1739)
!1739 = !{!1740, !1761, !1775, !1779, !1854}
!1740 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !98, line: 84, baseType: !1741, size: 320)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !98, line: 84, size: 320, elements: !1742)
!1742 = !{!1743, !1754, !1755, !1760}
!1743 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !98, line: 90, baseType: !1744, size: 128)
!1744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !98, line: 90, size: 128, elements: !1745)
!1745 = !{!1746, !1747, !1752, !1753}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1744, file: !98, line: 91, baseType: !187, size: 128)
!1747 = !DIDerivedType(tag: DW_TAG_member, scope: !1744, file: !98, line: 94, baseType: !1748, size: 128)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1744, file: !98, line: 94, size: 128, elements: !1749)
!1749 = !{!1750, !1751}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1748, file: !98, line: 96, baseType: !170, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1748, file: !98, line: 98, baseType: !7, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1744, file: !98, line: 102, baseType: !187, size: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1744, file: !98, line: 103, baseType: !187, size: 128)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1741, file: !98, line: 106, baseType: !346, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, scope: !1741, file: !98, line: 107, baseType: !1756, size: 64, offset: 192)
!1756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1741, file: !98, line: 107, size: 64, elements: !1757)
!1757 = !{!1758, !1759}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1756, file: !98, line: 108, baseType: !320, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1756, file: !98, line: 109, baseType: !320, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1741, file: !98, line: 117, baseType: !320, size: 64, offset: 256)
!1761 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !98, line: 119, baseType: !1762, size: 320)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !98, line: 119, size: 320, elements: !1763)
!1763 = !{!1764, !1765, !1768, !1769, !1770}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1762, file: !98, line: 124, baseType: !320, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1762, file: !98, line: 125, baseType: !1766, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !98, line: 125, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1762, file: !98, line: 126, baseType: !320, size: 64, offset: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1762, file: !98, line: 127, baseType: !320, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !98, line: 128, baseType: !1771, size: 64, offset: 256)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !98, line: 128, size: 64, elements: !1772)
!1772 = !{!1773, !1774}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1771, file: !98, line: 133, baseType: !320, size: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1771, file: !98, line: 138, baseType: !615, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !98, line: 141, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !98, line: 141, size: 64, elements: !1777)
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1776, file: !98, line: 142, baseType: !320, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, scope: !1738, file: !98, line: 144, baseType: !1780, size: 128)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1738, file: !98, line: 144, size: 128, elements: !1781)
!1781 = !{!1782, !1853}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1780, file: !98, line: 146, baseType: !1783, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !121, line: 126, size: 1216, elements: !1785)
!1785 = !{!1786, !1796, !1817, !1818, !1819, !1820, !1821, !1835, !1836, !1837}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1784, file: !121, line: 127, baseType: !1787, size: 384)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !121, line: 21, size: 384, elements: !1788)
!1788 = !{!1789, !1790, !1792, !1793, !1794, !1795}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1787, file: !121, line: 22, baseType: !320, size: 64)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1787, file: !121, line: 23, baseType: !1791, size: 64, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1787, file: !121, line: 24, baseType: !1791, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1787, file: !121, line: 25, baseType: !320, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1787, file: !121, line: 26, baseType: !320, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1787, file: !121, line: 27, baseType: !320, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1784, file: !121, line: 128, baseType: !1797, size: 128, offset: 384)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1798, line: 105, size: 128, elements: !1799)
!1798 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1797, file: !1798, line: 110, baseType: !320, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1797, file: !1798, line: 118, baseType: !1802, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1798, line: 95, size: 448, elements: !1804)
!1804 = !{!1805, !1806, !1812, !1813, !1814, !1815, !1816}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1803, file: !1798, line: 96, baseType: !615, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1803, file: !1798, line: 97, baseType: !1807, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1798, line: 60, baseType: !1809)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1803, file: !1798, line: 98, baseType: !1807, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1803, file: !1798, line: 99, baseType: !691, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1803, file: !1798, line: 100, baseType: !691, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1803, file: !1798, line: 101, baseType: !831, size: 128, align: 64, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1803, file: !1798, line: 102, baseType: !1811, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1784, file: !121, line: 129, baseType: !560, size: 256, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1784, file: !121, line: 130, baseType: !120, size: 32, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1784, file: !121, line: 131, baseType: !7, size: 32, offset: 800)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1784, file: !121, line: 132, baseType: !320, size: 64, offset: 832)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1784, file: !121, line: 133, baseType: !1822, size: 64, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !121, line: 77, size: 192, elements: !1825)
!1825 = !{!1826, !1830, !1831}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1824, file: !121, line: 83, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{null, !1733}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1824, file: !121, line: 89, baseType: !1692, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1824, file: !121, line: 100, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!65, !1783, !320, !320, !65}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1784, file: !121, line: 134, baseType: !170, size: 64, offset: 960)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1784, file: !121, line: 135, baseType: !65, size: 32, offset: 1024)
!1837 = !DIDerivedType(tag: DW_TAG_member, scope: !1784, file: !121, line: 136, baseType: !1838, size: 128, offset: 1088)
!1838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1784, file: !121, line: 136, size: 128, elements: !1839)
!1839 = !{!1840, !1846}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1838, file: !121, line: 137, baseType: !1841, size: 128)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1842, line: 6, size: 128, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1841, file: !1842, line: 7, baseType: !423, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1841, file: !1842, line: 8, baseType: !423, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, scope: !1838, file: !121, line: 138, baseType: !1847)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1838, file: !121, line: 138, elements: !1848)
!1848 = !{!1849, !1851}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1847, file: !121, line: 138, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1847, file: !121, line: 138, elements: !900)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1847, file: !121, line: 138, baseType: !1852)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1841, elements: !1166)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1780, file: !98, line: 147, baseType: !170, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1738, file: !98, line: 161, baseType: !831, size: 128, align: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !98, line: 164, baseType: !1856, size: 32, offset: 384)
!1856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1734, file: !98, line: 164, size: 32, elements: !1857)
!1857 = !{!1858, !1859}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1856, file: !98, line: 169, baseType: !220, size: 32)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1856, file: !98, line: 177, baseType: !7, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1734, file: !98, line: 181, baseType: !220, size: 32, offset: 416)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1697, file: !1672, line: 535, baseType: !1733, size: 64, offset: 640)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1697, file: !1672, line: 541, baseType: !1863, size: 64, offset: 704)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1697, file: !1672, line: 545, baseType: !1865, size: 64, offset: 768)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1697, file: !1672, line: 549, baseType: !1867, size: 64, offset: 832)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1520, line: 520, baseType: !1733)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1671, file: !1672, line: 581, baseType: !1869, size: 64, offset: 384)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!1695, !1696, !7}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1671, file: !1672, line: 582, baseType: !1873, size: 64, offset: 448)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!1695, !1696, !320, !320}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1671, file: !1672, line: 584, baseType: !1877, size: 64, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!320, !1472}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1671, file: !1672, line: 588, baseType: !1692, size: 64, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1671, file: !1672, line: 591, baseType: !1692, size: 64, offset: 640)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1671, file: !1672, line: 597, baseType: !1883, size: 64, offset: 704)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{!65, !1472, !320, !170, !65, !65}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1671, file: !1672, line: 603, baseType: !1887, size: 64, offset: 768)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!183, !1472}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1671, file: !1672, line: 613, baseType: !1891, size: 64, offset: 832)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!65, !1472, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1896, line: 54, flags: DIFlagFwdDecl)
!1896 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1671, file: !1672, line: 625, baseType: !1898, size: 64, offset: 896)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!1894, !1472, !320}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1671, file: !1672, line: 633, baseType: !1902, size: 64, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!1733, !1472, !320}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1473, file: !98, line: 697, baseType: !320, size: 64, offset: 1024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1473, file: !98, line: 699, baseType: !1398, size: 64, offset: 1088)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1473, file: !98, line: 700, baseType: !170, size: 64, offset: 1152)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1473, file: !98, line: 711, baseType: !615, size: 64, offset: 1216)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1473, file: !98, line: 717, baseType: !1894, size: 64, offset: 1280)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1473, file: !98, line: 722, baseType: !1911, offset: 1344)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !98, line: 570, elements: !900)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1391, file: !28, line: 1928, baseType: !320, size: 64, offset: 768)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1391, file: !28, line: 1929, baseType: !1914, size: 64, offset: 832)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!65, !350, !1398}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1391, file: !28, line: 1930, baseType: !1918, size: 64, offset: 896)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!65, !1398, !1921}
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !170)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1391, file: !28, line: 1931, baseType: !1914, size: 64, offset: 960)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1391, file: !28, line: 1932, baseType: !1924, size: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!65, !1398, !511, !511, !65}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1391, file: !28, line: 1933, baseType: !1928, size: 64, offset: 1088)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!65, !65, !1398, !65}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1391, file: !28, line: 1934, baseType: !1932, size: 64, offset: 1152)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!65, !1398, !65, !1935}
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1391, file: !28, line: 1935, baseType: !1509, size: 64, offset: 1216)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1391, file: !28, line: 1936, baseType: !1939, size: 64, offset: 1280)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!65, !65}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1391, file: !28, line: 1937, baseType: !1932, size: 64, offset: 1344)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1391, file: !28, line: 1938, baseType: !1944, size: 64, offset: 1408)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!302, !1947, !1398, !1074, !317, !7}
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1896, line: 59, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1391, file: !28, line: 1939, baseType: !1950, size: 64, offset: 1472)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{!302, !1398, !1074, !1947, !317, !7}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1391, file: !28, line: 1940, baseType: !1954, size: 64, offset: 1536)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{null, !1398}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1391, file: !28, line: 1941, baseType: !1958, size: 64, offset: 1600)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!65, !1398, !65, !1961, !1962}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1391, file: !28, line: 1942, baseType: !1964, size: 64, offset: 1664)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{!306, !1398, !65, !511, !511}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1391, file: !28, line: 1944, baseType: !1968, size: 64, offset: 1728)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1053, !1398}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1391, file: !28, line: 1948, baseType: !1972, size: 64, offset: 1792)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{!302, !1398, !511, !1398, !511, !317, !7}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1391, file: !28, line: 1950, baseType: !1976, size: 64, offset: 1856)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!511, !1398, !511, !1398, !511, !511, !7}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1391, file: !28, line: 1953, baseType: !1924, size: 64, offset: 1920)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1391, file: !28, line: 1954, baseType: !1981, size: 64, offset: 1984)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{!65, !1984, !7}
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1391, file: !28, line: 1955, baseType: !1987, size: 64, offset: 2048)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!65, !1984, !1440, !7}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1091, file: !28, line: 1018, baseType: !423, size: 64, offset: 1472)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1091, file: !28, line: 1020, baseType: !170, size: 64, offset: 1536)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1091, file: !28, line: 1023, baseType: !170, size: 64, offset: 1600)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1091, file: !28, line: 1027, baseType: !1994, size: 64, offset: 1664)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1091, file: !28, line: 1029, baseType: !346, size: 64, offset: 1728)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1091, file: !28, line: 1030, baseType: !1997, size: 32, offset: 1792)
!1997 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1998, line: 8, baseType: !419)
!1998 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1091, file: !28, line: 1031, baseType: !1997, size: 32, offset: 1824)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1054, file: !1055, line: 29, baseType: !170, size: 64, offset: 896)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !997, file: !28, line: 2077, baseType: !1050, size: 64, offset: 1088)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !997, file: !28, line: 2078, baseType: !1050, size: 64, offset: 1152)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !997, file: !28, line: 2079, baseType: !1050, size: 64, offset: 1216)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !997, file: !28, line: 2081, baseType: !2005, size: 64, offset: 1280)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!302, !501, !65, !270, !317, !511}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !997, file: !28, line: 2082, baseType: !2009, size: 64, offset: 1344)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DISubroutineType(types: !2011)
!2011 = !{!302, !501, !65, !183, !317, !511}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !997, file: !28, line: 2083, baseType: !2013, size: 64, offset: 1408)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!2016, !350}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2044, !2045, !2046}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2018, file: !33, line: 297, baseType: !857, size: 128)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2018, file: !33, line: 298, baseType: !187, size: 128, offset: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2018, file: !33, line: 299, baseType: !187, size: 128, offset: 256)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2018, file: !33, line: 300, baseType: !187, size: 128, offset: 384)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2018, file: !33, line: 301, baseType: !611, size: 256, offset: 512)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2018, file: !33, line: 302, baseType: !200, size: 32, offset: 768)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2018, file: !33, line: 303, baseType: !220, size: 32, offset: 800)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2018, file: !33, line: 304, baseType: !501, size: 64, offset: 832)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2018, file: !33, line: 305, baseType: !2029, size: 64, offset: 896)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !2030)
!2030 = !{!2031, !2043}
!2031 = !DIDerivedType(tag: DW_TAG_member, scope: !2029, file: !33, line: 69, baseType: !2032, size: 32)
!2032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2029, file: !33, line: 69, size: 32, elements: !2033)
!2033 = !{!2034, !2035, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2032, file: !33, line: 70, baseType: !356, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2032, file: !33, line: 71, baseType: !365, size: 32)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2032, file: !33, line: 72, baseType: !2037, size: 32)
!2037 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2038, line: 24, baseType: !2039)
!2038 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2038, line: 22, size: 32, elements: !2040)
!2040 = !{!2041}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2039, file: !2038, line: 23, baseType: !2042, size: 32)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2038, line: 20, baseType: !362)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2029, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2018, file: !33, line: 306, baseType: !511, size: 64, offset: 960)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2018, file: !33, line: 307, baseType: !320, size: 64, offset: 1024)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2018, file: !33, line: 308, baseType: !2047, size: 576, offset: 1088)
!2047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !2048)
!2048 = !{!2049, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2047, file: !33, line: 206, baseType: !2050, size: 64)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !513)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2047, file: !33, line: 207, baseType: !2050, size: 64, offset: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2047, file: !33, line: 208, baseType: !2050, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2047, file: !33, line: 209, baseType: !2050, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2047, file: !33, line: 210, baseType: !2050, size: 64, offset: 256)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2047, file: !33, line: 211, baseType: !2050, size: 64, offset: 320)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2047, file: !33, line: 212, baseType: !2050, size: 64, offset: 384)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2047, file: !33, line: 213, baseType: !1230, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2047, file: !33, line: 214, baseType: !1230, size: 64, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !997, file: !28, line: 2085, baseType: !2060, size: 64, offset: 1472)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!306, !501, !2063}
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2065, line: 15, size: 256, elements: !2066)
!2065 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2066 = !{!2067, !2068, !2069, !2070, !2071}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2064, file: !2065, line: 16, baseType: !168, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2064, file: !2065, line: 19, baseType: !65, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2064, file: !2065, line: 26, baseType: !320, size: 64, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2064, file: !2065, line: 33, baseType: !320, size: 64, offset: 128)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2064, file: !2065, line: 36, baseType: !2072, size: 64, offset: 192)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !98, line: 33, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !997, file: !28, line: 2087, baseType: !2060, size: 64, offset: 1536)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !997, file: !28, line: 2089, baseType: !536, size: 64, offset: 1600)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !502, file: !28, line: 1198, baseType: !2077, size: 64, offset: 448)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2079)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !2080)
!2080 = !{!2081, !2085, !2089, !2093, !2094, !2095, !2096, !2097, !2102, !2107, !2111}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2079, file: !33, line: 325, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DISubroutineType(types: !2084)
!2084 = !{!65, !2017}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2079, file: !33, line: 326, baseType: !2086, size: 64, offset: 64)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{!2017, !501, !65}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2079, file: !33, line: 327, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !2017}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2079, file: !33, line: 328, baseType: !2082, size: 64, offset: 192)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2079, file: !33, line: 329, baseType: !2082, size: 64, offset: 256)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2079, file: !33, line: 330, baseType: !2082, size: 64, offset: 320)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2079, file: !33, line: 331, baseType: !1025, size: 64, offset: 384)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2079, file: !33, line: 334, baseType: !2098, size: 64, offset: 448)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!2101, !350}
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2079, file: !33, line: 335, baseType: !2103, size: 64, offset: 512)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!65, !350, !2106}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2079, file: !33, line: 337, baseType: !2108, size: 64, offset: 576)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!65, !350, !2101}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2079, file: !33, line: 339, baseType: !2112, size: 64, offset: 640)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!65, !501, !2115}
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !502, file: !28, line: 1199, baseType: !2117, size: 64, offset: 512)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2119)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !2120)
!2120 = !{!2121, !2127, !2128, !2132, !2133, !2134, !2149, !2172, !2176, !2177, !2200}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2119, file: !33, line: 431, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!65, !501, !65, !65, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1382)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2119, file: !33, line: 432, baseType: !1025, size: 64, offset: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2119, file: !33, line: 433, baseType: !2129, size: 64, offset: 128)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!65, !501, !7}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2119, file: !33, line: 434, baseType: !2129, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2119, file: !33, line: 435, baseType: !1025, size: 64, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2119, file: !33, line: 436, baseType: !2135, size: 64, offset: 320)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!65, !501, !65, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !2140)
!2140 = !{!2141, !2142, !2143, !2144, !2145, !2146, !2147, !2148}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2139, file: !33, line: 418, baseType: !65, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2139, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2139, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2139, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2139, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2139, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2139, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2139, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2119, file: !33, line: 437, baseType: !2150, size: 64, offset: 384)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!65, !501, !2029, !2153}
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !2155)
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2154, file: !33, line: 346, baseType: !65, size: 32)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2154, file: !33, line: 347, baseType: !423, size: 64, offset: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2154, file: !33, line: 348, baseType: !423, size: 64, offset: 128)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2154, file: !33, line: 349, baseType: !423, size: 64, offset: 192)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2154, file: !33, line: 350, baseType: !423, size: 64, offset: 256)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2154, file: !33, line: 351, baseType: !423, size: 64, offset: 320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2154, file: !33, line: 352, baseType: !423, size: 64, offset: 384)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2154, file: !33, line: 353, baseType: !621, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2154, file: !33, line: 355, baseType: !621, size: 64, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2154, file: !33, line: 356, baseType: !65, size: 32, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2154, file: !33, line: 357, baseType: !65, size: 32, offset: 608)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2154, file: !33, line: 358, baseType: !423, size: 64, offset: 640)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2154, file: !33, line: 359, baseType: !423, size: 64, offset: 704)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2154, file: !33, line: 360, baseType: !423, size: 64, offset: 768)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2154, file: !33, line: 361, baseType: !621, size: 64, offset: 832)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2154, file: !33, line: 362, baseType: !65, size: 32, offset: 896)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2119, file: !33, line: 438, baseType: !2173, size: 64, offset: 448)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!65, !501, !2115, !2153}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2119, file: !33, line: 440, baseType: !2150, size: 64, offset: 512)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2119, file: !33, line: 441, baseType: !2178, size: 64, offset: 576)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!65, !501, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2182, file: !33, line: 412, baseType: !7, size: 32)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2182, file: !33, line: 413, baseType: !2186, size: 1344, offset: 64)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2187, size: 1344, elements: !271)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !2188)
!2188 = !{!2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2199}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2187, file: !33, line: 398, baseType: !7, size: 32)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2187, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2187, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2187, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2187, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2187, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2187, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2187, file: !33, line: 406, baseType: !425, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2187, file: !33, line: 407, baseType: !2198, size: 64, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !169, line: 132, baseType: !423)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2187, file: !33, line: 408, baseType: !2198, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2119, file: !33, line: 442, baseType: !2129, size: 64, offset: 640)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !502, file: !28, line: 1200, baseType: !2202, size: 64, offset: 576)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2204)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !502, file: !28, line: 1201, baseType: !320, size: 64, offset: 640)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !502, file: !28, line: 1202, baseType: !320, size: 64, offset: 704)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !502, file: !28, line: 1203, baseType: !320, size: 64, offset: 768)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !502, file: !28, line: 1204, baseType: !385, size: 64, offset: 832)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !502, file: !28, line: 1205, baseType: !1214, size: 320, offset: 896)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !502, file: !28, line: 1206, baseType: !65, size: 32, offset: 1216)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !502, file: !28, line: 1207, baseType: !220, size: 32, offset: 1248)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !502, file: !28, line: 1209, baseType: !170, size: 64, offset: 1280)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !502, file: !28, line: 1211, baseType: !2214, size: 64, offset: 1344)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !502, file: !28, line: 1223, baseType: !2219, size: 64, offset: 1408)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !402, line: 34, size: 64, elements: !2220)
!2220 = !{!2221}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2219, file: !402, line: 35, baseType: !405, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !502, file: !28, line: 1224, baseType: !187, size: 128, offset: 1472)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !502, file: !28, line: 1225, baseType: !2224, size: 64, offset: 1600)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !502, file: !28, line: 1226, baseType: !2227, size: 64, offset: 1664)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !502, file: !28, line: 1227, baseType: !2230, size: 64, offset: 1728)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !502, file: !28, line: 1228, baseType: !2233, size: 64, offset: 1792)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !502, file: !28, line: 1229, baseType: !857, size: 128, offset: 1856)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !502, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !502, file: !28, line: 1231, baseType: !2238, size: 2496, offset: 2048)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !2239)
!2239 = !{!2240, !2241, !2242, !2244, !2276}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2238, file: !33, line: 522, baseType: !7, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2238, file: !33, line: 523, baseType: !1214, size: 320, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2238, file: !33, line: 524, baseType: !2243, size: 192, offset: 384)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !350, size: 192, elements: !271)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2238, file: !33, line: 525, baseType: !2245, size: 1728, offset: 576)
!2245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2246, size: 1728, elements: !271)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !2247)
!2247 = !{!2248, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2246, file: !33, line: 223, baseType: !2249, size: 64)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !2251)
!2251 = !{!2252, !2253, !2266, !2267}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2250, file: !33, line: 446, baseType: !65, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2250, file: !33, line: 447, baseType: !2254, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !2257)
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2256, file: !33, line: 313, baseType: !1025, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2256, file: !33, line: 314, baseType: !1025, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2256, file: !33, line: 315, baseType: !1025, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2256, file: !33, line: 316, baseType: !1025, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2256, file: !33, line: 317, baseType: !2082, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2256, file: !33, line: 318, baseType: !2082, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2256, file: !33, line: 319, baseType: !2082, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2256, file: !33, line: 320, baseType: !2112, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2250, file: !33, line: 448, baseType: !540, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2250, file: !33, line: 449, baseType: !2249, size: 64, offset: 192)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2246, file: !33, line: 224, baseType: !65, size: 32, offset: 64)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2246, file: !33, line: 226, baseType: !187, size: 128, offset: 128)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2246, file: !33, line: 227, baseType: !320, size: 64, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2246, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2246, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2246, file: !33, line: 230, baseType: !2050, size: 64, offset: 384)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2246, file: !33, line: 231, baseType: !2050, size: 64, offset: 448)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2246, file: !33, line: 232, baseType: !170, size: 64, offset: 512)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2238, file: !33, line: 526, baseType: !2277, size: 192, offset: 2304)
!2277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2254, size: 192, elements: !271)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !502, file: !28, line: 1233, baseType: !2279, size: 2368, offset: 4544)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2279, file: !28, line: 1185, baseType: !240, size: 16)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2279, file: !28, line: 1186, baseType: !240, size: 16, offset: 16)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2279, file: !28, line: 1187, baseType: !2284, size: 2304, offset: 64)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2285, size: 2304, elements: !271)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2286, line: 12, size: 768, elements: !2287)
!2286 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2287 = !{!2288, !2296, !2297, !3944, !3945}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2285, file: !2286, line: 13, baseType: !2289, size: 384)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2290, line: 17, size: 384, elements: !2291)
!2290 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2291 = !{!2292, !2293, !2294, !2295}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2289, file: !2290, line: 18, baseType: !65, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2289, file: !2290, line: 19, baseType: !65, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2289, file: !2290, line: 20, baseType: !1151, size: 192, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2289, file: !2290, line: 22, baseType: !831, size: 128, align: 64, offset: 256)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2285, file: !2286, line: 14, baseType: !683, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2285, file: !2286, line: 15, baseType: !2298, size: 64, offset: 448)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2299, line: 16, size: 64, elements: !2300)
!2299 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2300 = !{!2301}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2298, file: !2299, line: 17, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1896, line: 746, size: 58368, elements: !2304)
!2304 = !{!2305, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2385, !2396, !2491, !2495, !2498, !2529, !2530, !2531, !2532, !2543, !2545, !2546, !2547, !2548, !2549, !2550, !2561, !2562, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2579, !2580, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2668, !2671, !2672, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2716, !2722, !2723, !2724, !2725, !2726, !2730, !2733, !2740, !2745, !2748, !2751, !2754, !2757, !3349, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3387, !3388, !3389, !3398, !3406, !3407, !3408, !3409, !3410, !3415, !3416, !3417, !3420, !3421, !3424, !3427, !3430, !3438, !3441, !3442, !3528, !3529, !3530, !3531, !3532, !3538, !3539, !3540, !3541, !3544, !3545, !3548, !3551, !3552, !3555, !3556, !3557, !3560, !3561, !3562, !3563, !3564, !3565, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3597, !3598, !3604, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3616, !3688, !3690, !3691, !3692, !3693, !3694, !3695, !3711, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2303, file: !1896, line: 752, baseType: !2306, size: 192)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2307, line: 56, size: 192, elements: !2308)
!2307 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2308 = !{!2309, !2310, !2311, !2312}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2306, file: !2307, line: 57, baseType: !320, size: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2306, file: !2307, line: 58, baseType: !320, size: 64, offset: 64)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2306, file: !2307, line: 59, baseType: !419, size: 32, offset: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2306, file: !2307, line: 61, baseType: !419, size: 32, offset: 160)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2303, file: !1896, line: 754, baseType: !7, size: 32, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2303, file: !1896, line: 767, baseType: !170, size: 64, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2303, file: !1896, line: 768, baseType: !1140, size: 32, offset: 320)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2303, file: !1896, line: 770, baseType: !7, size: 32, offset: 352)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2303, file: !1896, line: 771, baseType: !7, size: 32, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2303, file: !1896, line: 774, baseType: !65, size: 32, offset: 416)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2303, file: !1896, line: 775, baseType: !2320, size: 128, offset: 448)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2321, line: 58, size: 128, elements: !2322)
!2321 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2322 = !{!2323, !2324, !2329, !2330}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2320, file: !2321, line: 59, baseType: !1097, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, scope: !2320, file: !2321, line: 60, baseType: !2325, size: 32, offset: 64)
!2325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2320, file: !2321, line: 60, size: 32, elements: !2326)
!2326 = !{!2327, !2328}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2325, file: !2321, line: 61, baseType: !7, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2325, file: !2321, line: 62, baseType: !220, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2320, file: !2321, line: 65, baseType: !238, size: 16, offset: 96)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2320, file: !2321, line: 65, baseType: !238, size: 16, offset: 112)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2303, file: !1896, line: 776, baseType: !7, size: 32, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2303, file: !1896, line: 777, baseType: !320, size: 64, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2303, file: !1896, line: 778, baseType: !2302, size: 64, offset: 704)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2303, file: !1896, line: 787, baseType: !65, size: 32, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2303, file: !1896, line: 788, baseType: !65, size: 32, offset: 800)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2303, file: !1896, line: 790, baseType: !65, size: 32, offset: 832)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2303, file: !1896, line: 792, baseType: !65, size: 32, offset: 864)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2303, file: !1896, line: 793, baseType: !65, size: 32, offset: 896)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2303, file: !1896, line: 794, baseType: !65, size: 32, offset: 928)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2303, file: !1896, line: 795, baseType: !7, size: 32, offset: 960)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2303, file: !1896, line: 797, baseType: !2342, size: 2048, offset: 1024)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1896, line: 551, size: 2048, elements: !2343)
!2343 = !{!2344, !2349, !2350, !2351, !2352, !2353, !2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2364, !2367, !2368, !2369}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2342, file: !1896, line: 553, baseType: !2345, size: 128)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1896, line: 411, size: 128, elements: !2346)
!2346 = !{!2347, !2348}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2345, file: !1896, line: 412, baseType: !320, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2345, file: !1896, line: 413, baseType: !419, size: 32, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2342, file: !1896, line: 554, baseType: !723, size: 192, align: 64, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2342, file: !1896, line: 555, baseType: !423, size: 64, offset: 320)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2342, file: !1896, line: 556, baseType: !423, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2342, file: !1896, line: 558, baseType: !187, size: 128, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2342, file: !1896, line: 559, baseType: !7, size: 32, offset: 576)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2342, file: !1896, line: 561, baseType: !423, size: 64, offset: 640)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2342, file: !1896, line: 562, baseType: !423, size: 64, offset: 704)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2342, file: !1896, line: 563, baseType: !423, size: 64, offset: 768)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2342, file: !1896, line: 564, baseType: !423, size: 64, offset: 832)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2342, file: !1896, line: 565, baseType: !621, size: 64, offset: 896)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2342, file: !1896, line: 566, baseType: !423, size: 64, offset: 960)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2342, file: !1896, line: 568, baseType: !423, size: 64, offset: 1024)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2342, file: !1896, line: 571, baseType: !65, size: 32, offset: 1088)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2342, file: !1896, line: 572, baseType: !2363, size: 64, offset: 1152)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2342, file: !1896, line: 574, baseType: !2365, size: 64, offset: 1216)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1896, line: 49, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2342, file: !1896, line: 576, baseType: !2365, size: 64, offset: 1280)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2342, file: !1896, line: 578, baseType: !320, size: 64, offset: 1344)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2342, file: !1896, line: 588, baseType: !2370, size: 512, align: 512, offset: 1536)
!2370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1896, line: 497, size: 512, align: 512, elements: !2371)
!2371 = !{!2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2370, file: !1896, line: 498, baseType: !423, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2370, file: !1896, line: 499, baseType: !423, size: 64, offset: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2370, file: !1896, line: 500, baseType: !423, size: 64, offset: 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2370, file: !1896, line: 501, baseType: !419, size: 32, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2370, file: !1896, line: 502, baseType: !419, size: 32, offset: 224)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2370, file: !1896, line: 503, baseType: !320, size: 64, offset: 256)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2370, file: !1896, line: 504, baseType: !320, size: 64, offset: 320)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2370, file: !1896, line: 505, baseType: !320, size: 64, offset: 384)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2370, file: !1896, line: 506, baseType: !2381, size: 64, align: 64, offset: 448)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1896, line: 445, size: 64, align: 64, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2381, file: !1896, line: 446, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2381, file: !1896, line: 447, baseType: !7, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2303, file: !1896, line: 798, baseType: !2386, size: 384, offset: 3072)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1896, line: 592, size: 384, elements: !2387)
!2387 = !{!2388, !2389, !2390, !2391, !2392, !2393, !2394}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2386, file: !1896, line: 593, baseType: !187, size: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2386, file: !1896, line: 594, baseType: !320, size: 64, offset: 128)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2386, file: !1896, line: 595, baseType: !320, size: 64, offset: 192)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2386, file: !1896, line: 596, baseType: !7, size: 32, offset: 256)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2386, file: !1896, line: 597, baseType: !240, size: 16, offset: 288)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2386, file: !1896, line: 598, baseType: !240, size: 16, offset: 304)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2386, file: !1896, line: 600, baseType: !2395, size: 64, offset: 320)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2303, file: !1896, line: 799, baseType: !2397, size: 1792, offset: 3456)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1896, line: 610, size: 1792, elements: !2398)
!2398 = !{!2399, !2400, !2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2488, !2489}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2397, file: !1896, line: 611, baseType: !723, size: 192, align: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2397, file: !1896, line: 618, baseType: !423, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2397, file: !1896, line: 619, baseType: !423, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2397, file: !1896, line: 620, baseType: !423, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2397, file: !1896, line: 621, baseType: !423, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2397, file: !1896, line: 622, baseType: !423, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2397, file: !1896, line: 629, baseType: !621, size: 64, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2397, file: !1896, line: 630, baseType: !423, size: 64, offset: 576)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2397, file: !1896, line: 631, baseType: !7, size: 32, offset: 640)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2397, file: !1896, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2397, file: !1896, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2397, file: !1896, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2397, file: !1896, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2397, file: !1896, line: 662, baseType: !2413, size: 512, offset: 704)
!2413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !2414)
!2414 = !{!2415, !2423, !2424, !2429, !2484, !2485, !2486, !2487}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2413, file: !39, line: 119, baseType: !2416, size: 256)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2417, line: 9, size: 256, elements: !2418)
!2417 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2418 = !{!2419, !2420}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2416, file: !2417, line: 10, baseType: !723, size: 192, align: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2416, file: !2417, line: 11, baseType: !2421, size: 64, offset: 192)
!2421 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2422, line: 29, baseType: !621)
!2422 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2413, file: !39, line: 120, baseType: !2421, size: 64, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2413, file: !39, line: 121, baseType: !2425, size: 64, offset: 320)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!38, !2428}
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2413, file: !39, line: 122, baseType: !2430, size: 64, offset: 384)
!2430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !2432)
!2432 = !{!2433, !2458, !2459, !2462, !2467, !2468, !2479, !2483}
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2431, file: !39, line: 160, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !2436)
!2436 = !{!2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2435, file: !39, line: 216, baseType: !569, size: 32)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2435, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2435, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2435, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2435, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2435, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2435, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2435, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2435, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2435, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2435, file: !39, line: 227, baseType: !240, size: 16, offset: 192)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2435, file: !39, line: 228, baseType: !240, size: 16, offset: 208)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2435, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2435, file: !39, line: 235, baseType: !2421, size: 64, offset: 256)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2435, file: !39, line: 236, baseType: !2428, size: 64, offset: 320)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2435, file: !39, line: 237, baseType: !2421, size: 64, offset: 384)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2435, file: !39, line: 238, baseType: !2428, size: 64, offset: 448)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2435, file: !39, line: 239, baseType: !2455, size: 4096, align: 512, offset: 512)
!2455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2431, size: 4096, align: 512, elements: !2456)
!2456 = !{!2457}
!2457 = !DISubrange(count: 8)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2431, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2431, file: !39, line: 162, baseType: !2460, size: 32, offset: 96)
!2460 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !169, line: 32, baseType: !2461)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !304, line: 96, baseType: !65)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2431, file: !39, line: 163, baseType: !2463, size: 32, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !392, line: 274, baseType: !2464)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !392, line: 274, size: 32, elements: !2465)
!2465 = !{!2466}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2464, file: !392, line: 274, baseType: !396, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2431, file: !39, line: 164, baseType: !2428, size: 64, offset: 192)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2431, file: !39, line: 165, baseType: !2469, size: 128, offset: 256)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2417, line: 14, size: 128, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2469, file: !2417, line: 15, baseType: !2472, size: 128)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !724, line: 26, size: 128, elements: !2473)
!2473 = !{!2474, !2478}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2472, file: !724, line: 27, baseType: !2475, size: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !724, line: 12, size: 64, elements: !2476)
!2476 = !{!2477}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2475, file: !724, line: 13, baseType: !728, size: 64)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2472, file: !724, line: 28, baseType: !728, size: 64, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2431, file: !39, line: 166, baseType: !2480, size: 64, offset: 384)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!2421}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2431, file: !39, line: 167, baseType: !2421, size: 64, offset: 448)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2413, file: !39, line: 123, baseType: !228, size: 8, offset: 448)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2413, file: !39, line: 124, baseType: !228, size: 8, offset: 456)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2413, file: !39, line: 125, baseType: !228, size: 8, offset: 464)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2413, file: !39, line: 126, baseType: !228, size: 8, offset: 472)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2397, file: !1896, line: 671, baseType: !2413, size: 512, offset: 1216)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2397, file: !1896, line: 679, baseType: !2490, size: 64, offset: 1728)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2303, file: !1896, line: 800, baseType: !2492, size: 64, offset: 5248)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2494)
!2494 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1896, line: 800, flags: DIFlagFwdDecl)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2303, file: !1896, line: 809, baseType: !2496, size: 64, offset: 5312)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1896, line: 70, flags: DIFlagFwdDecl)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2303, file: !1896, line: 825, baseType: !2499, size: 2048, align: 512, offset: 5632)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1896, line: 509, size: 2048, align: 512, elements: !2500)
!2500 = !{!2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2499, file: !1896, line: 511, baseType: !423, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2499, file: !1896, line: 512, baseType: !423, size: 64, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2499, file: !1896, line: 513, baseType: !423, size: 64, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2499, file: !1896, line: 514, baseType: !423, size: 64, offset: 192)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2499, file: !1896, line: 515, baseType: !423, size: 64, offset: 256)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2499, file: !1896, line: 516, baseType: !423, size: 64, offset: 320)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2499, file: !1896, line: 518, baseType: !423, size: 64, offset: 384)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2499, file: !1896, line: 519, baseType: !423, size: 64, offset: 448)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2499, file: !1896, line: 520, baseType: !621, size: 64, offset: 512)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2499, file: !1896, line: 522, baseType: !423, size: 64, offset: 576)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2499, file: !1896, line: 523, baseType: !423, size: 64, offset: 640)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2499, file: !1896, line: 524, baseType: !621, size: 64, offset: 704)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2499, file: !1896, line: 526, baseType: !621, size: 64, offset: 768)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2499, file: !1896, line: 527, baseType: !423, size: 64, offset: 832)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2499, file: !1896, line: 529, baseType: !423, size: 64, offset: 896)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2499, file: !1896, line: 530, baseType: !423, size: 64, offset: 960)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2499, file: !1896, line: 531, baseType: !423, size: 64, offset: 1024)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2499, file: !1896, line: 532, baseType: !423, size: 64, offset: 1088)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2499, file: !1896, line: 533, baseType: !423, size: 64, offset: 1152)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2499, file: !1896, line: 535, baseType: !423, size: 64, offset: 1216)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2499, file: !1896, line: 536, baseType: !423, size: 64, offset: 1280)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2499, file: !1896, line: 537, baseType: !423, size: 64, offset: 1344)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2499, file: !1896, line: 538, baseType: !423, size: 64, offset: 1408)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2499, file: !1896, line: 539, baseType: !423, size: 64, offset: 1472)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2499, file: !1896, line: 540, baseType: !423, size: 64, offset: 1536)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2499, file: !1896, line: 541, baseType: !423, size: 64, offset: 1600)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2499, file: !1896, line: 542, baseType: !423, size: 64, offset: 1664)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2499, file: !1896, line: 543, baseType: !423, size: 64, offset: 1728)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2303, file: !1896, line: 833, baseType: !7, size: 32, offset: 7680)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2303, file: !1896, line: 836, baseType: !7, size: 32, offset: 7712)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2303, file: !1896, line: 837, baseType: !65, size: 32, offset: 7744)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2303, file: !1896, line: 838, baseType: !2533, size: 64, offset: 7808)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2535)
!2535 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2536, line: 19, baseType: !2537)
!2536 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2536, line: 19, size: 64, elements: !2538)
!2538 = !{!2539}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2537, file: !2536, line: 19, baseType: !2540, size: 64)
!2540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 64, elements: !2541)
!2541 = !{!2542}
!2542 = !DISubrange(count: 1)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2303, file: !1896, line: 839, baseType: !2544, size: 64, offset: 7872)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2303, file: !1896, line: 840, baseType: !2535, size: 64, offset: 7936)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2303, file: !1896, line: 841, baseType: !170, size: 64, offset: 8000)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2303, file: !1896, line: 843, baseType: !240, size: 16, offset: 8064)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2303, file: !1896, line: 845, baseType: !240, size: 16, offset: 8080)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2303, file: !1896, line: 848, baseType: !65, size: 32, offset: 8096)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2303, file: !1896, line: 849, baseType: !2551, size: 32, offset: 8128)
!2551 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1896, line: 718, size: 32, elements: !2552)
!2552 = !{!2553, !2560}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2551, file: !1896, line: 724, baseType: !2554, size: 32)
!2554 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2551, file: !1896, line: 719, size: 32, elements: !2555)
!2555 = !{!2556, !2557, !2558, !2559}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2554, file: !1896, line: 720, baseType: !228, size: 8)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2554, file: !1896, line: 721, baseType: !228, size: 8, offset: 8)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2554, file: !1896, line: 722, baseType: !228, size: 8, offset: 16)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2554, file: !1896, line: 723, baseType: !228, size: 8, offset: 24)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2551, file: !1896, line: 725, baseType: !419, size: 32)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2303, file: !1896, line: 850, baseType: !187, size: 128, offset: 8192)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2303, file: !1896, line: 851, baseType: !2563, size: 64, offset: 8320)
!2563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2564, size: 64)
!2564 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1896, line: 60, flags: DIFlagFwdDecl)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2303, file: !1896, line: 855, baseType: !320, size: 64, offset: 8384)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2303, file: !1896, line: 856, baseType: !228, size: 8, offset: 8448)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2303, file: !1896, line: 857, baseType: !228, size: 8, offset: 8456)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2303, file: !1896, line: 858, baseType: !65, size: 32, offset: 8480)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2303, file: !1896, line: 859, baseType: !187, size: 128, offset: 8512)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2303, file: !1896, line: 860, baseType: !65, size: 32, offset: 8640)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2303, file: !1896, line: 861, baseType: !187, size: 128, offset: 8704)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2303, file: !1896, line: 873, baseType: !2573, size: 256, offset: 8832)
!2573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1896, line: 376, size: 256, elements: !2574)
!2574 = !{!2575, !2576, !2577, !2578}
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2573, file: !1896, line: 381, baseType: !320, size: 64)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2573, file: !1896, line: 384, baseType: !425, size: 64, offset: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2573, file: !1896, line: 389, baseType: !425, size: 64, offset: 128)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2573, file: !1896, line: 392, baseType: !425, size: 64, offset: 192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2303, file: !1896, line: 875, baseType: !187, size: 128, offset: 9088)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2303, file: !1896, line: 877, baseType: !2581, size: 320, offset: 9216)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2582, line: 86, size: 320, elements: !2583)
!2582 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2583 = !{!2584, !2585, !2586}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2581, file: !2582, line: 87, baseType: !65, size: 32)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2581, file: !2582, line: 88, baseType: !187, size: 128, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2581, file: !2582, line: 89, baseType: !187, size: 128, offset: 192)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2303, file: !1896, line: 878, baseType: !723, size: 192, align: 64, offset: 9536)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2303, file: !1896, line: 881, baseType: !1485, size: 64, offset: 9728)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2303, file: !1896, line: 882, baseType: !1485, size: 64, offset: 9792)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2303, file: !1896, line: 884, baseType: !65, size: 32, offset: 9856)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2303, file: !1896, line: 885, baseType: !65, size: 32, offset: 9888)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2303, file: !1896, line: 886, baseType: !65, size: 32, offset: 9920)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2303, file: !1896, line: 888, baseType: !65, size: 32, offset: 9952)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2303, file: !1896, line: 890, baseType: !320, size: 64, offset: 9984)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2303, file: !1896, line: 893, baseType: !7, size: 32, offset: 10048)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2303, file: !1896, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2303, file: !1896, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2303, file: !1896, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2303, file: !1896, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2303, file: !1896, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2303, file: !1896, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2303, file: !1896, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2303, file: !1896, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2303, file: !1896, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2303, file: !1896, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2303, file: !1896, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2303, file: !1896, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2303, file: !1896, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2303, file: !1896, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2303, file: !1896, line: 969, baseType: !320, size: 64, offset: 10176)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2303, file: !1896, line: 971, baseType: !2612, size: 448, offset: 10240)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2613)
!2613 = !{!2614, !2615, !2620}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2612, file: !44, line: 26, baseType: !320, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2612, file: !44, line: 27, baseType: !2616, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!306, !2619}
!2619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2612, file: !44, line: 28, baseType: !2621, size: 320, offset: 128)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2612, file: !44, line: 28, size: 320, elements: !2622)
!2622 = !{!2623, !2633, !2658}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2621, file: !44, line: 37, baseType: !2624, size: 320)
!2624 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !44, line: 30, size: 320, elements: !2625)
!2625 = !{!2626, !2628, !2629, !2630, !2631, !2632}
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2624, file: !44, line: 31, baseType: !2627, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2624, file: !44, line: 32, baseType: !419, size: 32, offset: 64)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2624, file: !44, line: 33, baseType: !419, size: 32, offset: 96)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2624, file: !44, line: 34, baseType: !419, size: 32, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2624, file: !44, line: 35, baseType: !423, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2624, file: !44, line: 36, baseType: !2627, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2621, file: !44, line: 47, baseType: !2634, size: 192)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !44, line: 39, size: 192, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2657}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2634, file: !44, line: 40, baseType: !2460, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2634, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, scope: !2634, file: !44, line: 42, baseType: !2639, size: 64, offset: 64)
!2639 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2634, file: !44, line: 42, size: 64, elements: !2640)
!2640 = !{!2641, !2649}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2639, file: !44, line: 43, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2644, line: 7, size: 128, elements: !2645)
!2644 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2645 = !{!2646, !2648}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2643, file: !2644, line: 8, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !304, line: 93, baseType: !513)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2643, file: !2644, line: 9, baseType: !513, size: 64, offset: 64)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2639, file: !44, line: 44, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2652, line: 7, size: 64, elements: !2653)
!2652 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2653 = !{!2654, !2656}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2651, file: !2652, line: 8, baseType: !2655, size: 32)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2652, line: 5, baseType: !607)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2651, file: !2652, line: 9, baseType: !607, size: 32, offset: 32)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2634, file: !44, line: 46, baseType: !423, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2621, file: !44, line: 55, baseType: !2659, size: 256)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2621, file: !44, line: 49, size: 256, elements: !2660)
!2660 = !{!2661, !2664, !2665, !2666, !2667}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2659, file: !44, line: 50, baseType: !2662, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !44, line: 14, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2659, file: !44, line: 51, baseType: !65, size: 32, offset: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2659, file: !44, line: 52, baseType: !65, size: 32, offset: 96)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2659, file: !44, line: 53, baseType: !320, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2659, file: !44, line: 54, baseType: !320, size: 64, offset: 192)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2303, file: !1896, line: 973, baseType: !2669, size: 32, offset: 10688)
!2669 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !169, line: 27, baseType: !2670)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !304, line: 28, baseType: !65)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2303, file: !1896, line: 974, baseType: !2669, size: 32, offset: 10720)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2303, file: !1896, line: 978, baseType: !320, size: 64, offset: 10752)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2303, file: !1896, line: 987, baseType: !2302, size: 64, offset: 10816)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2303, file: !1896, line: 990, baseType: !2302, size: 64, offset: 10880)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2303, file: !1896, line: 995, baseType: !187, size: 128, offset: 10944)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2303, file: !1896, line: 996, baseType: !187, size: 128, offset: 11072)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2303, file: !1896, line: 997, baseType: !2302, size: 64, offset: 11200)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2303, file: !1896, line: 1005, baseType: !187, size: 128, offset: 11264)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2303, file: !1896, line: 1006, baseType: !187, size: 128, offset: 11392)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2303, file: !1896, line: 1009, baseType: !1136, size: 64, offset: 11520)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2303, file: !1896, line: 1010, baseType: !2682, size: 512, offset: 11584)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !857, size: 512, elements: !841)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2303, file: !1896, line: 1011, baseType: !187, size: 128, offset: 12096)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2303, file: !1896, line: 1012, baseType: !187, size: 128, offset: 12224)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2303, file: !1896, line: 1014, baseType: !559, size: 64, offset: 12352)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2303, file: !1896, line: 1017, baseType: !740, size: 64, offset: 12416)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2303, file: !1896, line: 1020, baseType: !740, size: 64, offset: 12480)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2303, file: !1896, line: 1023, baseType: !170, size: 64, offset: 12544)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2303, file: !1896, line: 1025, baseType: !423, size: 64, offset: 12608)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2303, file: !1896, line: 1026, baseType: !423, size: 64, offset: 12672)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2303, file: !1896, line: 1031, baseType: !423, size: 64, offset: 12736)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2303, file: !1896, line: 1032, baseType: !2693, size: 192, offset: 12800)
!2693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1896, line: 324, size: 192, elements: !2694)
!2694 = !{!2695, !2696, !2697}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2693, file: !1896, line: 326, baseType: !423, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2693, file: !1896, line: 327, baseType: !423, size: 64, offset: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2693, file: !1896, line: 328, baseType: !569, size: 32, offset: 128)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2303, file: !1896, line: 1041, baseType: !320, size: 64, offset: 12992)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2303, file: !1896, line: 1042, baseType: !320, size: 64, offset: 13056)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2303, file: !1896, line: 1045, baseType: !423, size: 64, offset: 13120)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2303, file: !1896, line: 1048, baseType: !423, size: 64, offset: 13184)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2303, file: !1896, line: 1051, baseType: !320, size: 64, offset: 13248)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2303, file: !1896, line: 1052, baseType: !320, size: 64, offset: 13312)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2303, file: !1896, line: 1055, baseType: !2705, size: 640, offset: 13376)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2706, line: 132, size: 640, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2707 = !{!2708, !2714, !2715}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2705, file: !2706, line: 133, baseType: !2709, size: 576)
!2709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2710, size: 576, elements: !271)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2706, line: 117, size: 192, elements: !2711)
!2711 = !{!2712, !2713}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2710, file: !2706, line: 118, baseType: !423, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2710, file: !2706, line: 119, baseType: !2469, size: 128, offset: 64)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2705, file: !2706, line: 134, baseType: !7, size: 32, offset: 576)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2705, file: !2706, line: 135, baseType: !7, size: 32, offset: 608)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2303, file: !1896, line: 1058, baseType: !2717, size: 448, offset: 14016)
!2717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2706, line: 144, size: 448, elements: !2718)
!2718 = !{!2719, !2720, !2721}
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2717, file: !2706, line: 145, baseType: !831, size: 128, align: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2717, file: !2706, line: 146, baseType: !611, size: 256, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2717, file: !2706, line: 147, baseType: !7, size: 32, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2303, file: !1896, line: 1064, baseType: !1173, size: 64, offset: 14464)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2303, file: !1896, line: 1067, baseType: !1173, size: 64, offset: 14528)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2303, file: !1896, line: 1070, baseType: !1173, size: 64, offset: 14592)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2303, file: !1896, line: 1074, baseType: !1200, size: 64, offset: 14656)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2303, file: !1896, line: 1084, baseType: !2727, size: 128, offset: 14720)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 128, elements: !2728)
!2728 = !{!2729}
!2729 = !DISubrange(count: 16)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2303, file: !1896, line: 1086, baseType: !2731, size: 64, offset: 14848)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1896, line: 55, flags: DIFlagFwdDecl)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2303, file: !1896, line: 1089, baseType: !2734, size: 64, offset: 14912)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2735, line: 12, size: 64, elements: !2736)
!2735 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2736 = !{!2737}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2734, file: !2735, line: 13, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2735, line: 8, flags: DIFlagFwdDecl)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2303, file: !1896, line: 1090, baseType: !2741, size: 128, offset: 14976)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2742, line: 13, size: 128, elements: !2743)
!2742 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2741, file: !2742, line: 14, baseType: !187, size: 128)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2303, file: !1896, line: 1097, baseType: !2746, size: 64, offset: 15104)
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1896, line: 50, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2303, file: !1896, line: 1100, baseType: !2749, size: 64, offset: 15168)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1896, line: 1100, flags: DIFlagFwdDecl)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2303, file: !1896, line: 1103, baseType: !2752, size: 64, offset: 15232)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1896, line: 53, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2303, file: !1896, line: 1107, baseType: !2755, size: 64, offset: 15296)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1896, line: 56, flags: DIFlagFwdDecl)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2303, file: !1896, line: 1110, baseType: !2758, size: 64, offset: 15360)
!2758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2759, size: 64)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2760, line: 93, size: 8768, elements: !2761)
!2760 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2761 = !{!2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2809, !2818, !2819, !2821, !2822, !2823, !3280, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3318, !3319, !3326, !3336, !3339, !3340, !3343, !3344, !3345, !3346, !3347, !3348}
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2759, file: !2760, line: 94, baseType: !1140, size: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2759, file: !2760, line: 95, baseType: !220, size: 32, offset: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2759, file: !2760, line: 96, baseType: !65, size: 32, offset: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2759, file: !2760, line: 97, baseType: !65, size: 32, offset: 96)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2759, file: !2760, line: 98, baseType: !187, size: 128, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2759, file: !2760, line: 100, baseType: !1151, size: 192, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2759, file: !2760, line: 103, baseType: !2302, size: 64, offset: 448)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2759, file: !2760, line: 106, baseType: !2770, size: 192, offset: 512)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1358, line: 32, size: 192, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2770, file: !1358, line: 33, baseType: !187, size: 128)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2770, file: !1358, line: 34, baseType: !2774, size: 64, offset: 128)
!2774 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2775, line: 25, baseType: !2776)
!2775 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2775, line: 23, size: 64, elements: !2777)
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2776, file: !2775, line: 24, baseType: !2540, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2759, file: !2760, line: 109, baseType: !981, size: 64, offset: 704)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2759, file: !2760, line: 112, baseType: !65, size: 32, offset: 768)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2759, file: !2760, line: 114, baseType: !65, size: 32, offset: 800)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2759, file: !2760, line: 115, baseType: !2302, size: 64, offset: 832)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2759, file: !2760, line: 118, baseType: !65, size: 32, offset: 896)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2759, file: !2760, line: 119, baseType: !7, size: 32, offset: 928)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2759, file: !2760, line: 121, baseType: !2786, size: 64, offset: 960)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2760, line: 80, size: 448, elements: !2788)
!2788 = !{!2789, !2790, !2796}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2787, file: !2760, line: 81, baseType: !220, size: 32)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2787, file: !2760, line: 82, baseType: !2791, size: 128, offset: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2760, line: 75, size: 128, elements: !2792)
!2792 = !{!2793, !2794}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2791, file: !2760, line: 76, baseType: !2302, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2791, file: !2760, line: 77, baseType: !2795, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2787, file: !2760, line: 83, baseType: !560, size: 256, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2759, file: !2760, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2759, file: !2760, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2759, file: !2760, line: 138, baseType: !7, size: 32, offset: 1056)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2759, file: !2760, line: 139, baseType: !187, size: 128, offset: 1088)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2759, file: !2760, line: 142, baseType: !2413, size: 512, offset: 1216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2759, file: !2760, line: 143, baseType: !2421, size: 64, offset: 1728)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2759, file: !2760, line: 150, baseType: !2804, size: 256, offset: 1792)
!2804 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2805, size: 256, elements: !730)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2760, line: 38, size: 128, elements: !2806)
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2805, file: !2760, line: 39, baseType: !423, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2805, file: !2760, line: 40, baseType: !423, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2759, file: !2760, line: 156, baseType: !2810, size: 192, offset: 2048)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2760, line: 66, size: 192, elements: !2811)
!2811 = !{!2812}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2810, file: !2760, line: 67, baseType: !2813, size: 192)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2760, line: 47, size: 192, elements: !2814)
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2813, file: !2760, line: 48, baseType: !617, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2813, file: !2760, line: 49, baseType: !617, size: 64, offset: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2813, file: !2760, line: 50, baseType: !617, size: 64, offset: 128)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2759, file: !2760, line: 160, baseType: !2705, size: 640, offset: 2240)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2759, file: !2760, line: 163, baseType: !2820, size: 256, offset: 2880)
!2820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1136, size: 256, elements: !841)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2759, file: !2760, line: 169, baseType: !1136, size: 64, offset: 3136)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2759, file: !2760, line: 172, baseType: !65, size: 32, offset: 3200)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2759, file: !2760, line: 174, baseType: !2824, size: 64, offset: 3264)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2826, line: 193, size: 5248, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/tty.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e268081fbcd8852324c3200836ed4371")
!2827 = !{!2828, !2833, !2834, !2836, !3169, !3170, !3171, !3218, !3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3235, !3236, !3237, !3238, !3239, !3247, !3256, !3257, !3258, !3259, !3260, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2825, file: !2826, line: 194, baseType: !2829, size: 32)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !2830, line: 19, size: 32, elements: !2831)
!2830 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!2831 = !{!2832}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2829, file: !2830, line: 20, baseType: !1140, size: 32)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2825, file: !2826, line: 195, baseType: !65, size: 32, offset: 32)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2825, file: !2826, line: 196, baseType: !2835, size: 64, offset: 64)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2825, file: !2826, line: 197, baseType: !2837, size: 64, offset: 128)
!2837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2838, size: 64)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_driver", file: !2839, line: 441, size: 1472, elements: !2840)
!2839 = !DIFile(filename: "./include/linux/tty_driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "52287f86f2b54a92396893dc3bae7f83")
!2840 = !{!2841, !2842, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2882, !2883, !2887, !2888, !2890, !3011, !3014, !3015, !3168}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2838, file: !2839, line: 442, baseType: !2829, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "cdevs", scope: !2838, file: !2839, line: 443, baseType: !2843, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2844, size: 64)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2845, size: 64)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !2846, line: 14, size: 832, elements: !2847)
!2846 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!2847 = !{!2848, !2849, !2850, !2851, !2852, !2853}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2845, file: !2846, line: 15, baseType: !179, size: 512)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2845, file: !2846, line: 16, baseType: !540, size: 64, offset: 512)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2845, file: !2846, line: 17, baseType: !1389, size: 64, offset: 576)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2845, file: !2846, line: 18, baseType: !187, size: 128, offset: 640)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2845, file: !2846, line: 19, baseType: !506, size: 32, offset: 768)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2845, file: !2846, line: 20, baseType: !7, size: 32, offset: 800)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2838, file: !2839, line: 444, baseType: !540, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "driver_name", scope: !2838, file: !2839, line: 445, baseType: !183, size: 64, offset: 192)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2838, file: !2839, line: 446, baseType: !183, size: 64, offset: 256)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "name_base", scope: !2838, file: !2839, line: 447, baseType: !65, size: 32, offset: 320)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !2838, file: !2839, line: 448, baseType: !65, size: 32, offset: 352)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "minor_start", scope: !2838, file: !2839, line: 449, baseType: !65, size: 32, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2838, file: !2839, line: 450, baseType: !7, size: 32, offset: 416)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2838, file: !2839, line: 451, baseType: !749, size: 16, offset: 448)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !2838, file: !2839, line: 452, baseType: !749, size: 16, offset: 464)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "init_termios", scope: !2838, file: !2839, line: 453, baseType: !2864, size: 352, offset: 480)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ktermios", file: !2865, line: 30, size: 352, elements: !2866)
!2865 = !DIFile(filename: "./include/uapi/asm-generic/termbits.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "384ee64abd990f699250de204a5d4f4a")
!2866 = !{!2867, !2869, !2870, !2871, !2872, !2875, !2879, !2881}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "c_iflag", scope: !2864, file: !2865, line: 31, baseType: !2868, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcflag_t", file: !2865, line: 7, baseType: !7)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "c_oflag", scope: !2864, file: !2865, line: 32, baseType: !2868, size: 32, offset: 32)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "c_cflag", scope: !2864, file: !2865, line: 33, baseType: !2868, size: 32, offset: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "c_lflag", scope: !2864, file: !2865, line: 34, baseType: !2868, size: 32, offset: 96)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "c_line", scope: !2864, file: !2865, line: 35, baseType: !2873, size: 8, offset: 128)
!2873 = !DIDerivedType(tag: DW_TAG_typedef, name: "cc_t", file: !2874, line: 5, baseType: !232)
!2874 = !DIFile(filename: "./include/uapi/asm-generic/termbits-common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d95a38d69bf7d3997b27d0ffed186b8d")
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "c_cc", scope: !2864, file: !2865, line: 36, baseType: !2876, size: 152, offset: 136)
!2876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2873, size: 152, elements: !2877)
!2877 = !{!2878}
!2878 = !DISubrange(count: 19)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "c_ispeed", scope: !2864, file: !2865, line: 37, baseType: !2880, size: 32, offset: 288)
!2880 = !DIDerivedType(tag: DW_TAG_typedef, name: "speed_t", file: !2874, line: 6, baseType: !7)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "c_ospeed", scope: !2864, file: !2865, line: 38, baseType: !2880, size: 32, offset: 320)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2838, file: !2839, line: 454, baseType: !320, size: 64, offset: 832)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "proc_entry", scope: !2838, file: !2839, line: 455, baseType: !2884, size: 64, offset: 896)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2886, line: 131, flags: DIFlagFwdDecl)
!2886 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "other", scope: !2838, file: !2839, line: 456, baseType: !2837, size: 64, offset: 960)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "ttys", scope: !2838, file: !2839, line: 461, baseType: !2889, size: 64, offset: 1024)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2824, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !2838, file: !2839, line: 462, baseType: !2891, size: 64, offset: 1088)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port", file: !2894, line: 101, size: 3008, elements: !2895)
!2894 = !DIFile(filename: "./include/linux/tty_port.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b629b087027425c3d8279d0757a10f1f")
!2895 = !{!2896, !2928, !2929, !2930, !2952, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2980, !3006, !3007, !3008, !3009, !3010}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2893, file: !2894, line: 102, baseType: !2897, size: 1088)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_bufhead", file: !2898, line: 35, size: 1088, elements: !2899)
!2898 = !DIFile(filename: "./include/linux/tty_buffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b5b8ed57ecb4f2e1ef71c039c2414911")
!2899 = !{!2900, !2917, !2918, !2919, !2920, !2921, !2925, !2926, !2927}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2897, file: !2898, line: 36, baseType: !2901, size: 64)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_buffer", file: !2898, line: 10, size: 256, elements: !2903)
!2903 = !{!2904, !2909, !2910, !2911, !2912, !2913, !2914, !2915}
!2904 = !DIDerivedType(tag: DW_TAG_member, scope: !2902, file: !2898, line: 11, baseType: !2905, size: 64)
!2905 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2902, file: !2898, line: 11, size: 64, elements: !2906)
!2906 = !{!2907, !2908}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2905, file: !2898, line: 12, baseType: !2901, size: 64)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2905, file: !2898, line: 13, baseType: !1097, size: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2902, file: !2898, line: 15, baseType: !7, size: 32, offset: 64)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2902, file: !2898, line: 16, baseType: !7, size: 32, offset: 96)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !2902, file: !2898, line: 17, baseType: !7, size: 32, offset: 128)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2902, file: !2898, line: 18, baseType: !7, size: 32, offset: 160)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2902, file: !2898, line: 19, baseType: !7, size: 32, offset: 192)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2902, file: !2898, line: 20, baseType: !691, size: 8, offset: 224)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2902, file: !2898, line: 22, baseType: !2916, align: 64, offset: 256)
!2916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, elements: !1166)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2897, file: !2898, line: 37, baseType: !871, size: 256, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2897, file: !2898, line: 38, baseType: !611, size: 256, offset: 320)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2897, file: !2898, line: 39, baseType: !220, size: 32, offset: 576)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sentinel", scope: !2897, file: !2898, line: 40, baseType: !2902, size: 256, offset: 640)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2897, file: !2898, line: 41, baseType: !2922, size: 64, offset: 896)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1098, line: 56, size: 64, elements: !2923)
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2922, file: !1098, line: 57, baseType: !1101, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "mem_used", scope: !2897, file: !2898, line: 42, baseType: !220, size: 32, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "mem_limit", scope: !2897, file: !2898, line: 43, baseType: !65, size: 32, offset: 992)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2897, file: !2898, line: 44, baseType: !2901, size: 64, offset: 1024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2893, file: !2894, line: 103, baseType: !2824, size: 64, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "itty", scope: !2893, file: !2894, line: 104, baseType: !2824, size: 64, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2893, file: !2894, line: 105, baseType: !2931, size: 64, offset: 1216)
!2931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2932, size: 64)
!2932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2933)
!2933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_operations", file: !2894, line: 33, size: 320, elements: !2934)
!2934 = !{!2935, !2939, !2943, !2947, !2951}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "carrier_raised", scope: !2933, file: !2894, line: 34, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!691, !2892}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "dtr_rts", scope: !2933, file: !2894, line: 35, baseType: !2940, size: 64, offset: 64)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DISubroutineType(types: !2942)
!2942 = !{null, !2892, !691}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2933, file: !2894, line: 36, baseType: !2944, size: 64, offset: 128)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DISubroutineType(types: !2946)
!2946 = !{null, !2892}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2933, file: !2894, line: 37, baseType: !2948, size: 64, offset: 192)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!65, !2892, !2824}
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "destruct", scope: !2933, file: !2894, line: 38, baseType: !2944, size: 64, offset: 256)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "client_ops", scope: !2893, file: !2894, line: 106, baseType: !2953, size: 64, offset: 1280)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2955)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_port_client_operations", file: !2894, line: 41, size: 192, elements: !2956)
!2956 = !{!2957, !2963, !2967}
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !2955, file: !2894, line: 42, baseType: !2958, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!317, !2892, !2961, !2961, !317}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !2955, file: !2894, line: 44, baseType: !2964, size: 64, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !2892, !2961, !2961, !317}
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !2955, file: !2894, line: 46, baseType: !2944, size: 64, offset: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2893, file: !2894, line: 107, baseType: !200, size: 32, offset: 1344)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "blocked_open", scope: !2893, file: !2894, line: 108, baseType: !65, size: 32, offset: 1376)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2893, file: !2894, line: 109, baseType: !65, size: 32, offset: 1408)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "open_wait", scope: !2893, file: !2894, line: 110, baseType: !1151, size: 192, offset: 1472)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "delta_msr_wait", scope: !2893, file: !2894, line: 111, baseType: !1151, size: 192, offset: 1664)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2893, file: !2894, line: 112, baseType: !320, size: 64, offset: 1856)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "iflags", scope: !2893, file: !2894, line: 113, baseType: !320, size: 64, offset: 1920)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "console", scope: !2893, file: !2894, line: 114, baseType: !232, size: 1, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2893, file: !2894, line: 115, baseType: !611, size: 256, offset: 2048)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "buf_mutex", scope: !2893, file: !2894, line: 116, baseType: !611, size: 256, offset: 2304)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_buf", scope: !2893, file: !2894, line: 117, baseType: !2979, size: 64, offset: 2560)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo", scope: !2893, file: !2894, line: 118, baseType: !2981, size: 192, offset: 2624)
!2981 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2893, file: !2894, line: 118, size: 192, elements: !2982)
!2982 = !{!2983, !3004}
!2983 = !DIDerivedType(tag: DW_TAG_member, scope: !2981, file: !2894, line: 118, baseType: !2984, size: 192)
!2984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2981, file: !2894, line: 118, size: 192, elements: !2985)
!2985 = !{!2986, !2995, !2996, !2997, !3002, !3003}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "kfifo", scope: !2984, file: !2894, line: 118, baseType: !2987, size: 192)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kfifo", file: !2988, line: 44, size: 192, elements: !2989)
!2988 = !DIFile(filename: "./include/linux/kfifo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "686bd9b9dd318af094019d7cea015274")
!2989 = !{!2990, !2991, !2992, !2993, !2994}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2987, file: !2988, line: 45, baseType: !7, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2987, file: !2988, line: 46, baseType: !7, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !2987, file: !2988, line: 47, baseType: !7, size: 32, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "esize", scope: !2987, file: !2988, line: 48, baseType: !7, size: 32, offset: 96)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2987, file: !2988, line: 49, baseType: !170, size: 64, offset: 128)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2984, file: !2894, line: 118, baseType: !2979, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "const_type", scope: !2984, file: !2894, line: 118, baseType: !427, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "rectype", scope: !2984, file: !2894, line: 118, baseType: !2998, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, elements: !3000)
!3000 = !{!3001}
!3001 = !DISubrange(count: 0)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2984, file: !2894, line: 118, baseType: !2979, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_const", scope: !2984, file: !2894, line: 118, baseType: !427, size: 64)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2981, file: !2894, line: 118, baseType: !3005, offset: 192)
!3005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, elements: !3000)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !2893, file: !2894, line: 119, baseType: !7, size: 32, offset: 2816)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !2893, file: !2894, line: 120, baseType: !7, size: 32, offset: 2848)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "drain_delay", scope: !2893, file: !2894, line: 121, baseType: !65, size: 32, offset: 2880)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2893, file: !2894, line: 122, baseType: !2829, size: 32, offset: 2912)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !2893, file: !2894, line: 123, baseType: !170, size: 64, offset: 2944)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2838, file: !2839, line: 463, baseType: !3012, size: 64, offset: 1152)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "driver_state", scope: !2838, file: !2839, line: 464, baseType: !170, size: 64, offset: 1216)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2838, file: !2839, line: 470, baseType: !3016, size: 64, offset: 1280)
!3016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3017, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3018)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_operations", file: !2839, line: 357, size: 2176, elements: !3019)
!3019 = !{!3020, !3024, !3028, !3032, !3036, !3040, !3044, !3045, !3049, !3053, !3054, !3058, !3059, !3063, !3067, !3073, !3074, !3075, !3076, !3077, !3078, !3082, !3083, !3084, !3085, !3089, !3093, !3097, !3101, !3113, !3136, !3162, !3163, !3167}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !3018, file: !2839, line: 358, baseType: !3021, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = !DISubroutineType(types: !3023)
!3023 = !{!2824, !2837, !1398, !65}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "install", scope: !3018, file: !2839, line: 360, baseType: !3025, size: 64, offset: 64)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!65, !2837, !2824}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3018, file: !2839, line: 361, baseType: !3029, size: 64, offset: 128)
!3029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3030, size: 64)
!3030 = !DISubroutineType(types: !3031)
!3031 = !{null, !2837, !2824}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3018, file: !2839, line: 362, baseType: !3033, size: 64, offset: 192)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!65, !2824, !1398}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3018, file: !2839, line: 363, baseType: !3037, size: 64, offset: 256)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DISubroutineType(types: !3039)
!3039 = !{null, !2824, !1398}
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3018, file: !2839, line: 364, baseType: !3041, size: 64, offset: 320)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3042, size: 64)
!3042 = !DISubroutineType(types: !3043)
!3043 = !{null, !2824}
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !3018, file: !2839, line: 365, baseType: !3041, size: 64, offset: 384)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3018, file: !2839, line: 366, baseType: !3046, size: 64, offset: 448)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!302, !2824, !2961, !317}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "put_char", scope: !3018, file: !2839, line: 367, baseType: !3050, size: 64, offset: 512)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!65, !2824, !228}
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "flush_chars", scope: !3018, file: !2839, line: 368, baseType: !3041, size: 64, offset: 576)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "write_room", scope: !3018, file: !2839, line: 369, baseType: !3055, size: 64, offset: 640)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!7, !2824}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "chars_in_buffer", scope: !3018, file: !2839, line: 370, baseType: !3055, size: 64, offset: 704)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3018, file: !2839, line: 371, baseType: !3060, size: 64, offset: 768)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!65, !2824, !7, !320}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3018, file: !2839, line: 373, baseType: !3064, size: 64, offset: 832)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!306, !2824, !7, !320}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3018, file: !2839, line: 375, baseType: !3068, size: 64, offset: 896)
!3068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3069, size: 64)
!3069 = !DISubroutineType(types: !3070)
!3070 = !{null, !2824, !3071}
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2864)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !3018, file: !2839, line: 376, baseType: !3041, size: 64, offset: 960)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !3018, file: !2839, line: 377, baseType: !3041, size: 64, offset: 1024)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !3018, file: !2839, line: 378, baseType: !3041, size: 64, offset: 1088)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3018, file: !2839, line: 379, baseType: !3041, size: 64, offset: 1152)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3018, file: !2839, line: 380, baseType: !3041, size: 64, offset: 1216)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !3018, file: !2839, line: 381, baseType: !3079, size: 64, offset: 1280)
!3079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3080, size: 64)
!3080 = !DISubroutineType(types: !3081)
!3081 = !{!65, !2824, !65}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3018, file: !2839, line: 382, baseType: !3041, size: 64, offset: 1344)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_ok", scope: !3018, file: !2839, line: 383, baseType: !3079, size: 64, offset: 1408)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !3018, file: !2839, line: 384, baseType: !3041, size: 64, offset: 1472)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "wait_until_sent", scope: !3018, file: !2839, line: 385, baseType: !3086, size: 64, offset: 1536)
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3087, size: 64)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !2824, !65}
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !3018, file: !2839, line: 386, baseType: !3090, size: 64, offset: 1600)
!3090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3091, size: 64)
!3091 = !DISubroutineType(types: !3092)
!3092 = !{null, !2824, !185}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmget", scope: !3018, file: !2839, line: 387, baseType: !3094, size: 64, offset: 1664)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!65, !2824}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "tiocmset", scope: !3018, file: !2839, line: 388, baseType: !3098, size: 64, offset: 1728)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DISubroutineType(types: !3100)
!3100 = !{!65, !2824, !7, !7}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "resize", scope: !3018, file: !2839, line: 390, baseType: !3102, size: 64, offset: 1792)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DISubroutineType(types: !3104)
!3104 = !{!65, !2824, !3105}
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "winsize", file: !3107, line: 15, size: 64, elements: !3108)
!3107 = !DIFile(filename: "./include/uapi/asm-generic/termios.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "83182bb4b2d72f890f10e6cd5fb4db00")
!3108 = !{!3109, !3110, !3111, !3112}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "ws_row", scope: !3106, file: !3107, line: 16, baseType: !240, size: 16)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ws_col", scope: !3106, file: !3107, line: 17, baseType: !240, size: 16, offset: 16)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ws_xpixel", scope: !3106, file: !3107, line: 18, baseType: !240, size: 16, offset: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ws_ypixel", scope: !3106, file: !3107, line: 19, baseType: !240, size: 16, offset: 48)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "get_icount", scope: !3018, file: !2839, line: 391, baseType: !3114, size: 64, offset: 1856)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DISubroutineType(types: !3116)
!3116 = !{!65, !2824, !3117}
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_icounter_struct", file: !3119, line: 102, size: 640, elements: !3120)
!3119 = !DIFile(filename: "./include/uapi/linux/serial.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a92ffabcada0669ea97b2d286627d08d")
!3120 = !{!3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !3118, file: !3119, line: 103, baseType: !65, size: 32)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !3118, file: !3119, line: 103, baseType: !65, size: 32, offset: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !3118, file: !3119, line: 103, baseType: !65, size: 32, offset: 64)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !3118, file: !3119, line: 103, baseType: !65, size: 32, offset: 96)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !3118, file: !3119, line: 104, baseType: !65, size: 32, offset: 128)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !3118, file: !3119, line: 104, baseType: !65, size: 32, offset: 160)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !3118, file: !3119, line: 105, baseType: !65, size: 32, offset: 192)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !3118, file: !3119, line: 105, baseType: !65, size: 32, offset: 224)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !3118, file: !3119, line: 105, baseType: !65, size: 32, offset: 256)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !3118, file: !3119, line: 105, baseType: !65, size: 32, offset: 288)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !3118, file: !3119, line: 106, baseType: !65, size: 32, offset: 320)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3118, file: !3119, line: 107, baseType: !3133, size: 288, offset: 352)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 288, elements: !3134)
!3134 = !{!3135}
!3135 = !DISubrange(count: 9)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "get_serial", scope: !3018, file: !2839, line: 393, baseType: !3137, size: 64, offset: 1920)
!3137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3138, size: 64)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{!65, !2824, !3140}
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_struct", file: !3119, line: 19, size: 576, elements: !3142)
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3155, !3156, !3157, !3158, !3159, !3160, !3161}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3141, file: !3119, line: 20, baseType: !65, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3141, file: !3119, line: 21, baseType: !65, size: 32, offset: 32)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !3141, file: !3119, line: 22, baseType: !7, size: 32, offset: 64)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !3141, file: !3119, line: 23, baseType: !65, size: 32, offset: 96)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3141, file: !3119, line: 24, baseType: !65, size: 32, offset: 128)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "xmit_fifo_size", scope: !3141, file: !3119, line: 25, baseType: !65, size: 32, offset: 160)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !3141, file: !3119, line: 26, baseType: !65, size: 32, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "baud_base", scope: !3141, file: !3119, line: 27, baseType: !65, size: 32, offset: 224)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "close_delay", scope: !3141, file: !3119, line: 28, baseType: !240, size: 16, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "io_type", scope: !3141, file: !3119, line: 29, baseType: !185, size: 8, offset: 272)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_char", scope: !3141, file: !3119, line: 30, baseType: !3154, size: 8, offset: 280)
!3154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 8, elements: !2541)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !3141, file: !3119, line: 31, baseType: !65, size: 32, offset: 288)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait", scope: !3141, file: !3119, line: 32, baseType: !240, size: 16, offset: 320)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "closing_wait2", scope: !3141, file: !3119, line: 33, baseType: !240, size: 16, offset: 336)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_base", scope: !3141, file: !3119, line: 34, baseType: !2979, size: 64, offset: 384)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "iomem_reg_shift", scope: !3141, file: !3119, line: 35, baseType: !240, size: 16, offset: 448)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "port_high", scope: !3141, file: !3119, line: 36, baseType: !7, size: 32, offset: 480)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "iomap_base", scope: !3141, file: !3119, line: 37, baseType: !320, size: 64, offset: 512)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "set_serial", scope: !3018, file: !2839, line: 394, baseType: !3137, size: 64, offset: 1984)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3018, file: !2839, line: 395, baseType: !3164, size: 64, offset: 2048)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{null, !2824, !1053}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "proc_show", scope: !3018, file: !2839, line: 401, baseType: !1084, size: 64, offset: 2112)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "tty_drivers", scope: !2838, file: !2839, line: 471, baseType: !187, size: 128, offset: 1344)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2825, file: !2826, line: 198, baseType: !2892, size: 64, offset: 192)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2825, file: !2826, line: 199, baseType: !3016, size: 64, offset: 256)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc", scope: !2825, file: !2826, line: 201, baseType: !3172, size: 64, offset: 320)
!3172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc", file: !3174, line: 269, size: 128, elements: !3175)
!3174 = !DIFile(filename: "./include/linux/tty_ldisc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1510e65bb17193581d5a2fc2c531d25e")
!3175 = !{!3176, !3217}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3173, file: !3174, line: 270, baseType: !3177, size: 64)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tty_ldisc_ops", file: !3174, line: 231, size: 1152, elements: !3179)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3190, !3194, !3195, !3196, !3197, !3201, !3202, !3206, !3207, !3211, !3215, !3216}
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3178, file: !3174, line: 232, baseType: !270, size: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3178, file: !3174, line: 233, baseType: !65, size: 32, offset: 64)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3178, file: !3174, line: 238, baseType: !3094, size: 64, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !3178, file: !3174, line: 239, baseType: !3041, size: 64, offset: 192)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !3178, file: !3174, line: 240, baseType: !3041, size: 64, offset: 256)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3178, file: !3174, line: 241, baseType: !3186, size: 64, offset: 320)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!302, !2824, !1398, !3189, !317, !1962, !320}
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3178, file: !3174, line: 243, baseType: !3191, size: 64, offset: 384)
!3191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3192, size: 64)
!3192 = !DISubroutineType(types: !3193)
!3193 = !{!302, !2824, !1398, !2961, !317}
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !3178, file: !3174, line: 245, baseType: !3060, size: 64, offset: 448)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3178, file: !3174, line: 247, baseType: !3060, size: 64, offset: 512)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !3178, file: !3174, line: 249, baseType: !3068, size: 64, offset: 576)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3178, file: !3174, line: 250, baseType: !3198, size: 64, offset: 640)
!3198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!1459, !2824, !1398, !1461}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "hangup", scope: !3178, file: !3174, line: 252, baseType: !3041, size: 64, offset: 704)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf", scope: !3178, file: !3174, line: 257, baseType: !3203, size: 64, offset: 768)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{null, !2824, !2961, !2961, !317}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "write_wakeup", scope: !3178, file: !3174, line: 259, baseType: !3041, size: 64, offset: 832)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "dcd_change", scope: !3178, file: !3174, line: 260, baseType: !3208, size: 64, offset: 896)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{null, !2824, !691}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "receive_buf2", scope: !3178, file: !3174, line: 261, baseType: !3212, size: 64, offset: 960)
!3212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3213 = !DISubroutineType(types: !3214)
!3214 = !{!317, !2824, !2961, !2961, !317}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead_buf", scope: !3178, file: !3174, line: 263, baseType: !3203, size: 64, offset: 1024)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3178, file: !3174, line: 266, baseType: !540, size: 64, offset: 1088)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3173, file: !3174, line: 271, baseType: !2824, size: 64, offset: 64)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "ldisc_sem", scope: !2825, file: !2826, line: 202, baseType: !3219, size: 384, offset: 384)
!3219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ld_semaphore", file: !3174, line: 17, size: 384, elements: !3220)
!3220 = !{!3221, !3222, !3223, !3224, !3225}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3219, file: !3174, line: 18, baseType: !615, size: 64)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !3219, file: !3174, line: 19, baseType: !569, size: 32, offset: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "wait_readers", scope: !3219, file: !3174, line: 20, baseType: !7, size: 32, offset: 96)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !3219, file: !3174, line: 21, baseType: !187, size: 128, offset: 128)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !3219, file: !3174, line: 22, baseType: !187, size: 128, offset: 256)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_lock", scope: !2825, file: !2826, line: 204, baseType: !611, size: 256, offset: 768)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mutex", scope: !2825, file: !2826, line: 205, baseType: !611, size: 256, offset: 1024)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_mutex", scope: !2825, file: !2826, line: 206, baseType: !611, size: 256, offset: 1280)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "termios_rwsem", scope: !2825, file: !2826, line: 207, baseType: !1214, size: 320, offset: 1536)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "winsize_mutex", scope: !2825, file: !2826, line: 208, baseType: !611, size: 256, offset: 1856)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "termios", scope: !2825, file: !2826, line: 209, baseType: !2864, size: 352, offset: 2112)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "termios_locked", scope: !2825, file: !2826, line: 209, baseType: !2864, size: 352, offset: 2464)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2825, file: !2826, line: 210, baseType: !3234, size: 512, offset: 2816)
!3234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 512, elements: !275)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2826, line: 211, baseType: !320, size: 64, offset: 3328)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2825, file: !2826, line: 212, baseType: !65, size: 32, offset: 3392)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "receive_room", scope: !2825, file: !2826, line: 213, baseType: !7, size: 32, offset: 3424)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "winsize", scope: !2825, file: !2826, line: 214, baseType: !3106, size: 64, offset: 3456)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "flow", scope: !2825, file: !2826, line: 221, baseType: !3240, size: 64, align: 64, offset: 3520)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !2826, line: 216, size: 64, align: 64, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3245}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3240, file: !2826, line: 217, baseType: !200, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !3240, file: !2826, line: 218, baseType: !691, size: 8, offset: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "tco_stopped", scope: !3240, file: !2826, line: 219, baseType: !691, size: 8, offset: 40)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3240, file: !2826, line: 220, baseType: !3246, offset: 64)
!3246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, elements: !3000)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl", scope: !2825, file: !2826, line: 230, baseType: !3248, size: 192, align: 64, offset: 3584)
!3248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2825, file: !2826, line: 223, size: 192, align: 64, elements: !3249)
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255}
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "pgrp", scope: !3248, file: !2826, line: 224, baseType: !1136, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !3248, file: !2826, line: 225, baseType: !1136, size: 64, offset: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3248, file: !2826, line: 226, baseType: !200, size: 32, offset: 128)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "pktstatus", scope: !3248, file: !2826, line: 227, baseType: !232, size: 8, offset: 160)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "packet", scope: !3248, file: !2826, line: 228, baseType: !691, size: 8, offset: 168)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !3248, file: !2826, line: 229, baseType: !3246, offset: 192)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !2825, file: !2826, line: 232, baseType: !691, size: 8, offset: 3776)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "closing", scope: !2825, file: !2826, line: 233, baseType: !691, size: 8, offset: 3784)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "flow_change", scope: !2825, file: !2826, line: 234, baseType: !65, size: 32, offset: 3808)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2825, file: !2826, line: 236, baseType: !2824, size: 64, offset: 3840)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2825, file: !2826, line: 237, baseType: !3261, size: 64, offset: 3904)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !28, line: 1083, size: 384, elements: !3263)
!3263 = !{!3264, !3265, !3266, !3267, !3268, !3269}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !3262, file: !28, line: 1084, baseType: !1115, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !3262, file: !28, line: 1085, baseType: !65, size: 32, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !3262, file: !28, line: 1086, baseType: !65, size: 32, offset: 96)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !3262, file: !28, line: 1087, baseType: !3261, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !3262, file: !28, line: 1088, baseType: !1398, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !3262, file: !28, line: 1089, baseType: !831, size: 128, align: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "write_wait", scope: !2825, file: !2826, line: 238, baseType: !1151, size: 192, offset: 3968)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "read_wait", scope: !2825, file: !2826, line: 239, baseType: !1151, size: 192, offset: 4160)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "hangup_work", scope: !2825, file: !2826, line: 240, baseType: !871, size: 256, offset: 4352)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "disc_data", scope: !2825, file: !2826, line: 241, baseType: !170, size: 64, offset: 4608)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2825, file: !2826, line: 242, baseType: !170, size: 64, offset: 4672)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "files_lock", scope: !2825, file: !2826, line: 243, baseType: !200, size: 32, offset: 4736)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "write_cnt", scope: !2825, file: !2826, line: 244, baseType: !65, size: 32, offset: 4768)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2825, file: !2826, line: 245, baseType: !2979, size: 64, offset: 4800)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "tty_files", scope: !2825, file: !2826, line: 247, baseType: !187, size: 128, offset: 4864)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "SAK_work", scope: !2825, file: !2826, line: 250, baseType: !871, size: 256, offset: 4992)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2759, file: !2760, line: 185, baseType: !3281, size: 64, offset: 3328)
!3281 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !392, line: 860, baseType: !3282)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 853, size: 64, elements: !3283)
!3283 = !{!3284, !3285}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3282, file: !392, line: 858, baseType: !391, size: 32)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3282, file: !392, line: 859, baseType: !200, size: 32, offset: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2759, file: !2760, line: 186, baseType: !423, size: 64, offset: 3392)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2759, file: !2760, line: 186, baseType: !423, size: 64, offset: 3456)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2759, file: !2760, line: 186, baseType: !423, size: 64, offset: 3520)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2759, file: !2760, line: 186, baseType: !423, size: 64, offset: 3584)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2759, file: !2760, line: 187, baseType: !423, size: 64, offset: 3648)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2759, file: !2760, line: 188, baseType: !423, size: 64, offset: 3712)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2759, file: !2760, line: 189, baseType: !2693, size: 192, offset: 3776)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2759, file: !2760, line: 190, baseType: !320, size: 64, offset: 3968)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2759, file: !2760, line: 190, baseType: !320, size: 64, offset: 4032)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2759, file: !2760, line: 190, baseType: !320, size: 64, offset: 4096)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2759, file: !2760, line: 190, baseType: !320, size: 64, offset: 4160)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2759, file: !2760, line: 191, baseType: !320, size: 64, offset: 4224)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2759, file: !2760, line: 191, baseType: !320, size: 64, offset: 4288)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2759, file: !2760, line: 191, baseType: !320, size: 64, offset: 4352)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2759, file: !2760, line: 191, baseType: !320, size: 64, offset: 4416)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2759, file: !2760, line: 192, baseType: !320, size: 64, offset: 4480)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2759, file: !2760, line: 192, baseType: !320, size: 64, offset: 4544)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2759, file: !2760, line: 192, baseType: !320, size: 64, offset: 4608)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2759, file: !2760, line: 192, baseType: !320, size: 64, offset: 4672)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2759, file: !2760, line: 193, baseType: !320, size: 64, offset: 4736)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2759, file: !2760, line: 193, baseType: !320, size: 64, offset: 4800)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2759, file: !2760, line: 194, baseType: !3308, size: 448, offset: 4864)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3309, line: 12, size: 448, elements: !3310)
!3309 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3310 = !{!3311, !3312, !3313, !3314, !3315, !3316, !3317}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3308, file: !3309, line: 15, baseType: !423, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3308, file: !3309, line: 17, baseType: !423, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3308, file: !3309, line: 19, baseType: !423, size: 64, offset: 128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3308, file: !3309, line: 21, baseType: !423, size: 64, offset: 192)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3308, file: !3309, line: 29, baseType: !423, size: 64, offset: 256)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3308, file: !3309, line: 35, baseType: !423, size: 64, offset: 320)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3308, file: !3309, line: 44, baseType: !423, size: 64, offset: 384)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2759, file: !2760, line: 202, baseType: !425, size: 64, offset: 5312)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2759, file: !2760, line: 213, baseType: !3320, size: 2048, offset: 5376)
!3320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3321, size: 2048, elements: !2728)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3322, line: 43, size: 128, elements: !3323)
!3322 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3323 = !{!3324, !3325}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3321, file: !3322, line: 44, baseType: !319, size: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3321, file: !3322, line: 45, baseType: !319, size: 64, offset: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2759, file: !2760, line: 216, baseType: !3327, size: 448, offset: 7424)
!3327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2760, line: 30, size: 448, elements: !3328)
!3328 = !{!3329, !3330, !3331, !3332, !3333, !3334, !3335}
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3327, file: !2760, line: 31, baseType: !65, size: 32)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3327, file: !2760, line: 32, baseType: !306, size: 64, offset: 64)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3327, file: !2760, line: 33, baseType: !320, size: 64, offset: 128)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3327, file: !2760, line: 34, baseType: !423, size: 64, offset: 192)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3327, file: !2760, line: 34, baseType: !423, size: 64, offset: 256)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3327, file: !2760, line: 35, baseType: !320, size: 64, offset: 320)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3327, file: !2760, line: 35, baseType: !320, size: 64, offset: 384)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2759, file: !2760, line: 219, baseType: !3337, size: 64, offset: 7872)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2760, line: 219, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2759, file: !2760, line: 222, baseType: !7, size: 32, offset: 7936)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2759, file: !2760, line: 223, baseType: !3341, size: 64, offset: 8000)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2760, line: 223, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2759, file: !2760, line: 230, baseType: !691, size: 8, offset: 8064)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2759, file: !2760, line: 231, baseType: !749, size: 16, offset: 8080)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2759, file: !2760, line: 232, baseType: !749, size: 16, offset: 8096)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2759, file: !2760, line: 234, baseType: !1485, size: 64, offset: 8128)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2759, file: !2760, line: 237, baseType: !611, size: 256, offset: 8192)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2759, file: !2760, line: 243, baseType: !1214, size: 320, offset: 8448)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2303, file: !1896, line: 1111, baseType: !3350, size: 64, offset: 15424)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2760, line: 20, size: 16640, elements: !3352)
!3352 = !{!3353, !3354, !3355, !3356}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3351, file: !2760, line: 21, baseType: !200, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3351, file: !2760, line: 22, baseType: !1140, size: 32, offset: 32)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3351, file: !2760, line: 23, baseType: !1151, size: 192, offset: 64)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3351, file: !2760, line: 24, baseType: !3357, size: 16384, offset: 256)
!3357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3358, size: 16384, elements: !275)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1358, line: 51, size: 256, elements: !3359)
!3359 = !{!3360}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3358, file: !1358, line: 52, baseType: !3361, size: 256)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1358, line: 37, size: 256, elements: !3362)
!3362 = !{!3363, !3370, !3371, !3375}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3361, file: !1358, line: 39, baseType: !3364, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3365, line: 83, baseType: !3366)
!3365 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3365, line: 82, baseType: !3368)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{null, !65}
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3361, file: !1358, line: 40, baseType: !320, size: 64, offset: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3361, file: !1358, line: 46, baseType: !3372, size: 64, offset: 128)
!3372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3365, line: 86, baseType: !3373)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3365, line: 85, baseType: !976)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3361, file: !1358, line: 48, baseType: !2774, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2303, file: !1896, line: 1112, baseType: !2774, size: 64, offset: 15488)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2303, file: !1896, line: 1113, baseType: !2774, size: 64, offset: 15552)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2303, file: !1896, line: 1115, baseType: !2774, size: 64, offset: 15616)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2303, file: !1896, line: 1116, baseType: !2770, size: 192, offset: 15680)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2303, file: !1896, line: 1117, baseType: !320, size: 64, offset: 15872)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2303, file: !1896, line: 1118, baseType: !317, size: 64, offset: 15936)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2303, file: !1896, line: 1119, baseType: !7, size: 32, offset: 16000)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2303, file: !1896, line: 1121, baseType: !830, size: 64, offset: 16064)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2303, file: !1896, line: 1125, baseType: !3385, size: 64, offset: 16128)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1896, line: 43, flags: DIFlagFwdDecl)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2303, file: !1896, line: 1127, baseType: !356, size: 32, offset: 16192)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2303, file: !1896, line: 1128, baseType: !7, size: 32, offset: 16224)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2303, file: !1896, line: 1130, baseType: !3390, size: 128, offset: 16256)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3391, line: 37, size: 128, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3392 = !{!3393, !3394, !3395}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3390, file: !3391, line: 38, baseType: !65, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3390, file: !3391, line: 39, baseType: !220, size: 32, offset: 32)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3390, file: !3391, line: 40, baseType: !3396, size: 64, offset: 64)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3391, line: 24, flags: DIFlagFwdDecl)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2303, file: !1896, line: 1131, baseType: !3399, size: 256, offset: 16384)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3400, line: 12, size: 256, elements: !3401)
!3400 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3401 = !{!3402, !3403, !3404, !3405}
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3399, file: !3400, line: 13, baseType: !270, size: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3399, file: !3400, line: 14, baseType: !320, size: 64, offset: 64)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3399, file: !3400, line: 15, baseType: !320, size: 64, offset: 128)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3399, file: !3400, line: 16, baseType: !691, size: 8, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2303, file: !1896, line: 1134, baseType: !423, size: 64, offset: 16640)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2303, file: !1896, line: 1135, baseType: !423, size: 64, offset: 16704)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2303, file: !1896, line: 1138, baseType: !200, size: 32, offset: 16768)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2303, file: !1896, line: 1141, baseType: !569, size: 32, offset: 16800)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2303, file: !1896, line: 1143, baseType: !3411, size: 64, offset: 16832)
!3411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1896, line: 735, size: 64, elements: !3412)
!3412 = !{!3413}
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3411, file: !1896, line: 736, baseType: !3414, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2303, file: !1896, line: 1147, baseType: !2472, size: 128, offset: 16896)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2303, file: !1896, line: 1149, baseType: !2302, size: 64, offset: 17024)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2303, file: !1896, line: 1151, baseType: !3418, size: 64, offset: 17088)
!3418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3419, size: 64)
!3419 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1896, line: 1151, flags: DIFlagFwdDecl)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2303, file: !1896, line: 1188, baseType: !170, size: 64, offset: 17152)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2303, file: !1896, line: 1191, baseType: !3422, size: 64, offset: 17216)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1896, line: 44, flags: DIFlagFwdDecl)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2303, file: !1896, line: 1194, baseType: !3425, size: 64, offset: 17280)
!3425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3426, size: 64)
!3426 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1896, line: 45, flags: DIFlagFwdDecl)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2303, file: !1896, line: 1197, baseType: !3428, size: 64, offset: 17344)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3429, size: 64)
!3429 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1896, line: 61, flags: DIFlagFwdDecl)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2303, file: !1896, line: 1199, baseType: !3431, size: 64, offset: 17408)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3433, line: 99, size: 128, elements: !3434)
!3433 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3434 = !{!3435, !3436, !3437}
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3432, file: !3433, line: 100, baseType: !615, size: 64)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3432, file: !3433, line: 101, baseType: !220, size: 32, offset: 64)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3432, file: !3433, line: 103, baseType: !240, size: 16, offset: 96)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2303, file: !1896, line: 1202, baseType: !3439, size: 64, offset: 17472)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1896, line: 48, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2303, file: !1896, line: 1205, baseType: !320, size: 64, offset: 17536)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2303, file: !1896, line: 1206, baseType: !3443, size: 64, offset: 17600)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1358, line: 14, baseType: !3445)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1358, line: 12, size: 384, elements: !3446)
!3446 = !{!3447}
!3447 = !DIDerivedType(tag: DW_TAG_member, scope: !3445, file: !1358, line: 13, baseType: !3448, size: 384)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3445, file: !1358, line: 13, size: 384, elements: !3449)
!3449 = !{!3450, !3451, !3452, !3453}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3448, file: !1358, line: 13, baseType: !65, size: 32)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3448, file: !1358, line: 13, baseType: !65, size: 32, offset: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3448, file: !1358, line: 13, baseType: !65, size: 32, offset: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3448, file: !1358, line: 13, baseType: !3454, size: 256, offset: 128)
!3454 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3455, line: 37, size: 256, elements: !3456)
!3455 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3456 = !{!3457, !3462, !3475, !3481, !3490, !3517, !3522}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3454, file: !3455, line: 42, baseType: !3458, size: 64)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3455, line: 39, size: 64, elements: !3459)
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3458, file: !3455, line: 40, baseType: !2670, size: 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3458, file: !3455, line: 41, baseType: !362, size: 32, offset: 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3454, file: !3455, line: 50, baseType: !3463, size: 192)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3455, line: 45, size: 192, elements: !3464)
!3464 = !{!3465, !3467, !3468, !3474}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3463, file: !3455, line: 46, baseType: !3466, size: 32)
!3466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !304, line: 95, baseType: !65)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3463, file: !3455, line: 47, baseType: !65, size: 32, offset: 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3463, file: !3455, line: 48, baseType: !3469, size: 64, offset: 64)
!3469 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3455, line: 11, baseType: !3470)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3455, line: 8, size: 64, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3470, file: !3455, line: 9, baseType: !65, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3470, file: !3455, line: 10, baseType: !170, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3463, file: !3455, line: 49, baseType: !65, size: 32, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3454, file: !3455, line: 57, baseType: !3476, size: 128)
!3476 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3455, line: 53, size: 128, elements: !3477)
!3477 = !{!3478, !3479, !3480}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3476, file: !3455, line: 54, baseType: !2670, size: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3476, file: !3455, line: 55, baseType: !362, size: 32, offset: 32)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3476, file: !3455, line: 56, baseType: !3469, size: 64, offset: 64)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3454, file: !3455, line: 66, baseType: !3482, size: 256)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3455, line: 60, size: 256, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3487, !3489}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3482, file: !3455, line: 61, baseType: !2670, size: 32)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3482, file: !3455, line: 62, baseType: !362, size: 32, offset: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3482, file: !3455, line: 63, baseType: !65, size: 32, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3482, file: !3455, line: 64, baseType: !3488, size: 64, offset: 128)
!3488 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !304, line: 94, baseType: !305)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3482, file: !3455, line: 65, baseType: !3488, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3454, file: !3455, line: 105, baseType: !3491, size: 256)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3455, line: 69, size: 256, elements: !3492)
!3492 = !{!3493, !3494}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3491, file: !3455, line: 70, baseType: !170, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3491, file: !3455, line: 79, baseType: !3495, size: 192, offset: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3491, file: !3455, line: 79, size: 192, elements: !3496)
!3496 = !{!3497, !3498, !3499, !3506, !3511}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3495, file: !3455, line: 81, baseType: !65, size: 32)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3495, file: !3455, line: 86, baseType: !749, size: 16)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3495, file: !3455, line: 92, baseType: !3500, size: 192)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !3455, line: 88, size: 192, elements: !3501)
!3501 = !{!3502, !3504, !3505}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3500, file: !3455, line: 89, baseType: !3503, size: 64)
!3503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 64, elements: !2456)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3500, file: !3455, line: 90, baseType: !170, size: 64, offset: 64)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3500, file: !3455, line: 91, baseType: !170, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3495, file: !3455, line: 97, baseType: !3507, size: 96)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !3455, line: 94, size: 96, elements: !3508)
!3508 = !{!3509, !3510}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3507, file: !3455, line: 95, baseType: !3503, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3507, file: !3455, line: 96, baseType: !420, size: 32, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3495, file: !3455, line: 103, baseType: !3512, size: 128)
!3512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !3455, line: 99, size: 128, elements: !3513)
!3513 = !{!3514, !3515, !3516}
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3512, file: !3455, line: 100, baseType: !320, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3512, file: !3455, line: 101, baseType: !420, size: 32, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3512, file: !3455, line: 102, baseType: !420, size: 32, offset: 96)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3454, file: !3455, line: 111, baseType: !3518, size: 128)
!3518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3455, line: 108, size: 128, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3518, file: !3455, line: 109, baseType: !306, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3518, file: !3455, line: 110, baseType: !65, size: 32, offset: 64)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3454, file: !3455, line: 118, baseType: !3523, size: 128)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3454, file: !3455, line: 114, size: 128, elements: !3524)
!3524 = !{!3525, !3526, !3527}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3523, file: !3455, line: 115, baseType: !170, size: 64)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3523, file: !3455, line: 116, baseType: !65, size: 32, offset: 64)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3523, file: !3455, line: 117, baseType: !7, size: 32, offset: 96)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2303, file: !1896, line: 1208, baseType: !3308, size: 448, offset: 17664)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2303, file: !1896, line: 1215, baseType: !423, size: 64, offset: 18112)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2303, file: !1896, line: 1217, baseType: !423, size: 64, offset: 18176)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2303, file: !1896, line: 1219, baseType: !423, size: 64, offset: 18240)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2303, file: !1896, line: 1223, baseType: !3533, size: 64, offset: 18304)
!3533 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3534, line: 99, baseType: !3535)
!3534 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3534, line: 99, size: 64, elements: !3536)
!3536 = !{!3537}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3535, file: !3534, line: 99, baseType: !2540, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2303, file: !1896, line: 1225, baseType: !391, size: 32, offset: 18368)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2303, file: !1896, line: 1226, baseType: !65, size: 32, offset: 18400)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2303, file: !1896, line: 1227, baseType: !65, size: 32, offset: 18432)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2303, file: !1896, line: 1231, baseType: !3542, size: 64, offset: 18496)
!3542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3543, size: 64)
!3543 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1896, line: 1231, flags: DIFlagFwdDecl)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2303, file: !1896, line: 1233, baseType: !187, size: 128, offset: 18560)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2303, file: !1896, line: 1240, baseType: !3546, size: 64, offset: 18688)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1896, line: 62, flags: DIFlagFwdDecl)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2303, file: !1896, line: 1242, baseType: !3549, size: 64, offset: 18752)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1896, line: 1242, flags: DIFlagFwdDecl)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2303, file: !1896, line: 1244, baseType: !187, size: 128, offset: 18816)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2303, file: !1896, line: 1245, baseType: !3553, size: 64, offset: 18944)
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1896, line: 51, flags: DIFlagFwdDecl)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2303, file: !1896, line: 1246, baseType: !611, size: 256, offset: 19008)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2303, file: !1896, line: 1247, baseType: !7, size: 32, offset: 19264)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2303, file: !1896, line: 1250, baseType: !3558, size: 64, offset: 19328)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1896, line: 57, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2303, file: !1896, line: 1251, baseType: !611, size: 256, offset: 19392)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2303, file: !1896, line: 1252, baseType: !187, size: 128, offset: 19648)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2303, file: !1896, line: 1259, baseType: !1894, size: 64, offset: 19776)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2303, file: !1896, line: 1260, baseType: !749, size: 16, offset: 19840)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2303, file: !1896, line: 1261, baseType: !749, size: 16, offset: 19856)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2303, file: !1896, line: 1314, baseType: !3566, size: 64, offset: 19904)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3568, line: 62, size: 256, align: 256, elements: !3569)
!3568 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3569 = !{!3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3567, file: !3568, line: 75, baseType: !420, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3567, file: !3568, line: 90, baseType: !420, size: 32, offset: 32)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3567, file: !3568, line: 112, baseType: !424, size: 64, offset: 64)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3567, file: !3568, line: 132, baseType: !420, size: 32, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3567, file: !3568, line: 140, baseType: !420, size: 32, offset: 160)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3567, file: !3568, line: 149, baseType: !420, size: 32, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3567, file: !3568, line: 154, baseType: !3577, offset: 224)
!3577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, elements: !1166)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2303, file: !1896, line: 1315, baseType: !419, size: 32, offset: 19968)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2303, file: !1896, line: 1316, baseType: !419, size: 32, offset: 20000)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2303, file: !1896, line: 1321, baseType: !320, size: 64, offset: 20032)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2303, file: !1896, line: 1325, baseType: !65, size: 32, offset: 20096)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2303, file: !1896, line: 1326, baseType: !65, size: 32, offset: 20128)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2303, file: !1896, line: 1327, baseType: !65, size: 32, offset: 20160)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2303, file: !1896, line: 1328, baseType: !65, size: 32, offset: 20192)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2303, file: !1896, line: 1329, baseType: !831, size: 128, align: 64, offset: 20224)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2303, file: !1896, line: 1332, baseType: !3587, size: 128, offset: 20352)
!3587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3588, line: 51, size: 128, elements: !3589)
!3588 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3589 = !{!3590, !3595, !3596}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3587, file: !3588, line: 60, baseType: !3591, size: 64)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3592, line: 7, size: 64, elements: !3593)
!3592 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3593 = !{!3594}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3591, file: !3592, line: 12, baseType: !2537, size: 64)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3587, file: !3588, line: 63, baseType: !691, size: 8, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3587, file: !3588, line: 70, baseType: !691, size: 8, offset: 72)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2303, file: !1896, line: 1335, baseType: !1947, size: 64, offset: 20480)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2303, file: !1896, line: 1337, baseType: !3599, size: 128, offset: 20544)
!3599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3588, line: 39, size: 128, elements: !3600)
!3600 = !{!3601, !3602, !3603}
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3599, file: !3588, line: 40, baseType: !1733, size: 64)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3599, file: !3588, line: 42, baseType: !420, size: 32, offset: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3599, file: !3588, line: 43, baseType: !420, size: 32, offset: 96)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2303, file: !1896, line: 1340, baseType: !3605, size: 64, offset: 20672)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1896, line: 69, flags: DIFlagFwdDecl)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2303, file: !1896, line: 1351, baseType: !65, size: 32, offset: 20736)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2303, file: !1896, line: 1352, baseType: !65, size: 32, offset: 20768)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2303, file: !1896, line: 1354, baseType: !320, size: 64, offset: 20800)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2303, file: !1896, line: 1364, baseType: !423, size: 64, offset: 20864)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2303, file: !1896, line: 1365, baseType: !423, size: 64, offset: 20928)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2303, file: !1896, line: 1412, baseType: !320, size: 64, offset: 20992)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2303, file: !1896, line: 1453, baseType: !3614, size: 64, offset: 21056)
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3615, size: 64)
!3615 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1896, line: 1453, flags: DIFlagFwdDecl)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2303, file: !1896, line: 1457, baseType: !3617, size: 64, offset: 21120)
!3617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3618, size: 64)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !129, line: 61, size: 576, elements: !3619)
!3619 = !{!3620, !3621, !3640, !3643, !3644, !3677, !3687}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3618, file: !129, line: 62, baseType: !128, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, scope: !3618, file: !129, line: 64, baseType: !3622, size: 192, offset: 64)
!3622 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3618, file: !129, line: 64, size: 192, elements: !3623)
!3623 = !{!3624, !3635}
!3624 = !DIDerivedType(tag: DW_TAG_member, scope: !3622, file: !129, line: 65, baseType: !3625, size: 192)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3622, file: !129, line: 65, size: 192, elements: !3626)
!3626 = !{!3627, !3634}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3625, file: !129, line: 66, baseType: !3628, size: 128)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3629, line: 50, size: 128, elements: !3630)
!3629 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3630 = !{!3631, !3632, !3633}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3628, file: !3629, line: 52, baseType: !320, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3628, file: !3629, line: 54, baseType: !7, size: 32, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3628, file: !3629, line: 55, baseType: !7, size: 32, offset: 96)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3625, file: !129, line: 67, baseType: !320, size: 64, offset: 128)
!3635 = !DIDerivedType(tag: DW_TAG_member, scope: !3622, file: !129, line: 70, baseType: !3636, size: 192)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3622, file: !129, line: 70, size: 192, elements: !3637)
!3637 = !{!3638, !3639}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3636, file: !129, line: 71, baseType: !831, size: 128, align: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3636, file: !129, line: 72, baseType: !320, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3618, file: !129, line: 76, baseType: !3641, size: 64, offset: 256)
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !129, line: 76, flags: DIFlagFwdDecl)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3618, file: !129, line: 77, baseType: !320, size: 64, offset: 320)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3618, file: !129, line: 79, baseType: !3645, size: 64, offset: 384)
!3645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3646, size: 64)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3629, line: 25, size: 256, elements: !3647)
!3647 = !{!3648, !3654, !3658}
!3648 = !DIDerivedType(tag: DW_TAG_member, scope: !3646, file: !3629, line: 26, baseType: !3649, size: 128)
!3649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3646, file: !3629, line: 26, size: 128, elements: !3650)
!3650 = !{!3651, !3653}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3649, file: !3629, line: 27, baseType: !3652, size: 128)
!3652 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !2728)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3649, file: !3629, line: 28, baseType: !3652, size: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3646, file: !3629, line: 31, baseType: !3655, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3657)
!3657 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3629, line: 23, flags: DIFlagFwdDecl)
!3658 = !DIDerivedType(tag: DW_TAG_member, scope: !3646, file: !3629, line: 33, baseType: !3659, size: 64, offset: 192)
!3659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3646, file: !3629, line: 33, size: 64, elements: !3660)
!3660 = !{!3661, !3667, !3672}
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3659, file: !3629, line: 38, baseType: !3662, size: 64)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3659, file: !3629, line: 34, size: 64, elements: !3663)
!3663 = !{!3664, !3665, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3662, file: !3629, line: 35, baseType: !607, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3662, file: !3629, line: 36, baseType: !228, size: 8, offset: 32)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3662, file: !3629, line: 37, baseType: !228, size: 8, offset: 40)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3659, file: !3629, line: 42, baseType: !3668, size: 16)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3659, file: !3629, line: 39, size: 16, elements: !3669)
!3669 = !{!3670, !3671}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3668, file: !3629, line: 40, baseType: !228, size: 8)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3668, file: !3629, line: 41, baseType: !228, size: 8, offset: 8)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3659, file: !3629, line: 46, baseType: !3673, size: 16)
!3673 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3659, file: !3629, line: 43, size: 16, elements: !3674)
!3674 = !{!3675, !3676}
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3673, file: !3629, line: 44, baseType: !228, size: 8)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3673, file: !3629, line: 45, baseType: !228, size: 8, offset: 8)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3618, file: !129, line: 81, baseType: !3678, size: 64, offset: 448)
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !129, line: 85, size: 384, elements: !3680)
!3680 = !{!3681, !3682, !3683, !3684, !3685, !3686}
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3679, file: !129, line: 86, baseType: !3641, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3679, file: !129, line: 87, baseType: !320, size: 64, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3679, file: !129, line: 88, baseType: !320, size: 64, offset: 128)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3679, file: !129, line: 89, baseType: !320, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3679, file: !129, line: 90, baseType: !691, size: 8, offset: 256)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3679, file: !129, line: 92, baseType: !3678, size: 64, offset: 320)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3618, file: !129, line: 82, baseType: !7, size: 32, offset: 512)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2303, file: !1896, line: 1463, baseType: !3689, offset: 21184)
!3689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1896, line: 739, elements: !900)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2303, file: !1896, line: 1470, baseType: !831, size: 128, align: 64, offset: 21184)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2303, file: !1896, line: 1471, baseType: !1140, size: 32, offset: 21312)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2303, file: !1896, line: 1472, baseType: !65, size: 32, offset: 21344)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2303, file: !1896, line: 1474, baseType: !2302, size: 64, offset: 21376)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2303, file: !1896, line: 1475, baseType: !853, size: 320, offset: 21440)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2303, file: !1896, line: 1478, baseType: !3696, size: 64, offset: 21760)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3698, line: 49, size: 512, elements: !3699)
!3698 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3699 = !{!3700, !3701, !3702, !3703, !3704, !3706, !3707, !3708, !3710}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3697, file: !3698, line: 50, baseType: !3696, size: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3697, file: !3698, line: 51, baseType: !170, size: 64, offset: 64)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3697, file: !3698, line: 52, baseType: !320, size: 64, offset: 128)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3697, file: !3698, line: 53, baseType: !320, size: 64, offset: 192)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3697, file: !3698, line: 54, baseType: !3705, size: 64, offset: 256)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3697, file: !3698, line: 56, baseType: !7, size: 32, offset: 320)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3697, file: !3698, line: 58, baseType: !7, size: 32, offset: 352)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3697, file: !3698, line: 59, baseType: !3709, size: 64, offset: 384)
!3709 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !169, line: 159, baseType: !423)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3697, file: !3698, line: 60, baseType: !1600, size: 64, offset: 448)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2303, file: !1896, line: 1482, baseType: !1140, size: 32, offset: 21824)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2303, file: !1896, line: 1489, baseType: !170, size: 64, offset: 21888)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2303, file: !1896, line: 1504, baseType: !170, size: 64, offset: 21952)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2303, file: !1896, line: 1505, baseType: !424, size: 64, offset: 22016)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2303, file: !1896, line: 1506, baseType: !423, size: 64, offset: 22080)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2303, file: !1896, line: 1507, baseType: !424, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2303, file: !1896, line: 1508, baseType: !424, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2303, file: !1896, line: 1509, baseType: !424, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2303, file: !1896, line: 1510, baseType: !831, size: 128, align: 64, offset: 22208)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2303, file: !1896, line: 1511, baseType: !65, size: 32, offset: 22336)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2303, file: !1896, line: 1515, baseType: !2922, size: 64, offset: 22400)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2303, file: !1896, line: 1518, baseType: !2922, size: 64, offset: 22464)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2303, file: !1896, line: 1528, baseType: !831, size: 128, align: 64, offset: 22528)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2303, file: !1896, line: 1552, baseType: !3725, size: 35328, offset: 23040)
!3725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3726, line: 430, size: 35328, elements: !3727)
!3726 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3727 = !{!3728, !3746, !3747, !3748, !3749, !3750, !3751, !3752, !3753, !3757, !3758, !3759, !3760, !3761, !3762, !3765, !3766, !3767, !3768}
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3725, file: !3726, line: 432, baseType: !3729, size: 192)
!3729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3730, size: 192, elements: !271)
!3730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3731, line: 16, size: 64, elements: !3732)
!3731 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3732 = !{!3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3730, file: !3731, line: 17, baseType: !238, size: 16)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3730, file: !3731, line: 18, baseType: !238, size: 16, offset: 16)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3730, file: !3731, line: 19, baseType: !238, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3730, file: !3731, line: 19, baseType: !238, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3730, file: !3731, line: 19, baseType: !238, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3730, file: !3731, line: 19, baseType: !238, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3730, file: !3731, line: 19, baseType: !238, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3730, file: !3731, line: 20, baseType: !238, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3730, file: !3731, line: 20, baseType: !238, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3730, file: !3731, line: 20, baseType: !238, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3730, file: !3731, line: 20, baseType: !238, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3730, file: !3731, line: 20, baseType: !238, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3730, file: !3731, line: 20, baseType: !238, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3725, file: !3726, line: 436, baseType: !320, size: 64, offset: 192)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3725, file: !3726, line: 440, baseType: !240, size: 16, offset: 256)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3725, file: !3726, line: 441, baseType: !240, size: 16, offset: 272)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3725, file: !3726, line: 442, baseType: !240, size: 16, offset: 288)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3725, file: !3726, line: 443, baseType: !240, size: 16, offset: 304)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3725, file: !3726, line: 447, baseType: !320, size: 64, offset: 320)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3725, file: !3726, line: 448, baseType: !320, size: 64, offset: 384)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3725, file: !3726, line: 459, baseType: !3754, size: 256, offset: 448)
!3754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3755, size: 256, elements: !841)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3726, line: 428, flags: DIFlagFwdDecl)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3725, file: !3726, line: 461, baseType: !320, size: 64, offset: 704)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3725, file: !3726, line: 463, baseType: !320, size: 64, offset: 768)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3725, file: !3726, line: 465, baseType: !320, size: 64, offset: 832)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3725, file: !3726, line: 466, baseType: !320, size: 64, offset: 896)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3725, file: !3726, line: 467, baseType: !320, size: 64, offset: 960)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3725, file: !3726, line: 473, baseType: !3763, size: 64, offset: 1024)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3726, line: 10, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3725, file: !3726, line: 480, baseType: !320, size: 64, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3725, file: !3726, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3725, file: !3726, line: 491, baseType: !419, size: 32, offset: 1184)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3725, file: !3726, line: 501, baseType: !3769, size: 33792, offset: 1536)
!3769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3770, line: 448, size: 33792, elements: !3771)
!3770 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3771 = !{!3772, !3773, !3774, !3935, !3936, !3942, !3943}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3769, file: !3770, line: 461, baseType: !7, size: 32)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3769, file: !3770, line: 468, baseType: !320, size: 64, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3769, file: !3770, line: 476, baseType: !3775, size: 64, offset: 128)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3770, line: 356, size: 33280, align: 512, elements: !3777)
!3777 = !{!3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3776, file: !3770, line: 358, baseType: !7, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3776, file: !3770, line: 361, baseType: !7, size: 32, offset: 32)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3776, file: !3770, line: 364, baseType: !423, size: 64, offset: 64)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3776, file: !3770, line: 367, baseType: !423, size: 64, offset: 128)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3776, file: !3770, line: 370, baseType: !423, size: 64, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3776, file: !3770, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3776, file: !3770, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3776, file: !3770, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3776, file: !3770, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3776, file: !3770, line: 397, baseType: !3788, size: 32768, offset: 512)
!3788 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3770, line: 348, size: 32768, elements: !3789)
!3789 = !{!3790, !3805, !3842, !3919, !3931}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3788, file: !3770, line: 349, baseType: !3791, size: 896)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3770, line: 12, size: 896, elements: !3792)
!3792 = !{!3793, !3794, !3795, !3796, !3797, !3798, !3799, !3800, !3804}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3791, file: !3770, line: 13, baseType: !419, size: 32)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3791, file: !3770, line: 14, baseType: !419, size: 32, offset: 32)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3791, file: !3770, line: 15, baseType: !419, size: 32, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3791, file: !3770, line: 16, baseType: !419, size: 32, offset: 96)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3791, file: !3770, line: 17, baseType: !419, size: 32, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3791, file: !3770, line: 18, baseType: !419, size: 32, offset: 160)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3791, file: !3770, line: 19, baseType: !419, size: 32, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3791, file: !3770, line: 22, baseType: !3801, size: 640, offset: 224)
!3801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 640, elements: !3802)
!3802 = !{!3803}
!3803 = !DISubrange(count: 20)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3791, file: !3770, line: 25, baseType: !419, size: 32, offset: 864)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3788, file: !3770, line: 350, baseType: !3806, size: 4096, align: 128)
!3806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3770, line: 34, size: 4096, align: 128, elements: !3807)
!3807 = !{!3808, !3809, !3810, !3811, !3812, !3827, !3828, !3829, !3831, !3833, !3837}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3806, file: !3770, line: 35, baseType: !238, size: 16)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3806, file: !3770, line: 36, baseType: !238, size: 16, offset: 16)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3806, file: !3770, line: 37, baseType: !238, size: 16, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3806, file: !3770, line: 38, baseType: !238, size: 16, offset: 48)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3806, file: !3770, line: 39, baseType: !3813, size: 128, offset: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3806, file: !3770, line: 39, size: 128, elements: !3814)
!3814 = !{!3815, !3820}
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3813, file: !3770, line: 40, baseType: !3816, size: 128)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3813, file: !3770, line: 40, size: 128, elements: !3817)
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3816, file: !3770, line: 41, baseType: !423, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3816, file: !3770, line: 42, baseType: !423, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, scope: !3813, file: !3770, line: 44, baseType: !3821, size: 128)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3813, file: !3770, line: 44, size: 128, elements: !3822)
!3822 = !{!3823, !3824, !3825, !3826}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3821, file: !3770, line: 45, baseType: !419, size: 32)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3821, file: !3770, line: 46, baseType: !419, size: 32, offset: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3821, file: !3770, line: 47, baseType: !419, size: 32, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3821, file: !3770, line: 48, baseType: !419, size: 32, offset: 96)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3806, file: !3770, line: 51, baseType: !419, size: 32, offset: 192)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3806, file: !3770, line: 52, baseType: !419, size: 32, offset: 224)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3806, file: !3770, line: 55, baseType: !3830, size: 1024, offset: 256)
!3830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 1024, elements: !432)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3806, file: !3770, line: 58, baseType: !3832, size: 2048, offset: 1280)
!3832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 2048, elements: !275)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3806, file: !3770, line: 60, baseType: !3834, size: 384, offset: 3328)
!3834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 384, elements: !3835)
!3835 = !{!3836}
!3836 = !DISubrange(count: 12)
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3806, file: !3770, line: 62, baseType: !3838, size: 384, offset: 3712)
!3838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3806, file: !3770, line: 62, size: 384, elements: !3839)
!3839 = !{!3840, !3841}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3838, file: !3770, line: 63, baseType: !3834, size: 384)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3838, file: !3770, line: 64, baseType: !3834, size: 384)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3788, file: !3770, line: 351, baseType: !3843, size: 1088)
!3843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3770, line: 79, size: 1088, elements: !3844)
!3844 = !{!3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3918}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3843, file: !3770, line: 80, baseType: !419, size: 32)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3843, file: !3770, line: 81, baseType: !419, size: 32, offset: 32)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3843, file: !3770, line: 82, baseType: !419, size: 32, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3843, file: !3770, line: 83, baseType: !419, size: 32, offset: 96)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3843, file: !3770, line: 84, baseType: !419, size: 32, offset: 128)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3843, file: !3770, line: 85, baseType: !419, size: 32, offset: 160)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3843, file: !3770, line: 86, baseType: !419, size: 32, offset: 192)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3843, file: !3770, line: 88, baseType: !3801, size: 640, offset: 224)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3843, file: !3770, line: 89, baseType: !228, size: 8, offset: 864)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3843, file: !3770, line: 90, baseType: !228, size: 8, offset: 872)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3843, file: !3770, line: 91, baseType: !228, size: 8, offset: 880)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3843, file: !3770, line: 92, baseType: !228, size: 8, offset: 888)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3843, file: !3770, line: 93, baseType: !228, size: 8, offset: 896)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3843, file: !3770, line: 94, baseType: !228, size: 8, offset: 904)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3843, file: !3770, line: 95, baseType: !3860, size: 64, offset: 960)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3862, line: 11, size: 128, elements: !3863)
!3862 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3863 = !{!3864, !3865}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3861, file: !3862, line: 12, baseType: !306, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3861, file: !3862, line: 13, baseType: !3866, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3868, line: 103, size: 1344, elements: !3869)
!3868 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3869 = !{!3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3898, !3899, !3900}
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3867, file: !3868, line: 109, baseType: !320, size: 64)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3867, file: !3868, line: 110, baseType: !320, size: 64, offset: 64)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3867, file: !3868, line: 111, baseType: !320, size: 64, offset: 128)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3867, file: !3868, line: 112, baseType: !320, size: 64, offset: 192)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3867, file: !3868, line: 113, baseType: !320, size: 64, offset: 256)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3867, file: !3868, line: 114, baseType: !320, size: 64, offset: 320)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3867, file: !3868, line: 117, baseType: !320, size: 64, offset: 384)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3867, file: !3868, line: 118, baseType: !320, size: 64, offset: 448)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3867, file: !3868, line: 119, baseType: !320, size: 64, offset: 512)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3867, file: !3868, line: 120, baseType: !320, size: 64, offset: 576)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3867, file: !3868, line: 121, baseType: !320, size: 64, offset: 640)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3867, file: !3868, line: 122, baseType: !320, size: 64, offset: 704)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3867, file: !3868, line: 123, baseType: !320, size: 64, offset: 768)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3867, file: !3868, line: 124, baseType: !320, size: 64, offset: 832)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3867, file: !3868, line: 125, baseType: !320, size: 64, offset: 896)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3867, file: !3868, line: 139, baseType: !320, size: 64, offset: 960)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3867, file: !3868, line: 142, baseType: !320, size: 64, offset: 1024)
!3887 = !DIDerivedType(tag: DW_TAG_member, scope: !3867, file: !3868, line: 144, baseType: !3888, size: 64, offset: 1088)
!3888 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3867, file: !3868, line: 144, size: 64, elements: !3889)
!3889 = !{!3890, !3891, !3892}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3888, file: !3868, line: 146, baseType: !238, size: 16)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3888, file: !3868, line: 148, baseType: !423, size: 64)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3888, file: !3868, line: 150, baseType: !3893, size: 64)
!3893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3868, line: 59, size: 64, elements: !3894)
!3894 = !{!3895, !3896, !3897}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3893, file: !3868, line: 61, baseType: !423, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3893, file: !3868, line: 63, baseType: !423, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3893, file: !3868, line: 65, baseType: !423, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3867, file: !3868, line: 153, baseType: !320, size: 64, offset: 1152)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3867, file: !3868, line: 154, baseType: !320, size: 64, offset: 1216)
!3900 = !DIDerivedType(tag: DW_TAG_member, scope: !3867, file: !3868, line: 156, baseType: !3901, size: 64, offset: 1280)
!3901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3867, file: !3868, line: 156, size: 64, elements: !3902)
!3902 = !{!3903, !3904, !3905}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3901, file: !3868, line: 158, baseType: !238, size: 16)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3901, file: !3868, line: 160, baseType: !423, size: 64)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3901, file: !3868, line: 162, baseType: !3906, size: 64)
!3906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3868, line: 69, size: 64, elements: !3907)
!3907 = !{!3908, !3909, !3910, !3911, !3912, !3913, !3914, !3915, !3916, !3917}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3906, file: !3868, line: 71, baseType: !423, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3906, file: !3868, line: 73, baseType: !423, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3906, file: !3868, line: 75, baseType: !423, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3906, file: !3868, line: 77, baseType: !423, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3906, file: !3868, line: 80, baseType: !423, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3906, file: !3868, line: 83, baseType: !423, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3906, file: !3868, line: 86, baseType: !423, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3906, file: !3868, line: 88, baseType: !423, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3906, file: !3868, line: 93, baseType: !423, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3906, file: !3868, line: 100, baseType: !423, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3843, file: !3770, line: 96, baseType: !419, size: 32, offset: 1024)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3788, file: !3770, line: 352, baseType: !3920, size: 4608, align: 512)
!3920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3770, line: 333, size: 4608, align: 512, elements: !3921)
!3921 = !{!3922, !3923, !3930}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3920, file: !3770, line: 334, baseType: !3806, size: 4096, align: 128)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3920, file: !3770, line: 335, baseType: !3924, size: 512, offset: 4096)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3770, line: 312, size: 512, elements: !3925)
!3925 = !{!3926, !3927, !3928}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3924, file: !3770, line: 313, baseType: !423, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3924, file: !3770, line: 314, baseType: !423, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3924, file: !3770, line: 315, baseType: !3929, size: 384, offset: 128)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 384, elements: !1259)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3920, file: !3770, line: 336, baseType: !2916, offset: 4608)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3788, file: !3770, line: 353, baseType: !3932, size: 32768)
!3932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 32768, elements: !3933)
!3933 = !{!3934}
!3934 = !DISubrange(count: 4096)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3769, file: !3770, line: 484, baseType: !3775, size: 64, offset: 192)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3769, file: !3770, line: 491, baseType: !3937, size: 128, offset: 256)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3770, line: 404, size: 128, elements: !3938)
!3938 = !{!3939, !3940, !3941}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3937, file: !3770, line: 424, baseType: !423, size: 64)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3937, file: !3770, line: 432, baseType: !7, size: 32, offset: 64)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3937, file: !3770, line: 440, baseType: !7, size: 32, offset: 96)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3769, file: !3770, line: 498, baseType: !3937, size: 128, offset: 384)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3769, file: !3770, line: 508, baseType: !3776, size: 33280, align: 512, offset: 512)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2285, file: !2286, line: 16, baseType: !1151, size: 192, offset: 512)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2285, file: !2286, line: 17, baseType: !220, size: 32, offset: 704)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !502, file: !28, line: 1240, baseType: !170, size: 64, offset: 6912)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !502, file: !28, line: 1243, baseType: !419, size: 32, offset: 6976)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !502, file: !28, line: 1245, baseType: !1230, size: 64, offset: 7040)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !502, file: !28, line: 1246, baseType: !1230, size: 64, offset: 7104)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !502, file: !28, line: 1248, baseType: !420, size: 32, offset: 7168)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !502, file: !28, line: 1249, baseType: !3952, size: 64, offset: 7232)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !502, file: !28, line: 1252, baseType: !3955, size: 256, offset: 7296)
!3955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !432)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !502, file: !28, line: 1253, baseType: !3957, size: 128, offset: 7552)
!3957 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3958, line: 21, baseType: !3959)
!3958 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3959 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3958, line: 19, size: 128, elements: !3960)
!3960 = !{!3961}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3959, file: !3958, line: 20, baseType: !3962, size: 128)
!3962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 128, elements: !2728)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !502, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !502, file: !28, line: 1261, baseType: !611, size: 256, offset: 7744)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !502, file: !28, line: 1267, baseType: !183, size: 64, offset: 8000)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !502, file: !28, line: 1269, baseType: !448, size: 64, offset: 8064)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !502, file: !28, line: 1271, baseType: !3968, size: 448, offset: 8128)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2065, line: 63, size: 448, elements: !3969)
!3969 = !{!3970, !3975, !3976, !3977, !3978, !3979, !3980}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3968, file: !2065, line: 64, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!320, !3974, !2063}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3968, file: !2065, line: 66, baseType: !3971, size: 64, offset: 64)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3968, file: !2065, line: 69, baseType: !306, size: 64, offset: 128)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3968, file: !2065, line: 70, baseType: !65, size: 32, offset: 192)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3968, file: !2065, line: 71, baseType: !7, size: 32, offset: 224)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3968, file: !2065, line: 74, baseType: !187, size: 128, offset: 256)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3968, file: !2065, line: 85, baseType: !3981, size: 64, offset: 384)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !502, file: !28, line: 1274, baseType: !615, size: 64, offset: 8576)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !502, file: !28, line: 1280, baseType: !615, size: 64, offset: 8640)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !502, file: !28, line: 1283, baseType: !65, size: 32, offset: 8704)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !502, file: !28, line: 1286, baseType: !1997, size: 32, offset: 8736)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !502, file: !28, line: 1289, baseType: !933, size: 64, offset: 8768)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !502, file: !28, line: 1290, baseType: !981, size: 64, offset: 8832)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !502, file: !28, line: 1297, baseType: !1353, size: 64, offset: 8896)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !502, file: !28, line: 1304, baseType: !3990, size: 64, offset: 8960)
!3990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3991, line: 49, size: 64, elements: !3992)
!3991 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3992 = !{!3993}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3990, file: !3991, line: 50, baseType: !3994, size: 64)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3991, line: 41, size: 512, align: 512, elements: !3996)
!3996 = !{!3997, !3998, !4003}
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3995, file: !3991, line: 43, baseType: !200, size: 32)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3995, file: !3991, line: 45, baseType: !3999, size: 192, offset: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3991, line: 29, size: 192, elements: !4000)
!4000 = !{!4001, !4002}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3999, file: !3991, line: 30, baseType: !187, size: 128)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3999, file: !3991, line: 32, baseType: !306, size: 64, offset: 128)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3995, file: !3991, line: 46, baseType: !306, size: 64, offset: 256)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !502, file: !28, line: 1305, baseType: !3990, size: 64, offset: 9024)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !502, file: !28, line: 1306, baseType: !831, size: 128, align: 64, offset: 9088)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !502, file: !28, line: 1307, baseType: !871, size: 256, offset: 9216)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !502, file: !28, line: 1309, baseType: !611, size: 256, offset: 9472)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !502, file: !28, line: 1314, baseType: !65, size: 32, offset: 9728)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !502, file: !28, line: 1317, baseType: !200, size: 32, align: 512, offset: 10240)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !502, file: !28, line: 1318, baseType: !187, size: 128, offset: 10304)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !502, file: !28, line: 1320, baseType: !200, size: 32, offset: 10432)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !502, file: !28, line: 1321, baseType: !187, size: 128, offset: 10496)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !496, file: !497, line: 73, baseType: !65, size: 32, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !496, file: !497, line: 74, baseType: !4015, size: 64, offset: 192)
!4015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4016, size: 64)
!4016 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1190, line: 42, flags: DIFlagFwdDecl)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !450, file: !387, line: 141, baseType: !4019, size: 64, offset: 704)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!65, !2125, !691}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !450, file: !387, line: 142, baseType: !4023, size: 64, offset: 768)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!385, !385, !4026}
!4026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4027, size: 64)
!4027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !351)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !386, file: !387, line: 96, baseType: !501, size: 64, offset: 832)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !386, file: !387, line: 97, baseType: !320, size: 64, offset: 896)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !386, file: !387, line: 98, baseType: !170, size: 64, offset: 960)
!4031 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !387, line: 100, baseType: !4032, size: 128, offset: 1024)
!4032 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 100, size: 128, elements: !4033)
!4033 = !{!4034, !4035}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4032, file: !387, line: 101, baseType: !187, size: 128)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4032, file: !387, line: 102, baseType: !4036, size: 64)
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !386, file: !387, line: 104, baseType: !187, size: 128, offset: 1152)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !386, file: !387, line: 105, baseType: !187, size: 128, offset: 1280)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !386, file: !387, line: 113, baseType: !4040, size: 128, offset: 1408)
!4040 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 109, size: 128, elements: !4041)
!4041 = !{!4042, !4043, !4044}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4040, file: !387, line: 110, baseType: !857, size: 128)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4040, file: !387, line: 111, baseType: !401, size: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4040, file: !387, line: 112, baseType: !831, size: 128, align: 64)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !379, file: !28, line: 1968, baseType: !4046, size: 64, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DISubroutineType(types: !4048)
!4048 = !{!183, !385, !350, !4049}
!4049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4050, size: 64)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4051, line: 10, size: 128, elements: !4052)
!4051 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4052 = !{!4053, !4054}
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4050, file: !4051, line: 11, baseType: !654, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4050, file: !4051, line: 12, baseType: !170, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !379, file: !28, line: 1969, baseType: !4056, size: 64, offset: 128)
!4056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4057, size: 64)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!65, !4015, !350, !65}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !379, file: !28, line: 1970, baseType: !4060, size: 64, offset: 192)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DISubroutineType(types: !4062)
!4062 = !{!373, !350, !65, !691}
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !379, file: !28, line: 1972, baseType: !4064, size: 64, offset: 256)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DISubroutineType(types: !4066)
!4066 = !{!65, !385, !270, !65}
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !379, file: !28, line: 1974, baseType: !4068, size: 64, offset: 320)
!4068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4069, size: 64)
!4069 = !DISubroutineType(types: !4070)
!4070 = !{!65, !4015, !350, !385, !312, !691}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !379, file: !28, line: 1976, baseType: !4072, size: 64, offset: 384)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!65, !385, !350, !385}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !379, file: !28, line: 1977, baseType: !4076, size: 64, offset: 448)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!65, !350, !385}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !379, file: !28, line: 1978, baseType: !4080, size: 64, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!65, !4015, !350, !385, !183}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !379, file: !28, line: 1980, baseType: !4084, size: 64, offset: 576)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!65, !4015, !350, !385, !312}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !379, file: !28, line: 1982, baseType: !4076, size: 64, offset: 640)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !379, file: !28, line: 1983, baseType: !4089, size: 64, offset: 704)
!4089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4090, size: 64)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{!65, !4015, !350, !385, !312, !506}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !379, file: !28, line: 1985, baseType: !4093, size: 64, offset: 768)
!4093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4094, size: 64)
!4094 = !DISubroutineType(types: !4095)
!4095 = !{!65, !4015, !350, !385, !350, !385, !7}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !379, file: !28, line: 1987, baseType: !4097, size: 64, offset: 832)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DISubroutineType(types: !4099)
!4099 = !{!65, !4015, !385, !4100}
!4100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4101, size: 64)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !4102)
!4102 = !{!4103, !4104, !4105, !4115, !4124, !4125, !4130, !4131, !4132}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4101, file: !28, line: 227, baseType: !7, size: 32)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4101, file: !28, line: 228, baseType: !312, size: 16, offset: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, scope: !4101, file: !28, line: 241, baseType: !4106, size: 32, offset: 64)
!4106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4101, file: !28, line: 241, size: 32, elements: !4107)
!4107 = !{!4108, !4109}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4106, file: !28, line: 242, baseType: !356, size: 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4106, file: !28, line: 243, baseType: !4110, size: 32)
!4110 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4111, line: 16, baseType: !4112)
!4111 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4111, line: 14, size: 32, elements: !4113)
!4113 = !{!4114}
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4112, file: !4111, line: 15, baseType: !361, size: 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !4101, file: !28, line: 245, baseType: !4116, size: 32, offset: 96)
!4116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4101, file: !28, line: 245, size: 32, elements: !4117)
!4117 = !{!4118, !4119}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4116, file: !28, line: 246, baseType: !365, size: 32)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4116, file: !28, line: 247, baseType: !4120, size: 32)
!4120 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4111, line: 20, baseType: !4121)
!4121 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4111, line: 18, size: 32, elements: !4122)
!4122 = !{!4123}
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4121, file: !4111, line: 19, baseType: !369, size: 32)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4101, file: !28, line: 249, baseType: !511, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4101, file: !28, line: 250, baseType: !4126, size: 128, offset: 192)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1231, line: 13, size: 128, elements: !4127)
!4127 = !{!4128, !4129}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4126, file: !1231, line: 14, baseType: !1230, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4126, file: !1231, line: 15, baseType: !306, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4101, file: !28, line: 251, baseType: !4126, size: 128, offset: 320)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4101, file: !28, line: 252, baseType: !4126, size: 128, offset: 448)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4101, file: !28, line: 259, baseType: !1398, size: 64, offset: 576)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !379, file: !28, line: 1988, baseType: !4134, size: 64, offset: 896)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!65, !4015, !2125, !4137, !419, !7}
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4139, line: 22, size: 1280, elements: !4140)
!4139 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4140 = !{!4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4138, file: !4139, line: 23, baseType: !419, size: 32)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4138, file: !4139, line: 24, baseType: !312, size: 16, offset: 32)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4138, file: !4139, line: 25, baseType: !7, size: 32, offset: 64)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4138, file: !4139, line: 26, baseType: !1238, size: 32, offset: 96)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4138, file: !4139, line: 27, baseType: !423, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4138, file: !4139, line: 28, baseType: !423, size: 64, offset: 192)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4138, file: !4139, line: 41, baseType: !423, size: 64, offset: 256)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4138, file: !4139, line: 42, baseType: !506, size: 32, offset: 320)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4138, file: !4139, line: 43, baseType: !506, size: 32, offset: 352)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4138, file: !4139, line: 44, baseType: !356, size: 32, offset: 384)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4138, file: !4139, line: 45, baseType: !365, size: 32, offset: 416)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4138, file: !4139, line: 46, baseType: !511, size: 64, offset: 448)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4138, file: !4139, line: 47, baseType: !4126, size: 128, offset: 512)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4138, file: !4139, line: 48, baseType: !4126, size: 128, offset: 640)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4138, file: !4139, line: 49, baseType: !4126, size: 128, offset: 768)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4138, file: !4139, line: 50, baseType: !4126, size: 128, offset: 896)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4138, file: !4139, line: 51, baseType: !423, size: 64, offset: 1024)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4138, file: !4139, line: 52, baseType: !423, size: 64, offset: 1088)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4138, file: !4139, line: 53, baseType: !419, size: 32, offset: 1152)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4138, file: !4139, line: 54, baseType: !419, size: 32, offset: 1184)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4138, file: !4139, line: 55, baseType: !423, size: 64, offset: 1216)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !379, file: !28, line: 1990, baseType: !4163, size: 64, offset: 960)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{!302, !385, !270, !317}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !379, file: !28, line: 1991, baseType: !4167, size: 64, offset: 1024)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DISubroutineType(types: !4169)
!4169 = !{!65, !350, !4170, !423, !423}
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !379, file: !28, line: 1993, baseType: !4173, size: 64, offset: 1088)
!4173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4174, size: 64)
!4174 = !DISubroutineType(types: !4175)
!4175 = !{!65, !350, !65}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !379, file: !28, line: 1994, baseType: !4177, size: 64, offset: 1152)
!4177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4178, size: 64)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!65, !350, !385, !1398, !7, !312}
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !379, file: !28, line: 1997, baseType: !4181, size: 64, offset: 1216)
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DISubroutineType(types: !4183)
!4183 = !{!65, !4015, !350, !1398, !312}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !379, file: !28, line: 1999, baseType: !4185, size: 64, offset: 1280)
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = !DISubroutineType(types: !4187)
!4187 = !{!373, !4015, !385, !65}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !379, file: !28, line: 2001, baseType: !4189, size: 64, offset: 1344)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!65, !4015, !385, !373, !65}
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !379, file: !28, line: 2003, baseType: !4193, size: 64, offset: 1408)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!65, !4015, !385, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !379, file: !28, line: 2005, baseType: !4199, size: 64, offset: 1472)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{!65, !385, !4196}
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !379, file: !28, line: 2006, baseType: !4203, size: 64, offset: 1536)
!4203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4204, size: 64)
!4204 = !DISubroutineType(types: !4205)
!4205 = !{!4206, !350}
!4206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4207, size: 64)
!4207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !4208)
!4208 = !{!4209, !4215}
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4207, file: !28, line: 3193, baseType: !4210, size: 128)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !163, line: 296, size: 128, elements: !4211)
!4211 = !{!4212, !4213, !4214}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !4210, file: !163, line: 297, baseType: !200, size: 32)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !4210, file: !163, line: 299, baseType: !168, size: 32, offset: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !4210, file: !163, line: 300, baseType: !170, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4207, file: !28, line: 3194, baseType: !419, size: 32, offset: 128)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !351, file: !28, line: 655, baseType: !501, size: 64, offset: 448)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !351, file: !28, line: 656, baseType: !346, size: 64, offset: 512)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !351, file: !28, line: 659, baseType: !170, size: 64, offset: 576)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !351, file: !28, line: 663, baseType: !320, size: 64, offset: 640)
!4220 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !28, line: 671, baseType: !4221, size: 32, offset: 704)
!4221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !28, line: 671, size: 32, elements: !4222)
!4222 = !{!4223, !4225}
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4221, file: !28, line: 672, baseType: !4224, size: 32)
!4224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4221, file: !28, line: 673, baseType: !7, size: 32)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !351, file: !28, line: 675, baseType: !506, size: 32, offset: 736)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !351, file: !28, line: 676, baseType: !511, size: 64, offset: 768)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !351, file: !28, line: 677, baseType: !4126, size: 128, offset: 832)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !351, file: !28, line: 678, baseType: !4126, size: 128, offset: 960)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !351, file: !28, line: 679, baseType: !4126, size: 128, offset: 1088)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !351, file: !28, line: 680, baseType: !200, size: 32, offset: 1216)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !351, file: !28, line: 681, baseType: !240, size: 16, offset: 1248)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !351, file: !28, line: 682, baseType: !228, size: 8, offset: 1264)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !351, file: !28, line: 683, baseType: !228, size: 8, offset: 1272)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !351, file: !28, line: 684, baseType: !2198, size: 64, offset: 1280)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !351, file: !28, line: 691, baseType: !320, size: 64, offset: 1344)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !351, file: !28, line: 692, baseType: !1214, size: 320, offset: 1408)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !351, file: !28, line: 694, baseType: !320, size: 64, offset: 1728)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !351, file: !28, line: 695, baseType: !320, size: 64, offset: 1792)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !351, file: !28, line: 697, baseType: !857, size: 128, offset: 1856)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !351, file: !28, line: 698, baseType: !187, size: 128, offset: 1984)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !351, file: !28, line: 707, baseType: !187, size: 128, offset: 2112)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !351, file: !28, line: 708, baseType: !187, size: 128, offset: 2240)
!4244 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !28, line: 709, baseType: !4245, size: 128, offset: 2368)
!4245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !28, line: 709, size: 128, elements: !4246)
!4246 = !{!4247, !4248}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4245, file: !28, line: 710, baseType: !981, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4245, file: !28, line: 711, baseType: !831, size: 128, align: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !351, file: !28, line: 713, baseType: !617, size: 64, offset: 2496)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !351, file: !28, line: 714, baseType: !617, size: 64, offset: 2560)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !351, file: !28, line: 715, baseType: !220, size: 32, offset: 2624)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !351, file: !28, line: 716, baseType: !220, size: 32, offset: 2656)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !351, file: !28, line: 717, baseType: !220, size: 32, offset: 2688)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !351, file: !28, line: 719, baseType: !220, size: 32, offset: 2720)
!4255 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !28, line: 721, baseType: !4256, size: 64, offset: 2752)
!4256 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !28, line: 721, size: 64, elements: !4257)
!4257 = !{!4258, !4259}
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4256, file: !28, line: 722, baseType: !1389, size: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4256, file: !28, line: 723, baseType: !1004, size: 64)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !351, file: !28, line: 725, baseType: !4261, size: 64, offset: 2816)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !351, file: !28, line: 726, baseType: !347, size: 1536, align: 64, offset: 2880)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !351, file: !28, line: 727, baseType: !187, size: 128, offset: 4416)
!4265 = !DIDerivedType(tag: DW_TAG_member, scope: !351, file: !28, line: 728, baseType: !4266, size: 64, offset: 4544)
!4266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !351, file: !28, line: 728, size: 64, elements: !4267)
!4267 = !{!4268, !4269, !4270, !4271}
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4266, file: !28, line: 729, baseType: !1947, size: 64)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4266, file: !28, line: 730, baseType: !2844, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4266, file: !28, line: 731, baseType: !270, size: 64)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4266, file: !28, line: 732, baseType: !7, size: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !351, file: !28, line: 735, baseType: !420, size: 32, offset: 4608)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !351, file: !28, line: 738, baseType: !420, size: 32, offset: 4640)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !351, file: !28, line: 739, baseType: !3952, size: 64, offset: 4672)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !351, file: !28, line: 750, baseType: !170, size: 64, offset: 4736)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !347, file: !28, line: 474, baseType: !4210, size: 128, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !347, file: !28, line: 475, baseType: !1214, size: 320, offset: 192)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !347, file: !28, line: 476, baseType: !168, size: 32, offset: 512)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !347, file: !28, line: 477, baseType: !220, size: 32, offset: 544)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !347, file: !28, line: 482, baseType: !2472, size: 128, offset: 576)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !347, file: !28, line: 483, baseType: !320, size: 64, offset: 704)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !347, file: !28, line: 484, baseType: !320, size: 64, offset: 768)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !347, file: !28, line: 485, baseType: !4284, size: 64, offset: 832)
!4284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4285, size: 64)
!4285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4286)
!4286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !4287)
!4287 = !{!4288, !4292, !4362, !4366, !4370, !4376, !4380, !4384, !4389, !4393, !4397, !4401, !4402, !4406, !4410, !4414, !4419, !4423, !4430, !4431}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4286, file: !28, line: 405, baseType: !4289, size: 64)
!4289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4290, size: 64)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!65, !1733, !1016}
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4286, file: !28, line: 406, baseType: !4293, size: 64, offset: 64)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!65, !1398, !4296}
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !98, line: 293, size: 1536, elements: !4298)
!4298 = !{!4299, !4329, !4343}
!4299 = !DIDerivedType(tag: DW_TAG_member, scope: !4297, file: !98, line: 295, baseType: !4300, size: 512)
!4300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4297, file: !98, line: 295, size: 512, elements: !4301)
!4301 = !{!4302, !4328}
!4302 = !DIDerivedType(tag: DW_TAG_member, scope: !4300, file: !98, line: 296, baseType: !4303, size: 448)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4300, file: !98, line: 296, size: 448, elements: !4304)
!4304 = !{!4305, !4306, !4315, !4316, !4317, !4326, !4327}
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4303, file: !98, line: 298, baseType: !320, size: 64)
!4306 = !DIDerivedType(tag: DW_TAG_member, scope: !4303, file: !98, line: 299, baseType: !4307, size: 128, offset: 64)
!4307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4303, file: !98, line: 299, size: 128, elements: !4308)
!4308 = !{!4309, !4310}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4307, file: !98, line: 300, baseType: !187, size: 128)
!4310 = !DIDerivedType(tag: DW_TAG_member, scope: !4307, file: !98, line: 302, baseType: !4311, size: 128)
!4311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4307, file: !98, line: 302, size: 128, elements: !4312)
!4312 = !{!4313, !4314}
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4311, file: !98, line: 303, baseType: !170, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4311, file: !98, line: 305, baseType: !7, size: 32, offset: 64)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4303, file: !98, line: 310, baseType: !346, size: 64, offset: 192)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4303, file: !98, line: 311, baseType: !320, size: 64, offset: 256)
!4317 = !DIDerivedType(tag: DW_TAG_member, scope: !4303, file: !98, line: 312, baseType: !4318, size: 64, offset: 320)
!4318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4303, file: !98, line: 312, size: 64, elements: !4319)
!4319 = !{!4320, !4321}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4318, file: !98, line: 313, baseType: !170, size: 64)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4318, file: !98, line: 314, baseType: !4322, size: 64)
!4322 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !98, line: 257, baseType: !4323)
!4323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 255, size: 64, elements: !4324)
!4324 = !{!4325}
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4323, file: !98, line: 256, baseType: !320, size: 64)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4303, file: !98, line: 316, baseType: !220, size: 32, offset: 384)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4303, file: !98, line: 317, baseType: !220, size: 32, offset: 416)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4300, file: !98, line: 323, baseType: !1734, size: 512, align: 128)
!4329 = !DIDerivedType(tag: DW_TAG_member, scope: !4297, file: !98, line: 325, baseType: !4330, size: 512, offset: 512)
!4330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4297, file: !98, line: 325, size: 512, elements: !4331)
!4331 = !{!4332, !4342}
!4332 = !DIDerivedType(tag: DW_TAG_member, scope: !4330, file: !98, line: 326, baseType: !4333, size: 320)
!4333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4330, file: !98, line: 326, size: 320, elements: !4334)
!4334 = !{!4335, !4336, !4337, !4338, !4339, !4340, !4341}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4333, file: !98, line: 327, baseType: !320, size: 64)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4333, file: !98, line: 328, baseType: !320, size: 64, offset: 64)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4333, file: !98, line: 329, baseType: !320, size: 64, offset: 128)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4333, file: !98, line: 331, baseType: !220, size: 32, offset: 192)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4333, file: !98, line: 332, baseType: !220, size: 32, offset: 224)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4333, file: !98, line: 333, baseType: !220, size: 32, offset: 256)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4333, file: !98, line: 335, baseType: !7, size: 32, offset: 288)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4330, file: !98, line: 339, baseType: !1734, size: 512, align: 128)
!4343 = !DIDerivedType(tag: DW_TAG_member, scope: !4297, file: !98, line: 341, baseType: !4344, size: 512, offset: 1024)
!4344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4297, file: !98, line: 341, size: 512, elements: !4345)
!4345 = !{!4346, !4355, !4361}
!4346 = !DIDerivedType(tag: DW_TAG_member, scope: !4344, file: !98, line: 342, baseType: !4347, size: 384)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4344, file: !98, line: 342, size: 384, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4353, !4354}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4347, file: !98, line: 343, baseType: !320, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4347, file: !98, line: 344, baseType: !320, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4347, file: !98, line: 346, baseType: !170, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4347, file: !98, line: 347, baseType: !170, size: 64, offset: 192)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4347, file: !98, line: 348, baseType: !170, size: 64, offset: 256)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4347, file: !98, line: 349, baseType: !170, size: 64, offset: 320)
!4355 = !DIDerivedType(tag: DW_TAG_member, scope: !4344, file: !98, line: 352, baseType: !4356, size: 256)
!4356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4344, file: !98, line: 352, size: 256, elements: !4357)
!4357 = !{!4358, !4359, !4360}
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4356, file: !98, line: 353, baseType: !320, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4356, file: !98, line: 354, baseType: !320, size: 64, offset: 64)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4356, file: !98, line: 356, baseType: !187, size: 128, offset: 128)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4344, file: !98, line: 359, baseType: !1734, size: 512, align: 128)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4286, file: !28, line: 409, baseType: !4363, size: 64, offset: 128)
!4363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4364, size: 64)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!65, !346, !1016}
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4286, file: !28, line: 412, baseType: !4367, size: 64, offset: 192)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DISubroutineType(types: !4369)
!4369 = !{!691, !346, !4296}
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4286, file: !28, line: 414, baseType: !4371, size: 64, offset: 256)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = !DISubroutineType(types: !4373)
!4373 = !{null, !4374}
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4375, size: 64)
!4375 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4286, file: !28, line: 416, baseType: !4377, size: 64, offset: 320)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{!65, !1398, !346, !511, !7, !3705, !1962}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4286, file: !28, line: 419, baseType: !4381, size: 64, offset: 384)
!4381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4382, size: 64)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!65, !1398, !346, !511, !7, !7, !1733, !170}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4286, file: !28, line: 424, baseType: !4385, size: 64, offset: 448)
!4385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4386, size: 64)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4388, !346, !4388}
!4388 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !169, line: 131, baseType: !423)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4286, file: !28, line: 425, baseType: !4390, size: 64, offset: 512)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DISubroutineType(types: !4392)
!4392 = !{null, !4296, !317, !317}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4286, file: !28, line: 426, baseType: !4394, size: 64, offset: 576)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!691, !4296, !168}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4286, file: !28, line: 427, baseType: !4398, size: 64, offset: 640)
!4398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4399, size: 64)
!4399 = !DISubroutineType(types: !4400)
!4400 = !{null, !4296}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4286, file: !28, line: 428, baseType: !1408, size: 64, offset: 704)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4286, file: !28, line: 433, baseType: !4403, size: 64, offset: 768)
!4403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4404, size: 64)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!65, !346, !4296, !4296, !113}
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4286, file: !28, line: 435, baseType: !4407, size: 64, offset: 832)
!4407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4408, size: 64)
!4408 = !DISubroutineType(types: !4409)
!4409 = !{!65, !4296}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4286, file: !28, line: 436, baseType: !4411, size: 64, offset: 896)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = !DISubroutineType(types: !4413)
!4413 = !{!691, !4296, !317, !317}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4286, file: !28, line: 438, baseType: !4415, size: 64, offset: 960)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{null, !4296, !4418, !4418}
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4286, file: !28, line: 439, baseType: !4420, size: 64, offset: 1024)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = !DISubroutineType(types: !4422)
!4422 = !{!65, !346, !1733}
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4286, file: !28, line: 442, baseType: !4424, size: 64, offset: 1088)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4425, size: 64)
!4425 = !DISubroutineType(types: !4426)
!4426 = !{!65, !4427, !1398, !4429}
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4286, file: !28, line: 444, baseType: !1954, size: 64, offset: 1152)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4286, file: !28, line: 445, baseType: !4432, size: 64, offset: 1216)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DISubroutineType(types: !4434)
!4434 = !{!65, !1411, !1433}
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !347, file: !28, line: 486, baseType: !320, size: 64, offset: 896)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !347, file: !28, line: 487, baseType: !1214, size: 320, offset: 960)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !347, file: !28, line: 488, baseType: !1997, size: 32, offset: 1280)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !347, file: !28, line: 489, baseType: !200, size: 32, offset: 1312)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !347, file: !28, line: 490, baseType: !187, size: 128, offset: 1344)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !347, file: !28, line: 491, baseType: !170, size: 64, offset: 1472)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !337, file: !296, line: 180, baseType: !4442, size: 64, offset: 320)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!302, !1398, !193, !336, !270, !511, !317}
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !337, file: !296, line: 182, baseType: !4442, size: 64, offset: 384)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !337, file: !296, line: 184, baseType: !4447, size: 64, offset: 448)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!65, !1398, !193, !336, !1472}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !325, file: !296, line: 90, baseType: !4451, size: 64, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !325, file: !296, line: 91, baseType: !4453, size: 64, offset: 256)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !286, file: !180, line: 120, baseType: !4455, size: 64, offset: 192)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!4458, !253}
!4458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4459, size: 64)
!4459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4460)
!4460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !4461)
!4461 = !{!4462, !4463, !4467, !4471, !4477, !4481}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4460, file: !6, line: 40, baseType: !5, size: 32)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4460, file: !6, line: 41, baseType: !4464, size: 64, offset: 64)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!691}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4460, file: !6, line: 42, baseType: !4468, size: 64, offset: 128)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!170}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4460, file: !6, line: 43, baseType: !4472, size: 64, offset: 192)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!1600, !4475}
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4460, file: !6, line: 44, baseType: !4478, size: 64, offset: 256)
!4478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4479, size: 64)
!4479 = !DISubroutineType(types: !4480)
!4480 = !{!1600}
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4460, file: !6, line: 45, baseType: !654, size: 64, offset: 320)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !286, file: !180, line: 121, baseType: !4483, size: 64, offset: 256)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!1600, !253}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !286, file: !180, line: 122, baseType: !4487, size: 64, offset: 320)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !253, !4490, !4491}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !179, file: !180, line: 70, baseType: !4493, size: 64, offset: 384)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !526, line: 190, size: 1152, elements: !4495)
!4495 = !{!4496, !4497, !4498, !4499, !4500, !4501, !4502, !4503, !4575, !4576, !4577, !4578, !4579, !4582}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4494, file: !526, line: 191, baseType: !220, size: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4494, file: !526, line: 192, baseType: !220, size: 32, offset: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4494, file: !526, line: 202, baseType: !4493, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4494, file: !526, line: 203, baseType: !183, size: 64, offset: 128)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4494, file: !526, line: 205, baseType: !723, size: 192, align: 64, offset: 192)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4494, file: !526, line: 207, baseType: !1600, size: 64, offset: 384)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4494, file: !526, line: 208, baseType: !7, size: 32, offset: 448)
!4503 = !DIDerivedType(tag: DW_TAG_member, scope: !4494, file: !526, line: 209, baseType: !4504, size: 256, offset: 512)
!4504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4494, file: !526, line: 209, size: 256, elements: !4505)
!4505 = !{!4506, !4515, !4519}
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4504, file: !526, line: 210, baseType: !4507, size: 256)
!4507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !526, line: 153, size: 256, elements: !4508)
!4508 = !{!4509, !4510, !4511, !4514}
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4507, file: !526, line: 154, baseType: !320, size: 64)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4507, file: !526, line: 156, baseType: !2475, size: 64, offset: 64)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4507, file: !526, line: 162, baseType: !4512, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4513, size: 64)
!4513 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !526, line: 162, flags: DIFlagFwdDecl)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4507, file: !526, line: 167, baseType: !320, size: 64, offset: 192)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4504, file: !526, line: 211, baseType: !4516, size: 64)
!4516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !526, line: 170, size: 64, elements: !4517)
!4517 = !{!4518}
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4516, file: !526, line: 171, baseType: !4493, size: 64)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4504, file: !526, line: 212, baseType: !4520, size: 256)
!4520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !526, line: 174, size: 256, elements: !4521)
!4521 = !{!4522, !4570, !4573, !4574}
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4520, file: !526, line: 175, baseType: !4523, size: 64)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4525)
!4525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !526, line: 271, size: 768, elements: !4526)
!4526 = !{!4527, !4547, !4551, !4552, !4553, !4554, !4555, !4559, !4560, !4561, !4562, !4566}
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4525, file: !526, line: 276, baseType: !4528, size: 64)
!4528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4529, size: 64)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!65, !4531}
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !526, line: 251, size: 1216, elements: !4533)
!4533 = !{!4534, !4535, !4536, !4537, !4538, !4539, !4540, !4541, !4542, !4543, !4544, !4545, !4546}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4532, file: !526, line: 253, baseType: !4493, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4532, file: !526, line: 254, baseType: !1398, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4532, file: !526, line: 255, baseType: !1053, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4532, file: !526, line: 256, baseType: !170, size: 64, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4532, file: !526, line: 259, baseType: !611, size: 256, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4532, file: !526, line: 260, baseType: !611, size: 256, offset: 512)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4532, file: !526, line: 261, baseType: !65, size: 32, offset: 768)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4532, file: !526, line: 262, baseType: !187, size: 128, offset: 832)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4532, file: !526, line: 263, baseType: !270, size: 64, offset: 960)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4532, file: !526, line: 265, baseType: !317, size: 64, offset: 1024)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4532, file: !526, line: 266, baseType: !691, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4532, file: !526, line: 267, baseType: !691, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4532, file: !526, line: 268, baseType: !1669, size: 64, offset: 1152)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4525, file: !526, line: 277, baseType: !4548, size: 64, offset: 64)
!4548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4549, size: 64)
!4549 = !DISubroutineType(types: !4550)
!4550 = !{null, !4531}
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4525, file: !526, line: 290, baseType: !1084, size: 64, offset: 128)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4525, file: !526, line: 292, baseType: !1071, size: 64, offset: 192)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4525, file: !526, line: 293, baseType: !1080, size: 64, offset: 256)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4525, file: !526, line: 294, baseType: !1076, size: 64, offset: 320)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4525, file: !526, line: 296, baseType: !4556, size: 64, offset: 384)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DISubroutineType(types: !4558)
!4558 = !{!302, !4531, !270, !317, !511}
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4525, file: !526, line: 306, baseType: !317, size: 64, offset: 448)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4525, file: !526, line: 313, baseType: !691, size: 8, offset: 512)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4525, file: !526, line: 314, baseType: !4556, size: 64, offset: 576)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4525, file: !526, line: 317, baseType: !4563, size: 64, offset: 640)
!4563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4564, size: 64)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!1459, !4531, !1461}
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4525, file: !526, line: 320, baseType: !4567, size: 64, offset: 704)
!4567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4568, size: 64)
!4568 = !DISubroutineType(types: !4569)
!4569 = !{!65, !4531, !1472}
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4520, file: !526, line: 176, baseType: !4571, size: 64, offset: 64)
!4571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4572, size: 64)
!4572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !526, line: 35, flags: DIFlagFwdDecl)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4520, file: !526, line: 177, baseType: !511, size: 64, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4520, file: !526, line: 178, baseType: !4493, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4494, file: !526, line: 215, baseType: !170, size: 64, offset: 768)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4494, file: !526, line: 221, baseType: !423, size: 64, offset: 832)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4494, file: !526, line: 223, baseType: !240, size: 16, offset: 896)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4494, file: !526, line: 224, baseType: !312, size: 16, offset: 912)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4494, file: !526, line: 225, baseType: !4580, size: 64, offset: 960)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !526, line: 36, flags: DIFlagFwdDecl)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4494, file: !526, line: 227, baseType: !831, size: 128, align: 64, offset: 1024)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !179, file: !180, line: 71, baseType: !2829, size: 32, offset: 448)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !179, file: !180, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !179, file: !180, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !179, file: !180, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !179, file: !180, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !179, file: !180, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !50, line: 707, baseType: !2835, size: 64, offset: 512)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !176, file: !50, line: 709, baseType: !4591, size: 64, offset: 576)
!4591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4592, size: 64)
!4592 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !50, line: 37, flags: DIFlagFwdDecl)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !176, file: !50, line: 711, baseType: !183, size: 64, offset: 640)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !50, line: 712, baseType: !4595, size: 64, offset: 704)
!4595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4597)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !50, line: 89, size: 384, elements: !4598)
!4598 = !{!4599, !4600, !4601, !4607, !4612, !4616}
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4597, file: !50, line: 90, baseType: !183, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4597, file: !50, line: 91, baseType: !322, size: 64, offset: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4597, file: !50, line: 92, baseType: !4602, size: 64, offset: 128)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DISubroutineType(types: !4604)
!4604 = !{!65, !4605, !265}
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4597, file: !50, line: 93, baseType: !4608, size: 64, offset: 192)
!4608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4609, size: 64)
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!270, !4605, !4611, !4490, !4491}
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4597, file: !50, line: 95, baseType: !4613, size: 64, offset: 256)
!4613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4614, size: 64)
!4614 = !DISubroutineType(types: !4615)
!4615 = !{null, !2835}
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4597, file: !50, line: 97, baseType: !4617, size: 64, offset: 320)
!4617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4618, size: 64)
!4618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4619)
!4619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !57, line: 286, size: 1472, elements: !4620)
!4620 = !{!4621, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646}
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4619, file: !57, line: 287, baseType: !4622, size: 64)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{!65, !2835}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4619, file: !57, line: 288, baseType: !4613, size: 64, offset: 64)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4619, file: !57, line: 289, baseType: !4622, size: 64, offset: 128)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4619, file: !57, line: 290, baseType: !4622, size: 64, offset: 192)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4619, file: !57, line: 291, baseType: !4622, size: 64, offset: 256)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4619, file: !57, line: 292, baseType: !4622, size: 64, offset: 320)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4619, file: !57, line: 293, baseType: !4622, size: 64, offset: 384)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4619, file: !57, line: 294, baseType: !4622, size: 64, offset: 448)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4619, file: !57, line: 295, baseType: !4622, size: 64, offset: 512)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4619, file: !57, line: 296, baseType: !4622, size: 64, offset: 576)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4619, file: !57, line: 297, baseType: !4622, size: 64, offset: 640)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4619, file: !57, line: 298, baseType: !4622, size: 64, offset: 704)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4619, file: !57, line: 299, baseType: !4622, size: 64, offset: 768)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4619, file: !57, line: 300, baseType: !4622, size: 64, offset: 832)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4619, file: !57, line: 301, baseType: !4622, size: 64, offset: 896)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4619, file: !57, line: 302, baseType: !4622, size: 64, offset: 960)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4619, file: !57, line: 303, baseType: !4622, size: 64, offset: 1024)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4619, file: !57, line: 304, baseType: !4622, size: 64, offset: 1088)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4619, file: !57, line: 305, baseType: !4622, size: 64, offset: 1152)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4619, file: !57, line: 306, baseType: !4622, size: 64, offset: 1216)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4619, file: !57, line: 307, baseType: !4622, size: 64, offset: 1280)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4619, file: !57, line: 308, baseType: !4622, size: 64, offset: 1344)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4619, file: !57, line: 309, baseType: !4622, size: 64, offset: 1408)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !176, file: !50, line: 714, baseType: !4648, size: 64, offset: 768)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4650)
!4650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4651, line: 80, size: 1344, elements: !4652)
!4651 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4652 = !{!4653, !4654, !4655, !4656, !4657, !4658, !4699, !4700, !4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4716}
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4650, file: !4651, line: 81, baseType: !183, size: 64)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4650, file: !4651, line: 82, baseType: !183, size: 64, offset: 64)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4650, file: !4651, line: 83, baseType: !322, size: 64, offset: 128)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4650, file: !4651, line: 84, baseType: !322, size: 64, offset: 192)
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4650, file: !4651, line: 85, baseType: !322, size: 64, offset: 256)
!4658 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4650, file: !4651, line: 87, baseType: !4659, size: 64, offset: 320)
!4659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4660, size: 64)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{!65, !2835, !4662}
!4662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4663, size: 64)
!4663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !136, line: 96, size: 1152, elements: !4664)
!4664 = !{!4665, !4666, !4667, !4668, !4669, !4670, !4671, !4675, !4679, !4680, !4681, !4682, !4683, !4691, !4692, !4693, !4694, !4695, !4696}
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4663, file: !136, line: 97, baseType: !183, size: 64)
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4663, file: !136, line: 98, baseType: !4648, size: 64, offset: 64)
!4667 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4663, file: !136, line: 100, baseType: !540, size: 64, offset: 128)
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4663, file: !136, line: 101, baseType: !183, size: 64, offset: 192)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4663, file: !136, line: 103, baseType: !691, size: 8, offset: 256)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4663, file: !136, line: 104, baseType: !135, size: 32, offset: 288)
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4663, file: !136, line: 106, baseType: !4672, size: 64, offset: 320)
!4672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4673, size: 64)
!4673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4674)
!4674 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !136, line: 106, flags: DIFlagFwdDecl)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4663, file: !136, line: 107, baseType: !4676, size: 64, offset: 384)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4678)
!4678 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !136, line: 107, flags: DIFlagFwdDecl)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4663, file: !136, line: 109, baseType: !4622, size: 64, offset: 448)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4663, file: !136, line: 110, baseType: !4613, size: 64, offset: 512)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4663, file: !136, line: 111, baseType: !4622, size: 64, offset: 576)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4663, file: !136, line: 112, baseType: !4613, size: 64, offset: 640)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4663, file: !136, line: 113, baseType: !4684, size: 64, offset: 704)
!4684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4685, size: 64)
!4685 = !DISubroutineType(types: !4686)
!4686 = !{!65, !2835, !4687}
!4687 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !57, line: 60, baseType: !4688)
!4688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !57, line: 58, size: 32, elements: !4689)
!4689 = !{!4690}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4688, file: !57, line: 59, baseType: !65, size: 32)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4663, file: !136, line: 114, baseType: !4622, size: 64, offset: 768)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4663, file: !136, line: 115, baseType: !322, size: 64, offset: 832)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4663, file: !136, line: 116, baseType: !322, size: 64, offset: 896)
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4663, file: !136, line: 118, baseType: !4617, size: 64, offset: 960)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4663, file: !136, line: 119, baseType: !4613, size: 64, offset: 1024)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4663, file: !136, line: 121, baseType: !4697, size: 64, offset: 1088)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !136, line: 121, flags: DIFlagFwdDecl)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4650, file: !4651, line: 88, baseType: !4602, size: 64, offset: 384)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4650, file: !4651, line: 89, baseType: !4622, size: 64, offset: 448)
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4650, file: !4651, line: 90, baseType: !4613, size: 64, offset: 512)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4650, file: !4651, line: 91, baseType: !4613, size: 64, offset: 576)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4650, file: !4651, line: 92, baseType: !4613, size: 64, offset: 640)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4650, file: !4651, line: 94, baseType: !4622, size: 64, offset: 704)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4650, file: !4651, line: 95, baseType: !4622, size: 64, offset: 768)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4650, file: !4651, line: 97, baseType: !4684, size: 64, offset: 832)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4650, file: !4651, line: 98, baseType: !4622, size: 64, offset: 896)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4650, file: !4651, line: 100, baseType: !4622, size: 64, offset: 960)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4650, file: !4651, line: 102, baseType: !4622, size: 64, offset: 1024)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4650, file: !4651, line: 103, baseType: !4613, size: 64, offset: 1088)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4650, file: !4651, line: 105, baseType: !4617, size: 64, offset: 1152)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4650, file: !4651, line: 107, baseType: !4713, size: 64, offset: 1216)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4715)
!4715 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4651, line: 107, flags: DIFlagFwdDecl)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4650, file: !4651, line: 109, baseType: !691, size: 8, offset: 1280)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !176, file: !50, line: 715, baseType: !4662, size: 64, offset: 832)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !176, file: !50, line: 717, baseType: !170, size: 64, offset: 896)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !176, file: !50, line: 719, baseType: !170, size: 64, offset: 960)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !50, line: 721, baseType: !611, size: 256, offset: 1024)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !176, file: !50, line: 725, baseType: !4722, size: 448, offset: 1280)
!4722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !50, line: 517, size: 448, elements: !4723)
!4723 = !{!4724, !4725, !4726, !4727}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4722, file: !50, line: 518, baseType: !187, size: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4722, file: !50, line: 519, baseType: !187, size: 128, offset: 128)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4722, file: !50, line: 520, baseType: !187, size: 128, offset: 256)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4722, file: !50, line: 521, baseType: !49, size: 32, offset: 384)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !176, file: !50, line: 726, baseType: !4729, size: 2496, offset: 1728)
!4729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !57, line: 663, size: 2496, elements: !4730)
!4730 = !{!4731, !4732, !4733, !4734, !4735, !4736, !4737, !4738, !4739, !4740, !4741, !4742, !4743, !4744, !4745, !4746, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4813, !4817}
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4729, file: !57, line: 664, baseType: !4687, size: 32)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4729, file: !57, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4729, file: !57, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4729, file: !57, line: 667, baseType: !691, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4729, file: !57, line: 668, baseType: !691, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4729, file: !57, line: 669, baseType: !691, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4729, file: !57, line: 670, baseType: !691, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4729, file: !57, line: 671, baseType: !691, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4729, file: !57, line: 672, baseType: !691, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4729, file: !57, line: 673, baseType: !691, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4729, file: !57, line: 674, baseType: !691, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4729, file: !57, line: 675, baseType: !419, size: 32, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4729, file: !57, line: 676, baseType: !200, size: 32, offset: 96)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4729, file: !57, line: 678, baseType: !187, size: 128, offset: 128)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4729, file: !57, line: 679, baseType: !560, size: 256, offset: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4729, file: !57, line: 680, baseType: !4747, size: 64, offset: 512)
!4747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4748, size: 64)
!4748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4749, line: 43, size: 1536, elements: !4750)
!4749 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4750 = !{!4751, !4752, !4753, !4754, !4755, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4767, !4768, !4769, !4770, !4771, !4772}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4748, file: !4749, line: 44, baseType: !183, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4748, file: !4749, line: 45, baseType: !65, size: 32, offset: 64)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4748, file: !4749, line: 46, baseType: !187, size: 128, offset: 128)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4748, file: !4749, line: 47, baseType: !200, size: 32, offset: 256)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4748, file: !4749, line: 48, baseType: !4756, size: 64, offset: 320)
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !57, line: 629, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4748, file: !4749, line: 49, baseType: !853, size: 320, offset: 384)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4748, file: !4749, line: 50, baseType: !320, size: 64, offset: 704)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4748, file: !4749, line: 51, baseType: !2421, size: 64, offset: 768)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4748, file: !4749, line: 52, baseType: !2421, size: 64, offset: 832)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4748, file: !4749, line: 53, baseType: !2421, size: 64, offset: 896)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4748, file: !4749, line: 54, baseType: !2421, size: 64, offset: 960)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4748, file: !4749, line: 55, baseType: !2421, size: 64, offset: 1024)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4748, file: !4749, line: 56, baseType: !320, size: 64, offset: 1088)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4748, file: !4749, line: 57, baseType: !320, size: 64, offset: 1152)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4748, file: !4749, line: 58, baseType: !320, size: 64, offset: 1216)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4748, file: !4749, line: 59, baseType: !320, size: 64, offset: 1280)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4748, file: !4749, line: 60, baseType: !320, size: 64, offset: 1344)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4748, file: !4749, line: 61, baseType: !2835, size: 64, offset: 1408)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4748, file: !4749, line: 62, baseType: !691, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4748, file: !4749, line: 63, baseType: !691, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4729, file: !57, line: 681, baseType: !691, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4729, file: !57, line: 682, baseType: !691, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4729, file: !57, line: 683, baseType: !691, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4729, file: !57, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4729, file: !57, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4729, file: !57, line: 690, baseType: !2413, size: 512, offset: 640)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4729, file: !57, line: 691, baseType: !423, size: 64, offset: 1152)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4729, file: !57, line: 692, baseType: !871, size: 256, offset: 1216)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4729, file: !57, line: 693, baseType: !1151, size: 192, offset: 1472)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4729, file: !57, line: 694, baseType: !4756, size: 64, offset: 1664)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4729, file: !57, line: 695, baseType: !220, size: 32, offset: 1728)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4729, file: !57, line: 696, baseType: !220, size: 32, offset: 1760)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4729, file: !57, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4729, file: !57, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4729, file: !57, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4729, file: !57, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4729, file: !57, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4729, file: !57, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4729, file: !57, line: 703, baseType: !691, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4729, file: !57, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4729, file: !57, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4729, file: !57, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4729, file: !57, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4729, file: !57, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4729, file: !57, line: 709, baseType: !7, size: 32, offset: 1824)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4729, file: !57, line: 710, baseType: !56, size: 32, offset: 1856)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4729, file: !57, line: 711, baseType: !64, size: 32, offset: 1888)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4729, file: !57, line: 712, baseType: !64, size: 32, offset: 1920)
!4801 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4729, file: !57, line: 713, baseType: !65, size: 32, offset: 1952)
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4729, file: !57, line: 714, baseType: !65, size: 32, offset: 1984)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4729, file: !57, line: 715, baseType: !423, size: 64, offset: 2048)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4729, file: !57, line: 716, baseType: !423, size: 64, offset: 2112)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4729, file: !57, line: 717, baseType: !423, size: 64, offset: 2176)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4729, file: !57, line: 718, baseType: !423, size: 64, offset: 2240)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4729, file: !57, line: 720, baseType: !4808, size: 64, offset: 2304)
!4808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4809, size: 64)
!4809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !57, line: 632, size: 64, elements: !4810)
!4810 = !{!4811, !4812}
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4809, file: !57, line: 633, baseType: !200, size: 32)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4809, file: !57, line: 634, baseType: !7, size: 32, offset: 32)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4729, file: !57, line: 721, baseType: !4814, size: 64, offset: 2368)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{null, !2835, !607}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4729, file: !57, line: 722, baseType: !4818, size: 64, offset: 2432)
!4818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4819, size: 64)
!4819 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !57, line: 722, flags: DIFlagFwdDecl)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !176, file: !50, line: 727, baseType: !4821, size: 64, offset: 4224)
!4821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4822, size: 64)
!4822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !57, line: 742, size: 1792, elements: !4823)
!4823 = !{!4824, !4825, !4826, !4830, !4831, !4832}
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4822, file: !57, line: 743, baseType: !4619, size: 1472)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4822, file: !57, line: 744, baseType: !4622, size: 64, offset: 1472)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4822, file: !57, line: 745, baseType: !4827, size: 64, offset: 1536)
!4827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4828, size: 64)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{null, !2835, !691}
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4822, file: !57, line: 746, baseType: !4622, size: 64, offset: 1600)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4822, file: !57, line: 747, baseType: !4613, size: 64, offset: 1664)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4822, file: !57, line: 748, baseType: !4613, size: 64, offset: 1728)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !176, file: !50, line: 736, baseType: !4834, size: 128, offset: 4288)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !50, line: 529, size: 128, elements: !4835)
!4835 = !{!4836, !4840}
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4834, file: !50, line: 531, baseType: !4837, size: 64)
!4837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4838, size: 64)
!4838 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4839, line: 13, flags: DIFlagFwdDecl)
!4839 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4834, file: !50, line: 532, baseType: !4841, size: 64, offset: 64)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !50, line: 49, flags: DIFlagFwdDecl)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !176, file: !50, line: 738, baseType: !4844, size: 64, offset: 4416)
!4844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4846)
!4846 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !50, line: 738, flags: DIFlagFwdDecl)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !176, file: !50, line: 740, baseType: !4848, size: 64, offset: 4480)
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !176, file: !50, line: 741, baseType: !423, size: 64, offset: 4544)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !176, file: !50, line: 746, baseType: !423, size: 64, offset: 4608)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !176, file: !50, line: 747, baseType: !4852, size: 64, offset: 4672)
!4852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4853, size: 64)
!4853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4854)
!4854 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !50, line: 747, flags: DIFlagFwdDecl)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !176, file: !50, line: 749, baseType: !4856, size: 64, offset: 4736)
!4856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4857, size: 64)
!4857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !50, line: 428, size: 128, elements: !4858)
!4858 = !{!4859, !4860, !4861}
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4857, file: !50, line: 433, baseType: !7, size: 32)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4857, file: !50, line: 434, baseType: !7, size: 32, offset: 32)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4857, file: !50, line: 435, baseType: !320, size: 64, offset: 64)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !176, file: !50, line: 751, baseType: !187, size: 128, offset: 4800)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !176, file: !50, line: 762, baseType: !4864, size: 64, offset: 4928)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !50, line: 762, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !176, file: !50, line: 770, baseType: !4867, offset: 4992)
!4867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4868, line: 5, elements: !900)
!4868 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !176, file: !50, line: 772, baseType: !4870, size: 64, offset: 4992)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4872, line: 18, flags: DIFlagFwdDecl)
!4872 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !176, file: !50, line: 773, baseType: !4874, size: 64, offset: 5056)
!4874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4875, size: 64)
!4875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4876, line: 41, size: 512, elements: !4877)
!4876 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4877 = !{!4878, !4879, !4973, !4974, !4975, !4976}
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4875, file: !4876, line: 42, baseType: !4874, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4875, file: !4876, line: 43, baseType: !4880, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4882)
!4882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4876, line: 125, size: 1408, elements: !4883)
!4883 = !{!4884, !4888, !4892, !4898, !4902, !4903, !4908, !4912, !4916, !4920, !4924, !4925, !4929, !4933, !4937, !4948, !4949, !4950, !4951, !4961, !4965, !4969}
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4882, file: !4876, line: 126, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!4874, !4874}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4882, file: !4876, line: 127, baseType: !4889, size: 64, offset: 64)
!4889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4890, size: 64)
!4890 = !DISubroutineType(types: !4891)
!4891 = !{null, !4874}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4882, file: !4876, line: 128, baseType: !4893, size: 64, offset: 128)
!4893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4894, size: 64)
!4894 = !DISubroutineType(types: !4895)
!4895 = !{!691, !4896}
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4875)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4882, file: !4876, line: 129, baseType: !4899, size: 64, offset: 192)
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{!1600, !4896, !4605}
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4882, file: !4876, line: 131, baseType: !4893, size: 64, offset: 256)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4882, file: !4876, line: 133, baseType: !4904, size: 64, offset: 320)
!4904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4905, size: 64)
!4905 = !DISubroutineType(types: !4906)
!4906 = !{!4907, !4896}
!4907 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4876, line: 132, flags: DIFlagFwdDecl)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4882, file: !4876, line: 134, baseType: !4909, size: 64, offset: 384)
!4909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4910, size: 64)
!4910 = !DISubroutineType(types: !4911)
!4911 = !{!691, !4896, !183}
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4882, file: !4876, line: 136, baseType: !4913, size: 64, offset: 448)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4914, size: 64)
!4914 = !DISubroutineType(types: !4915)
!4915 = !{!65, !4896, !183, !7, !170, !317}
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4882, file: !4876, line: 141, baseType: !4917, size: 64, offset: 512)
!4917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4918, size: 64)
!4918 = !DISubroutineType(types: !4919)
!4919 = !{!65, !4896, !183, !948, !317}
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4882, file: !4876, line: 144, baseType: !4921, size: 64, offset: 576)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DISubroutineType(types: !4923)
!4923 = !{!183, !4896}
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4882, file: !4876, line: 145, baseType: !4921, size: 64, offset: 640)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4882, file: !4876, line: 146, baseType: !4926, size: 64, offset: 704)
!4926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4927, size: 64)
!4927 = !DISubroutineType(types: !4928)
!4928 = !{!4874, !4896}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4882, file: !4876, line: 148, baseType: !4930, size: 64, offset: 768)
!4930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4931, size: 64)
!4931 = !DISubroutineType(types: !4932)
!4932 = !{!4874, !4896, !4874}
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4882, file: !4876, line: 151, baseType: !4934, size: 64, offset: 832)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!4874, !4896, !183}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4882, file: !4876, line: 153, baseType: !4938, size: 64, offset: 896)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!65, !4896, !183, !183, !7, !7, !4941}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4876, line: 94, size: 640, elements: !4943)
!4943 = !{!4944, !4945, !4946}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4942, file: !4876, line: 95, baseType: !4874, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4942, file: !4876, line: 96, baseType: !7, size: 32, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4942, file: !4876, line: 97, baseType: !4947, size: 512, offset: 128)
!4947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 512, elements: !2456)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4882, file: !4876, line: 158, baseType: !4930, size: 64, offset: 960)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4882, file: !4876, line: 161, baseType: !4926, size: 64, offset: 1024)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4882, file: !4876, line: 163, baseType: !4885, size: 64, offset: 1088)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4882, file: !4876, line: 164, baseType: !4952, size: 64, offset: 1152)
!4952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4953, size: 64)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!65, !4896, !4955}
!4955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4876, line: 73, size: 128, elements: !4957)
!4957 = !{!4958, !4959, !4960}
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4956, file: !4876, line: 74, baseType: !7, size: 32)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4956, file: !4876, line: 75, baseType: !7, size: 32, offset: 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4956, file: !4876, line: 76, baseType: !4896, size: 64, offset: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4882, file: !4876, line: 166, baseType: !4962, size: 64, offset: 1216)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = !DISubroutineType(types: !4964)
!4964 = !{!170, !4874, !65}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4882, file: !4876, line: 167, baseType: !4966, size: 64, offset: 1280)
!4966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4967, size: 64)
!4967 = !DISubroutineType(types: !4968)
!4968 = !{!65, !4896, !7}
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4882, file: !4876, line: 168, baseType: !4970, size: 64, offset: 1344)
!4970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4971, size: 64)
!4971 = !DISubroutineType(types: !4972)
!4972 = !{!65, !4874}
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4875, file: !4876, line: 44, baseType: !2835, size: 64, offset: 128)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4875, file: !4876, line: 45, baseType: !187, size: 128, offset: 192)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4875, file: !4876, line: 46, baseType: !187, size: 128, offset: 320)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4875, file: !4876, line: 47, baseType: !228, size: 8, offset: 448)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !176, file: !50, line: 776, baseType: !65, size: 32, offset: 5120)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !176, file: !50, line: 778, baseType: !506, size: 32, offset: 5152)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !176, file: !50, line: 779, baseType: !419, size: 32, offset: 5184)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !176, file: !50, line: 781, baseType: !200, size: 32, offset: 5216)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !176, file: !50, line: 782, baseType: !187, size: 128, offset: 5248)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !176, file: !50, line: 784, baseType: !4983, size: 64, offset: 5376)
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4985)
!4985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4986, line: 52, size: 768, elements: !4987)
!4986 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4987 = !{!4988, !4989, !4990, !4991, !4992, !4996, !5000, !5001, !5002, !5003, !5007, !5011}
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4985, file: !4986, line: 53, baseType: !183, size: 64)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4985, file: !4986, line: 55, baseType: !322, size: 64, offset: 64)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4985, file: !4986, line: 56, baseType: !322, size: 64, offset: 128)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4985, file: !4986, line: 58, baseType: !4602, size: 64, offset: 192)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4985, file: !4986, line: 59, baseType: !4993, size: 64, offset: 256)
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DISubroutineType(types: !4995)
!4995 = !{!270, !4605, !4611}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4985, file: !4986, line: 61, baseType: !4997, size: 64, offset: 320)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{null, !4983}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4985, file: !4986, line: 62, baseType: !4613, size: 64, offset: 384)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4985, file: !4986, line: 64, baseType: !4622, size: 64, offset: 448)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4985, file: !4986, line: 66, baseType: !4458, size: 64, offset: 512)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4985, file: !4986, line: 67, baseType: !5004, size: 64, offset: 576)
!5004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5005, size: 64)
!5005 = !DISubroutineType(types: !5006)
!5006 = !{!1600, !4605}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4985, file: !4986, line: 69, baseType: !5008, size: 64, offset: 640)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !4605, !4490, !4491}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4985, file: !4986, line: 71, baseType: !4617, size: 64, offset: 704)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !176, file: !50, line: 785, baseType: !322, size: 64, offset: 5440)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !176, file: !50, line: 787, baseType: !4613, size: 64, offset: 5504)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !176, file: !50, line: 788, baseType: !5015, size: 64, offset: 5568)
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !50, line: 46, flags: DIFlagFwdDecl)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !176, file: !50, line: 789, baseType: !5018, size: 64, offset: 5632)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !50, line: 48, flags: DIFlagFwdDecl)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !176, file: !50, line: 791, baseType: !5021, size: 64, offset: 5696)
!5021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5022, size: 64)
!5022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !50, line: 597, size: 128, elements: !5023)
!5023 = !{!5024, !5025, !5026, !5027, !5028}
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !5022, file: !50, line: 598, baseType: !72, size: 32)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !5022, file: !50, line: 599, baseType: !81, size: 32, offset: 32)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !5022, file: !50, line: 600, baseType: !86, size: 32, offset: 64)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !5022, file: !50, line: 601, baseType: !691, size: 8, offset: 96)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !5022, file: !50, line: 602, baseType: !691, size: 8, offset: 104)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !176, file: !50, line: 793, baseType: !91, size: 32, offset: 5760)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !176, file: !50, line: 795, baseType: !691, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !176, file: !50, line: 796, baseType: !691, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !176, file: !50, line: 797, baseType: !691, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !176, file: !50, line: 798, baseType: !691, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !176, file: !50, line: 799, baseType: !691, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "port_ida", scope: !172, file: !173, line: 19, baseType: !5036, size: 128, offset: 5824)
!5036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !5037, line: 246, size: 128, elements: !5038)
!5037 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!5038 = !{!5039}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !5036, file: !5037, line: 247, baseType: !4210, size: 128)
!5040 = !DIDerivedType(tag: DW_TAG_typedef, name: "xa_mark_t", file: !163, line: 250, baseType: !7)
!5041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5042, size: 64)
!5042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_port_device", file: !173, line: 22, size: 5952, elements: !5043)
!5043 = !{!5044, !5045, !5301}
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5042, file: !173, line: 23, baseType: !176, size: 5824)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5042, file: !173, line: 24, baseType: !5046, size: 64, offset: 5824)
!5046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5047, size: 64)
!5047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_port", file: !142, line: 429, size: 4224, elements: !5048)
!5048 = !{!5049, !5050, !5051, !5052, !5056, !5060, !5064, !5068, !5072, !5076, !5080, !5084, !5088, !5092, !5093, !5094, !5095, !5099, !5100, !5126, !5139, !5140, !5141, !5142, !5143, !5144, !5145, !5146, !5147, !5148, !5149, !5150, !5151, !5167, !5181, !5222, !5224, !5226, !5227, !5228, !5229, !5230, !5274, !5275, !5276, !5277, !5279, !5280, !5281, !5282, !5283, !5284, !5285, !5286, !5287, !5288, !5289, !5290, !5292, !5293, !5294, !5295, !5298, !5299, !5300}
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5047, file: !142, line: 430, baseType: !200, size: 32)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "iobase", scope: !5047, file: !142, line: 431, baseType: !320, size: 64, offset: 64)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !5047, file: !142, line: 432, baseType: !2979, size: 64, offset: 128)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "serial_in", scope: !5047, file: !142, line: 433, baseType: !5053, size: 64, offset: 192)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!7, !5046, !65}
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "serial_out", scope: !5047, file: !142, line: 434, baseType: !5057, size: 64, offset: 256)
!5057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5058 = !DISubroutineType(types: !5059)
!5059 = !{null, !5046, !65, !65}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !5047, file: !142, line: 435, baseType: !5061, size: 64, offset: 320)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = !DISubroutineType(types: !5063)
!5063 = !{null, !5046, !3013, !3071}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !5047, file: !142, line: 438, baseType: !5065, size: 64, offset: 384)
!5065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5066, size: 64)
!5066 = !DISubroutineType(types: !5067)
!5067 = !{null, !5046, !3013}
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "get_mctrl", scope: !5047, file: !142, line: 440, baseType: !5069, size: 64, offset: 448)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DISubroutineType(types: !5071)
!5071 = !{!7, !5046}
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "set_mctrl", scope: !5047, file: !142, line: 441, baseType: !5073, size: 64, offset: 512)
!5073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5074, size: 64)
!5074 = !DISubroutineType(types: !5075)
!5075 = !{null, !5046, !7}
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "get_divisor", scope: !5047, file: !142, line: 442, baseType: !5077, size: 64, offset: 576)
!5077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5078, size: 64)
!5078 = !DISubroutineType(types: !5079)
!5079 = !{!7, !5046, !7, !683}
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "set_divisor", scope: !5047, file: !142, line: 445, baseType: !5081, size: 64, offset: 640)
!5081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5082, size: 64)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{null, !5046, !7, !7, !7}
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5047, file: !142, line: 449, baseType: !5085, size: 64, offset: 704)
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5086, size: 64)
!5086 = !DISubroutineType(types: !5087)
!5087 = !{!65, !5046}
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5047, file: !142, line: 450, baseType: !5089, size: 64, offset: 768)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{null, !5046}
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !5047, file: !142, line: 451, baseType: !5089, size: 64, offset: 832)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !5047, file: !142, line: 452, baseType: !5089, size: 64, offset: 896)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "handle_irq", scope: !5047, file: !142, line: 453, baseType: !5085, size: 64, offset: 960)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5047, file: !142, line: 454, baseType: !5096, size: 64, offset: 1024)
!5096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5097, size: 64)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{null, !5046, !7, !7}
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "handle_break", scope: !5047, file: !142, line: 456, baseType: !5089, size: 64, offset: 1088)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_config", scope: !5047, file: !142, line: 457, baseType: !5101, size: 64, offset: 1152)
!5101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5102, size: 64)
!5102 = !DISubroutineType(types: !5103)
!5103 = !{!65, !5046, !3013, !5104}
!5104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_rs485", file: !3119, line: 141, size: 256, elements: !5106)
!5106 = !{!5107, !5108, !5109, !5110}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5105, file: !3119, line: 142, baseType: !420, size: 32)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "delay_rts_before_send", scope: !5105, file: !3119, line: 152, baseType: !420, size: 32, offset: 32)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "delay_rts_after_send", scope: !5105, file: !3119, line: 153, baseType: !420, size: 32, offset: 64)
!5110 = !DIDerivedType(tag: DW_TAG_member, scope: !5105, file: !3119, line: 156, baseType: !5111, size: 160, offset: 96)
!5111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5105, file: !3119, line: 156, size: 160, elements: !5112)
!5112 = !{!5113, !5117}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !5111, file: !3119, line: 157, baseType: !5114, size: 160)
!5114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 160, elements: !5115)
!5115 = !{!5116}
!5116 = !DISubrange(count: 5)
!5117 = !DIDerivedType(tag: DW_TAG_member, scope: !5111, file: !3119, line: 159, baseType: !5118, size: 160)
!5118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5111, file: !3119, line: 159, size: 160, elements: !5119)
!5119 = !{!5120, !5121, !5122, !5124}
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "addr_recv", scope: !5118, file: !3119, line: 160, baseType: !230, size: 8)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "addr_dest", scope: !5118, file: !3119, line: 161, baseType: !230, size: 8, offset: 8)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "padding0", scope: !5118, file: !3119, line: 162, baseType: !5123, size: 16, offset: 16)
!5123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 16, elements: !730)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !5118, file: !3119, line: 163, baseType: !5125, size: 128, offset: 32)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 128, elements: !841)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "iso7816_config", scope: !5047, file: !142, line: 460, baseType: !5127, size: 64, offset: 1216)
!5127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5128, size: 64)
!5128 = !DISubroutineType(types: !5129)
!5129 = !{!65, !5046, !5130}
!5130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5131, size: 64)
!5131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serial_iso7816", file: !3119, line: 173, size: 320, elements: !5132)
!5132 = !{!5133, !5134, !5135, !5136, !5137, !5138}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5131, file: !3119, line: 174, baseType: !420, size: 32)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "tg", scope: !5131, file: !3119, line: 178, baseType: !420, size: 32, offset: 32)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "sc_fi", scope: !5131, file: !3119, line: 179, baseType: !420, size: 32, offset: 64)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "sc_di", scope: !5131, file: !3119, line: 180, baseType: !420, size: 32, offset: 96)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !5131, file: !3119, line: 181, baseType: !420, size: 32, offset: 128)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5131, file: !3119, line: 182, baseType: !5114, size: 160, offset: 160)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "ctrl_id", scope: !5047, file: !142, line: 462, baseType: !7, size: 32, offset: 1280)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "port_id", scope: !5047, file: !142, line: 463, baseType: !7, size: 32, offset: 1312)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !5047, file: !142, line: 464, baseType: !7, size: 32, offset: 1344)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "irqflags", scope: !5047, file: !142, line: 465, baseType: !320, size: 64, offset: 1408)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "uartclk", scope: !5047, file: !142, line: 466, baseType: !7, size: 32, offset: 1472)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "fifosize", scope: !5047, file: !142, line: 467, baseType: !7, size: 32, offset: 1504)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "x_char", scope: !5047, file: !142, line: 468, baseType: !232, size: 8, offset: 1536)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "regshift", scope: !5047, file: !142, line: 469, baseType: !232, size: 8, offset: 1544)
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "iotype", scope: !5047, file: !142, line: 470, baseType: !232, size: 8, offset: 1552)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5047, file: !142, line: 471, baseType: !232, size: 8, offset: 1560)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "read_status_mask", scope: !5047, file: !142, line: 486, baseType: !7, size: 32, offset: 1568)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_status_mask", scope: !5047, file: !142, line: 487, baseType: !7, size: 32, offset: 1600)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5047, file: !142, line: 488, baseType: !5152, size: 64, offset: 1664)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_state", file: !142, line: 696, size: 3520, elements: !5154)
!5154 = !{!5155, !5156, !5157, !5164, !5165, !5166}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !5153, file: !142, line: 697, baseType: !2893, size: 3008)
!5156 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !5153, file: !142, line: 699, baseType: !141, size: 32, offset: 3008)
!5157 = !DIDerivedType(tag: DW_TAG_member, name: "xmit", scope: !5153, file: !142, line: 700, baseType: !5158, size: 128, offset: 3072)
!5158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "circ_buf", file: !5159, line: 9, size: 128, elements: !5160)
!5159 = !DIFile(filename: "./include/linux/circ_buf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ea81da8e7df25fef7fa0e14fc05af1cc")
!5160 = !{!5161, !5162, !5163}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !5158, file: !5159, line: 10, baseType: !270, size: 64)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5158, file: !5159, line: 11, baseType: !65, size: 32, offset: 64)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5158, file: !5159, line: 12, baseType: !65, size: 32, offset: 96)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5153, file: !142, line: 702, baseType: !220, size: 32, offset: 3200)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "remove_wait", scope: !5153, file: !142, line: 703, baseType: !1151, size: 192, offset: 3264)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "uart_port", scope: !5153, file: !142, line: 704, baseType: !5046, size: 64, offset: 3456)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "icount", scope: !5047, file: !142, line: 489, baseType: !5168, size: 352, offset: 1728)
!5168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_icount", file: !142, line: 412, size: 352, elements: !5169)
!5169 = !{!5170, !5171, !5172, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180}
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "cts", scope: !5168, file: !142, line: 413, baseType: !420, size: 32)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "dsr", scope: !5168, file: !142, line: 414, baseType: !420, size: 32, offset: 32)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "rng", scope: !5168, file: !142, line: 415, baseType: !420, size: 32, offset: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "dcd", scope: !5168, file: !142, line: 416, baseType: !420, size: 32, offset: 96)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "rx", scope: !5168, file: !142, line: 417, baseType: !420, size: 32, offset: 128)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "tx", scope: !5168, file: !142, line: 418, baseType: !420, size: 32, offset: 160)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5168, file: !142, line: 419, baseType: !420, size: 32, offset: 192)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "overrun", scope: !5168, file: !142, line: 420, baseType: !420, size: 32, offset: 224)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !5168, file: !142, line: 421, baseType: !420, size: 32, offset: 256)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !5168, file: !142, line: 422, baseType: !420, size: 32, offset: 288)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "buf_overrun", scope: !5168, file: !142, line: 423, baseType: !420, size: 32, offset: 320)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "cons", scope: !5047, file: !142, line: 491, baseType: !5182, size: 64, offset: 2112)
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "console", file: !5184, line: 191, size: 1024, elements: !5185)
!5184 = !DIFile(filename: "./include/linux/console.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d83301157f54621331b27ae09c0fe11")
!5185 = !{!5186, !5187, !5191, !5195, !5199, !5200, !5204, !5208, !5212, !5213, !5214, !5215, !5217, !5218, !5219, !5220, !5221}
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5183, file: !5184, line: 192, baseType: !2727, size: 128)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5183, file: !5184, line: 193, baseType: !5188, size: 64, offset: 128)
!5188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5189, size: 64)
!5189 = !DISubroutineType(types: !5190)
!5190 = !{null, !5182, !183, !7}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5183, file: !5184, line: 194, baseType: !5192, size: 64, offset: 192)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!65, !5182, !270, !7}
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !5183, file: !5184, line: 195, baseType: !5196, size: 64, offset: 256)
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DISubroutineType(types: !5198)
!5198 = !{!2837, !5182, !740}
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "unblank", scope: !5183, file: !5184, line: 196, baseType: !975, size: 64, offset: 320)
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5183, file: !5184, line: 197, baseType: !5201, size: 64, offset: 384)
!5201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5202, size: 64)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!65, !5182, !270}
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !5183, file: !5184, line: 198, baseType: !5205, size: 64, offset: 448)
!5205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5206, size: 64)
!5206 = !DISubroutineType(types: !5207)
!5207 = !{!65, !5182}
!5208 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !5183, file: !5184, line: 199, baseType: !5209, size: 64, offset: 512)
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{!65, !5182, !270, !65, !270}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5183, file: !5184, line: 200, baseType: !749, size: 16, offset: 576)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5183, file: !5184, line: 201, baseType: !749, size: 16, offset: 592)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "cflag", scope: !5183, file: !5184, line: 202, baseType: !65, size: 32, offset: 608)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "ispeed", scope: !5183, file: !5184, line: 203, baseType: !5216, size: 32, offset: 640)
!5216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !169, line: 93, baseType: !7)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "ospeed", scope: !5183, file: !5184, line: 204, baseType: !5216, size: 32, offset: 672)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !5183, file: !5184, line: 205, baseType: !423, size: 64, offset: 704)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "dropped", scope: !5183, file: !5184, line: 206, baseType: !320, size: 64, offset: 768)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5183, file: !5184, line: 207, baseType: !170, size: 64, offset: 832)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5183, file: !5184, line: 208, baseType: !857, size: 128, offset: 896)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5047, file: !142, line: 493, baseType: !5223, size: 64, offset: 2176)
!5223 = !DIDerivedType(tag: DW_TAG_typedef, name: "upf_t", file: !142, line: 426, baseType: !423)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5047, file: !142, line: 551, baseType: !5225, size: 32, offset: 2240)
!5225 = !DIDerivedType(tag: DW_TAG_typedef, name: "upstat_t", file: !142, line: 427, baseType: !7)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "hw_stopped", scope: !5047, file: !142, line: 560, baseType: !691, size: 8, offset: 2272)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "mctrl", scope: !5047, file: !142, line: 561, baseType: !7, size: 32, offset: 2304)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "frame_time", scope: !5047, file: !142, line: 562, baseType: !7, size: 32, offset: 2336)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5047, file: !142, line: 563, baseType: !7, size: 32, offset: 2368)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5047, file: !142, line: 564, baseType: !5231, size: 64, offset: 2432)
!5231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5232, size: 64)
!5232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5233)
!5233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uart_ops", file: !142, line: 374, size: 1536, elements: !5234)
!5234 = !{!5235, !5236, !5237, !5238, !5239, !5240, !5241, !5242, !5246, !5247, !5248, !5249, !5253, !5254, !5255, !5256, !5257, !5258, !5259, !5263, !5264, !5265, !5266, !5270}
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "tx_empty", scope: !5233, file: !142, line: 375, baseType: !5069, size: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "set_mctrl", scope: !5233, file: !142, line: 376, baseType: !5073, size: 64, offset: 64)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "get_mctrl", scope: !5233, file: !142, line: 377, baseType: !5069, size: 64, offset: 128)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "stop_tx", scope: !5233, file: !142, line: 378, baseType: !5089, size: 64, offset: 192)
!5239 = !DIDerivedType(tag: DW_TAG_member, name: "start_tx", scope: !5233, file: !142, line: 379, baseType: !5089, size: 64, offset: 256)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !5233, file: !142, line: 380, baseType: !5089, size: 64, offset: 320)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "unthrottle", scope: !5233, file: !142, line: 381, baseType: !5089, size: 64, offset: 384)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "send_xchar", scope: !5233, file: !142, line: 382, baseType: !5243, size: 64, offset: 448)
!5243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5244, size: 64)
!5244 = !DISubroutineType(types: !5245)
!5245 = !{null, !5046, !185}
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "stop_rx", scope: !5233, file: !142, line: 383, baseType: !5089, size: 64, offset: 512)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "start_rx", scope: !5233, file: !142, line: 384, baseType: !5089, size: 64, offset: 576)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "enable_ms", scope: !5233, file: !142, line: 385, baseType: !5089, size: 64, offset: 640)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "break_ctl", scope: !5233, file: !142, line: 386, baseType: !5250, size: 64, offset: 704)
!5250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5251, size: 64)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{null, !5046, !65}
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !5233, file: !142, line: 387, baseType: !5085, size: 64, offset: 768)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !5233, file: !142, line: 388, baseType: !5089, size: 64, offset: 832)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "flush_buffer", scope: !5233, file: !142, line: 389, baseType: !5089, size: 64, offset: 896)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "set_termios", scope: !5233, file: !142, line: 390, baseType: !5061, size: 64, offset: 960)
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "set_ldisc", scope: !5233, file: !142, line: 392, baseType: !5065, size: 64, offset: 1024)
!5258 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !5233, file: !142, line: 393, baseType: !5096, size: 64, offset: 1088)
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5233, file: !142, line: 395, baseType: !5260, size: 64, offset: 1152)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!183, !5046}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "release_port", scope: !5233, file: !142, line: 396, baseType: !5089, size: 64, offset: 1216)
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "request_port", scope: !5233, file: !142, line: 397, baseType: !5085, size: 64, offset: 1280)
!5265 = !DIDerivedType(tag: DW_TAG_member, name: "config_port", scope: !5233, file: !142, line: 398, baseType: !5250, size: 64, offset: 1344)
!5266 = !DIDerivedType(tag: DW_TAG_member, name: "verify_port", scope: !5233, file: !142, line: 399, baseType: !5267, size: 64, offset: 1408)
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5268, size: 64)
!5268 = !DISubroutineType(types: !5269)
!5269 = !{!65, !5046, !3140}
!5270 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !5233, file: !142, line: 400, baseType: !5271, size: 64, offset: 1472)
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = !DISubroutineType(types: !5273)
!5273 = !{!65, !5046, !7, !320}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "custom_divisor", scope: !5047, file: !142, line: 565, baseType: !7, size: 32, offset: 2496)
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5047, file: !142, line: 566, baseType: !7, size: 32, offset: 2528)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !5047, file: !142, line: 567, baseType: !7, size: 32, offset: 2560)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "mapbase", scope: !5047, file: !142, line: 568, baseType: !5278, size: 64, offset: 2624)
!5278 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !169, line: 164, baseType: !3709)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "mapsize", scope: !5047, file: !142, line: 569, baseType: !5278, size: 64, offset: 2688)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5047, file: !142, line: 570, baseType: !2835, size: 64, offset: 2752)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "port_dev", scope: !5047, file: !142, line: 571, baseType: !5041, size: 64, offset: 2816)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "sysrq", scope: !5047, file: !142, line: 573, baseType: !320, size: 64, offset: 2880)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "sysrq_ch", scope: !5047, file: !142, line: 574, baseType: !228, size: 8, offset: 2944)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "has_sysrq", scope: !5047, file: !142, line: 575, baseType: !232, size: 8, offset: 2952)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "sysrq_seq", scope: !5047, file: !142, line: 576, baseType: !232, size: 8, offset: 2960)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "hub6", scope: !5047, file: !142, line: 578, baseType: !232, size: 8, offset: 2968)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !5047, file: !142, line: 579, baseType: !232, size: 8, offset: 2976)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "console_reinit", scope: !5047, file: !142, line: 580, baseType: !232, size: 8, offset: 2984)
!5289 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5047, file: !142, line: 581, baseType: !183, size: 64, offset: 3008)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "attr_group", scope: !5047, file: !142, line: 582, baseType: !5291, size: 64, offset: 3072)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "tty_groups", scope: !5047, file: !142, line: 583, baseType: !322, size: 64, offset: 3136)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "rs485", scope: !5047, file: !142, line: 584, baseType: !5105, size: 256, offset: 3200)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_supported", scope: !5047, file: !142, line: 585, baseType: !5105, size: 256, offset: 3456)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_term_gpio", scope: !5047, file: !142, line: 586, baseType: !5296, size: 64, offset: 3712)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !142, line: 33, flags: DIFlagFwdDecl)
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "rs485_rx_during_tx_gpio", scope: !5047, file: !142, line: 587, baseType: !5296, size: 64, offset: 3776)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "iso7816", scope: !5047, file: !142, line: 588, baseType: !5131, size: 320, offset: 3840)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !5047, file: !142, line: 589, baseType: !170, size: 64, offset: 4160)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "tx_enabled", scope: !5042, file: !173, line: 25, baseType: !7, size: 1, offset: 5888, flags: DIFlagBitField, extraData: i64 5888)
!5302 = !{!5303, !5305, !5309, !5312, !5317, !5322, !5327, !0, !5330, !5335, !5337, !5340, !5342, !5345, !5347, !5349}
!5303 = !DIGlobalVariableExpression(var: !5304, expr: !DIExpression())
!5304 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_serial_base__292_235_serial_base_init3293", scope: !2, file: !3, line: 235, type: !170, isLocal: true, isDefinition: true)
!5305 = !DIGlobalVariableExpression(var: !5306, expr: !DIExpression())
!5306 = distinct !DIGlobalVariable(name: "__exitcall_serial_base_exit", scope: !2, file: !3, line: 243, type: !5307, isLocal: true, isDefinition: true)
!5307 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !5308, line: 120, baseType: !975)
!5308 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!5309 = !DIGlobalVariableExpression(var: !5310, expr: !DIExpression())
!5310 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author294", scope: !2, file: !3, line: 245, type: !5311, isLocal: true, isDefinition: true, align: 8)
!5311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 416, elements: !1565)
!5312 = !DIGlobalVariableExpression(var: !5313, expr: !DIExpression())
!5313 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description295", scope: !2, file: !3, line: 246, type: !5314, isLocal: true, isDefinition: true, align: 8)
!5314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 320, elements: !5315)
!5315 = !{!5316}
!5316 = !DISubrange(count: 40)
!5317 = !DIGlobalVariableExpression(var: !5318, expr: !DIExpression())
!5318 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file296", scope: !2, file: !3, line: 247, type: !5319, isLocal: true, isDefinition: true, align: 8)
!5319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 384, elements: !5320)
!5320 = !{!5321}
!5321 = !DISubrange(count: 48)
!5322 = !DIGlobalVariableExpression(var: !5323, expr: !DIExpression())
!5323 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license297", scope: !2, file: !3, line: 247, type: !5324, isLocal: true, isDefinition: true, align: 8)
!5324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 192, elements: !5325)
!5325 = !{!5326}
!5326 = !DISubrange(count: 24)
!5327 = !DIGlobalVariableExpression(var: !5328, expr: !DIExpression())
!5328 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !5329, isLocal: true, isDefinition: true)
!5329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 96, elements: !3835)
!5330 = !DIGlobalVariableExpression(var: !5331, expr: !DIExpression())
!5331 = distinct !DIGlobalVariable(scope: null, file: !153, line: 480, type: !5332, isLocal: true, isDefinition: true)
!5332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 168, elements: !5333)
!5333 = !{!5334}
!5334 = !DISubrange(count: 21)
!5335 = !DIGlobalVariableExpression(var: !5336, expr: !DIExpression())
!5336 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !1258, isLocal: true, isDefinition: true)
!5337 = !DIGlobalVariableExpression(var: !5338, expr: !DIExpression())
!5338 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !5339, isLocal: true, isDefinition: true)
!5339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 72, elements: !3134)
!5340 = !DIGlobalVariableExpression(var: !5341, expr: !DIExpression())
!5341 = distinct !DIGlobalVariable(name: "serial_base_initialized", scope: !2, file: !3, line: 21, type: !691, isLocal: true, isDefinition: true)
!5342 = !DIGlobalVariableExpression(var: !5343, expr: !DIExpression())
!5343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !5344, isLocal: true, isDefinition: true)
!5344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 40, elements: !5115)
!5345 = !DIGlobalVariableExpression(var: !5346, expr: !DIExpression())
!5346 = distinct !DIGlobalVariable(name: "serial_ctrl_type", scope: !2, file: !3, line: 23, type: !4596, isLocal: true, isDefinition: true)
!5347 = !DIGlobalVariableExpression(var: !5348, expr: !DIExpression())
!5348 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !5344, isLocal: true, isDefinition: true)
!5349 = !DIGlobalVariableExpression(var: !5350, expr: !DIExpression())
!5350 = distinct !DIGlobalVariable(name: "serial_port_type", scope: !2, file: !3, line: 27, type: !4596, isLocal: true, isDefinition: true)
!5351 = !{i32 7, !"Dwarf Version", i32 5}
!5352 = !{i32 2, !"Debug Info Version", i32 3}
!5353 = !{i32 1, !"wchar_size", i32 2}
!5354 = !{i32 8, !"cf-protection-branch", i32 1}
!5355 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5356 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5357 = !{i32 1, !"Code Model", i32 2}
!5358 = !{i32 1, !"override-stack-alignment", i32 8}
!5359 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5360 = distinct !DISubprogram(name: "serial_base_driver_register", scope: !3, file: !3, line: 49, type: !5361, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5363)
!5361 = !DISubroutineType(types: !5362)
!5362 = !{!65, !4662}
!5363 = !{!5364}
!5364 = !DILocalVariable(name: "driver", arg: 1, scope: !5360, file: !3, line: 49, type: !4662)
!5365 = !DILocation(line: 49, column: 55, scope: !5360)
!5366 = !DILocation(line: 51, column: 2, scope: !5360)
!5367 = !DILocation(line: 51, column: 10, scope: !5360)
!5368 = !DILocation(line: 51, column: 14, scope: !5360)
!5369 = !DILocation(line: 53, column: 25, scope: !5360)
!5370 = !DILocation(line: 53, column: 9, scope: !5360)
!5371 = !DILocation(line: 53, column: 2, scope: !5360)
!5372 = !DISubprogram(name: "driver_register", scope: !136, file: !136, line: 125, type: !5361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5373 = distinct !DISubprogram(name: "serial_base_driver_unregister", scope: !3, file: !3, line: 56, type: !5374, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5376)
!5374 = !DISubroutineType(types: !5375)
!5375 = !{null, !4662}
!5376 = !{!5377}
!5377 = !DILocalVariable(name: "driver", arg: 1, scope: !5373, file: !3, line: 56, type: !4662)
!5378 = !DILocation(line: 56, column: 58, scope: !5373)
!5379 = !DILocation(line: 58, column: 20, scope: !5373)
!5380 = !DILocation(line: 58, column: 2, scope: !5373)
!5381 = !DILocation(line: 59, column: 1, scope: !5373)
!5382 = !DISubprogram(name: "driver_unregister", scope: !136, file: !136, line: 126, type: !5374, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5383 = distinct !DISubprogram(name: "serial_base_ctrl_device_remove", scope: !3, file: !3, line: 97, type: !5384, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5386)
!5384 = !DISubroutineType(types: !5385)
!5385 = !{null, !171}
!5386 = !{!5387}
!5387 = !DILocalVariable(name: "ctrl_dev", arg: 1, scope: !5383, file: !3, line: 97, type: !171)
!5388 = !DILocation(line: 97, column: 64, scope: !5383)
!5389 = !DILocation(line: 99, column: 7, scope: !5390)
!5390 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 99, column: 6)
!5391 = !DILocation(line: 99, column: 6, scope: !5383)
!5392 = !DILocation(line: 100, column: 3, scope: !5390)
!5393 = !DILocation(line: 102, column: 14, scope: !5383)
!5394 = !DILocation(line: 102, column: 24, scope: !5383)
!5395 = !DILocation(line: 102, column: 2, scope: !5383)
!5396 = !DILocation(line: 103, column: 14, scope: !5383)
!5397 = !DILocation(line: 103, column: 24, scope: !5383)
!5398 = !DILocation(line: 103, column: 2, scope: !5383)
!5399 = !DILocation(line: 104, column: 1, scope: !5383)
!5400 = !DISubprogram(name: "device_del", scope: !50, file: !50, line: 1058, type: !4614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5401 = !DISubprogram(name: "put_device", scope: !50, file: !50, line: 1231, type: !4614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5402 = distinct !DISubprogram(name: "serial_base_ctrl_add", scope: !3, file: !3, line: 106, type: !5403, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5405)
!5403 = !DISubroutineType(types: !5404)
!5404 = !{!171, !5046, !2835}
!5405 = !{!5406, !5407, !5408, !5409, !5410}
!5406 = !DILocalVariable(name: "port", arg: 1, scope: !5402, file: !3, line: 106, type: !5046)
!5407 = !DILocalVariable(name: "parent", arg: 2, scope: !5402, file: !3, line: 107, type: !2835)
!5408 = !DILocalVariable(name: "ctrl_dev", scope: !5402, file: !3, line: 109, type: !171)
!5409 = !DILocalVariable(name: "err", scope: !5402, file: !3, line: 110, type: !65)
!5410 = !DILabel(scope: !5402, name: "err_put_device", file: !3, line: 131)
!5411 = !DILocation(line: 106, column: 67, scope: !5402)
!5412 = !DILocation(line: 107, column: 22, scope: !5402)
!5413 = !DILocation(line: 109, column: 2, scope: !5402)
!5414 = !DILocation(line: 109, column: 29, scope: !5402)
!5415 = !DILocation(line: 110, column: 2, scope: !5402)
!5416 = !DILocation(line: 110, column: 6, scope: !5402)
!5417 = !DILocation(line: 112, column: 13, scope: !5402)
!5418 = !DILocation(line: 112, column: 11, scope: !5402)
!5419 = !DILocation(line: 113, column: 7, scope: !5420)
!5420 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 113, column: 6)
!5421 = !DILocation(line: 113, column: 6, scope: !5402)
!5422 = !DILocation(line: 114, column: 10, scope: !5420)
!5423 = !DILocation(line: 114, column: 3, scope: !5420)
!5424 = !DILocation(line: 116, column: 12, scope: !5402)
!5425 = !DILocation(line: 116, column: 22, scope: !5402)
!5426 = !DILocation(line: 116, column: 2, scope: !5402)
!5427 = !DILocation(line: 118, column: 32, scope: !5402)
!5428 = !DILocation(line: 118, column: 39, scope: !5402)
!5429 = !DILocation(line: 118, column: 49, scope: !5402)
!5430 = !DILocation(line: 119, column: 11, scope: !5402)
!5431 = !DILocation(line: 121, column: 11, scope: !5402)
!5432 = !DILocation(line: 121, column: 17, scope: !5402)
!5433 = !DILocation(line: 118, column: 8, scope: !5402)
!5434 = !DILocation(line: 118, column: 6, scope: !5402)
!5435 = !DILocation(line: 122, column: 6, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 122, column: 6)
!5437 = !DILocation(line: 122, column: 6, scope: !5402)
!5438 = !DILocation(line: 123, column: 3, scope: !5436)
!5439 = !DILocation(line: 125, column: 20, scope: !5402)
!5440 = !DILocation(line: 125, column: 30, scope: !5402)
!5441 = !DILocation(line: 125, column: 8, scope: !5402)
!5442 = !DILocation(line: 125, column: 6, scope: !5402)
!5443 = !DILocation(line: 126, column: 6, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 126, column: 6)
!5445 = !DILocation(line: 126, column: 6, scope: !5402)
!5446 = !DILocation(line: 127, column: 3, scope: !5444)
!5447 = !DILocation(line: 129, column: 9, scope: !5402)
!5448 = !DILocation(line: 129, column: 2, scope: !5402)
!5449 = !DILocation(line: 131, column: 1, scope: !5402)
!5450 = !DILocation(line: 132, column: 14, scope: !5402)
!5451 = !DILocation(line: 132, column: 24, scope: !5402)
!5452 = !DILocation(line: 132, column: 2, scope: !5402)
!5453 = !DILocation(line: 134, column: 17, scope: !5402)
!5454 = !DILocation(line: 134, column: 9, scope: !5402)
!5455 = !DILocation(line: 134, column: 2, scope: !5402)
!5456 = !DILocation(line: 135, column: 1, scope: !5402)
!5457 = distinct !DISubprogram(name: "kzalloc", scope: !153, file: !153, line: 719, type: !5458, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5460)
!5458 = !DISubroutineType(types: !5459)
!5459 = !{!170, !317, !168}
!5460 = !{!5461, !5462}
!5461 = !DILocalVariable(name: "size", arg: 1, scope: !5457, file: !153, line: 719, type: !317)
!5462 = !DILocalVariable(name: "flags", arg: 2, scope: !5457, file: !153, line: 719, type: !168)
!5463 = !DILocation(line: 719, column: 52, scope: !5457)
!5464 = !DILocation(line: 719, column: 64, scope: !5457)
!5465 = !DILocation(line: 721, column: 17, scope: !5457)
!5466 = !DILocation(line: 721, column: 23, scope: !5457)
!5467 = !DILocation(line: 721, column: 29, scope: !5457)
!5468 = !DILocation(line: 721, column: 9, scope: !5457)
!5469 = !DILocation(line: 721, column: 2, scope: !5457)
!5470 = distinct !DISubprogram(name: "ERR_PTR", scope: !5471, file: !5471, line: 39, type: !5472, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5471 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!5472 = !DISubroutineType(types: !5473)
!5473 = !{!170, !306}
!5474 = !{!5475}
!5475 = !DILocalVariable(name: "error", arg: 1, scope: !5470, file: !5471, line: 39, type: !306)
!5476 = !DILocation(line: 39, column: 48, scope: !5470)
!5477 = !DILocation(line: 41, column: 18, scope: !5470)
!5478 = !DILocation(line: 41, column: 9, scope: !5470)
!5479 = !DILocation(line: 41, column: 2, scope: !5470)
!5480 = distinct !DISubprogram(name: "ida_init", scope: !5037, file: !5037, line: 314, type: !5481, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5484)
!5481 = !DISubroutineType(types: !5482)
!5482 = !{null, !5483}
!5483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5036, size: 64)
!5484 = !{!5485}
!5485 = !DILocalVariable(name: "ida", arg: 1, scope: !5480, file: !5037, line: 314, type: !5483)
!5486 = !DILocation(line: 314, column: 41, scope: !5480)
!5487 = !DILocation(line: 316, column: 17, scope: !5480)
!5488 = !DILocation(line: 316, column: 22, scope: !5480)
!5489 = !DILocation(line: 316, column: 2, scope: !5480)
!5490 = !DILocation(line: 317, column: 1, scope: !5480)
!5491 = distinct !DISubprogram(name: "serial_base_device_init", scope: !3, file: !3, line: 61, type: !5492, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5494)
!5492 = !DISubroutineType(types: !5493)
!5493 = !{!65, !5046, !2835, !2835, !4595, !4613, !7, !7}
!5494 = !{!5495, !5496, !5497, !5498, !5499, !5500, !5501}
!5495 = !DILocalVariable(name: "port", arg: 1, scope: !5491, file: !3, line: 61, type: !5046)
!5496 = !DILocalVariable(name: "dev", arg: 2, scope: !5491, file: !3, line: 62, type: !2835)
!5497 = !DILocalVariable(name: "parent_dev", arg: 3, scope: !5491, file: !3, line: 63, type: !2835)
!5498 = !DILocalVariable(name: "type", arg: 4, scope: !5491, file: !3, line: 64, type: !4595)
!5499 = !DILocalVariable(name: "release", arg: 5, scope: !5491, file: !3, line: 65, type: !4613)
!5500 = !DILocalVariable(name: "ctrl_id", arg: 6, scope: !5491, file: !3, line: 66, type: !7)
!5501 = !DILocalVariable(name: "port_id", arg: 7, scope: !5491, file: !3, line: 67, type: !7)
!5502 = !DILocation(line: 61, column: 54, scope: !5491)
!5503 = !DILocation(line: 62, column: 23, scope: !5491)
!5504 = !DILocation(line: 63, column: 23, scope: !5491)
!5505 = !DILocation(line: 64, column: 34, scope: !5491)
!5506 = !DILocation(line: 65, column: 15, scope: !5491)
!5507 = !DILocation(line: 66, column: 21, scope: !5491)
!5508 = !DILocation(line: 67, column: 21, scope: !5491)
!5509 = !DILocation(line: 69, column: 20, scope: !5491)
!5510 = !DILocation(line: 69, column: 2, scope: !5491)
!5511 = !DILocation(line: 70, column: 14, scope: !5491)
!5512 = !DILocation(line: 70, column: 2, scope: !5491)
!5513 = !DILocation(line: 70, column: 7, scope: !5491)
!5514 = !DILocation(line: 70, column: 12, scope: !5491)
!5515 = !DILocation(line: 71, column: 16, scope: !5491)
!5516 = !DILocation(line: 71, column: 2, scope: !5491)
!5517 = !DILocation(line: 71, column: 7, scope: !5491)
!5518 = !DILocation(line: 71, column: 14, scope: !5491)
!5519 = !DILocation(line: 72, column: 2, scope: !5491)
!5520 = !DILocation(line: 72, column: 7, scope: !5491)
!5521 = !DILocation(line: 72, column: 11, scope: !5491)
!5522 = !DILocation(line: 73, column: 17, scope: !5491)
!5523 = !DILocation(line: 73, column: 2, scope: !5491)
!5524 = !DILocation(line: 73, column: 7, scope: !5491)
!5525 = !DILocation(line: 73, column: 15, scope: !5491)
!5526 = !DILocation(line: 75, column: 7, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 75, column: 6)
!5528 = !{i8 0, i8 2}
!5529 = !DILocation(line: 75, column: 6, scope: !5491)
!5530 = !DILocation(line: 77, column: 3, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5527, file: !3, line: 75, column: 32)
!5532 = !DILocation(line: 80, column: 6, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 80, column: 6)
!5534 = !DILocation(line: 80, column: 11, scope: !5533)
!5535 = !DILocation(line: 80, column: 6, scope: !5491)
!5536 = !DILocation(line: 81, column: 23, scope: !5533)
!5537 = !DILocation(line: 81, column: 46, scope: !5533)
!5538 = !DILocation(line: 81, column: 52, scope: !5533)
!5539 = !DILocation(line: 81, column: 37, scope: !5533)
!5540 = !DILocation(line: 81, column: 58, scope: !5533)
!5541 = !DILocation(line: 81, column: 10, scope: !5533)
!5542 = !DILocation(line: 81, column: 3, scope: !5533)
!5543 = !DILocation(line: 83, column: 6, scope: !5544)
!5544 = distinct !DILexicalBlock(scope: !5491, file: !3, line: 83, column: 6)
!5545 = !DILocation(line: 83, column: 11, scope: !5544)
!5546 = !DILocation(line: 83, column: 6, scope: !5491)
!5547 = !DILocation(line: 84, column: 23, scope: !5544)
!5548 = !DILocation(line: 84, column: 49, scope: !5544)
!5549 = !DILocation(line: 84, column: 55, scope: !5544)
!5550 = !DILocation(line: 84, column: 40, scope: !5544)
!5551 = !DILocation(line: 85, column: 9, scope: !5544)
!5552 = !DILocation(line: 85, column: 18, scope: !5544)
!5553 = !DILocation(line: 84, column: 10, scope: !5544)
!5554 = !DILocation(line: 84, column: 3, scope: !5544)
!5555 = !DILocation(line: 87, column: 2, scope: !5491)
!5556 = !DILocation(line: 88, column: 1, scope: !5491)
!5557 = distinct !DISubprogram(name: "serial_base_ctrl_release", scope: !3, file: !3, line: 90, type: !4614, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5558)
!5558 = !{!5559, !5560, !5561}
!5559 = !DILocalVariable(name: "dev", arg: 1, scope: !5557, file: !3, line: 90, type: !2835)
!5560 = !DILocalVariable(name: "ctrl_dev", scope: !5557, file: !3, line: 92, type: !171)
!5561 = !DILocalVariable(name: "__mptr", scope: !5562, file: !3, line: 92, type: !170)
!5562 = distinct !DILexicalBlock(scope: !5557, file: !3, line: 92, column: 40)
!5563 = !DILocation(line: 90, column: 53, scope: !5557)
!5564 = !DILocation(line: 92, column: 2, scope: !5557)
!5565 = !DILocation(line: 92, column: 29, scope: !5557)
!5566 = !DILocation(line: 92, column: 40, scope: !5562)
!5567 = !DILocation(line: 92, column: 40, scope: !5557)
!5568 = !DILocation(line: 94, column: 8, scope: !5557)
!5569 = !DILocation(line: 94, column: 2, scope: !5557)
!5570 = !DILocation(line: 95, column: 1, scope: !5557)
!5571 = !DISubprogram(name: "device_add", scope: !50, file: !50, line: 1057, type: !4623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5572 = distinct !DISubprogram(name: "serial_base_port_add", scope: !3, file: !3, line: 144, type: !5573, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5575)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!5041, !5046, !171}
!5575 = !{!5576, !5577, !5578, !5579, !5580, !5581, !5582}
!5576 = !DILocalVariable(name: "port", arg: 1, scope: !5572, file: !3, line: 144, type: !5046)
!5577 = !DILocalVariable(name: "ctrl_dev", arg: 2, scope: !5572, file: !3, line: 145, type: !171)
!5578 = !DILocalVariable(name: "port_dev", scope: !5572, file: !3, line: 147, type: !5041)
!5579 = !DILocalVariable(name: "min", scope: !5572, file: !3, line: 148, type: !65)
!5580 = !DILocalVariable(name: "max", scope: !5572, file: !3, line: 148, type: !65)
!5581 = !DILocalVariable(name: "err", scope: !5572, file: !3, line: 149, type: !65)
!5582 = !DILabel(scope: !5572, name: "err_put_device", file: !3, line: 184)
!5583 = !DILocation(line: 144, column: 67, scope: !5572)
!5584 = !DILocation(line: 145, column: 34, scope: !5572)
!5585 = !DILocation(line: 147, column: 2, scope: !5572)
!5586 = !DILocation(line: 147, column: 29, scope: !5572)
!5587 = !DILocation(line: 148, column: 2, scope: !5572)
!5588 = !DILocation(line: 148, column: 6, scope: !5572)
!5589 = !DILocation(line: 148, column: 15, scope: !5572)
!5590 = !DILocation(line: 149, column: 2, scope: !5572)
!5591 = !DILocation(line: 149, column: 6, scope: !5572)
!5592 = !DILocation(line: 151, column: 13, scope: !5572)
!5593 = !DILocation(line: 151, column: 11, scope: !5572)
!5594 = !DILocation(line: 152, column: 7, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 152, column: 6)
!5596 = !DILocation(line: 152, column: 6, scope: !5572)
!5597 = !DILocation(line: 153, column: 10, scope: !5595)
!5598 = !DILocation(line: 153, column: 3, scope: !5595)
!5599 = !DILocation(line: 156, column: 6, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 156, column: 6)
!5601 = !DILocation(line: 156, column: 12, scope: !5600)
!5602 = !DILocation(line: 156, column: 6, scope: !5572)
!5603 = !DILocation(line: 157, column: 9, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5600, file: !3, line: 156, column: 21)
!5605 = !DILocation(line: 157, column: 15, scope: !5604)
!5606 = !DILocation(line: 157, column: 7, scope: !5604)
!5607 = !DILocation(line: 158, column: 9, scope: !5604)
!5608 = !DILocation(line: 158, column: 15, scope: !5604)
!5609 = !DILocation(line: 158, column: 7, scope: !5604)
!5610 = !DILocation(line: 159, column: 2, scope: !5604)
!5611 = !DILocation(line: 161, column: 25, scope: !5572)
!5612 = !DILocation(line: 161, column: 35, scope: !5572)
!5613 = !DILocation(line: 161, column: 45, scope: !5572)
!5614 = !DILocation(line: 161, column: 50, scope: !5572)
!5615 = !DILocation(line: 161, column: 8, scope: !5572)
!5616 = !DILocation(line: 161, column: 6, scope: !5572)
!5617 = !DILocation(line: 162, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 162, column: 6)
!5619 = !DILocation(line: 162, column: 10, scope: !5618)
!5620 = !DILocation(line: 162, column: 6, scope: !5572)
!5621 = !DILocation(line: 163, column: 9, scope: !5622)
!5622 = distinct !DILexicalBlock(scope: !5618, file: !3, line: 162, column: 15)
!5623 = !DILocation(line: 163, column: 3, scope: !5622)
!5624 = !DILocation(line: 164, column: 18, scope: !5622)
!5625 = !DILocation(line: 164, column: 10, scope: !5622)
!5626 = !DILocation(line: 164, column: 3, scope: !5622)
!5627 = !DILocation(line: 167, column: 18, scope: !5572)
!5628 = !DILocation(line: 167, column: 2, scope: !5572)
!5629 = !DILocation(line: 167, column: 8, scope: !5572)
!5630 = !DILocation(line: 167, column: 16, scope: !5572)
!5631 = !DILocation(line: 169, column: 32, scope: !5572)
!5632 = !DILocation(line: 169, column: 39, scope: !5572)
!5633 = !DILocation(line: 169, column: 49, scope: !5572)
!5634 = !DILocation(line: 170, column: 12, scope: !5572)
!5635 = !DILocation(line: 170, column: 22, scope: !5572)
!5636 = !DILocation(line: 172, column: 11, scope: !5572)
!5637 = !DILocation(line: 172, column: 17, scope: !5572)
!5638 = !DILocation(line: 172, column: 26, scope: !5572)
!5639 = !DILocation(line: 172, column: 32, scope: !5572)
!5640 = !DILocation(line: 169, column: 8, scope: !5572)
!5641 = !DILocation(line: 169, column: 6, scope: !5572)
!5642 = !DILocation(line: 173, column: 6, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 173, column: 6)
!5644 = !DILocation(line: 173, column: 6, scope: !5572)
!5645 = !DILocation(line: 174, column: 3, scope: !5643)
!5646 = !DILocation(line: 176, column: 19, scope: !5572)
!5647 = !DILocation(line: 176, column: 2, scope: !5572)
!5648 = !DILocation(line: 176, column: 12, scope: !5572)
!5649 = !DILocation(line: 176, column: 17, scope: !5572)
!5650 = !DILocation(line: 178, column: 20, scope: !5572)
!5651 = !DILocation(line: 178, column: 30, scope: !5572)
!5652 = !DILocation(line: 178, column: 8, scope: !5572)
!5653 = !DILocation(line: 178, column: 6, scope: !5572)
!5654 = !DILocation(line: 179, column: 6, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 179, column: 6)
!5656 = !DILocation(line: 179, column: 6, scope: !5572)
!5657 = !DILocation(line: 180, column: 3, scope: !5655)
!5658 = !DILocation(line: 182, column: 9, scope: !5572)
!5659 = !DILocation(line: 182, column: 2, scope: !5572)
!5660 = !DILocation(line: 184, column: 1, scope: !5572)
!5661 = !DILocation(line: 185, column: 14, scope: !5572)
!5662 = !DILocation(line: 185, column: 24, scope: !5572)
!5663 = !DILocation(line: 185, column: 2, scope: !5572)
!5664 = !DILocation(line: 186, column: 12, scope: !5572)
!5665 = !DILocation(line: 186, column: 22, scope: !5572)
!5666 = !DILocation(line: 186, column: 32, scope: !5572)
!5667 = !DILocation(line: 186, column: 38, scope: !5572)
!5668 = !DILocation(line: 186, column: 2, scope: !5572)
!5669 = !DILocation(line: 188, column: 17, scope: !5572)
!5670 = !DILocation(line: 188, column: 9, scope: !5572)
!5671 = !DILocation(line: 188, column: 2, scope: !5572)
!5672 = !DILocation(line: 189, column: 1, scope: !5572)
!5673 = !DISubprogram(name: "ida_alloc_range", scope: !5037, file: !5037, line: 257, type: !5674, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5674 = !DISubroutineType(types: !5675)
!5675 = !{!65, !5483, !7, !7, !168}
!5676 = !DISubprogram(name: "kfree", scope: !153, file: !153, line: 227, type: !5677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5677 = !DISubroutineType(types: !5678)
!5678 = !{null, !1600}
!5679 = distinct !DISubprogram(name: "serial_base_port_release", scope: !3, file: !3, line: 137, type: !4614, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5680)
!5680 = !{!5681, !5682, !5683}
!5681 = !DILocalVariable(name: "dev", arg: 1, scope: !5679, file: !3, line: 137, type: !2835)
!5682 = !DILocalVariable(name: "port_dev", scope: !5679, file: !3, line: 139, type: !5041)
!5683 = !DILocalVariable(name: "__mptr", scope: !5684, file: !3, line: 139, type: !170)
!5684 = distinct !DILexicalBlock(scope: !5679, file: !3, line: 139, column: 40)
!5685 = !DILocation(line: 137, column: 53, scope: !5679)
!5686 = !DILocation(line: 139, column: 2, scope: !5679)
!5687 = !DILocation(line: 139, column: 29, scope: !5679)
!5688 = !DILocation(line: 139, column: 40, scope: !5684)
!5689 = !DILocation(line: 139, column: 40, scope: !5679)
!5690 = !DILocation(line: 141, column: 8, scope: !5679)
!5691 = !DILocation(line: 141, column: 2, scope: !5679)
!5692 = !DILocation(line: 142, column: 1, scope: !5679)
!5693 = !DISubprogram(name: "ida_free", scope: !5037, file: !5037, line: 258, type: !5694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5694 = !DISubroutineType(types: !5695)
!5695 = !{null, !5483, !7}
!5696 = distinct !DISubprogram(name: "serial_base_port_device_remove", scope: !3, file: !3, line: 191, type: !5697, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5699)
!5697 = !DISubroutineType(types: !5698)
!5698 = !{null, !5041}
!5699 = !{!5700, !5701, !5702, !5703}
!5700 = !DILocalVariable(name: "port_dev", arg: 1, scope: !5696, file: !3, line: 191, type: !5041)
!5701 = !DILocalVariable(name: "ctrl_dev", scope: !5696, file: !3, line: 193, type: !171)
!5702 = !DILocalVariable(name: "parent", scope: !5696, file: !3, line: 194, type: !2835)
!5703 = !DILocalVariable(name: "__mptr", scope: !5704, file: !3, line: 200, type: !170)
!5704 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 200, column: 13)
!5705 = !DILocation(line: 191, column: 64, scope: !5696)
!5706 = !DILocation(line: 193, column: 2, scope: !5696)
!5707 = !DILocation(line: 193, column: 29, scope: !5696)
!5708 = !DILocation(line: 194, column: 2, scope: !5696)
!5709 = !DILocation(line: 194, column: 17, scope: !5696)
!5710 = !DILocation(line: 196, column: 7, scope: !5711)
!5711 = distinct !DILexicalBlock(scope: !5696, file: !3, line: 196, column: 6)
!5712 = !DILocation(line: 196, column: 6, scope: !5696)
!5713 = !DILocation(line: 197, column: 3, scope: !5711)
!5714 = !DILocation(line: 199, column: 11, scope: !5696)
!5715 = !DILocation(line: 199, column: 21, scope: !5696)
!5716 = !DILocation(line: 199, column: 25, scope: !5696)
!5717 = !DILocation(line: 199, column: 9, scope: !5696)
!5718 = !DILocation(line: 200, column: 13, scope: !5704)
!5719 = !DILocation(line: 200, column: 13, scope: !5696)
!5720 = !DILocation(line: 200, column: 11, scope: !5696)
!5721 = !DILocation(line: 202, column: 14, scope: !5696)
!5722 = !DILocation(line: 202, column: 24, scope: !5696)
!5723 = !DILocation(line: 202, column: 2, scope: !5696)
!5724 = !DILocation(line: 203, column: 12, scope: !5696)
!5725 = !DILocation(line: 203, column: 22, scope: !5696)
!5726 = !DILocation(line: 203, column: 32, scope: !5696)
!5727 = !DILocation(line: 203, column: 42, scope: !5696)
!5728 = !DILocation(line: 203, column: 48, scope: !5696)
!5729 = !DILocation(line: 203, column: 2, scope: !5696)
!5730 = !DILocation(line: 204, column: 14, scope: !5696)
!5731 = !DILocation(line: 204, column: 24, scope: !5696)
!5732 = !DILocation(line: 204, column: 2, scope: !5696)
!5733 = !DILocation(line: 205, column: 1, scope: !5696)
!5734 = distinct !DISubprogram(name: "__initstub__kmod_serial_base__292_235_serial_base_init3", scope: !3, file: !3, line: 235, type: !705, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5735 = !DILocation(line: 235, column: 1, scope: !5734)
!5736 = distinct !DISubprogram(name: "serial_base_init", scope: !3, file: !3, line: 207, type: !705, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5737)
!5737 = !{!5738, !5739, !5740}
!5738 = !DILocalVariable(name: "ret", scope: !5736, file: !3, line: 209, type: !65)
!5739 = !DILabel(scope: !5736, name: "err_ctrl_exit", file: !3, line: 227)
!5740 = !DILabel(scope: !5736, name: "err_bus_unregister", file: !3, line: 230)
!5741 = !DILocation(line: 209, column: 2, scope: !5736)
!5742 = !DILocation(line: 209, column: 6, scope: !5736)
!5743 = !DILocation(line: 211, column: 8, scope: !5736)
!5744 = !DILocation(line: 211, column: 6, scope: !5736)
!5745 = !DILocation(line: 212, column: 6, scope: !5746)
!5746 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 212, column: 6)
!5747 = !DILocation(line: 212, column: 6, scope: !5736)
!5748 = !DILocation(line: 213, column: 10, scope: !5746)
!5749 = !DILocation(line: 213, column: 3, scope: !5746)
!5750 = !DILocation(line: 215, column: 8, scope: !5736)
!5751 = !DILocation(line: 215, column: 6, scope: !5736)
!5752 = !DILocation(line: 216, column: 6, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 216, column: 6)
!5754 = !DILocation(line: 216, column: 6, scope: !5736)
!5755 = !DILocation(line: 217, column: 3, scope: !5753)
!5756 = !DILocation(line: 219, column: 8, scope: !5736)
!5757 = !DILocation(line: 219, column: 6, scope: !5736)
!5758 = !DILocation(line: 220, column: 6, scope: !5759)
!5759 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 220, column: 6)
!5760 = !DILocation(line: 220, column: 6, scope: !5736)
!5761 = !DILocation(line: 221, column: 3, scope: !5759)
!5762 = !DILocation(line: 223, column: 26, scope: !5736)
!5763 = !DILocation(line: 225, column: 2, scope: !5736)
!5764 = !DILocation(line: 227, column: 1, scope: !5736)
!5765 = !DILocation(line: 228, column: 2, scope: !5736)
!5766 = !DILocation(line: 230, column: 1, scope: !5736)
!5767 = !DILocation(line: 231, column: 2, scope: !5736)
!5768 = !DILocation(line: 233, column: 9, scope: !5736)
!5769 = !DILocation(line: 233, column: 2, scope: !5736)
!5770 = !DILocation(line: 234, column: 1, scope: !5736)
!5771 = distinct !DISubprogram(name: "serial_base_exit", scope: !3, file: !3, line: 237, type: !976, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5772 = !DILocation(line: 239, column: 2, scope: !5771)
!5773 = !DILocation(line: 240, column: 2, scope: !5771)
!5774 = !DILocation(line: 241, column: 2, scope: !5771)
!5775 = !DILocation(line: 242, column: 1, scope: !5771)
!5776 = distinct !DISubprogram(name: "serial_base_match", scope: !3, file: !3, line: 31, type: !4660, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5777)
!5777 = !{!5778, !5779}
!5778 = !DILocalVariable(name: "dev", arg: 1, scope: !5776, file: !3, line: 31, type: !2835)
!5779 = !DILocalVariable(name: "drv", arg: 2, scope: !5776, file: !3, line: 31, type: !4662)
!5780 = !DILocation(line: 31, column: 45, scope: !5776)
!5781 = !DILocation(line: 31, column: 72, scope: !5776)
!5782 = !DILocation(line: 33, column: 6, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 33, column: 6)
!5784 = !DILocation(line: 33, column: 11, scope: !5783)
!5785 = !DILocation(line: 33, column: 16, scope: !5783)
!5786 = !DILocation(line: 33, column: 37, scope: !5783)
!5787 = !DILocation(line: 34, column: 21, scope: !5783)
!5788 = !DILocation(line: 34, column: 26, scope: !5783)
!5789 = !DILocation(line: 34, column: 49, scope: !5783)
!5790 = !DILocation(line: 34, column: 6, scope: !5783)
!5791 = !DILocation(line: 33, column: 6, scope: !5776)
!5792 = !DILocation(line: 35, column: 3, scope: !5783)
!5793 = !DILocation(line: 37, column: 6, scope: !5794)
!5794 = distinct !DILexicalBlock(scope: !5776, file: !3, line: 37, column: 6)
!5795 = !DILocation(line: 37, column: 11, scope: !5794)
!5796 = !DILocation(line: 37, column: 16, scope: !5794)
!5797 = !DILocation(line: 37, column: 37, scope: !5794)
!5798 = !DILocation(line: 38, column: 21, scope: !5794)
!5799 = !DILocation(line: 38, column: 26, scope: !5794)
!5800 = !DILocation(line: 38, column: 49, scope: !5794)
!5801 = !DILocation(line: 38, column: 6, scope: !5794)
!5802 = !DILocation(line: 37, column: 6, scope: !5776)
!5803 = !DILocation(line: 39, column: 3, scope: !5794)
!5804 = !DILocation(line: 41, column: 2, scope: !5776)
!5805 = !DILocation(line: 42, column: 1, scope: !5776)
!5806 = distinct !DISubprogram(name: "str_has_prefix", scope: !5807, file: !5807, line: 400, type: !5808, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5810)
!5807 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!5808 = !DISubroutineType(types: !5809)
!5809 = !{!317, !183, !183}
!5810 = !{!5811, !5812, !5813}
!5811 = !DILocalVariable(name: "str", arg: 1, scope: !5806, file: !5807, line: 400, type: !183)
!5812 = !DILocalVariable(name: "prefix", arg: 2, scope: !5806, file: !5807, line: 400, type: !183)
!5813 = !DILocalVariable(name: "len", scope: !5806, file: !5807, line: 402, type: !317)
!5814 = !DILocation(line: 400, column: 58, scope: !5806)
!5815 = !DILocation(line: 400, column: 75, scope: !5806)
!5816 = !DILocation(line: 402, column: 2, scope: !5806)
!5817 = !DILocation(line: 402, column: 9, scope: !5806)
!5818 = !DILocation(line: 402, column: 22, scope: !5806)
!5819 = !DILocation(line: 402, column: 15, scope: !5806)
!5820 = !DILocation(line: 403, column: 17, scope: !5806)
!5821 = !DILocation(line: 403, column: 22, scope: !5806)
!5822 = !DILocation(line: 403, column: 30, scope: !5806)
!5823 = !DILocation(line: 403, column: 9, scope: !5806)
!5824 = !DILocation(line: 403, column: 35, scope: !5806)
!5825 = !DILocation(line: 403, column: 42, scope: !5806)
!5826 = !DILocation(line: 404, column: 1, scope: !5806)
!5827 = !DILocation(line: 403, column: 2, scope: !5806)
!5828 = !DISubprogram(name: "strlen", scope: !5807, file: !5807, line: 128, type: !5829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{!320, !183}
!5831 = !DISubprogram(name: "strncmp", scope: !5807, file: !5807, line: 91, type: !5832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{!65, !183, !183, !318}
!5834 = distinct !DISubprogram(name: "kmalloc", scope: !153, file: !153, line: 591, type: !5458, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5835)
!5835 = !{!5836, !5837, !5838}
!5836 = !DILocalVariable(name: "size", arg: 1, scope: !5834, file: !153, line: 591, type: !317)
!5837 = !DILocalVariable(name: "flags", arg: 2, scope: !5834, file: !153, line: 591, type: !168)
!5838 = !DILocalVariable(name: "index", scope: !5839, file: !153, line: 594, type: !7)
!5839 = distinct !DILexicalBlock(scope: !5840, file: !153, line: 593, column: 42)
!5840 = distinct !DILexicalBlock(scope: !5834, file: !153, line: 593, column: 6)
!5841 = !DILocation(line: 591, column: 61, scope: !5834)
!5842 = !DILocation(line: 591, column: 73, scope: !5834)
!5843 = !DILocation(line: 593, column: 27, scope: !5840)
!5844 = !DILocation(line: 593, column: 6, scope: !5840)
!5845 = !DILocation(line: 593, column: 33, scope: !5840)
!5846 = !DILocation(line: 593, column: 36, scope: !5840)
!5847 = !DILocation(line: 593, column: 6, scope: !5834)
!5848 = !DILocation(line: 594, column: 3, scope: !5839)
!5849 = !DILocation(line: 594, column: 16, scope: !5839)
!5850 = !DILocation(line: 596, column: 7, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5839, file: !153, line: 596, column: 7)
!5852 = !DILocation(line: 596, column: 12, scope: !5851)
!5853 = !DILocation(line: 596, column: 7, scope: !5839)
!5854 = !DILocation(line: 597, column: 25, scope: !5851)
!5855 = !DILocation(line: 597, column: 31, scope: !5851)
!5856 = !DILocation(line: 597, column: 11, scope: !5851)
!5857 = !DILocation(line: 597, column: 4, scope: !5851)
!5858 = !DILocation(line: 599, column: 11, scope: !5839)
!5859 = !DILocation(line: 599, column: 9, scope: !5839)
!5860 = !DILocation(line: 601, column: 33, scope: !5839)
!5861 = !DILocation(line: 601, column: 40, scope: !5839)
!5862 = !DILocation(line: 601, column: 20, scope: !5839)
!5863 = !DILocation(line: 601, column: 5, scope: !5839)
!5864 = !DILocation(line: 601, column: 51, scope: !5839)
!5865 = !DILocation(line: 602, column: 5, scope: !5839)
!5866 = !DILocation(line: 602, column: 12, scope: !5839)
!5867 = !DILocation(line: 600, column: 10, scope: !5839)
!5868 = !DILocation(line: 600, column: 3, scope: !5839)
!5869 = !DILocation(line: 603, column: 2, scope: !5840)
!5870 = !DILocation(line: 604, column: 19, scope: !5834)
!5871 = !DILocation(line: 604, column: 25, scope: !5834)
!5872 = !DILocation(line: 604, column: 9, scope: !5834)
!5873 = !DILocation(line: 604, column: 2, scope: !5834)
!5874 = !DILocation(line: 605, column: 1, scope: !5834)
!5875 = !DISubprogram(name: "kmalloc_large", scope: !153, file: !153, line: 531, type: !5458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5876 = distinct !DISubprogram(name: "__kmalloc_index", scope: !153, file: !153, line: 444, type: !5877, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5879)
!5877 = !DISubroutineType(types: !5878)
!5878 = !{!7, !317, !691}
!5879 = !{!5880, !5881}
!5880 = !DILocalVariable(name: "size", arg: 1, scope: !5876, file: !153, line: 444, type: !317)
!5881 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5876, file: !153, line: 445, type: !691)
!5882 = !DILocation(line: 444, column: 60, scope: !5876)
!5883 = !DILocation(line: 445, column: 16, scope: !5876)
!5884 = !DILocation(line: 447, column: 7, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 447, column: 6)
!5886 = !DILocation(line: 447, column: 6, scope: !5876)
!5887 = !DILocation(line: 448, column: 3, scope: !5885)
!5888 = !DILocation(line: 450, column: 6, scope: !5889)
!5889 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 450, column: 6)
!5890 = !DILocation(line: 450, column: 11, scope: !5889)
!5891 = !DILocation(line: 450, column: 6, scope: !5876)
!5892 = !DILocation(line: 451, column: 3, scope: !5889)
!5893 = !DILocation(line: 453, column: 32, scope: !5894)
!5894 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 453, column: 6)
!5895 = !DILocation(line: 453, column: 37, scope: !5894)
!5896 = !DILocation(line: 453, column: 42, scope: !5894)
!5897 = !DILocation(line: 453, column: 45, scope: !5894)
!5898 = !DILocation(line: 453, column: 50, scope: !5894)
!5899 = !DILocation(line: 453, column: 6, scope: !5876)
!5900 = !DILocation(line: 454, column: 3, scope: !5894)
!5901 = !DILocation(line: 455, column: 32, scope: !5902)
!5902 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 455, column: 6)
!5903 = !DILocation(line: 455, column: 37, scope: !5902)
!5904 = !DILocation(line: 455, column: 43, scope: !5902)
!5905 = !DILocation(line: 455, column: 46, scope: !5902)
!5906 = !DILocation(line: 455, column: 51, scope: !5902)
!5907 = !DILocation(line: 455, column: 6, scope: !5876)
!5908 = !DILocation(line: 456, column: 3, scope: !5902)
!5909 = !DILocation(line: 457, column: 6, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 457, column: 6)
!5911 = !DILocation(line: 457, column: 11, scope: !5910)
!5912 = !DILocation(line: 457, column: 6, scope: !5876)
!5913 = !DILocation(line: 457, column: 26, scope: !5910)
!5914 = !DILocation(line: 458, column: 6, scope: !5915)
!5915 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 458, column: 6)
!5916 = !DILocation(line: 458, column: 11, scope: !5915)
!5917 = !DILocation(line: 458, column: 6, scope: !5876)
!5918 = !DILocation(line: 458, column: 26, scope: !5915)
!5919 = !DILocation(line: 459, column: 6, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 459, column: 6)
!5921 = !DILocation(line: 459, column: 11, scope: !5920)
!5922 = !DILocation(line: 459, column: 6, scope: !5876)
!5923 = !DILocation(line: 459, column: 26, scope: !5920)
!5924 = !DILocation(line: 460, column: 6, scope: !5925)
!5925 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 460, column: 6)
!5926 = !DILocation(line: 460, column: 11, scope: !5925)
!5927 = !DILocation(line: 460, column: 6, scope: !5876)
!5928 = !DILocation(line: 460, column: 26, scope: !5925)
!5929 = !DILocation(line: 461, column: 6, scope: !5930)
!5930 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 461, column: 6)
!5931 = !DILocation(line: 461, column: 11, scope: !5930)
!5932 = !DILocation(line: 461, column: 6, scope: !5876)
!5933 = !DILocation(line: 461, column: 26, scope: !5930)
!5934 = !DILocation(line: 462, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 462, column: 6)
!5936 = !DILocation(line: 462, column: 11, scope: !5935)
!5937 = !DILocation(line: 462, column: 6, scope: !5876)
!5938 = !DILocation(line: 462, column: 26, scope: !5935)
!5939 = !DILocation(line: 463, column: 6, scope: !5940)
!5940 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 463, column: 6)
!5941 = !DILocation(line: 463, column: 11, scope: !5940)
!5942 = !DILocation(line: 463, column: 6, scope: !5876)
!5943 = !DILocation(line: 463, column: 26, scope: !5940)
!5944 = !DILocation(line: 464, column: 6, scope: !5945)
!5945 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 464, column: 6)
!5946 = !DILocation(line: 464, column: 11, scope: !5945)
!5947 = !DILocation(line: 464, column: 6, scope: !5876)
!5948 = !DILocation(line: 464, column: 26, scope: !5945)
!5949 = !DILocation(line: 465, column: 6, scope: !5950)
!5950 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 465, column: 6)
!5951 = !DILocation(line: 465, column: 11, scope: !5950)
!5952 = !DILocation(line: 465, column: 6, scope: !5876)
!5953 = !DILocation(line: 465, column: 26, scope: !5950)
!5954 = !DILocation(line: 466, column: 6, scope: !5955)
!5955 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 466, column: 6)
!5956 = !DILocation(line: 466, column: 11, scope: !5955)
!5957 = !DILocation(line: 466, column: 6, scope: !5876)
!5958 = !DILocation(line: 466, column: 26, scope: !5955)
!5959 = !DILocation(line: 467, column: 6, scope: !5960)
!5960 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 467, column: 6)
!5961 = !DILocation(line: 467, column: 11, scope: !5960)
!5962 = !DILocation(line: 467, column: 6, scope: !5876)
!5963 = !DILocation(line: 467, column: 26, scope: !5960)
!5964 = !DILocation(line: 468, column: 6, scope: !5965)
!5965 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 468, column: 6)
!5966 = !DILocation(line: 468, column: 11, scope: !5965)
!5967 = !DILocation(line: 468, column: 6, scope: !5876)
!5968 = !DILocation(line: 468, column: 26, scope: !5965)
!5969 = !DILocation(line: 469, column: 6, scope: !5970)
!5970 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 469, column: 6)
!5971 = !DILocation(line: 469, column: 11, scope: !5970)
!5972 = !DILocation(line: 469, column: 6, scope: !5876)
!5973 = !DILocation(line: 469, column: 26, scope: !5970)
!5974 = !DILocation(line: 470, column: 6, scope: !5975)
!5975 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 470, column: 6)
!5976 = !DILocation(line: 470, column: 11, scope: !5975)
!5977 = !DILocation(line: 470, column: 6, scope: !5876)
!5978 = !DILocation(line: 470, column: 26, scope: !5975)
!5979 = !DILocation(line: 471, column: 6, scope: !5980)
!5980 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 471, column: 6)
!5981 = !DILocation(line: 471, column: 11, scope: !5980)
!5982 = !DILocation(line: 471, column: 6, scope: !5876)
!5983 = !DILocation(line: 471, column: 26, scope: !5980)
!5984 = !DILocation(line: 472, column: 6, scope: !5985)
!5985 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 472, column: 6)
!5986 = !DILocation(line: 472, column: 11, scope: !5985)
!5987 = !DILocation(line: 472, column: 6, scope: !5876)
!5988 = !DILocation(line: 472, column: 26, scope: !5985)
!5989 = !DILocation(line: 473, column: 6, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 473, column: 6)
!5991 = !DILocation(line: 473, column: 11, scope: !5990)
!5992 = !DILocation(line: 473, column: 6, scope: !5876)
!5993 = !DILocation(line: 473, column: 26, scope: !5990)
!5994 = !DILocation(line: 474, column: 6, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 474, column: 6)
!5996 = !DILocation(line: 474, column: 11, scope: !5995)
!5997 = !DILocation(line: 474, column: 6, scope: !5876)
!5998 = !DILocation(line: 474, column: 27, scope: !5995)
!5999 = !DILocation(line: 475, column: 6, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 475, column: 6)
!6001 = !DILocation(line: 475, column: 11, scope: !6000)
!6002 = !DILocation(line: 475, column: 6, scope: !5876)
!6003 = !DILocation(line: 475, column: 32, scope: !6000)
!6004 = !DILocation(line: 477, column: 50, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !5876, file: !153, line: 477, column: 6)
!6006 = !DILocation(line: 477, column: 6, scope: !5876)
!6007 = !DILocation(line: 478, column: 3, scope: !6005)
!6008 = !DILocation(line: 478, column: 3, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !6010, file: !153, line: 478, column: 3)
!6010 = distinct !DILexicalBlock(scope: !6005, file: !153, line: 478, column: 3)
!6011 = !{i32 -2141027963}
!6012 = !DILocation(line: 478, column: 3, scope: !6010)
!6013 = !DILocation(line: 480, column: 3, scope: !6005)
!6014 = !DILocation(line: 480, column: 3, scope: !6015)
!6015 = distinct !DILexicalBlock(scope: !6005, file: !153, line: 480, column: 3)
!6016 = !DILocation(line: 480, column: 3, scope: !6017)
!6017 = distinct !DILexicalBlock(scope: !6015, file: !153, line: 480, column: 3)
!6018 = !DILocation(line: 480, column: 3, scope: !6019)
!6019 = distinct !DILexicalBlock(scope: !6015, file: !153, line: 480, column: 3)
!6020 = !{i64 2153939536, i64 2153939565, i64 2153939611, i64 2153939669, i64 2153939723, i64 2153939777, i64 2153939832, i64 2153939863}
!6021 = !DILocation(line: 483, column: 2, scope: !5876)
!6022 = !DILocation(line: 484, column: 1, scope: !5876)
!6023 = !DISubprogram(name: "kmalloc_trace", scope: !153, file: !153, line: 525, type: !6024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6024 = !DISubroutineType(types: !6025)
!6025 = !{!170, !6026, !168, !317}
!6026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6027, size: 64)
!6027 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6028, line: 325, flags: DIFlagFwdDecl)
!6028 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!6029 = distinct !DISubprogram(name: "kmalloc_type", scope: !153, file: !153, line: 401, type: !6030, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6032)
!6030 = !DISubroutineType(types: !6031)
!6031 = !{!152, !168, !320}
!6032 = !{!6033, !6034}
!6033 = !DILocalVariable(name: "flags", arg: 1, scope: !6029, file: !153, line: 401, type: !168)
!6034 = !DILocalVariable(name: "caller", arg: 2, scope: !6029, file: !153, line: 401, type: !320)
!6035 = !DILocation(line: 401, column: 67, scope: !6029)
!6036 = !DILocation(line: 401, column: 88, scope: !6029)
!6037 = !DILocation(line: 407, column: 6, scope: !6038)
!6038 = distinct !DILexicalBlock(scope: !6029, file: !153, line: 407, column: 6)
!6039 = !DILocation(line: 407, column: 6, scope: !6029)
!6040 = !DILocation(line: 413, column: 3, scope: !6038)
!6041 = !DILocation(line: 423, column: 38, scope: !6042)
!6042 = distinct !DILexicalBlock(scope: !6029, file: !153, line: 423, column: 6)
!6043 = !DILocation(line: 423, column: 44, scope: !6042)
!6044 = !DILocation(line: 423, column: 6, scope: !6029)
!6045 = !DILocation(line: 424, column: 3, scope: !6042)
!6046 = !DILocation(line: 426, column: 3, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6029, file: !153, line: 425, column: 6)
!6048 = !DILocation(line: 429, column: 1, scope: !6029)
!6049 = !DISubprogram(name: "__kmalloc", scope: !153, file: !153, line: 488, type: !5458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6050 = !DISubprogram(name: "__compiletime_assert_265", scope: !153, file: !153, line: 478, type: !976, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6051 = distinct !DISubprogram(name: "xa_init_flags", scope: !163, file: !163, line: 378, type: !6052, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6055)
!6052 = !DISubroutineType(types: !6053)
!6053 = !{null, !6054, !168}
!6054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4210, size: 64)
!6055 = !{!6056, !6057}
!6056 = !DILocalVariable(name: "xa", arg: 1, scope: !6051, file: !163, line: 378, type: !6054)
!6057 = !DILocalVariable(name: "flags", arg: 2, scope: !6051, file: !163, line: 378, type: !168)
!6058 = !DILocation(line: 378, column: 49, scope: !6051)
!6059 = !DILocation(line: 378, column: 59, scope: !6051)
!6060 = !DILocation(line: 380, column: 2, scope: !6051)
!6061 = !DILocation(line: 380, column: 2, scope: !6062)
!6062 = distinct !DILexicalBlock(scope: !6051, file: !163, line: 380, column: 2)
!6063 = !DILocation(line: 381, column: 17, scope: !6051)
!6064 = !DILocation(line: 381, column: 2, scope: !6051)
!6065 = !DILocation(line: 381, column: 6, scope: !6051)
!6066 = !DILocation(line: 381, column: 15, scope: !6051)
!6067 = !DILocation(line: 382, column: 2, scope: !6051)
!6068 = !DILocation(line: 382, column: 6, scope: !6051)
!6069 = !DILocation(line: 382, column: 14, scope: !6051)
!6070 = !DILocation(line: 383, column: 1, scope: !6051)
!6071 = distinct !DISubprogram(name: "spinlock_check", scope: !6072, file: !6072, line: 324, type: !6073, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6076)
!6072 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!6073 = !DISubroutineType(types: !6074)
!6074 = !{!6075, !1865}
!6075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!6076 = !{!6077}
!6077 = !DILocalVariable(name: "lock", arg: 1, scope: !6071, file: !6072, line: 324, type: !1865)
!6078 = !DILocation(line: 324, column: 67, scope: !6071)
!6079 = !DILocation(line: 326, column: 10, scope: !6071)
!6080 = !DILocation(line: 326, column: 16, scope: !6071)
!6081 = !DILocation(line: 326, column: 2, scope: !6071)
!6082 = !DISubprogram(name: "device_initialize", scope: !50, file: !50, line: 1056, type: !4614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6083 = !DISubprogram(name: "dev_set_name", scope: !50, file: !50, line: 879, type: !6084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6084 = !DISubroutineType(types: !6085)
!6085 = !{!65, !2835, !183, null}
!6086 = distinct !DISubprogram(name: "dev_name", scope: !50, file: !50, line: 858, type: !6087, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6089)
!6087 = !DISubroutineType(types: !6088)
!6088 = !{!183, !4605}
!6089 = !{!6090}
!6090 = !DILocalVariable(name: "dev", arg: 1, scope: !6086, file: !50, line: 858, type: !4605)
!6091 = !DILocation(line: 858, column: 57, scope: !6086)
!6092 = !DILocation(line: 861, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6086, file: !50, line: 861, column: 6)
!6094 = !DILocation(line: 861, column: 11, scope: !6093)
!6095 = !DILocation(line: 861, column: 6, scope: !6086)
!6096 = !DILocation(line: 862, column: 10, scope: !6093)
!6097 = !DILocation(line: 862, column: 15, scope: !6093)
!6098 = !DILocation(line: 862, column: 3, scope: !6093)
!6099 = !DILocation(line: 864, column: 23, scope: !6086)
!6100 = !DILocation(line: 864, column: 28, scope: !6086)
!6101 = !DILocation(line: 864, column: 9, scope: !6086)
!6102 = !DILocation(line: 864, column: 2, scope: !6086)
!6103 = !DILocation(line: 865, column: 1, scope: !6086)
!6104 = distinct !DISubprogram(name: "kobject_name", scope: !180, file: !180, line: 87, type: !258, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6105)
!6105 = !{!6106}
!6106 = !DILocalVariable(name: "kobj", arg: 1, scope: !6104, file: !180, line: 87, type: !253)
!6107 = !DILocation(line: 87, column: 62, scope: !6104)
!6108 = !DILocation(line: 89, column: 9, scope: !6104)
!6109 = !DILocation(line: 89, column: 15, scope: !6104)
!6110 = !DILocation(line: 89, column: 2, scope: !6104)
!6111 = !DISubprogram(name: "bus_register", scope: !4651, file: !4651, line: 112, type: !6112, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6112 = !DISubroutineType(types: !6113)
!6113 = !{!65, !4648}
!6114 = !DISubprogram(name: "serial_base_ctrl_init", scope: !173, file: !173, line: 28, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6115 = !DISubprogram(name: "serial_base_port_init", scope: !173, file: !173, line: 31, type: !705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6116 = !DISubprogram(name: "serial_base_ctrl_exit", scope: !173, file: !173, line: 29, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6117 = !DISubprogram(name: "bus_unregister", scope: !4651, file: !4651, line: 114, type: !6118, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6118 = !DISubroutineType(types: !6119)
!6119 = !{null, !4648}
!6120 = !DISubprogram(name: "serial_base_port_exit", scope: !173, file: !173, line: 32, type: !976, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
