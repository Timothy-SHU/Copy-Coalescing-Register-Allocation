; ModuleID = 'drivers/pps/pps.c'
source_filename = "drivers/pps/pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pps_lookup_dev: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pps_lookup_dev ; .previous"
module asm ".section\09\22.initcall4.init..kmod_pps_core__268_489_pps_init\22, \22a\22\09\09"
module asm "__initcall__kmod_pps_core__268_489_pps_init4:\09\09\09"
module asm ".long\09__initstub__kmod_pps_core__268_489_pps_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_call_key = type { ptr, %union.anon.16 }
%union.anon.16 = type { i64 }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.device, ptr, %struct.spinlock }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.14, %struct.qspinlock }
%union.anon.14 = type { %struct.atomic_t }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.pps_fdata = type { %struct.pps_kinfo, %struct.pps_ktime }
%struct.pps_kinfo = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32 }
%struct.pps_bind_args = type { i32, i32, i32 }
%struct.pps_fdata_compat = type <{ %struct.pps_kinfo_compat, %struct.pps_ktime_compat }>
%struct.pps_kinfo_compat = type <{ i32, i32, %struct.pps_ktime_compat, %struct.pps_ktime_compat, i32 }>
%struct.pps_ktime_compat = type { i64, i32, i32 }
%struct.poll_table_struct = type { ptr, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.17, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.18, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.19, ptr, %struct.address_space, %struct.list_head, %union.anon.20, i32, i32, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.17 = type { i32 }
%struct.timespec64 = type { i64, i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.18 = type { %struct.callback_head }
%union.anon.19 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.20 = type { ptr }

@pps_idr_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pps_idr_lock, i64 16), ptr getelementptr (i8, ptr @pps_idr_lock, i64 16) } }, align 8, !dbg !0
@pps_idr = internal global %struct.idr { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108868, ptr null }, i32 0, i32 0 }, align 8, !dbg !4301
@.str = private unnamed_addr constant [52 x i8] c"\013pps_core: %s: too many PPS sources in the system\0A\00", align 1, !dbg !3911
@pps_class = internal global ptr null, align 8, !dbg !3949
@pps_major = internal global i32 0, align 4, !dbg !3947
@.str.1 = private unnamed_addr constant [6 x i8] c"pps%d\00", align 1, !dbg !3914
@__UNIQUE_ID___addressable_pps_lookup_dev267 = internal global ptr @pps_lookup_dev, section ".discard.addressable", align 8, !dbg !3916
@.str.2 = private unnamed_addr constant [4 x i8] c"pps\00", align 1, !dbg !3918
@__UNIQUE_ID___addressable___initstub__kmod_pps_core__268_489_pps_init4269 = internal global ptr @__initstub__kmod_pps_core__268_489_pps_init4, section ".discard.addressable", align 8, !dbg !3921
@__exitcall_pps_exit = internal global ptr @pps_exit, section ".exitcall.exit", align 8, !dbg !3923
@__UNIQUE_ID_author270 = internal constant [53 x i8] c"pps_core.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1, !dbg !3927
@__UNIQUE_ID_description271 = internal constant [62 x i8] c"pps_core.description=LinuxPPS support (RFC 2783) - ver. 5.3.6\00", section ".modinfo", align 1, !dbg !3932
@__UNIQUE_ID_file272 = internal constant [35 x i8] c"pps_core.file=drivers/pps/pps_core\00", section ".modinfo", align 1, !dbg !3937
@__UNIQUE_ID_license273 = internal constant [21 x i8] c"pps_core.license=GPL\00", section ".modinfo", align 1, !dbg !3942
@.str.3 = private unnamed_addr constant [38 x i8] c"\013pps_core: failed to allocate class\0A\00", align 1, !dbg !4309
@pps_groups = external dso_local global [0 x ptr], align 8
@pps_cdev_fops = internal constant %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pps_cdev_poll, ptr @pps_cdev_ioctl, ptr @pps_cdev_compat_ioctl, ptr null, i64 0, ptr @pps_cdev_open, ptr null, ptr @pps_cdev_release, ptr null, ptr @pps_cdev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4331
@.str.4 = private unnamed_addr constant [51 x i8] c"\013pps_core: failed to allocate char device region\0A\00", align 1, !dbg !4314
@.str.5 = private unnamed_addr constant [45 x i8] c"\016pps_core: LinuxPPS API ver. %d registered\0A\00", align 1, !dbg !4319
@.str.6 = private unnamed_addr constant [89 x i8] c"\016pps_core: Software ver. %s - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>\0A\00", align 1, !dbg !4324
@.str.7 = private unnamed_addr constant [6 x i8] c"5.3.6\00", align 1, !dbg !4329
@.str.8 = private unnamed_addr constant [31 x i8] c"unsupported capabilities (%x)\0A\00", align 1, !dbg !4333
@.str.9 = private unnamed_addr constant [46 x i8] c"invalid kernel consumer bind parameters (%x)\0A\00", align 1, !dbg !4338
@.str.10 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4343
@might_resched.__UNIQUE_ID___addressable___SCK__might_resched2 = internal global ptr @__SCK__might_resched, section ".discard.addressable", align 8, !dbg !4349
@__SCK__might_resched = external dso_local global %struct.static_call_key, align 8
@.str.11 = private unnamed_addr constant [18 x i8] c"drivers/pps/pps.c\00", align 1, !dbg !4353
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_pps_lookup_dev267, ptr @pps_exit, ptr @__UNIQUE_ID___addressable___initstub__kmod_pps_core__268_489_pps_init4269, ptr @__exitcall_pps_exit, ptr @__UNIQUE_ID_author270, ptr @__UNIQUE_ID_description271, ptr @__UNIQUE_ID_file272, ptr @__UNIQUE_ID_license273, ptr @might_resched.__UNIQUE_ID___addressable___SCK__might_resched2], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pps_register_cdev(ptr noundef %pps) #0 align 16 !dbg !4368 {
entry:
  %retval = alloca i32, align 4
  %pps.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp19 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !4422, metadata !DIExpression()), !dbg !4426
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4427
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4423, metadata !DIExpression()), !dbg !4428
  call void @mutex_lock(ptr noundef @pps_idr_lock) #16, !dbg !4429
  %0 = load ptr, ptr %pps.addr, align 8, !dbg !4430
  %call = call i32 @idr_alloc(ptr noundef @pps_idr, ptr noundef %0, i32 noundef 0, i32 noundef 16, i32 noundef 3264) #16, !dbg !4431
  store i32 %call, ptr %err, align 4, !dbg !4432
  %1 = load i32, ptr %err, align 4, !dbg !4433
  %cmp = icmp slt i32 %1, 0, !dbg !4435
  br i1 %cmp, label %if.then, label %if.end4, !dbg !4436

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %err, align 4, !dbg !4437
  %cmp1 = icmp eq i32 %2, -28, !dbg !4440
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !4441

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !4442

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !4445

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4445

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %pps.addr, align 8, !dbg !4442
  %info = getelementptr inbounds %struct.pps_device, ptr %3, i32 0, i32 0, !dbg !4442
  %name = getelementptr inbounds %struct.pps_source_info, ptr %info, i32 0, i32 0, !dbg !4442
  %arraydecay = getelementptr inbounds [32 x i8], ptr %name, i64 0, i64 0, !dbg !4442
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef %arraydecay) #17, !dbg !4442
  store i32 %call3, ptr %tmp, align 4, !dbg !4445
  %4 = load i32, ptr %tmp, align 4, !dbg !4442
  store i32 -16, ptr %err, align 4, !dbg !4447
  br label %if.end, !dbg !4448

if.end:                                           ; preds = %do.end, %if.then
  br label %out_unlock, !dbg !4449

if.end4:                                          ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !4450
  %6 = load ptr, ptr %pps.addr, align 8, !dbg !4451
  %id = getelementptr inbounds %struct.pps_device, ptr %6, i32 0, i32 9, !dbg !4452
  store i32 %5, ptr %id, align 8, !dbg !4453
  %7 = load ptr, ptr @pps_class, align 8, !dbg !4454
  %8 = load ptr, ptr %pps.addr, align 8, !dbg !4455
  %dev = getelementptr inbounds %struct.pps_device, ptr %8, i32 0, i32 11, !dbg !4456
  %class = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 30, !dbg !4457
  store ptr %7, ptr %class, align 8, !dbg !4458
  %9 = load ptr, ptr %pps.addr, align 8, !dbg !4459
  %info5 = getelementptr inbounds %struct.pps_device, ptr %9, i32 0, i32 0, !dbg !4460
  %dev6 = getelementptr inbounds %struct.pps_source_info, ptr %info5, i32 0, i32 5, !dbg !4461
  %10 = load ptr, ptr %dev6, align 8, !dbg !4461
  %11 = load ptr, ptr %pps.addr, align 8, !dbg !4462
  %dev7 = getelementptr inbounds %struct.pps_device, ptr %11, i32 0, i32 11, !dbg !4463
  %parent = getelementptr inbounds %struct.device, ptr %dev7, i32 0, i32 1, !dbg !4464
  store ptr %10, ptr %parent, align 8, !dbg !4465
  %12 = load i32, ptr @pps_major, align 4, !dbg !4466
  %shl = shl i32 %12, 20, !dbg !4466
  %13 = load ptr, ptr %pps.addr, align 8, !dbg !4466
  %id8 = getelementptr inbounds %struct.pps_device, ptr %13, i32 0, i32 9, !dbg !4466
  %14 = load i32, ptr %id8, align 8, !dbg !4466
  %or = or i32 %shl, %14, !dbg !4466
  %15 = load ptr, ptr %pps.addr, align 8, !dbg !4467
  %dev9 = getelementptr inbounds %struct.pps_device, ptr %15, i32 0, i32 11, !dbg !4468
  %devt = getelementptr inbounds %struct.device, ptr %dev9, i32 0, i32 26, !dbg !4469
  store i32 %or, ptr %devt, align 4, !dbg !4470
  %16 = load ptr, ptr %pps.addr, align 8, !dbg !4471
  %dev10 = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 11, !dbg !4472
  %17 = load ptr, ptr %pps.addr, align 8, !dbg !4473
  call void @dev_set_drvdata(ptr noundef %dev10, ptr noundef %17) #16, !dbg !4474
  %18 = load ptr, ptr %pps.addr, align 8, !dbg !4475
  %dev11 = getelementptr inbounds %struct.pps_device, ptr %18, i32 0, i32 11, !dbg !4476
  %19 = load ptr, ptr %pps.addr, align 8, !dbg !4477
  %id12 = getelementptr inbounds %struct.pps_device, ptr %19, i32 0, i32 9, !dbg !4478
  %20 = load i32, ptr %id12, align 8, !dbg !4478
  %call13 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev11, ptr noundef @.str.1, i32 noundef %20) #16, !dbg !4479
  %21 = load ptr, ptr %pps.addr, align 8, !dbg !4480
  %dev14 = getelementptr inbounds %struct.pps_device, ptr %21, i32 0, i32 11, !dbg !4481
  %call15 = call i32 @device_register(ptr noundef %dev14) #16, !dbg !4482
  store i32 %call15, ptr %err, align 4, !dbg !4483
  %22 = load i32, ptr %err, align 4, !dbg !4484
  %tobool = icmp ne i32 %22, 0, !dbg !4484
  br i1 %tobool, label %if.then16, label %if.end17, !dbg !4486

if.then16:                                        ; preds = %if.end4
  br label %free_idr, !dbg !4487

if.end17:                                         ; preds = %if.end4
  %23 = load ptr, ptr %pps.addr, align 8, !dbg !4488
  %dev18 = getelementptr inbounds %struct.pps_device, ptr %23, i32 0, i32 11, !dbg !4489
  %release = getelementptr inbounds %struct.device, ptr %dev18, i32 0, i32 32, !dbg !4490
  store ptr @pps_device_destruct, ptr %release, align 8, !dbg !4491
  store i32 0, ptr %tmp19, align 4, !dbg !4492
  %24 = load i32, ptr %tmp19, align 4, !dbg !4495
  %25 = load ptr, ptr %pps.addr, align 8, !dbg !4496
  %dev20 = getelementptr inbounds %struct.pps_device, ptr %25, i32 0, i32 11, !dbg !4497
  %call21 = call ptr @get_device(ptr noundef %dev20) #16, !dbg !4498
  call void @mutex_unlock(ptr noundef @pps_idr_lock) #16, !dbg !4499
  store i32 0, ptr %retval, align 4, !dbg !4500
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4500

free_idr:                                         ; preds = %if.then16
  call void @llvm.dbg.label(metadata !4424), !dbg !4501
  %26 = load ptr, ptr %pps.addr, align 8, !dbg !4502
  %id22 = getelementptr inbounds %struct.pps_device, ptr %26, i32 0, i32 9, !dbg !4503
  %27 = load i32, ptr %id22, align 8, !dbg !4503
  %conv = zext i32 %27 to i64, !dbg !4502
  %call23 = call ptr @idr_remove(ptr noundef @pps_idr, i64 noundef %conv) #16, !dbg !4504
  %28 = load ptr, ptr %pps.addr, align 8, !dbg !4505
  %dev24 = getelementptr inbounds %struct.pps_device, ptr %28, i32 0, i32 11, !dbg !4506
  call void @put_device(ptr noundef %dev24) #16, !dbg !4507
  br label %out_unlock, !dbg !4507

out_unlock:                                       ; preds = %free_idr, %if.end
  call void @llvm.dbg.label(metadata !4425), !dbg !4508
  call void @mutex_unlock(ptr noundef @pps_idr_lock) #16, !dbg !4509
  %29 = load i32, ptr %err, align 4, !dbg !4510
  store i32 %29, ptr %retval, align 4, !dbg !4511
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4511

cleanup:                                          ; preds = %out_unlock, %if.end17
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !4512
  %30 = load i32, ptr %retval, align 4, !dbg !4512
  ret i32 %30, !dbg !4512
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4513 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4517 dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4521 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #5 align 16 !dbg !4525 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4529, metadata !DIExpression()), !dbg !4531
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4530, metadata !DIExpression()), !dbg !4532
  %0 = load ptr, ptr %data.addr, align 8, !dbg !4533
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4534
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !4535
  store ptr %0, ptr %driver_data, align 8, !dbg !4536
  ret void, !dbg !4537
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4538 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4541 dso_local i32 @device_register(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pps_device_destruct(ptr noundef %dev) #0 align 16 !dbg !4542 {
entry:
  %dev.addr = alloca ptr, align 8
  %pps = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4544, metadata !DIExpression()), !dbg !4546
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !4547
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !4545, metadata !DIExpression()), !dbg !4548
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4549
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #16, !dbg !4550
  store ptr %call, ptr %pps, align 8, !dbg !4548
  store i32 0, ptr %tmp, align 4, !dbg !4551
  %1 = load i32, ptr %tmp, align 4, !dbg !4554
  %2 = load ptr, ptr %pps, align 8, !dbg !4555
  call void @kfree(ptr noundef %2) #16, !dbg !4556
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !4557
  ret void, !dbg !4557
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4558 dso_local ptr @get_device(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4561 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4562 dso_local ptr @idr_remove(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4565 dso_local void @put_device(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pps_unregister_cdev(ptr noundef %pps) #0 align 16 !dbg !4566 {
entry:
  %pps.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !4570, metadata !DIExpression()), !dbg !4571
  store i32 0, ptr %tmp, align 4, !dbg !4572
  %0 = load i32, ptr %tmp, align 4, !dbg !4575
  %1 = load ptr, ptr %pps.addr, align 8, !dbg !4576
  %lookup_cookie = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 10, !dbg !4577
  store ptr null, ptr %lookup_cookie, align 8, !dbg !4578
  %2 = load ptr, ptr @pps_class, align 8, !dbg !4579
  %3 = load ptr, ptr %pps.addr, align 8, !dbg !4580
  %dev = getelementptr inbounds %struct.pps_device, ptr %3, i32 0, i32 11, !dbg !4581
  %devt = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 26, !dbg !4582
  %4 = load i32, ptr %devt, align 4, !dbg !4582
  call void @device_destroy(ptr noundef %2, i32 noundef %4) #16, !dbg !4583
  call void @mutex_lock(ptr noundef @pps_idr_lock) #16, !dbg !4584
  %5 = load ptr, ptr %pps.addr, align 8, !dbg !4585
  %id = getelementptr inbounds %struct.pps_device, ptr %5, i32 0, i32 9, !dbg !4586
  %6 = load i32, ptr %id, align 8, !dbg !4586
  %conv = zext i32 %6 to i64, !dbg !4585
  %call = call ptr @idr_remove(ptr noundef @pps_idr, i64 noundef %conv) #16, !dbg !4587
  %7 = load ptr, ptr %pps.addr, align 8, !dbg !4588
  %dev1 = getelementptr inbounds %struct.pps_device, ptr %7, i32 0, i32 11, !dbg !4589
  call void @put_device(ptr noundef %dev1) #16, !dbg !4590
  call void @mutex_unlock(ptr noundef @pps_idr_lock) #16, !dbg !4591
  ret void, !dbg !4592
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4593 dso_local void @device_destroy(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pps_lookup_dev(ptr noundef %cookie) #0 align 16 !dbg !4596 {
entry:
  %cookie.addr = alloca ptr, align 8
  %pps = alloca ptr, align 8
  %id = alloca i32, align 4
  store ptr %cookie, ptr %cookie.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cookie.addr, metadata !4600, metadata !DIExpression()), !dbg !4603
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !4604
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !4601, metadata !DIExpression()), !dbg !4605
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #15, !dbg !4606
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4602, metadata !DIExpression()), !dbg !4607
  call void @rcu_read_lock() #16, !dbg !4608
  store i32 0, ptr %id, align 4, !dbg !4609
  br label %for.cond, !dbg !4609

for.cond:                                         ; preds = %for.inc, %entry
  %call = call ptr @idr_get_next(ptr noundef @pps_idr, ptr noundef %id) #16, !dbg !4611
  store ptr %call, ptr %pps, align 8, !dbg !4611
  %cmp = icmp ne ptr %call, null, !dbg !4611
  br i1 %cmp, label %for.body, label %for.end, !dbg !4609

for.body:                                         ; preds = %for.cond
  %0 = load ptr, ptr %cookie.addr, align 8, !dbg !4613
  %1 = load ptr, ptr %pps, align 8, !dbg !4615
  %lookup_cookie = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 10, !dbg !4616
  %2 = load ptr, ptr %lookup_cookie, align 8, !dbg !4616
  %cmp1 = icmp eq ptr %0, %2, !dbg !4617
  br i1 %cmp1, label %if.then, label %if.end, !dbg !4618

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !4619

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4616

for.inc:                                          ; preds = %if.end
  %3 = load i32, ptr %id, align 4, !dbg !4611
  %add = add i32 %3, 1, !dbg !4611
  store i32 %add, ptr %id, align 4, !dbg !4611
  br label %for.cond, !dbg !4611, !llvm.loop !4620

for.end:                                          ; preds = %if.then, %for.cond
  call void @rcu_read_unlock() #16, !dbg !4624
  %4 = load ptr, ptr %pps, align 8, !dbg !4625
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #15, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !4626
  ret ptr %4, !dbg !4627
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !4628 {
entry:
  call void @__rcu_read_lock() #16, !dbg !4630
  br label %do.body, !dbg !4631

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4632

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !4634

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4635

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4637
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4638 dso_local ptr @idr_get_next(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #5 align 16 !dbg !4641 {
entry:
  br label %do.body, !dbg !4642

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4643

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #16, !dbg !4645
  br label %do.body1, !dbg !4646

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !4647

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !4649
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @pps_exit() #7 section ".exit.text" align 16 !dbg !4650 {
entry:
  %0 = load ptr, ptr @pps_class, align 8, !dbg !4651
  call void @class_destroy(ptr noundef %0) #16, !dbg !4652
  %1 = load i32, ptr @pps_major, align 4, !dbg !4653
  call void @__unregister_chrdev(i32 noundef %1, i32 noundef 0, i32 noundef 16, ptr noundef @.str.2) #16, !dbg !4654
  ret void, !dbg !4655
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4656 dso_local void @class_destroy(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4657 dso_local void @__unregister_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pps_core__268_489_pps_init4() #7 section ".init.text" align 16 !dbg !4660 {
entry:
  %call = call i32 @pps_init() #17, !dbg !4661
  ret i32 %call, !dbg !4661
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pps_init() #7 section ".init.text" align 16 !dbg !4662 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp9 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %tmp18 = alloca i32, align 4
  %call = call ptr @class_create(ptr noundef @.str.2) #16, !dbg !4665
  store ptr %call, ptr @pps_class, align 8, !dbg !4666
  %0 = load ptr, ptr @pps_class, align 8, !dbg !4667
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #16, !dbg !4669
  br i1 %call1, label %if.then, label %if.end, !dbg !4670

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4671

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4674

do.end:                                           ; preds = %do.body
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3) #17, !dbg !4671
  store i32 %call2, ptr %tmp, align 4, !dbg !4674
  %1 = load i32, ptr %tmp, align 4, !dbg !4671
  %2 = load ptr, ptr @pps_class, align 8, !dbg !4676
  %call3 = call i64 @PTR_ERR(ptr noundef %2) #16, !dbg !4677
  %conv = trunc i64 %call3 to i32, !dbg !4677
  store i32 %conv, ptr %retval, align 4, !dbg !4678
  br label %return, !dbg !4678

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @pps_class, align 8, !dbg !4679
  %dev_groups = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 2, !dbg !4680
  store ptr @pps_groups, ptr %dev_groups, align 8, !dbg !4681
  %call4 = call i32 @__register_chrdev(i32 noundef 0, i32 noundef 0, i32 noundef 16, ptr noundef @.str.2, ptr noundef @pps_cdev_fops) #16, !dbg !4682
  store i32 %call4, ptr @pps_major, align 4, !dbg !4683
  %4 = load i32, ptr @pps_major, align 4, !dbg !4684
  %cmp = icmp slt i32 %4, 0, !dbg !4686
  br i1 %cmp, label %if.then6, label %if.end11, !dbg !4687

if.then6:                                         ; preds = %if.end
  br label %do.body7, !dbg !4688

do.body7:                                         ; preds = %if.then6
  br label %do.end8, !dbg !4691

do.end8:                                          ; preds = %do.body7
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4) #17, !dbg !4688
  store i32 %call10, ptr %tmp9, align 4, !dbg !4691
  %5 = load i32, ptr %tmp9, align 4, !dbg !4688
  br label %remove_class, !dbg !4693

if.end11:                                         ; preds = %if.end
  br label %do.body12, !dbg !4694

do.body12:                                        ; preds = %if.end11
  br label %do.end13, !dbg !4696

do.end13:                                         ; preds = %do.body12
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, i32 noundef 1) #17, !dbg !4694
  store i32 %call15, ptr %tmp14, align 4, !dbg !4696
  %6 = load i32, ptr %tmp14, align 4, !dbg !4694
  br label %do.body16, !dbg !4698

do.body16:                                        ; preds = %do.end13
  br label %do.end17, !dbg !4700

do.end17:                                         ; preds = %do.body16
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef @.str.7) #17, !dbg !4698
  store i32 %call19, ptr %tmp18, align 4, !dbg !4700
  %7 = load i32, ptr %tmp18, align 4, !dbg !4698
  store i32 0, ptr %retval, align 4, !dbg !4702
  br label %return, !dbg !4702

remove_class:                                     ; preds = %do.end8
  call void @llvm.dbg.label(metadata !4664), !dbg !4703
  %8 = load ptr, ptr @pps_class, align 8, !dbg !4704
  call void @class_destroy(ptr noundef %8) #16, !dbg !4705
  %9 = load i32, ptr @pps_major, align 4, !dbg !4706
  store i32 %9, ptr %retval, align 4, !dbg !4707
  br label %return, !dbg !4707

return:                                           ; preds = %remove_class, %do.end17, %do.end
  %10 = load i32, ptr %retval, align 4, !dbg !4708
  ret i32 %10, !dbg !4708
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #5 align 16 !dbg !4709 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4713, metadata !DIExpression()), !dbg !4714
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4715
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !4716
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4716
  ret ptr %1, !dbg !4717
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4718 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4722 dso_local void @__rcu_read_lock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4723 dso_local void @__rcu_read_unlock() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4724 dso_local ptr @class_create(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #5 align 16 !dbg !4727 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4732, metadata !DIExpression()), !dbg !4733
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4734
  %1 = ptrtoint ptr %0 to i64, !dbg !4734
  %2 = inttoptr i64 %1 to ptr, !dbg !4734
  %3 = ptrtoint ptr %2 to i64, !dbg !4734
  %cmp = icmp uge i64 %3, -4095, !dbg !4734
  %lnot = xor i1 %cmp, true, !dbg !4734
  %lnot1 = xor i1 %lnot, true, !dbg !4734
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4734
  %conv = sext i32 %lnot.ext to i64, !dbg !4734
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4734
  %tobool = icmp ne i64 %expval, 0, !dbg !4734
  ret i1 %tobool, !dbg !4735
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !4736 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4742
  %1 = ptrtoint ptr %0 to i64, !dbg !4743
  ret i64 %1, !dbg !4744
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4745 dso_local i32 @__register_chrdev(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pps_cdev_poll(ptr noundef %file, ptr noundef %wait) #0 align 16 !dbg !4748 {
entry:
  %file.addr = alloca ptr, align 8
  %wait.addr = alloca ptr, align 8
  %pps = alloca ptr, align 8
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4754, metadata !DIExpression()), !dbg !4757
  store ptr %wait, ptr %wait.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait.addr, metadata !4755, metadata !DIExpression()), !dbg !4758
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !4759
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !4756, metadata !DIExpression()), !dbg !4760
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4761
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4762
  %1 = load ptr, ptr %private_data, align 8, !dbg !4762
  store ptr %1, ptr %pps, align 8, !dbg !4760
  %2 = load ptr, ptr %file.addr, align 8, !dbg !4763
  %3 = load ptr, ptr %pps, align 8, !dbg !4764
  %queue = getelementptr inbounds %struct.pps_device, ptr %3, i32 0, i32 8, !dbg !4765
  %4 = load ptr, ptr %wait.addr, align 8, !dbg !4766
  call void @poll_wait(ptr noundef %2, ptr noundef %queue, ptr noundef %4) #16, !dbg !4767
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !4768
  ret i32 65, !dbg !4769
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pps_cdev_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !4770 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %pps = alloca ptr, align 8
  %params = alloca %struct.pps_kparams, align 8
  %uarg = alloca ptr, align 8
  %iuarg = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_pu = alloca i32, align 4
  %__ptr_pu = alloca ptr, align 8
  %__val_pu = alloca i32, align 4
  %__x = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp49 = alloca i64, align 8
  %fdata = alloca %struct.pps_fdata, align 8
  %bind_args = alloca %struct.pps_bind_args, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4772, metadata !DIExpression()), !dbg !4808
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !4773, metadata !DIExpression()), !dbg !4809
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4774, metadata !DIExpression()), !dbg !4810
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !4811
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !4775, metadata !DIExpression()), !dbg !4812
  %0 = load ptr, ptr %file.addr, align 8, !dbg !4813
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !4814
  %1 = load ptr, ptr %private_data, align 8, !dbg !4814
  store ptr %1, ptr %pps, align 8, !dbg !4812
  call void @llvm.lifetime.start.p0(i64 40, ptr %params) #15, !dbg !4815
  call void @llvm.dbg.declare(metadata ptr %params, metadata !4776, metadata !DIExpression()), !dbg !4816
  call void @llvm.lifetime.start.p0(i64 8, ptr %uarg) #15, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %uarg, metadata !4777, metadata !DIExpression()), !dbg !4818
  %2 = load i64, ptr %arg.addr, align 8, !dbg !4819
  %3 = inttoptr i64 %2 to ptr, !dbg !4820
  store ptr %3, ptr %uarg, align 8, !dbg !4818
  call void @llvm.lifetime.start.p0(i64 8, ptr %iuarg) #15, !dbg !4821
  call void @llvm.dbg.declare(metadata ptr %iuarg, metadata !4778, metadata !DIExpression()), !dbg !4822
  %4 = load i64, ptr %arg.addr, align 8, !dbg !4823
  %5 = inttoptr i64 %4 to ptr, !dbg !4824
  store ptr %5, ptr %iuarg, align 8, !dbg !4822
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !4825
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4779, metadata !DIExpression()), !dbg !4826
  %6 = load i32, ptr %cmd.addr, align 4, !dbg !4827
  switch i32 %6, label %sw.default [
    i32 -2146930527, label %sw.bb
    i32 1074294946, label %sw.bb3
    i32 -2146930525, label %sw.bb45
    i32 -1073188700, label %sw.bb55
    i32 1074294949, label %sw.bb83
  ], !dbg !4828

sw.bb:                                            ; preds = %entry
  %7 = load ptr, ptr %pps, align 8, !dbg !4829
  %lock = getelementptr inbounds %struct.pps_device, ptr %7, i32 0, i32 13, !dbg !4830
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !4831
  %8 = load ptr, ptr %pps, align 8, !dbg !4832
  %params1 = getelementptr inbounds %struct.pps_device, ptr %8, i32 0, i32 1, !dbg !4833
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params, ptr align 8 %params1, i64 40, i1 false), !dbg !4833
  %9 = load ptr, ptr %pps, align 8, !dbg !4834
  %lock2 = getelementptr inbounds %struct.pps_device, ptr %9, i32 0, i32 13, !dbg !4835
  call void @spin_unlock_irq(ptr noundef %lock2) #16, !dbg !4836
  %10 = load ptr, ptr %uarg, align 8, !dbg !4837
  %call = call i64 @copy_to_user(ptr noundef %10, ptr noundef %params, i64 noundef 40) #16, !dbg !4838
  %conv = trunc i64 %call to i32, !dbg !4838
  store i32 %conv, ptr %err, align 4, !dbg !4839
  %11 = load i32, ptr %err, align 4, !dbg !4840
  %tobool = icmp ne i32 %11, 0, !dbg !4840
  br i1 %tobool, label %if.then, label %if.end, !dbg !4842

if.then:                                          ; preds = %sw.bb
  store i64 -14, ptr %retval, align 8, !dbg !4843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !4843

if.end:                                           ; preds = %sw.bb
  br label %sw.epilog, !dbg !4844

sw.bb3:                                           ; preds = %entry
  %call4 = call zeroext i1 @capable(i32 noundef 25) #16, !dbg !4845
  br i1 %call4, label %if.end6, label %if.then5, !dbg !4847

if.then5:                                         ; preds = %sw.bb3
  store i64 -1, ptr %retval, align 8, !dbg !4848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !4848

if.end6:                                          ; preds = %sw.bb3
  %12 = load ptr, ptr %uarg, align 8, !dbg !4849
  %call7 = call i64 @copy_from_user(ptr noundef %params, ptr noundef %12, i64 noundef 40) #16, !dbg !4850
  %conv8 = trunc i64 %call7 to i32, !dbg !4850
  store i32 %conv8, ptr %err, align 4, !dbg !4851
  %13 = load i32, ptr %err, align 4, !dbg !4852
  %tobool9 = icmp ne i32 %13, 0, !dbg !4852
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4854

if.then10:                                        ; preds = %if.end6
  store i64 -14, ptr %retval, align 8, !dbg !4855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !4855

if.end11:                                         ; preds = %if.end6
  %mode = getelementptr inbounds %struct.pps_kparams, ptr %params, i32 0, i32 1, !dbg !4856
  %14 = load i32, ptr %mode, align 4, !dbg !4856
  %and = and i32 %14, 3, !dbg !4858
  %tobool12 = icmp ne i32 %and, 0, !dbg !4858
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !4859

if.then13:                                        ; preds = %if.end11
  store i64 -22, ptr %retval, align 8, !dbg !4860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !4860

if.end14:                                         ; preds = %if.end11
  %mode15 = getelementptr inbounds %struct.pps_kparams, ptr %params, i32 0, i32 1, !dbg !4862
  %15 = load i32, ptr %mode15, align 4, !dbg !4862
  %16 = load ptr, ptr %pps, align 8, !dbg !4864
  %info = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 0, !dbg !4865
  %mode16 = getelementptr inbounds %struct.pps_source_info, ptr %info, i32 0, i32 2, !dbg !4866
  %17 = load i32, ptr %mode16, align 8, !dbg !4866
  %not = xor i32 %17, -1, !dbg !4867
  %and17 = and i32 %15, %not, !dbg !4868
  %cmp = icmp ne i32 %and17, 0, !dbg !4869
  br i1 %cmp, label %if.then19, label %if.end20, !dbg !4870

if.then19:                                        ; preds = %if.end14
  store i64 -22, ptr %retval, align 8, !dbg !4871
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !4871

if.end20:                                         ; preds = %if.end14
  %18 = load ptr, ptr %pps, align 8, !dbg !4873
  %lock21 = getelementptr inbounds %struct.pps_device, ptr %18, i32 0, i32 13, !dbg !4874
  call void @spin_lock_irq(ptr noundef %lock21) #16, !dbg !4875
  %19 = load ptr, ptr %pps, align 8, !dbg !4876
  %params22 = getelementptr inbounds %struct.pps_device, ptr %19, i32 0, i32 1, !dbg !4877
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %params22, ptr align 8 %params, i64 40, i1 false), !dbg !4878
  %mode23 = getelementptr inbounds %struct.pps_kparams, ptr %params, i32 0, i32 1, !dbg !4879
  %20 = load i32, ptr %mode23, align 4, !dbg !4879
  %and24 = and i32 %20, 12288, !dbg !4881
  %cmp25 = icmp eq i32 %and24, 0, !dbg !4882
  br i1 %cmp25, label %if.then27, label %if.end30, !dbg !4883

if.then27:                                        ; preds = %if.end20
  %21 = load ptr, ptr %pps, align 8, !dbg !4884
  %params28 = getelementptr inbounds %struct.pps_device, ptr %21, i32 0, i32 1, !dbg !4886
  %mode29 = getelementptr inbounds %struct.pps_kparams, ptr %params28, i32 0, i32 1, !dbg !4887
  %22 = load i32, ptr %mode29, align 4, !dbg !4888
  %or = or i32 %22, 4096, !dbg !4888
  store i32 %or, ptr %mode29, align 4, !dbg !4888
  br label %if.end30, !dbg !4889

if.end30:                                         ; preds = %if.then27, %if.end20
  %23 = load ptr, ptr %pps, align 8, !dbg !4890
  %info31 = getelementptr inbounds %struct.pps_device, ptr %23, i32 0, i32 0, !dbg !4892
  %mode32 = getelementptr inbounds %struct.pps_source_info, ptr %info31, i32 0, i32 2, !dbg !4893
  %24 = load i32, ptr %mode32, align 8, !dbg !4893
  %and33 = and i32 %24, 256, !dbg !4894
  %tobool34 = icmp ne i32 %and33, 0, !dbg !4894
  br i1 %tobool34, label %if.then35, label %if.end39, !dbg !4895

if.then35:                                        ; preds = %if.end30
  %25 = load ptr, ptr %pps, align 8, !dbg !4896
  %params36 = getelementptr inbounds %struct.pps_device, ptr %25, i32 0, i32 1, !dbg !4897
  %mode37 = getelementptr inbounds %struct.pps_kparams, ptr %params36, i32 0, i32 1, !dbg !4898
  %26 = load i32, ptr %mode37, align 4, !dbg !4899
  %or38 = or i32 %26, 256, !dbg !4899
  store i32 %or38, ptr %mode37, align 4, !dbg !4899
  br label %if.end39, !dbg !4896

if.end39:                                         ; preds = %if.then35, %if.end30
  %27 = load ptr, ptr %pps, align 8, !dbg !4900
  %params40 = getelementptr inbounds %struct.pps_device, ptr %27, i32 0, i32 1, !dbg !4901
  %api_version = getelementptr inbounds %struct.pps_kparams, ptr %params40, i32 0, i32 0, !dbg !4902
  store i32 1, ptr %api_version, align 8, !dbg !4903
  %28 = load ptr, ptr %pps, align 8, !dbg !4904
  %params41 = getelementptr inbounds %struct.pps_device, ptr %28, i32 0, i32 1, !dbg !4905
  %assert_off_tu = getelementptr inbounds %struct.pps_kparams, ptr %params41, i32 0, i32 2, !dbg !4906
  %flags = getelementptr inbounds %struct.pps_ktime, ptr %assert_off_tu, i32 0, i32 2, !dbg !4907
  store i32 0, ptr %flags, align 4, !dbg !4908
  %29 = load ptr, ptr %pps, align 8, !dbg !4909
  %params42 = getelementptr inbounds %struct.pps_device, ptr %29, i32 0, i32 1, !dbg !4910
  %clear_off_tu = getelementptr inbounds %struct.pps_kparams, ptr %params42, i32 0, i32 3, !dbg !4911
  %flags43 = getelementptr inbounds %struct.pps_ktime, ptr %clear_off_tu, i32 0, i32 2, !dbg !4912
  store i32 0, ptr %flags43, align 4, !dbg !4913
  %30 = load ptr, ptr %pps, align 8, !dbg !4914
  %lock44 = getelementptr inbounds %struct.pps_device, ptr %30, i32 0, i32 13, !dbg !4915
  call void @spin_unlock_irq(ptr noundef %lock44) #16, !dbg !4916
  br label %sw.epilog, !dbg !4917

sw.bb45:                                          ; preds = %entry
  call void @might_fault() #16, !dbg !4918
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_pu) #15, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %__ret_pu, metadata !4780, metadata !DIExpression()), !dbg !4919
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr_pu) #15, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %__ptr_pu, metadata !4784, metadata !DIExpression()), !dbg !4919
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val_pu) #15, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %__val_pu, metadata !4785, metadata !DIExpression()), !dbg !4919
  call void @llvm.lifetime.start.p0(i64 4, ptr %__x) #15, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %__x, metadata !4786, metadata !DIExpression()), !dbg !4919
  %31 = load ptr, ptr %pps, align 8, !dbg !4919
  %info46 = getelementptr inbounds %struct.pps_device, ptr %31, i32 0, i32 0, !dbg !4919
  %mode47 = getelementptr inbounds %struct.pps_source_info, ptr %info46, i32 0, i32 2, !dbg !4919
  %32 = load i32, ptr %mode47, align 8, !dbg !4919
  store i32 %32, ptr %__x, align 4, !dbg !4919
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #15, !dbg !4919
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4787, metadata !DIExpression()), !dbg !4919
  %33 = load ptr, ptr %iuarg, align 8, !dbg !4919
  store ptr %33, ptr %__ptr, align 8, !dbg !4919
  %34 = load ptr, ptr %__ptr, align 8, !dbg !4919
  store ptr %34, ptr %__ptr_pu, align 8, !dbg !4919
  %35 = load i32, ptr %__x, align 4, !dbg !4919
  store i32 %35, ptr %__val_pu, align 4, !dbg !4919
  %36 = call i64 @llvm.read_register.i64(metadata !4358), !dbg !4919
  %37 = load ptr, ptr %__ptr_pu, align 8, !dbg !4919
  %38 = load i32, ptr %__val_pu, align 4, !dbg !4919
  %39 = call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %37, i32 %38, i64 4, i64 %36) #15, !dbg !4919, !srcloc !4920
  %asmresult = extractvalue { ptr, i64 } %39, 0, !dbg !4919
  %asmresult48 = extractvalue { ptr, i64 } %39, 1, !dbg !4919
  %40 = ptrtoint ptr %asmresult to i64, !dbg !4919
  %41 = trunc i64 %40 to i32, !dbg !4919
  store i32 %41, ptr %__ret_pu, align 4, !dbg !4919
  call void @llvm.write_register.i64(metadata !4358, i64 %asmresult48), !dbg !4919
  %42 = load ptr, ptr %__ptr, align 8, !dbg !4921
  call void @kmsan_copy_to_user(ptr noundef %42, ptr noundef %__x, i64 noundef 4, i64 noundef 0) #16, !dbg !4921
  %43 = load i32, ptr %__ret_pu, align 4, !dbg !4919
  %conv50 = sext i32 %43 to i64, !dbg !4919
  %expval = call i64 @llvm.expect.i64(i64 %conv50, i64 0), !dbg !4919
  store i64 %expval, ptr %tmp49, align 8, !dbg !4919
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #15, !dbg !4918
  call void @llvm.lifetime.end.p0(i64 4, ptr %__x) #15, !dbg !4918
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val_pu) #15, !dbg !4918
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr_pu) #15, !dbg !4918
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_pu) #15, !dbg !4918
  %44 = load i64, ptr %tmp49, align 8, !dbg !4919
  store i64 %44, ptr %tmp, align 8, !dbg !4918
  %45 = load i64, ptr %tmp, align 8, !dbg !4918
  %conv51 = trunc i64 %45 to i32, !dbg !4923
  store i32 %conv51, ptr %err, align 4, !dbg !4924
  %46 = load i32, ptr %err, align 4, !dbg !4925
  %tobool52 = icmp ne i32 %46, 0, !dbg !4925
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !4927

if.then53:                                        ; preds = %sw.bb45
  store i64 -14, ptr %retval, align 8, !dbg !4928
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !4928

if.end54:                                         ; preds = %sw.bb45
  br label %sw.epilog, !dbg !4929

sw.bb55:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr %fdata) #15, !dbg !4930
  call void @llvm.dbg.declare(metadata ptr %fdata, metadata !4788, metadata !DIExpression()), !dbg !4931
  %47 = load ptr, ptr %uarg, align 8, !dbg !4932
  %call56 = call i64 @copy_from_user(ptr noundef %fdata, ptr noundef %47, i64 noundef 64) #16, !dbg !4933
  %conv57 = trunc i64 %call56 to i32, !dbg !4933
  store i32 %conv57, ptr %err, align 4, !dbg !4934
  %48 = load i32, ptr %err, align 4, !dbg !4935
  %tobool58 = icmp ne i32 %48, 0, !dbg !4935
  br i1 %tobool58, label %if.then59, label %if.end60, !dbg !4937

if.then59:                                        ; preds = %sw.bb55
  store i64 -14, ptr %retval, align 8, !dbg !4938
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4938

if.end60:                                         ; preds = %sw.bb55
  %49 = load ptr, ptr %pps, align 8, !dbg !4939
  %call61 = call i32 @pps_cdev_pps_fetch(ptr noundef %49, ptr noundef %fdata) #16, !dbg !4940
  store i32 %call61, ptr %err, align 4, !dbg !4941
  %50 = load i32, ptr %err, align 4, !dbg !4942
  %tobool62 = icmp ne i32 %50, 0, !dbg !4942
  br i1 %tobool62, label %if.then63, label %if.end65, !dbg !4944

if.then63:                                        ; preds = %if.end60
  %51 = load i32, ptr %err, align 4, !dbg !4945
  %conv64 = sext i32 %51 to i64, !dbg !4945
  store i64 %conv64, ptr %retval, align 8, !dbg !4946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4946

if.end65:                                         ; preds = %if.end60
  %52 = load ptr, ptr %pps, align 8, !dbg !4947
  %lock66 = getelementptr inbounds %struct.pps_device, ptr %52, i32 0, i32 13, !dbg !4948
  call void @spin_lock_irq(ptr noundef %lock66) #16, !dbg !4949
  %53 = load ptr, ptr %pps, align 8, !dbg !4950
  %assert_sequence = getelementptr inbounds %struct.pps_device, ptr %53, i32 0, i32 2, !dbg !4951
  %54 = load i32, ptr %assert_sequence, align 8, !dbg !4951
  %info67 = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 0, !dbg !4952
  %assert_sequence68 = getelementptr inbounds %struct.pps_kinfo, ptr %info67, i32 0, i32 0, !dbg !4953
  store i32 %54, ptr %assert_sequence68, align 8, !dbg !4954
  %55 = load ptr, ptr %pps, align 8, !dbg !4955
  %clear_sequence = getelementptr inbounds %struct.pps_device, ptr %55, i32 0, i32 3, !dbg !4956
  %56 = load i32, ptr %clear_sequence, align 4, !dbg !4956
  %info69 = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 0, !dbg !4957
  %clear_sequence70 = getelementptr inbounds %struct.pps_kinfo, ptr %info69, i32 0, i32 1, !dbg !4958
  store i32 %56, ptr %clear_sequence70, align 4, !dbg !4959
  %info71 = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 0, !dbg !4960
  %assert_tu = getelementptr inbounds %struct.pps_kinfo, ptr %info71, i32 0, i32 2, !dbg !4961
  %57 = load ptr, ptr %pps, align 8, !dbg !4962
  %assert_tu72 = getelementptr inbounds %struct.pps_device, ptr %57, i32 0, i32 4, !dbg !4963
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %assert_tu, ptr align 8 %assert_tu72, i64 16, i1 false), !dbg !4963
  %info73 = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 0, !dbg !4964
  %clear_tu = getelementptr inbounds %struct.pps_kinfo, ptr %info73, i32 0, i32 3, !dbg !4965
  %58 = load ptr, ptr %pps, align 8, !dbg !4966
  %clear_tu74 = getelementptr inbounds %struct.pps_device, ptr %58, i32 0, i32 5, !dbg !4967
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %clear_tu, ptr align 8 %clear_tu74, i64 16, i1 false), !dbg !4967
  %59 = load ptr, ptr %pps, align 8, !dbg !4968
  %current_mode = getelementptr inbounds %struct.pps_device, ptr %59, i32 0, i32 6, !dbg !4969
  %60 = load i32, ptr %current_mode, align 8, !dbg !4969
  %info75 = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 0, !dbg !4970
  %current_mode76 = getelementptr inbounds %struct.pps_kinfo, ptr %info75, i32 0, i32 4, !dbg !4971
  store i32 %60, ptr %current_mode76, align 8, !dbg !4972
  %61 = load ptr, ptr %pps, align 8, !dbg !4973
  %lock77 = getelementptr inbounds %struct.pps_device, ptr %61, i32 0, i32 13, !dbg !4974
  call void @spin_unlock_irq(ptr noundef %lock77) #16, !dbg !4975
  %62 = load ptr, ptr %uarg, align 8, !dbg !4976
  %call78 = call i64 @copy_to_user(ptr noundef %62, ptr noundef %fdata, i64 noundef 64) #16, !dbg !4977
  %conv79 = trunc i64 %call78 to i32, !dbg !4977
  store i32 %conv79, ptr %err, align 4, !dbg !4978
  %63 = load i32, ptr %err, align 4, !dbg !4979
  %tobool80 = icmp ne i32 %63, 0, !dbg !4979
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !4981

if.then81:                                        ; preds = %if.end65
  store i64 -14, ptr %retval, align 8, !dbg !4982
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4982

if.end82:                                         ; preds = %if.end65
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4983

cleanup:                                          ; preds = %if.end82, %if.then81, %if.then63, %if.then59
  call void @llvm.lifetime.end.p0(i64 64, ptr %fdata) #15, !dbg !4984
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup124 [
    i32 2, label %sw.epilog
  ]

sw.bb83:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr %bind_args) #15, !dbg !4985
  call void @llvm.dbg.declare(metadata ptr %bind_args, metadata !4801, metadata !DIExpression()), !dbg !4986
  %call84 = call zeroext i1 @capable(i32 noundef 25) #16, !dbg !4987
  br i1 %call84, label %if.end86, label %if.then85, !dbg !4989

if.then85:                                        ; preds = %sw.bb83
  store i64 -1, ptr %retval, align 8, !dbg !4990
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !4990

if.end86:                                         ; preds = %sw.bb83
  %64 = load ptr, ptr %uarg, align 8, !dbg !4991
  %call87 = call i64 @copy_from_user(ptr noundef %bind_args, ptr noundef %64, i64 noundef 12) #16, !dbg !4993
  %tobool88 = icmp ne i64 %call87, 0, !dbg !4993
  br i1 %tobool88, label %if.then89, label %if.end90, !dbg !4994

if.then89:                                        ; preds = %if.end86
  store i64 -14, ptr %retval, align 8, !dbg !4995
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !4995

if.end90:                                         ; preds = %if.end86
  %edge = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 1, !dbg !4996
  %65 = load i32, ptr %edge, align 4, !dbg !4996
  %66 = load ptr, ptr %pps, align 8, !dbg !4998
  %info91 = getelementptr inbounds %struct.pps_device, ptr %66, i32 0, i32 0, !dbg !4999
  %mode92 = getelementptr inbounds %struct.pps_source_info, ptr %info91, i32 0, i32 2, !dbg !5000
  %67 = load i32, ptr %mode92, align 8, !dbg !5000
  %not93 = xor i32 %67, -1, !dbg !5001
  %and94 = and i32 %65, %not93, !dbg !5002
  %cmp95 = icmp ne i32 %and94, 0, !dbg !5003
  br i1 %cmp95, label %if.then97, label %if.end99, !dbg !5004

if.then97:                                        ; preds = %if.end90
  br label %do.body, !dbg !5005

do.body:                                          ; preds = %if.then97
  br label %do.cond, !dbg !5008

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5008

do.end:                                           ; preds = %do.cond
  %68 = load ptr, ptr %pps, align 8, !dbg !5005
  %dev = getelementptr inbounds %struct.pps_device, ptr %68, i32 0, i32 11, !dbg !5005
  %edge98 = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 1, !dbg !5005
  %69 = load i32, ptr %edge98, align 4, !dbg !5005
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.8, i32 noundef %69) #17, !dbg !5005
  store i64 -22, ptr %retval, align 8, !dbg !5010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !5010

if.end99:                                         ; preds = %if.end90
  %tsformat = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 0, !dbg !5011
  %70 = load i32, ptr %tsformat, align 4, !dbg !5011
  %cmp100 = icmp ne i32 %70, 4096, !dbg !5013
  br i1 %cmp100, label %if.then109, label %lor.lhs.false, !dbg !5014

lor.lhs.false:                                    ; preds = %if.end99
  %edge102 = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 1, !dbg !5015
  %71 = load i32, ptr %edge102, align 4, !dbg !5015
  %and103 = and i32 %71, -4, !dbg !5016
  %cmp104 = icmp ne i32 %and103, 0, !dbg !5017
  br i1 %cmp104, label %if.then109, label %lor.lhs.false106, !dbg !5018

lor.lhs.false106:                                 ; preds = %lor.lhs.false
  %consumer = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 2, !dbg !5019
  %72 = load i32, ptr %consumer, align 4, !dbg !5019
  %cmp107 = icmp ne i32 %72, 0, !dbg !5020
  br i1 %cmp107, label %if.then109, label %if.end115, !dbg !5021

if.then109:                                       ; preds = %lor.lhs.false106, %lor.lhs.false, %if.end99
  br label %do.body110, !dbg !5022

do.body110:                                       ; preds = %if.then109
  br label %do.cond111, !dbg !5025

do.cond111:                                       ; preds = %do.body110
  br label %do.end112, !dbg !5025

do.end112:                                        ; preds = %do.cond111
  %73 = load ptr, ptr %pps, align 8, !dbg !5022
  %dev113 = getelementptr inbounds %struct.pps_device, ptr %73, i32 0, i32 11, !dbg !5022
  %edge114 = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 1, !dbg !5022
  %74 = load i32, ptr %edge114, align 4, !dbg !5022
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef @.str.9, i32 noundef %74) #17, !dbg !5022
  store i64 -22, ptr %retval, align 8, !dbg !5027
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !5027

if.end115:                                        ; preds = %lor.lhs.false106
  %75 = load ptr, ptr %pps, align 8, !dbg !5028
  %call116 = call i32 @pps_kc_bind(ptr noundef %75, ptr noundef %bind_args) #16, !dbg !5029
  store i32 %call116, ptr %err, align 4, !dbg !5030
  %76 = load i32, ptr %err, align 4, !dbg !5031
  %cmp117 = icmp slt i32 %76, 0, !dbg !5033
  br i1 %cmp117, label %if.then119, label %if.end121, !dbg !5034

if.then119:                                       ; preds = %if.end115
  %77 = load i32, ptr %err, align 4, !dbg !5035
  %conv120 = sext i32 %77 to i64, !dbg !5035
  store i64 %conv120, ptr %retval, align 8, !dbg !5036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !5036

if.end121:                                        ; preds = %if.end115
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup122, !dbg !5037

cleanup122:                                       ; preds = %if.end121, %if.then119, %do.end112, %do.end, %if.then89, %if.then85
  call void @llvm.lifetime.end.p0(i64 12, ptr %bind_args) #15, !dbg !5038
  %cleanup.dest123 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest123, label %cleanup124 [
    i32 2, label %sw.epilog
  ]

sw.default:                                       ; preds = %entry
  store i64 -25, ptr %retval, align 8, !dbg !5039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !5039

sw.epilog:                                        ; preds = %cleanup122, %cleanup, %if.end54, %if.end39, %if.end
  store i64 0, ptr %retval, align 8, !dbg !5040
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup124, !dbg !5040

cleanup124:                                       ; preds = %sw.epilog, %sw.default, %cleanup122, %cleanup, %if.then53, %if.then19, %if.then13, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5041
  call void @llvm.lifetime.end.p0(i64 8, ptr %iuarg) #15, !dbg !5041
  call void @llvm.lifetime.end.p0(i64 8, ptr %uarg) #15, !dbg !5041
  call void @llvm.lifetime.end.p0(i64 40, ptr %params) #15, !dbg !5041
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !5041
  %78 = load i64, ptr %retval, align 8, !dbg !5041
  ret i64 %78, !dbg !5041
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pps_cdev_compat_ioctl(ptr noundef %file, i32 noundef %cmd, i64 noundef %arg) #0 align 16 !dbg !5042 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %cmd.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %pps = alloca ptr, align 8
  %uarg = alloca ptr, align 8
  %compat = alloca %struct.pps_fdata_compat, align 4
  %fdata = alloca %struct.pps_fdata, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5044, metadata !DIExpression()), !dbg !5070
  store i32 %cmd, ptr %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cmd.addr, metadata !5045, metadata !DIExpression()), !dbg !5071
  store i64 %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5046, metadata !DIExpression()), !dbg !5072
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !5073
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !5047, metadata !DIExpression()), !dbg !5074
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5075
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5076
  %1 = load ptr, ptr %private_data, align 8, !dbg !5076
  store ptr %1, ptr %pps, align 8, !dbg !5074
  call void @llvm.lifetime.start.p0(i64 8, ptr %uarg) #15, !dbg !5077
  call void @llvm.dbg.declare(metadata ptr %uarg, metadata !5048, metadata !DIExpression()), !dbg !5078
  %2 = load i64, ptr %arg.addr, align 8, !dbg !5079
  %3 = inttoptr i64 %2 to ptr, !dbg !5080
  store ptr %3, ptr %uarg, align 8, !dbg !5078
  %4 = load i32, ptr %cmd.addr, align 4, !dbg !5081
  %shr = lshr i32 %4, 30, !dbg !5081
  %and = and i32 %shr, 3, !dbg !5081
  %shl = shl i32 %and, 30, !dbg !5081
  %5 = load i32, ptr %cmd.addr, align 4, !dbg !5081
  %shr1 = lshr i32 %5, 8, !dbg !5081
  %and2 = and i32 %shr1, 255, !dbg !5081
  %shl3 = shl i32 %and2, 8, !dbg !5081
  %or = or i32 %shl, %shl3, !dbg !5081
  %6 = load i32, ptr %cmd.addr, align 4, !dbg !5081
  %shr4 = lshr i32 %6, 0, !dbg !5081
  %and5 = and i32 %shr4, 255, !dbg !5081
  %shl6 = shl i32 %and5, 0, !dbg !5081
  %or7 = or i32 %or, %shl6, !dbg !5081
  %conv = zext i32 %or7 to i64, !dbg !5081
  %or8 = or i64 %conv, 524288, !dbg !5081
  %conv9 = trunc i64 %or8 to i32, !dbg !5081
  store i32 %conv9, ptr %cmd.addr, align 4, !dbg !5082
  %7 = load i32, ptr %cmd.addr, align 4, !dbg !5083
  %conv10 = zext i32 %7 to i64, !dbg !5083
  %cmp = icmp eq i64 %conv10, 3221778596, !dbg !5084
  br i1 %cmp, label %if.then, label %if.end35, !dbg !5085

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 60, ptr %compat) #15, !dbg !5086
  call void @llvm.dbg.declare(metadata ptr %compat, metadata !5049, metadata !DIExpression()), !dbg !5087
  call void @llvm.lifetime.start.p0(i64 64, ptr %fdata) #15, !dbg !5088
  call void @llvm.dbg.declare(metadata ptr %fdata, metadata !5068, metadata !DIExpression()), !dbg !5089
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5090
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5069, metadata !DIExpression()), !dbg !5091
  %8 = load ptr, ptr %uarg, align 8, !dbg !5092
  %call = call i64 @copy_from_user(ptr noundef %compat, ptr noundef %8, i64 noundef 60) #16, !dbg !5093
  %conv12 = trunc i64 %call to i32, !dbg !5093
  store i32 %conv12, ptr %err, align 4, !dbg !5094
  %9 = load i32, ptr %err, align 4, !dbg !5095
  %tobool = icmp ne i32 %9, 0, !dbg !5095
  br i1 %tobool, label %if.then13, label %if.end, !dbg !5097

if.then13:                                        ; preds = %if.then
  store i64 -14, ptr %retval, align 8, !dbg !5098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5098

if.end:                                           ; preds = %if.then
  %timeout = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 1, !dbg !5099
  %timeout14 = getelementptr inbounds %struct.pps_fdata_compat, ptr %compat, i32 0, i32 1, !dbg !5100
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %timeout, ptr align 4 %timeout14, i64 16, i1 false), !dbg !5101
  %10 = load ptr, ptr %pps, align 8, !dbg !5102
  %call15 = call i32 @pps_cdev_pps_fetch(ptr noundef %10, ptr noundef %fdata) #16, !dbg !5103
  store i32 %call15, ptr %err, align 4, !dbg !5104
  %11 = load i32, ptr %err, align 4, !dbg !5105
  %tobool16 = icmp ne i32 %11, 0, !dbg !5105
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5107

if.then17:                                        ; preds = %if.end
  %12 = load i32, ptr %err, align 4, !dbg !5108
  %conv18 = sext i32 %12 to i64, !dbg !5108
  store i64 %conv18, ptr %retval, align 8, !dbg !5109
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5109

if.end19:                                         ; preds = %if.end
  %13 = load ptr, ptr %pps, align 8, !dbg !5110
  %lock = getelementptr inbounds %struct.pps_device, ptr %13, i32 0, i32 13, !dbg !5111
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !5112
  %14 = load ptr, ptr %pps, align 8, !dbg !5113
  %assert_sequence = getelementptr inbounds %struct.pps_device, ptr %14, i32 0, i32 2, !dbg !5114
  %15 = load i32, ptr %assert_sequence, align 8, !dbg !5114
  %info = getelementptr inbounds %struct.pps_fdata_compat, ptr %compat, i32 0, i32 0, !dbg !5115
  %assert_sequence20 = getelementptr inbounds %struct.pps_kinfo_compat, ptr %info, i32 0, i32 0, !dbg !5116
  store i32 %15, ptr %assert_sequence20, align 4, !dbg !5117
  %16 = load ptr, ptr %pps, align 8, !dbg !5118
  %clear_sequence = getelementptr inbounds %struct.pps_device, ptr %16, i32 0, i32 3, !dbg !5119
  %17 = load i32, ptr %clear_sequence, align 4, !dbg !5119
  %info21 = getelementptr inbounds %struct.pps_fdata_compat, ptr %compat, i32 0, i32 0, !dbg !5120
  %clear_sequence22 = getelementptr inbounds %struct.pps_kinfo_compat, ptr %info21, i32 0, i32 1, !dbg !5121
  store i32 %17, ptr %clear_sequence22, align 4, !dbg !5122
  %18 = load ptr, ptr %pps, align 8, !dbg !5123
  %current_mode = getelementptr inbounds %struct.pps_device, ptr %18, i32 0, i32 6, !dbg !5124
  %19 = load i32, ptr %current_mode, align 8, !dbg !5124
  %info23 = getelementptr inbounds %struct.pps_fdata_compat, ptr %compat, i32 0, i32 0, !dbg !5125
  %current_mode24 = getelementptr inbounds %struct.pps_kinfo_compat, ptr %info23, i32 0, i32 4, !dbg !5126
  store i32 %19, ptr %current_mode24, align 4, !dbg !5127
  %info25 = getelementptr inbounds %struct.pps_fdata_compat, ptr %compat, i32 0, i32 0, !dbg !5128
  %assert_tu = getelementptr inbounds %struct.pps_kinfo_compat, ptr %info25, i32 0, i32 2, !dbg !5129
  %20 = load ptr, ptr %pps, align 8, !dbg !5130
  %assert_tu26 = getelementptr inbounds %struct.pps_device, ptr %20, i32 0, i32 4, !dbg !5131
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %assert_tu, ptr align 8 %assert_tu26, i64 16, i1 false), !dbg !5132
  %info27 = getelementptr inbounds %struct.pps_fdata_compat, ptr %compat, i32 0, i32 0, !dbg !5133
  %clear_tu = getelementptr inbounds %struct.pps_kinfo_compat, ptr %info27, i32 0, i32 3, !dbg !5134
  %21 = load ptr, ptr %pps, align 8, !dbg !5135
  %clear_tu28 = getelementptr inbounds %struct.pps_device, ptr %21, i32 0, i32 5, !dbg !5136
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %clear_tu, ptr align 8 %clear_tu28, i64 16, i1 false), !dbg !5137
  %22 = load ptr, ptr %pps, align 8, !dbg !5138
  %lock29 = getelementptr inbounds %struct.pps_device, ptr %22, i32 0, i32 13, !dbg !5139
  call void @spin_unlock_irq(ptr noundef %lock29) #16, !dbg !5140
  %23 = load ptr, ptr %uarg, align 8, !dbg !5141
  %call30 = call i64 @copy_to_user(ptr noundef %23, ptr noundef %compat, i64 noundef 60) #16, !dbg !5142
  %tobool31 = icmp ne i64 %call30, 0, !dbg !5142
  %24 = zext i1 %tobool31 to i64, !dbg !5142
  %cond = select i1 %tobool31, i32 -14, i32 0, !dbg !5142
  %conv32 = sext i32 %cond to i64, !dbg !5142
  store i64 %conv32, ptr %retval, align 8, !dbg !5143
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5143

cleanup:                                          ; preds = %if.end19, %if.then17, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5144
  call void @llvm.lifetime.end.p0(i64 64, ptr %fdata) #15, !dbg !5144
  call void @llvm.lifetime.end.p0(i64 60, ptr %compat) #15, !dbg !5144
  br label %cleanup37

if.end35:                                         ; preds = %entry
  %25 = load ptr, ptr %file.addr, align 8, !dbg !5145
  %26 = load i32, ptr %cmd.addr, align 4, !dbg !5146
  %27 = load i64, ptr %arg.addr, align 8, !dbg !5147
  %call36 = call i64 @pps_cdev_ioctl(ptr noundef %25, i32 noundef %26, i64 noundef %27) #16, !dbg !5148
  store i64 %call36, ptr %retval, align 8, !dbg !5149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup37, !dbg !5149

cleanup37:                                        ; preds = %if.end35, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %uarg) #15, !dbg !5150
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !5150
  %28 = load i64, ptr %retval, align 8, !dbg !5150
  ret i64 %28, !dbg !5150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pps_cdev_open(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5151 {
entry:
  %retval = alloca i32, align 4
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %pps = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5153, metadata !DIExpression()), !dbg !5156
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5154, metadata !DIExpression()), !dbg !5157
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !5158
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !5155, metadata !DIExpression()), !dbg !5159
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5160
  %call = call i32 @iminor(ptr noundef %0) #16, !dbg !5161
  %conv = zext i32 %call to i64, !dbg !5161
  %call1 = call ptr @pps_idr_get(i64 noundef %conv) #16, !dbg !5162
  store ptr %call1, ptr %pps, align 8, !dbg !5159
  %1 = load ptr, ptr %pps, align 8, !dbg !5163
  %tobool = icmp ne ptr %1, null, !dbg !5163
  br i1 %tobool, label %if.end, label %if.then, !dbg !5165

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !5166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5166

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pps, align 8, !dbg !5167
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5168
  %private_data = getelementptr inbounds %struct.file, ptr %3, i32 0, i32 15, !dbg !5169
  store ptr %2, ptr %private_data, align 8, !dbg !5170
  store i32 0, ptr %retval, align 4, !dbg !5171
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5171

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !5172
  %4 = load i32, ptr %retval, align 4, !dbg !5172
  ret i32 %4, !dbg !5172
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pps_cdev_release(ptr noundef %inode, ptr noundef %file) #0 align 16 !dbg !5173 {
entry:
  %inode.addr = alloca ptr, align 8
  %file.addr = alloca ptr, align 8
  %pps = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5175, metadata !DIExpression()), !dbg !5183
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5176, metadata !DIExpression()), !dbg !5184
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !5185
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !5177, metadata !DIExpression()), !dbg !5186
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5187
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5188
  %1 = load ptr, ptr %private_data, align 8, !dbg !5188
  store ptr %1, ptr %pps, align 8, !dbg !5186
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5178, metadata !DIExpression()), !dbg !5189
  %2 = load ptr, ptr %pps, align 8, !dbg !5189
  %id = getelementptr inbounds %struct.pps_device, ptr %2, i32 0, i32 9, !dbg !5189
  %3 = load i32, ptr %id, align 8, !dbg !5189
  %4 = load ptr, ptr %inode.addr, align 8, !dbg !5189
  %call = call i32 @iminor(ptr noundef %4) #16, !dbg !5189
  %cmp = icmp ne i32 %3, %call, !dbg !5189
  %lnot = xor i1 %cmp, true, !dbg !5189
  %lnot1 = xor i1 %lnot, true, !dbg !5189
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5189
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5189
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5190
  %tobool = icmp ne i32 %5, 0, !dbg !5190
  %lnot2 = xor i1 %tobool, true, !dbg !5190
  %lnot4 = xor i1 %lnot2, true, !dbg !5190
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !5190
  %conv = sext i32 %lnot.ext5 to i64, !dbg !5190
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5190
  %tobool6 = icmp ne i64 %expval, 0, !dbg !5190
  br i1 %tobool6, label %if.then, label %if.end, !dbg !5189

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5190

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5191
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5180, metadata !DIExpression()), !dbg !5191
  store i32 2305, ptr %__flags, align 4, !dbg !5191
  br label %do.body7, !dbg !5191

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !5192

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !5192

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !5191

do.body8:                                         ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !5194
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 327, i32 %6, i64 12) #15, !dbg !5194, !srcloc !5196
  br label %do.cond9, !dbg !5194

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !5194

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !5191

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !5197

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5197

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5190
  br label %do.cond14, !dbg !5191

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !5191

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !5191

if.end:                                           ; preds = %do.end15, %entry
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5189
  %tobool16 = icmp ne i32 %7, 0, !dbg !5189
  %lnot17 = xor i1 %tobool16, true, !dbg !5189
  %lnot19 = xor i1 %lnot17, true, !dbg !5189
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5189
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !5189
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !5189
  store i64 %expval22, ptr %tmp, align 8, !dbg !5190
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5199
  %8 = load i64, ptr %tmp, align 8, !dbg !5189
  %9 = load ptr, ptr %pps, align 8, !dbg !5200
  %dev = getelementptr inbounds %struct.pps_device, ptr %9, i32 0, i32 11, !dbg !5201
  call void @put_device(ptr noundef %dev) #16, !dbg !5202
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !5203
  ret i32 0, !dbg !5204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pps_cdev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 16 !dbg !5205 {
entry:
  %fd.addr = alloca i32, align 4
  %file.addr = alloca ptr, align 8
  %on.addr = alloca i32, align 4
  %pps = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %fd.addr, metadata !5207, metadata !DIExpression()), !dbg !5211
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !5208, metadata !DIExpression()), !dbg !5212
  store i32 %on, ptr %on.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %on.addr, metadata !5209, metadata !DIExpression()), !dbg !5213
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !5214
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !5210, metadata !DIExpression()), !dbg !5215
  %0 = load ptr, ptr %file.addr, align 8, !dbg !5216
  %private_data = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 15, !dbg !5217
  %1 = load ptr, ptr %private_data, align 8, !dbg !5217
  store ptr %1, ptr %pps, align 8, !dbg !5215
  %2 = load i32, ptr %fd.addr, align 4, !dbg !5218
  %3 = load ptr, ptr %file.addr, align 8, !dbg !5219
  %4 = load i32, ptr %on.addr, align 4, !dbg !5220
  %5 = load ptr, ptr %pps, align 8, !dbg !5221
  %async_queue = getelementptr inbounds %struct.pps_device, ptr %5, i32 0, i32 12, !dbg !5222
  %call = call i32 @fasync_helper(i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %async_queue) #16, !dbg !5223
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !5224
  ret i32 %call, !dbg !5225
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @poll_wait(ptr noundef %filp, ptr noundef %wait_address, ptr noundef %p) #5 align 16 !dbg !5226 {
entry:
  %filp.addr = alloca ptr, align 8
  %wait_address.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5230, metadata !DIExpression()), !dbg !5233
  store ptr %wait_address, ptr %wait_address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wait_address.addr, metadata !5231, metadata !DIExpression()), !dbg !5234
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5232, metadata !DIExpression()), !dbg !5235
  %0 = load ptr, ptr %p.addr, align 8, !dbg !5236
  %tobool = icmp ne ptr %0, null, !dbg !5236
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5238

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8, !dbg !5239
  %_qproc = getelementptr inbounds %struct.poll_table_struct, ptr %1, i32 0, i32 0, !dbg !5240
  %2 = load ptr, ptr %_qproc, align 8, !dbg !5240
  %tobool1 = icmp ne ptr %2, null, !dbg !5239
  br i1 %tobool1, label %land.lhs.true2, label %if.end, !dbg !5241

land.lhs.true2:                                   ; preds = %land.lhs.true
  %3 = load ptr, ptr %wait_address.addr, align 8, !dbg !5242
  %tobool3 = icmp ne ptr %3, null, !dbg !5242
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5243

if.then:                                          ; preds = %land.lhs.true2
  %4 = load ptr, ptr %p.addr, align 8, !dbg !5244
  %_qproc4 = getelementptr inbounds %struct.poll_table_struct, ptr %4, i32 0, i32 0, !dbg !5246
  %5 = load ptr, ptr %_qproc4, align 8, !dbg !5246
  %6 = load ptr, ptr %filp.addr, align 8, !dbg !5247
  %7 = load ptr, ptr %wait_address.addr, align 8, !dbg !5248
  %8 = load ptr, ptr %p.addr, align 8, !dbg !5249
  call void %5(ptr noundef %6, ptr noundef %7, ptr noundef %8) #16, !dbg !5244
  br label %do.body, !dbg !5250

do.body:                                          ; preds = %if.then
  br label %do.body5, !dbg !5251

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !5253

do.end:                                           ; preds = %do.body5
  call void asm sideeffect "lock; addl $$0,-4(%rsp)", "~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !5251, !srcloc !5255
  br label %do.end6, !dbg !5251

do.end6:                                          ; preds = %do.end
  br label %if.end, !dbg !5256

if.end:                                           ; preds = %do.end6, %land.lhs.true2, %land.lhs.true, %entry
  ret void, !dbg !5257
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !5258 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5264, metadata !DIExpression()), !dbg !5265
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5266
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5266
  call void @_raw_spin_lock_irq(ptr noundef %1) #16, !dbg !5266
  ret void, !dbg !5267
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !5268 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5270, metadata !DIExpression()), !dbg !5271
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5272
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5272
  call void @_raw_spin_unlock_irq(ptr noundef %1) #16, !dbg !5272
  ret void, !dbg !5273
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5274 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5279, metadata !DIExpression()), !dbg !5282
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5280, metadata !DIExpression()), !dbg !5283
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5281, metadata !DIExpression()), !dbg !5284
  %0 = load ptr, ptr %from.addr, align 8, !dbg !5285
  %1 = load i64, ptr %n.addr, align 8, !dbg !5287
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext true) #16, !dbg !5288
  br i1 %call, label %if.then, label %if.end, !dbg !5289

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5290
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5291
  %4 = load i64, ptr %n.addr, align 8, !dbg !5292
  %call1 = call i64 @_copy_to_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !5293
  store i64 %call1, ptr %n.addr, align 8, !dbg !5294
  br label %if.end, !dbg !5295

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5296
  ret i64 %5, !dbg !5297
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5298 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #6 align 16 !dbg !5301 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5303, metadata !DIExpression()), !dbg !5306
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5304, metadata !DIExpression()), !dbg !5307
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5305, metadata !DIExpression()), !dbg !5308
  %0 = load ptr, ptr %to.addr, align 8, !dbg !5309
  %1 = load i64, ptr %n.addr, align 8, !dbg !5311
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #16, !dbg !5312
  br i1 %call, label %if.then, label %if.end, !dbg !5313

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !5314
  %3 = load ptr, ptr %from.addr, align 8, !dbg !5315
  %4 = load i64, ptr %n.addr, align 8, !dbg !5316
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #16, !dbg !5317
  store i64 %call1, ptr %n.addr, align 8, !dbg !5318
  br label %if.end, !dbg !5319

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !5320
  ret i64 %5, !dbg !5321
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_fault() #5 align 16 !dbg !5322 {
entry:
  ret void, !dbg !5323
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #10

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kmsan_copy_to_user(ptr noundef %to, ptr noundef %from, i64 noundef %to_copy, i64 noundef %left) #5 align 16 !dbg !5324 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %to_copy.addr = alloca i64, align 8
  %left.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !5329, metadata !DIExpression()), !dbg !5333
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !5330, metadata !DIExpression()), !dbg !5334
  store i64 %to_copy, ptr %to_copy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to_copy.addr, metadata !5331, metadata !DIExpression()), !dbg !5335
  store i64 %left, ptr %left.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %left.addr, metadata !5332, metadata !DIExpression()), !dbg !5336
  ret void, !dbg !5337
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pps_cdev_pps_fetch(ptr noundef %pps, ptr noundef %fdata) #0 align 16 !dbg !5338 {
entry:
  %retval = alloca i32, align 4
  %pps.addr = alloca ptr, align 8
  %fdata.addr = alloca ptr, align 8
  %ev = alloca i32, align 4
  %err = alloca i32, align 4
  %__ret = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 8
  %__ret3 = alloca i64, align 8
  %__int = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %ticks = alloca i64, align 8
  %__ret19 = alloca i64, align 8
  %__cond = alloca i8, align 1
  %tmp31 = alloca i32, align 4
  %__wq_entry37 = alloca %struct.wait_queue_entry, align 8
  %__ret38 = alloca i64, align 8
  %__int40 = alloca i64, align 8
  %__cond43 = alloca i8, align 1
  %tmp54 = alloca i32, align 4
  %tmp75 = alloca i64, align 8
  %tmp77 = alloca i64, align 8
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !5343, metadata !DIExpression()), !dbg !5390
  store ptr %fdata, ptr %fdata.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fdata.addr, metadata !5344, metadata !DIExpression()), !dbg !5391
  call void @llvm.lifetime.start.p0(i64 4, ptr %ev) #15, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !5345, metadata !DIExpression()), !dbg !5393
  %0 = load ptr, ptr %pps.addr, align 8, !dbg !5394
  %last_ev = getelementptr inbounds %struct.pps_device, ptr %0, i32 0, i32 7, !dbg !5395
  %1 = load i32, ptr %last_ev, align 4, !dbg !5395
  store i32 %1, ptr %ev, align 4, !dbg !5393
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !5396
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5346, metadata !DIExpression()), !dbg !5397
  store i32 0, ptr %err, align 4, !dbg !5397
  %2 = load ptr, ptr %fdata.addr, align 8, !dbg !5398
  %timeout = getelementptr inbounds %struct.pps_fdata, ptr %2, i32 0, i32 1, !dbg !5399
  %flags = getelementptr inbounds %struct.pps_ktime, ptr %timeout, i32 0, i32 2, !dbg !5400
  %3 = load i32, ptr %flags, align 4, !dbg !5400
  %and = and i32 %3, 1, !dbg !5401
  %tobool = icmp ne i32 %and, 0, !dbg !5401
  br i1 %tobool, label %if.then, label %if.else, !dbg !5402

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #15, !dbg !5403
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !5347, metadata !DIExpression()), !dbg !5403
  store i32 0, ptr %__ret, align 4, !dbg !5403
  br label %do.body, !dbg !5403

do.body:                                          ; preds = %if.then
  call void @might_resched() #16, !dbg !5404
  br label %do.cond, !dbg !5404

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5404

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %ev, align 4, !dbg !5406
  %5 = load ptr, ptr %pps.addr, align 8, !dbg !5406
  %last_ev1 = getelementptr inbounds %struct.pps_device, ptr %5, i32 0, i32 7, !dbg !5406
  %6 = load i32, ptr %last_ev1, align 4, !dbg !5406
  %cmp = icmp ne i32 %4, %6, !dbg !5406
  br i1 %cmp, label %if.end11, label %if.then2, !dbg !5403

if.then2:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry) #15, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %__wq_entry, metadata !5350, metadata !DIExpression()), !dbg !5407
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret3) #15, !dbg !5407
  call void @llvm.dbg.declare(metadata ptr %__ret3, metadata !5364, metadata !DIExpression()), !dbg !5407
  store i64 0, ptr %__ret3, align 8, !dbg !5407
  call void @init_wait_entry(ptr noundef %__wq_entry, i32 noundef 0) #16, !dbg !5407
  br label %for.cond, !dbg !5407

for.cond:                                         ; preds = %cleanup.cont, %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int) #15, !dbg !5408
  call void @llvm.dbg.declare(metadata ptr %__int, metadata !5365, metadata !DIExpression()), !dbg !5408
  %7 = load ptr, ptr %pps.addr, align 8, !dbg !5408
  %queue = getelementptr inbounds %struct.pps_device, ptr %7, i32 0, i32 8, !dbg !5408
  %call = call i64 @prepare_to_wait_event(ptr noundef %queue, ptr noundef %__wq_entry, i32 noundef 1) #16, !dbg !5408
  store i64 %call, ptr %__int, align 8, !dbg !5408
  %8 = load i32, ptr %ev, align 4, !dbg !5409
  %9 = load ptr, ptr %pps.addr, align 8, !dbg !5409
  %last_ev4 = getelementptr inbounds %struct.pps_device, ptr %9, i32 0, i32 7, !dbg !5409
  %10 = load i32, ptr %last_ev4, align 4, !dbg !5409
  %cmp5 = icmp ne i32 %8, %10, !dbg !5409
  br i1 %cmp5, label %if.then6, label %if.end, !dbg !5408

if.then6:                                         ; preds = %for.cond
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5409

if.end:                                           ; preds = %for.cond
  %11 = load i64, ptr %__int, align 8, !dbg !5411
  %tobool7 = icmp ne i64 %11, 0, !dbg !5411
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !5408

if.then8:                                         ; preds = %if.end
  %12 = load i64, ptr %__int, align 8, !dbg !5413
  store i64 %12, ptr %__ret3, align 8, !dbg !5413
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5413

if.end9:                                          ; preds = %if.end
  call void @schedule() #16, !dbg !5408
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5415
  br label %cleanup, !dbg !5415

cleanup:                                          ; preds = %if.then8, %if.end9, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int) #15, !dbg !5415
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.end
    i32 6, label %__out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5415, !llvm.loop !5416

for.end:                                          ; preds = %cleanup
  %13 = load ptr, ptr %pps.addr, align 8, !dbg !5407
  %queue10 = getelementptr inbounds %struct.pps_device, ptr %13, i32 0, i32 8, !dbg !5407
  call void @finish_wait(ptr noundef %queue10, ptr noundef %__wq_entry) #16, !dbg !5407
  br label %__out, !dbg !5407

__out:                                            ; preds = %for.end, %cleanup
  call void @llvm.dbg.label(metadata !5369), !dbg !5407
  %14 = load i64, ptr %__ret3, align 8, !dbg !5407
  store i64 %14, ptr %tmp, align 8, !dbg !5407
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret3) #15, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry) #15, !dbg !5406
  %15 = load i64, ptr %tmp, align 8, !dbg !5407
  %conv = trunc i64 %15 to i32, !dbg !5406
  store i32 %conv, ptr %__ret, align 4, !dbg !5406
  br label %if.end11, !dbg !5406

if.end11:                                         ; preds = %__out, %do.end
  %16 = load i32, ptr %__ret, align 4, !dbg !5403
  store i32 %16, ptr %tmp12, align 4, !dbg !5406
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #15, !dbg !5418
  %17 = load i32, ptr %tmp12, align 4, !dbg !5403
  store i32 %17, ptr %err, align 4, !dbg !5419
  br label %if.end87, !dbg !5420

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %ticks) #15, !dbg !5421
  call void @llvm.dbg.declare(metadata ptr %ticks, metadata !5370, metadata !DIExpression()), !dbg !5422
  %18 = load ptr, ptr %fdata.addr, align 8, !dbg !5423
  %timeout13 = getelementptr inbounds %struct.pps_fdata, ptr %18, i32 0, i32 1, !dbg !5424
  %sec = getelementptr inbounds %struct.pps_ktime, ptr %timeout13, i32 0, i32 0, !dbg !5425
  %19 = load i64, ptr %sec, align 8, !dbg !5425
  %mul = mul i64 %19, 1000, !dbg !5426
  store i64 %mul, ptr %ticks, align 8, !dbg !5427
  %20 = load ptr, ptr %fdata.addr, align 8, !dbg !5428
  %timeout14 = getelementptr inbounds %struct.pps_fdata, ptr %20, i32 0, i32 1, !dbg !5429
  %nsec = getelementptr inbounds %struct.pps_ktime, ptr %timeout14, i32 0, i32 1, !dbg !5430
  %21 = load i32, ptr %nsec, align 8, !dbg !5430
  %conv15 = sext i32 %21 to i64, !dbg !5428
  %div = sdiv i64 %conv15, 1000000, !dbg !5431
  %22 = load i64, ptr %ticks, align 8, !dbg !5432
  %add = add i64 %22, %div, !dbg !5432
  store i64 %add, ptr %ticks, align 8, !dbg !5432
  %23 = load i64, ptr %ticks, align 8, !dbg !5433
  %cmp16 = icmp ne i64 %23, 0, !dbg !5434
  br i1 %cmp16, label %if.then18, label %if.end83, !dbg !5435

if.then18:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret19) #15, !dbg !5436
  call void @llvm.dbg.declare(metadata ptr %__ret19, metadata !5372, metadata !DIExpression()), !dbg !5436
  %24 = load i64, ptr %ticks, align 8, !dbg !5436
  store i64 %24, ptr %__ret19, align 8, !dbg !5436
  br label %do.body20, !dbg !5436

do.body20:                                        ; preds = %if.then18
  call void @might_resched() #16, !dbg !5437
  br label %do.cond21, !dbg !5437

do.cond21:                                        ; preds = %do.body20
  br label %do.end22, !dbg !5437

do.end22:                                         ; preds = %do.cond21
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond) #15, !dbg !5439
  call void @llvm.dbg.declare(metadata ptr %__cond, metadata !5376, metadata !DIExpression()), !dbg !5439
  %25 = load i32, ptr %ev, align 4, !dbg !5439
  %26 = load ptr, ptr %pps.addr, align 8, !dbg !5439
  %last_ev23 = getelementptr inbounds %struct.pps_device, ptr %26, i32 0, i32 7, !dbg !5439
  %27 = load i32, ptr %last_ev23, align 4, !dbg !5439
  %cmp24 = icmp ne i32 %25, %27, !dbg !5439
  %frombool = zext i1 %cmp24 to i8, !dbg !5439
  store i8 %frombool, ptr %__cond, align 1, !dbg !5439
  %28 = load i8, ptr %__cond, align 1, !dbg !5440, !range !5442, !noundef !514
  %tobool26 = trunc i8 %28 to i1, !dbg !5440
  br i1 %tobool26, label %land.lhs.true, label %if.end30, !dbg !5440

land.lhs.true:                                    ; preds = %do.end22
  %29 = load i64, ptr %__ret19, align 8, !dbg !5440
  %tobool28 = icmp ne i64 %29, 0, !dbg !5440
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !5439

if.then29:                                        ; preds = %land.lhs.true
  store i64 1, ptr %__ret19, align 8, !dbg !5440
  br label %if.end30, !dbg !5440

if.end30:                                         ; preds = %if.then29, %land.lhs.true, %do.end22
  %30 = load i8, ptr %__cond, align 1, !dbg !5439, !range !5442, !noundef !514
  %tobool32 = trunc i8 %30 to i1, !dbg !5439
  br i1 %tobool32, label %lor.end, label %lor.rhs, !dbg !5439

lor.rhs:                                          ; preds = %if.end30
  %31 = load i64, ptr %__ret19, align 8, !dbg !5439
  %tobool34 = icmp ne i64 %31, 0, !dbg !5439
  %lnot = xor i1 %tobool34, true, !dbg !5439
  br label %lor.end, !dbg !5439

lor.end:                                          ; preds = %lor.rhs, %if.end30
  %32 = phi i1 [ true, %if.end30 ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %32 to i32, !dbg !5439
  store i32 %lor.ext, ptr %tmp31, align 4, !dbg !5440
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond) #15, !dbg !5443
  %33 = load i32, ptr %tmp31, align 4, !dbg !5439
  %tobool35 = icmp ne i32 %33, 0, !dbg !5443
  br i1 %tobool35, label %if.end76, label %if.then36, !dbg !5436

if.then36:                                        ; preds = %lor.end
  call void @llvm.lifetime.start.p0(i64 40, ptr %__wq_entry37) #15, !dbg !5444
  call void @llvm.dbg.declare(metadata ptr %__wq_entry37, metadata !5379, metadata !DIExpression()), !dbg !5444
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret38) #15, !dbg !5444
  call void @llvm.dbg.declare(metadata ptr %__ret38, metadata !5381, metadata !DIExpression()), !dbg !5444
  %34 = load i64, ptr %ticks, align 8, !dbg !5444
  store i64 %34, ptr %__ret38, align 8, !dbg !5444
  call void @init_wait_entry(ptr noundef %__wq_entry37, i32 noundef 0) #16, !dbg !5444
  br label %for.cond39, !dbg !5444

for.cond39:                                       ; preds = %cleanup.cont71, %if.then36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__int40) #15, !dbg !5445
  call void @llvm.dbg.declare(metadata ptr %__int40, metadata !5382, metadata !DIExpression()), !dbg !5445
  %35 = load ptr, ptr %pps.addr, align 8, !dbg !5445
  %queue41 = getelementptr inbounds %struct.pps_device, ptr %35, i32 0, i32 8, !dbg !5445
  %call42 = call i64 @prepare_to_wait_event(ptr noundef %queue41, ptr noundef %__wq_entry37, i32 noundef 1) #16, !dbg !5445
  store i64 %call42, ptr %__int40, align 8, !dbg !5445
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cond43) #15, !dbg !5446
  call void @llvm.dbg.declare(metadata ptr %__cond43, metadata !5386, metadata !DIExpression()), !dbg !5446
  %36 = load i32, ptr %ev, align 4, !dbg !5446
  %37 = load ptr, ptr %pps.addr, align 8, !dbg !5446
  %last_ev44 = getelementptr inbounds %struct.pps_device, ptr %37, i32 0, i32 7, !dbg !5446
  %38 = load i32, ptr %last_ev44, align 4, !dbg !5446
  %cmp45 = icmp ne i32 %36, %38, !dbg !5446
  %frombool47 = zext i1 %cmp45 to i8, !dbg !5446
  store i8 %frombool47, ptr %__cond43, align 1, !dbg !5446
  %39 = load i8, ptr %__cond43, align 1, !dbg !5447, !range !5442, !noundef !514
  %tobool48 = trunc i8 %39 to i1, !dbg !5447
  br i1 %tobool48, label %land.lhs.true50, label %if.end53, !dbg !5447

land.lhs.true50:                                  ; preds = %for.cond39
  %40 = load i64, ptr %__ret38, align 8, !dbg !5447
  %tobool51 = icmp ne i64 %40, 0, !dbg !5447
  br i1 %tobool51, label %if.end53, label %if.then52, !dbg !5446

if.then52:                                        ; preds = %land.lhs.true50
  store i64 1, ptr %__ret38, align 8, !dbg !5447
  br label %if.end53, !dbg !5447

if.end53:                                         ; preds = %if.then52, %land.lhs.true50, %for.cond39
  %41 = load i8, ptr %__cond43, align 1, !dbg !5446, !range !5442, !noundef !514
  %tobool55 = trunc i8 %41 to i1, !dbg !5446
  br i1 %tobool55, label %lor.end60, label %lor.rhs57, !dbg !5446

lor.rhs57:                                        ; preds = %if.end53
  %42 = load i64, ptr %__ret38, align 8, !dbg !5446
  %tobool58 = icmp ne i64 %42, 0, !dbg !5446
  %lnot59 = xor i1 %tobool58, true, !dbg !5446
  br label %lor.end60, !dbg !5446

lor.end60:                                        ; preds = %lor.rhs57, %if.end53
  %43 = phi i1 [ true, %if.end53 ], [ %lnot59, %lor.rhs57 ]
  %lor.ext61 = zext i1 %43 to i32, !dbg !5446
  store i32 %lor.ext61, ptr %tmp54, align 4, !dbg !5447
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cond43) #15, !dbg !5449
  %44 = load i32, ptr %tmp54, align 4, !dbg !5446
  %tobool62 = icmp ne i32 %44, 0, !dbg !5449
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !5445

if.then63:                                        ; preds = %lor.end60
  store i32 9, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !5449

if.end64:                                         ; preds = %lor.end60
  %45 = load i64, ptr %__int40, align 8, !dbg !5450
  %tobool65 = icmp ne i64 %45, 0, !dbg !5450
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !5445

if.then66:                                        ; preds = %if.end64
  %46 = load i64, ptr %__int40, align 8, !dbg !5452
  store i64 %46, ptr %__ret38, align 8, !dbg !5452
  store i32 11, ptr %cleanup.dest.slot, align 4
  br label %cleanup69, !dbg !5452

if.end67:                                         ; preds = %if.end64
  %47 = load i64, ptr %__ret38, align 8, !dbg !5445
  %call68 = call i64 @schedule_timeout(i64 noundef %47) #16, !dbg !5445
  store i64 %call68, ptr %__ret38, align 8, !dbg !5445
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5454
  br label %cleanup69, !dbg !5454

cleanup69:                                        ; preds = %if.then66, %if.end67, %if.then63
  call void @llvm.lifetime.end.p0(i64 8, ptr %__int40) #15, !dbg !5454
  %cleanup.dest70 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest70, label %unreachable [
    i32 0, label %cleanup.cont71
    i32 9, label %for.end72
    i32 11, label %__out74
  ]

cleanup.cont71:                                   ; preds = %cleanup69
  br label %for.cond39, !dbg !5454, !llvm.loop !5455

for.end72:                                        ; preds = %cleanup69
  %48 = load ptr, ptr %pps.addr, align 8, !dbg !5444
  %queue73 = getelementptr inbounds %struct.pps_device, ptr %48, i32 0, i32 8, !dbg !5444
  call void @finish_wait(ptr noundef %queue73, ptr noundef %__wq_entry37) #16, !dbg !5444
  br label %__out74, !dbg !5444

__out74:                                          ; preds = %for.end72, %cleanup69
  call void @llvm.dbg.label(metadata !5389), !dbg !5444
  %49 = load i64, ptr %__ret38, align 8, !dbg !5444
  store i64 %49, ptr %tmp75, align 8, !dbg !5444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret38) #15, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 40, ptr %__wq_entry37) #15, !dbg !5443
  %50 = load i64, ptr %tmp75, align 8, !dbg !5444
  store i64 %50, ptr %__ret19, align 8, !dbg !5443
  br label %if.end76, !dbg !5443

if.end76:                                         ; preds = %__out74, %lor.end
  %51 = load i64, ptr %__ret19, align 8, !dbg !5436
  store i64 %51, ptr %tmp77, align 8, !dbg !5443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret19) #15, !dbg !5457
  %52 = load i64, ptr %tmp77, align 8, !dbg !5436
  %conv78 = trunc i64 %52 to i32, !dbg !5457
  store i32 %conv78, ptr %err, align 4, !dbg !5458
  %53 = load i32, ptr %err, align 4, !dbg !5459
  %cmp79 = icmp eq i32 %53, 0, !dbg !5461
  br i1 %cmp79, label %if.then81, label %if.end82, !dbg !5462

if.then81:                                        ; preds = %if.end76
  store i32 -110, ptr %retval, align 4, !dbg !5463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup84, !dbg !5463

if.end82:                                         ; preds = %if.end76
  br label %if.end83, !dbg !5464

if.end83:                                         ; preds = %if.end82, %if.else
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5465
  br label %cleanup84, !dbg !5465

cleanup84:                                        ; preds = %if.end83, %if.then81
  call void @llvm.lifetime.end.p0(i64 8, ptr %ticks) #15, !dbg !5465
  %cleanup.dest85 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest85, label %cleanup92 [
    i32 0, label %cleanup.cont86
  ]

cleanup.cont86:                                   ; preds = %cleanup84
  br label %if.end87

if.end87:                                         ; preds = %cleanup.cont86, %if.end11
  %54 = load i32, ptr %err, align 4, !dbg !5466
  %cmp88 = icmp eq i32 %54, -512, !dbg !5468
  br i1 %cmp88, label %if.then90, label %if.end91, !dbg !5469

if.then90:                                        ; preds = %if.end87
  store i32 -4, ptr %retval, align 4, !dbg !5470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !5470

if.end91:                                         ; preds = %if.end87
  store i32 0, ptr %retval, align 4, !dbg !5472
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup92, !dbg !5472

cleanup92:                                        ; preds = %if.end91, %if.then90, %cleanup84
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !5473
  call void @llvm.lifetime.end.p0(i64 4, ptr %ev) #15, !dbg !5473
  %55 = load i32, ptr %retval, align 4, !dbg !5473
  ret i32 %55, !dbg !5473

unreachable:                                      ; preds = %cleanup69, %cleanup
  unreachable
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5474 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pps_kc_bind(ptr noundef %pps, ptr noundef %bind_args) #5 align 16 !dbg !5478 {
entry:
  %pps.addr = alloca ptr, align 8
  %bind_args.addr = alloca ptr, align 8
  store ptr %pps, ptr %pps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps.addr, metadata !5484, metadata !DIExpression()), !dbg !5486
  store ptr %bind_args, ptr %bind_args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bind_args.addr, metadata !5485, metadata !DIExpression()), !dbg !5487
  ret i32 -95, !dbg !5488
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5489 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5494 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #6 align 16 !dbg !5495 {
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
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5499, metadata !DIExpression()), !dbg !5509
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !5500, metadata !DIExpression()), !dbg !5510
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !5501, metadata !DIExpression()), !dbg !5511
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #15, !dbg !5512
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !5502, metadata !DIExpression()), !dbg !5513
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5514
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !5515
  %conv = trunc i64 %1 to i32, !dbg !5515
  store i32 %conv, ptr %sz, align 4, !dbg !5513
  %2 = load i32, ptr %sz, align 4, !dbg !5516
  %cmp = icmp sge i32 %2, 0, !dbg !5516
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !5516

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !5516
  %conv2 = sext i32 %3 to i64, !dbg !5516
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !5516
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !5516
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !5518
  %lnot = xor i1 %5, true, !dbg !5516
  %lnot5 = xor i1 %lnot, true, !dbg !5516
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5516
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5516
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5516
  %tobool = icmp ne i64 %expval, 0, !dbg !5516
  br i1 %tobool, label %if.then, label %if.end12, !dbg !5519

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !5520
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !5523
  br i1 %7, label %if.else, label %if.then7, !dbg !5524

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !5525
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !5526
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #16, !dbg !5527
  br label %if.end11, !dbg !5527

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !5528, !range !5442, !noundef !514
  %tobool8 = trunc i8 %10 to i1, !dbg !5528
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !5530

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #16, !dbg !5531, !srcloc !5532
  br label %if.end, !dbg !5531

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #16, !dbg !5533, !srcloc !5534
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !5535
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5535

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5536
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5503, metadata !DIExpression()), !dbg !5536
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !5536
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !5536
  %lnot15 = xor i1 %cmp13, true, !dbg !5536
  %lnot17 = xor i1 %lnot15, true, !dbg !5536
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !5536
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !5536
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5537
  %tobool19 = icmp ne i32 %12, 0, !dbg !5537
  %lnot20 = xor i1 %tobool19, true, !dbg !5537
  %lnot22 = xor i1 %lnot20, true, !dbg !5537
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5537
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5537
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5537
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !5537
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !5536

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !5537

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5538
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5506, metadata !DIExpression()), !dbg !5538
  store i32 2307, ptr %__flags, align 4, !dbg !5538
  br label %do.body28, !dbg !5538

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !5539

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !5539

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !5538

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !5541
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.10, i32 249, i32 %13, i64 12) #15, !dbg !5541, !srcloc !5543
  br label %do.cond30, !dbg !5541

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !5541

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !5538

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !5544

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !5544

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5537
  br label %do.cond35, !dbg !5538

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !5538

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !5538

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !5536
  %tobool38 = icmp ne i32 %14, 0, !dbg !5536
  %lnot39 = xor i1 %tobool38, true, !dbg !5536
  %lnot41 = xor i1 %lnot39, true, !dbg !5536
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !5536
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !5536
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !5536
  store i64 %expval44, ptr %tmp, align 8, !dbg !5537
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5546
  %15 = load i64, ptr %tmp, align 8, !dbg !5536
  %tobool45 = icmp ne i64 %15, 0, !dbg !5546
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !5547

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !5548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5548

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !5549
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !5550
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !5551, !range !5442, !noundef !514
  %tobool48 = trunc i8 %18 to i1, !dbg !5551
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #16, !dbg !5552
  store i1 true, ptr %retval, align 1, !dbg !5553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5553

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #15, !dbg !5554
  %19 = load i1, ptr %retval, align 1, !dbg !5554
  ret i1 %19, !dbg !5554
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5555 dso_local i64 @_copy_to_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #5 align 16 !dbg !5556 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5560, metadata !DIExpression()), !dbg !5562
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5561, metadata !DIExpression()), !dbg !5563
  %0 = load i32, ptr %size.addr, align 4, !dbg !5564
  %1 = load i64, ptr %count.addr, align 8, !dbg !5566
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #16, !dbg !5567
  ret void, !dbg !5568
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5569 dso_local void @__bad_copy_from() #13

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5570 dso_local void @__bad_copy_to() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #5 align 16 !dbg !5571 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5575, metadata !DIExpression()), !dbg !5578
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5576, metadata !DIExpression()), !dbg !5579
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !5577, metadata !DIExpression()), !dbg !5580
  ret void, !dbg !5581
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5582 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5583 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @might_resched() #6 align 16 !dbg !4351 {
entry:
  %tmp = alloca ptr, align 8
  store ptr @__SCT__might_resched, ptr %tmp, align 8, !dbg !5584
  %0 = load ptr, ptr %tmp, align 8, !dbg !5584
  %call = call i32 %0() #16, !dbg !5586
  ret void, !dbg !5587
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5588 dso_local void @init_wait_entry(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5591 dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5595 dso_local void @schedule() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5596 dso_local void @finish_wait(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5599 dso_local i64 @schedule_timeout(i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pps_idr_get(i64 noundef %id) #0 align 16 !dbg !5602 {
entry:
  %id.addr = alloca i64, align 8
  %pps = alloca ptr, align 8
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !5606, metadata !DIExpression()), !dbg !5608
  call void @llvm.lifetime.start.p0(i64 8, ptr %pps) #15, !dbg !5609
  call void @llvm.dbg.declare(metadata ptr %pps, metadata !5607, metadata !DIExpression()), !dbg !5610
  call void @mutex_lock(ptr noundef @pps_idr_lock) #16, !dbg !5611
  %0 = load i64, ptr %id.addr, align 8, !dbg !5612
  %call = call ptr @idr_find(ptr noundef @pps_idr, i64 noundef %0) #16, !dbg !5613
  store ptr %call, ptr %pps, align 8, !dbg !5614
  %1 = load ptr, ptr %pps, align 8, !dbg !5615
  %tobool = icmp ne ptr %1, null, !dbg !5615
  br i1 %tobool, label %if.then, label %if.end, !dbg !5617

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pps, align 8, !dbg !5618
  %dev = getelementptr inbounds %struct.pps_device, ptr %2, i32 0, i32 11, !dbg !5619
  %call1 = call ptr @get_device(ptr noundef %dev) #16, !dbg !5620
  br label %if.end, !dbg !5620

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(ptr noundef @pps_idr_lock) #16, !dbg !5621
  %3 = load ptr, ptr %pps, align 8, !dbg !5622
  call void @llvm.lifetime.end.p0(i64 8, ptr %pps) #15, !dbg !5623
  ret ptr %3, !dbg !5624
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @iminor(ptr noundef %inode) #5 align 16 !dbg !5625 {
entry:
  %inode.addr = alloca ptr, align 8
  store ptr %inode, ptr %inode.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %inode.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  %0 = load ptr, ptr %inode.addr, align 8, !dbg !5631
  %i_rdev = getelementptr inbounds %struct.inode, ptr %0, i32 0, i32 14, !dbg !5631
  %1 = load i32, ptr %i_rdev, align 4, !dbg !5631
  %and = and i32 %1, 1048575, !dbg !5631
  ret i32 %and, !dbg !5632
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5633 dso_local ptr @idr_find(ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5638 dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #11 = { nocallback nounwind }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!4358}
!llvm.module.flags = !{!4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366}
!llvm.ident = !{!4367}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pps_idr_lock", scope: !2, file: !3, line: 31, type: !610, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pps/.pps.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pps/pps_core\22 -D KBUILD_BASENAME=\22pps\22 -D KBUILD_MODNAME=\22pps_core\22 -D __KBUILD_MODNAME=kmod_pps_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pps/pps.ll drivers/pps/pps.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, globals: !3910, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/pps/pps.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f611cac585ef61ca853b3cf5642d5b81")
!4 = !{!5, !13, !18, !24, !29, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !{!123, !125, !126, !127, !128, !1614, !577, !85, !7}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 154, baseType: !7)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !130)
!130 = !{!131, !132, !138, !143, !3586, !3612, !3613, !3614, !3615, !3619, !3622, !3623, !3624, !3676, !3677, !3678, !3679, !3680, !3681, !3682, !3683, !3691, !3695, !3713, !3730, !3731, !3732, !3733, !3742, !3765, !3766, !3769, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3783, !3784, !3870, !3878, !3879, !3880, !3882, !3886, !3887, !3891, !3892, !3893, !3894, !3896, !3897, !3898, !3905, !3906, !3907, !3909}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !129, file: !6, line: 403, baseType: !5, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !129, file: !6, line: 406, baseType: !133, size: 128, offset: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 190, size: 128, elements: !134)
!134 = !{!135, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !133, file: !124, line: 191, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !133, file: !124, line: 191, baseType: !136, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !129, file: !6, line: 409, baseType: !139, size: 448, offset: 192)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 448, elements: !141)
!140 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !{!142}
!142 = !DISubrange(count: 56)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !129, file: !6, line: 417, baseType: !144, size: 768, offset: 640)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !145)
!145 = !{!146, !3580, !3581, !3582, !3585}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !144, file: !6, line: 46, baseType: !147, size: 512)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !148, line: 64, size: 512, elements: !149)
!148 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!149 = !{!150, !153, !154, !156, !245, !3467, !3570, !3575, !3576, !3577, !3578, !3579}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !147, file: !148, line: 65, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !140)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !147, file: !148, line: 66, baseType: !133, size: 128, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !147, file: !148, line: 67, baseType: !155, size: 64, offset: 192)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !147, file: !148, line: 68, baseType: !157, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !148, line: 168, size: 768, elements: !159)
!159 = !{!160, !161, !204, !205}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !158, file: !148, line: 169, baseType: !133, size: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !158, file: !148, line: 170, baseType: !162, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !163, line: 29, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !163, line: 17, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !163, line: 18, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !163, line: 18, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !167, file: !163, line: 19, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !171, line: 14, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !170, file: !171, line: 15, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !175, line: 44, baseType: !176)
!175 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !175, line: 14, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !175, line: 15, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !175, line: 15, size: 32, elements: !180)
!180 = !{!181, !186, !196}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !175, line: 16, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 174, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 172, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !183, file: !124, line: 173, baseType: !85, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !175, line: 24, baseType: !187, size: 16)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !175, line: 24, size: 16, elements: !188)
!188 = !{!189, !195}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !187, file: !175, line: 25, baseType: !190, size: 8)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !191, line: 17, baseType: !192)
!191 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !193, line: 21, baseType: !194)
!193 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!194 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !187, file: !175, line: 26, baseType: !190, size: 8, offset: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !175, line: 28, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !175, line: 28, size: 32, elements: !198)
!198 = !{!199, !203}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !197, file: !175, line: 29, baseType: !200, size: 16)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !191, line: 19, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !193, line: 24, baseType: !202)
!202 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !197, file: !175, line: 30, baseType: !200, size: 16, offset: 16)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !158, file: !148, line: 171, baseType: !147, size: 512, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !158, file: !148, line: 172, baseType: !206, size: 64, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !148, line: 133, size: 192, elements: !209)
!209 = !{!210, !217, !222}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !208, file: !148, line: 134, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !212)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!85, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !208, file: !148, line: 135, baseType: !218, size: 64, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!151, !215}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !208, file: !148, line: 136, baseType: !223, size: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!85, !215, !227}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !148, line: 125, size: 20736, elements: !229)
!229 = !{!230, !235, !239, !240, !244}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !228, file: !148, line: 126, baseType: !231, size: 192)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 192, elements: !233)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!233 = !{!234}
!234 = !DISubrange(count: 3)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !228, file: !148, line: 127, baseType: !236, size: 4096, offset: 192)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 4096, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !228, file: !148, line: 128, baseType: !85, size: 32, offset: 4288)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !228, file: !148, line: 129, baseType: !241, size: 16384, offset: 4320)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 16384, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 2048)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !228, file: !148, line: 130, baseType: !85, size: 32, offset: 20704)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !147, file: !148, line: 69, baseType: !246, size: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !148, line: 116, size: 384, elements: !249)
!249 = !{!250, !254, !281, !3429, !3457, !3461}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !248, file: !148, line: 117, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !155}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !248, file: !148, line: 118, baseType: !255, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !258, line: 254, size: 128, elements: !259)
!258 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!259 = !{!260, !274}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !257, file: !258, line: 255, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !155, !268, !232}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 66, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !266, line: 73, baseType: !267)
!266 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !266, line: 15, baseType: !127)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !258, line: 30, size: 128, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !258, line: 31, baseType: !151, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !269, file: !258, line: 32, baseType: !273, size: 16, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 24, baseType: !202)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !257, file: !258, line: 256, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!264, !155, !268, !151, !278}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 61, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !266, line: 72, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !266, line: 16, baseType: !126)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !248, file: !148, line: 119, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !258, line: 84, size: 320, elements: !286)
!286 = !{!287, !288, !292, !3425, !3427}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !258, line: 85, baseType: !151, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !285, file: !258, line: 86, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!273, !155, !268, !85}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !285, file: !258, line: 88, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!273, !155, !296, !85}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !258, line: 175, size: 512, elements: !298)
!298 = !{!299, !300, !301, !302, !3416, !3420, !3421}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !297, file: !258, line: 176, baseType: !269, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !258, line: 177, baseType: !278, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !297, file: !258, line: 178, baseType: !125, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !297, file: !258, line: 179, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !308)
!308 = !{!309, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3410, !3411, !3412, !3413, !3414, !3415}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !307, file: !14, line: 473, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !312)
!312 = !{!313, !314, !315, !323, !324, !331, !332, !335, !336, !3180, !3181, !3182, !3183, !3184, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3224, !3227, !3228, !3229, !3246, !3247, !3248, !3249}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !311, file: !14, line: 642, baseType: !273, size: 16)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !311, file: !14, line: 643, baseType: !202, size: 16, offset: 16)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !311, file: !14, line: 644, baseType: !316, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !317, line: 23, baseType: !318)
!317 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 21, size: 32, elements: !319)
!319 = !{!320}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !318, file: !317, line: 22, baseType: !321, size: 32)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 37, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !266, line: 49, baseType: !7)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !311, file: !14, line: 645, baseType: !133, size: 128, offset: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !311, file: !14, line: 646, baseType: !325, size: 32, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !317, line: 28, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !317, line: 26, size: 32, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !326, file: !317, line: 27, baseType: !329, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 38, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !266, line: 50, baseType: !7)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !311, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !311, file: !14, line: 650, baseType: !333, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !311, file: !14, line: 651, baseType: !333, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !311, file: !14, line: 654, baseType: !337, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !340)
!340 = !{!341, !3005, !3018, !3022, !3026, !3030, !3034, !3038, !3042, !3046, !3050, !3051, !3055, !3059, !3096, !3125, !3129, !3135, !3139, !3143, !3147, !3151, !3155, !3161, !3165}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !339, file: !14, line: 1967, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !310, !345, !7}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !347, line: 82, size: 1536, elements: !348)
!347 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!348 = !{!349, !350, !360, !368, !369, !389, !390, !394, !407, !2989, !2990, !2991, !2992, !2997, !2998, !2999}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !346, file: !347, line: 84, baseType: !7, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !346, file: !347, line: 85, baseType: !351, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !352, line: 275, baseType: !353)
!352 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !352, line: 275, size: 32, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !353, file: !352, line: 275, baseType: !356, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !352, line: 69, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !352, line: 64, size: 32, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !357, file: !352, line: 65, baseType: !7, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !346, file: !347, line: 86, baseType: !361, size: 128, offset: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !362, line: 38, size: 128, elements: !363)
!362 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!363 = !{!364, !366}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !361, file: !362, line: 39, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !361, file: !362, line: 39, baseType: !367, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !346, file: !347, line: 87, baseType: !345, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !346, file: !347, line: 88, baseType: !370, size: 128, offset: 256)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !347, line: 49, size: 128, elements: !371)
!371 = !{!372, !386}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !347, line: 50, baseType: !373, size: 64)
!373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !370, file: !347, line: 50, size: 64, elements: !374)
!374 = !{!375, !382}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !347, line: 51, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !347, line: 51, size: 64, elements: !377)
!377 = !{!378, !381}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !376, file: !347, line: 52, baseType: !379, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !191, line: 21, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !193, line: 27, baseType: !7)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !376, file: !347, line: 52, baseType: !379, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !373, file: !347, line: 54, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !191, line: 23, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !193, line: 31, baseType: !385)
!385 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !370, file: !347, line: 56, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !346, file: !347, line: 89, baseType: !310, size: 64, offset: 384)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !346, file: !347, line: 91, baseType: !391, size: 256, offset: 448)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !346, file: !347, line: 94, baseType: !395, size: 64, offset: 704)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !396, line: 25, size: 64, elements: !397)
!396 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!397 = !{!398}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !396, line: 26, baseType: !399, size: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !396, line: 26, size: 64, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !399, file: !396, line: 28, baseType: !384, size: 64, align: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, scope: !399, file: !396, line: 30, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !396, line: 30, size: 64, elements: !404)
!404 = !{!405, !406}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !403, file: !396, line: 31, baseType: !162, size: 32)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !403, file: !396, line: 32, baseType: !85, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !346, file: !347, line: 95, baseType: !408, size: 64, offset: 768)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !347, line: 128, size: 1024, align: 512, elements: !411)
!411 = !{!412, !416, !417, !424, !430, !434, !438, !442, !443, !447, !451, !2979, !2983}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !410, file: !347, line: 129, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!85, !345, !7}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !410, file: !347, line: 130, baseType: !413, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !410, file: !347, line: 131, baseType: !418, size: 64, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!85, !421, !423}
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !346)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !410, file: !347, line: 132, baseType: !425, size: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{!85, !421, !7, !151, !428}
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !370)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !410, file: !347, line: 134, baseType: !431, size: 64, offset: 256)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!85, !421}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !410, file: !347, line: 135, baseType: !435, size: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!85, !345}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !410, file: !347, line: 136, baseType: !439, size: 64, offset: 384)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{null, !345}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !410, file: !347, line: 137, baseType: !439, size: 64, offset: 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !410, file: !347, line: 138, baseType: !444, size: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !345, !310}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !410, file: !347, line: 139, baseType: !448, size: 64, offset: 576)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!232, !345, !232, !85}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !410, file: !347, line: 140, baseType: !452, size: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!455, !2978}
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !457, line: 70, size: 256, elements: !458)
!457 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!458 = !{!459, !460, !2974, !2975}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !456, file: !457, line: 71, baseType: !345, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !456, file: !457, line: 72, baseType: !461, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !463)
!463 = !{!464, !465, !468, !469, !470, !474, !523, !684, !724, !814, !818, !819, !820, !821, !822, !831, !832, !833, !834, !839, !843, !844, !847, !850, !853, !856, !857, !858, !899, !2905, !2906, !2907, !2908, !2909, !2910, !2913, !2915, !2922, !2923, !2924, !2925, !2926, !2941, !2942, !2943, !2944, !2945, !2948, !2949, !2950, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !462, file: !14, line: 1191, baseType: !133, size: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !462, file: !14, line: 1192, baseType: !466, size: 32, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 21, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 18, baseType: !379)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !462, file: !14, line: 1193, baseType: !194, size: 8, offset: 160)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !462, file: !14, line: 1194, baseType: !126, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !462, file: !14, line: 1195, baseType: !471, size: 64, offset: 256)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 52, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !266, line: 88, baseType: !473)
!473 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !462, file: !14, line: 1196, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !477)
!477 = !{!478, !479, !480, !487, !491, !495, !499, !500, !501, !511, !515, !516, !517, !519, !520, !521, !522}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !476, file: !14, line: 2367, baseType: !151, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !476, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !476, file: !14, line: 2376, baseType: !481, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!85, !484}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !486, line: 32, flags: DIFlagFwdDecl)
!486 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!487 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !476, file: !14, line: 2377, baseType: !488, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !476, file: !14, line: 2378, baseType: !492, size: 64, offset: 256)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!345, !475, !85, !151, !125}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !476, file: !14, line: 2380, baseType: !496, size: 64, offset: 320)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !461}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !476, file: !14, line: 2381, baseType: !128, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !476, file: !14, line: 2382, baseType: !475, size: 64, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !476, file: !14, line: 2383, baseType: !502, size: 64, offset: 512)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 194, size: 64, elements: !503)
!503 = !{!504}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !502, file: !124, line: 195, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 198, size: 128, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !506, file: !124, line: 199, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !506, file: !124, line: 199, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !476, file: !14, line: 2385, baseType: !512, offset: 576)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !513, line: 206, elements: !514)
!513 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!514 = !{}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !476, file: !14, line: 2386, baseType: !512, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !476, file: !14, line: 2387, baseType: !512, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !476, file: !14, line: 2388, baseType: !518, offset: 576)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, elements: !233)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !476, file: !14, line: 2390, baseType: !512, offset: 576)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !476, file: !14, line: 2391, baseType: !512, offset: 576)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !476, file: !14, line: 2392, baseType: !512, offset: 576)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !476, file: !14, line: 2393, baseType: !512, offset: 576)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !462, file: !14, line: 1197, baseType: !524, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !527)
!527 = !{!528, !532, !536, !537, !541, !547, !551, !552, !553, !557, !561, !565, !566, !567, !573, !578, !579, !586, !587, !588, !589, !593, !597, !666, !682, !683}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !526, file: !14, line: 2058, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!310, !461}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !526, file: !14, line: 2059, baseType: !533, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !310}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !526, file: !14, line: 2060, baseType: !533, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !526, file: !14, line: 2062, baseType: !538, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{null, !310, !85}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !526, file: !14, line: 2063, baseType: !542, size: 64, offset: 256)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!85, !310, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !526, file: !14, line: 2064, baseType: !548, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!85, !310}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !526, file: !14, line: 2065, baseType: !533, size: 64, offset: 384)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !526, file: !14, line: 2066, baseType: !496, size: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !526, file: !14, line: 2067, baseType: !554, size: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{!85, !461, !85}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !526, file: !14, line: 2068, baseType: !558, size: 64, offset: 576)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!85, !461, !13}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !526, file: !14, line: 2069, baseType: !562, size: 64, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!85, !461}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !526, file: !14, line: 2070, baseType: !558, size: 64, offset: 704)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !526, file: !14, line: 2071, baseType: !562, size: 64, offset: 768)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !526, file: !14, line: 2072, baseType: !568, size: 64, offset: 832)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!85, !345, !571}
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !526, file: !14, line: 2073, baseType: !574, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{!85, !461, !577, !232}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !526, file: !14, line: 2074, baseType: !496, size: 64, offset: 960)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !526, file: !14, line: 2076, baseType: !580, size: 64, offset: 1024)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!85, !583, !345}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !585, line: 66, flags: DIFlagFwdDecl)
!585 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!586 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !526, file: !14, line: 2077, baseType: !580, size: 64, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !526, file: !14, line: 2078, baseType: !580, size: 64, offset: 1152)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !526, file: !14, line: 2079, baseType: !580, size: 64, offset: 1216)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !526, file: !14, line: 2081, baseType: !590, size: 64, offset: 1280)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!264, !461, !85, !232, !278, !471}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !526, file: !14, line: 2082, baseType: !594, size: 64, offset: 1344)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!264, !461, !85, !151, !278, !471}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !526, file: !14, line: 2083, baseType: !598, size: 64, offset: 1408)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!601, !310}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !604)
!604 = !{!605, !606, !607, !608, !609, !630, !631, !632, !633, !649, !650, !651}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !603, file: !19, line: 297, baseType: !506, size: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !603, file: !19, line: 298, baseType: !133, size: 128, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !603, file: !19, line: 299, baseType: !133, size: 128, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !603, file: !19, line: 300, baseType: !133, size: 128, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !603, file: !19, line: 301, baseType: !610, size: 256, offset: 512)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !611, line: 66, size: 256, elements: !612)
!611 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!612 = !{!613, !622, !624, !629}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !610, file: !611, line: 67, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !615, line: 13, baseType: !616)
!615 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 181, baseType: !617)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 179, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !617, file: !124, line: 180, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !191, line: 22, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !193, line: 30, baseType: !473)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !610, file: !611, line: 68, baseType: !623, size: 32, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !171, line: 23, baseType: !170)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !610, file: !611, line: 70, baseType: !625, size: 32, offset: 96)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !626, line: 15, size: 32, elements: !627)
!626 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !625, file: !626, line: 20, baseType: !182, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !610, file: !611, line: 72, baseType: !133, size: 128, offset: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !603, file: !19, line: 302, baseType: !162, size: 32, offset: 768)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !603, file: !19, line: 303, baseType: !182, size: 32, offset: 800)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !603, file: !19, line: 304, baseType: !461, size: 64, offset: 832)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !603, file: !19, line: 305, baseType: !634, size: 64, offset: 896)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !635)
!635 = !{!636, !648}
!636 = !DIDerivedType(tag: DW_TAG_member, scope: !634, file: !19, line: 69, baseType: !637, size: 32)
!637 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !634, file: !19, line: 69, size: 32, elements: !638)
!638 = !{!639, !640, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !637, file: !19, line: 70, baseType: !316, size: 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !637, file: !19, line: 71, baseType: !325, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !637, file: !19, line: 72, baseType: !642, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !643, line: 24, baseType: !644)
!643 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !643, line: 22, size: 32, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !644, file: !643, line: 23, baseType: !647, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !643, line: 20, baseType: !322)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !634, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !603, file: !19, line: 306, baseType: !471, size: 64, offset: 960)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !603, file: !19, line: 307, baseType: !126, size: 64, offset: 1024)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !603, file: !19, line: 308, baseType: !652, size: 576, offset: 1088)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !653)
!653 = !{!654, !656, !657, !658, !659, !660, !661, !662, !665}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !652, file: !19, line: 206, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !473)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !652, file: !19, line: 207, baseType: !655, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !652, file: !19, line: 208, baseType: !655, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !652, file: !19, line: 209, baseType: !655, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !652, file: !19, line: 210, baseType: !655, size: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !652, file: !19, line: 211, baseType: !655, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !652, file: !19, line: 212, baseType: !655, size: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !652, file: !19, line: 213, baseType: !663, size: 64, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !664, line: 8, baseType: !621)
!664 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !652, file: !19, line: 214, baseType: !663, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !526, file: !14, line: 2085, baseType: !667, size: 64, offset: 1472)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!127, !461, !670}
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !672, line: 15, size: 256, elements: !673)
!672 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!673 = !{!674, !675, !676, !677, !678}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !671, file: !672, line: 16, baseType: !123, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !671, file: !672, line: 19, baseType: !85, size: 32, offset: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !671, file: !672, line: 26, baseType: !126, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !671, file: !672, line: 33, baseType: !126, size: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !671, file: !672, line: 36, baseType: !679, size: 64, offset: 192)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !681, line: 33, flags: DIFlagFwdDecl)
!681 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!682 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !526, file: !14, line: 2087, baseType: !667, size: 64, offset: 1536)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !526, file: !14, line: 2089, baseType: !496, size: 64, offset: 1600)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !462, file: !14, line: 1198, baseType: !685, size: 64, offset: 448)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !688)
!688 = !{!689, !693, !697, !701, !702, !703, !704, !705, !710, !715, !719}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !687, file: !19, line: 325, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!85, !602}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !687, file: !19, line: 326, baseType: !694, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!602, !461, !85}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !687, file: !19, line: 327, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !602}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !687, file: !19, line: 328, baseType: !690, size: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !687, file: !19, line: 329, baseType: !690, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !687, file: !19, line: 330, baseType: !690, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !687, file: !19, line: 331, baseType: !554, size: 64, offset: 384)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !687, file: !19, line: 334, baseType: !706, size: 64, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = !DISubroutineType(types: !708)
!708 = !{!709, !310}
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !687, file: !19, line: 335, baseType: !711, size: 64, offset: 512)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{!85, !310, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !687, file: !19, line: 337, baseType: !716, size: 64, offset: 576)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!85, !310, !709}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !687, file: !19, line: 339, baseType: !720, size: 64, offset: 640)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!85, !461, !723}
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !462, file: !14, line: 1199, baseType: !725, size: 64, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !728)
!728 = !{!729, !740, !741, !745, !746, !747, !762, !785, !789, !790, !813}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !727, file: !19, line: 431, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!85, !461, !85, !85, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !736, line: 8, size: 128, elements: !737)
!736 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !735, file: !736, line: 9, baseType: !455, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !735, file: !736, line: 10, baseType: !345, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !727, file: !19, line: 432, baseType: !554, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !727, file: !19, line: 433, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!85, !461, !7}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !727, file: !19, line: 434, baseType: !742, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !727, file: !19, line: 435, baseType: !554, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !727, file: !19, line: 436, baseType: !748, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!85, !461, !85, !751}
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !753)
!753 = !{!754, !755, !756, !757, !758, !759, !760, !761}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !752, file: !19, line: 418, baseType: !85, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !752, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !752, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !752, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !752, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !752, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !752, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !752, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !727, file: !19, line: 437, baseType: !763, size: 64, offset: 384)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!85, !461, !634, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !768)
!768 = !{!769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !767, file: !19, line: 346, baseType: !85, size: 32)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !767, file: !19, line: 347, baseType: !383, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !767, file: !19, line: 348, baseType: !383, size: 64, offset: 128)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !767, file: !19, line: 349, baseType: !383, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !767, file: !19, line: 350, baseType: !383, size: 64, offset: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !767, file: !19, line: 351, baseType: !383, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !767, file: !19, line: 352, baseType: !383, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !767, file: !19, line: 353, baseType: !620, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !767, file: !19, line: 355, baseType: !620, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !767, file: !19, line: 356, baseType: !85, size: 32, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !767, file: !19, line: 357, baseType: !85, size: 32, offset: 608)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !767, file: !19, line: 358, baseType: !383, size: 64, offset: 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !767, file: !19, line: 359, baseType: !383, size: 64, offset: 704)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !767, file: !19, line: 360, baseType: !383, size: 64, offset: 768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !767, file: !19, line: 361, baseType: !620, size: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !767, file: !19, line: 362, baseType: !85, size: 32, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !727, file: !19, line: 438, baseType: !786, size: 64, offset: 448)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!85, !461, !723, !766}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !727, file: !19, line: 440, baseType: !763, size: 64, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !727, file: !19, line: 441, baseType: !791, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!85, !461, !794}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !796)
!796 = !{!797, !798}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !795, file: !19, line: 412, baseType: !7, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !795, file: !19, line: 413, baseType: !799, size: 1344, offset: 64)
!799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !800, size: 1344, elements: !233)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !801)
!801 = !{!802, !803, !804, !805, !806, !807, !808, !809, !810, !812}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !800, file: !19, line: 398, baseType: !7, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !800, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !800, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !800, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !800, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !800, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !800, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !800, file: !19, line: 406, baseType: !385, size: 64, offset: 256)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !800, file: !19, line: 407, baseType: !811, size: 64, offset: 320)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !124, line: 132, baseType: !383)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !800, file: !19, line: 408, baseType: !811, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !727, file: !19, line: 442, baseType: !742, size: 64, offset: 640)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !462, file: !14, line: 1200, baseType: !815, size: 64, offset: 576)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !462, file: !14, line: 1201, baseType: !126, size: 64, offset: 640)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !462, file: !14, line: 1202, baseType: !126, size: 64, offset: 704)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !462, file: !14, line: 1203, baseType: !126, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !462, file: !14, line: 1204, baseType: !345, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !462, file: !14, line: 1205, baseType: !823, size: 320, offset: 896)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !824, line: 48, size: 320, elements: !825)
!824 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!825 = !{!826, !827, !828, !829, !830}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !823, file: !824, line: 49, baseType: !614, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !823, file: !824, line: 55, baseType: !614, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !823, file: !824, line: 57, baseType: !625, size: 32, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !823, file: !824, line: 59, baseType: !623, size: 32, offset: 160)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !823, file: !824, line: 60, baseType: !133, size: 128, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !462, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !462, file: !14, line: 1207, baseType: !182, size: 32, offset: 1248)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !462, file: !14, line: 1209, baseType: !125, size: 64, offset: 1280)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !462, file: !14, line: 1211, baseType: !835, size: 64, offset: 1344)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !462, file: !14, line: 1223, baseType: !840, size: 64, offset: 1408)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !362, line: 34, size: 64, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !840, file: !362, line: 35, baseType: !365, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !462, file: !14, line: 1224, baseType: !133, size: 128, offset: 1472)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !462, file: !14, line: 1225, baseType: !845, size: 64, offset: 1600)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !462, file: !14, line: 1226, baseType: !848, size: 64, offset: 1664)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !462, file: !14, line: 1227, baseType: !851, size: 64, offset: 1728)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !462, file: !14, line: 1228, baseType: !854, size: 64, offset: 1792)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !462, file: !14, line: 1229, baseType: !506, size: 128, offset: 1856)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !462, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !462, file: !14, line: 1231, baseType: !859, size: 2496, offset: 2048)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !860)
!860 = !{!861, !862, !863, !865, !897}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !859, file: !19, line: 522, baseType: !7, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !859, file: !19, line: 523, baseType: !823, size: 320, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !859, file: !19, line: 524, baseType: !864, size: 192, offset: 384)
!864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 192, elements: !233)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !859, file: !19, line: 525, baseType: !866, size: 1728, offset: 576)
!866 = !DICompositeType(tag: DW_TAG_array_type, baseType: !867, size: 1728, elements: !233)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !868)
!868 = !{!869, !889, !890, !891, !892, !893, !894, !895, !896}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !867, file: !19, line: 223, baseType: !870, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !872)
!872 = !{!873, !874, !887, !888}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !871, file: !19, line: 446, baseType: !85, size: 32)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !871, file: !19, line: 447, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !878)
!878 = !{!879, !880, !881, !882, !883, !884, !885, !886}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !877, file: !19, line: 313, baseType: !554, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !877, file: !19, line: 314, baseType: !554, size: 64, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !877, file: !19, line: 315, baseType: !554, size: 64, offset: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !877, file: !19, line: 316, baseType: !554, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !877, file: !19, line: 317, baseType: !690, size: 64, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !877, file: !19, line: 318, baseType: !690, size: 64, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !877, file: !19, line: 319, baseType: !690, size: 64, offset: 384)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !877, file: !19, line: 320, baseType: !720, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !871, file: !19, line: 448, baseType: !128, size: 64, offset: 128)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !871, file: !19, line: 449, baseType: !870, size: 64, offset: 192)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !867, file: !19, line: 224, baseType: !85, size: 32, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !867, file: !19, line: 226, baseType: !133, size: 128, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !867, file: !19, line: 227, baseType: !126, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !867, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !867, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !867, file: !19, line: 230, baseType: !655, size: 64, offset: 384)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !867, file: !19, line: 231, baseType: !655, size: 64, offset: 448)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !867, file: !19, line: 232, baseType: !125, size: 64, offset: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !859, file: !19, line: 526, baseType: !898, size: 192, offset: 2304)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !875, size: 192, elements: !233)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !462, file: !14, line: 1233, baseType: !900, size: 2368, offset: 4544)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !900, file: !14, line: 1185, baseType: !202, size: 16)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !900, file: !14, line: 1186, baseType: !202, size: 16, offset: 16)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !900, file: !14, line: 1187, baseType: !905, size: 2304, offset: 64)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 2304, elements: !233)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !907, line: 12, size: 768, elements: !908)
!907 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!908 = !{!909, !931, !933, !2903, !2904}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !906, file: !907, line: 13, baseType: !910, size: 384)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !911, line: 17, size: 384, elements: !912)
!911 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!912 = !{!913, !914, !915, !922}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !910, file: !911, line: 18, baseType: !85, size: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !910, file: !911, line: 19, baseType: !85, size: 32, offset: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !910, file: !911, line: 20, baseType: !916, size: 192, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !917, line: 41, baseType: !918)
!917 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !917, line: 37, size: 192, elements: !919)
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !918, file: !917, line: 38, baseType: !162, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !918, file: !917, line: 39, baseType: !133, size: 128, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !910, file: !911, line: 22, baseType: !923, size: 128, align: 64, offset: 256)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 232, size: 128, align: 64, elements: !924)
!924 = !{!925, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !923, file: !124, line: 233, baseType: !926, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !923, file: !124, line: 234, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !926}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !906, file: !907, line: 14, baseType: !932, size: 64, offset: 384)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !906, file: !907, line: 15, baseType: !934, size: 64, offset: 448)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !935, line: 16, size: 64, elements: !936)
!935 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !934, file: !935, line: 17, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !585, line: 746, size: 58368, elements: !940)
!940 = !{!941, !949, !950, !951, !957, !958, !959, !960, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !1038, !1049, !1144, !1148, !1151, !1182, !1183, !1184, !1185, !1196, !1198, !1199, !1200, !1201, !1202, !1203, !1214, !1215, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1232, !1233, !1240, !1241, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !2003, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2018, !2019, !2020, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2062, !2068, !2069, !2070, !2071, !2072, !2076, !2079, !2086, !2091, !2094, !2097, !2100, !2104, !2244, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2284, !2285, !2286, !2295, !2303, !2304, !2305, !2306, !2307, !2312, !2313, !2314, !2317, !2318, !2321, !2324, !2327, !2335, !2338, !2339, !2425, !2426, !2427, !2428, !2429, !2435, !2436, !2437, !2438, !2441, !2442, !2445, !2448, !2449, !2452, !2453, !2454, !2457, !2458, !2459, !2460, !2461, !2462, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483, !2494, !2495, !2561, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2573, !2645, !2647, !2648, !2649, !2650, !2651, !2663, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2680, !2681, !2682}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !939, file: !585, line: 752, baseType: !942, size: 192)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !943, line: 56, size: 192, elements: !944)
!943 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!944 = !{!945, !946, !947, !948}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !942, file: !943, line: 57, baseType: !126, size: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !942, file: !943, line: 58, baseType: !126, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !942, file: !943, line: 59, baseType: !379, size: 32, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !942, file: !943, line: 61, baseType: !379, size: 32, offset: 160)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !939, file: !585, line: 754, baseType: !7, size: 32, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !939, file: !585, line: 767, baseType: !125, size: 64, offset: 256)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !939, file: !585, line: 768, baseType: !952, size: 32, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !953, line: 113, baseType: !954)
!953 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !953, line: 111, size: 32, elements: !955)
!955 = !{!956}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !954, file: !953, line: 112, baseType: !182, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !939, file: !585, line: 770, baseType: !7, size: 32, offset: 352)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !939, file: !585, line: 771, baseType: !7, size: 32, offset: 384)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !939, file: !585, line: 774, baseType: !85, size: 32, offset: 416)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !939, file: !585, line: 775, baseType: !961, size: 128, offset: 448)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !962, line: 58, size: 128, elements: !963)
!962 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!963 = !{!964, !970, !975, !976}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !961, file: !962, line: 59, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !966, line: 60, size: 64, elements: !967)
!966 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!967 = !{!968}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !965, file: !966, line: 61, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, scope: !961, file: !962, line: 60, baseType: !971, size: 32, offset: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !961, file: !962, line: 60, size: 32, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !971, file: !962, line: 61, baseType: !7, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !971, file: !962, line: 62, baseType: !182, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !961, file: !962, line: 65, baseType: !200, size: 16, offset: 96)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !961, file: !962, line: 65, baseType: !200, size: 16, offset: 112)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !939, file: !585, line: 776, baseType: !7, size: 32, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !939, file: !585, line: 777, baseType: !126, size: 64, offset: 640)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !939, file: !585, line: 778, baseType: !938, size: 64, offset: 704)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !939, file: !585, line: 787, baseType: !85, size: 32, offset: 768)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !939, file: !585, line: 788, baseType: !85, size: 32, offset: 800)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !939, file: !585, line: 790, baseType: !85, size: 32, offset: 832)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !939, file: !585, line: 792, baseType: !85, size: 32, offset: 864)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !939, file: !585, line: 793, baseType: !85, size: 32, offset: 896)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !939, file: !585, line: 794, baseType: !85, size: 32, offset: 928)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !939, file: !585, line: 795, baseType: !7, size: 32, offset: 960)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !939, file: !585, line: 797, baseType: !988, size: 2048, offset: 1024)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !585, line: 551, size: 2048, elements: !989)
!989 = !{!990, !995, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1017, !1020, !1021, !1022}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !988, file: !585, line: 553, baseType: !991, size: 128)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !585, line: 411, size: 128, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !991, file: !585, line: 412, baseType: !126, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !991, file: !585, line: 413, baseType: !379, size: 32, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !988, file: !585, line: 554, baseType: !996, size: 192, align: 64, offset: 128)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !997, line: 5, size: 192, align: 64, elements: !998)
!997 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!998 = !{!999, !1000, !1002}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !996, file: !997, line: 6, baseType: !126, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !996, file: !997, line: 7, baseType: !1001, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !996, file: !997, line: 8, baseType: !1001, size: 64, offset: 128)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !988, file: !585, line: 555, baseType: !383, size: 64, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !988, file: !585, line: 556, baseType: !383, size: 64, offset: 384)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !988, file: !585, line: 558, baseType: !133, size: 128, offset: 448)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !988, file: !585, line: 559, baseType: !7, size: 32, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !988, file: !585, line: 561, baseType: !383, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !988, file: !585, line: 562, baseType: !383, size: 64, offset: 704)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !988, file: !585, line: 563, baseType: !383, size: 64, offset: 768)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !988, file: !585, line: 564, baseType: !383, size: 64, offset: 832)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !988, file: !585, line: 565, baseType: !620, size: 64, offset: 896)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !988, file: !585, line: 566, baseType: !383, size: 64, offset: 960)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !988, file: !585, line: 568, baseType: !383, size: 64, offset: 1024)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !988, file: !585, line: 571, baseType: !85, size: 32, offset: 1088)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !988, file: !585, line: 572, baseType: !1016, size: 64, offset: 1152)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !988, file: !585, line: 574, baseType: !1018, size: 64, offset: 1216)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !585, line: 49, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !988, file: !585, line: 576, baseType: !1018, size: 64, offset: 1280)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !988, file: !585, line: 578, baseType: !126, size: 64, offset: 1344)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !988, file: !585, line: 588, baseType: !1023, size: 512, align: 512, offset: 1536)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !585, line: 497, size: 512, align: 512, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1023, file: !585, line: 498, baseType: !383, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1023, file: !585, line: 499, baseType: !383, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1023, file: !585, line: 500, baseType: !383, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1023, file: !585, line: 501, baseType: !379, size: 32, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1023, file: !585, line: 502, baseType: !379, size: 32, offset: 224)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1023, file: !585, line: 503, baseType: !126, size: 64, offset: 256)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1023, file: !585, line: 504, baseType: !126, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1023, file: !585, line: 505, baseType: !126, size: 64, offset: 384)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1023, file: !585, line: 506, baseType: !1034, size: 64, align: 64, offset: 448)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !585, line: 445, size: 64, align: 64, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1034, file: !585, line: 446, baseType: !7, size: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1034, file: !585, line: 447, baseType: !7, size: 32, offset: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !939, file: !585, line: 798, baseType: !1039, size: 384, offset: 3072)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !585, line: 592, size: 384, elements: !1040)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1039, file: !585, line: 593, baseType: !133, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1039, file: !585, line: 594, baseType: !126, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1039, file: !585, line: 595, baseType: !126, size: 64, offset: 192)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1039, file: !585, line: 596, baseType: !7, size: 32, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1039, file: !585, line: 597, baseType: !202, size: 16, offset: 288)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1039, file: !585, line: 598, baseType: !202, size: 16, offset: 304)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1039, file: !585, line: 600, baseType: !1048, size: 64, offset: 320)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !939, file: !585, line: 799, baseType: !1050, size: 1792, offset: 3456)
!1050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !585, line: 610, size: 1792, elements: !1051)
!1051 = !{!1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1141, !1142}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1050, file: !585, line: 611, baseType: !996, size: 192, align: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1050, file: !585, line: 618, baseType: !383, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1050, file: !585, line: 619, baseType: !383, size: 64, offset: 256)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1050, file: !585, line: 620, baseType: !383, size: 64, offset: 320)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1050, file: !585, line: 621, baseType: !383, size: 64, offset: 384)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1050, file: !585, line: 622, baseType: !383, size: 64, offset: 448)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1050, file: !585, line: 629, baseType: !620, size: 64, offset: 512)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1050, file: !585, line: 630, baseType: !383, size: 64, offset: 576)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1050, file: !585, line: 631, baseType: !7, size: 32, offset: 640)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1050, file: !585, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1050, file: !585, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1050, file: !585, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1050, file: !585, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1050, file: !585, line: 662, baseType: !1066, size: 512, offset: 704)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1067)
!1067 = !{!1068, !1076, !1077, !1082, !1137, !1138, !1139, !1140}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1066, file: !25, line: 119, baseType: !1069, size: 256)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1070, line: 9, size: 256, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1071 = !{!1072, !1073}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1069, file: !1070, line: 10, baseType: !996, size: 192, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1069, file: !1070, line: 11, baseType: !1074, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1075, line: 29, baseType: !620)
!1075 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1066, file: !25, line: 120, baseType: !1074, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1066, file: !25, line: 121, baseType: !1078, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DISubroutineType(types: !1080)
!1080 = !{!24, !1081}
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1066, file: !25, line: 122, baseType: !1083, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1085)
!1085 = !{!1086, !1111, !1112, !1115, !1120, !1121, !1132, !1136}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1084, file: !25, line: 160, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1089)
!1089 = !{!1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1088, file: !25, line: 216, baseType: !623, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1088, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1088, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1088, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1088, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1088, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1088, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1088, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1088, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1088, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1088, file: !25, line: 227, baseType: !202, size: 16, offset: 192)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1088, file: !25, line: 228, baseType: !202, size: 16, offset: 208)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1088, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1088, file: !25, line: 235, baseType: !1074, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1088, file: !25, line: 236, baseType: !1081, size: 64, offset: 320)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1088, file: !25, line: 237, baseType: !1074, size: 64, offset: 384)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1088, file: !25, line: 238, baseType: !1081, size: 64, offset: 448)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1088, file: !25, line: 239, baseType: !1108, size: 4096, align: 512, offset: 512)
!1108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1084, size: 4096, align: 512, elements: !1109)
!1109 = !{!1110}
!1110 = !DISubrange(count: 8)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1084, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1084, file: !25, line: 162, baseType: !1113, size: 32, offset: 96)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 32, baseType: !1114)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !266, line: 96, baseType: !85)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1084, file: !25, line: 163, baseType: !1116, size: 32, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !352, line: 274, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !352, line: 274, size: 32, elements: !1118)
!1118 = !{!1119}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1117, file: !352, line: 274, baseType: !356, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1084, file: !25, line: 164, baseType: !1081, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1084, file: !25, line: 165, baseType: !1122, size: 128, offset: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1070, line: 14, size: 128, elements: !1123)
!1123 = !{!1124}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1122, file: !1070, line: 15, baseType: !1125, size: 128)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !997, line: 26, size: 128, elements: !1126)
!1126 = !{!1127, !1131}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1125, file: !997, line: 27, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !997, line: 12, size: 64, elements: !1129)
!1129 = !{!1130}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1128, file: !997, line: 13, baseType: !1001, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1125, file: !997, line: 28, baseType: !1001, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1084, file: !25, line: 166, baseType: !1133, size: 64, offset: 384)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!1074}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1084, file: !25, line: 167, baseType: !1074, size: 64, offset: 448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1066, file: !25, line: 123, baseType: !190, size: 8, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1066, file: !25, line: 124, baseType: !190, size: 8, offset: 456)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1066, file: !25, line: 125, baseType: !190, size: 8, offset: 464)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1066, file: !25, line: 126, baseType: !190, size: 8, offset: 472)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1050, file: !585, line: 671, baseType: !1066, size: 512, offset: 1216)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1050, file: !585, line: 679, baseType: !1143, size: 64, offset: 1728)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !939, file: !585, line: 800, baseType: !1145, size: 64, offset: 5248)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1147)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !585, line: 800, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !939, file: !585, line: 809, baseType: !1149, size: 64, offset: 5312)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !585, line: 70, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !939, file: !585, line: 825, baseType: !1152, size: 2048, align: 512, offset: 5632)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !585, line: 509, size: 2048, align: 512, elements: !1153)
!1153 = !{!1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1152, file: !585, line: 511, baseType: !383, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1152, file: !585, line: 512, baseType: !383, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1152, file: !585, line: 513, baseType: !383, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1152, file: !585, line: 514, baseType: !383, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1152, file: !585, line: 515, baseType: !383, size: 64, offset: 256)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1152, file: !585, line: 516, baseType: !383, size: 64, offset: 320)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1152, file: !585, line: 518, baseType: !383, size: 64, offset: 384)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1152, file: !585, line: 519, baseType: !383, size: 64, offset: 448)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1152, file: !585, line: 520, baseType: !620, size: 64, offset: 512)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1152, file: !585, line: 522, baseType: !383, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1152, file: !585, line: 523, baseType: !383, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1152, file: !585, line: 524, baseType: !620, size: 64, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1152, file: !585, line: 526, baseType: !620, size: 64, offset: 768)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1152, file: !585, line: 527, baseType: !383, size: 64, offset: 832)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1152, file: !585, line: 529, baseType: !383, size: 64, offset: 896)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1152, file: !585, line: 530, baseType: !383, size: 64, offset: 960)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1152, file: !585, line: 531, baseType: !383, size: 64, offset: 1024)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1152, file: !585, line: 532, baseType: !383, size: 64, offset: 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1152, file: !585, line: 533, baseType: !383, size: 64, offset: 1152)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1152, file: !585, line: 535, baseType: !383, size: 64, offset: 1216)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1152, file: !585, line: 536, baseType: !383, size: 64, offset: 1280)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1152, file: !585, line: 537, baseType: !383, size: 64, offset: 1344)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1152, file: !585, line: 538, baseType: !383, size: 64, offset: 1408)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1152, file: !585, line: 539, baseType: !383, size: 64, offset: 1472)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1152, file: !585, line: 540, baseType: !383, size: 64, offset: 1536)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1152, file: !585, line: 541, baseType: !383, size: 64, offset: 1600)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1152, file: !585, line: 542, baseType: !383, size: 64, offset: 1664)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1152, file: !585, line: 543, baseType: !383, size: 64, offset: 1728)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !939, file: !585, line: 833, baseType: !7, size: 32, offset: 7680)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !939, file: !585, line: 836, baseType: !7, size: 32, offset: 7712)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !939, file: !585, line: 837, baseType: !85, size: 32, offset: 7744)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !939, file: !585, line: 838, baseType: !1186, size: 64, offset: 7808)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1189, line: 19, baseType: !1190)
!1189 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1189, line: 19, size: 64, elements: !1191)
!1191 = !{!1192}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1190, file: !1189, line: 19, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !1194)
!1194 = !{!1195}
!1195 = !DISubrange(count: 1)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !939, file: !585, line: 839, baseType: !1197, size: 64, offset: 7872)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !939, file: !585, line: 840, baseType: !1188, size: 64, offset: 7936)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !939, file: !585, line: 841, baseType: !125, size: 64, offset: 8000)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !939, file: !585, line: 843, baseType: !202, size: 16, offset: 8064)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !939, file: !585, line: 845, baseType: !202, size: 16, offset: 8080)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !939, file: !585, line: 848, baseType: !85, size: 32, offset: 8096)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !939, file: !585, line: 849, baseType: !1204, size: 32, offset: 8128)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !585, line: 718, size: 32, elements: !1205)
!1205 = !{!1206, !1213}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1204, file: !585, line: 724, baseType: !1207, size: 32)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1204, file: !585, line: 719, size: 32, elements: !1208)
!1208 = !{!1209, !1210, !1211, !1212}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1207, file: !585, line: 720, baseType: !190, size: 8)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1207, file: !585, line: 721, baseType: !190, size: 8, offset: 8)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1207, file: !585, line: 722, baseType: !190, size: 8, offset: 16)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1207, file: !585, line: 723, baseType: !190, size: 8, offset: 24)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1204, file: !585, line: 725, baseType: !379, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !939, file: !585, line: 850, baseType: !133, size: 128, offset: 8192)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !939, file: !585, line: 851, baseType: !1216, size: 64, offset: 8320)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !585, line: 60, flags: DIFlagFwdDecl)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !939, file: !585, line: 855, baseType: !126, size: 64, offset: 8384)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !939, file: !585, line: 856, baseType: !190, size: 8, offset: 8448)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !939, file: !585, line: 857, baseType: !190, size: 8, offset: 8456)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !939, file: !585, line: 858, baseType: !85, size: 32, offset: 8480)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !939, file: !585, line: 859, baseType: !133, size: 128, offset: 8512)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !939, file: !585, line: 860, baseType: !85, size: 32, offset: 8640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !939, file: !585, line: 861, baseType: !133, size: 128, offset: 8704)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !939, file: !585, line: 873, baseType: !1226, size: 256, offset: 8832)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !585, line: 376, size: 256, elements: !1227)
!1227 = !{!1228, !1229, !1230, !1231}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1226, file: !585, line: 381, baseType: !126, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1226, file: !585, line: 384, baseType: !385, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1226, file: !585, line: 389, baseType: !385, size: 64, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1226, file: !585, line: 392, baseType: !385, size: 64, offset: 192)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !939, file: !585, line: 875, baseType: !133, size: 128, offset: 9088)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !939, file: !585, line: 877, baseType: !1234, size: 320, offset: 9216)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1235, line: 86, size: 320, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1234, file: !1235, line: 87, baseType: !85, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1234, file: !1235, line: 88, baseType: !133, size: 128, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1234, file: !1235, line: 89, baseType: !133, size: 128, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !939, file: !585, line: 878, baseType: !996, size: 192, align: 64, offset: 9536)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !939, file: !585, line: 881, baseType: !1242, size: 64, offset: 9728)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !681, line: 733, size: 10240, elements: !1244)
!1244 = !{!1245, !1917}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !681, line: 734, baseType: !1246, size: 10240)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !681, line: 734, size: 10240, elements: !1247)
!1247 = !{!1248, !1252, !1265, !1781, !1782, !1783, !1784, !1785, !1786, !1793, !1794, !1795, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1834, !1836, !1839, !1886, !1887, !1888, !1891, !1892, !1893, !1896, !1897, !1898, !1904, !1905}
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !681, line: 739, baseType: !1249, size: 512, align: 512)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !681, line: 739, size: 512, align: 512, elements: !1250)
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1249, file: !681, line: 747, baseType: !182, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1246, file: !681, line: 750, baseType: !1253, size: 128, offset: 512)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1254, line: 218, size: 128, elements: !1255)
!1254 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1255 = !{!1256, !1263, !1264}
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1253, file: !1254, line: 219, baseType: !1257, size: 32)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1253, file: !1254, line: 219, size: 32, elements: !1258)
!1258 = !{!1259, !1260}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1257, file: !1254, line: 220, baseType: !162, size: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1257, file: !1254, line: 221, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1254, line: 197, baseType: !1262)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1254, line: 197, elements: !514)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1253, file: !1254, line: 223, baseType: !7, size: 32, offset: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1253, file: !1254, line: 224, baseType: !125, size: 64, offset: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1246, file: !681, line: 752, baseType: !1266, size: 64, offset: 640)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!126, !1269, !126, !126, !126, !126}
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1271)
!1271 = !{!1272, !1278, !1279, !1281, !1282, !1283, !1284, !1285, !1337, !1532, !1541, !1542, !1543, !1771, !1772, !1773, !1774, !1776, !1777, !1780}
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !14, line: 995, baseType: !1273, size: 128)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !14, line: 995, size: 128, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1273, file: !14, line: 996, baseType: !965, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1273, file: !14, line: 997, baseType: !923, size: 128, align: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1273, file: !14, line: 998, baseType: !7, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1270, file: !14, line: 1005, baseType: !162, size: 32, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1270, file: !14, line: 1006, baseType: !1280, size: 32, offset: 160)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !124, line: 156, baseType: !7)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1270, file: !14, line: 1007, baseType: !614, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1270, file: !14, line: 1008, baseType: !610, size: 256, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1270, file: !14, line: 1009, baseType: !471, size: 64, offset: 512)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1270, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1270, file: !14, line: 1011, baseType: !1286, size: 256, offset: 640)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1287)
!1287 = !{!1288, !1309, !1333, !1334, !1335, !1336}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1286, file: !14, line: 949, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1290, line: 34, baseType: !1291)
!1290 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1290, line: 25, size: 64, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1291, file: !1290, line: 26, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1295, line: 27, baseType: !1296)
!1295 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1295, line: 13, size: 64, elements: !1297)
!1297 = !{!1298, !1308}
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1296, file: !1295, line: 14, baseType: !1299, size: 32)
!1299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1296, file: !1295, line: 14, size: 32, elements: !1300)
!1300 = !{!1301, !1302}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1299, file: !1295, line: 15, baseType: !182, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1299, file: !1295, line: 16, baseType: !1303, size: 32)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1299, file: !1295, line: 16, size: 32, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1303, file: !1295, line: 18, baseType: !190, size: 8)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1303, file: !1295, line: 19, baseType: !1307, size: 24, offset: 8)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 24, elements: !233)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1296, file: !1295, line: 26, baseType: !174, size: 32, offset: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1286, file: !14, line: 950, baseType: !1310, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1320, !1321, !1322, !1323}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1311, file: !30, line: 61, baseType: !952, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1311, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1311, file: !30, line: 63, baseType: !162, size: 32, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1311, file: !30, line: 65, baseType: !1317, size: 256, offset: 128)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 256, elements: !1318)
!1318 = !{!1319}
!1319 = !DISubrange(count: 4)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1311, file: !30, line: 66, baseType: !502, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1311, file: !30, line: 68, baseType: !916, size: 192, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1311, file: !30, line: 69, baseType: !923, size: 128, align: 64, offset: 640)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1311, file: !30, line: 70, baseType: !1324, offset: 768)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1325, elements: !1331)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1326)
!1326 = !{!1327, !1328}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1325, file: !30, line: 55, baseType: !85, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1325, file: !30, line: 56, baseType: !1329, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1331 = !{!1332}
!1332 = !DISubrange(count: -1)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1286, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1286, file: !14, line: 952, baseType: !316, size: 32, offset: 160)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1286, file: !14, line: 952, baseType: !316, size: 32, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1286, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1270, file: !14, line: 1012, baseType: !1338, size: 64, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1341, line: 110, size: 1472, elements: !1342)
!1341 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1342 = !{!1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1359, !1360, !1361, !1362, !1363, !1364, !1477, !1478, !1479, !1480, !1481, !1512, !1515, !1519, !1527}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1340, file: !1341, line: 111, baseType: !614, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1340, file: !1341, line: 112, baseType: !316, size: 32, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1340, file: !1341, line: 113, baseType: !325, size: 32, offset: 96)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1340, file: !1341, line: 114, baseType: !316, size: 32, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1340, file: !1341, line: 115, baseType: !325, size: 32, offset: 160)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1340, file: !1341, line: 116, baseType: !316, size: 32, offset: 192)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1340, file: !1341, line: 117, baseType: !325, size: 32, offset: 224)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1340, file: !1341, line: 118, baseType: !316, size: 32, offset: 256)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1340, file: !1341, line: 119, baseType: !325, size: 32, offset: 288)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1340, file: !1341, line: 120, baseType: !7, size: 32, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1340, file: !1341, line: 121, baseType: !1354, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1355, line: 24, baseType: !1356)
!1355 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1355, line: 24, size: 64, elements: !1357)
!1357 = !{!1358}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1356, file: !1355, line: 24, baseType: !383, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1340, file: !1341, line: 122, baseType: !1354, size: 64, offset: 448)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1340, file: !1341, line: 123, baseType: !1354, size: 64, offset: 512)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1340, file: !1341, line: 124, baseType: !1354, size: 64, offset: 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1340, file: !1341, line: 125, baseType: !1354, size: 64, offset: 640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1340, file: !1341, line: 127, baseType: !194, size: 8, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1340, file: !1341, line: 129, baseType: !1365, size: 64, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1367, line: 195, size: 1728, elements: !1368)
!1367 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1368 = !{!1369, !1370, !1375, !1380, !1381, !1384, !1385, !1390, !1391, !1392, !1393, !1396, !1397, !1398, !1400, !1401, !1441, !1462}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1366, file: !1367, line: 196, baseType: !952, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1366, file: !1367, line: 197, baseType: !1371, size: 32, offset: 32)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1367, line: 28, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !124, line: 104, baseType: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !191, line: 20, baseType: !1374)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !193, line: 26, baseType: !85)
!1375 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1367, line: 198, baseType: !1376, size: 192, offset: 64)
!1376 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1366, file: !1367, line: 198, size: 192, elements: !1377)
!1377 = !{!1378, !1379}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1376, file: !1367, line: 199, baseType: !133, size: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1376, file: !1367, line: 200, baseType: !996, size: 192, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1366, file: !1367, line: 205, baseType: !823, size: 320, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1366, file: !1367, line: 206, baseType: !1382, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1367, line: 206, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1366, file: !1367, line: 207, baseType: !125, size: 64, offset: 640)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1367, line: 208, baseType: !1386, size: 64, offset: 704)
!1386 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1366, file: !1367, line: 208, size: 64, elements: !1387)
!1387 = !{!1388, !1389}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1386, file: !1367, line: 209, baseType: !663, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1386, file: !1367, line: 210, baseType: !663, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1366, file: !1367, line: 212, baseType: !663, size: 64, offset: 768)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1366, file: !1367, line: 213, baseType: !316, size: 32, offset: 832)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1366, file: !1367, line: 214, baseType: !325, size: 32, offset: 864)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1366, file: !1367, line: 215, baseType: !1394, size: 32, offset: 896)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1367, line: 31, baseType: !1395)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 110, baseType: !379)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1366, file: !1367, line: 216, baseType: !202, size: 16, offset: 928)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1366, file: !1367, line: 217, baseType: !202, size: 16, offset: 944)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1366, file: !1367, line: 221, baseType: !1399, size: 16, offset: 960)
!1399 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1366, file: !1367, line: 228, baseType: !126, size: 64, offset: 1024)
!1401 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1367, line: 245, baseType: !1402, size: 320, offset: 1088)
!1402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1366, file: !1367, line: 245, size: 320, elements: !1403)
!1403 = !{!1404, !1433}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1402, file: !1367, line: 246, baseType: !1405, size: 320)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1367, line: 114, size: 320, elements: !1406)
!1406 = !{!1407, !1408, !1420, !1423, !1432}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1405, file: !1367, line: 116, baseType: !126, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1367, line: 117, baseType: !1409, size: 64, offset: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1367, line: 117, size: 64, elements: !1410)
!1410 = !{!1411, !1419}
!1411 = !DIDerivedType(tag: DW_TAG_member, scope: !1409, file: !1367, line: 118, baseType: !1412, size: 64)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1409, file: !1367, line: 118, size: 64, elements: !1413)
!1413 = !{!1414, !1415}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1412, file: !1367, line: 120, baseType: !200, size: 16)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1412, file: !1367, line: 121, baseType: !1416, size: 48, offset: 16)
!1416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 48, elements: !1417)
!1417 = !{!1418}
!1418 = !DISubrange(count: 6)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1409, file: !1367, line: 127, baseType: !126, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1405, file: !1367, line: 129, baseType: !1421, size: 64, offset: 128)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1367, line: 102, flags: DIFlagFwdDecl)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1405, file: !1367, line: 130, baseType: !1424, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1367, line: 108, size: 192, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1425, file: !1367, line: 109, baseType: !923, size: 128, align: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1425, file: !1367, line: 110, baseType: !952, size: 32, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1425, file: !1367, line: 111, baseType: !1430, size: 8, offset: 160)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 35, baseType: !1431)
!1431 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1405, file: !1367, line: 131, baseType: !151, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, scope: !1402, file: !1367, line: 247, baseType: !1434, size: 320)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1402, file: !1367, line: 247, size: 320, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1434, file: !1367, line: 248, baseType: !126, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1434, file: !1367, line: 249, baseType: !126, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1434, file: !1367, line: 250, baseType: !1421, size: 64, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1434, file: !1367, line: 251, baseType: !1424, size: 64, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1434, file: !1367, line: 252, baseType: !232, size: 64, offset: 256)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1367, line: 260, baseType: !1442, size: 256, offset: 1408)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1366, file: !1367, line: 260, size: 256, elements: !1443)
!1443 = !{!1444, !1450}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1442, file: !1367, line: 261, baseType: !1445, size: 256)
!1445 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1367, line: 134, size: 256, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1445, file: !1367, line: 135, baseType: !125, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1445, file: !1367, line: 136, baseType: !1449, size: 256)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !1318)
!1450 = !DIDerivedType(tag: DW_TAG_member, scope: !1442, file: !1367, line: 262, baseType: !1451, size: 256)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1442, file: !1367, line: 262, size: 256, elements: !1452)
!1452 = !{!1453, !1454}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1451, file: !1367, line: 264, baseType: !133, size: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1451, file: !1367, line: 265, baseType: !1455, size: 128, offset: 128)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1456, line: 22, size: 128, elements: !1457)
!1456 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1457 = !{!1458, !1461}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1455, file: !1456, line: 23, baseType: !1459, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1456, line: 23, flags: DIFlagFwdDecl)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1455, file: !1456, line: 24, baseType: !126, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1366, file: !1367, line: 280, baseType: !1463, size: 64, offset: 1664)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1367, line: 176, size: 192, elements: !1465)
!1465 = !{!1466, !1475, !1476}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1464, file: !1367, line: 177, baseType: !1467, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1367, line: 171, baseType: !1468)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!85, !1365, !1471, !1473, !1365}
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1422)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1445)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1464, file: !1367, line: 178, baseType: !1365, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1464, file: !1367, line: 179, baseType: !1421, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1340, file: !1341, line: 130, baseType: !1365, size: 64, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1340, file: !1341, line: 131, baseType: !1365, size: 64, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1340, file: !1341, line: 132, baseType: !1365, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1340, file: !1341, line: 135, baseType: !125, size: 64, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1340, file: !1341, line: 137, baseType: !1482, size: 64, offset: 1088)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1484, line: 14, size: 1088, elements: !1485)
!1484 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1485 = !{!1486, !1487, !1496, !1497, !1498, !1499, !1500, !1501}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1483, file: !1484, line: 15, baseType: !952, size: 32)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1483, file: !1484, line: 17, baseType: !1488, size: 320, offset: 64)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1489, line: 22, size: 320, elements: !1490)
!1489 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1490 = !{!1491, !1492, !1493, !1494}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1488, file: !1489, line: 23, baseType: !623, size: 32)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1488, file: !1489, line: 24, baseType: !620, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1488, file: !1489, line: 26, baseType: !133, size: 128, offset: 128)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1488, file: !1489, line: 28, baseType: !1495, size: 64, offset: 256)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1483, file: !1484, line: 19, baseType: !126, size: 64, offset: 384)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1483, file: !1484, line: 20, baseType: !614, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1483, file: !1484, line: 23, baseType: !506, size: 128, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1483, file: !1484, line: 24, baseType: !316, size: 32, offset: 640)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1483, file: !1484, line: 29, baseType: !614, size: 64, offset: 704)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1483, file: !1484, line: 36, baseType: !1502, size: 320, offset: 768)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1503, line: 15, size: 320, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1510, !1511}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1502, file: !1503, line: 16, baseType: !623, size: 32)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1502, file: !1503, line: 18, baseType: !85, size: 32, offset: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1502, file: !1503, line: 19, baseType: !85, size: 32, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1502, file: !1503, line: 20, baseType: !85, size: 32, offset: 96)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1502, file: !1503, line: 21, baseType: !85, size: 32, offset: 128)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1502, file: !1503, line: 22, baseType: !126, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1502, file: !1503, line: 23, baseType: !126, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1340, file: !1341, line: 138, baseType: !1513, size: 64, offset: 1152)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !317, line: 18, flags: DIFlagFwdDecl)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1340, file: !1341, line: 139, baseType: !1516, size: 64, offset: 1216)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1518, line: 16, flags: DIFlagFwdDecl)
!1518 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1340, file: !1341, line: 140, baseType: !1520, size: 64, offset: 1280)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1341, line: 25, size: 64, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1521, file: !1341, line: 26, baseType: !182, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1521, file: !1341, line: 27, baseType: !85, size: 32, offset: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1521, file: !1341, line: 28, baseType: !1526, offset: 64)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !325, elements: !1331)
!1527 = !DIDerivedType(tag: DW_TAG_member, scope: !1340, file: !1341, line: 142, baseType: !1528, size: 128, offset: 1344)
!1528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1340, file: !1341, line: 142, size: 128, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1528, file: !1341, line: 143, baseType: !85, size: 32)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1528, file: !1341, line: 144, baseType: !923, size: 128, align: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1270, file: !14, line: 1013, baseType: !1533, size: 256, offset: 960)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1533, file: !14, line: 971, baseType: !126, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1533, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1533, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1533, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1533, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1533, file: !14, line: 976, baseType: !471, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1270, file: !14, line: 1014, baseType: !735, size: 128, offset: 1216)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1270, file: !14, line: 1015, baseType: !310, size: 64, offset: 1344)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1270, file: !14, line: 1016, baseType: !1544, size: 64, offset: 1408)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1547)
!1547 = !{!1548, !1549, !1553, !1558, !1562, !1590, !1591, !1597, !1610, !1627, !1631, !1632, !1693, !1694, !1698, !1703, !1704, !1708, !1712, !1718, !1719, !1723, !1724, !1730, !1734, !1738, !1744, !1748, !1752, !1756, !1760, !1761, !1767}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1546, file: !14, line: 1915, baseType: !128, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1546, file: !14, line: 1916, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!471, !1269, !471, !85}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1546, file: !14, line: 1917, baseType: !1554, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!264, !1269, !232, !278, !1557}
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1546, file: !14, line: 1918, baseType: !1559, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!264, !1269, !151, !278, !1557}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1546, file: !14, line: 1919, baseType: !1563, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!264, !1566, !1588}
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1575, !1576, !1577, !1578}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1567, file: !14, line: 374, baseType: !1269, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1567, file: !14, line: 375, baseType: !471, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1567, file: !14, line: 376, baseType: !1572, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !1566, !127}
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1567, file: !14, line: 377, baseType: !125, size: 64, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1567, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1567, file: !14, line: 379, baseType: !200, size: 16, offset: 288)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1567, file: !14, line: 380, baseType: !1579, size: 64, offset: 320)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1567, file: !14, line: 380, size: 64, elements: !1580)
!1580 = !{!1581, !1584}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1579, file: !14, line: 386, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1579, file: !14, line: 395, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!264, !125}
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1546, file: !14, line: 1920, baseType: !1563, size: 64, offset: 320)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1546, file: !14, line: 1921, baseType: !1592, size: 64, offset: 384)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!85, !1566, !1595, !7}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1546, file: !14, line: 1923, baseType: !1598, size: 64, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!85, !1269, !1601}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1603)
!1603 = !{!1604, !1609}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1602, file: !14, line: 1859, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1606)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1430, !1601, !151, !85, !471, !383, !7}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1602, file: !14, line: 1860, baseType: !471, size: 64, offset: 64)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1546, file: !14, line: 1924, baseType: !1611, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!1614, !1269, !1616}
!1614 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1615, line: 59, baseType: !7)
!1615 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1618, line: 37, size: 128, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1619 = !{!1620, !1626}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1617, file: !1618, line: 38, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1618, line: 31, baseType: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1269, !1625, !1616}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1617, file: !1618, line: 39, baseType: !1614, size: 32, offset: 64)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1546, file: !14, line: 1925, baseType: !1628, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!127, !1269, !7, !126}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1546, file: !14, line: 1926, baseType: !1628, size: 64, offset: 640)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1546, file: !14, line: 1927, baseType: !1633, size: 64, offset: 704)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DISubroutineType(types: !1635)
!1635 = !{!85, !1269, !1636}
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !681, line: 625, size: 1344, elements: !1638)
!1638 = !{!1639, !1648, !1649, !1657, !1664, !1665, !1670, !1671, !1676, !1677, !1680, !1684, !1685, !1686, !1687, !1688, !1691}
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !681, line: 628, baseType: !1640, size: 128)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !681, line: 628, size: 128, elements: !1641)
!1641 = !{!1642, !1647}
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1640, file: !681, line: 629, baseType: !1643, size: 128)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1640, file: !681, line: 629, size: 128, elements: !1644)
!1644 = !{!1645, !1646}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1643, file: !681, line: 631, baseType: !126, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1643, file: !681, line: 632, baseType: !126, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1640, file: !681, line: 635, baseType: !923, size: 128, align: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1637, file: !681, line: 639, baseType: !1242, size: 64, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1637, file: !681, line: 640, baseType: !1650, size: 64, offset: 192)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1651, line: 297, baseType: !1652)
!1651 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1651, line: 297, size: 64, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1652, file: !1651, line: 297, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1656, line: 19, baseType: !126)
!1656 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1657 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !681, line: 646, baseType: !1658, size: 64, offset: 256)
!1658 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !681, line: 646, size: 64, elements: !1659)
!1659 = !{!1660, !1663}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1658, file: !681, line: 647, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !681, line: 542, baseType: !126)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1658, file: !681, line: 648, baseType: !1662, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1637, file: !681, line: 666, baseType: !85, size: 32, offset: 320)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1637, file: !681, line: 667, baseType: !1666, size: 64, offset: 384)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !681, line: 579, size: 320, elements: !1668)
!1668 = !{!1669}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1667, file: !681, line: 580, baseType: !823, size: 320)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1637, file: !681, line: 670, baseType: !1430, size: 8, offset: 448)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1637, file: !681, line: 681, baseType: !1672, size: 256, offset: 512)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1637, file: !681, line: 678, size: 256, elements: !1673)
!1673 = !{!1674, !1675}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1672, file: !681, line: 679, baseType: !996, size: 192, align: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1672, file: !681, line: 680, baseType: !126, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1637, file: !681, line: 689, baseType: !133, size: 128, offset: 768)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1637, file: !681, line: 691, baseType: !1678, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !681, line: 691, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1637, file: !681, line: 694, baseType: !1681, size: 64, offset: 960)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !681, line: 694, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1637, file: !681, line: 697, baseType: !126, size: 64, offset: 1024)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1637, file: !681, line: 699, baseType: !1269, size: 64, offset: 1088)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1637, file: !681, line: 700, baseType: !125, size: 64, offset: 1152)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1637, file: !681, line: 711, baseType: !614, size: 64, offset: 1216)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1637, file: !681, line: 717, baseType: !1689, size: 64, offset: 1280)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !681, line: 717, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1637, file: !681, line: 722, baseType: !1692, offset: 1344)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !681, line: 570, elements: !514)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1546, file: !14, line: 1928, baseType: !126, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1546, file: !14, line: 1929, baseType: !1695, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!85, !310, !1269}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1546, file: !14, line: 1930, baseType: !1699, size: 64, offset: 896)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!85, !1269, !1702}
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !125)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1546, file: !14, line: 1931, baseType: !1695, size: 64, offset: 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1546, file: !14, line: 1932, baseType: !1705, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!85, !1269, !471, !471, !85}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1546, file: !14, line: 1933, baseType: !1709, size: 64, offset: 1088)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!85, !85, !1269, !85}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1546, file: !14, line: 1934, baseType: !1713, size: 64, offset: 1152)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!85, !1269, !85, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1546, file: !14, line: 1935, baseType: !1266, size: 64, offset: 1216)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1546, file: !14, line: 1936, baseType: !1720, size: 64, offset: 1280)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!85, !85}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1546, file: !14, line: 1937, baseType: !1713, size: 64, offset: 1344)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1546, file: !14, line: 1938, baseType: !1725, size: 64, offset: 1408)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!264, !1728, !1269, !1557, !278, !7}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !585, line: 59, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1546, file: !14, line: 1939, baseType: !1731, size: 64, offset: 1472)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!264, !1269, !1557, !1728, !278, !7}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1546, file: !14, line: 1940, baseType: !1735, size: 64, offset: 1536)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !1269}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1546, file: !14, line: 1941, baseType: !1739, size: 64, offset: 1600)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!85, !1269, !85, !1742, !1743}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1546, file: !14, line: 1942, baseType: !1745, size: 64, offset: 1664)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!127, !1269, !85, !471, !471}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1546, file: !14, line: 1944, baseType: !1749, size: 64, offset: 1728)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DISubroutineType(types: !1751)
!1751 = !{null, !583, !1269}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1546, file: !14, line: 1948, baseType: !1753, size: 64, offset: 1792)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!264, !1269, !471, !1269, !471, !278, !7}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1546, file: !14, line: 1950, baseType: !1757, size: 64, offset: 1856)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!471, !1269, !471, !1269, !471, !471, !7}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1546, file: !14, line: 1953, baseType: !1705, size: 64, offset: 1920)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1546, file: !14, line: 1954, baseType: !1762, size: 64, offset: 1984)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!85, !1765, !7}
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1546, file: !14, line: 1955, baseType: !1768, size: 64, offset: 2048)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!85, !1765, !1595, !7}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1270, file: !14, line: 1018, baseType: !383, size: 64, offset: 1472)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1270, file: !14, line: 1020, baseType: !125, size: 64, offset: 1536)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1270, file: !14, line: 1023, baseType: !125, size: 64, offset: 1600)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1270, file: !14, line: 1027, baseType: !1775, size: 64, offset: 1664)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1270, file: !14, line: 1029, baseType: !306, size: 64, offset: 1728)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1270, file: !14, line: 1030, baseType: !1778, size: 32, offset: 1792)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1779, line: 8, baseType: !379)
!1779 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1270, file: !14, line: 1031, baseType: !1778, size: 32, offset: 1824)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1246, file: !681, line: 756, baseType: !126, size: 64, offset: 704)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1246, file: !681, line: 757, baseType: !126, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1246, file: !681, line: 760, baseType: !126, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1246, file: !681, line: 761, baseType: !126, size: 64, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1246, file: !681, line: 763, baseType: !126, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1246, file: !681, line: 764, baseType: !1787, size: 64, offset: 1024)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1651, line: 299, baseType: !1789)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1651, line: 299, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1789, file: !1651, line: 299, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1656, line: 18, baseType: !126)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1246, file: !681, line: 773, baseType: !182, size: 32, offset: 1088)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1246, file: !681, line: 785, baseType: !182, size: 32, offset: 1120)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1246, file: !681, line: 795, baseType: !1796, size: 64, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !681, line: 726, size: 128, elements: !1798)
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1797, file: !681, line: 727, baseType: !383, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1797, file: !681, line: 728, baseType: !85, size: 32, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1246, file: !681, line: 801, baseType: !126, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1246, file: !681, line: 804, baseType: !614, size: 64, offset: 1280)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1246, file: !681, line: 806, baseType: !85, size: 32, offset: 1344)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1246, file: !681, line: 808, baseType: !162, size: 32, offset: 1376)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1246, file: !681, line: 823, baseType: !823, size: 320, offset: 1408)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1246, file: !681, line: 825, baseType: !133, size: 128, offset: 1728)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1246, file: !681, line: 845, baseType: !85, size: 32, offset: 1856)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1246, file: !681, line: 849, baseType: !126, size: 64, offset: 1920)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1246, file: !681, line: 850, baseType: !126, size: 64, offset: 1984)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1246, file: !681, line: 852, baseType: !126, size: 64, offset: 2048)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1246, file: !681, line: 853, baseType: !126, size: 64, offset: 2112)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1246, file: !681, line: 854, baseType: !616, size: 64, offset: 2176)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1246, file: !681, line: 855, baseType: !126, size: 64, offset: 2240)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1246, file: !681, line: 856, baseType: !126, size: 64, offset: 2304)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1246, file: !681, line: 857, baseType: !126, size: 64, offset: 2368)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1246, file: !681, line: 858, baseType: !126, size: 64, offset: 2432)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1246, file: !681, line: 865, baseType: !356, size: 32, offset: 2496)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1246, file: !681, line: 867, baseType: !162, size: 32, offset: 2528)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1246, file: !681, line: 869, baseType: !126, size: 64, offset: 2560)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1246, file: !681, line: 869, baseType: !126, size: 64, offset: 2624)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1246, file: !681, line: 869, baseType: !126, size: 64, offset: 2688)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1246, file: !681, line: 869, baseType: !126, size: 64, offset: 2752)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1246, file: !681, line: 870, baseType: !126, size: 64, offset: 2816)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1246, file: !681, line: 870, baseType: !126, size: 64, offset: 2880)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1246, file: !681, line: 870, baseType: !126, size: 64, offset: 2944)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1246, file: !681, line: 871, baseType: !126, size: 64, offset: 3008)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1246, file: !681, line: 871, baseType: !126, size: 64, offset: 3072)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1246, file: !681, line: 871, baseType: !126, size: 64, offset: 3136)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1246, file: !681, line: 871, baseType: !126, size: 64, offset: 3200)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1246, file: !681, line: 873, baseType: !1831, size: 3328, offset: 3264)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 3328, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 52)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1246, file: !681, line: 875, baseType: !1835, size: 1280, offset: 6592)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1488, size: 1280, elements: !1318)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1246, file: !681, line: 877, baseType: !1837, size: 64, offset: 7872)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !681, line: 877, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1246, file: !681, line: 880, baseType: !1840, size: 1088, offset: 7936)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1841, line: 72, baseType: !1842)
!1841 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1841, line: 23, size: 1088, elements: !1843)
!1843 = !{!1844, !1845, !1846, !1847, !1848, !1851, !1852, !1853, !1854, !1881, !1882, !1883}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1842, file: !1841, line: 28, baseType: !383, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1842, file: !1841, line: 38, baseType: !616, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1842, file: !1841, line: 40, baseType: !126, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1842, file: !1841, line: 43, baseType: !823, size: 320, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1842, file: !1841, line: 44, baseType: !1849, size: 64, offset: 512)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1841, line: 44, flags: DIFlagFwdDecl)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1842, file: !1841, line: 48, baseType: !126, size: 64, offset: 576)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1842, file: !1841, line: 59, baseType: !610, size: 256, offset: 640)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1842, file: !1841, line: 60, baseType: !125, size: 64, offset: 896)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1842, file: !1841, line: 61, baseType: !1855, size: 64, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1857)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1858, line: 13, size: 1216, elements: !1859)
!1858 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1857, file: !1858, line: 14, baseType: !125, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1857, file: !1858, line: 15, baseType: !126, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1857, file: !1858, line: 17, baseType: !126, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1857, file: !1858, line: 17, baseType: !126, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1857, file: !1858, line: 18, baseType: !126, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1857, file: !1858, line: 18, baseType: !126, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1857, file: !1858, line: 19, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1857, file: !1858, line: 21, baseType: !127, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1857, file: !1858, line: 23, baseType: !127, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1857, file: !1858, line: 24, baseType: !127, size: 64, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1857, file: !1858, line: 25, baseType: !127, size: 64, offset: 640)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1857, file: !1858, line: 26, baseType: !127, size: 64, offset: 704)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1857, file: !1858, line: 27, baseType: !127, size: 64, offset: 768)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1857, file: !1858, line: 28, baseType: !127, size: 64, offset: 832)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1857, file: !1858, line: 29, baseType: !127, size: 64, offset: 896)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1857, file: !1858, line: 30, baseType: !127, size: 64, offset: 960)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1857, file: !1858, line: 31, baseType: !127, size: 64, offset: 1024)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1857, file: !1858, line: 32, baseType: !127, size: 64, offset: 1088)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1857, file: !1858, line: 33, baseType: !127, size: 64, offset: 1152)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1842, file: !1841, line: 63, baseType: !182, size: 32, offset: 1024)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1842, file: !1841, line: 69, baseType: !200, size: 16, offset: 1056)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1842, file: !1841, line: 70, baseType: !1884, size: 16, offset: 1072)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !191, line: 18, baseType: !1885)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !193, line: 23, baseType: !1399)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1246, file: !681, line: 882, baseType: !126, size: 64, offset: 9024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1246, file: !681, line: 885, baseType: !162, size: 32, offset: 9088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1246, file: !681, line: 886, baseType: !1889, size: 64, offset: 9152)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !681, line: 732, flags: DIFlagFwdDecl)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1246, file: !681, line: 901, baseType: !1513, size: 64, offset: 9216)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1246, file: !681, line: 904, baseType: !1269, size: 64, offset: 9280)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1246, file: !681, line: 906, baseType: !1894, size: 64, offset: 9344)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !681, line: 906, flags: DIFlagFwdDecl)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1246, file: !681, line: 930, baseType: !182, size: 32, offset: 9408)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1246, file: !681, line: 933, baseType: !182, size: 32, offset: 9440)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1246, file: !681, line: 935, baseType: !1899, size: 64, offset: 9472)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1900)
!1900 = !{!1901}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1899, file: !44, line: 104, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1246, file: !681, line: 940, baseType: !614, size: 64, offset: 9536)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1246, file: !681, line: 942, baseType: !1906, size: 256, offset: 9600)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1907, line: 98, size: 256, elements: !1908)
!1907 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1908 = !{!1909, !1910, !1911}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1906, file: !1907, line: 99, baseType: !614, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1906, file: !1907, line: 100, baseType: !133, size: 128, offset: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1906, file: !1907, line: 101, baseType: !1912, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1907, line: 21, baseType: !1913)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1243, file: !681, line: 986, baseType: !1918, offset: 10240)
!1918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, elements: !1331)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !939, file: !585, line: 882, baseType: !1242, size: 64, offset: 9792)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !939, file: !585, line: 884, baseType: !85, size: 32, offset: 9856)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !939, file: !585, line: 885, baseType: !85, size: 32, offset: 9888)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !939, file: !585, line: 886, baseType: !85, size: 32, offset: 9920)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !939, file: !585, line: 888, baseType: !85, size: 32, offset: 9952)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !939, file: !585, line: 890, baseType: !126, size: 64, offset: 9984)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !939, file: !585, line: 893, baseType: !7, size: 32, offset: 10048)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !939, file: !585, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !939, file: !585, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !939, file: !585, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !939, file: !585, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !939, file: !585, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !939, file: !585, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !939, file: !585, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !939, file: !585, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !939, file: !585, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !939, file: !585, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !939, file: !585, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !939, file: !585, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !939, file: !585, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !939, file: !585, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !939, file: !585, line: 969, baseType: !126, size: 64, offset: 10176)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !939, file: !585, line: 971, baseType: !1942, size: 448, offset: 10240)
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1943)
!1943 = !{!1944, !1945, !1950}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1942, file: !38, line: 26, baseType: !126, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1942, file: !38, line: 27, baseType: !1946, size: 64, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!127, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, scope: !1942, file: !38, line: 28, baseType: !1951, size: 320, offset: 128)
!1951 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1942, file: !38, line: 28, size: 320, elements: !1952)
!1952 = !{!1953, !1963, !1988}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1951, file: !38, line: 37, baseType: !1954, size: 320)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !38, line: 30, size: 320, elements: !1955)
!1955 = !{!1956, !1958, !1959, !1960, !1961, !1962}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1954, file: !38, line: 31, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1954, file: !38, line: 32, baseType: !379, size: 32, offset: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !38, line: 33, baseType: !379, size: 32, offset: 96)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1954, file: !38, line: 34, baseType: !379, size: 32, offset: 128)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1954, file: !38, line: 35, baseType: !383, size: 64, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1954, file: !38, line: 36, baseType: !1957, size: 64, offset: 256)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1951, file: !38, line: 47, baseType: !1964, size: 192)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !38, line: 39, size: 192, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1987}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1964, file: !38, line: 40, baseType: !1113, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1964, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, scope: !1964, file: !38, line: 42, baseType: !1969, size: 64, offset: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1964, file: !38, line: 42, size: 64, elements: !1970)
!1970 = !{!1971, !1979}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1969, file: !38, line: 43, baseType: !1972, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1974, line: 7, size: 128, elements: !1975)
!1974 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1975 = !{!1976, !1978}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1973, file: !1974, line: 8, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !266, line: 93, baseType: !473)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1973, file: !1974, line: 9, baseType: !473, size: 64, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1969, file: !38, line: 44, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1982, line: 7, size: 64, elements: !1983)
!1982 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1983 = !{!1984, !1986}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1981, file: !1982, line: 8, baseType: !1985, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1982, line: 5, baseType: !1373)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1981, file: !1982, line: 9, baseType: !1373, size: 32, offset: 32)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1964, file: !38, line: 46, baseType: !383, size: 64, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1951, file: !38, line: 55, baseType: !1989, size: 256)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1951, file: !38, line: 49, size: 256, elements: !1990)
!1990 = !{!1991, !1999, !2000, !2001, !2002}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1989, file: !38, line: 50, baseType: !1992, size: 64)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !1994, line: 36, size: 64, elements: !1995)
!1994 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!1995 = !{!1996, !1997, !1998}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1993, file: !1994, line: 37, baseType: !85, size: 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !1993, file: !1994, line: 38, baseType: !1399, size: 16, offset: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !1993, file: !1994, line: 39, baseType: !1399, size: 16, offset: 48)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1989, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1989, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1989, file: !38, line: 53, baseType: !126, size: 64, offset: 128)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1989, file: !38, line: 54, baseType: !126, size: 64, offset: 192)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !939, file: !585, line: 973, baseType: !2004, size: 32, offset: 10688)
!2004 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 27, baseType: !2005)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !266, line: 28, baseType: !85)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !939, file: !585, line: 974, baseType: !2004, size: 32, offset: 10720)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !939, file: !585, line: 978, baseType: !126, size: 64, offset: 10752)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !939, file: !585, line: 987, baseType: !938, size: 64, offset: 10816)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !939, file: !585, line: 990, baseType: !938, size: 64, offset: 10880)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !939, file: !585, line: 995, baseType: !133, size: 128, offset: 10944)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !939, file: !585, line: 996, baseType: !133, size: 128, offset: 11072)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !939, file: !585, line: 997, baseType: !938, size: 64, offset: 11200)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !939, file: !585, line: 1005, baseType: !133, size: 128, offset: 11264)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !939, file: !585, line: 1006, baseType: !133, size: 128, offset: 11392)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !939, file: !585, line: 1009, baseType: !1310, size: 64, offset: 11520)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !939, file: !585, line: 1010, baseType: !2017, size: 512, offset: 11584)
!2017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 512, elements: !1318)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !939, file: !585, line: 1011, baseType: !133, size: 128, offset: 12096)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !939, file: !585, line: 1012, baseType: !133, size: 128, offset: 12224)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !939, file: !585, line: 1014, baseType: !2021, size: 64, offset: 12352)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2023, line: 26, size: 256, elements: !2024)
!2023 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2024 = !{!2025, !2026}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2022, file: !2023, line: 27, baseType: !7, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2022, file: !2023, line: 28, baseType: !2027, size: 192, offset: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2028, line: 43, size: 192, elements: !2029)
!2028 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2027, file: !2028, line: 44, baseType: !623, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2027, file: !2028, line: 45, baseType: !133, size: 128, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !939, file: !585, line: 1017, baseType: !577, size: 64, offset: 12416)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !939, file: !585, line: 1020, baseType: !577, size: 64, offset: 12480)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !939, file: !585, line: 1023, baseType: !125, size: 64, offset: 12544)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !939, file: !585, line: 1025, baseType: !383, size: 64, offset: 12608)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !939, file: !585, line: 1026, baseType: !383, size: 64, offset: 12672)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !939, file: !585, line: 1031, baseType: !383, size: 64, offset: 12736)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !939, file: !585, line: 1032, baseType: !2039, size: 192, offset: 12800)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !585, line: 324, size: 192, elements: !2040)
!2040 = !{!2041, !2042, !2043}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2039, file: !585, line: 326, baseType: !383, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2039, file: !585, line: 327, baseType: !383, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2039, file: !585, line: 328, baseType: !623, size: 32, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !939, file: !585, line: 1041, baseType: !126, size: 64, offset: 12992)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !939, file: !585, line: 1042, baseType: !126, size: 64, offset: 13056)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !939, file: !585, line: 1045, baseType: !383, size: 64, offset: 13120)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !939, file: !585, line: 1048, baseType: !383, size: 64, offset: 13184)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !939, file: !585, line: 1051, baseType: !126, size: 64, offset: 13248)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !939, file: !585, line: 1052, baseType: !126, size: 64, offset: 13312)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !939, file: !585, line: 1055, baseType: !2051, size: 640, offset: 13376)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2052, line: 132, size: 640, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2053 = !{!2054, !2060, !2061}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2051, file: !2052, line: 133, baseType: !2055, size: 576)
!2055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2056, size: 576, elements: !233)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2052, line: 117, size: 192, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2056, file: !2052, line: 118, baseType: !383, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2056, file: !2052, line: 119, baseType: !1122, size: 128, offset: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2051, file: !2052, line: 134, baseType: !7, size: 32, offset: 576)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2051, file: !2052, line: 135, baseType: !7, size: 32, offset: 608)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !939, file: !585, line: 1058, baseType: !2063, size: 448, offset: 14016)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2052, line: 144, size: 448, elements: !2064)
!2064 = !{!2065, !2066, !2067}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2063, file: !2052, line: 145, baseType: !923, size: 128, align: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2063, file: !2052, line: 146, baseType: !610, size: 256, offset: 128)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2063, file: !2052, line: 147, baseType: !7, size: 32, offset: 384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !939, file: !585, line: 1064, baseType: !1338, size: 64, offset: 14464)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !939, file: !585, line: 1067, baseType: !1338, size: 64, offset: 14528)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !939, file: !585, line: 1070, baseType: !1338, size: 64, offset: 14592)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !939, file: !585, line: 1074, baseType: !1365, size: 64, offset: 14656)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !939, file: !585, line: 1084, baseType: !2073, size: 128, offset: 14720)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, elements: !2074)
!2074 = !{!2075}
!2075 = !DISubrange(count: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !939, file: !585, line: 1086, baseType: !2077, size: 64, offset: 14848)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !585, line: 55, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !939, file: !585, line: 1089, baseType: !2080, size: 64, offset: 14912)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2081, line: 12, size: 64, elements: !2082)
!2081 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2082 = !{!2083}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2080, file: !2081, line: 13, baseType: !2084, size: 64)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2081, line: 8, flags: DIFlagFwdDecl)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !939, file: !585, line: 1090, baseType: !2087, size: 128, offset: 14976)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2088, line: 13, size: 128, elements: !2089)
!2088 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2089 = !{!2090}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2087, file: !2088, line: 14, baseType: !133, size: 128)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !939, file: !585, line: 1097, baseType: !2092, size: 64, offset: 15104)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !585, line: 50, flags: DIFlagFwdDecl)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !939, file: !585, line: 1100, baseType: !2095, size: 64, offset: 15168)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !585, line: 1100, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !939, file: !585, line: 1103, baseType: !2098, size: 64, offset: 15232)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !585, line: 53, flags: DIFlagFwdDecl)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !939, file: !585, line: 1107, baseType: !2101, size: 64, offset: 15296)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2103, line: 35, flags: DIFlagFwdDecl)
!2103 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !939, file: !585, line: 1110, baseType: !2105, size: 64, offset: 15360)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2107, line: 93, size: 8768, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2158, !2167, !2168, !2170, !2171, !2172, !2175, !2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2213, !2214, !2221, !2231, !2234, !2235, !2238, !2239, !2240, !2241, !2242, !2243}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2106, file: !2107, line: 94, baseType: !952, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2106, file: !2107, line: 95, baseType: !182, size: 32, offset: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2106, file: !2107, line: 96, baseType: !85, size: 32, offset: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2106, file: !2107, line: 97, baseType: !85, size: 32, offset: 96)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2106, file: !2107, line: 98, baseType: !133, size: 128, offset: 128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2106, file: !2107, line: 100, baseType: !916, size: 192, offset: 256)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2106, file: !2107, line: 103, baseType: !938, size: 64, offset: 448)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2106, file: !2107, line: 106, baseType: !2117, size: 192, offset: 512)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1518, line: 32, size: 192, elements: !2118)
!2118 = !{!2119, !2120}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2117, file: !1518, line: 33, baseType: !133, size: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2117, file: !1518, line: 34, baseType: !2121, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2122, line: 25, baseType: !2123)
!2122 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2122, line: 23, size: 64, elements: !2124)
!2124 = !{!2125}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2123, file: !2122, line: 24, baseType: !1193, size: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2106, file: !2107, line: 109, baseType: !502, size: 64, offset: 704)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2106, file: !2107, line: 112, baseType: !85, size: 32, offset: 768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2106, file: !2107, line: 114, baseType: !85, size: 32, offset: 800)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2106, file: !2107, line: 115, baseType: !938, size: 64, offset: 832)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2106, file: !2107, line: 118, baseType: !85, size: 32, offset: 896)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2106, file: !2107, line: 119, baseType: !7, size: 32, offset: 928)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2106, file: !2107, line: 121, baseType: !2133, size: 64, offset: 960)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2107, line: 80, size: 448, elements: !2135)
!2135 = !{!2136, !2137, !2143}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2134, file: !2107, line: 81, baseType: !182, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2134, file: !2107, line: 82, baseType: !2138, size: 128, offset: 64)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2107, line: 75, size: 128, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2138, file: !2107, line: 76, baseType: !938, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2138, file: !2107, line: 77, baseType: !2142, size: 64, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2134, file: !2107, line: 83, baseType: !2022, size: 256, offset: 192)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2106, file: !2107, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2106, file: !2107, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2106, file: !2107, line: 138, baseType: !7, size: 32, offset: 1056)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2106, file: !2107, line: 139, baseType: !133, size: 128, offset: 1088)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2106, file: !2107, line: 142, baseType: !1066, size: 512, offset: 1216)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2106, file: !2107, line: 143, baseType: !1074, size: 64, offset: 1728)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2106, file: !2107, line: 150, baseType: !2151, size: 256, offset: 1792)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2152, size: 256, elements: !2156)
!2152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2107, line: 38, size: 128, elements: !2153)
!2153 = !{!2154, !2155}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2152, file: !2107, line: 39, baseType: !383, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2152, file: !2107, line: 40, baseType: !383, size: 64, offset: 64)
!2156 = !{!2157}
!2157 = !DISubrange(count: 2)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2106, file: !2107, line: 156, baseType: !2159, size: 192, offset: 2048)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2107, line: 66, size: 192, elements: !2160)
!2160 = !{!2161}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2159, file: !2107, line: 67, baseType: !2162, size: 192)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2107, line: 47, size: 192, elements: !2163)
!2163 = !{!2164, !2165, !2166}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2162, file: !2107, line: 48, baseType: !616, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2162, file: !2107, line: 49, baseType: !616, size: 64, offset: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2162, file: !2107, line: 50, baseType: !616, size: 64, offset: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2106, file: !2107, line: 160, baseType: !2051, size: 640, offset: 2240)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2106, file: !2107, line: 163, baseType: !2169, size: 256, offset: 2880)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1310, size: 256, elements: !1318)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2106, file: !2107, line: 169, baseType: !1310, size: 64, offset: 3136)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2106, file: !2107, line: 172, baseType: !85, size: 32, offset: 3200)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2106, file: !2107, line: 174, baseType: !2173, size: 64, offset: 3264)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2107, line: 174, flags: DIFlagFwdDecl)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2106, file: !2107, line: 185, baseType: !2176, size: 64, offset: 3328)
!2176 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !352, line: 860, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !352, line: 853, size: 64, elements: !2178)
!2178 = !{!2179, !2180}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2177, file: !352, line: 858, baseType: !351, size: 32)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2177, file: !352, line: 859, baseType: !162, size: 32, offset: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2106, file: !2107, line: 186, baseType: !383, size: 64, offset: 3392)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2106, file: !2107, line: 186, baseType: !383, size: 64, offset: 3456)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2106, file: !2107, line: 186, baseType: !383, size: 64, offset: 3520)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2106, file: !2107, line: 186, baseType: !383, size: 64, offset: 3584)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2106, file: !2107, line: 187, baseType: !383, size: 64, offset: 3648)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2106, file: !2107, line: 188, baseType: !383, size: 64, offset: 3712)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2106, file: !2107, line: 189, baseType: !2039, size: 192, offset: 3776)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2106, file: !2107, line: 190, baseType: !126, size: 64, offset: 3968)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2106, file: !2107, line: 190, baseType: !126, size: 64, offset: 4032)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2106, file: !2107, line: 190, baseType: !126, size: 64, offset: 4096)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2106, file: !2107, line: 190, baseType: !126, size: 64, offset: 4160)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2106, file: !2107, line: 191, baseType: !126, size: 64, offset: 4224)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2106, file: !2107, line: 191, baseType: !126, size: 64, offset: 4288)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2106, file: !2107, line: 191, baseType: !126, size: 64, offset: 4352)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2106, file: !2107, line: 191, baseType: !126, size: 64, offset: 4416)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2106, file: !2107, line: 192, baseType: !126, size: 64, offset: 4480)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2106, file: !2107, line: 192, baseType: !126, size: 64, offset: 4544)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2106, file: !2107, line: 192, baseType: !126, size: 64, offset: 4608)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2106, file: !2107, line: 192, baseType: !126, size: 64, offset: 4672)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2106, file: !2107, line: 193, baseType: !126, size: 64, offset: 4736)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2106, file: !2107, line: 193, baseType: !126, size: 64, offset: 4800)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2106, file: !2107, line: 194, baseType: !2203, size: 448, offset: 4864)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2204, line: 12, size: 448, elements: !2205)
!2204 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2205 = !{!2206, !2207, !2208, !2209, !2210, !2211, !2212}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2203, file: !2204, line: 15, baseType: !383, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2203, file: !2204, line: 17, baseType: !383, size: 64, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2203, file: !2204, line: 19, baseType: !383, size: 64, offset: 128)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2203, file: !2204, line: 21, baseType: !383, size: 64, offset: 192)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2203, file: !2204, line: 29, baseType: !383, size: 64, offset: 256)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2203, file: !2204, line: 35, baseType: !383, size: 64, offset: 320)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2203, file: !2204, line: 44, baseType: !383, size: 64, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2106, file: !2107, line: 202, baseType: !385, size: 64, offset: 5312)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2106, file: !2107, line: 213, baseType: !2215, size: 2048, offset: 5376)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2216, size: 2048, elements: !2074)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2217, line: 43, size: 128, elements: !2218)
!2217 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2218 = !{!2219, !2220}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2216, file: !2217, line: 44, baseType: !280, size: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2216, file: !2217, line: 45, baseType: !280, size: 64, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2106, file: !2107, line: 216, baseType: !2222, size: 448, offset: 7424)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2107, line: 30, size: 448, elements: !2223)
!2223 = !{!2224, !2225, !2226, !2227, !2228, !2229, !2230}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2222, file: !2107, line: 31, baseType: !85, size: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2222, file: !2107, line: 32, baseType: !127, size: 64, offset: 64)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2222, file: !2107, line: 33, baseType: !126, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2222, file: !2107, line: 34, baseType: !383, size: 64, offset: 192)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2222, file: !2107, line: 34, baseType: !383, size: 64, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2222, file: !2107, line: 35, baseType: !126, size: 64, offset: 320)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2222, file: !2107, line: 35, baseType: !126, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2106, file: !2107, line: 219, baseType: !2232, size: 64, offset: 7872)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2107, line: 219, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2106, file: !2107, line: 222, baseType: !7, size: 32, offset: 7936)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2106, file: !2107, line: 223, baseType: !2236, size: 64, offset: 8000)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2107, line: 223, flags: DIFlagFwdDecl)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2106, file: !2107, line: 230, baseType: !1430, size: 8, offset: 8064)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2106, file: !2107, line: 231, baseType: !1399, size: 16, offset: 8080)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2106, file: !2107, line: 232, baseType: !1399, size: 16, offset: 8096)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2106, file: !2107, line: 234, baseType: !1242, size: 64, offset: 8128)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2106, file: !2107, line: 237, baseType: !610, size: 256, offset: 8192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2106, file: !2107, line: 243, baseType: !823, size: 320, offset: 8448)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !939, file: !585, line: 1111, baseType: !2245, size: 64, offset: 15424)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2107, line: 20, size: 16640, elements: !2247)
!2247 = !{!2248, !2249, !2250, !2251}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2246, file: !2107, line: 21, baseType: !162, size: 32)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2246, file: !2107, line: 22, baseType: !952, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2246, file: !2107, line: 23, baseType: !916, size: 192, offset: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2246, file: !2107, line: 24, baseType: !2252, size: 16384, offset: 256)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2253, size: 16384, elements: !237)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1518, line: 51, size: 256, elements: !2254)
!2254 = !{!2255}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2253, file: !1518, line: 52, baseType: !2256, size: 256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1518, line: 37, size: 256, elements: !2257)
!2257 = !{!2258, !2265, !2266, !2272}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2256, file: !1518, line: 39, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2260, line: 83, baseType: !2261)
!2260 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2260, line: 82, baseType: !2263)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{null, !85}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2256, file: !1518, line: 40, baseType: !126, size: 64, offset: 64)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2256, file: !1518, line: 46, baseType: !2267, size: 64, offset: 128)
!2267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2260, line: 86, baseType: !2268)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2260, line: 85, baseType: !2270)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2256, file: !1518, line: 48, baseType: !2121, size: 64, offset: 192)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !939, file: !585, line: 1112, baseType: !2121, size: 64, offset: 15488)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !939, file: !585, line: 1113, baseType: !2121, size: 64, offset: 15552)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !939, file: !585, line: 1115, baseType: !2121, size: 64, offset: 15616)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !939, file: !585, line: 1116, baseType: !2117, size: 192, offset: 15680)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !939, file: !585, line: 1117, baseType: !126, size: 64, offset: 15872)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !939, file: !585, line: 1118, baseType: !278, size: 64, offset: 15936)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !939, file: !585, line: 1119, baseType: !7, size: 32, offset: 16000)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !939, file: !585, line: 1121, baseType: !926, size: 64, offset: 16064)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !939, file: !585, line: 1125, baseType: !2282, size: 64, offset: 16128)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !585, line: 43, flags: DIFlagFwdDecl)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !939, file: !585, line: 1127, baseType: !316, size: 32, offset: 16192)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !939, file: !585, line: 1128, baseType: !7, size: 32, offset: 16224)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !939, file: !585, line: 1130, baseType: !2287, size: 128, offset: 16256)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2288, line: 37, size: 128, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2287, file: !2288, line: 38, baseType: !85, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2287, file: !2288, line: 39, baseType: !182, size: 32, offset: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2287, file: !2288, line: 40, baseType: !2293, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2288, line: 24, flags: DIFlagFwdDecl)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !939, file: !585, line: 1131, baseType: !2296, size: 256, offset: 16384)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2297, line: 12, size: 256, elements: !2298)
!2297 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2298 = !{!2299, !2300, !2301, !2302}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2296, file: !2297, line: 13, baseType: !232, size: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2296, file: !2297, line: 14, baseType: !126, size: 64, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2296, file: !2297, line: 15, baseType: !126, size: 64, offset: 128)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2296, file: !2297, line: 16, baseType: !1430, size: 8, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !939, file: !585, line: 1134, baseType: !383, size: 64, offset: 16640)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !939, file: !585, line: 1135, baseType: !383, size: 64, offset: 16704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !939, file: !585, line: 1138, baseType: !162, size: 32, offset: 16768)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !939, file: !585, line: 1141, baseType: !623, size: 32, offset: 16800)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !939, file: !585, line: 1143, baseType: !2308, size: 64, offset: 16832)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !585, line: 735, size: 64, elements: !2309)
!2309 = !{!2310}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2308, file: !585, line: 736, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !939, file: !585, line: 1147, baseType: !1125, size: 128, offset: 16896)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !939, file: !585, line: 1149, baseType: !938, size: 64, offset: 17024)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !939, file: !585, line: 1151, baseType: !2315, size: 64, offset: 17088)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !585, line: 1151, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !939, file: !585, line: 1188, baseType: !125, size: 64, offset: 17152)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !939, file: !585, line: 1191, baseType: !2319, size: 64, offset: 17216)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !585, line: 44, flags: DIFlagFwdDecl)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !939, file: !585, line: 1194, baseType: !2322, size: 64, offset: 17280)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !585, line: 45, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !939, file: !585, line: 1197, baseType: !2325, size: 64, offset: 17344)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !585, line: 61, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !939, file: !585, line: 1199, baseType: !2328, size: 64, offset: 17408)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2330, line: 99, size: 128, elements: !2331)
!2330 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2331 = !{!2332, !2333, !2334}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2329, file: !2330, line: 100, baseType: !614, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2329, file: !2330, line: 101, baseType: !182, size: 32, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2329, file: !2330, line: 103, baseType: !202, size: 16, offset: 96)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !939, file: !585, line: 1202, baseType: !2336, size: 64, offset: 17472)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !585, line: 48, flags: DIFlagFwdDecl)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !939, file: !585, line: 1205, baseType: !126, size: 64, offset: 17536)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !939, file: !585, line: 1206, baseType: !2340, size: 64, offset: 17600)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1518, line: 14, baseType: !2342)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1518, line: 12, size: 384, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, scope: !2342, file: !1518, line: 13, baseType: !2345, size: 384)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2342, file: !1518, line: 13, size: 384, elements: !2346)
!2346 = !{!2347, !2348, !2349, !2350}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2345, file: !1518, line: 13, baseType: !85, size: 32)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2345, file: !1518, line: 13, baseType: !85, size: 32, offset: 32)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2345, file: !1518, line: 13, baseType: !85, size: 32, offset: 64)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2345, file: !1518, line: 13, baseType: !2351, size: 256, offset: 128)
!2351 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2352, line: 37, size: 256, elements: !2353)
!2352 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2353 = !{!2354, !2359, !2372, !2378, !2387, !2414, !2419}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2351, file: !2352, line: 42, baseType: !2355, size: 64)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2352, line: 39, size: 64, elements: !2356)
!2356 = !{!2357, !2358}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2355, file: !2352, line: 40, baseType: !2005, size: 32)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2355, file: !2352, line: 41, baseType: !322, size: 32, offset: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2351, file: !2352, line: 50, baseType: !2360, size: 192)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2352, line: 45, size: 192, elements: !2361)
!2361 = !{!2362, !2364, !2365, !2371}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2360, file: !2352, line: 46, baseType: !2363, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !266, line: 95, baseType: !85)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2360, file: !2352, line: 47, baseType: !85, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2360, file: !2352, line: 48, baseType: !2366, size: 64, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2352, line: 11, baseType: !2367)
!2367 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2352, line: 8, size: 64, elements: !2368)
!2368 = !{!2369, !2370}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2367, file: !2352, line: 9, baseType: !85, size: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2367, file: !2352, line: 10, baseType: !125, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2360, file: !2352, line: 49, baseType: !85, size: 32, offset: 128)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2351, file: !2352, line: 57, baseType: !2373, size: 128)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2352, line: 53, size: 128, elements: !2374)
!2374 = !{!2375, !2376, !2377}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2373, file: !2352, line: 54, baseType: !2005, size: 32)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2373, file: !2352, line: 55, baseType: !322, size: 32, offset: 32)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2373, file: !2352, line: 56, baseType: !2366, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2351, file: !2352, line: 66, baseType: !2379, size: 256)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2352, line: 60, size: 256, elements: !2380)
!2380 = !{!2381, !2382, !2383, !2384, !2386}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2379, file: !2352, line: 61, baseType: !2005, size: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2379, file: !2352, line: 62, baseType: !322, size: 32, offset: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2379, file: !2352, line: 63, baseType: !85, size: 32, offset: 64)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2379, file: !2352, line: 64, baseType: !2385, size: 64, offset: 128)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !266, line: 94, baseType: !267)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2379, file: !2352, line: 65, baseType: !2385, size: 64, offset: 192)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2351, file: !2352, line: 105, baseType: !2388, size: 256)
!2388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2352, line: 69, size: 256, elements: !2389)
!2389 = !{!2390, !2391}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2388, file: !2352, line: 70, baseType: !125, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_member, scope: !2388, file: !2352, line: 79, baseType: !2392, size: 192, offset: 64)
!2392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2388, file: !2352, line: 79, size: 192, elements: !2393)
!2393 = !{!2394, !2395, !2396, !2403, !2408}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2392, file: !2352, line: 81, baseType: !85, size: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2392, file: !2352, line: 86, baseType: !1399, size: 16)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2392, file: !2352, line: 92, baseType: !2397, size: 192)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2392, file: !2352, line: 88, size: 192, elements: !2398)
!2398 = !{!2399, !2401, !2402}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2397, file: !2352, line: 89, baseType: !2400, size: 64)
!2400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !1109)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2397, file: !2352, line: 90, baseType: !125, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2397, file: !2352, line: 91, baseType: !125, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2392, file: !2352, line: 97, baseType: !2404, size: 96)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2392, file: !2352, line: 94, size: 96, elements: !2405)
!2405 = !{!2406, !2407}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2404, file: !2352, line: 95, baseType: !2400, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2404, file: !2352, line: 96, baseType: !380, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2392, file: !2352, line: 103, baseType: !2409, size: 128)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2392, file: !2352, line: 99, size: 128, elements: !2410)
!2410 = !{!2411, !2412, !2413}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2409, file: !2352, line: 100, baseType: !126, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2409, file: !2352, line: 101, baseType: !380, size: 32, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2409, file: !2352, line: 102, baseType: !380, size: 32, offset: 96)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2351, file: !2352, line: 111, baseType: !2415, size: 128)
!2415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2352, line: 108, size: 128, elements: !2416)
!2416 = !{!2417, !2418}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2415, file: !2352, line: 109, baseType: !127, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2415, file: !2352, line: 110, baseType: !85, size: 32, offset: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2351, file: !2352, line: 118, baseType: !2420, size: 128)
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2351, file: !2352, line: 114, size: 128, elements: !2421)
!2421 = !{!2422, !2423, !2424}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2420, file: !2352, line: 115, baseType: !125, size: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2420, file: !2352, line: 116, baseType: !85, size: 32, offset: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2420, file: !2352, line: 117, baseType: !7, size: 32, offset: 96)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !939, file: !585, line: 1208, baseType: !2203, size: 448, offset: 17664)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !939, file: !585, line: 1215, baseType: !383, size: 64, offset: 18112)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !939, file: !585, line: 1217, baseType: !383, size: 64, offset: 18176)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !939, file: !585, line: 1219, baseType: !383, size: 64, offset: 18240)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !939, file: !585, line: 1223, baseType: !2430, size: 64, offset: 18304)
!2430 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2431, line: 99, baseType: !2432)
!2431 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2431, line: 99, size: 64, elements: !2433)
!2433 = !{!2434}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2432, file: !2431, line: 99, baseType: !1193, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !939, file: !585, line: 1225, baseType: !351, size: 32, offset: 18368)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !939, file: !585, line: 1226, baseType: !85, size: 32, offset: 18400)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !939, file: !585, line: 1227, baseType: !85, size: 32, offset: 18432)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !939, file: !585, line: 1231, baseType: !2439, size: 64, offset: 18496)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !585, line: 1231, flags: DIFlagFwdDecl)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !939, file: !585, line: 1233, baseType: !133, size: 128, offset: 18560)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !939, file: !585, line: 1240, baseType: !2443, size: 64, offset: 18688)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !585, line: 62, flags: DIFlagFwdDecl)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !939, file: !585, line: 1242, baseType: !2446, size: 64, offset: 18752)
!2446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2447, size: 64)
!2447 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !585, line: 1242, flags: DIFlagFwdDecl)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !939, file: !585, line: 1244, baseType: !133, size: 128, offset: 18816)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !939, file: !585, line: 1245, baseType: !2450, size: 64, offset: 18944)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !585, line: 51, flags: DIFlagFwdDecl)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !939, file: !585, line: 1246, baseType: !610, size: 256, offset: 19008)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !939, file: !585, line: 1247, baseType: !7, size: 32, offset: 19264)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !939, file: !585, line: 1250, baseType: !2455, size: 64, offset: 19328)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !585, line: 57, flags: DIFlagFwdDecl)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !939, file: !585, line: 1251, baseType: !610, size: 256, offset: 19392)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !939, file: !585, line: 1252, baseType: !133, size: 128, offset: 19648)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !939, file: !585, line: 1259, baseType: !1689, size: 64, offset: 19776)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !939, file: !585, line: 1260, baseType: !1399, size: 16, offset: 19840)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !939, file: !585, line: 1261, baseType: !1399, size: 16, offset: 19856)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !939, file: !585, line: 1314, baseType: !2463, size: 64, offset: 19904)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2465, line: 62, size: 256, align: 256, elements: !2466)
!2465 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2466 = !{!2467, !2468, !2469, !2470, !2471, !2472, !2473}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2464, file: !2465, line: 75, baseType: !380, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2464, file: !2465, line: 90, baseType: !380, size: 32, offset: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2464, file: !2465, line: 112, baseType: !384, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2464, file: !2465, line: 132, baseType: !380, size: 32, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2464, file: !2465, line: 140, baseType: !380, size: 32, offset: 160)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2464, file: !2465, line: 149, baseType: !380, size: 32, offset: 192)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2464, file: !2465, line: 154, baseType: !2474, offset: 224)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, elements: !1331)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !939, file: !585, line: 1315, baseType: !379, size: 32, offset: 19968)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !939, file: !585, line: 1316, baseType: !379, size: 32, offset: 20000)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !939, file: !585, line: 1321, baseType: !126, size: 64, offset: 20032)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !939, file: !585, line: 1325, baseType: !85, size: 32, offset: 20096)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !939, file: !585, line: 1326, baseType: !85, size: 32, offset: 20128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !939, file: !585, line: 1327, baseType: !85, size: 32, offset: 20160)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !939, file: !585, line: 1328, baseType: !85, size: 32, offset: 20192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !939, file: !585, line: 1329, baseType: !923, size: 128, align: 64, offset: 20224)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !939, file: !585, line: 1332, baseType: !2484, size: 128, offset: 20352)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2485, line: 51, size: 128, elements: !2486)
!2485 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2486 = !{!2487, !2492, !2493}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2484, file: !2485, line: 60, baseType: !2488, size: 64)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2489, line: 7, size: 64, elements: !2490)
!2489 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2490 = !{!2491}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2488, file: !2489, line: 12, baseType: !1190, size: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2484, file: !2485, line: 63, baseType: !1430, size: 8, offset: 64)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2484, file: !2485, line: 70, baseType: !1430, size: 8, offset: 72)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !939, file: !585, line: 1335, baseType: !1728, size: 64, offset: 20480)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !939, file: !585, line: 1337, baseType: !2496, size: 128, offset: 20544)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2485, line: 39, size: 128, elements: !2497)
!2497 = !{!2498, !2559, !2560}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2496, file: !2485, line: 40, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !681, line: 74, size: 512, align: 128, elements: !2501)
!2501 = !{!2502, !2503, !2553, !2558}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2500, file: !681, line: 75, baseType: !126, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, scope: !2500, file: !681, line: 83, baseType: !2504, size: 320, offset: 64)
!2504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2500, file: !681, line: 83, size: 320, elements: !2505)
!2505 = !{!2506, !2527, !2541, !2545, !2552}
!2506 = !DIDerivedType(tag: DW_TAG_member, scope: !2504, file: !681, line: 84, baseType: !2507, size: 320)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2504, file: !681, line: 84, size: 320, elements: !2508)
!2508 = !{!2509, !2520, !2521, !2526}
!2509 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !681, line: 90, baseType: !2510, size: 128)
!2510 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2507, file: !681, line: 90, size: 128, elements: !2511)
!2511 = !{!2512, !2513, !2518, !2519}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2510, file: !681, line: 91, baseType: !133, size: 128)
!2513 = !DIDerivedType(tag: DW_TAG_member, scope: !2510, file: !681, line: 94, baseType: !2514, size: 128)
!2514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2510, file: !681, line: 94, size: 128, elements: !2515)
!2515 = !{!2516, !2517}
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2514, file: !681, line: 96, baseType: !125, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2514, file: !681, line: 98, baseType: !7, size: 32, offset: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2510, file: !681, line: 102, baseType: !133, size: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2510, file: !681, line: 103, baseType: !133, size: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2507, file: !681, line: 106, baseType: !306, size: 64, offset: 128)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2507, file: !681, line: 107, baseType: !2522, size: 64, offset: 192)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2507, file: !681, line: 107, size: 64, elements: !2523)
!2523 = !{!2524, !2525}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2522, file: !681, line: 108, baseType: !126, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2522, file: !681, line: 109, baseType: !126, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2507, file: !681, line: 117, baseType: !126, size: 64, offset: 256)
!2527 = !DIDerivedType(tag: DW_TAG_member, scope: !2504, file: !681, line: 119, baseType: !2528, size: 320)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2504, file: !681, line: 119, size: 320, elements: !2529)
!2529 = !{!2530, !2531, !2534, !2535, !2536}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2528, file: !681, line: 124, baseType: !126, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2528, file: !681, line: 125, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !681, line: 125, flags: DIFlagFwdDecl)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2528, file: !681, line: 126, baseType: !126, size: 64, offset: 128)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2528, file: !681, line: 127, baseType: !126, size: 64, offset: 192)
!2536 = !DIDerivedType(tag: DW_TAG_member, scope: !2528, file: !681, line: 128, baseType: !2537, size: 64, offset: 256)
!2537 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2528, file: !681, line: 128, size: 64, elements: !2538)
!2538 = !{!2539, !2540}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2537, file: !681, line: 133, baseType: !126, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2537, file: !681, line: 138, baseType: !614, size: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, scope: !2504, file: !681, line: 141, baseType: !2542, size: 64)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2504, file: !681, line: 141, size: 64, elements: !2543)
!2543 = !{!2544}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2542, file: !681, line: 142, baseType: !126, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, scope: !2504, file: !681, line: 144, baseType: !2546, size: 128)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2504, file: !681, line: 144, size: 128, elements: !2547)
!2547 = !{!2548, !2551}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2546, file: !681, line: 146, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !681, line: 146, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2546, file: !681, line: 147, baseType: !125, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2504, file: !681, line: 161, baseType: !923, size: 128, align: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, scope: !2500, file: !681, line: 164, baseType: !2554, size: 32, offset: 384)
!2554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2500, file: !681, line: 164, size: 32, elements: !2555)
!2555 = !{!2556, !2557}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2554, file: !681, line: 169, baseType: !182, size: 32)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2554, file: !681, line: 177, baseType: !7, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2500, file: !681, line: 181, baseType: !182, size: 32, offset: 416)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2496, file: !2485, line: 42, baseType: !380, size: 32, offset: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2496, file: !2485, line: 43, baseType: !380, size: 32, offset: 96)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !939, file: !585, line: 1340, baseType: !2562, size: 64, offset: 20672)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !585, line: 69, flags: DIFlagFwdDecl)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !939, file: !585, line: 1351, baseType: !85, size: 32, offset: 20736)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !939, file: !585, line: 1352, baseType: !85, size: 32, offset: 20768)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !939, file: !585, line: 1354, baseType: !126, size: 64, offset: 20800)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !939, file: !585, line: 1364, baseType: !383, size: 64, offset: 20864)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !939, file: !585, line: 1365, baseType: !383, size: 64, offset: 20928)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !939, file: !585, line: 1412, baseType: !126, size: 64, offset: 20992)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !939, file: !585, line: 1453, baseType: !2571, size: 64, offset: 21056)
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2572, size: 64)
!2572 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !585, line: 1453, flags: DIFlagFwdDecl)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !939, file: !585, line: 1457, baseType: !2574, size: 64, offset: 21120)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2576)
!2576 = !{!2577, !2578, !2597, !2600, !2601, !2634, !2644}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2575, file: !44, line: 62, baseType: !43, size: 32)
!2578 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !44, line: 64, baseType: !2579, size: 192, offset: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2575, file: !44, line: 64, size: 192, elements: !2580)
!2580 = !{!2581, !2592}
!2581 = !DIDerivedType(tag: DW_TAG_member, scope: !2579, file: !44, line: 65, baseType: !2582, size: 192)
!2582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2579, file: !44, line: 65, size: 192, elements: !2583)
!2583 = !{!2584, !2591}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2582, file: !44, line: 66, baseType: !2585, size: 128)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2586, line: 50, size: 128, elements: !2587)
!2586 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2587 = !{!2588, !2589, !2590}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2585, file: !2586, line: 52, baseType: !126, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2585, file: !2586, line: 54, baseType: !7, size: 32, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2585, file: !2586, line: 55, baseType: !7, size: 32, offset: 96)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2582, file: !44, line: 67, baseType: !126, size: 64, offset: 128)
!2592 = !DIDerivedType(tag: DW_TAG_member, scope: !2579, file: !44, line: 70, baseType: !2593, size: 192)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2579, file: !44, line: 70, size: 192, elements: !2594)
!2594 = !{!2595, !2596}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2593, file: !44, line: 71, baseType: !923, size: 128, align: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2593, file: !44, line: 72, baseType: !126, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2575, file: !44, line: 76, baseType: !2598, size: 64, offset: 256)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2575, file: !44, line: 77, baseType: !126, size: 64, offset: 320)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2575, file: !44, line: 79, baseType: !2602, size: 64, offset: 384)
!2602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2603, size: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2586, line: 25, size: 256, elements: !2604)
!2604 = !{!2605, !2611, !2615}
!2605 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !2586, line: 26, baseType: !2606, size: 128)
!2606 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2603, file: !2586, line: 26, size: 128, elements: !2607)
!2607 = !{!2608, !2610}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2606, file: !2586, line: 27, baseType: !2609, size: 128)
!2609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 128, elements: !2074)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2606, file: !2586, line: 28, baseType: !2609, size: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2603, file: !2586, line: 31, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2614)
!2614 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2586, line: 23, flags: DIFlagFwdDecl)
!2615 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !2586, line: 33, baseType: !2616, size: 64, offset: 192)
!2616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2603, file: !2586, line: 33, size: 64, elements: !2617)
!2617 = !{!2618, !2624, !2629}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2616, file: !2586, line: 38, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2586, line: 34, size: 64, elements: !2620)
!2620 = !{!2621, !2622, !2623}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2619, file: !2586, line: 35, baseType: !1373, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2619, file: !2586, line: 36, baseType: !190, size: 8, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2619, file: !2586, line: 37, baseType: !190, size: 8, offset: 40)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2616, file: !2586, line: 42, baseType: !2625, size: 16)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2586, line: 39, size: 16, elements: !2626)
!2626 = !{!2627, !2628}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2625, file: !2586, line: 40, baseType: !190, size: 8)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2625, file: !2586, line: 41, baseType: !190, size: 8, offset: 8)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2616, file: !2586, line: 46, baseType: !2630, size: 16)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2616, file: !2586, line: 43, size: 16, elements: !2631)
!2631 = !{!2632, !2633}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2630, file: !2586, line: 44, baseType: !190, size: 8)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2630, file: !2586, line: 45, baseType: !190, size: 8, offset: 8)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2575, file: !44, line: 81, baseType: !2635, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2636, file: !44, line: 86, baseType: !2598, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2636, file: !44, line: 87, baseType: !126, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2636, file: !44, line: 88, baseType: !126, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2636, file: !44, line: 89, baseType: !126, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2636, file: !44, line: 90, baseType: !1430, size: 8, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2636, file: !44, line: 92, baseType: !2635, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2575, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !939, file: !585, line: 1463, baseType: !2646, offset: 21184)
!2646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !585, line: 739, elements: !514)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !939, file: !585, line: 1470, baseType: !923, size: 128, align: 64, offset: 21184)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !939, file: !585, line: 1471, baseType: !952, size: 32, offset: 21312)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !939, file: !585, line: 1472, baseType: !85, size: 32, offset: 21344)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !939, file: !585, line: 1474, baseType: !938, size: 64, offset: 21376)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !939, file: !585, line: 1475, baseType: !2652, size: 320, offset: 21440)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2653, line: 11, size: 320, elements: !2654)
!2653 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2654 = !{!2655, !2656, !2657, !2662}
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2652, file: !2653, line: 16, baseType: !506, size: 128)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2652, file: !2653, line: 17, baseType: !126, size: 64, offset: 128)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2652, file: !2653, line: 18, baseType: !2658, size: 64, offset: 192)
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !2661}
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2652, file: !2653, line: 19, baseType: !379, size: 32, offset: 256)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !939, file: !585, line: 1478, baseType: !2664, size: 64, offset: 21760)
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !585, line: 1478, flags: DIFlagFwdDecl)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !939, file: !585, line: 1482, baseType: !952, size: 32, offset: 21824)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !939, file: !585, line: 1489, baseType: !125, size: 64, offset: 21888)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !939, file: !585, line: 1504, baseType: !125, size: 64, offset: 21952)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !939, file: !585, line: 1505, baseType: !384, size: 64, offset: 22016)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !939, file: !585, line: 1506, baseType: !383, size: 64, offset: 22080)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !939, file: !585, line: 1507, baseType: !384, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !939, file: !585, line: 1508, baseType: !384, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !939, file: !585, line: 1509, baseType: !384, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !939, file: !585, line: 1510, baseType: !923, size: 128, align: 64, offset: 22208)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !939, file: !585, line: 1511, baseType: !85, size: 32, offset: 22336)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !939, file: !585, line: 1515, baseType: !2677, size: 64, offset: 22400)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !966, line: 56, size: 64, elements: !2678)
!2678 = !{!2679}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2677, file: !966, line: 57, baseType: !969, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !939, file: !585, line: 1518, baseType: !2677, size: 64, offset: 22464)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !939, file: !585, line: 1528, baseType: !923, size: 128, align: 64, offset: 22528)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !939, file: !585, line: 1552, baseType: !2683, size: 35328, offset: 23040)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2684, line: 430, size: 35328, elements: !2685)
!2684 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2685 = !{!2686, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2715, !2716, !2717, !2718, !2719, !2720, !2723, !2724, !2725, !2726}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2683, file: !2684, line: 432, baseType: !2687, size: 192)
!2687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2688, size: 192, elements: !233)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2689, line: 16, size: 64, elements: !2690)
!2689 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2690 = !{!2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2688, file: !2689, line: 17, baseType: !200, size: 16)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2688, file: !2689, line: 18, baseType: !200, size: 16, offset: 16)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2688, file: !2689, line: 19, baseType: !200, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2688, file: !2689, line: 19, baseType: !200, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2688, file: !2689, line: 19, baseType: !200, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2688, file: !2689, line: 19, baseType: !200, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2688, file: !2689, line: 19, baseType: !200, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2688, file: !2689, line: 20, baseType: !200, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2688, file: !2689, line: 20, baseType: !200, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2688, file: !2689, line: 20, baseType: !200, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2688, file: !2689, line: 20, baseType: !200, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2688, file: !2689, line: 20, baseType: !200, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2688, file: !2689, line: 20, baseType: !200, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2683, file: !2684, line: 436, baseType: !126, size: 64, offset: 192)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2683, file: !2684, line: 440, baseType: !202, size: 16, offset: 256)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2683, file: !2684, line: 441, baseType: !202, size: 16, offset: 272)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2683, file: !2684, line: 442, baseType: !202, size: 16, offset: 288)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2683, file: !2684, line: 443, baseType: !202, size: 16, offset: 304)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2683, file: !2684, line: 447, baseType: !126, size: 64, offset: 320)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2683, file: !2684, line: 448, baseType: !126, size: 64, offset: 384)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2683, file: !2684, line: 459, baseType: !2712, size: 256, offset: 448)
!2712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2713, size: 256, elements: !1318)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2684, line: 428, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2683, file: !2684, line: 461, baseType: !126, size: 64, offset: 704)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2683, file: !2684, line: 463, baseType: !126, size: 64, offset: 768)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2683, file: !2684, line: 465, baseType: !126, size: 64, offset: 832)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2683, file: !2684, line: 466, baseType: !126, size: 64, offset: 896)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2683, file: !2684, line: 467, baseType: !126, size: 64, offset: 960)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2683, file: !2684, line: 473, baseType: !2721, size: 64, offset: 1024)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2684, line: 10, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2683, file: !2684, line: 480, baseType: !126, size: 64, offset: 1088)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2683, file: !2684, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2683, file: !2684, line: 491, baseType: !379, size: 32, offset: 1184)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2683, file: !2684, line: 501, baseType: !2727, size: 33792, offset: 1536)
!2727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2728, line: 448, size: 33792, elements: !2729)
!2728 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2729 = !{!2730, !2731, !2732, !2894, !2895, !2901, !2902}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2727, file: !2728, line: 461, baseType: !7, size: 32)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2727, file: !2728, line: 468, baseType: !126, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2727, file: !2728, line: 476, baseType: !2733, size: 64, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2728, line: 356, size: 33280, align: 512, elements: !2735)
!2735 = !{!2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745}
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2734, file: !2728, line: 358, baseType: !7, size: 32)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2734, file: !2728, line: 361, baseType: !7, size: 32, offset: 32)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2734, file: !2728, line: 364, baseType: !383, size: 64, offset: 64)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2734, file: !2728, line: 367, baseType: !383, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2734, file: !2728, line: 370, baseType: !383, size: 64, offset: 192)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2734, file: !2728, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2734, file: !2728, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2734, file: !2728, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2734, file: !2728, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2734, file: !2728, line: 397, baseType: !2746, size: 32768, offset: 512)
!2746 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2728, line: 348, size: 32768, elements: !2747)
!2747 = !{!2748, !2763, !2800, !2877, !2890}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2746, file: !2728, line: 349, baseType: !2749, size: 896)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2728, line: 12, size: 896, elements: !2750)
!2750 = !{!2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2762}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2749, file: !2728, line: 13, baseType: !379, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2749, file: !2728, line: 14, baseType: !379, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2749, file: !2728, line: 15, baseType: !379, size: 32, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2749, file: !2728, line: 16, baseType: !379, size: 32, offset: 96)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2749, file: !2728, line: 17, baseType: !379, size: 32, offset: 128)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2749, file: !2728, line: 18, baseType: !379, size: 32, offset: 160)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2749, file: !2728, line: 19, baseType: !379, size: 32, offset: 192)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2749, file: !2728, line: 22, baseType: !2759, size: 640, offset: 224)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 640, elements: !2760)
!2760 = !{!2761}
!2761 = !DISubrange(count: 20)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2749, file: !2728, line: 25, baseType: !379, size: 32, offset: 864)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2746, file: !2728, line: 350, baseType: !2764, size: 4096, align: 128)
!2764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2728, line: 34, size: 4096, align: 128, elements: !2765)
!2765 = !{!2766, !2767, !2768, !2769, !2770, !2785, !2786, !2787, !2789, !2791, !2795}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2764, file: !2728, line: 35, baseType: !200, size: 16)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2764, file: !2728, line: 36, baseType: !200, size: 16, offset: 16)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2764, file: !2728, line: 37, baseType: !200, size: 16, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2764, file: !2728, line: 38, baseType: !200, size: 16, offset: 48)
!2770 = !DIDerivedType(tag: DW_TAG_member, scope: !2764, file: !2728, line: 39, baseType: !2771, size: 128, offset: 64)
!2771 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2764, file: !2728, line: 39, size: 128, elements: !2772)
!2772 = !{!2773, !2778}
!2773 = !DIDerivedType(tag: DW_TAG_member, scope: !2771, file: !2728, line: 40, baseType: !2774, size: 128)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2771, file: !2728, line: 40, size: 128, elements: !2775)
!2775 = !{!2776, !2777}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2774, file: !2728, line: 41, baseType: !383, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2774, file: !2728, line: 42, baseType: !383, size: 64, offset: 64)
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !2771, file: !2728, line: 44, baseType: !2779, size: 128)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2771, file: !2728, line: 44, size: 128, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2779, file: !2728, line: 45, baseType: !379, size: 32)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2779, file: !2728, line: 46, baseType: !379, size: 32, offset: 32)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2779, file: !2728, line: 47, baseType: !379, size: 32, offset: 64)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2779, file: !2728, line: 48, baseType: !379, size: 32, offset: 96)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2764, file: !2728, line: 51, baseType: !379, size: 32, offset: 192)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2764, file: !2728, line: 52, baseType: !379, size: 32, offset: 224)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2764, file: !2728, line: 55, baseType: !2788, size: 1024, offset: 256)
!2788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 1024, elements: !392)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2764, file: !2728, line: 58, baseType: !2790, size: 2048, offset: 1280)
!2790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 2048, elements: !237)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2764, file: !2728, line: 60, baseType: !2792, size: 384, offset: 3328)
!2792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 384, elements: !2793)
!2793 = !{!2794}
!2794 = !DISubrange(count: 12)
!2795 = !DIDerivedType(tag: DW_TAG_member, scope: !2764, file: !2728, line: 62, baseType: !2796, size: 384, offset: 3712)
!2796 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2764, file: !2728, line: 62, size: 384, elements: !2797)
!2797 = !{!2798, !2799}
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2796, file: !2728, line: 63, baseType: !2792, size: 384)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2796, file: !2728, line: 64, baseType: !2792, size: 384)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2746, file: !2728, line: 351, baseType: !2801, size: 1088)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2728, line: 79, size: 1088, elements: !2802)
!2802 = !{!2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2876}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2801, file: !2728, line: 80, baseType: !379, size: 32)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2801, file: !2728, line: 81, baseType: !379, size: 32, offset: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2801, file: !2728, line: 82, baseType: !379, size: 32, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2801, file: !2728, line: 83, baseType: !379, size: 32, offset: 96)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2801, file: !2728, line: 84, baseType: !379, size: 32, offset: 128)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2801, file: !2728, line: 85, baseType: !379, size: 32, offset: 160)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2801, file: !2728, line: 86, baseType: !379, size: 32, offset: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2801, file: !2728, line: 88, baseType: !2759, size: 640, offset: 224)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2801, file: !2728, line: 89, baseType: !190, size: 8, offset: 864)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2801, file: !2728, line: 90, baseType: !190, size: 8, offset: 872)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2801, file: !2728, line: 91, baseType: !190, size: 8, offset: 880)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2801, file: !2728, line: 92, baseType: !190, size: 8, offset: 888)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2801, file: !2728, line: 93, baseType: !190, size: 8, offset: 896)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2801, file: !2728, line: 94, baseType: !190, size: 8, offset: 904)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2801, file: !2728, line: 95, baseType: !2818, size: 64, offset: 960)
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2820, line: 11, size: 128, elements: !2821)
!2820 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2821 = !{!2822, !2823}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2819, file: !2820, line: 12, baseType: !127, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2819, file: !2820, line: 13, baseType: !2824, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2826, line: 103, size: 1344, elements: !2827)
!2826 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2827 = !{!2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2856, !2857, !2858}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2825, file: !2826, line: 109, baseType: !126, size: 64)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2825, file: !2826, line: 110, baseType: !126, size: 64, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2825, file: !2826, line: 111, baseType: !126, size: 64, offset: 128)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2825, file: !2826, line: 112, baseType: !126, size: 64, offset: 192)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2825, file: !2826, line: 113, baseType: !126, size: 64, offset: 256)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2825, file: !2826, line: 114, baseType: !126, size: 64, offset: 320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2825, file: !2826, line: 117, baseType: !126, size: 64, offset: 384)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2825, file: !2826, line: 118, baseType: !126, size: 64, offset: 448)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2825, file: !2826, line: 119, baseType: !126, size: 64, offset: 512)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2825, file: !2826, line: 120, baseType: !126, size: 64, offset: 576)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2825, file: !2826, line: 121, baseType: !126, size: 64, offset: 640)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2825, file: !2826, line: 122, baseType: !126, size: 64, offset: 704)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2825, file: !2826, line: 123, baseType: !126, size: 64, offset: 768)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2825, file: !2826, line: 124, baseType: !126, size: 64, offset: 832)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2825, file: !2826, line: 125, baseType: !126, size: 64, offset: 896)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2825, file: !2826, line: 139, baseType: !126, size: 64, offset: 960)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2825, file: !2826, line: 142, baseType: !126, size: 64, offset: 1024)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !2826, line: 144, baseType: !2846, size: 64, offset: 1088)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2825, file: !2826, line: 144, size: 64, elements: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2846, file: !2826, line: 146, baseType: !200, size: 16)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2846, file: !2826, line: 148, baseType: !383, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2846, file: !2826, line: 150, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2826, line: 59, size: 64, elements: !2852)
!2852 = !{!2853, !2854, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2851, file: !2826, line: 61, baseType: !383, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2851, file: !2826, line: 63, baseType: !383, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2851, file: !2826, line: 65, baseType: !383, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2825, file: !2826, line: 153, baseType: !126, size: 64, offset: 1152)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2825, file: !2826, line: 154, baseType: !126, size: 64, offset: 1216)
!2858 = !DIDerivedType(tag: DW_TAG_member, scope: !2825, file: !2826, line: 156, baseType: !2859, size: 64, offset: 1280)
!2859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2825, file: !2826, line: 156, size: 64, elements: !2860)
!2860 = !{!2861, !2862, !2863}
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2859, file: !2826, line: 158, baseType: !200, size: 16)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2859, file: !2826, line: 160, baseType: !383, size: 64)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2859, file: !2826, line: 162, baseType: !2864, size: 64)
!2864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2826, line: 69, size: 64, elements: !2865)
!2865 = !{!2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875}
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2864, file: !2826, line: 71, baseType: !383, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2864, file: !2826, line: 73, baseType: !383, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2864, file: !2826, line: 75, baseType: !383, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2864, file: !2826, line: 77, baseType: !383, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2864, file: !2826, line: 80, baseType: !383, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2864, file: !2826, line: 83, baseType: !383, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2864, file: !2826, line: 86, baseType: !383, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2864, file: !2826, line: 88, baseType: !383, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2864, file: !2826, line: 93, baseType: !383, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2864, file: !2826, line: 100, baseType: !383, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2801, file: !2728, line: 96, baseType: !379, size: 32, offset: 1024)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2746, file: !2728, line: 352, baseType: !2878, size: 4608, align: 512)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2728, line: 333, size: 4608, align: 512, elements: !2879)
!2879 = !{!2880, !2881, !2888}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2878, file: !2728, line: 334, baseType: !2764, size: 4096, align: 128)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2878, file: !2728, line: 335, baseType: !2882, size: 512, offset: 4096)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2728, line: 312, size: 512, elements: !2883)
!2883 = !{!2884, !2885, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2882, file: !2728, line: 313, baseType: !383, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2882, file: !2728, line: 314, baseType: !383, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2882, file: !2728, line: 315, baseType: !2887, size: 384, offset: 128)
!2887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 384, elements: !1417)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2878, file: !2728, line: 336, baseType: !2889, offset: 4608)
!2889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !1331)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2746, file: !2728, line: 353, baseType: !2891, size: 32768)
!2891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 32768, elements: !2892)
!2892 = !{!2893}
!2893 = !DISubrange(count: 4096)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2727, file: !2728, line: 484, baseType: !2733, size: 64, offset: 192)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2727, file: !2728, line: 491, baseType: !2896, size: 128, offset: 256)
!2896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2728, line: 404, size: 128, elements: !2897)
!2897 = !{!2898, !2899, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2896, file: !2728, line: 424, baseType: !383, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2896, file: !2728, line: 432, baseType: !7, size: 32, offset: 64)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2896, file: !2728, line: 440, baseType: !7, size: 32, offset: 96)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2727, file: !2728, line: 498, baseType: !2896, size: 128, offset: 384)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2727, file: !2728, line: 508, baseType: !2734, size: 33280, align: 512, offset: 512)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !906, file: !907, line: 16, baseType: !916, size: 192, offset: 512)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !906, file: !907, line: 17, baseType: !182, size: 32, offset: 704)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !462, file: !14, line: 1240, baseType: !125, size: 64, offset: 6912)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !462, file: !14, line: 1243, baseType: !379, size: 32, offset: 6976)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !462, file: !14, line: 1245, baseType: !663, size: 64, offset: 7040)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !462, file: !14, line: 1246, baseType: !663, size: 64, offset: 7104)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !462, file: !14, line: 1248, baseType: !380, size: 32, offset: 7168)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !462, file: !14, line: 1249, baseType: !2911, size: 64, offset: 7232)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !462, file: !14, line: 1252, baseType: !2914, size: 256, offset: 7296)
!2914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 256, elements: !392)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !462, file: !14, line: 1253, baseType: !2916, size: 128, offset: 7552)
!2916 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2917, line: 21, baseType: !2918)
!2917 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2918 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2917, line: 19, size: 128, elements: !2919)
!2919 = !{!2920}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2918, file: !2917, line: 20, baseType: !2921, size: 128)
!2921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !192, size: 128, elements: !2074)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !462, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !462, file: !14, line: 1261, baseType: !610, size: 256, offset: 7744)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !462, file: !14, line: 1267, baseType: !151, size: 64, offset: 8000)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !462, file: !14, line: 1269, baseType: !408, size: 64, offset: 8064)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !462, file: !14, line: 1271, baseType: !2927, size: 448, offset: 8128)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !672, line: 63, size: 448, elements: !2928)
!2928 = !{!2929, !2934, !2935, !2936, !2937, !2938, !2939}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2927, file: !672, line: 64, baseType: !2930, size: 64)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!126, !2933, !670}
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2927, file: !672, line: 66, baseType: !2930, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2927, file: !672, line: 69, baseType: !127, size: 64, offset: 128)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2927, file: !672, line: 70, baseType: !85, size: 32, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2927, file: !672, line: 71, baseType: !7, size: 32, offset: 224)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2927, file: !672, line: 74, baseType: !133, size: 128, offset: 256)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2927, file: !672, line: 85, baseType: !2940, size: 64, offset: 384)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !462, file: !14, line: 1274, baseType: !614, size: 64, offset: 8576)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !462, file: !14, line: 1280, baseType: !614, size: 64, offset: 8640)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !462, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !462, file: !14, line: 1286, baseType: !1778, size: 32, offset: 8736)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !462, file: !14, line: 1289, baseType: !2946, size: 64, offset: 8768)
!2946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!2947 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1907, line: 18, flags: DIFlagFwdDecl)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !462, file: !14, line: 1290, baseType: !502, size: 64, offset: 8832)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !462, file: !14, line: 1297, baseType: !1513, size: 64, offset: 8896)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !462, file: !14, line: 1304, baseType: !2951, size: 64, offset: 8960)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2952, line: 49, size: 64, elements: !2953)
!2952 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2953 = !{!2954}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2951, file: !2952, line: 50, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2952, line: 41, size: 512, align: 512, elements: !2957)
!2957 = !{!2958, !2959, !2964}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2956, file: !2952, line: 43, baseType: !162, size: 32)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2956, file: !2952, line: 45, baseType: !2960, size: 192, offset: 64)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2952, line: 29, size: 192, elements: !2961)
!2961 = !{!2962, !2963}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2960, file: !2952, line: 30, baseType: !133, size: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2960, file: !2952, line: 32, baseType: !127, size: 64, offset: 128)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2956, file: !2952, line: 46, baseType: !127, size: 64, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !462, file: !14, line: 1305, baseType: !2951, size: 64, offset: 9024)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !462, file: !14, line: 1306, baseType: !923, size: 128, align: 64, offset: 9088)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !462, file: !14, line: 1307, baseType: !1906, size: 256, offset: 9216)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !462, file: !14, line: 1309, baseType: !610, size: 256, offset: 9472)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !462, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !462, file: !14, line: 1317, baseType: !162, size: 32, align: 512, offset: 10240)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !462, file: !14, line: 1318, baseType: !133, size: 128, offset: 10304)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !462, file: !14, line: 1320, baseType: !162, size: 32, offset: 10432)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !462, file: !14, line: 1321, baseType: !133, size: 128, offset: 10496)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !456, file: !457, line: 73, baseType: !85, size: 32, offset: 128)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !456, file: !457, line: 74, baseType: !2976, size: 64, offset: 192)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1355, line: 42, flags: DIFlagFwdDecl)
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !410, file: !347, line: 141, baseType: !2980, size: 64, offset: 704)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!85, !733, !1430}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !410, file: !347, line: 142, baseType: !2984, size: 64, offset: 768)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DISubroutineType(types: !2986)
!2986 = !{!345, !345, !2987}
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !311)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !346, file: !347, line: 96, baseType: !461, size: 64, offset: 832)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !346, file: !347, line: 97, baseType: !126, size: 64, offset: 896)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !346, file: !347, line: 98, baseType: !125, size: 64, offset: 960)
!2992 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !347, line: 100, baseType: !2993, size: 128, offset: 1024)
!2993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !347, line: 100, size: 128, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !2993, file: !347, line: 101, baseType: !133, size: 128)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !2993, file: !347, line: 102, baseType: !1625, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !346, file: !347, line: 104, baseType: !133, size: 128, offset: 1152)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !346, file: !347, line: 105, baseType: !133, size: 128, offset: 1280)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !346, file: !347, line: 113, baseType: !3000, size: 128, offset: 1408)
!3000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !347, line: 109, size: 128, elements: !3001)
!3001 = !{!3002, !3003, !3004}
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3000, file: !347, line: 110, baseType: !506, size: 128)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3000, file: !347, line: 111, baseType: !361, size: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3000, file: !347, line: 112, baseType: !923, size: 128, align: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !339, file: !14, line: 1968, baseType: !3006, size: 64, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DISubroutineType(types: !3008)
!3008 = !{!151, !345, !310, !3009}
!3009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3010, size: 64)
!3010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3011, line: 10, size: 128, elements: !3012)
!3011 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3012 = !{!3013, !3017}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3010, file: !3011, line: 11, baseType: !3014, size: 64)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DISubroutineType(types: !3016)
!3016 = !{null, !125}
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3010, file: !3011, line: 12, baseType: !125, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !339, file: !14, line: 1969, baseType: !3019, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!85, !2976, !310, !85}
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !339, file: !14, line: 1970, baseType: !3023, size: 64, offset: 192)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!333, !310, !85, !1430}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !339, file: !14, line: 1972, baseType: !3027, size: 64, offset: 256)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!85, !345, !232, !85}
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !339, file: !14, line: 1974, baseType: !3031, size: 64, offset: 320)
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3032, size: 64)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!85, !2976, !310, !345, !273, !1430}
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !339, file: !14, line: 1976, baseType: !3035, size: 64, offset: 384)
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!85, !345, !310, !345}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !339, file: !14, line: 1977, baseType: !3039, size: 64, offset: 448)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!85, !310, !345}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !339, file: !14, line: 1978, baseType: !3043, size: 64, offset: 512)
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DISubroutineType(types: !3045)
!3045 = !{!85, !2976, !310, !345, !151}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !339, file: !14, line: 1980, baseType: !3047, size: 64, offset: 576)
!3047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3048, size: 64)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!85, !2976, !310, !345, !273}
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !339, file: !14, line: 1982, baseType: !3039, size: 64, offset: 640)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !339, file: !14, line: 1983, baseType: !3052, size: 64, offset: 704)
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!85, !2976, !310, !345, !273, !466}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !339, file: !14, line: 1985, baseType: !3056, size: 64, offset: 768)
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3057, size: 64)
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!85, !2976, !310, !345, !310, !345, !7}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !339, file: !14, line: 1987, baseType: !3060, size: 64, offset: 832)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DISubroutineType(types: !3062)
!3062 = !{!85, !2976, !345, !3063}
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3065)
!3065 = !{!3066, !3067, !3068, !3078, !3087, !3088, !3093, !3094, !3095}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3064, file: !14, line: 227, baseType: !7, size: 32)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3064, file: !14, line: 228, baseType: !273, size: 16, offset: 32)
!3068 = !DIDerivedType(tag: DW_TAG_member, scope: !3064, file: !14, line: 241, baseType: !3069, size: 32, offset: 64)
!3069 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3064, file: !14, line: 241, size: 32, elements: !3070)
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3069, file: !14, line: 242, baseType: !316, size: 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3069, file: !14, line: 243, baseType: !3073, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3074, line: 16, baseType: !3075)
!3074 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3074, line: 14, size: 32, elements: !3076)
!3076 = !{!3077}
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3075, file: !3074, line: 15, baseType: !321, size: 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, scope: !3064, file: !14, line: 245, baseType: !3079, size: 32, offset: 96)
!3079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3064, file: !14, line: 245, size: 32, elements: !3080)
!3080 = !{!3081, !3082}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3079, file: !14, line: 246, baseType: !325, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3079, file: !14, line: 247, baseType: !3083, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3074, line: 20, baseType: !3084)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3074, line: 18, size: 32, elements: !3085)
!3085 = !{!3086}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3084, file: !3074, line: 19, baseType: !329, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3064, file: !14, line: 249, baseType: !471, size: 64, offset: 128)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3064, file: !14, line: 250, baseType: !3089, size: 128, offset: 192)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !664, line: 13, size: 128, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3089, file: !664, line: 14, baseType: !663, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3089, file: !664, line: 15, baseType: !127, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3064, file: !14, line: 251, baseType: !3089, size: 128, offset: 320)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3064, file: !14, line: 252, baseType: !3089, size: 128, offset: 448)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3064, file: !14, line: 259, baseType: !1269, size: 64, offset: 576)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !339, file: !14, line: 1988, baseType: !3097, size: 64, offset: 896)
!3097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3098, size: 64)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!85, !2976, !733, !3100, !379, !7}
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3102, line: 22, size: 1280, elements: !3103)
!3102 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3103 = !{!3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3101, file: !3102, line: 23, baseType: !379, size: 32)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3101, file: !3102, line: 24, baseType: !273, size: 16, offset: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3101, file: !3102, line: 25, baseType: !7, size: 32, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3101, file: !3102, line: 26, baseType: !1395, size: 32, offset: 96)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3101, file: !3102, line: 27, baseType: !383, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3101, file: !3102, line: 28, baseType: !383, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3101, file: !3102, line: 41, baseType: !383, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3101, file: !3102, line: 42, baseType: !466, size: 32, offset: 320)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3101, file: !3102, line: 43, baseType: !466, size: 32, offset: 352)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3101, file: !3102, line: 44, baseType: !316, size: 32, offset: 384)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3101, file: !3102, line: 45, baseType: !325, size: 32, offset: 416)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3101, file: !3102, line: 46, baseType: !471, size: 64, offset: 448)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3101, file: !3102, line: 47, baseType: !3089, size: 128, offset: 512)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3101, file: !3102, line: 48, baseType: !3089, size: 128, offset: 640)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3101, file: !3102, line: 49, baseType: !3089, size: 128, offset: 768)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3101, file: !3102, line: 50, baseType: !3089, size: 128, offset: 896)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3101, file: !3102, line: 51, baseType: !383, size: 64, offset: 1024)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3101, file: !3102, line: 52, baseType: !383, size: 64, offset: 1088)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3101, file: !3102, line: 53, baseType: !379, size: 32, offset: 1152)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3101, file: !3102, line: 54, baseType: !379, size: 32, offset: 1184)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3101, file: !3102, line: 55, baseType: !383, size: 64, offset: 1216)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !339, file: !14, line: 1990, baseType: !3126, size: 64, offset: 960)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DISubroutineType(types: !3128)
!3128 = !{!264, !345, !232, !278}
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !339, file: !14, line: 1991, baseType: !3130, size: 64, offset: 1024)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = !DISubroutineType(types: !3132)
!3132 = !{!85, !310, !3133, !383, !383}
!3133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3134, size: 64)
!3134 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !339, file: !14, line: 1993, baseType: !3136, size: 64, offset: 1088)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{!85, !310, !85}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !339, file: !14, line: 1994, baseType: !3140, size: 64, offset: 1152)
!3140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3141, size: 64)
!3141 = !DISubroutineType(types: !3142)
!3142 = !{!85, !310, !345, !1269, !7, !273}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !339, file: !14, line: 1997, baseType: !3144, size: 64, offset: 1216)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{!85, !2976, !310, !1269, !273}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !339, file: !14, line: 1999, baseType: !3148, size: 64, offset: 1280)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!333, !2976, !345, !85}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !339, file: !14, line: 2001, baseType: !3152, size: 64, offset: 1344)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DISubroutineType(types: !3154)
!3154 = !{!85, !2976, !345, !333, !85}
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !339, file: !14, line: 2003, baseType: !3156, size: 64, offset: 1408)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!85, !2976, !345, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !339, file: !14, line: 2005, baseType: !3162, size: 64, offset: 1472)
!3162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3163, size: 64)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!85, !345, !3159}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !339, file: !14, line: 2006, baseType: !3166, size: 64, offset: 1536)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!3169, !310}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3171)
!3171 = !{!3172, !3179}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3170, file: !14, line: 3193, baseType: !3173, size: 128)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3174, line: 296, size: 128, elements: !3175)
!3174 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3173, file: !3174, line: 297, baseType: !162, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3173, file: !3174, line: 299, baseType: !123, size: 32, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3173, file: !3174, line: 300, baseType: !125, size: 64, offset: 64)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3170, file: !14, line: 3194, baseType: !379, size: 32, offset: 128)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !311, file: !14, line: 655, baseType: !461, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !311, file: !14, line: 656, baseType: !306, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !311, file: !14, line: 659, baseType: !125, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !311, file: !14, line: 663, baseType: !126, size: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !14, line: 671, baseType: !3185, size: 32, offset: 704)
!3185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !14, line: 671, size: 32, elements: !3186)
!3186 = !{!3187, !3189}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3185, file: !14, line: 672, baseType: !3188, size: 32)
!3188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3185, file: !14, line: 673, baseType: !7, size: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !311, file: !14, line: 675, baseType: !466, size: 32, offset: 736)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !311, file: !14, line: 676, baseType: !471, size: 64, offset: 768)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !311, file: !14, line: 677, baseType: !3089, size: 128, offset: 832)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !311, file: !14, line: 678, baseType: !3089, size: 128, offset: 960)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !311, file: !14, line: 679, baseType: !3089, size: 128, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !311, file: !14, line: 680, baseType: !162, size: 32, offset: 1216)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !311, file: !14, line: 681, baseType: !202, size: 16, offset: 1248)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !311, file: !14, line: 682, baseType: !190, size: 8, offset: 1264)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !311, file: !14, line: 683, baseType: !190, size: 8, offset: 1272)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !311, file: !14, line: 684, baseType: !811, size: 64, offset: 1280)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !311, file: !14, line: 691, baseType: !126, size: 64, offset: 1344)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !311, file: !14, line: 692, baseType: !823, size: 320, offset: 1408)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !311, file: !14, line: 694, baseType: !126, size: 64, offset: 1728)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !311, file: !14, line: 695, baseType: !126, size: 64, offset: 1792)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !311, file: !14, line: 697, baseType: !506, size: 128, offset: 1856)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !311, file: !14, line: 698, baseType: !133, size: 128, offset: 1984)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !311, file: !14, line: 707, baseType: !133, size: 128, offset: 2112)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !311, file: !14, line: 708, baseType: !133, size: 128, offset: 2240)
!3208 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !14, line: 709, baseType: !3209, size: 128, offset: 2368)
!3209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !14, line: 709, size: 128, elements: !3210)
!3210 = !{!3211, !3212}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3209, file: !14, line: 710, baseType: !502, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3209, file: !14, line: 711, baseType: !923, size: 128, align: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !311, file: !14, line: 713, baseType: !616, size: 64, offset: 2496)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !311, file: !14, line: 714, baseType: !616, size: 64, offset: 2560)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !311, file: !14, line: 715, baseType: !182, size: 32, offset: 2624)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !311, file: !14, line: 716, baseType: !182, size: 32, offset: 2656)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !311, file: !14, line: 717, baseType: !182, size: 32, offset: 2688)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !311, file: !14, line: 719, baseType: !182, size: 32, offset: 2720)
!3219 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !14, line: 721, baseType: !3220, size: 64, offset: 2752)
!3220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !14, line: 721, size: 64, elements: !3221)
!3221 = !{!3222, !3223}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3220, file: !14, line: 722, baseType: !1544, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3220, file: !14, line: 723, baseType: !533, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !311, file: !14, line: 725, baseType: !3225, size: 64, offset: 2816)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !311, file: !14, line: 726, baseType: !307, size: 1536, align: 64, offset: 2880)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !311, file: !14, line: 727, baseType: !133, size: 128, offset: 4416)
!3229 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !14, line: 728, baseType: !3230, size: 64, offset: 4544)
!3230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !14, line: 728, size: 64, elements: !3231)
!3231 = !{!3232, !3233, !3244, !3245}
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3230, file: !14, line: 729, baseType: !1728, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3230, file: !14, line: 730, baseType: !3234, size: 64)
!3234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3235, size: 64)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3236, line: 14, size: 832, elements: !3237)
!3236 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3235, file: !3236, line: 15, baseType: !147, size: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3235, file: !3236, line: 16, baseType: !128, size: 64, offset: 512)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3235, file: !3236, line: 17, baseType: !1544, size: 64, offset: 576)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3235, file: !3236, line: 18, baseType: !133, size: 128, offset: 640)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3235, file: !3236, line: 19, baseType: !466, size: 32, offset: 768)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3235, file: !3236, line: 20, baseType: !7, size: 32, offset: 800)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3230, file: !14, line: 731, baseType: !232, size: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3230, file: !14, line: 732, baseType: !7, size: 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !311, file: !14, line: 735, baseType: !380, size: 32, offset: 4608)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !311, file: !14, line: 738, baseType: !380, size: 32, offset: 4640)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !311, file: !14, line: 739, baseType: !2911, size: 64, offset: 4672)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !311, file: !14, line: 750, baseType: !125, size: 64, offset: 4736)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !307, file: !14, line: 474, baseType: !3173, size: 128, offset: 64)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !307, file: !14, line: 475, baseType: !823, size: 320, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !307, file: !14, line: 476, baseType: !123, size: 32, offset: 512)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !307, file: !14, line: 477, baseType: !182, size: 32, offset: 544)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !307, file: !14, line: 482, baseType: !1125, size: 128, offset: 576)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !307, file: !14, line: 483, baseType: !126, size: 64, offset: 704)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !307, file: !14, line: 484, baseType: !126, size: 64, offset: 768)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !307, file: !14, line: 485, baseType: !3258, size: 64, offset: 832)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3260)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3261)
!3261 = !{!3262, !3266, !3336, !3340, !3344, !3350, !3355, !3359, !3364, !3368, !3372, !3376, !3377, !3381, !3385, !3389, !3394, !3398, !3405, !3406}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3260, file: !14, line: 405, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DISubroutineType(types: !3265)
!3265 = !{!85, !2499, !545}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3260, file: !14, line: 406, baseType: !3267, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3268, size: 64)
!3268 = !DISubroutineType(types: !3269)
!3269 = !{!85, !1269, !3270}
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !681, line: 293, size: 1536, elements: !3272)
!3272 = !{!3273, !3303, !3317}
!3273 = !DIDerivedType(tag: DW_TAG_member, scope: !3271, file: !681, line: 295, baseType: !3274, size: 512)
!3274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3271, file: !681, line: 295, size: 512, elements: !3275)
!3275 = !{!3276, !3302}
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !3274, file: !681, line: 296, baseType: !3277, size: 448)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3274, file: !681, line: 296, size: 448, elements: !3278)
!3278 = !{!3279, !3280, !3289, !3290, !3291, !3300, !3301}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3277, file: !681, line: 298, baseType: !126, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !681, line: 299, baseType: !3281, size: 128, offset: 64)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !681, line: 299, size: 128, elements: !3282)
!3282 = !{!3283, !3284}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3281, file: !681, line: 300, baseType: !133, size: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, scope: !3281, file: !681, line: 302, baseType: !3285, size: 128)
!3285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3281, file: !681, line: 302, size: 128, elements: !3286)
!3286 = !{!3287, !3288}
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3285, file: !681, line: 303, baseType: !125, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3285, file: !681, line: 305, baseType: !7, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3277, file: !681, line: 310, baseType: !306, size: 64, offset: 192)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3277, file: !681, line: 311, baseType: !126, size: 64, offset: 256)
!3291 = !DIDerivedType(tag: DW_TAG_member, scope: !3277, file: !681, line: 312, baseType: !3292, size: 64, offset: 320)
!3292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3277, file: !681, line: 312, size: 64, elements: !3293)
!3293 = !{!3294, !3295}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3292, file: !681, line: 313, baseType: !125, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3292, file: !681, line: 314, baseType: !3296, size: 64)
!3296 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !681, line: 257, baseType: !3297)
!3297 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !681, line: 255, size: 64, elements: !3298)
!3298 = !{!3299}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3297, file: !681, line: 256, baseType: !126, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3277, file: !681, line: 316, baseType: !182, size: 32, offset: 384)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3277, file: !681, line: 317, baseType: !182, size: 32, offset: 416)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3274, file: !681, line: 323, baseType: !2500, size: 512, align: 128)
!3303 = !DIDerivedType(tag: DW_TAG_member, scope: !3271, file: !681, line: 325, baseType: !3304, size: 512, offset: 512)
!3304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3271, file: !681, line: 325, size: 512, elements: !3305)
!3305 = !{!3306, !3316}
!3306 = !DIDerivedType(tag: DW_TAG_member, scope: !3304, file: !681, line: 326, baseType: !3307, size: 320)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3304, file: !681, line: 326, size: 320, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3314, !3315}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3307, file: !681, line: 327, baseType: !126, size: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3307, file: !681, line: 328, baseType: !126, size: 64, offset: 64)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3307, file: !681, line: 329, baseType: !126, size: 64, offset: 128)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3307, file: !681, line: 331, baseType: !182, size: 32, offset: 192)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3307, file: !681, line: 332, baseType: !182, size: 32, offset: 224)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3307, file: !681, line: 333, baseType: !182, size: 32, offset: 256)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3307, file: !681, line: 335, baseType: !7, size: 32, offset: 288)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3304, file: !681, line: 339, baseType: !2500, size: 512, align: 128)
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3271, file: !681, line: 341, baseType: !3318, size: 512, offset: 1024)
!3318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3271, file: !681, line: 341, size: 512, elements: !3319)
!3319 = !{!3320, !3329, !3335}
!3320 = !DIDerivedType(tag: DW_TAG_member, scope: !3318, file: !681, line: 342, baseType: !3321, size: 384)
!3321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3318, file: !681, line: 342, size: 384, elements: !3322)
!3322 = !{!3323, !3324, !3325, !3326, !3327, !3328}
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3321, file: !681, line: 343, baseType: !126, size: 64)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3321, file: !681, line: 344, baseType: !126, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3321, file: !681, line: 346, baseType: !125, size: 64, offset: 128)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3321, file: !681, line: 347, baseType: !125, size: 64, offset: 192)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3321, file: !681, line: 348, baseType: !125, size: 64, offset: 256)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3321, file: !681, line: 349, baseType: !125, size: 64, offset: 320)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3318, file: !681, line: 352, baseType: !3330, size: 256)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3318, file: !681, line: 352, size: 256, elements: !3331)
!3331 = !{!3332, !3333, !3334}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3330, file: !681, line: 353, baseType: !126, size: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3330, file: !681, line: 354, baseType: !126, size: 64, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3330, file: !681, line: 356, baseType: !133, size: 128, offset: 128)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3318, file: !681, line: 359, baseType: !2500, size: 512, align: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3260, file: !14, line: 409, baseType: !3337, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DISubroutineType(types: !3339)
!3339 = !{!85, !306, !545}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3260, file: !14, line: 412, baseType: !3341, size: 64, offset: 192)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DISubroutineType(types: !3343)
!3343 = !{!1430, !306, !3270}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3260, file: !14, line: 414, baseType: !3345, size: 64, offset: 256)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DISubroutineType(types: !3347)
!3347 = !{null, !3348}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3260, file: !14, line: 416, baseType: !3351, size: 64, offset: 320)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!85, !1269, !306, !471, !7, !3354, !1743}
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3260, file: !14, line: 419, baseType: !3356, size: 64, offset: 384)
!3356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3357, size: 64)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{!85, !1269, !306, !471, !7, !7, !2499, !125}
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3260, file: !14, line: 424, baseType: !3360, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{!3363, !306, !3363}
!3363 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !124, line: 131, baseType: !383)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3260, file: !14, line: 425, baseType: !3365, size: 64, offset: 512)
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DISubroutineType(types: !3367)
!3367 = !{null, !3270, !278, !278}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3260, file: !14, line: 426, baseType: !3369, size: 64, offset: 576)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!1430, !3270, !123}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3260, file: !14, line: 427, baseType: !3373, size: 64, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3374, size: 64)
!3374 = !DISubroutineType(types: !3375)
!3375 = !{null, !3270}
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3260, file: !14, line: 428, baseType: !1563, size: 64, offset: 704)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3260, file: !14, line: 433, baseType: !3378, size: 64, offset: 768)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!85, !306, !3270, !3270, !50}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3260, file: !14, line: 435, baseType: !3382, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{!85, !3270}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3260, file: !14, line: 436, baseType: !3386, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!1430, !3270, !278, !278}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3260, file: !14, line: 438, baseType: !3390, size: 64, offset: 960)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{null, !3270, !3393, !3393}
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3260, file: !14, line: 439, baseType: !3395, size: 64, offset: 1024)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DISubroutineType(types: !3397)
!3397 = !{!85, !306, !2499}
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3260, file: !14, line: 442, baseType: !3399, size: 64, offset: 1088)
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DISubroutineType(types: !3401)
!3401 = !{!85, !3402, !1269, !3404}
!3402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3403, size: 64)
!3403 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3260, file: !14, line: 444, baseType: !1735, size: 64, offset: 1152)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3260, file: !14, line: 445, baseType: !3407, size: 64, offset: 1216)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = !DISubroutineType(types: !3409)
!3409 = !{!85, !1566, !1588}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !307, file: !14, line: 486, baseType: !126, size: 64, offset: 896)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !307, file: !14, line: 487, baseType: !823, size: 320, offset: 960)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !307, file: !14, line: 488, baseType: !1778, size: 32, offset: 1280)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !307, file: !14, line: 489, baseType: !162, size: 32, offset: 1312)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !307, file: !14, line: 490, baseType: !133, size: 128, offset: 1344)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !307, file: !14, line: 491, baseType: !125, size: 64, offset: 1472)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !297, file: !258, line: 180, baseType: !3417, size: 64, offset: 320)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!264, !1269, !155, !296, !232, !471, !278}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !297, file: !258, line: 182, baseType: !3417, size: 64, offset: 384)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !297, file: !258, line: 184, baseType: !3422, size: 64, offset: 448)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!85, !1269, !155, !296, !1636}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !285, file: !258, line: 90, baseType: !3426, size: 64, offset: 192)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !285, file: !258, line: 91, baseType: !3428, size: 64, offset: 256)
!3428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !248, file: !148, line: 120, baseType: !3430, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!3433, !215}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3435)
!3435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3436)
!3436 = !{!3437, !3438, !3442, !3446, !3452, !3456}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3435, file: !58, line: 40, baseType: !57, size: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3435, file: !58, line: 41, baseType: !3439, size: 64, offset: 64)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!1430}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3435, file: !58, line: 42, baseType: !3443, size: 64, offset: 128)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!125}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3435, file: !58, line: 43, baseType: !3447, size: 64, offset: 192)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!1867, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3435, file: !58, line: 44, baseType: !3453, size: 64, offset: 256)
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DISubroutineType(types: !3455)
!3455 = !{!1867}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3435, file: !58, line: 45, baseType: !3014, size: 64, offset: 320)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !248, file: !148, line: 121, baseType: !3458, size: 64, offset: 256)
!3458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3459, size: 64)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!1867, !215}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !248, file: !148, line: 122, baseType: !3462, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DISubroutineType(types: !3464)
!3464 = !{null, !215, !3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !147, file: !148, line: 70, baseType: !3468, size: 64, offset: 384)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !486, line: 190, size: 1152, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476, !3477, !3478, !3562, !3563, !3564, !3565, !3566, !3569}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3469, file: !486, line: 191, baseType: !182, size: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3469, file: !486, line: 192, baseType: !182, size: 32, offset: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3469, file: !486, line: 202, baseType: !3468, size: 64, offset: 64)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3469, file: !486, line: 203, baseType: !151, size: 64, offset: 128)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3469, file: !486, line: 205, baseType: !996, size: 192, align: 64, offset: 192)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3469, file: !486, line: 207, baseType: !1867, size: 64, offset: 384)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3469, file: !486, line: 208, baseType: !7, size: 32, offset: 448)
!3478 = !DIDerivedType(tag: DW_TAG_member, scope: !3469, file: !486, line: 209, baseType: !3479, size: 256, offset: 512)
!3479 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3469, file: !486, line: 209, size: 256, elements: !3480)
!3480 = !{!3481, !3490, !3494}
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3479, file: !486, line: 210, baseType: !3482, size: 256)
!3482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !486, line: 153, size: 256, elements: !3483)
!3483 = !{!3484, !3485, !3486, !3489}
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3482, file: !486, line: 154, baseType: !126, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3482, file: !486, line: 156, baseType: !1128, size: 64, offset: 64)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3482, file: !486, line: 162, baseType: !3487, size: 64, offset: 128)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !486, line: 162, flags: DIFlagFwdDecl)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3482, file: !486, line: 167, baseType: !126, size: 64, offset: 192)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3479, file: !486, line: 211, baseType: !3491, size: 64)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !486, line: 170, size: 64, elements: !3492)
!3492 = !{!3493}
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3491, file: !486, line: 171, baseType: !3468, size: 64)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3479, file: !486, line: 212, baseType: !3495, size: 256)
!3495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !486, line: 174, size: 256, elements: !3496)
!3496 = !{!3497, !3557, !3560, !3561}
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3495, file: !486, line: 175, baseType: !3498, size: 64)
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3500)
!3500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !486, line: 271, size: 768, elements: !3501)
!3501 = !{!3502, !3522, !3526, !3530, !3534, !3538, !3542, !3546, !3547, !3548, !3549, !3553}
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3500, file: !486, line: 276, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DISubroutineType(types: !3505)
!3505 = !{!85, !3506}
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !486, line: 251, size: 1216, elements: !3508)
!3508 = !{!3509, !3510, !3511, !3512, !3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3507, file: !486, line: 253, baseType: !3468, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3507, file: !486, line: 254, baseType: !1269, size: 64, offset: 64)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3507, file: !486, line: 255, baseType: !583, size: 64, offset: 128)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3507, file: !486, line: 256, baseType: !125, size: 64, offset: 192)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3507, file: !486, line: 259, baseType: !610, size: 256, offset: 256)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3507, file: !486, line: 260, baseType: !610, size: 256, offset: 512)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3507, file: !486, line: 261, baseType: !85, size: 32, offset: 768)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3507, file: !486, line: 262, baseType: !133, size: 128, offset: 832)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3507, file: !486, line: 263, baseType: !232, size: 64, offset: 960)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3507, file: !486, line: 265, baseType: !278, size: 64, offset: 1024)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3507, file: !486, line: 266, baseType: !1430, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3507, file: !486, line: 267, baseType: !1430, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3507, file: !486, line: 268, baseType: !1681, size: 64, offset: 1152)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3500, file: !486, line: 277, baseType: !3523, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3524, size: 64)
!3524 = !DISubroutineType(types: !3525)
!3525 = !{null, !3506}
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3500, file: !486, line: 290, baseType: !3527, size: 64, offset: 128)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{!85, !583, !125}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3500, file: !486, line: 292, baseType: !3531, size: 64, offset: 192)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!125, !583, !1557}
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3500, file: !486, line: 293, baseType: !3535, size: 64, offset: 256)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!125, !583, !125, !1557}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3500, file: !486, line: 294, baseType: !3539, size: 64, offset: 320)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = !DISubroutineType(types: !3541)
!3541 = !{null, !583, !125}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3500, file: !486, line: 296, baseType: !3543, size: 64, offset: 384)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!264, !3506, !232, !278, !471}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3500, file: !486, line: 306, baseType: !278, size: 64, offset: 448)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3500, file: !486, line: 313, baseType: !1430, size: 8, offset: 512)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3500, file: !486, line: 314, baseType: !3543, size: 64, offset: 576)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3500, file: !486, line: 317, baseType: !3550, size: 64, offset: 640)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!1614, !3506, !1616}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3500, file: !486, line: 320, baseType: !3554, size: 64, offset: 704)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!85, !3506, !1636}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3495, file: !486, line: 176, baseType: !3558, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !486, line: 35, flags: DIFlagFwdDecl)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3495, file: !486, line: 177, baseType: !471, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3495, file: !486, line: 178, baseType: !3468, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3469, file: !486, line: 215, baseType: !125, size: 64, offset: 768)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3469, file: !486, line: 221, baseType: !383, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3469, file: !486, line: 223, baseType: !202, size: 16, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3469, file: !486, line: 224, baseType: !273, size: 16, offset: 912)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3469, file: !486, line: 225, baseType: !3567, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !486, line: 36, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3469, file: !486, line: 227, baseType: !923, size: 128, align: 64, offset: 1024)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !147, file: !148, line: 71, baseType: !3571, size: 32, offset: 448)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3572, line: 19, size: 32, elements: !3573)
!3572 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3573 = !{!3574}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3571, file: !3572, line: 20, baseType: !952, size: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !147, file: !148, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !147, file: !148, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !147, file: !148, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !147, file: !148, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !147, file: !148, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !144, file: !6, line: 47, baseType: !128, size: 64, offset: 512)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !144, file: !6, line: 48, baseType: !155, size: 64, offset: 576)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !144, file: !6, line: 49, baseType: !3583, size: 64, offset: 640)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !144, file: !6, line: 50, baseType: !2021, size: 64, offset: 704)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !129, file: !6, line: 418, baseType: !3587, size: 64, offset: 1408)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3589)
!3589 = !{!3590, !3591, !3596, !3600, !3604, !3608}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3588, file: !6, line: 54, baseType: !269, size: 128)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3588, file: !6, line: 55, baseType: !3592, size: 64, offset: 128)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!264, !3587, !3595, !232}
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3588, file: !6, line: 57, baseType: !3597, size: 64, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3598, size: 64)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!264, !3587, !3595, !151, !278}
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3588, file: !6, line: 59, baseType: !3601, size: 64, offset: 256)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{null, !128, !151}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3588, file: !6, line: 60, baseType: !3605, size: 64, offset: 320)
!3605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3606, size: 64)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!85, !128}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3588, file: !6, line: 61, baseType: !3609, size: 64, offset: 384)
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{null, !128}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !129, file: !6, line: 419, baseType: !151, size: 64, offset: 1472)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !129, file: !6, line: 420, baseType: !151, size: 64, offset: 1536)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !129, file: !6, line: 421, baseType: !155, size: 64, offset: 1600)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !129, file: !6, line: 424, baseType: !3616, size: 64, offset: 1664)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3618)
!3618 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !129, file: !6, line: 425, baseType: !3620, size: 64, offset: 1728)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1373)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !129, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !129, file: !6, line: 435, baseType: !610, size: 256, offset: 1856)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !129, file: !6, line: 437, baseType: !3625, size: 64, offset: 2112)
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3627, line: 69, size: 320, elements: !3628)
!3627 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3628 = !{!3629, !3630, !3631, !3648, !3650, !3654, !3655}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3626, file: !3627, line: 70, baseType: !151, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3626, file: !3627, line: 71, baseType: !128, size: 64, offset: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3626, file: !3627, line: 72, baseType: !3632, size: 64, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3634)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3627, line: 47, size: 256, elements: !3635)
!3635 = !{!3636, !3637, !3643, !3647}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3634, file: !3627, line: 49, baseType: !7, size: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3634, file: !3627, line: 51, baseType: !3638, size: 64, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{!85, !151, !3641}
!3641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3642, size: 64)
!3642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3626)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3634, file: !3627, line: 53, baseType: !3644, size: 64, offset: 128)
!3644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3645, size: 64)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!85, !232, !3641}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3634, file: !3627, line: 55, baseType: !3014, size: 64, offset: 192)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3626, file: !3627, line: 73, baseType: !3649, size: 16, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3626, file: !3627, line: 74, baseType: !3651, size: 8, offset: 208)
!3651 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !191, line: 16, baseType: !3652)
!3652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !193, line: 20, baseType: !3653)
!3653 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3626, file: !3627, line: 75, baseType: !190, size: 8, offset: 216)
!3655 = !DIDerivedType(tag: DW_TAG_member, scope: !3626, file: !3627, line: 76, baseType: !3656, size: 64, offset: 256)
!3656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3626, file: !3627, line: 76, size: 64, elements: !3657)
!3657 = !{!3658, !3659, !3666}
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3656, file: !3627, line: 77, baseType: !125, size: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3656, file: !3627, line: 78, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3662)
!3662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3627, line: 86, size: 128, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3662, file: !3627, line: 87, baseType: !7, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3662, file: !3627, line: 88, baseType: !232, size: 64, offset: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3656, file: !3627, line: 79, baseType: !3667, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3669)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3627, line: 92, size: 256, elements: !3670)
!3670 = !{!3671, !3672, !3673, !3674, !3675}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3669, file: !3627, line: 94, baseType: !7, size: 32)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3669, file: !3627, line: 95, baseType: !7, size: 32, offset: 32)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3669, file: !3627, line: 96, baseType: !932, size: 64, offset: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3669, file: !3627, line: 97, baseType: !3632, size: 64, offset: 128)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3669, file: !3627, line: 98, baseType: !125, size: 64, offset: 192)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !129, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !129, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !129, file: !6, line: 442, baseType: !3616, size: 64, offset: 2240)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !129, file: !6, line: 443, baseType: !3620, size: 64, offset: 2304)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !129, file: !6, line: 444, baseType: !1430, size: 8, offset: 2368)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !129, file: !6, line: 451, baseType: !1430, size: 8, offset: 2376)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !129, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !129, file: !6, line: 455, baseType: !3684, size: 64, offset: 2432)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3686, line: 23, size: 96, elements: !3687)
!3686 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3687 = !{!3688, !3689, !3690}
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3685, file: !3686, line: 24, baseType: !85, size: 32)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3685, file: !3686, line: 24, baseType: !85, size: 32, offset: 32)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3685, file: !3686, line: 24, baseType: !85, size: 32, offset: 64)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !129, file: !6, line: 458, baseType: !3692, size: 64, offset: 2496)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!85}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !129, file: !6, line: 460, baseType: !3696, size: 4032, align: 512, offset: 2560)
!3696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3697, size: 4032, elements: !3711)
!3697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3698)
!3698 = !{!3699, !3700, !3701}
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3697, file: !6, line: 363, baseType: !125, size: 64)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3697, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3697, file: !6, line: 367, baseType: !3702, size: 448, offset: 128)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3703)
!3703 = !{!3704, !3705}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3702, file: !6, line: 320, baseType: !128, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3702, file: !6, line: 321, baseType: !3706, size: 384, offset: 64)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3707, line: 40, size: 384, elements: !3708)
!3707 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3708 = !{!3709}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3706, file: !3707, line: 41, baseType: !3710, size: 384, align: 64)
!3710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !996, size: 384, align: 64, elements: !2156)
!3711 = !{!3712}
!3712 = !DISubrange(count: 7)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !129, file: !6, line: 463, baseType: !3714, size: 192, offset: 6592)
!3714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3715, line: 8, size: 192, elements: !3716)
!3715 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3716 = !{!3717, !3718, !3719}
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3714, file: !3715, line: 10, baseType: !7, size: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3714, file: !3715, line: 11, baseType: !577, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3714, file: !3715, line: 12, baseType: !3720, size: 64, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3721, size: 64)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3722, line: 59, size: 48, elements: !3723)
!3722 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3723 = !{!3724, !3725, !3726, !3727, !3728, !3729}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3721, file: !3722, line: 60, baseType: !1884, size: 16)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3721, file: !3722, line: 61, baseType: !1884, size: 16, offset: 16)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3721, file: !3722, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3721, file: !3722, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3721, file: !3722, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3721, file: !3722, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !129, file: !6, line: 465, baseType: !126, size: 64, offset: 6784)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !129, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !129, file: !6, line: 470, baseType: !133, size: 128, offset: 6912)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !129, file: !6, line: 471, baseType: !3734, size: 64, offset: 7040)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3736, line: 33, size: 96, elements: !3737)
!3736 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3737 = !{!3738, !3739, !3740, !3741}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3735, file: !3736, line: 37, baseType: !85, size: 32)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3735, file: !3736, line: 43, baseType: !85, size: 32, offset: 32)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3735, file: !3736, line: 45, baseType: !202, size: 16, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3735, file: !3736, line: 47, baseType: !202, size: 16, offset: 80)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !129, file: !6, line: 476, baseType: !3743, size: 64, offset: 7104)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3745)
!3745 = !{!3746, !3762, !3763, !3764}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3744, file: !6, line: 379, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3748, size: 64)
!3748 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3749, line: 204, baseType: !3750)
!3749 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3749, line: 197, size: 192, elements: !3751)
!3751 = !{!3752, !3754, !3755, !3756, !3758, !3760}
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3750, file: !3749, line: 198, baseType: !3753, size: 32)
!3753 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3749, line: 21, baseType: !380)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3750, file: !3749, line: 199, baseType: !194, size: 8, offset: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3750, file: !3749, line: 200, baseType: !194, size: 8, offset: 40)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3750, file: !3749, line: 201, baseType: !3757, size: 16, offset: 48)
!3757 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3749, line: 17, baseType: !201)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3750, file: !3749, line: 202, baseType: !3759, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3749, line: 16, baseType: !384)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3750, file: !3749, line: 203, baseType: !3761, size: 64, offset: 128)
!3761 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3749, line: 22, baseType: !384)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3744, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3744, file: !6, line: 381, baseType: !232, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3744, file: !6, line: 382, baseType: !232, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !129, file: !6, line: 477, baseType: !3744, size: 256, offset: 7168)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !129, file: !6, line: 480, baseType: !3767, size: 64, offset: 7424)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !129, file: !6, line: 483, baseType: !3770, size: 64, offset: 7488)
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !129, file: !6, line: 488, baseType: !232, size: 64, offset: 7552)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !129, file: !6, line: 492, baseType: !125, size: 64, offset: 7616)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !129, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !129, file: !6, line: 495, baseType: !125, size: 64, offset: 7744)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !129, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !129, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !129, file: !6, line: 500, baseType: !3779, size: 64, offset: 7872)
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3781, line: 45, baseType: !3782)
!3781 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !129, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !129, file: !6, line: 504, baseType: !3785, size: 64, offset: 8000)
!3785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3788, line: 96, size: 192, elements: !3789)
!3788 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3789 = !{!3790, !3791, !3834, !3836}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3787, file: !3788, line: 97, baseType: !7, size: 32)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3787, file: !3788, line: 98, baseType: !3792, size: 64, offset: 64)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3788, line: 24, size: 3072, elements: !3794)
!3794 = !{!3795, !3797, !3798, !3799, !3800, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3831, !3832, !3833}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3793, file: !3788, line: 26, baseType: !3796, size: 128)
!3796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 128, elements: !2156)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3793, file: !3788, line: 27, baseType: !3796, size: 128, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3793, file: !3788, line: 28, baseType: !85, size: 32, offset: 256)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3793, file: !3788, line: 31, baseType: !162, size: 32, align: 512, offset: 512)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3793, file: !3788, line: 32, baseType: !3801, size: 960, offset: 576)
!3801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3802, line: 206, size: 960, elements: !3803)
!3802 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3803 = !{!3804, !3805, !3808, !3810, !3811, !3813}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3801, file: !3802, line: 207, baseType: !926, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3801, file: !3802, line: 208, baseType: !3806, size: 256, offset: 64)
!3806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3807, size: 256, elements: !1318)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3801, file: !3802, line: 209, baseType: !3809, size: 256, offset: 320)
!3809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 256, elements: !1318)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3801, file: !3802, line: 213, baseType: !127, size: 64, offset: 576)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3801, file: !3802, line: 215, baseType: !3812, size: 256, offset: 640)
!3812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1318)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3801, file: !3802, line: 216, baseType: !190, size: 8, offset: 896)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3793, file: !3788, line: 33, baseType: !126, size: 64, offset: 1536)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3793, file: !3788, line: 34, baseType: !126, size: 64, offset: 1600)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3793, file: !3788, line: 35, baseType: !1430, size: 8, offset: 1664)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3793, file: !3788, line: 36, baseType: !2652, size: 320, offset: 1728)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3793, file: !3788, line: 37, baseType: !1906, size: 256, offset: 2048)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3793, file: !3788, line: 38, baseType: !923, size: 128, align: 64, offset: 2304)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3793, file: !3788, line: 39, baseType: !3821, size: 64, offset: 2432)
!3821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3822, size: 64)
!3822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3788, line: 49, size: 768, elements: !3823)
!3823 = !{!3824, !3825, !3826, !3827, !3828, !3829, !3830}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3822, file: !3788, line: 50, baseType: !162, size: 32)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3822, file: !3788, line: 51, baseType: !3809, size: 256, offset: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3822, file: !3788, line: 53, baseType: !3809, size: 256, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3822, file: !3788, line: 54, baseType: !126, size: 64, offset: 576)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3822, file: !3788, line: 55, baseType: !3821, size: 64, offset: 640)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3822, file: !3788, line: 56, baseType: !85, size: 32, offset: 704)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3822, file: !3788, line: 57, baseType: !85, size: 32, offset: 736)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3793, file: !3788, line: 40, baseType: !126, size: 64, offset: 2496)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3793, file: !3788, line: 42, baseType: !85, size: 32, offset: 2560)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3793, file: !3788, line: 43, baseType: !3786, size: 64, offset: 2624)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3787, file: !3788, line: 99, baseType: !3835, offset: 128)
!3835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !513, line: 211, elements: !514)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3787, file: !3788, line: 100, baseType: !3837, size: 64, offset: 128)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3788, line: 63, size: 3008, elements: !3839)
!3839 = !{!3840, !3841, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3869}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3838, file: !3788, line: 64, baseType: !3821, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3838, file: !3788, line: 65, baseType: !3842, size: 192, offset: 64)
!3842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3821, size: 192, elements: !233)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3838, file: !3788, line: 67, baseType: !85, size: 32, offset: 256)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3838, file: !3788, line: 68, baseType: !610, size: 256, offset: 320)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3838, file: !3788, line: 69, baseType: !162, size: 32, offset: 576)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3838, file: !3788, line: 70, baseType: !610, size: 256, offset: 640)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3838, file: !3788, line: 71, baseType: !126, size: 64, offset: 896)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3838, file: !3788, line: 72, baseType: !126, size: 64, offset: 960)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3838, file: !3788, line: 73, baseType: !126, size: 64, offset: 1024)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3838, file: !3788, line: 74, baseType: !126, size: 64, offset: 1088)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3838, file: !3788, line: 75, baseType: !126, size: 64, offset: 1152)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3838, file: !3788, line: 76, baseType: !126, size: 64, offset: 1216)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3838, file: !3788, line: 77, baseType: !126, size: 64, offset: 1280)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3838, file: !3788, line: 78, baseType: !126, size: 64, offset: 1344)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3838, file: !3788, line: 79, baseType: !1430, size: 8, offset: 1408)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3838, file: !3788, line: 80, baseType: !126, size: 64, offset: 1472)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3838, file: !3788, line: 81, baseType: !610, size: 256, offset: 1536)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3838, file: !3788, line: 82, baseType: !2022, size: 256, offset: 1792)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3838, file: !3788, line: 84, baseType: !182, size: 32, offset: 2048)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3838, file: !3788, line: 87, baseType: !126, size: 64, offset: 2112)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3838, file: !3788, line: 88, baseType: !126, size: 64, offset: 2176)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3838, file: !3788, line: 89, baseType: !3863, size: 704, offset: 2240)
!3863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1907, line: 111, size: 704, elements: !3864)
!3864 = !{!3865, !3866, !3867, !3868}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3863, file: !1907, line: 112, baseType: !1906, size: 256)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3863, file: !1907, line: 113, baseType: !2652, size: 320, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3863, file: !1907, line: 116, baseType: !2946, size: 64, offset: 576)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3863, file: !1907, line: 117, baseType: !85, size: 32, offset: 640)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3838, file: !3788, line: 90, baseType: !3786, size: 64, offset: 2944)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !129, file: !6, line: 515, baseType: !3871, size: 64, offset: 8064)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3873, line: 117, size: 128, elements: !3874)
!3873 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3874 = !{!3875, !3876, !3877}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3872, file: !3873, line: 118, baseType: !1373, size: 32)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3872, file: !3873, line: 119, baseType: !1373, size: 32, offset: 32)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3872, file: !3873, line: 120, baseType: !127, size: 64, offset: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !129, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !129, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !129, file: !6, line: 520, baseType: !3881, size: 64, offset: 8192)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !129, file: !6, line: 523, baseType: !3883, size: 64, offset: 8256)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !129, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !129, file: !6, line: 525, baseType: !3888, size: 64, offset: 8384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !129, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !129, file: !6, line: 533, baseType: !125, size: 64, offset: 8512)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !129, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !129, file: !6, line: 535, baseType: !3895, size: 64, offset: 8640)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !129, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !129, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !129, file: !6, line: 540, baseType: !3899, size: 64, offset: 8768)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3901, line: 32, size: 64, elements: !3902)
!3901 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3902 = !{!3903, !3904}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3900, file: !3901, line: 33, baseType: !1373, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3900, file: !3901, line: 34, baseType: !1373, size: 32, offset: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !129, file: !6, line: 563, baseType: !133, size: 128, offset: 8832)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !129, file: !6, line: 565, baseType: !133, size: 128, offset: 8960)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !129, file: !6, line: 568, baseType: !3908, size: 64, offset: 9088)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !129, file: !6, line: 570, baseType: !182, size: 32, offset: 9152)
!3910 = !{!3911, !3914, !3916, !3918, !3921, !3923, !3927, !3932, !3937, !3942, !3947, !3949, !0, !4301, !4309, !4314, !4319, !4324, !4329, !4331, !4333, !4338, !4343, !4349, !4353}
!3911 = !DIGlobalVariableExpression(var: !3912, expr: !DIExpression())
!3912 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !3913, isLocal: true, isDefinition: true)
!3913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 416, elements: !1832)
!3914 = !DIGlobalVariableExpression(var: !3915, expr: !DIExpression())
!3915 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !1416, isLocal: true, isDefinition: true)
!3916 = !DIGlobalVariableExpression(var: !3917, expr: !DIExpression())
!3917 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pps_lookup_dev267", scope: !2, file: !3, line: 450, type: !125, isLocal: true, isDefinition: true)
!3918 = !DIGlobalVariableExpression(var: !3919, expr: !DIExpression())
!3919 = distinct !DIGlobalVariable(scope: null, file: !3, line: 459, type: !3920, isLocal: true, isDefinition: true)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 32, elements: !1318)
!3921 = !DIGlobalVariableExpression(var: !3922, expr: !DIExpression())
!3922 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pps_core__268_489_pps_init4269", scope: !2, file: !3, line: 489, type: !125, isLocal: true, isDefinition: true)
!3923 = !DIGlobalVariableExpression(var: !3924, expr: !DIExpression())
!3924 = distinct !DIGlobalVariable(name: "__exitcall_pps_exit", scope: !2, file: !3, line: 490, type: !3925, isLocal: true, isDefinition: true)
!3925 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !3926, line: 120, baseType: !3908)
!3926 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!3927 = !DIGlobalVariableExpression(var: !3928, expr: !DIExpression())
!3928 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author270", scope: !2, file: !3, line: 492, type: !3929, isLocal: true, isDefinition: true, align: 8)
!3929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 424, elements: !3930)
!3930 = !{!3931}
!3931 = !DISubrange(count: 53)
!3932 = !DIGlobalVariableExpression(var: !3933, expr: !DIExpression())
!3933 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description271", scope: !2, file: !3, line: 493, type: !3934, isLocal: true, isDefinition: true, align: 8)
!3934 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 496, elements: !3935)
!3935 = !{!3936}
!3936 = !DISubrange(count: 62)
!3937 = !DIGlobalVariableExpression(var: !3938, expr: !DIExpression())
!3938 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file272", scope: !2, file: !3, line: 494, type: !3939, isLocal: true, isDefinition: true, align: 8)
!3939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 280, elements: !3940)
!3940 = !{!3941}
!3941 = !DISubrange(count: 35)
!3942 = !DIGlobalVariableExpression(var: !3943, expr: !DIExpression())
!3943 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license273", scope: !2, file: !3, line: 494, type: !3944, isLocal: true, isDefinition: true, align: 8)
!3944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 168, elements: !3945)
!3945 = !{!3946}
!3946 = !DISubrange(count: 21)
!3947 = !DIGlobalVariableExpression(var: !3948, expr: !DIExpression())
!3948 = distinct !DIGlobalVariable(name: "pps_major", scope: !2, file: !3, line: 28, type: !85, isLocal: true, isDefinition: true)
!3949 = !DIGlobalVariableExpression(var: !3950, expr: !DIExpression())
!3950 = distinct !DIGlobalVariable(name: "pps_class", scope: !2, file: !3, line: 29, type: !3951, isLocal: true, isDefinition: true)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !3953, line: 52, size: 768, elements: !3954)
!3953 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!3954 = !{!3955, !3956, !3957, !3958, !4281, !4285, !4289, !4290, !4291, !4292, !4296, !4300}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3952, file: !3953, line: 53, baseType: !151, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !3952, file: !3953, line: 55, baseType: !282, size: 64, offset: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3952, file: !3953, line: 56, baseType: !282, size: 64, offset: 128)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !3952, file: !3953, line: 58, baseType: !3959, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!85, !3962, !227}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !3965)
!3965 = !{!3966, !3967, !3969, !3972, !3973, !4021, !4091, !4092, !4093, !4094, !4095, !4102, !4194, !4207, !4217, !4221, !4223, !4224, !4225, !4229, !4236, !4237, !4240, !4243, !4247, !4250, !4251, !4252, !4253, !4254, !4255, !4258, !4259, !4260, !4263, !4266, !4275, !4276, !4277, !4278, !4279, !4280}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3964, file: !70, line: 706, baseType: !147, size: 512)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3964, file: !70, line: 707, baseType: !3968, size: 64, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3964, file: !70, line: 709, baseType: !3970, size: 64, offset: 576)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !3964, file: !70, line: 711, baseType: !151, size: 64, offset: 640)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3964, file: !70, line: 712, baseType: !3974, size: 64, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3976)
!3976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !3977)
!3977 = !{!3978, !3979, !3980, !3981, !3986, !3990}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3976, file: !70, line: 90, baseType: !151, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3976, file: !70, line: 91, baseType: !282, size: 64, offset: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3976, file: !70, line: 92, baseType: !3959, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3976, file: !70, line: 93, baseType: !3982, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!232, !3962, !3985, !3465, !3466}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3976, file: !70, line: 95, baseType: !3987, size: 64, offset: 256)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{null, !3968}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3976, file: !70, line: 97, baseType: !3991, size: 64, offset: 320)
!3991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3992, size: 64)
!3992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3993)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !3994)
!3994 = !{!3995, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3993, file: !77, line: 287, baseType: !3996, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3997, size: 64)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!85, !3968}
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3993, file: !77, line: 288, baseType: !3987, size: 64, offset: 64)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3993, file: !77, line: 289, baseType: !3996, size: 64, offset: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3993, file: !77, line: 290, baseType: !3996, size: 64, offset: 192)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3993, file: !77, line: 291, baseType: !3996, size: 64, offset: 256)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3993, file: !77, line: 292, baseType: !3996, size: 64, offset: 320)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3993, file: !77, line: 293, baseType: !3996, size: 64, offset: 384)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3993, file: !77, line: 294, baseType: !3996, size: 64, offset: 448)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3993, file: !77, line: 295, baseType: !3996, size: 64, offset: 512)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3993, file: !77, line: 296, baseType: !3996, size: 64, offset: 576)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3993, file: !77, line: 297, baseType: !3996, size: 64, offset: 640)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3993, file: !77, line: 298, baseType: !3996, size: 64, offset: 704)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3993, file: !77, line: 299, baseType: !3996, size: 64, offset: 768)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3993, file: !77, line: 300, baseType: !3996, size: 64, offset: 832)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3993, file: !77, line: 301, baseType: !3996, size: 64, offset: 896)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3993, file: !77, line: 302, baseType: !3996, size: 64, offset: 960)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3993, file: !77, line: 303, baseType: !3996, size: 64, offset: 1024)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3993, file: !77, line: 304, baseType: !3996, size: 64, offset: 1088)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3993, file: !77, line: 305, baseType: !3996, size: 64, offset: 1152)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3993, file: !77, line: 306, baseType: !3996, size: 64, offset: 1216)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3993, file: !77, line: 307, baseType: !3996, size: 64, offset: 1280)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3993, file: !77, line: 308, baseType: !3996, size: 64, offset: 1344)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3993, file: !77, line: 309, baseType: !3996, size: 64, offset: 1408)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !3964, file: !70, line: 714, baseType: !4022, size: 64, offset: 768)
!4022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4023, size: 64)
!4023 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4024)
!4024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4025, line: 80, size: 1344, elements: !4026)
!4025 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4026 = !{!4027, !4028, !4029, !4030, !4031, !4032, !4073, !4074, !4075, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083, !4084, !4085, !4086, !4090}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4024, file: !4025, line: 81, baseType: !151, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4024, file: !4025, line: 82, baseType: !151, size: 64, offset: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4024, file: !4025, line: 83, baseType: !282, size: 64, offset: 128)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4024, file: !4025, line: 84, baseType: !282, size: 64, offset: 192)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4024, file: !4025, line: 85, baseType: !282, size: 64, offset: 256)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4024, file: !4025, line: 87, baseType: !4033, size: 64, offset: 320)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!85, !3968, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044, !4045, !4049, !4053, !4054, !4055, !4056, !4057, !4065, !4066, !4067, !4068, !4069, !4070}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4037, file: !64, line: 97, baseType: !151, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4037, file: !64, line: 98, baseType: !4022, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4037, file: !64, line: 100, baseType: !128, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4037, file: !64, line: 101, baseType: !151, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4037, file: !64, line: 103, baseType: !1430, size: 8, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4037, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4037, file: !64, line: 106, baseType: !4046, size: 64, offset: 320)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4048)
!4048 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4037, file: !64, line: 107, baseType: !4050, size: 64, offset: 384)
!4050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4052)
!4052 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4037, file: !64, line: 109, baseType: !3996, size: 64, offset: 448)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4037, file: !64, line: 110, baseType: !3987, size: 64, offset: 512)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4037, file: !64, line: 111, baseType: !3996, size: 64, offset: 576)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4037, file: !64, line: 112, baseType: !3987, size: 64, offset: 640)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4037, file: !64, line: 113, baseType: !4058, size: 64, offset: 704)
!4058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4059, size: 64)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!85, !3968, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4063)
!4063 = !{!4064}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4062, file: !77, line: 59, baseType: !85, size: 32)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4037, file: !64, line: 114, baseType: !3996, size: 64, offset: 768)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4037, file: !64, line: 115, baseType: !282, size: 64, offset: 832)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4037, file: !64, line: 116, baseType: !282, size: 64, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4037, file: !64, line: 118, baseType: !3991, size: 64, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4037, file: !64, line: 119, baseType: !3987, size: 64, offset: 1024)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4037, file: !64, line: 121, baseType: !4071, size: 64, offset: 1088)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4024, file: !4025, line: 88, baseType: !3959, size: 64, offset: 384)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4024, file: !4025, line: 89, baseType: !3996, size: 64, offset: 448)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4024, file: !4025, line: 90, baseType: !3987, size: 64, offset: 512)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4024, file: !4025, line: 91, baseType: !3987, size: 64, offset: 576)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4024, file: !4025, line: 92, baseType: !3987, size: 64, offset: 640)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4024, file: !4025, line: 94, baseType: !3996, size: 64, offset: 704)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4024, file: !4025, line: 95, baseType: !3996, size: 64, offset: 768)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4024, file: !4025, line: 97, baseType: !4058, size: 64, offset: 832)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4024, file: !4025, line: 98, baseType: !3996, size: 64, offset: 896)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4024, file: !4025, line: 100, baseType: !3996, size: 64, offset: 960)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4024, file: !4025, line: 102, baseType: !3996, size: 64, offset: 1024)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4024, file: !4025, line: 103, baseType: !3987, size: 64, offset: 1088)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4024, file: !4025, line: 105, baseType: !3991, size: 64, offset: 1152)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4024, file: !4025, line: 107, baseType: !4087, size: 64, offset: 1216)
!4087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4088, size: 64)
!4088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4089)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4025, line: 107, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4024, file: !4025, line: 109, baseType: !1430, size: 8, offset: 1280)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !3964, file: !70, line: 715, baseType: !4036, size: 64, offset: 832)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !3964, file: !70, line: 717, baseType: !125, size: 64, offset: 896)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !3964, file: !70, line: 719, baseType: !125, size: 64, offset: 960)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3964, file: !70, line: 721, baseType: !610, size: 256, offset: 1024)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !3964, file: !70, line: 725, baseType: !4096, size: 448, offset: 1280)
!4096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4097)
!4097 = !{!4098, !4099, !4100, !4101}
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4096, file: !70, line: 518, baseType: !133, size: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4096, file: !70, line: 519, baseType: !133, size: 128, offset: 128)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4096, file: !70, line: 520, baseType: !133, size: 128, offset: 256)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4096, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !3964, file: !70, line: 726, baseType: !4103, size: 2496, offset: 1728)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4104)
!4104 = !{!4105, !4106, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176, !4177, !4178, !4179, !4180, !4181, !4187, !4191}
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4103, file: !77, line: 664, baseType: !4061, size: 32)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4103, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4103, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4103, file: !77, line: 667, baseType: !1430, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4103, file: !77, line: 668, baseType: !1430, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4103, file: !77, line: 669, baseType: !1430, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4103, file: !77, line: 670, baseType: !1430, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4103, file: !77, line: 671, baseType: !1430, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4103, file: !77, line: 672, baseType: !1430, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4103, file: !77, line: 673, baseType: !1430, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4103, file: !77, line: 674, baseType: !1430, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4103, file: !77, line: 675, baseType: !379, size: 32, offset: 64)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4103, file: !77, line: 676, baseType: !162, size: 32, offset: 96)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4103, file: !77, line: 678, baseType: !133, size: 128, offset: 128)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4103, file: !77, line: 679, baseType: !2022, size: 256, offset: 256)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4103, file: !77, line: 680, baseType: !4121, size: 64, offset: 512)
!4121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4122, size: 64)
!4122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4123, line: 43, size: 1536, elements: !4124)
!4123 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4124 = !{!4125, !4126, !4127, !4128, !4129, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146}
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4122, file: !4123, line: 44, baseType: !151, size: 64)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4122, file: !4123, line: 45, baseType: !85, size: 32, offset: 64)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4122, file: !4123, line: 46, baseType: !133, size: 128, offset: 128)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4122, file: !4123, line: 47, baseType: !162, size: 32, offset: 256)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4122, file: !4123, line: 48, baseType: !4130, size: 64, offset: 320)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4122, file: !4123, line: 49, baseType: !2652, size: 320, offset: 384)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4122, file: !4123, line: 50, baseType: !126, size: 64, offset: 704)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4122, file: !4123, line: 51, baseType: !1074, size: 64, offset: 768)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4122, file: !4123, line: 52, baseType: !1074, size: 64, offset: 832)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4122, file: !4123, line: 53, baseType: !1074, size: 64, offset: 896)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4122, file: !4123, line: 54, baseType: !1074, size: 64, offset: 960)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4122, file: !4123, line: 55, baseType: !1074, size: 64, offset: 1024)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4122, file: !4123, line: 56, baseType: !126, size: 64, offset: 1088)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4122, file: !4123, line: 57, baseType: !126, size: 64, offset: 1152)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4122, file: !4123, line: 58, baseType: !126, size: 64, offset: 1216)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4122, file: !4123, line: 59, baseType: !126, size: 64, offset: 1280)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4122, file: !4123, line: 60, baseType: !126, size: 64, offset: 1344)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4122, file: !4123, line: 61, baseType: !3968, size: 64, offset: 1408)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4122, file: !4123, line: 62, baseType: !1430, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4122, file: !4123, line: 63, baseType: !1430, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4103, file: !77, line: 681, baseType: !1430, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4103, file: !77, line: 682, baseType: !1430, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4103, file: !77, line: 683, baseType: !1430, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4103, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4103, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4103, file: !77, line: 690, baseType: !1066, size: 512, offset: 640)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4103, file: !77, line: 691, baseType: !383, size: 64, offset: 1152)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4103, file: !77, line: 692, baseType: !1906, size: 256, offset: 1216)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4103, file: !77, line: 693, baseType: !916, size: 192, offset: 1472)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4103, file: !77, line: 694, baseType: !4130, size: 64, offset: 1664)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4103, file: !77, line: 695, baseType: !182, size: 32, offset: 1728)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4103, file: !77, line: 696, baseType: !182, size: 32, offset: 1760)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4103, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4103, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4103, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4103, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4103, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4103, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4103, file: !77, line: 703, baseType: !1430, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4103, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4103, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4103, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4103, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4103, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4103, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4103, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4103, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4103, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4103, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4103, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4103, file: !77, line: 715, baseType: !383, size: 64, offset: 2048)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4103, file: !77, line: 716, baseType: !383, size: 64, offset: 2112)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4103, file: !77, line: 717, baseType: !383, size: 64, offset: 2176)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4103, file: !77, line: 718, baseType: !383, size: 64, offset: 2240)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4103, file: !77, line: 720, baseType: !4182, size: 64, offset: 2304)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4184)
!4184 = !{!4185, !4186}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4183, file: !77, line: 633, baseType: !162, size: 32)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4183, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4103, file: !77, line: 721, baseType: !4188, size: 64, offset: 2368)
!4188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4189, size: 64)
!4189 = !DISubroutineType(types: !4190)
!4190 = !{null, !3968, !1373}
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4103, file: !77, line: 722, baseType: !4192, size: 64, offset: 2432)
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !3964, file: !70, line: 727, baseType: !4195, size: 64, offset: 4224)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4197)
!4197 = !{!4198, !4199, !4200, !4204, !4205, !4206}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4196, file: !77, line: 743, baseType: !3993, size: 1472)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4196, file: !77, line: 744, baseType: !3996, size: 64, offset: 1472)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4196, file: !77, line: 745, baseType: !4201, size: 64, offset: 1536)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DISubroutineType(types: !4203)
!4203 = !{null, !3968, !1430}
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4196, file: !77, line: 746, baseType: !3996, size: 64, offset: 1600)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4196, file: !77, line: 747, baseType: !3987, size: 64, offset: 1664)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4196, file: !77, line: 748, baseType: !3987, size: 64, offset: 1728)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !3964, file: !70, line: 736, baseType: !4208, size: 128, offset: 4288)
!4208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4209)
!4209 = !{!4210, !4214}
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4208, file: !70, line: 531, baseType: !4211, size: 64)
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4213, line: 13, flags: DIFlagFwdDecl)
!4213 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4208, file: !70, line: 532, baseType: !4215, size: 64, offset: 64)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !3964, file: !70, line: 738, baseType: !4218, size: 64, offset: 4416)
!4218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4219, size: 64)
!4219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4220)
!4220 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !3964, file: !70, line: 740, baseType: !4222, size: 64, offset: 4480)
!4222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !3964, file: !70, line: 741, baseType: !383, size: 64, offset: 4544)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !3964, file: !70, line: 746, baseType: !383, size: 64, offset: 4608)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !3964, file: !70, line: 747, baseType: !4226, size: 64, offset: 4672)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4228)
!4228 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !3964, file: !70, line: 749, baseType: !4230, size: 64, offset: 4736)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4232)
!4232 = !{!4233, !4234, !4235}
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4231, file: !70, line: 433, baseType: !7, size: 32)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4231, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4231, file: !70, line: 435, baseType: !126, size: 64, offset: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !3964, file: !70, line: 751, baseType: !133, size: 128, offset: 4800)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !3964, file: !70, line: 762, baseType: !4238, size: 64, offset: 4928)
!4238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4239, size: 64)
!4239 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !3964, file: !70, line: 770, baseType: !4241, offset: 4992)
!4241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4242, line: 5, elements: !514)
!4242 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !3964, file: !70, line: 772, baseType: !4244, size: 64, offset: 4992)
!4244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4245 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4246, line: 18, flags: DIFlagFwdDecl)
!4246 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !3964, file: !70, line: 773, baseType: !4248, size: 64, offset: 5056)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4025, line: 22, flags: DIFlagFwdDecl)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !3964, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !3964, file: !70, line: 778, baseType: !466, size: 32, offset: 5152)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3964, file: !70, line: 779, baseType: !379, size: 32, offset: 5184)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !3964, file: !70, line: 781, baseType: !162, size: 32, offset: 5216)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !3964, file: !70, line: 782, baseType: !133, size: 128, offset: 5248)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !3964, file: !70, line: 784, baseType: !4256, size: 64, offset: 5376)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3952)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3964, file: !70, line: 785, baseType: !282, size: 64, offset: 5440)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3964, file: !70, line: 787, baseType: !3987, size: 64, offset: 5504)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !3964, file: !70, line: 788, baseType: !4261, size: 64, offset: 5568)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4262, size: 64)
!4262 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !3964, file: !70, line: 789, baseType: !4264, size: 64, offset: 5632)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !3964, file: !70, line: 791, baseType: !4267, size: 64, offset: 5696)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4269)
!4269 = !{!4270, !4271, !4272, !4273, !4274}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4268, file: !70, line: 598, baseType: !92, size: 32)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4268, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4268, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4268, file: !70, line: 601, baseType: !1430, size: 8, offset: 96)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4268, file: !70, line: 602, baseType: !1430, size: 8, offset: 104)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !3964, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !3964, file: !70, line: 795, baseType: !1430, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3964, file: !70, line: 796, baseType: !1430, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !3964, file: !70, line: 797, baseType: !1430, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !3964, file: !70, line: 798, baseType: !1430, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !3964, file: !70, line: 799, baseType: !1430, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3952, file: !3953, line: 59, baseType: !4282, size: 64, offset: 256)
!4282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4283, size: 64)
!4283 = !DISubroutineType(types: !4284)
!4284 = !{!232, !3962, !3985}
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !3952, file: !3953, line: 61, baseType: !4286, size: 64, offset: 320)
!4286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4287, size: 64)
!4287 = !DISubroutineType(types: !4288)
!4288 = !{null, !4256}
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !3952, file: !3953, line: 62, baseType: !3987, size: 64, offset: 384)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !3952, file: !3953, line: 64, baseType: !3996, size: 64, offset: 448)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !3952, file: !3953, line: 66, baseType: !3433, size: 64, offset: 512)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !3952, file: !3953, line: 67, baseType: !4293, size: 64, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4294, size: 64)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!1867, !3962}
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !3952, file: !3953, line: 69, baseType: !4297, size: 64, offset: 640)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = !DISubroutineType(types: !4299)
!4299 = !{null, !3962, !3465, !3466}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3952, file: !3953, line: 71, baseType: !3991, size: 64, offset: 704)
!4301 = !DIGlobalVariableExpression(var: !4302, expr: !DIExpression())
!4302 = distinct !DIGlobalVariable(name: "pps_idr", scope: !2, file: !3, line: 32, type: !4303, isLocal: true, isDefinition: true)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4304, line: 19, size: 192, elements: !4305)
!4304 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4305 = !{!4306, !4307, !4308}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4303, file: !4304, line: 20, baseType: !3173, size: 128)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4303, file: !4304, line: 21, baseType: !7, size: 32, offset: 128)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4303, file: !4304, line: 22, baseType: !7, size: 32, offset: 160)
!4309 = !DIGlobalVariableExpression(var: !4310, expr: !DIExpression())
!4310 = distinct !DIGlobalVariable(scope: null, file: !3, line: 466, type: !4311, isLocal: true, isDefinition: true)
!4311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 304, elements: !4312)
!4312 = !{!4313}
!4313 = !DISubrange(count: 38)
!4314 = !DIGlobalVariableExpression(var: !4315, expr: !DIExpression())
!4315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !4316, isLocal: true, isDefinition: true)
!4316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 408, elements: !4317)
!4317 = !{!4318}
!4318 = !DISubrange(count: 51)
!4319 = !DIGlobalVariableExpression(var: !4320, expr: !DIExpression())
!4320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 478, type: !4321, isLocal: true, isDefinition: true)
!4321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 360, elements: !4322)
!4322 = !{!4323}
!4323 = !DISubrange(count: 45)
!4324 = !DIGlobalVariableExpression(var: !4325, expr: !DIExpression())
!4325 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !4326, isLocal: true, isDefinition: true)
!4326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 712, elements: !4327)
!4327 = !{!4328}
!4328 = !DISubrange(count: 89)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(scope: null, file: !3, line: 479, type: !1416, isLocal: true, isDefinition: true)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(name: "pps_cdev_fops", scope: !2, file: !3, line: 336, type: !1545, isLocal: true, isDefinition: true)
!4333 = !DIGlobalVariableExpression(var: !4334, expr: !DIExpression())
!4334 = distinct !DIGlobalVariable(scope: null, file: !3, line: 221, type: !4335, isLocal: true, isDefinition: true)
!4335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 248, elements: !4336)
!4336 = !{!4337}
!4337 = !DISubrange(count: 31)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(scope: null, file: !3, line: 230, type: !4340, isLocal: true, isDefinition: true)
!4340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 368, elements: !4341)
!4341 = !{!4342}
!4342 = !DISubrange(count: 46)
!4343 = !DIGlobalVariableExpression(var: !4344, expr: !DIExpression())
!4344 = distinct !DIGlobalVariable(scope: null, file: !4345, line: 249, type: !4346, isLocal: true, isDefinition: true)
!4345 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 224, elements: !4347)
!4347 = !{!4348}
!4348 = !DISubrange(count: 28)
!4349 = !DIGlobalVariableExpression(var: !4350, expr: !DIExpression())
!4350 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__might_resched2", scope: !4351, file: !4352, line: 112, type: !125, isLocal: true, isDefinition: true)
!4351 = distinct !DISubprogram(name: "might_resched", scope: !4352, file: !4352, line: 110, type: !2270, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4352 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4353 = !DIGlobalVariableExpression(var: !4354, expr: !DIExpression())
!4354 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !4355, isLocal: true, isDefinition: true)
!4355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 144, elements: !4356)
!4356 = !{!4357}
!4357 = !DISubrange(count: 18)
!4358 = !{!"rsp"}
!4359 = !{i32 7, !"Dwarf Version", i32 5}
!4360 = !{i32 2, !"Debug Info Version", i32 3}
!4361 = !{i32 1, !"wchar_size", i32 2}
!4362 = !{i32 8, !"cf-protection-branch", i32 1}
!4363 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4364 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4365 = !{i32 1, !"Code Model", i32 2}
!4366 = !{i32 1, !"override-stack-alignment", i32 8}
!4367 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4368 = distinct !DISubprogram(name: "pps_register_cdev", scope: !3, file: !3, line: 355, type: !4369, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4421)
!4369 = !DISubroutineType(types: !4370)
!4370 = !{!85, !4371}
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4372, size: 64)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_device", file: !4373, line: 43, size: 7744, elements: !4374)
!4373 = !DIFile(filename: "./include/linux/pps_kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84efb6f82a468768bae0d7aa032cd392")
!4374 = !{!4375, !4387, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4408, !4409, !4410, !4420}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4372, file: !4373, line: 44, baseType: !4376, size: 768)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_source_info", file: !4373, line: 23, size: 768, elements: !4377)
!4377 = !{!4378, !4379, !4380, !4381, !4385, !4386}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4376, file: !4373, line: 24, baseType: !2914, size: 256)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !4376, file: !4373, line: 25, baseType: !2914, size: 256, offset: 256)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4376, file: !4373, line: 26, baseType: !85, size: 32, offset: 512)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "echo", scope: !4376, file: !4373, line: 28, baseType: !4382, size: 64, offset: 576)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DISubroutineType(types: !4384)
!4384 = !{null, !4371, !85, !125}
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4376, file: !4373, line: 31, baseType: !128, size: 64, offset: 640)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4376, file: !4373, line: 32, baseType: !3968, size: 64, offset: 704)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !4372, file: !4373, line: 46, baseType: !4388, size: 320, offset: 768)
!4388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kparams", file: !4389, line: 83, size: 320, elements: !4390)
!4389 = !DIFile(filename: "./include/uapi/linux/pps.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7c00ae321b94f0eea44369ad4fb4a07b")
!4390 = !{!4391, !4392, !4393, !4399}
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "api_version", scope: !4388, file: !4389, line: 84, baseType: !85, size: 32)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4388, file: !4389, line: 85, baseType: !85, size: 32, offset: 32)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "assert_off_tu", scope: !4388, file: !4389, line: 86, baseType: !4394, size: 128, offset: 64)
!4394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime", file: !4389, line: 54, size: 128, elements: !4395)
!4395 = !{!4396, !4397, !4398}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !4394, file: !4389, line: 55, baseType: !621, size: 64)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !4394, file: !4389, line: 56, baseType: !1374, size: 32, offset: 64)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4394, file: !4389, line: 57, baseType: !380, size: 32, offset: 96)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "clear_off_tu", scope: !4388, file: !4389, line: 87, baseType: !4394, size: 128, offset: 192)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !4372, file: !4373, line: 48, baseType: !380, size: 32, offset: 1088)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !4372, file: !4373, line: 49, baseType: !380, size: 32, offset: 1120)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !4372, file: !4373, line: 50, baseType: !4394, size: 128, offset: 1152)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !4372, file: !4373, line: 51, baseType: !4394, size: 128, offset: 1280)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !4372, file: !4373, line: 52, baseType: !85, size: 32, offset: 1408)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "last_ev", scope: !4372, file: !4373, line: 54, baseType: !7, size: 32, offset: 1440)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !4372, file: !4373, line: 55, baseType: !916, size: 192, offset: 1472)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4372, file: !4373, line: 57, baseType: !7, size: 32, offset: 1664)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "lookup_cookie", scope: !4372, file: !4373, line: 58, baseType: !1867, size: 64, offset: 1728)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4372, file: !4373, line: 59, baseType: !3964, size: 5824, offset: 1792)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4372, file: !4373, line: 60, baseType: !4411, size: 64, offset: 7616)
!4411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4412, size: 64)
!4412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4413)
!4413 = !{!4414, !4415, !4416, !4417, !4418, !4419}
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4412, file: !14, line: 1084, baseType: !1289, size: 64)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4412, file: !14, line: 1085, baseType: !85, size: 32, offset: 64)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4412, file: !14, line: 1086, baseType: !85, size: 32, offset: 96)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4412, file: !14, line: 1087, baseType: !4411, size: 64, offset: 128)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4412, file: !14, line: 1088, baseType: !1269, size: 64, offset: 192)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4412, file: !14, line: 1089, baseType: !923, size: 128, align: 64, offset: 256)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4372, file: !4373, line: 61, baseType: !162, size: 32, offset: 7680)
!4421 = !{!4422, !4423, !4424, !4425}
!4422 = !DILocalVariable(name: "pps", arg: 1, scope: !4368, file: !3, line: 355, type: !4371)
!4423 = !DILocalVariable(name: "err", scope: !4368, file: !3, line: 357, type: !85)
!4424 = !DILabel(scope: !4368, name: "free_idr", file: !3, line: 394)
!4425 = !DILabel(scope: !4368, name: "out_unlock", file: !3, line: 397)
!4426 = !DILocation(line: 355, column: 42, scope: !4368)
!4427 = !DILocation(line: 357, column: 2, scope: !4368)
!4428 = !DILocation(line: 357, column: 6, scope: !4368)
!4429 = !DILocation(line: 359, column: 2, scope: !4368)
!4430 = !DILocation(line: 364, column: 28, scope: !4368)
!4431 = !DILocation(line: 364, column: 8, scope: !4368)
!4432 = !DILocation(line: 364, column: 6, scope: !4368)
!4433 = !DILocation(line: 365, column: 6, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 365, column: 6)
!4435 = !DILocation(line: 365, column: 10, scope: !4434)
!4436 = !DILocation(line: 365, column: 6, scope: !4368)
!4437 = !DILocation(line: 366, column: 7, scope: !4438)
!4438 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 366, column: 7)
!4439 = distinct !DILexicalBlock(scope: !4434, file: !3, line: 365, column: 15)
!4440 = !DILocation(line: 366, column: 11, scope: !4438)
!4441 = !DILocation(line: 366, column: 7, scope: !4439)
!4442 = !DILocation(line: 367, column: 4, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !3, line: 367, column: 4)
!4444 = distinct !DILexicalBlock(scope: !4438, file: !3, line: 366, column: 23)
!4445 = !DILocation(line: 367, column: 4, scope: !4446)
!4446 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 367, column: 4)
!4447 = !DILocation(line: 369, column: 8, scope: !4444)
!4448 = !DILocation(line: 370, column: 3, scope: !4444)
!4449 = !DILocation(line: 371, column: 3, scope: !4439)
!4450 = !DILocation(line: 373, column: 12, scope: !4368)
!4451 = !DILocation(line: 373, column: 2, scope: !4368)
!4452 = !DILocation(line: 373, column: 7, scope: !4368)
!4453 = !DILocation(line: 373, column: 10, scope: !4368)
!4454 = !DILocation(line: 375, column: 19, scope: !4368)
!4455 = !DILocation(line: 375, column: 2, scope: !4368)
!4456 = !DILocation(line: 375, column: 7, scope: !4368)
!4457 = !DILocation(line: 375, column: 11, scope: !4368)
!4458 = !DILocation(line: 375, column: 17, scope: !4368)
!4459 = !DILocation(line: 376, column: 20, scope: !4368)
!4460 = !DILocation(line: 376, column: 25, scope: !4368)
!4461 = !DILocation(line: 376, column: 30, scope: !4368)
!4462 = !DILocation(line: 376, column: 2, scope: !4368)
!4463 = !DILocation(line: 376, column: 7, scope: !4368)
!4464 = !DILocation(line: 376, column: 11, scope: !4368)
!4465 = !DILocation(line: 376, column: 18, scope: !4368)
!4466 = !DILocation(line: 377, column: 18, scope: !4368)
!4467 = !DILocation(line: 377, column: 2, scope: !4368)
!4468 = !DILocation(line: 377, column: 7, scope: !4368)
!4469 = !DILocation(line: 377, column: 11, scope: !4368)
!4470 = !DILocation(line: 377, column: 16, scope: !4368)
!4471 = !DILocation(line: 378, column: 19, scope: !4368)
!4472 = !DILocation(line: 378, column: 24, scope: !4368)
!4473 = !DILocation(line: 378, column: 29, scope: !4368)
!4474 = !DILocation(line: 378, column: 2, scope: !4368)
!4475 = !DILocation(line: 379, column: 16, scope: !4368)
!4476 = !DILocation(line: 379, column: 21, scope: !4368)
!4477 = !DILocation(line: 379, column: 35, scope: !4368)
!4478 = !DILocation(line: 379, column: 40, scope: !4368)
!4479 = !DILocation(line: 379, column: 2, scope: !4368)
!4480 = !DILocation(line: 380, column: 25, scope: !4368)
!4481 = !DILocation(line: 380, column: 30, scope: !4368)
!4482 = !DILocation(line: 380, column: 8, scope: !4368)
!4483 = !DILocation(line: 380, column: 6, scope: !4368)
!4484 = !DILocation(line: 381, column: 6, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 381, column: 6)
!4486 = !DILocation(line: 381, column: 6, scope: !4368)
!4487 = !DILocation(line: 382, column: 3, scope: !4485)
!4488 = !DILocation(line: 385, column: 2, scope: !4368)
!4489 = !DILocation(line: 385, column: 7, scope: !4368)
!4490 = !DILocation(line: 385, column: 11, scope: !4368)
!4491 = !DILocation(line: 385, column: 19, scope: !4368)
!4492 = !DILocation(line: 387, column: 2, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !3, line: 387, column: 2)
!4494 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 387, column: 2)
!4495 = !DILocation(line: 387, column: 2, scope: !4494)
!4496 = !DILocation(line: 390, column: 14, scope: !4368)
!4497 = !DILocation(line: 390, column: 19, scope: !4368)
!4498 = !DILocation(line: 390, column: 2, scope: !4368)
!4499 = !DILocation(line: 391, column: 2, scope: !4368)
!4500 = !DILocation(line: 392, column: 2, scope: !4368)
!4501 = !DILocation(line: 394, column: 1, scope: !4368)
!4502 = !DILocation(line: 395, column: 23, scope: !4368)
!4503 = !DILocation(line: 395, column: 28, scope: !4368)
!4504 = !DILocation(line: 395, column: 2, scope: !4368)
!4505 = !DILocation(line: 396, column: 14, scope: !4368)
!4506 = !DILocation(line: 396, column: 19, scope: !4368)
!4507 = !DILocation(line: 396, column: 2, scope: !4368)
!4508 = !DILocation(line: 397, column: 1, scope: !4368)
!4509 = !DILocation(line: 398, column: 2, scope: !4368)
!4510 = !DILocation(line: 399, column: 9, scope: !4368)
!4511 = !DILocation(line: 399, column: 2, scope: !4368)
!4512 = !DILocation(line: 400, column: 1, scope: !4368)
!4513 = !DISubprogram(name: "mutex_lock", scope: !611, file: !611, line: 227, type: !4514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{null, !4516}
!4516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!4517 = !DISubprogram(name: "idr_alloc", scope: !4304, file: !4304, line: 114, type: !4518, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4518 = !DISubroutineType(types: !4519)
!4519 = !{!85, !4520, !125, !85, !85, !123}
!4520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4521 = !DISubprogram(name: "_printk", scope: !4522, file: !4522, line: 153, type: !4523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4522 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!85, !151, null}
!4525 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !70, file: !70, line: 921, type: !4526, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4528)
!4526 = !DISubroutineType(types: !4527)
!4527 = !{null, !3968, !125}
!4528 = !{!4529, !4530}
!4529 = !DILocalVariable(name: "dev", arg: 1, scope: !4525, file: !70, line: 921, type: !3968)
!4530 = !DILocalVariable(name: "data", arg: 2, scope: !4525, file: !70, line: 921, type: !125)
!4531 = !DILocation(line: 921, column: 51, scope: !4525)
!4532 = !DILocation(line: 921, column: 62, scope: !4525)
!4533 = !DILocation(line: 923, column: 21, scope: !4525)
!4534 = !DILocation(line: 923, column: 2, scope: !4525)
!4535 = !DILocation(line: 923, column: 7, scope: !4525)
!4536 = !DILocation(line: 923, column: 19, scope: !4525)
!4537 = !DILocation(line: 924, column: 1, scope: !4525)
!4538 = !DISubprogram(name: "dev_set_name", scope: !70, file: !70, line: 879, type: !4539, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!85, !3968, !151, null}
!4541 = !DISubprogram(name: "device_register", scope: !70, file: !70, line: 1054, type: !3997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4542 = distinct !DISubprogram(name: "pps_device_destruct", scope: !3, file: !3, line: 347, type: !3988, scopeLine: 348, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4543)
!4543 = !{!4544, !4545}
!4544 = !DILocalVariable(name: "dev", arg: 1, scope: !4542, file: !3, line: 347, type: !3968)
!4545 = !DILocalVariable(name: "pps", scope: !4542, file: !3, line: 349, type: !4371)
!4546 = !DILocation(line: 347, column: 48, scope: !4542)
!4547 = !DILocation(line: 349, column: 2, scope: !4542)
!4548 = !DILocation(line: 349, column: 21, scope: !4542)
!4549 = !DILocation(line: 349, column: 43, scope: !4542)
!4550 = !DILocation(line: 349, column: 27, scope: !4542)
!4551 = !DILocation(line: 351, column: 2, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !3, line: 351, column: 2)
!4553 = distinct !DILexicalBlock(scope: !4542, file: !3, line: 351, column: 2)
!4554 = !DILocation(line: 351, column: 2, scope: !4553)
!4555 = !DILocation(line: 352, column: 8, scope: !4542)
!4556 = !DILocation(line: 352, column: 2, scope: !4542)
!4557 = !DILocation(line: 353, column: 1, scope: !4542)
!4558 = !DISubprogram(name: "get_device", scope: !70, file: !70, line: 1230, type: !4559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!3968, !3968}
!4561 = !DISubprogram(name: "mutex_unlock", scope: !611, file: !611, line: 246, type: !4514, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4562 = !DISubprogram(name: "idr_remove", scope: !4304, file: !4304, line: 118, type: !4563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4563 = !DISubroutineType(types: !4564)
!4564 = !{!125, !4520, !126}
!4565 = !DISubprogram(name: "put_device", scope: !70, file: !70, line: 1231, type: !3988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4566 = distinct !DISubprogram(name: "pps_unregister_cdev", scope: !3, file: !3, line: 402, type: !4567, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4569)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{null, !4371}
!4569 = !{!4570}
!4570 = !DILocalVariable(name: "pps", arg: 1, scope: !4566, file: !3, line: 402, type: !4371)
!4571 = !DILocation(line: 402, column: 45, scope: !4566)
!4572 = !DILocation(line: 404, column: 2, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4574, file: !3, line: 404, column: 2)
!4574 = distinct !DILexicalBlock(scope: !4566, file: !3, line: 404, column: 2)
!4575 = !DILocation(line: 404, column: 2, scope: !4574)
!4576 = !DILocation(line: 405, column: 2, scope: !4566)
!4577 = !DILocation(line: 405, column: 7, scope: !4566)
!4578 = !DILocation(line: 405, column: 21, scope: !4566)
!4579 = !DILocation(line: 406, column: 17, scope: !4566)
!4580 = !DILocation(line: 406, column: 28, scope: !4566)
!4581 = !DILocation(line: 406, column: 33, scope: !4566)
!4582 = !DILocation(line: 406, column: 37, scope: !4566)
!4583 = !DILocation(line: 406, column: 2, scope: !4566)
!4584 = !DILocation(line: 409, column: 2, scope: !4566)
!4585 = !DILocation(line: 410, column: 23, scope: !4566)
!4586 = !DILocation(line: 410, column: 28, scope: !4566)
!4587 = !DILocation(line: 410, column: 2, scope: !4566)
!4588 = !DILocation(line: 411, column: 14, scope: !4566)
!4589 = !DILocation(line: 411, column: 19, scope: !4566)
!4590 = !DILocation(line: 411, column: 2, scope: !4566)
!4591 = !DILocation(line: 412, column: 2, scope: !4566)
!4592 = !DILocation(line: 413, column: 1, scope: !4566)
!4593 = !DISubprogram(name: "device_destroy", scope: !70, file: !70, line: 1187, type: !4594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{null, !4256, !466}
!4596 = distinct !DISubprogram(name: "pps_lookup_dev", scope: !3, file: !3, line: 438, type: !4597, scopeLine: 439, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4599)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!4371, !1867}
!4599 = !{!4600, !4601, !4602}
!4600 = !DILocalVariable(name: "cookie", arg: 1, scope: !4596, file: !3, line: 438, type: !1867)
!4601 = !DILocalVariable(name: "pps", scope: !4596, file: !3, line: 440, type: !4371)
!4602 = !DILocalVariable(name: "id", scope: !4596, file: !3, line: 441, type: !7)
!4603 = !DILocation(line: 438, column: 47, scope: !4596)
!4604 = !DILocation(line: 440, column: 2, scope: !4596)
!4605 = !DILocation(line: 440, column: 21, scope: !4596)
!4606 = !DILocation(line: 441, column: 2, scope: !4596)
!4607 = !DILocation(line: 441, column: 11, scope: !4596)
!4608 = !DILocation(line: 443, column: 2, scope: !4596)
!4609 = !DILocation(line: 444, column: 2, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4596, file: !3, line: 444, column: 2)
!4611 = !DILocation(line: 444, column: 2, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 444, column: 2)
!4613 = !DILocation(line: 445, column: 7, scope: !4614)
!4614 = distinct !DILexicalBlock(scope: !4612, file: !3, line: 445, column: 7)
!4615 = !DILocation(line: 445, column: 17, scope: !4614)
!4616 = !DILocation(line: 445, column: 22, scope: !4614)
!4617 = !DILocation(line: 445, column: 14, scope: !4614)
!4618 = !DILocation(line: 445, column: 7, scope: !4612)
!4619 = !DILocation(line: 446, column: 4, scope: !4614)
!4620 = distinct !{!4620, !4609, !4621, !4622, !4623}
!4621 = !DILocation(line: 446, column: 4, scope: !4610)
!4622 = !{!"llvm.loop.mustprogress"}
!4623 = !{!"llvm.loop.unroll.disable"}
!4624 = !DILocation(line: 447, column: 2, scope: !4596)
!4625 = !DILocation(line: 448, column: 9, scope: !4596)
!4626 = !DILocation(line: 449, column: 1, scope: !4596)
!4627 = !DILocation(line: 448, column: 2, scope: !4596)
!4628 = distinct !DISubprogram(name: "rcu_read_lock", scope: !4629, file: !4629, line: 782, type: !2270, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4629 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!4630 = !DILocation(line: 784, column: 2, scope: !4628)
!4631 = !DILocation(line: 786, column: 2, scope: !4628)
!4632 = !DILocation(line: 786, column: 2, scope: !4633)
!4633 = distinct !DILexicalBlock(scope: !4628, file: !4629, line: 786, column: 2)
!4634 = !DILocation(line: 787, column: 2, scope: !4628)
!4635 = !DILocation(line: 787, column: 2, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4628, file: !4629, line: 787, column: 2)
!4637 = !DILocation(line: 789, column: 1, scope: !4628)
!4638 = !DISubprogram(name: "idr_get_next", scope: !4304, file: !4304, line: 122, type: !4639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!125, !4520, !577}
!4641 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !4629, file: !4629, line: 813, type: !2270, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4642 = !DILocation(line: 815, column: 2, scope: !4641)
!4643 = !DILocation(line: 815, column: 2, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4641, file: !4629, line: 815, column: 2)
!4645 = !DILocation(line: 818, column: 2, scope: !4641)
!4646 = !DILocation(line: 819, column: 2, scope: !4641)
!4647 = !DILocation(line: 819, column: 2, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4641, file: !4629, line: 819, column: 2)
!4649 = !DILocation(line: 820, column: 1, scope: !4641)
!4650 = distinct !DISubprogram(name: "pps_exit", scope: !3, file: !3, line: 456, type: !2270, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4651 = !DILocation(line: 458, column: 16, scope: !4650)
!4652 = !DILocation(line: 458, column: 2, scope: !4650)
!4653 = !DILocation(line: 459, column: 22, scope: !4650)
!4654 = !DILocation(line: 459, column: 2, scope: !4650)
!4655 = !DILocation(line: 460, column: 1, scope: !4650)
!4656 = !DISubprogram(name: "class_destroy", scope: !3953, file: !3953, line: 231, type: !4287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4657 = !DISubprogram(name: "__unregister_chrdev", scope: !14, file: !14, line: 2597, type: !4658, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{null, !7, !7, !7, !151}
!4660 = distinct !DISubprogram(name: "__initstub__kmod_pps_core__268_489_pps_init4", scope: !3, file: !3, line: 489, type: !3693, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4661 = !DILocation(line: 489, column: 1, scope: !4660)
!4662 = distinct !DISubprogram(name: "pps_init", scope: !3, file: !3, line: 462, type: !3693, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4663)
!4663 = !{!4664}
!4664 = !DILabel(scope: !4662, name: "remove_class", file: !3, line: 484)
!4665 = !DILocation(line: 464, column: 14, scope: !4662)
!4666 = !DILocation(line: 464, column: 12, scope: !4662)
!4667 = !DILocation(line: 465, column: 13, scope: !4668)
!4668 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 465, column: 6)
!4669 = !DILocation(line: 465, column: 6, scope: !4668)
!4670 = !DILocation(line: 465, column: 6, scope: !4662)
!4671 = !DILocation(line: 466, column: 3, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !3, line: 466, column: 3)
!4673 = distinct !DILexicalBlock(scope: !4668, file: !3, line: 465, column: 25)
!4674 = !DILocation(line: 466, column: 3, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4672, file: !3, line: 466, column: 3)
!4676 = !DILocation(line: 467, column: 18, scope: !4673)
!4677 = !DILocation(line: 467, column: 10, scope: !4673)
!4678 = !DILocation(line: 467, column: 3, scope: !4673)
!4679 = !DILocation(line: 469, column: 2, scope: !4662)
!4680 = !DILocation(line: 469, column: 13, scope: !4662)
!4681 = !DILocation(line: 469, column: 24, scope: !4662)
!4682 = !DILocation(line: 471, column: 14, scope: !4662)
!4683 = !DILocation(line: 471, column: 12, scope: !4662)
!4684 = !DILocation(line: 473, column: 6, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 473, column: 6)
!4686 = !DILocation(line: 473, column: 16, scope: !4685)
!4687 = !DILocation(line: 473, column: 6, scope: !4662)
!4688 = !DILocation(line: 474, column: 3, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !3, line: 474, column: 3)
!4690 = distinct !DILexicalBlock(scope: !4685, file: !3, line: 473, column: 21)
!4691 = !DILocation(line: 474, column: 3, scope: !4692)
!4692 = distinct !DILexicalBlock(scope: !4689, file: !3, line: 474, column: 3)
!4693 = !DILocation(line: 475, column: 3, scope: !4690)
!4694 = !DILocation(line: 478, column: 2, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 478, column: 2)
!4696 = !DILocation(line: 478, column: 2, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 478, column: 2)
!4698 = !DILocation(line: 479, column: 2, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4662, file: !3, line: 479, column: 2)
!4700 = !DILocation(line: 479, column: 2, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 479, column: 2)
!4702 = !DILocation(line: 482, column: 2, scope: !4662)
!4703 = !DILocation(line: 484, column: 1, scope: !4662)
!4704 = !DILocation(line: 485, column: 16, scope: !4662)
!4705 = !DILocation(line: 485, column: 2, scope: !4662)
!4706 = !DILocation(line: 486, column: 9, scope: !4662)
!4707 = !DILocation(line: 486, column: 2, scope: !4662)
!4708 = !DILocation(line: 487, column: 1, scope: !4662)
!4709 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !70, file: !70, line: 916, type: !4710, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4712)
!4710 = !DISubroutineType(types: !4711)
!4711 = !{!125, !3962}
!4712 = !{!4713}
!4713 = !DILocalVariable(name: "dev", arg: 1, scope: !4709, file: !70, line: 916, type: !3962)
!4714 = !DILocation(line: 916, column: 58, scope: !4709)
!4715 = !DILocation(line: 918, column: 9, scope: !4709)
!4716 = !DILocation(line: 918, column: 14, scope: !4709)
!4717 = !DILocation(line: 918, column: 2, scope: !4709)
!4718 = !DISubprogram(name: "kfree", scope: !4719, file: !4719, line: 227, type: !4720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4719 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4720 = !DISubroutineType(types: !4721)
!4721 = !{null, !1867}
!4722 = !DISubprogram(name: "__rcu_read_lock", scope: !4629, file: !4629, line: 74, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4723 = !DISubprogram(name: "__rcu_read_unlock", scope: !4629, file: !4629, line: 75, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4724 = !DISubprogram(name: "class_create", scope: !3953, file: !3953, line: 230, type: !4725, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4725 = !DISubroutineType(types: !4726)
!4726 = !{!3951, !151}
!4727 = distinct !DISubprogram(name: "IS_ERR", scope: !4728, file: !4728, line: 59, type: !4729, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4731)
!4728 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4729 = !DISubroutineType(types: !4730)
!4730 = !{!1430, !1867}
!4731 = !{!4732}
!4732 = !DILocalVariable(name: "ptr", arg: 1, scope: !4727, file: !4728, line: 59, type: !1867)
!4733 = !DILocation(line: 59, column: 60, scope: !4727)
!4734 = !DILocation(line: 61, column: 9, scope: !4727)
!4735 = !DILocation(line: 61, column: 2, scope: !4727)
!4736 = distinct !DISubprogram(name: "PTR_ERR", scope: !4728, file: !4728, line: 49, type: !4737, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4739)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!127, !1867}
!4739 = !{!4740}
!4740 = !DILocalVariable(name: "ptr", arg: 1, scope: !4736, file: !4728, line: 49, type: !1867)
!4741 = !DILocation(line: 49, column: 61, scope: !4736)
!4742 = !DILocation(line: 51, column: 16, scope: !4736)
!4743 = !DILocation(line: 51, column: 9, scope: !4736)
!4744 = !DILocation(line: 51, column: 2, scope: !4736)
!4745 = !DISubprogram(name: "__register_chrdev", scope: !14, file: !14, line: 2594, type: !4746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!85, !7, !7, !7, !151, !1544}
!4748 = distinct !DISubprogram(name: "pps_cdev_poll", scope: !3, file: !3, line: 38, type: !4749, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4753)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!1614, !1269, !4751}
!4751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4752, size: 64)
!4752 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_table", file: !1618, line: 40, baseType: !1617)
!4753 = !{!4754, !4755, !4756}
!4754 = !DILocalVariable(name: "file", arg: 1, scope: !4748, file: !3, line: 38, type: !1269)
!4755 = !DILocalVariable(name: "wait", arg: 2, scope: !4748, file: !3, line: 38, type: !4751)
!4756 = !DILocalVariable(name: "pps", scope: !4748, file: !3, line: 40, type: !4371)
!4757 = !DILocation(line: 38, column: 44, scope: !4748)
!4758 = !DILocation(line: 38, column: 62, scope: !4748)
!4759 = !DILocation(line: 40, column: 2, scope: !4748)
!4760 = !DILocation(line: 40, column: 21, scope: !4748)
!4761 = !DILocation(line: 40, column: 27, scope: !4748)
!4762 = !DILocation(line: 40, column: 33, scope: !4748)
!4763 = !DILocation(line: 42, column: 12, scope: !4748)
!4764 = !DILocation(line: 42, column: 19, scope: !4748)
!4765 = !DILocation(line: 42, column: 24, scope: !4748)
!4766 = !DILocation(line: 42, column: 31, scope: !4748)
!4767 = !DILocation(line: 42, column: 2, scope: !4748)
!4768 = !DILocation(line: 45, column: 1, scope: !4748)
!4769 = !DILocation(line: 44, column: 2, scope: !4748)
!4770 = distinct !DISubprogram(name: "pps_cdev_ioctl", scope: !3, file: !3, line: 90, type: !1629, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4771)
!4771 = !{!4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4784, !4785, !4786, !4787, !4788, !4801}
!4772 = !DILocalVariable(name: "file", arg: 1, scope: !4770, file: !3, line: 90, type: !1269)
!4773 = !DILocalVariable(name: "cmd", arg: 2, scope: !4770, file: !3, line: 91, type: !7)
!4774 = !DILocalVariable(name: "arg", arg: 3, scope: !4770, file: !3, line: 91, type: !126)
!4775 = !DILocalVariable(name: "pps", scope: !4770, file: !3, line: 93, type: !4371)
!4776 = !DILocalVariable(name: "params", scope: !4770, file: !3, line: 94, type: !4388)
!4777 = !DILocalVariable(name: "uarg", scope: !4770, file: !3, line: 95, type: !125)
!4778 = !DILocalVariable(name: "iuarg", scope: !4770, file: !3, line: 96, type: !577)
!4779 = !DILocalVariable(name: "err", scope: !4770, file: !3, line: 97, type: !85)
!4780 = !DILocalVariable(name: "__ret_pu", scope: !4781, file: !3, line: 170, type: !85)
!4781 = distinct !DILexicalBlock(scope: !4782, file: !3, line: 170, column: 9)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 170, column: 9)
!4783 = distinct !DILexicalBlock(scope: !4770, file: !3, line: 99, column: 15)
!4784 = !DILocalVariable(name: "__ptr_pu", scope: !4781, file: !3, line: 170, type: !125)
!4785 = !DILocalVariable(name: "__val_pu", scope: !4781, file: !3, line: 170, type: !85)
!4786 = !DILocalVariable(name: "__x", scope: !4781, file: !3, line: 170, type: !85)
!4787 = !DILocalVariable(name: "__ptr", scope: !4781, file: !3, line: 170, type: !577)
!4788 = !DILocalVariable(name: "fdata", scope: !4789, file: !3, line: 177, type: !4790)
!4789 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 176, column: 18)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_fdata", file: !4389, line: 127, size: 512, elements: !4791)
!4791 = !{!4792, !4800}
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4790, file: !4389, line: 128, baseType: !4793, size: 384)
!4793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kinfo", file: !4389, line: 67, size: 384, elements: !4794)
!4794 = !{!4795, !4796, !4797, !4798, !4799}
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !4793, file: !4389, line: 68, baseType: !380, size: 32)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !4793, file: !4389, line: 69, baseType: !380, size: 32, offset: 32)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !4793, file: !4389, line: 70, baseType: !4394, size: 128, offset: 64)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !4793, file: !4389, line: 71, baseType: !4394, size: 128, offset: 192)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !4793, file: !4389, line: 72, baseType: !85, size: 32, offset: 320)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !4790, file: !4389, line: 129, baseType: !4394, size: 128, offset: 384)
!4801 = !DILocalVariable(name: "bind_args", scope: !4802, file: !3, line: 207, type: !4803)
!4802 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 206, column: 20)
!4803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_bind_args", file: !4389, line: 137, size: 96, elements: !4804)
!4804 = !{!4805, !4806, !4807}
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "tsformat", scope: !4803, file: !4389, line: 138, baseType: !85, size: 32)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "edge", scope: !4803, file: !4389, line: 139, baseType: !85, size: 32, offset: 32)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "consumer", scope: !4803, file: !4389, line: 140, baseType: !85, size: 32, offset: 64)
!4808 = !DILocation(line: 90, column: 41, scope: !4770)
!4809 = !DILocation(line: 91, column: 16, scope: !4770)
!4810 = !DILocation(line: 91, column: 35, scope: !4770)
!4811 = !DILocation(line: 93, column: 2, scope: !4770)
!4812 = !DILocation(line: 93, column: 21, scope: !4770)
!4813 = !DILocation(line: 93, column: 27, scope: !4770)
!4814 = !DILocation(line: 93, column: 33, scope: !4770)
!4815 = !DILocation(line: 94, column: 2, scope: !4770)
!4816 = !DILocation(line: 94, column: 21, scope: !4770)
!4817 = !DILocation(line: 95, column: 2, scope: !4770)
!4818 = !DILocation(line: 95, column: 15, scope: !4770)
!4819 = !DILocation(line: 95, column: 38, scope: !4770)
!4820 = !DILocation(line: 95, column: 22, scope: !4770)
!4821 = !DILocation(line: 96, column: 2, scope: !4770)
!4822 = !DILocation(line: 96, column: 14, scope: !4770)
!4823 = !DILocation(line: 96, column: 37, scope: !4770)
!4824 = !DILocation(line: 96, column: 22, scope: !4770)
!4825 = !DILocation(line: 97, column: 2, scope: !4770)
!4826 = !DILocation(line: 97, column: 6, scope: !4770)
!4827 = !DILocation(line: 99, column: 10, scope: !4770)
!4828 = !DILocation(line: 99, column: 2, scope: !4770)
!4829 = !DILocation(line: 103, column: 18, scope: !4783)
!4830 = !DILocation(line: 103, column: 23, scope: !4783)
!4831 = !DILocation(line: 103, column: 3, scope: !4783)
!4832 = !DILocation(line: 106, column: 12, scope: !4783)
!4833 = !DILocation(line: 106, column: 17, scope: !4783)
!4834 = !DILocation(line: 108, column: 20, scope: !4783)
!4835 = !DILocation(line: 108, column: 25, scope: !4783)
!4836 = !DILocation(line: 108, column: 3, scope: !4783)
!4837 = !DILocation(line: 110, column: 22, scope: !4783)
!4838 = !DILocation(line: 110, column: 9, scope: !4783)
!4839 = !DILocation(line: 110, column: 7, scope: !4783)
!4840 = !DILocation(line: 111, column: 7, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 111, column: 7)
!4842 = !DILocation(line: 111, column: 7, scope: !4783)
!4843 = !DILocation(line: 112, column: 4, scope: !4841)
!4844 = !DILocation(line: 114, column: 3, scope: !4783)
!4845 = !DILocation(line: 120, column: 8, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 120, column: 7)
!4847 = !DILocation(line: 120, column: 7, scope: !4783)
!4848 = !DILocation(line: 121, column: 4, scope: !4846)
!4849 = !DILocation(line: 123, column: 33, scope: !4783)
!4850 = !DILocation(line: 123, column: 9, scope: !4783)
!4851 = !DILocation(line: 123, column: 7, scope: !4783)
!4852 = !DILocation(line: 124, column: 7, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 124, column: 7)
!4854 = !DILocation(line: 124, column: 7, scope: !4783)
!4855 = !DILocation(line: 125, column: 4, scope: !4853)
!4856 = !DILocation(line: 126, column: 16, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 126, column: 7)
!4858 = !DILocation(line: 126, column: 21, scope: !4857)
!4859 = !DILocation(line: 126, column: 7, scope: !4783)
!4860 = !DILocation(line: 129, column: 4, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 126, column: 64)
!4862 = !DILocation(line: 133, column: 15, scope: !4863)
!4863 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 133, column: 7)
!4864 = !DILocation(line: 133, column: 23, scope: !4863)
!4865 = !DILocation(line: 133, column: 28, scope: !4863)
!4866 = !DILocation(line: 133, column: 33, scope: !4863)
!4867 = !DILocation(line: 133, column: 22, scope: !4863)
!4868 = !DILocation(line: 133, column: 20, scope: !4863)
!4869 = !DILocation(line: 133, column: 39, scope: !4863)
!4870 = !DILocation(line: 133, column: 7, scope: !4783)
!4871 = !DILocation(line: 136, column: 4, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4863, file: !3, line: 133, column: 45)
!4873 = !DILocation(line: 139, column: 18, scope: !4783)
!4874 = !DILocation(line: 139, column: 23, scope: !4783)
!4875 = !DILocation(line: 139, column: 3, scope: !4783)
!4876 = !DILocation(line: 142, column: 3, scope: !4783)
!4877 = !DILocation(line: 142, column: 8, scope: !4783)
!4878 = !DILocation(line: 142, column: 17, scope: !4783)
!4879 = !DILocation(line: 145, column: 15, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 145, column: 7)
!4881 = !DILocation(line: 145, column: 20, scope: !4880)
!4882 = !DILocation(line: 145, column: 59, scope: !4880)
!4883 = !DILocation(line: 145, column: 7, scope: !4783)
!4884 = !DILocation(line: 149, column: 4, scope: !4885)
!4885 = distinct !DILexicalBlock(scope: !4880, file: !3, line: 145, column: 65)
!4886 = !DILocation(line: 149, column: 9, scope: !4885)
!4887 = !DILocation(line: 149, column: 16, scope: !4885)
!4888 = !DILocation(line: 149, column: 21, scope: !4885)
!4889 = !DILocation(line: 150, column: 3, scope: !4885)
!4890 = !DILocation(line: 151, column: 7, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 151, column: 7)
!4892 = !DILocation(line: 151, column: 12, scope: !4891)
!4893 = !DILocation(line: 151, column: 17, scope: !4891)
!4894 = !DILocation(line: 151, column: 22, scope: !4891)
!4895 = !DILocation(line: 151, column: 7, scope: !4783)
!4896 = !DILocation(line: 152, column: 4, scope: !4891)
!4897 = !DILocation(line: 152, column: 9, scope: !4891)
!4898 = !DILocation(line: 152, column: 16, scope: !4891)
!4899 = !DILocation(line: 152, column: 21, scope: !4891)
!4900 = !DILocation(line: 153, column: 3, scope: !4783)
!4901 = !DILocation(line: 153, column: 8, scope: !4783)
!4902 = !DILocation(line: 153, column: 15, scope: !4783)
!4903 = !DILocation(line: 153, column: 27, scope: !4783)
!4904 = !DILocation(line: 160, column: 3, scope: !4783)
!4905 = !DILocation(line: 160, column: 8, scope: !4783)
!4906 = !DILocation(line: 160, column: 15, scope: !4783)
!4907 = !DILocation(line: 160, column: 29, scope: !4783)
!4908 = !DILocation(line: 160, column: 35, scope: !4783)
!4909 = !DILocation(line: 161, column: 3, scope: !4783)
!4910 = !DILocation(line: 161, column: 8, scope: !4783)
!4911 = !DILocation(line: 161, column: 15, scope: !4783)
!4912 = !DILocation(line: 161, column: 28, scope: !4783)
!4913 = !DILocation(line: 161, column: 34, scope: !4783)
!4914 = !DILocation(line: 163, column: 20, scope: !4783)
!4915 = !DILocation(line: 163, column: 25, scope: !4783)
!4916 = !DILocation(line: 163, column: 3, scope: !4783)
!4917 = !DILocation(line: 165, column: 3, scope: !4783)
!4918 = !DILocation(line: 170, column: 9, scope: !4782)
!4919 = !DILocation(line: 170, column: 9, scope: !4781)
!4920 = !{i64 2153927039}
!4921 = !DILocation(line: 170, column: 9, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4781, file: !3, line: 170, column: 9)
!4923 = !DILocation(line: 170, column: 9, scope: !4783)
!4924 = !DILocation(line: 170, column: 7, scope: !4783)
!4925 = !DILocation(line: 171, column: 7, scope: !4926)
!4926 = distinct !DILexicalBlock(scope: !4783, file: !3, line: 171, column: 7)
!4927 = !DILocation(line: 171, column: 7, scope: !4783)
!4928 = !DILocation(line: 172, column: 4, scope: !4926)
!4929 = !DILocation(line: 174, column: 3, scope: !4783)
!4930 = !DILocation(line: 177, column: 3, scope: !4789)
!4931 = !DILocation(line: 177, column: 20, scope: !4789)
!4932 = !DILocation(line: 181, column: 32, scope: !4789)
!4933 = !DILocation(line: 181, column: 9, scope: !4789)
!4934 = !DILocation(line: 181, column: 7, scope: !4789)
!4935 = !DILocation(line: 182, column: 7, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 182, column: 7)
!4937 = !DILocation(line: 182, column: 7, scope: !4789)
!4938 = !DILocation(line: 183, column: 4, scope: !4936)
!4939 = !DILocation(line: 185, column: 28, scope: !4789)
!4940 = !DILocation(line: 185, column: 9, scope: !4789)
!4941 = !DILocation(line: 185, column: 7, scope: !4789)
!4942 = !DILocation(line: 186, column: 7, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 186, column: 7)
!4944 = !DILocation(line: 186, column: 7, scope: !4789)
!4945 = !DILocation(line: 187, column: 11, scope: !4943)
!4946 = !DILocation(line: 187, column: 4, scope: !4943)
!4947 = !DILocation(line: 190, column: 18, scope: !4789)
!4948 = !DILocation(line: 190, column: 23, scope: !4789)
!4949 = !DILocation(line: 190, column: 3, scope: !4789)
!4950 = !DILocation(line: 192, column: 32, scope: !4789)
!4951 = !DILocation(line: 192, column: 37, scope: !4789)
!4952 = !DILocation(line: 192, column: 9, scope: !4789)
!4953 = !DILocation(line: 192, column: 14, scope: !4789)
!4954 = !DILocation(line: 192, column: 30, scope: !4789)
!4955 = !DILocation(line: 193, column: 31, scope: !4789)
!4956 = !DILocation(line: 193, column: 36, scope: !4789)
!4957 = !DILocation(line: 193, column: 9, scope: !4789)
!4958 = !DILocation(line: 193, column: 14, scope: !4789)
!4959 = !DILocation(line: 193, column: 29, scope: !4789)
!4960 = !DILocation(line: 194, column: 9, scope: !4789)
!4961 = !DILocation(line: 194, column: 14, scope: !4789)
!4962 = !DILocation(line: 194, column: 26, scope: !4789)
!4963 = !DILocation(line: 194, column: 31, scope: !4789)
!4964 = !DILocation(line: 195, column: 9, scope: !4789)
!4965 = !DILocation(line: 195, column: 14, scope: !4789)
!4966 = !DILocation(line: 195, column: 25, scope: !4789)
!4967 = !DILocation(line: 195, column: 30, scope: !4789)
!4968 = !DILocation(line: 196, column: 29, scope: !4789)
!4969 = !DILocation(line: 196, column: 34, scope: !4789)
!4970 = !DILocation(line: 196, column: 9, scope: !4789)
!4971 = !DILocation(line: 196, column: 14, scope: !4789)
!4972 = !DILocation(line: 196, column: 27, scope: !4789)
!4973 = !DILocation(line: 198, column: 20, scope: !4789)
!4974 = !DILocation(line: 198, column: 25, scope: !4789)
!4975 = !DILocation(line: 198, column: 3, scope: !4789)
!4976 = !DILocation(line: 200, column: 22, scope: !4789)
!4977 = !DILocation(line: 200, column: 9, scope: !4789)
!4978 = !DILocation(line: 200, column: 7, scope: !4789)
!4979 = !DILocation(line: 201, column: 7, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4789, file: !3, line: 201, column: 7)
!4981 = !DILocation(line: 201, column: 7, scope: !4789)
!4982 = !DILocation(line: 202, column: 4, scope: !4980)
!4983 = !DILocation(line: 204, column: 3, scope: !4789)
!4984 = !DILocation(line: 205, column: 2, scope: !4783)
!4985 = !DILocation(line: 207, column: 3, scope: !4802)
!4986 = !DILocation(line: 207, column: 24, scope: !4802)
!4987 = !DILocation(line: 212, column: 8, scope: !4988)
!4988 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 212, column: 7)
!4989 = !DILocation(line: 212, column: 7, scope: !4802)
!4990 = !DILocation(line: 213, column: 4, scope: !4988)
!4991 = !DILocation(line: 215, column: 34, scope: !4992)
!4992 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 215, column: 7)
!4993 = !DILocation(line: 215, column: 7, scope: !4992)
!4994 = !DILocation(line: 215, column: 7, scope: !4802)
!4995 = !DILocation(line: 217, column: 4, scope: !4992)
!4996 = !DILocation(line: 220, column: 18, scope: !4997)
!4997 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 220, column: 7)
!4998 = !DILocation(line: 220, column: 26, scope: !4997)
!4999 = !DILocation(line: 220, column: 31, scope: !4997)
!5000 = !DILocation(line: 220, column: 36, scope: !4997)
!5001 = !DILocation(line: 220, column: 25, scope: !4997)
!5002 = !DILocation(line: 220, column: 23, scope: !4997)
!5003 = !DILocation(line: 220, column: 42, scope: !4997)
!5004 = !DILocation(line: 220, column: 7, scope: !4802)
!5005 = !DILocation(line: 221, column: 4, scope: !5006)
!5006 = distinct !DILexicalBlock(scope: !5007, file: !3, line: 221, column: 4)
!5007 = distinct !DILexicalBlock(scope: !4997, file: !3, line: 220, column: 48)
!5008 = !DILocation(line: 221, column: 4, scope: !5009)
!5009 = distinct !DILexicalBlock(scope: !5006, file: !3, line: 221, column: 4)
!5010 = !DILocation(line: 223, column: 4, scope: !5007)
!5011 = !DILocation(line: 227, column: 17, scope: !5012)
!5012 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 227, column: 7)
!5013 = !DILocation(line: 227, column: 26, scope: !5012)
!5014 = !DILocation(line: 227, column: 45, scope: !5012)
!5015 = !DILocation(line: 228, column: 16, scope: !5012)
!5016 = !DILocation(line: 228, column: 21, scope: !5012)
!5017 = !DILocation(line: 228, column: 41, scope: !5012)
!5018 = !DILocation(line: 228, column: 46, scope: !5012)
!5019 = !DILocation(line: 229, column: 15, scope: !5012)
!5020 = !DILocation(line: 229, column: 24, scope: !5012)
!5021 = !DILocation(line: 227, column: 7, scope: !4802)
!5022 = !DILocation(line: 230, column: 4, scope: !5023)
!5023 = distinct !DILexicalBlock(scope: !5024, file: !3, line: 230, column: 4)
!5024 = distinct !DILexicalBlock(scope: !5012, file: !3, line: 229, column: 43)
!5025 = !DILocation(line: 230, column: 4, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5023, file: !3, line: 230, column: 4)
!5027 = !DILocation(line: 232, column: 4, scope: !5024)
!5028 = !DILocation(line: 235, column: 21, scope: !4802)
!5029 = !DILocation(line: 235, column: 9, scope: !4802)
!5030 = !DILocation(line: 235, column: 7, scope: !4802)
!5031 = !DILocation(line: 236, column: 7, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !4802, file: !3, line: 236, column: 7)
!5033 = !DILocation(line: 236, column: 11, scope: !5032)
!5034 = !DILocation(line: 236, column: 7, scope: !4802)
!5035 = !DILocation(line: 237, column: 11, scope: !5032)
!5036 = !DILocation(line: 237, column: 4, scope: !5032)
!5037 = !DILocation(line: 239, column: 3, scope: !4802)
!5038 = !DILocation(line: 240, column: 2, scope: !4783)
!5039 = !DILocation(line: 242, column: 3, scope: !4783)
!5040 = !DILocation(line: 245, column: 2, scope: !4770)
!5041 = !DILocation(line: 246, column: 1, scope: !4770)
!5042 = distinct !DISubprogram(name: "pps_cdev_compat_ioctl", scope: !3, file: !3, line: 249, type: !1629, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5043)
!5043 = !{!5044, !5045, !5046, !5047, !5048, !5049, !5068, !5069}
!5044 = !DILocalVariable(name: "file", arg: 1, scope: !5042, file: !3, line: 249, type: !1269)
!5045 = !DILocalVariable(name: "cmd", arg: 2, scope: !5042, file: !3, line: 250, type: !7)
!5046 = !DILocalVariable(name: "arg", arg: 3, scope: !5042, file: !3, line: 250, type: !126)
!5047 = !DILocalVariable(name: "pps", scope: !5042, file: !3, line: 252, type: !4371)
!5048 = !DILocalVariable(name: "uarg", scope: !5042, file: !3, line: 253, type: !125)
!5049 = !DILocalVariable(name: "compat", scope: !5050, file: !3, line: 258, type: !5052)
!5050 = distinct !DILexicalBlock(scope: !5051, file: !3, line: 257, column: 24)
!5051 = distinct !DILexicalBlock(scope: !5042, file: !3, line: 257, column: 6)
!5052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_fdata_compat", file: !4389, line: 132, size: 480, elements: !5053)
!5053 = !{!5054, !5067}
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !5052, file: !4389, line: 133, baseType: !5055, size: 352)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_kinfo_compat", file: !4389, line: 75, size: 352, elements: !5056)
!5056 = !{!5057, !5058, !5059, !5065, !5066}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "assert_sequence", scope: !5055, file: !4389, line: 76, baseType: !380, size: 32)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "clear_sequence", scope: !5055, file: !4389, line: 77, baseType: !380, size: 32, offset: 32)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "assert_tu", scope: !5055, file: !4389, line: 78, baseType: !5060, size: 128, align: 32, offset: 64)
!5060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pps_ktime_compat", file: !4389, line: 60, size: 128, align: 32, elements: !5061)
!5061 = !{!5062, !5063, !5064}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "sec", scope: !5060, file: !4389, line: 61, baseType: !621, size: 64)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !5060, file: !4389, line: 62, baseType: !1374, size: 32, offset: 64)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5060, file: !4389, line: 63, baseType: !380, size: 32, offset: 96)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "clear_tu", scope: !5055, file: !4389, line: 79, baseType: !5060, size: 128, align: 32, offset: 192)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "current_mode", scope: !5055, file: !4389, line: 80, baseType: !85, size: 32, offset: 320)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !5052, file: !4389, line: 134, baseType: !5060, size: 128, align: 32, offset: 352)
!5068 = !DILocalVariable(name: "fdata", scope: !5050, file: !3, line: 259, type: !4790)
!5069 = !DILocalVariable(name: "err", scope: !5050, file: !3, line: 260, type: !85)
!5070 = !DILocation(line: 249, column: 48, scope: !5042)
!5071 = !DILocation(line: 250, column: 16, scope: !5042)
!5072 = !DILocation(line: 250, column: 35, scope: !5042)
!5073 = !DILocation(line: 252, column: 2, scope: !5042)
!5074 = !DILocation(line: 252, column: 21, scope: !5042)
!5075 = !DILocation(line: 252, column: 27, scope: !5042)
!5076 = !DILocation(line: 252, column: 33, scope: !5042)
!5077 = !DILocation(line: 253, column: 2, scope: !5042)
!5078 = !DILocation(line: 253, column: 15, scope: !5042)
!5079 = !DILocation(line: 253, column: 38, scope: !5042)
!5080 = !DILocation(line: 253, column: 22, scope: !5042)
!5081 = !DILocation(line: 255, column: 8, scope: !5042)
!5082 = !DILocation(line: 255, column: 6, scope: !5042)
!5083 = !DILocation(line: 257, column: 6, scope: !5051)
!5084 = !DILocation(line: 257, column: 10, scope: !5051)
!5085 = !DILocation(line: 257, column: 6, scope: !5042)
!5086 = !DILocation(line: 258, column: 3, scope: !5050)
!5087 = !DILocation(line: 258, column: 27, scope: !5050)
!5088 = !DILocation(line: 259, column: 3, scope: !5050)
!5089 = !DILocation(line: 259, column: 20, scope: !5050)
!5090 = !DILocation(line: 260, column: 3, scope: !5050)
!5091 = !DILocation(line: 260, column: 7, scope: !5050)
!5092 = !DILocation(line: 264, column: 33, scope: !5050)
!5093 = !DILocation(line: 264, column: 9, scope: !5050)
!5094 = !DILocation(line: 264, column: 7, scope: !5050)
!5095 = !DILocation(line: 265, column: 7, scope: !5096)
!5096 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 265, column: 7)
!5097 = !DILocation(line: 265, column: 7, scope: !5050)
!5098 = !DILocation(line: 266, column: 4, scope: !5096)
!5099 = !DILocation(line: 268, column: 17, scope: !5050)
!5100 = !DILocation(line: 268, column: 34, scope: !5050)
!5101 = !DILocation(line: 268, column: 3, scope: !5050)
!5102 = !DILocation(line: 271, column: 28, scope: !5050)
!5103 = !DILocation(line: 271, column: 9, scope: !5050)
!5104 = !DILocation(line: 271, column: 7, scope: !5050)
!5105 = !DILocation(line: 272, column: 7, scope: !5106)
!5106 = distinct !DILexicalBlock(scope: !5050, file: !3, line: 272, column: 7)
!5107 = !DILocation(line: 272, column: 7, scope: !5050)
!5108 = !DILocation(line: 273, column: 11, scope: !5106)
!5109 = !DILocation(line: 273, column: 4, scope: !5106)
!5110 = !DILocation(line: 276, column: 18, scope: !5050)
!5111 = !DILocation(line: 276, column: 23, scope: !5050)
!5112 = !DILocation(line: 276, column: 3, scope: !5050)
!5113 = !DILocation(line: 278, column: 33, scope: !5050)
!5114 = !DILocation(line: 278, column: 38, scope: !5050)
!5115 = !DILocation(line: 278, column: 10, scope: !5050)
!5116 = !DILocation(line: 278, column: 15, scope: !5050)
!5117 = !DILocation(line: 278, column: 31, scope: !5050)
!5118 = !DILocation(line: 279, column: 32, scope: !5050)
!5119 = !DILocation(line: 279, column: 37, scope: !5050)
!5120 = !DILocation(line: 279, column: 10, scope: !5050)
!5121 = !DILocation(line: 279, column: 15, scope: !5050)
!5122 = !DILocation(line: 279, column: 30, scope: !5050)
!5123 = !DILocation(line: 280, column: 30, scope: !5050)
!5124 = !DILocation(line: 280, column: 35, scope: !5050)
!5125 = !DILocation(line: 280, column: 10, scope: !5050)
!5126 = !DILocation(line: 280, column: 15, scope: !5050)
!5127 = !DILocation(line: 280, column: 28, scope: !5050)
!5128 = !DILocation(line: 282, column: 18, scope: !5050)
!5129 = !DILocation(line: 282, column: 23, scope: !5050)
!5130 = !DILocation(line: 282, column: 35, scope: !5050)
!5131 = !DILocation(line: 282, column: 40, scope: !5050)
!5132 = !DILocation(line: 282, column: 3, scope: !5050)
!5133 = !DILocation(line: 284, column: 18, scope: !5050)
!5134 = !DILocation(line: 284, column: 23, scope: !5050)
!5135 = !DILocation(line: 284, column: 34, scope: !5050)
!5136 = !DILocation(line: 284, column: 39, scope: !5050)
!5137 = !DILocation(line: 284, column: 3, scope: !5050)
!5138 = !DILocation(line: 287, column: 20, scope: !5050)
!5139 = !DILocation(line: 287, column: 25, scope: !5050)
!5140 = !DILocation(line: 287, column: 3, scope: !5050)
!5141 = !DILocation(line: 289, column: 23, scope: !5050)
!5142 = !DILocation(line: 289, column: 10, scope: !5050)
!5143 = !DILocation(line: 289, column: 3, scope: !5050)
!5144 = !DILocation(line: 291, column: 2, scope: !5051)
!5145 = !DILocation(line: 293, column: 24, scope: !5042)
!5146 = !DILocation(line: 293, column: 30, scope: !5042)
!5147 = !DILocation(line: 293, column: 35, scope: !5042)
!5148 = !DILocation(line: 293, column: 9, scope: !5042)
!5149 = !DILocation(line: 293, column: 2, scope: !5042)
!5150 = !DILocation(line: 294, column: 1, scope: !5042)
!5151 = distinct !DISubprogram(name: "pps_cdev_open", scope: !3, file: !3, line: 312, type: !1696, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5152)
!5152 = !{!5153, !5154, !5155}
!5153 = !DILocalVariable(name: "inode", arg: 1, scope: !5151, file: !3, line: 312, type: !310)
!5154 = !DILocalVariable(name: "file", arg: 2, scope: !5151, file: !3, line: 312, type: !1269)
!5155 = !DILocalVariable(name: "pps", scope: !5151, file: !3, line: 314, type: !4371)
!5156 = !DILocation(line: 312, column: 40, scope: !5151)
!5157 = !DILocation(line: 312, column: 60, scope: !5151)
!5158 = !DILocation(line: 314, column: 2, scope: !5151)
!5159 = !DILocation(line: 314, column: 21, scope: !5151)
!5160 = !DILocation(line: 314, column: 46, scope: !5151)
!5161 = !DILocation(line: 314, column: 39, scope: !5151)
!5162 = !DILocation(line: 314, column: 27, scope: !5151)
!5163 = !DILocation(line: 316, column: 7, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5151, file: !3, line: 316, column: 6)
!5165 = !DILocation(line: 316, column: 6, scope: !5151)
!5166 = !DILocation(line: 317, column: 3, scope: !5164)
!5167 = !DILocation(line: 319, column: 23, scope: !5151)
!5168 = !DILocation(line: 319, column: 2, scope: !5151)
!5169 = !DILocation(line: 319, column: 8, scope: !5151)
!5170 = !DILocation(line: 319, column: 21, scope: !5151)
!5171 = !DILocation(line: 320, column: 2, scope: !5151)
!5172 = !DILocation(line: 321, column: 1, scope: !5151)
!5173 = distinct !DISubprogram(name: "pps_cdev_release", scope: !3, file: !3, line: 323, type: !1696, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5174)
!5174 = !{!5175, !5176, !5177, !5178, !5180}
!5175 = !DILocalVariable(name: "inode", arg: 1, scope: !5173, file: !3, line: 323, type: !310)
!5176 = !DILocalVariable(name: "file", arg: 2, scope: !5173, file: !3, line: 323, type: !1269)
!5177 = !DILocalVariable(name: "pps", scope: !5173, file: !3, line: 325, type: !4371)
!5178 = !DILocalVariable(name: "__ret_warn_on", scope: !5179, file: !3, line: 327, type: !85)
!5179 = distinct !DILexicalBlock(scope: !5173, file: !3, line: 327, column: 2)
!5180 = !DILocalVariable(name: "__flags", scope: !5181, file: !3, line: 327, type: !85)
!5181 = distinct !DILexicalBlock(scope: !5182, file: !3, line: 327, column: 2)
!5182 = distinct !DILexicalBlock(scope: !5179, file: !3, line: 327, column: 2)
!5183 = !DILocation(line: 323, column: 43, scope: !5173)
!5184 = !DILocation(line: 323, column: 63, scope: !5173)
!5185 = !DILocation(line: 325, column: 2, scope: !5173)
!5186 = !DILocation(line: 325, column: 21, scope: !5173)
!5187 = !DILocation(line: 325, column: 27, scope: !5173)
!5188 = !DILocation(line: 325, column: 33, scope: !5173)
!5189 = !DILocation(line: 327, column: 2, scope: !5179)
!5190 = !DILocation(line: 327, column: 2, scope: !5182)
!5191 = !DILocation(line: 327, column: 2, scope: !5181)
!5192 = !DILocation(line: 327, column: 2, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 327, column: 2)
!5194 = !DILocation(line: 327, column: 2, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 327, column: 2)
!5196 = !{i64 2153933863, i64 2153933892, i64 2153933938, i64 2153933996, i64 2153934050, i64 2153934104, i64 2153934159, i64 2153934190, i64 2153934498, i64 2153934504, i64 2153934551, i64 2153934574, i64 2153934600}
!5197 = !DILocation(line: 327, column: 2, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5181, file: !3, line: 327, column: 2)
!5199 = !DILocation(line: 327, column: 2, scope: !5173)
!5200 = !DILocation(line: 328, column: 14, scope: !5173)
!5201 = !DILocation(line: 328, column: 19, scope: !5173)
!5202 = !DILocation(line: 328, column: 2, scope: !5173)
!5203 = !DILocation(line: 330, column: 1, scope: !5173)
!5204 = !DILocation(line: 329, column: 2, scope: !5173)
!5205 = distinct !DISubprogram(name: "pps_cdev_fasync", scope: !3, file: !3, line: 47, type: !1710, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5206)
!5206 = !{!5207, !5208, !5209, !5210}
!5207 = !DILocalVariable(name: "fd", arg: 1, scope: !5205, file: !3, line: 47, type: !85)
!5208 = !DILocalVariable(name: "file", arg: 2, scope: !5205, file: !3, line: 47, type: !1269)
!5209 = !DILocalVariable(name: "on", arg: 3, scope: !5205, file: !3, line: 47, type: !85)
!5210 = !DILocalVariable(name: "pps", scope: !5205, file: !3, line: 49, type: !4371)
!5211 = !DILocation(line: 47, column: 32, scope: !5205)
!5212 = !DILocation(line: 47, column: 49, scope: !5205)
!5213 = !DILocation(line: 47, column: 59, scope: !5205)
!5214 = !DILocation(line: 49, column: 2, scope: !5205)
!5215 = !DILocation(line: 49, column: 21, scope: !5205)
!5216 = !DILocation(line: 49, column: 27, scope: !5205)
!5217 = !DILocation(line: 49, column: 33, scope: !5205)
!5218 = !DILocation(line: 50, column: 23, scope: !5205)
!5219 = !DILocation(line: 50, column: 27, scope: !5205)
!5220 = !DILocation(line: 50, column: 33, scope: !5205)
!5221 = !DILocation(line: 50, column: 38, scope: !5205)
!5222 = !DILocation(line: 50, column: 43, scope: !5205)
!5223 = !DILocation(line: 50, column: 9, scope: !5205)
!5224 = !DILocation(line: 51, column: 1, scope: !5205)
!5225 = !DILocation(line: 50, column: 2, scope: !5205)
!5226 = distinct !DISubprogram(name: "poll_wait", scope: !1618, file: !1618, line: 42, type: !5227, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5229)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{null, !1269, !1625, !4751}
!5229 = !{!5230, !5231, !5232}
!5230 = !DILocalVariable(name: "filp", arg: 1, scope: !5226, file: !1618, line: 42, type: !1269)
!5231 = !DILocalVariable(name: "wait_address", arg: 2, scope: !5226, file: !1618, line: 42, type: !1625)
!5232 = !DILocalVariable(name: "p", arg: 3, scope: !5226, file: !1618, line: 42, type: !4751)
!5233 = !DILocation(line: 42, column: 44, scope: !5226)
!5234 = !DILocation(line: 42, column: 70, scope: !5226)
!5235 = !DILocation(line: 42, column: 96, scope: !5226)
!5236 = !DILocation(line: 44, column: 6, scope: !5237)
!5237 = distinct !DILexicalBlock(scope: !5226, file: !1618, line: 44, column: 6)
!5238 = !DILocation(line: 44, column: 8, scope: !5237)
!5239 = !DILocation(line: 44, column: 11, scope: !5237)
!5240 = !DILocation(line: 44, column: 14, scope: !5237)
!5241 = !DILocation(line: 44, column: 21, scope: !5237)
!5242 = !DILocation(line: 44, column: 24, scope: !5237)
!5243 = !DILocation(line: 44, column: 6, scope: !5226)
!5244 = !DILocation(line: 45, column: 3, scope: !5245)
!5245 = distinct !DILexicalBlock(scope: !5237, file: !1618, line: 44, column: 38)
!5246 = !DILocation(line: 45, column: 6, scope: !5245)
!5247 = !DILocation(line: 45, column: 13, scope: !5245)
!5248 = !DILocation(line: 45, column: 19, scope: !5245)
!5249 = !DILocation(line: 45, column: 33, scope: !5245)
!5250 = !DILocation(line: 52, column: 3, scope: !5245)
!5251 = !DILocation(line: 52, column: 3, scope: !5252)
!5252 = distinct !DILexicalBlock(scope: !5245, file: !1618, line: 52, column: 3)
!5253 = !DILocation(line: 52, column: 3, scope: !5254)
!5254 = distinct !DILexicalBlock(scope: !5252, file: !1618, line: 52, column: 3)
!5255 = !{i64 2153891217}
!5256 = !DILocation(line: 53, column: 2, scope: !5245)
!5257 = !DILocation(line: 54, column: 1, scope: !5226)
!5258 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5259, file: !5259, line: 374, type: !5260, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5263)
!5259 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5260 = !DISubroutineType(types: !5261)
!5261 = !{null, !5262}
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!5263 = !{!5264}
!5264 = !DILocalVariable(name: "lock", arg: 1, scope: !5258, file: !5259, line: 374, type: !5262)
!5265 = !DILocation(line: 374, column: 55, scope: !5258)
!5266 = !DILocation(line: 376, column: 2, scope: !5258)
!5267 = !DILocation(line: 377, column: 1, scope: !5258)
!5268 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5259, file: !5259, line: 399, type: !5260, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5269)
!5269 = !{!5270}
!5270 = !DILocalVariable(name: "lock", arg: 1, scope: !5268, file: !5259, line: 399, type: !5262)
!5271 = !DILocation(line: 399, column: 57, scope: !5268)
!5272 = !DILocation(line: 401, column: 2, scope: !5268)
!5273 = !DILocation(line: 402, column: 1, scope: !5268)
!5274 = distinct !DISubprogram(name: "copy_to_user", scope: !5275, file: !5275, line: 188, type: !5276, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5278)
!5275 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!5276 = !DISubroutineType(types: !5277)
!5277 = !{!126, !125, !1867, !126}
!5278 = !{!5279, !5280, !5281}
!5279 = !DILocalVariable(name: "to", arg: 1, scope: !5274, file: !5275, line: 188, type: !125)
!5280 = !DILocalVariable(name: "from", arg: 2, scope: !5274, file: !5275, line: 188, type: !1867)
!5281 = !DILocalVariable(name: "n", arg: 3, scope: !5274, file: !5275, line: 188, type: !126)
!5282 = !DILocation(line: 188, column: 27, scope: !5274)
!5283 = !DILocation(line: 188, column: 43, scope: !5274)
!5284 = !DILocation(line: 188, column: 63, scope: !5274)
!5285 = !DILocation(line: 190, column: 22, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5274, file: !5275, line: 190, column: 6)
!5287 = !DILocation(line: 190, column: 28, scope: !5286)
!5288 = !DILocation(line: 190, column: 6, scope: !5286)
!5289 = !DILocation(line: 190, column: 6, scope: !5274)
!5290 = !DILocation(line: 191, column: 21, scope: !5286)
!5291 = !DILocation(line: 191, column: 25, scope: !5286)
!5292 = !DILocation(line: 191, column: 31, scope: !5286)
!5293 = !DILocation(line: 191, column: 7, scope: !5286)
!5294 = !DILocation(line: 191, column: 5, scope: !5286)
!5295 = !DILocation(line: 191, column: 3, scope: !5286)
!5296 = !DILocation(line: 192, column: 9, scope: !5274)
!5297 = !DILocation(line: 192, column: 2, scope: !5274)
!5298 = !DISubprogram(name: "capable", scope: !1355, file: !1355, line: 148, type: !5299, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!1430, !85}
!5301 = distinct !DISubprogram(name: "copy_from_user", scope: !5275, file: !5275, line: 180, type: !5276, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5302)
!5302 = !{!5303, !5304, !5305}
!5303 = !DILocalVariable(name: "to", arg: 1, scope: !5301, file: !5275, line: 180, type: !125)
!5304 = !DILocalVariable(name: "from", arg: 2, scope: !5301, file: !5275, line: 180, type: !1867)
!5305 = !DILocalVariable(name: "n", arg: 3, scope: !5301, file: !5275, line: 180, type: !126)
!5306 = !DILocation(line: 180, column: 22, scope: !5301)
!5307 = !DILocation(line: 180, column: 45, scope: !5301)
!5308 = !DILocation(line: 180, column: 65, scope: !5301)
!5309 = !DILocation(line: 182, column: 22, scope: !5310)
!5310 = distinct !DILexicalBlock(scope: !5301, file: !5275, line: 182, column: 6)
!5311 = !DILocation(line: 182, column: 26, scope: !5310)
!5312 = !DILocation(line: 182, column: 6, scope: !5310)
!5313 = !DILocation(line: 182, column: 6, scope: !5301)
!5314 = !DILocation(line: 183, column: 23, scope: !5310)
!5315 = !DILocation(line: 183, column: 27, scope: !5310)
!5316 = !DILocation(line: 183, column: 33, scope: !5310)
!5317 = !DILocation(line: 183, column: 7, scope: !5310)
!5318 = !DILocation(line: 183, column: 5, scope: !5310)
!5319 = !DILocation(line: 183, column: 3, scope: !5310)
!5320 = !DILocation(line: 184, column: 9, scope: !5301)
!5321 = !DILocation(line: 184, column: 2, scope: !5301)
!5322 = distinct !DISubprogram(name: "might_fault", scope: !4352, file: !4352, line: 202, type: !2270, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5323 = !DILocation(line: 202, column: 40, scope: !5322)
!5324 = distinct !DISubprogram(name: "kmsan_copy_to_user", scope: !5325, file: !5325, line: 76, type: !5326, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5328)
!5325 = !DIFile(filename: "./include/linux/kmsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9cfeb6fcb47441b7815b086def457771")
!5326 = !DISubroutineType(types: !5327)
!5327 = !{null, !125, !1867, !278, !278}
!5328 = !{!5329, !5330, !5331, !5332}
!5329 = !DILocalVariable(name: "to", arg: 1, scope: !5324, file: !5325, line: 76, type: !125)
!5330 = !DILocalVariable(name: "from", arg: 2, scope: !5324, file: !5325, line: 76, type: !1867)
!5331 = !DILocalVariable(name: "to_copy", arg: 3, scope: !5324, file: !5325, line: 77, type: !278)
!5332 = !DILocalVariable(name: "left", arg: 4, scope: !5324, file: !5325, line: 77, type: !278)
!5333 = !DILocation(line: 76, column: 52, scope: !5324)
!5334 = !DILocation(line: 76, column: 68, scope: !5324)
!5335 = !DILocation(line: 77, column: 18, scope: !5324)
!5336 = !DILocation(line: 77, column: 34, scope: !5324)
!5337 = !DILocation(line: 79, column: 1, scope: !5324)
!5338 = distinct !DISubprogram(name: "pps_cdev_pps_fetch", scope: !3, file: !3, line: 53, type: !5339, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5342)
!5339 = !DISubroutineType(types: !5340)
!5340 = !{!85, !4371, !5341}
!5341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4790, size: 64)
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5350, !5364, !5365, !5369, !5370, !5372, !5376, !5379, !5381, !5382, !5386, !5389}
!5343 = !DILocalVariable(name: "pps", arg: 1, scope: !5338, file: !3, line: 53, type: !4371)
!5344 = !DILocalVariable(name: "fdata", arg: 2, scope: !5338, file: !3, line: 53, type: !5341)
!5345 = !DILocalVariable(name: "ev", scope: !5338, file: !3, line: 55, type: !7)
!5346 = !DILocalVariable(name: "err", scope: !5338, file: !3, line: 56, type: !85)
!5347 = !DILocalVariable(name: "__ret", scope: !5348, file: !3, line: 60, type: !85)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 60, column: 9)
!5349 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 59, column: 6)
!5350 = !DILocalVariable(name: "__wq_entry", scope: !5351, file: !3, line: 60, type: !5353)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 60, column: 9)
!5352 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 60, column: 9)
!5353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !917, line: 30, size: 320, elements: !5354)
!5354 = !{!5355, !5356, !5357, !5363}
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5353, file: !917, line: 31, baseType: !7, size: 32)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5353, file: !917, line: 32, baseType: !125, size: 64, offset: 64)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5353, file: !917, line: 33, baseType: !5358, size: 64, offset: 128)
!5358 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !917, line: 16, baseType: !5359)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DISubroutineType(types: !5361)
!5361 = !{!85, !5362, !7, !85, !125}
!5362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5353, size: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !5353, file: !917, line: 34, baseType: !133, size: 128, offset: 192)
!5364 = !DILocalVariable(name: "__ret", scope: !5351, file: !3, line: 60, type: !127)
!5365 = !DILocalVariable(name: "__int", scope: !5366, file: !3, line: 60, type: !127)
!5366 = distinct !DILexicalBlock(scope: !5367, file: !3, line: 60, column: 9)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !3, line: 60, column: 9)
!5368 = distinct !DILexicalBlock(scope: !5351, file: !3, line: 60, column: 9)
!5369 = !DILabel(scope: !5351, name: "__out", file: !3, line: 60)
!5370 = !DILocalVariable(name: "ticks", scope: !5371, file: !3, line: 63, type: !126)
!5371 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 62, column: 7)
!5372 = !DILocalVariable(name: "__ret", scope: !5373, file: !3, line: 72, type: !127)
!5373 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 72, column: 10)
!5374 = distinct !DILexicalBlock(scope: !5375, file: !3, line: 71, column: 19)
!5375 = distinct !DILexicalBlock(scope: !5371, file: !3, line: 71, column: 7)
!5376 = !DILocalVariable(name: "__cond", scope: !5377, file: !3, line: 72, type: !1430)
!5377 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 72, column: 10)
!5378 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 72, column: 10)
!5379 = !DILocalVariable(name: "__wq_entry", scope: !5380, file: !3, line: 72, type: !5353)
!5380 = distinct !DILexicalBlock(scope: !5378, file: !3, line: 72, column: 10)
!5381 = !DILocalVariable(name: "__ret", scope: !5380, file: !3, line: 72, type: !127)
!5382 = !DILocalVariable(name: "__int", scope: !5383, file: !3, line: 72, type: !127)
!5383 = distinct !DILexicalBlock(scope: !5384, file: !3, line: 72, column: 10)
!5384 = distinct !DILexicalBlock(scope: !5385, file: !3, line: 72, column: 10)
!5385 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 72, column: 10)
!5386 = !DILocalVariable(name: "__cond", scope: !5387, file: !3, line: 72, type: !1430)
!5387 = distinct !DILexicalBlock(scope: !5388, file: !3, line: 72, column: 10)
!5388 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 72, column: 10)
!5389 = !DILabel(scope: !5380, name: "__out", file: !3, line: 72)
!5390 = !DILocation(line: 53, column: 50, scope: !5338)
!5391 = !DILocation(line: 53, column: 73, scope: !5338)
!5392 = !DILocation(line: 55, column: 2, scope: !5338)
!5393 = !DILocation(line: 55, column: 15, scope: !5338)
!5394 = !DILocation(line: 55, column: 20, scope: !5338)
!5395 = !DILocation(line: 55, column: 25, scope: !5338)
!5396 = !DILocation(line: 56, column: 2, scope: !5338)
!5397 = !DILocation(line: 56, column: 6, scope: !5338)
!5398 = !DILocation(line: 59, column: 6, scope: !5349)
!5399 = !DILocation(line: 59, column: 13, scope: !5349)
!5400 = !DILocation(line: 59, column: 21, scope: !5349)
!5401 = !DILocation(line: 59, column: 27, scope: !5349)
!5402 = !DILocation(line: 59, column: 6, scope: !5338)
!5403 = !DILocation(line: 60, column: 9, scope: !5348)
!5404 = !DILocation(line: 60, column: 9, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5348, file: !3, line: 60, column: 9)
!5406 = !DILocation(line: 60, column: 9, scope: !5352)
!5407 = !DILocation(line: 60, column: 9, scope: !5351)
!5408 = !DILocation(line: 60, column: 9, scope: !5366)
!5409 = !DILocation(line: 60, column: 9, scope: !5410)
!5410 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 60, column: 9)
!5411 = !DILocation(line: 60, column: 9, scope: !5412)
!5412 = distinct !DILexicalBlock(scope: !5366, file: !3, line: 60, column: 9)
!5413 = !DILocation(line: 60, column: 9, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !5412, file: !3, line: 60, column: 9)
!5415 = !DILocation(line: 60, column: 9, scope: !5367)
!5416 = distinct !{!5416, !5417, !5417, !4623}
!5417 = !DILocation(line: 60, column: 9, scope: !5368)
!5418 = !DILocation(line: 60, column: 9, scope: !5349)
!5419 = !DILocation(line: 60, column: 7, scope: !5349)
!5420 = !DILocation(line: 60, column: 3, scope: !5349)
!5421 = !DILocation(line: 63, column: 3, scope: !5371)
!5422 = !DILocation(line: 63, column: 17, scope: !5371)
!5423 = !DILocation(line: 68, column: 11, scope: !5371)
!5424 = !DILocation(line: 68, column: 18, scope: !5371)
!5425 = !DILocation(line: 68, column: 26, scope: !5371)
!5426 = !DILocation(line: 68, column: 30, scope: !5371)
!5427 = !DILocation(line: 68, column: 9, scope: !5371)
!5428 = !DILocation(line: 69, column: 12, scope: !5371)
!5429 = !DILocation(line: 69, column: 19, scope: !5371)
!5430 = !DILocation(line: 69, column: 27, scope: !5371)
!5431 = !DILocation(line: 69, column: 32, scope: !5371)
!5432 = !DILocation(line: 69, column: 9, scope: !5371)
!5433 = !DILocation(line: 71, column: 7, scope: !5375)
!5434 = !DILocation(line: 71, column: 13, scope: !5375)
!5435 = !DILocation(line: 71, column: 7, scope: !5371)
!5436 = !DILocation(line: 72, column: 10, scope: !5373)
!5437 = !DILocation(line: 72, column: 10, scope: !5438)
!5438 = distinct !DILexicalBlock(scope: !5373, file: !3, line: 72, column: 10)
!5439 = !DILocation(line: 72, column: 10, scope: !5377)
!5440 = !DILocation(line: 72, column: 10, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5377, file: !3, line: 72, column: 10)
!5442 = !{i8 0, i8 2}
!5443 = !DILocation(line: 72, column: 10, scope: !5378)
!5444 = !DILocation(line: 72, column: 10, scope: !5380)
!5445 = !DILocation(line: 72, column: 10, scope: !5383)
!5446 = !DILocation(line: 72, column: 10, scope: !5387)
!5447 = !DILocation(line: 72, column: 10, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5387, file: !3, line: 72, column: 10)
!5449 = !DILocation(line: 72, column: 10, scope: !5388)
!5450 = !DILocation(line: 72, column: 10, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5383, file: !3, line: 72, column: 10)
!5452 = !DILocation(line: 72, column: 10, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5451, file: !3, line: 72, column: 10)
!5454 = !DILocation(line: 72, column: 10, scope: !5384)
!5455 = distinct !{!5455, !5456, !5456, !4623}
!5456 = !DILocation(line: 72, column: 10, scope: !5385)
!5457 = !DILocation(line: 72, column: 10, scope: !5374)
!5458 = !DILocation(line: 72, column: 8, scope: !5374)
!5459 = !DILocation(line: 76, column: 8, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5374, file: !3, line: 76, column: 8)
!5461 = !DILocation(line: 76, column: 12, scope: !5460)
!5462 = !DILocation(line: 76, column: 8, scope: !5374)
!5463 = !DILocation(line: 77, column: 5, scope: !5460)
!5464 = !DILocation(line: 78, column: 3, scope: !5374)
!5465 = !DILocation(line: 79, column: 2, scope: !5349)
!5466 = !DILocation(line: 82, column: 6, scope: !5467)
!5467 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 82, column: 6)
!5468 = !DILocation(line: 82, column: 10, scope: !5467)
!5469 = !DILocation(line: 82, column: 6, scope: !5338)
!5470 = !DILocation(line: 84, column: 3, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5467, file: !3, line: 82, column: 27)
!5472 = !DILocation(line: 87, column: 2, scope: !5338)
!5473 = !DILocation(line: 88, column: 1, scope: !5338)
!5474 = !DISubprogram(name: "_dev_err", scope: !5475, file: !5475, line: 50, type: !5476, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5475 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5476 = !DISubroutineType(types: !5477)
!5477 = !{null, !3962, !151, null}
!5478 = distinct !DISubprogram(name: "pps_kc_bind", scope: !5479, file: !5479, line: 25, type: !5480, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5483)
!5479 = !DIFile(filename: "drivers/pps/kc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd5c5a3b24fbb2985ecebc7392245396")
!5480 = !DISubroutineType(types: !5481)
!5481 = !{!85, !4371, !5482}
!5482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4803, size: 64)
!5483 = !{!5484, !5485}
!5484 = !DILocalVariable(name: "pps", arg: 1, scope: !5478, file: !5479, line: 25, type: !4371)
!5485 = !DILocalVariable(name: "bind_args", arg: 2, scope: !5478, file: !5479, line: 26, type: !5482)
!5486 = !DILocation(line: 25, column: 50, scope: !5478)
!5487 = !DILocation(line: 26, column: 25, scope: !5478)
!5488 = !DILocation(line: 26, column: 38, scope: !5478)
!5489 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5490, file: !5490, line: 29, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5490 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5491 = !DISubroutineType(types: !5492)
!5492 = !{null, !5493}
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!5494 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5490, file: !5490, line: 41, type: !5491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5495 = distinct !DISubprogram(name: "check_copy_size", scope: !4345, file: !4345, line: 237, type: !5496, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5498)
!5496 = !DISubroutineType(types: !5497)
!5497 = !{!1430, !1867, !278, !1430}
!5498 = !{!5499, !5500, !5501, !5502, !5503, !5506}
!5499 = !DILocalVariable(name: "addr", arg: 1, scope: !5495, file: !4345, line: 237, type: !1867)
!5500 = !DILocalVariable(name: "bytes", arg: 2, scope: !5495, file: !4345, line: 237, type: !278)
!5501 = !DILocalVariable(name: "is_source", arg: 3, scope: !5495, file: !4345, line: 237, type: !1430)
!5502 = !DILocalVariable(name: "sz", scope: !5495, file: !4345, line: 239, type: !85)
!5503 = !DILocalVariable(name: "__ret_warn_on", scope: !5504, file: !4345, line: 249, type: !85)
!5504 = distinct !DILexicalBlock(scope: !5505, file: !4345, line: 249, column: 6)
!5505 = distinct !DILexicalBlock(scope: !5495, file: !4345, line: 249, column: 6)
!5506 = !DILocalVariable(name: "__flags", scope: !5507, file: !4345, line: 249, type: !85)
!5507 = distinct !DILexicalBlock(scope: !5508, file: !4345, line: 249, column: 6)
!5508 = distinct !DILexicalBlock(scope: !5504, file: !4345, line: 249, column: 6)
!5509 = !DILocation(line: 237, column: 29, scope: !5495)
!5510 = !DILocation(line: 237, column: 42, scope: !5495)
!5511 = !DILocation(line: 237, column: 54, scope: !5495)
!5512 = !DILocation(line: 239, column: 2, scope: !5495)
!5513 = !DILocation(line: 239, column: 6, scope: !5495)
!5514 = !DILocation(line: 239, column: 33, scope: !5495)
!5515 = !DILocation(line: 239, column: 11, scope: !5495)
!5516 = !DILocation(line: 240, column: 6, scope: !5517)
!5517 = distinct !DILexicalBlock(scope: !5495, file: !4345, line: 240, column: 6)
!5518 = !DILocation(line: 0, scope: !5517)
!5519 = !DILocation(line: 240, column: 6, scope: !5495)
!5520 = !DILocation(line: 241, column: 29, scope: !5521)
!5521 = distinct !DILexicalBlock(scope: !5522, file: !4345, line: 241, column: 7)
!5522 = distinct !DILexicalBlock(scope: !5517, file: !4345, line: 240, column: 39)
!5523 = !DILocation(line: 241, column: 8, scope: !5521)
!5524 = !DILocation(line: 241, column: 7, scope: !5522)
!5525 = !DILocation(line: 242, column: 18, scope: !5521)
!5526 = !DILocation(line: 242, column: 22, scope: !5521)
!5527 = !DILocation(line: 242, column: 4, scope: !5521)
!5528 = !DILocation(line: 243, column: 12, scope: !5529)
!5529 = distinct !DILexicalBlock(scope: !5521, file: !4345, line: 243, column: 12)
!5530 = !DILocation(line: 243, column: 12, scope: !5521)
!5531 = !DILocation(line: 244, column: 4, scope: !5529)
!5532 = !{i32 2116299}
!5533 = !DILocation(line: 246, column: 4, scope: !5529)
!5534 = !{i32 2116328}
!5535 = !DILocation(line: 247, column: 3, scope: !5522)
!5536 = !DILocation(line: 249, column: 6, scope: !5504)
!5537 = !DILocation(line: 249, column: 6, scope: !5508)
!5538 = !DILocation(line: 249, column: 6, scope: !5507)
!5539 = !DILocation(line: 249, column: 6, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5507, file: !4345, line: 249, column: 6)
!5541 = !DILocation(line: 249, column: 6, scope: !5542)
!5542 = distinct !DILexicalBlock(scope: !5507, file: !4345, line: 249, column: 6)
!5543 = !{i64 2149616761, i64 2149616790, i64 2149616836, i64 2149616894, i64 2149616948, i64 2149617002, i64 2149617057, i64 2149617088, i64 2149617396, i64 2149617402, i64 2149617449, i64 2149617472, i64 2149617498}
!5544 = !DILocation(line: 249, column: 6, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5507, file: !4345, line: 249, column: 6)
!5546 = !DILocation(line: 249, column: 6, scope: !5505)
!5547 = !DILocation(line: 249, column: 6, scope: !5495)
!5548 = !DILocation(line: 250, column: 3, scope: !5505)
!5549 = !DILocation(line: 251, column: 20, scope: !5495)
!5550 = !DILocation(line: 251, column: 26, scope: !5495)
!5551 = !DILocation(line: 251, column: 33, scope: !5495)
!5552 = !DILocation(line: 251, column: 2, scope: !5495)
!5553 = !DILocation(line: 252, column: 2, scope: !5495)
!5554 = !DILocation(line: 253, column: 1, scope: !5495)
!5555 = !DISubprogram(name: "_copy_to_user", scope: !5275, file: !5275, line: 176, type: !5276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5556 = distinct !DISubprogram(name: "copy_overflow", scope: !4345, file: !4345, line: 230, type: !5557, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5559)
!5557 = !DISubroutineType(types: !5558)
!5558 = !{null, !85, !126}
!5559 = !{!5560, !5561}
!5560 = !DILocalVariable(name: "size", arg: 1, scope: !5556, file: !4345, line: 230, type: !85)
!5561 = !DILocalVariable(name: "count", arg: 2, scope: !5556, file: !4345, line: 230, type: !126)
!5562 = !DILocation(line: 230, column: 38, scope: !5556)
!5563 = !DILocation(line: 230, column: 58, scope: !5556)
!5564 = !DILocation(line: 233, column: 19, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5556, file: !4345, line: 232, column: 6)
!5566 = !DILocation(line: 233, column: 25, scope: !5565)
!5567 = !DILocation(line: 233, column: 3, scope: !5565)
!5568 = !DILocation(line: 234, column: 1, scope: !5556)
!5569 = !DISubprogram(name: "__bad_copy_from", scope: !4345, file: !4345, line: 224, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5570 = !DISubprogram(name: "__bad_copy_to", scope: !4345, file: !4345, line: 226, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5571 = distinct !DISubprogram(name: "check_object_size", scope: !4345, file: !4345, line: 218, type: !5572, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5574)
!5572 = !DISubroutineType(types: !5573)
!5573 = !{null, !1867, !126, !1430}
!5574 = !{!5575, !5576, !5577}
!5575 = !DILocalVariable(name: "ptr", arg: 1, scope: !5571, file: !4345, line: 218, type: !1867)
!5576 = !DILocalVariable(name: "n", arg: 2, scope: !5571, file: !4345, line: 218, type: !126)
!5577 = !DILocalVariable(name: "to_user", arg: 3, scope: !5571, file: !4345, line: 219, type: !1430)
!5578 = !DILocation(line: 218, column: 50, scope: !5571)
!5579 = !DILocation(line: 218, column: 69, scope: !5571)
!5580 = !DILocation(line: 219, column: 15, scope: !5571)
!5581 = !DILocation(line: 220, column: 3, scope: !5571)
!5582 = !DISubprogram(name: "__copy_overflow", scope: !4345, file: !4345, line: 228, type: !5557, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5583 = !DISubprogram(name: "_copy_from_user", scope: !5275, file: !5275, line: 158, type: !5276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5584 = !DILocation(line: 112, column: 2, scope: !5585)
!5585 = distinct !DILexicalBlock(scope: !4351, file: !4352, line: 112, column: 2)
!5586 = !DILocation(line: 112, column: 2, scope: !4351)
!5587 = !DILocation(line: 113, column: 1, scope: !4351)
!5588 = !DISubprogram(name: "init_wait_entry", scope: !917, file: !917, line: 290, type: !5589, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5589 = !DISubroutineType(types: !5590)
!5590 = !{null, !5362, !85}
!5591 = !DISubprogram(name: "prepare_to_wait_event", scope: !917, file: !917, line: 1199, type: !5592, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5592 = !DISubroutineType(types: !5593)
!5593 = !{!127, !5594, !5362, !85}
!5594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!5595 = !DISubprogram(name: "schedule", scope: !585, file: !585, line: 303, type: !2270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5596 = !DISubprogram(name: "finish_wait", scope: !917, file: !917, line: 1200, type: !5597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5597 = !DISubroutineType(types: !5598)
!5598 = !{null, !5594, !5362}
!5599 = !DISubprogram(name: "schedule_timeout", scope: !585, file: !585, line: 298, type: !5600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5600 = !DISubroutineType(types: !5601)
!5601 = !{!127, !127}
!5602 = distinct !DISubprogram(name: "pps_idr_get", scope: !3, file: !3, line: 299, type: !5603, scopeLine: 300, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5605)
!5603 = !DISubroutineType(types: !5604)
!5604 = !{!4371, !126}
!5605 = !{!5606, !5607}
!5606 = !DILocalVariable(name: "id", arg: 1, scope: !5602, file: !3, line: 299, type: !126)
!5607 = !DILocalVariable(name: "pps", scope: !5602, file: !3, line: 301, type: !4371)
!5608 = !DILocation(line: 299, column: 53, scope: !5602)
!5609 = !DILocation(line: 301, column: 2, scope: !5602)
!5610 = !DILocation(line: 301, column: 21, scope: !5602)
!5611 = !DILocation(line: 303, column: 2, scope: !5602)
!5612 = !DILocation(line: 304, column: 27, scope: !5602)
!5613 = !DILocation(line: 304, column: 8, scope: !5602)
!5614 = !DILocation(line: 304, column: 6, scope: !5602)
!5615 = !DILocation(line: 305, column: 6, scope: !5616)
!5616 = distinct !DILexicalBlock(scope: !5602, file: !3, line: 305, column: 6)
!5617 = !DILocation(line: 305, column: 6, scope: !5602)
!5618 = !DILocation(line: 306, column: 15, scope: !5616)
!5619 = !DILocation(line: 306, column: 20, scope: !5616)
!5620 = !DILocation(line: 306, column: 3, scope: !5616)
!5621 = !DILocation(line: 308, column: 2, scope: !5602)
!5622 = !DILocation(line: 309, column: 9, scope: !5602)
!5623 = !DILocation(line: 310, column: 1, scope: !5602)
!5624 = !DILocation(line: 309, column: 2, scope: !5602)
!5625 = distinct !DISubprogram(name: "iminor", scope: !14, file: !14, line: 938, type: !5626, scopeLine: 939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5628)
!5626 = !DISubroutineType(types: !5627)
!5627 = !{!7, !2987}
!5628 = !{!5629}
!5629 = !DILocalVariable(name: "inode", arg: 1, scope: !5625, file: !14, line: 938, type: !2987)
!5630 = !DILocation(line: 938, column: 51, scope: !5625)
!5631 = !DILocation(line: 940, column: 9, scope: !5625)
!5632 = !DILocation(line: 940, column: 2, scope: !5625)
!5633 = !DISubprogram(name: "idr_find", scope: !4304, file: !4304, line: 119, type: !5634, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5634 = !DISubroutineType(types: !5635)
!5635 = !{!125, !5636, !126}
!5636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5637, size: 64)
!5637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4303)
!5638 = !DISubprogram(name: "fasync_helper", scope: !14, file: !14, line: 1095, type: !5639, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5639 = !DISubroutineType(types: !5640)
!5640 = !{!85, !85, !1269, !85, !5641}
!5641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
