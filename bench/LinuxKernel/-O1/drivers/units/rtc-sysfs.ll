; ModuleID = 'drivers/rtc/sysfs.c'
source_filename = "drivers/rtc/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_add_groups: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_add_groups ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_rtc_add_group: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad rtc_add_group ; .previous"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i64, i64, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i64, [1 x i64], i64, i64, i64, i64, i64, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@rtc_attr_groups = internal global [2 x ptr] [ptr @rtc_attr_group, ptr null], align 16, !dbg !0
@__UNIQUE_ID___addressable_rtc_add_groups267 = internal global ptr @rtc_add_groups, section ".discard.addressable", align 8, !dbg !4411
@__UNIQUE_ID___addressable_rtc_add_group268 = internal global ptr @rtc_add_group, section ".discard.addressable", align 8, !dbg !4413
@rtc_attr_group = internal global %struct.attribute_group { ptr null, ptr @rtc_attr_is_visible, ptr null, ptr @rtc_attrs, ptr null }, align 8, !dbg !4415
@rtc_attrs = internal global [10 x ptr] [ptr @dev_attr_name, ptr @dev_attr_date, ptr @dev_attr_time, ptr @dev_attr_since_epoch, ptr @dev_attr_max_user_freq, ptr @dev_attr_hctosys, ptr @dev_attr_wakealarm, ptr @dev_attr_offset, ptr @dev_attr_range, ptr null], align 16, !dbg !4457
@dev_attr_wakealarm = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 420 }, ptr @wakealarm_show, ptr @wakealarm_store }, align 8, !dbg !4422
@dev_attr_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @offset_show, ptr @offset_store }, align 8, !dbg !4441
@dev_attr_range = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @range_show, ptr null }, align 8, !dbg !4450
@.str = private unnamed_addr constant [10 x i8] c"wakealarm\00", align 1, !dbg !4417
@.str.1 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1, !dbg !4436
@.str.2 = private unnamed_addr constant [7 x i8] c"offset\00", align 1, !dbg !4438
@.str.3 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1, !dbg !4443
@.str.4 = private unnamed_addr constant [6 x i8] c"range\00", align 1, !dbg !4448
@.str.5 = private unnamed_addr constant [13 x i8] c"[%lld,%llu]\0A\00", align 1, !dbg !4452
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @name_show, ptr null }, align 8, !dbg !4462
@dev_attr_date = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @date_show, ptr null }, align 8, !dbg !4468
@dev_attr_time = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292 }, ptr @time_show, ptr null }, align 8, !dbg !4474
@dev_attr_since_epoch = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @since_epoch_show, ptr null }, align 8, !dbg !4481
@dev_attr_max_user_freq = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @max_user_freq_show, ptr @max_user_freq_store }, align 8, !dbg !4488
@dev_attr_hctosys = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @hctosys_show, ptr null }, align 8, !dbg !4495
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !4460
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !4464
@.str.8 = private unnamed_addr constant [5 x i8] c"date\00", align 1, !dbg !4466
@.str.9 = private unnamed_addr constant [7 x i8] c"%ptRd\0A\00", align 1, !dbg !4470
@.str.10 = private unnamed_addr constant [5 x i8] c"time\00", align 1, !dbg !4472
@.str.11 = private unnamed_addr constant [7 x i8] c"%ptRt\0A\00", align 1, !dbg !4476
@.str.12 = private unnamed_addr constant [12 x i8] c"since_epoch\00", align 1, !dbg !4478
@.str.13 = private unnamed_addr constant [14 x i8] c"max_user_freq\00", align 1, !dbg !4483
@.str.14 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !4490
@.str.15 = private unnamed_addr constant [8 x i8] c"hctosys\00", align 1, !dbg !4493
@.str.16 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1, !dbg !4497
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_rtc_add_groups267, ptr @__UNIQUE_ID___addressable_rtc_add_group268], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @rtc_get_dev_attribute_groups() #0 align 16 !dbg !4510 {
entry:
  ret ptr @rtc_attr_groups, !dbg !4513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rtc_add_groups(ptr noundef %rtc, ptr noundef %grps) #0 align 16 !dbg !4514 {
entry:
  %retval = alloca i32, align 4
  %rtc.addr = alloca ptr, align 8
  %grps.addr = alloca ptr, align 8
  %old_cnt = alloca i64, align 8
  %add_cnt = alloca i64, align 8
  %new_cnt = alloca i64, align 8
  %groups = alloca ptr, align 8
  %old = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rtc, ptr %rtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtc.addr, metadata !4518, metadata !DIExpression()), !dbg !4525
  store ptr %grps, ptr %grps.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grps.addr, metadata !4519, metadata !DIExpression()), !dbg !4526
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_cnt) #11, !dbg !4527
  call void @llvm.dbg.declare(metadata ptr %old_cnt, metadata !4520, metadata !DIExpression()), !dbg !4528
  store i64 0, ptr %old_cnt, align 8, !dbg !4528
  call void @llvm.lifetime.start.p0(i64 8, ptr %add_cnt) #11, !dbg !4527
  call void @llvm.dbg.declare(metadata ptr %add_cnt, metadata !4521, metadata !DIExpression()), !dbg !4529
  store i64 0, ptr %add_cnt, align 8, !dbg !4529
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_cnt) #11, !dbg !4527
  call void @llvm.dbg.declare(metadata ptr %new_cnt, metadata !4522, metadata !DIExpression()), !dbg !4530
  call void @llvm.lifetime.start.p0(i64 8, ptr %groups) #11, !dbg !4531
  call void @llvm.dbg.declare(metadata ptr %groups, metadata !4523, metadata !DIExpression()), !dbg !4532
  call void @llvm.lifetime.start.p0(i64 8, ptr %old) #11, !dbg !4531
  call void @llvm.dbg.declare(metadata ptr %old, metadata !4524, metadata !DIExpression()), !dbg !4533
  %0 = load ptr, ptr %grps.addr, align 8, !dbg !4534
  %tobool = icmp ne ptr %0, null, !dbg !4534
  br i1 %tobool, label %if.end, label %if.then, !dbg !4536

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4537

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rtc.addr, align 8, !dbg !4538
  %dev = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 0, !dbg !4539
  %groups1 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 31, !dbg !4540
  %2 = load ptr, ptr %groups1, align 8, !dbg !4540
  store ptr %2, ptr %groups, align 8, !dbg !4541
  %3 = load ptr, ptr %groups, align 8, !dbg !4542
  %tobool2 = icmp ne ptr %3, null, !dbg !4542
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4544

if.then3:                                         ; preds = %if.end
  br label %for.cond, !dbg !4545

for.cond:                                         ; preds = %for.inc, %if.then3
  %4 = load ptr, ptr %groups, align 8, !dbg !4546
  %5 = load ptr, ptr %4, align 8, !dbg !4549
  %tobool4 = icmp ne ptr %5, null, !dbg !4550
  br i1 %tobool4, label %for.body, label %for.end, !dbg !4550

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %old_cnt, align 8, !dbg !4551
  %inc = add i64 %6, 1, !dbg !4551
  store i64 %inc, ptr %old_cnt, align 8, !dbg !4551
  br label %for.inc, !dbg !4552

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %groups, align 8, !dbg !4553
  %incdec.ptr = getelementptr ptr, ptr %7, i32 1, !dbg !4553
  store ptr %incdec.ptr, ptr %groups, align 8, !dbg !4553
  br label %for.cond, !dbg !4554, !llvm.loop !4555

for.end:                                          ; preds = %for.cond
  br label %if.end5, !dbg !4556

if.end5:                                          ; preds = %for.end, %if.end
  %8 = load ptr, ptr %grps.addr, align 8, !dbg !4559
  store ptr %8, ptr %groups, align 8, !dbg !4561
  br label %for.cond6, !dbg !4562

for.cond6:                                        ; preds = %for.inc10, %if.end5
  %9 = load ptr, ptr %groups, align 8, !dbg !4563
  %10 = load ptr, ptr %9, align 8, !dbg !4565
  %tobool7 = icmp ne ptr %10, null, !dbg !4566
  br i1 %tobool7, label %for.body8, label %for.end12, !dbg !4566

for.body8:                                        ; preds = %for.cond6
  %11 = load i64, ptr %add_cnt, align 8, !dbg !4567
  %inc9 = add i64 %11, 1, !dbg !4567
  store i64 %inc9, ptr %add_cnt, align 8, !dbg !4567
  br label %for.inc10, !dbg !4568

for.inc10:                                        ; preds = %for.body8
  %12 = load ptr, ptr %groups, align 8, !dbg !4569
  %incdec.ptr11 = getelementptr ptr, ptr %12, i32 1, !dbg !4569
  store ptr %incdec.ptr11, ptr %groups, align 8, !dbg !4569
  br label %for.cond6, !dbg !4570, !llvm.loop !4571

for.end12:                                        ; preds = %for.cond6
  %13 = load i64, ptr %old_cnt, align 8, !dbg !4573
  %14 = load i64, ptr %add_cnt, align 8, !dbg !4574
  %add = add i64 %13, %14, !dbg !4575
  %add13 = add i64 %add, 1, !dbg !4576
  store i64 %add13, ptr %new_cnt, align 8, !dbg !4577
  %15 = load ptr, ptr %rtc.addr, align 8, !dbg !4578
  %dev14 = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 0, !dbg !4579
  %16 = load i64, ptr %new_cnt, align 8, !dbg !4580
  %call = call ptr @devm_kcalloc(ptr noundef %dev14, i64 noundef %16, i64 noundef 8, i32 noundef 3264) #12, !dbg !4581
  store ptr %call, ptr %groups, align 8, !dbg !4582
  %17 = load ptr, ptr %groups, align 8, !dbg !4583
  %tobool15 = icmp ne ptr %17, null, !dbg !4583
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !4585

if.then16:                                        ; preds = %for.end12
  store i32 -12, ptr %retval, align 4, !dbg !4586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4586

if.end17:                                         ; preds = %for.end12
  %18 = load ptr, ptr %groups, align 8, !dbg !4587
  %19 = load ptr, ptr %rtc.addr, align 8, !dbg !4588
  %dev18 = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 0, !dbg !4589
  %groups19 = getelementptr inbounds %struct.device, ptr %dev18, i32 0, i32 31, !dbg !4590
  %20 = load ptr, ptr %groups19, align 8, !dbg !4590
  %21 = load i64, ptr %old_cnt, align 8, !dbg !4591
  %mul = mul i64 %21, 8, !dbg !4592
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %18, ptr align 8 %20, i64 %mul, i1 false), !dbg !4593
  %22 = load ptr, ptr %groups, align 8, !dbg !4594
  %23 = load i64, ptr %old_cnt, align 8, !dbg !4595
  %add.ptr = getelementptr ptr, ptr %22, i64 %23, !dbg !4596
  %24 = load ptr, ptr %grps.addr, align 8, !dbg !4597
  %25 = load i64, ptr %add_cnt, align 8, !dbg !4598
  %mul20 = mul i64 %25, 8, !dbg !4599
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %add.ptr, ptr align 8 %24, i64 %mul20, i1 false), !dbg !4600
  %26 = load ptr, ptr %groups, align 8, !dbg !4601
  %27 = load i64, ptr %old_cnt, align 8, !dbg !4602
  %28 = load i64, ptr %add_cnt, align 8, !dbg !4603
  %add21 = add i64 %27, %28, !dbg !4604
  %arrayidx = getelementptr ptr, ptr %26, i64 %add21, !dbg !4601
  store ptr null, ptr %arrayidx, align 8, !dbg !4605
  %29 = load ptr, ptr %rtc.addr, align 8, !dbg !4606
  %dev22 = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 0, !dbg !4607
  %groups23 = getelementptr inbounds %struct.device, ptr %dev22, i32 0, i32 31, !dbg !4608
  %30 = load ptr, ptr %groups23, align 8, !dbg !4608
  store ptr %30, ptr %old, align 8, !dbg !4609
  %31 = load ptr, ptr %groups, align 8, !dbg !4610
  %32 = load ptr, ptr %rtc.addr, align 8, !dbg !4611
  %dev24 = getelementptr inbounds %struct.rtc_device, ptr %32, i32 0, i32 0, !dbg !4612
  %groups25 = getelementptr inbounds %struct.device, ptr %dev24, i32 0, i32 31, !dbg !4613
  store ptr %31, ptr %groups25, align 8, !dbg !4614
  %33 = load ptr, ptr %old, align 8, !dbg !4615
  %tobool26 = icmp ne ptr %33, null, !dbg !4615
  br i1 %tobool26, label %land.lhs.true, label %if.end29, !dbg !4617

land.lhs.true:                                    ; preds = %if.end17
  %34 = load ptr, ptr %old, align 8, !dbg !4618
  %cmp = icmp ne ptr %34, @rtc_attr_groups, !dbg !4619
  br i1 %cmp, label %if.then27, label %if.end29, !dbg !4620

if.then27:                                        ; preds = %land.lhs.true
  %35 = load ptr, ptr %rtc.addr, align 8, !dbg !4621
  %dev28 = getelementptr inbounds %struct.rtc_device, ptr %35, i32 0, i32 0, !dbg !4622
  %36 = load ptr, ptr %old, align 8, !dbg !4623
  call void @devm_kfree(ptr noundef %dev28, ptr noundef %36) #12, !dbg !4624
  br label %if.end29, !dbg !4624

if.end29:                                         ; preds = %if.then27, %land.lhs.true, %if.end17
  store i32 0, ptr %retval, align 4, !dbg !4625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4625

cleanup:                                          ; preds = %if.end29, %if.then16, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %old) #11, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %groups) #11, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_cnt) #11, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %add_cnt) #11, !dbg !4626
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_cnt) #11, !dbg !4626
  %37 = load i32, ptr %retval, align 4, !dbg !4626
  ret i32 %37, !dbg !4626
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kcalloc(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !4627 {
entry:
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4631, metadata !DIExpression()), !dbg !4635
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4632, metadata !DIExpression()), !dbg !4636
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4633, metadata !DIExpression()), !dbg !4637
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4634, metadata !DIExpression()), !dbg !4638
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4639
  %1 = load i64, ptr %n.addr, align 8, !dbg !4640
  %2 = load i64, ptr %size.addr, align 8, !dbg !4641
  %3 = load i32, ptr %flags.addr, align 4, !dbg !4642
  %or = or i32 %3, 256, !dbg !4643
  %call = call ptr @devm_kmalloc_array(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %or) #12, !dbg !4644
  ret ptr %call, !dbg !4645
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4646 dso_local void @devm_kfree(ptr noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rtc_add_group(ptr noundef %rtc, ptr noundef %grp) #0 align 16 !dbg !4649 {
entry:
  %rtc.addr = alloca ptr, align 8
  %grp.addr = alloca ptr, align 8
  %groups = alloca [2 x ptr], align 16
  store ptr %rtc, ptr %rtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtc.addr, metadata !4653, metadata !DIExpression()), !dbg !4656
  store ptr %grp, ptr %grp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %grp.addr, metadata !4654, metadata !DIExpression()), !dbg !4657
  call void @llvm.lifetime.start.p0(i64 16, ptr %groups) #11, !dbg !4658
  call void @llvm.dbg.declare(metadata ptr %groups, metadata !4655, metadata !DIExpression()), !dbg !4659
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %groups, i64 0, i64 0, !dbg !4660
  %0 = load ptr, ptr %grp.addr, align 8, !dbg !4661
  store ptr %0, ptr %arrayinit.begin, align 8, !dbg !4660
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1, !dbg !4660
  store ptr null, ptr %arrayinit.element, align 8, !dbg !4660
  %1 = load ptr, ptr %rtc.addr, align 8, !dbg !4662
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %groups, i64 0, i64 0, !dbg !4663
  %call = call i32 @rtc_add_groups(ptr noundef %1, ptr noundef %arraydecay) #12, !dbg !4664
  call void @llvm.lifetime.end.p0(i64 16, ptr %groups) #11, !dbg !4665
  ret i32 %call, !dbg !4666
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @rtc_attr_is_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %n) #0 align 16 !dbg !4667 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %mode = alloca i16, align 2
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4669, metadata !DIExpression()), !dbg !4679
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4670, metadata !DIExpression()), !dbg !4680
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4671, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #11, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4672, metadata !DIExpression()), !dbg !4683
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4684
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4673, metadata !DIExpression()), !dbg !4684
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4684
  store ptr %0, ptr %__mptr, align 8, !dbg !4684
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4684
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4684
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4684
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4685
  %2 = load ptr, ptr %tmp, align 8, !dbg !4684
  store ptr %2, ptr %dev, align 8, !dbg !4683
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #11, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4675, metadata !DIExpression()), !dbg !4687
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #11, !dbg !4688
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4676, metadata !DIExpression()), !dbg !4688
  %3 = load ptr, ptr %dev, align 8, !dbg !4688
  store ptr %3, ptr %__mptr1, align 8, !dbg !4688
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4688
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !4688
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4688
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #11, !dbg !4689
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4688
  store ptr %5, ptr %rtc, align 8, !dbg !4687
  call void @llvm.lifetime.start.p0(i64 2, ptr %mode) #11, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %mode, metadata !4678, metadata !DIExpression()), !dbg !4691
  %6 = load ptr, ptr %attr.addr, align 8, !dbg !4692
  %mode4 = getelementptr inbounds %struct.attribute, ptr %6, i32 0, i32 1, !dbg !4693
  %7 = load i16, ptr %mode4, align 8, !dbg !4693
  store i16 %7, ptr %mode, align 2, !dbg !4691
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !4694
  %cmp = icmp eq ptr %8, @dev_attr_wakealarm, !dbg !4696
  br i1 %cmp, label %if.then, label %if.else, !dbg !4697

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %rtc, align 8, !dbg !4698
  %call = call zeroext i1 @rtc_does_wakealarm(ptr noundef %9) #12, !dbg !4701
  br i1 %call, label %if.end, label %if.then5, !dbg !4702

if.then5:                                         ; preds = %if.then
  store i16 0, ptr %mode, align 2, !dbg !4703
  br label %if.end, !dbg !4704

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end18, !dbg !4705

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %attr.addr, align 8, !dbg !4706
  %cmp6 = icmp eq ptr %10, @dev_attr_offset, !dbg !4708
  br i1 %cmp6, label %if.then7, label %if.else10, !dbg !4709

if.then7:                                         ; preds = %if.else
  %11 = load ptr, ptr %rtc, align 8, !dbg !4710
  %ops = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 3, !dbg !4713
  %12 = load ptr, ptr %ops, align 8, !dbg !4713
  %set_offset = getelementptr inbounds %struct.rtc_class_ops, ptr %12, i32 0, i32 8, !dbg !4714
  %13 = load ptr, ptr %set_offset, align 8, !dbg !4714
  %tobool = icmp ne ptr %13, null, !dbg !4710
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !4715

if.then8:                                         ; preds = %if.then7
  store i16 0, ptr %mode, align 2, !dbg !4716
  br label %if.end9, !dbg !4717

if.end9:                                          ; preds = %if.then8, %if.then7
  br label %if.end17, !dbg !4718

if.else10:                                        ; preds = %if.else
  %14 = load ptr, ptr %attr.addr, align 8, !dbg !4719
  %cmp11 = icmp eq ptr %14, @dev_attr_range, !dbg !4721
  br i1 %cmp11, label %if.then12, label %if.end16, !dbg !4722

if.then12:                                        ; preds = %if.else10
  %15 = load ptr, ptr %rtc, align 8, !dbg !4723
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 22, !dbg !4726
  %16 = load i64, ptr %range_max, align 8, !dbg !4726
  %17 = load ptr, ptr %rtc, align 8, !dbg !4727
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %17, i32 0, i32 21, !dbg !4728
  %18 = load i64, ptr %range_min, align 8, !dbg !4728
  %sub = sub i64 %16, %18, !dbg !4729
  %tobool13 = icmp ne i64 %sub, 0, !dbg !4729
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4730

if.then14:                                        ; preds = %if.then12
  store i16 0, ptr %mode, align 2, !dbg !4731
  br label %if.end15, !dbg !4732

if.end15:                                         ; preds = %if.then14, %if.then12
  br label %if.end16, !dbg !4733

if.end16:                                         ; preds = %if.end15, %if.else10
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end9
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.end
  %19 = load i16, ptr %mode, align 2, !dbg !4734
  call void @llvm.lifetime.end.p0(i64 2, ptr %mode) #11, !dbg !4735
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #11, !dbg !4735
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #11, !dbg !4735
  ret i16 %19, !dbg !4736
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rtc_does_wakealarm(ptr noundef %rtc) #0 align 16 !dbg !4737 {
entry:
  %retval = alloca i1, align 1
  %rtc.addr = alloca ptr, align 8
  store ptr %rtc, ptr %rtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtc.addr, metadata !4741, metadata !DIExpression()), !dbg !4742
  %0 = load ptr, ptr %rtc.addr, align 8, !dbg !4743
  %dev = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 0, !dbg !4745
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !4746
  %1 = load ptr, ptr %parent, align 8, !dbg !4746
  %call = call zeroext i1 @device_can_wakeup(ptr noundef %1) #12, !dbg !4747
  br i1 %call, label %if.end, label %if.then, !dbg !4748

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4749
  br label %return, !dbg !4749

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rtc.addr, align 8, !dbg !4750
  %features = getelementptr inbounds %struct.rtc_device, ptr %2, i32 0, i32 20, !dbg !4750
  %arraydecay = getelementptr inbounds [1 x i64], ptr %features, i64 0, i64 0, !dbg !4750
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !4750
  %cmp = icmp ne i64 %3, 0, !dbg !4750
  %conv = zext i1 %cmp to i32, !dbg !4750
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !4750
  br i1 %4, label %land.lhs.true, label %cond.false, !dbg !4750

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %rtc.addr, align 8, !dbg !4750
  %features1 = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 20, !dbg !4750
  %arraydecay2 = getelementptr inbounds [1 x i64], ptr %features1, i64 0, i64 0, !dbg !4750
  %6 = ptrtoint ptr %arraydecay2 to i64, !dbg !4750
  %cmp3 = icmp ne i64 %6, 0, !dbg !4750
  br i1 %cmp3, label %land.lhs.true5, label %cond.false, !dbg !4750

land.lhs.true5:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %rtc.addr, align 8, !dbg !4750
  %features6 = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 20, !dbg !4750
  %arraydecay7 = getelementptr inbounds [1 x i64], ptr %features6, i64 0, i64 0, !dbg !4750
  %8 = load i64, ptr %arraydecay7, align 8, !dbg !4750
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !4750
  br i1 %9, label %cond.true, label %cond.false, !dbg !4750

cond.true:                                        ; preds = %land.lhs.true5
  %10 = load ptr, ptr %rtc.addr, align 8, !dbg !4750
  %features8 = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 20, !dbg !4750
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %features8, i64 0, i64 0, !dbg !4750
  %call10 = call zeroext i1 @const_test_bit(i64 noundef 0, ptr noundef %arraydecay9) #12, !dbg !4750
  %conv11 = zext i1 %call10 to i32, !dbg !4750
  br label %cond.end, !dbg !4750

cond.false:                                       ; preds = %land.lhs.true5, %land.lhs.true, %if.end
  %11 = load ptr, ptr %rtc.addr, align 8, !dbg !4750
  %features12 = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 20, !dbg !4750
  %arraydecay13 = getelementptr inbounds [1 x i64], ptr %features12, i64 0, i64 0, !dbg !4750
  %call14 = call zeroext i1 @_test_bit(i64 noundef 0, ptr noundef %arraydecay13) #12, !dbg !4750
  %conv15 = zext i1 %call14 to i32, !dbg !4750
  br label %cond.end, !dbg !4750

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv11, %cond.true ], [ %conv15, %cond.false ], !dbg !4750
  %tobool = icmp ne i32 %cond, 0, !dbg !4751
  %lnot = xor i1 %tobool, true, !dbg !4751
  %lnot16 = xor i1 %lnot, true, !dbg !4752
  store i1 %lnot16, ptr %retval, align 1, !dbg !4753
  br label %return, !dbg !4753

return:                                           ; preds = %cond.end, %if.then
  %12 = load i1, ptr %retval, align 1, !dbg !4754
  ret i1 %12, !dbg !4754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakealarm_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4755 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %alarm = alloca i64, align 8
  %alm = alloca %struct.rtc_wkalrm, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4757, metadata !DIExpression()), !dbg !4765
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4758, metadata !DIExpression()), !dbg !4766
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4759, metadata !DIExpression()), !dbg !4767
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #11, !dbg !4768
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4760, metadata !DIExpression()), !dbg !4769
  call void @llvm.lifetime.start.p0(i64 8, ptr %alarm) #11, !dbg !4770
  call void @llvm.dbg.declare(metadata ptr %alarm, metadata !4761, metadata !DIExpression()), !dbg !4771
  call void @llvm.lifetime.start.p0(i64 40, ptr %alm) #11, !dbg !4772
  call void @llvm.dbg.declare(metadata ptr %alm, metadata !4762, metadata !DIExpression()), !dbg !4773
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4774
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4763, metadata !DIExpression()), !dbg !4774
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4774
  store ptr %0, ptr %__mptr, align 8, !dbg !4774
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4774
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4774
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4774
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4775
  %2 = load ptr, ptr %tmp, align 8, !dbg !4774
  %call = call i32 @rtc_read_alarm(ptr noundef %2, ptr noundef %alm) #12, !dbg !4776
  %conv = sext i32 %call to i64, !dbg !4776
  store i64 %conv, ptr %retval1, align 8, !dbg !4777
  %3 = load i64, ptr %retval1, align 8, !dbg !4778
  %cmp = icmp eq i64 %3, 0, !dbg !4780
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !4781

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 0, !dbg !4782
  %4 = load i8, ptr %enabled, align 4, !dbg !4782
  %conv3 = zext i8 %4 to i32, !dbg !4783
  %tobool = icmp ne i32 %conv3, 0, !dbg !4783
  br i1 %tobool, label %if.then, label %if.end, !dbg !4784

if.then:                                          ; preds = %land.lhs.true
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, !dbg !4785
  %call4 = call i64 @rtc_tm_to_time64(ptr noundef %time) #12, !dbg !4787
  store i64 %call4, ptr %alarm, align 8, !dbg !4788
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !4789
  %6 = load i64, ptr %alarm, align 8, !dbg !4790
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.1, i64 noundef %6) #12, !dbg !4791
  %conv6 = sext i32 %call5 to i64, !dbg !4791
  store i64 %conv6, ptr %retval1, align 8, !dbg !4792
  br label %if.end, !dbg !4793

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load i64, ptr %retval1, align 8, !dbg !4794
  call void @llvm.lifetime.end.p0(i64 40, ptr %alm) #11, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %alarm) #11, !dbg !4795
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #11, !dbg !4795
  ret i64 %7, !dbg !4796
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakealarm_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !4797 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %retval1 = alloca i64, align 8
  %now = alloca i64, align 8
  %alarm = alloca i64, align 8
  %push = alloca i64, align 8
  %alm = alloca %struct.rtc_wkalrm, align 4
  %rtc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %buf_ptr = alloca ptr, align 8
  %adjust = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4799, metadata !DIExpression()), !dbg !4813
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4800, metadata !DIExpression()), !dbg !4814
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4801, metadata !DIExpression()), !dbg !4815
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4802, metadata !DIExpression()), !dbg !4816
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #11, !dbg !4817
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !4803, metadata !DIExpression()), !dbg !4818
  call void @llvm.lifetime.start.p0(i64 8, ptr %now) #11, !dbg !4819
  call void @llvm.dbg.declare(metadata ptr %now, metadata !4804, metadata !DIExpression()), !dbg !4820
  call void @llvm.lifetime.start.p0(i64 8, ptr %alarm) #11, !dbg !4819
  call void @llvm.dbg.declare(metadata ptr %alarm, metadata !4805, metadata !DIExpression()), !dbg !4821
  call void @llvm.lifetime.start.p0(i64 8, ptr %push) #11, !dbg !4822
  call void @llvm.dbg.declare(metadata ptr %push, metadata !4806, metadata !DIExpression()), !dbg !4823
  store i64 0, ptr %push, align 8, !dbg !4823
  call void @llvm.lifetime.start.p0(i64 40, ptr %alm) #11, !dbg !4824
  call void @llvm.dbg.declare(metadata ptr %alm, metadata !4807, metadata !DIExpression()), !dbg !4825
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #11, !dbg !4826
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4808, metadata !DIExpression()), !dbg !4827
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !4828
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4809, metadata !DIExpression()), !dbg !4828
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4828
  store ptr %0, ptr %__mptr, align 8, !dbg !4828
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4828
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4828
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4828
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !4829
  %2 = load ptr, ptr %tmp, align 8, !dbg !4828
  store ptr %2, ptr %rtc, align 8, !dbg !4827
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf_ptr) #11, !dbg !4830
  call void @llvm.dbg.declare(metadata ptr %buf_ptr, metadata !4811, metadata !DIExpression()), !dbg !4831
  call void @llvm.lifetime.start.p0(i64 4, ptr %adjust) #11, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %adjust, metadata !4812, metadata !DIExpression()), !dbg !4833
  store i32 0, ptr %adjust, align 4, !dbg !4833
  %3 = load ptr, ptr %rtc, align 8, !dbg !4834
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, !dbg !4835
  %call = call i32 @rtc_read_time(ptr noundef %3, ptr noundef %time) #12, !dbg !4836
  %conv = sext i32 %call to i64, !dbg !4836
  store i64 %conv, ptr %retval1, align 8, !dbg !4837
  %4 = load i64, ptr %retval1, align 8, !dbg !4838
  %cmp = icmp slt i64 %4, 0, !dbg !4840
  br i1 %cmp, label %if.then, label %if.end, !dbg !4841

if.then:                                          ; preds = %entry
  %5 = load i64, ptr %retval1, align 8, !dbg !4842
  store i64 %5, ptr %retval, align 8, !dbg !4843
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4843

if.end:                                           ; preds = %entry
  %time3 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, !dbg !4844
  %call4 = call i64 @rtc_tm_to_time64(ptr noundef %time3) #12, !dbg !4845
  store i64 %call4, ptr %now, align 8, !dbg !4846
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !4847
  store ptr %6, ptr %buf_ptr, align 8, !dbg !4848
  %7 = load ptr, ptr %buf_ptr, align 8, !dbg !4849
  %8 = load i8, ptr %7, align 1, !dbg !4851
  %conv5 = zext i8 %8 to i32, !dbg !4851
  %cmp6 = icmp eq i32 %conv5, 43, !dbg !4852
  br i1 %cmp6, label %if.then8, label %if.end15, !dbg !4853

if.then8:                                         ; preds = %if.end
  %9 = load ptr, ptr %buf_ptr, align 8, !dbg !4854
  %incdec.ptr = getelementptr i8, ptr %9, i32 1, !dbg !4854
  store ptr %incdec.ptr, ptr %buf_ptr, align 8, !dbg !4854
  %10 = load ptr, ptr %buf_ptr, align 8, !dbg !4856
  %11 = load i8, ptr %10, align 1, !dbg !4858
  %conv9 = zext i8 %11 to i32, !dbg !4858
  %cmp10 = icmp eq i32 %conv9, 61, !dbg !4859
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !4860

if.then12:                                        ; preds = %if.then8
  %12 = load ptr, ptr %buf_ptr, align 8, !dbg !4861
  %incdec.ptr13 = getelementptr i8, ptr %12, i32 1, !dbg !4861
  store ptr %incdec.ptr13, ptr %buf_ptr, align 8, !dbg !4861
  store i64 1, ptr %push, align 8, !dbg !4863
  br label %if.end14, !dbg !4864

if.else:                                          ; preds = %if.then8
  store i32 1, ptr %adjust, align 4, !dbg !4865
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  br label %if.end15, !dbg !4867

if.end15:                                         ; preds = %if.end14, %if.end
  %13 = load ptr, ptr %buf_ptr, align 8, !dbg !4868
  %call16 = call i32 @kstrtos64(ptr noundef %13, i32 noundef 0, ptr noundef %alarm) #12, !dbg !4869
  %conv17 = sext i32 %call16 to i64, !dbg !4869
  store i64 %conv17, ptr %retval1, align 8, !dbg !4870
  %14 = load i64, ptr %retval1, align 8, !dbg !4871
  %tobool = icmp ne i64 %14, 0, !dbg !4871
  br i1 %tobool, label %if.then18, label %if.end19, !dbg !4873

if.then18:                                        ; preds = %if.end15
  %15 = load i64, ptr %retval1, align 8, !dbg !4874
  store i64 %15, ptr %retval, align 8, !dbg !4875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4875

if.end19:                                         ; preds = %if.end15
  %16 = load i32, ptr %adjust, align 4, !dbg !4876
  %tobool20 = icmp ne i32 %16, 0, !dbg !4876
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4878

if.then21:                                        ; preds = %if.end19
  %17 = load i64, ptr %now, align 8, !dbg !4879
  %18 = load i64, ptr %alarm, align 8, !dbg !4880
  %add = add i64 %18, %17, !dbg !4880
  store i64 %add, ptr %alarm, align 8, !dbg !4880
  br label %if.end22, !dbg !4881

if.end22:                                         ; preds = %if.then21, %if.end19
  %19 = load i64, ptr %alarm, align 8, !dbg !4882
  %20 = load i64, ptr %now, align 8, !dbg !4884
  %cmp23 = icmp sgt i64 %19, %20, !dbg !4885
  br i1 %cmp23, label %if.then26, label %lor.lhs.false, !dbg !4886

lor.lhs.false:                                    ; preds = %if.end22
  %21 = load i64, ptr %push, align 8, !dbg !4887
  %tobool25 = icmp ne i64 %21, 0, !dbg !4887
  br i1 %tobool25, label %if.then26, label %if.else48, !dbg !4888

if.then26:                                        ; preds = %lor.lhs.false, %if.end22
  %22 = load ptr, ptr %rtc, align 8, !dbg !4889
  %call27 = call i32 @rtc_read_alarm(ptr noundef %22, ptr noundef %alm) #12, !dbg !4891
  %conv28 = sext i32 %call27 to i64, !dbg !4891
  store i64 %conv28, ptr %retval1, align 8, !dbg !4892
  %23 = load i64, ptr %retval1, align 8, !dbg !4893
  %cmp29 = icmp slt i64 %23, 0, !dbg !4895
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !4896

if.then31:                                        ; preds = %if.then26
  %24 = load i64, ptr %retval1, align 8, !dbg !4897
  store i64 %24, ptr %retval, align 8, !dbg !4898
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4898

if.end32:                                         ; preds = %if.then26
  %enabled = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 0, !dbg !4899
  %25 = load i8, ptr %enabled, align 4, !dbg !4899
  %tobool33 = icmp ne i8 %25, 0, !dbg !4901
  br i1 %tobool33, label %if.then34, label %if.else42, !dbg !4902

if.then34:                                        ; preds = %if.end32
  %26 = load i64, ptr %push, align 8, !dbg !4903
  %tobool35 = icmp ne i64 %26, 0, !dbg !4903
  br i1 %tobool35, label %if.then36, label %if.else40, !dbg !4906

if.then36:                                        ; preds = %if.then34
  %time37 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, !dbg !4907
  %call38 = call i64 @rtc_tm_to_time64(ptr noundef %time37) #12, !dbg !4909
  store i64 %call38, ptr %push, align 8, !dbg !4910
  %27 = load i64, ptr %push, align 8, !dbg !4911
  %28 = load i64, ptr %alarm, align 8, !dbg !4912
  %add39 = add i64 %28, %27, !dbg !4912
  store i64 %add39, ptr %alarm, align 8, !dbg !4912
  br label %if.end41, !dbg !4913

if.else40:                                        ; preds = %if.then34
  store i64 -16, ptr %retval, align 8, !dbg !4914
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4914

if.end41:                                         ; preds = %if.then36
  br label %if.end46, !dbg !4915

if.else42:                                        ; preds = %if.end32
  %29 = load i64, ptr %push, align 8, !dbg !4916
  %tobool43 = icmp ne i64 %29, 0, !dbg !4916
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !4918

if.then44:                                        ; preds = %if.else42
  store i64 -22, ptr %retval, align 8, !dbg !4919
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4919

if.end45:                                         ; preds = %if.else42
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.end41
  %enabled47 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 0, !dbg !4920
  store i8 1, ptr %enabled47, align 4, !dbg !4921
  br label %if.end51, !dbg !4922

if.else48:                                        ; preds = %lor.lhs.false
  %enabled49 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 0, !dbg !4923
  store i8 0, ptr %enabled49, align 4, !dbg !4925
  %30 = load i64, ptr %now, align 8, !dbg !4926
  %add50 = add i64 %30, 300, !dbg !4927
  store i64 %add50, ptr %alarm, align 8, !dbg !4928
  br label %if.end51

if.end51:                                         ; preds = %if.else48, %if.end46
  %31 = load i64, ptr %alarm, align 8, !dbg !4929
  %time52 = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, !dbg !4930
  call void @rtc_time64_to_tm(i64 noundef %31, ptr noundef %time52) #12, !dbg !4931
  %32 = load ptr, ptr %rtc, align 8, !dbg !4932
  %call53 = call i32 @rtc_set_alarm(ptr noundef %32, ptr noundef %alm) #12, !dbg !4933
  %conv54 = sext i32 %call53 to i64, !dbg !4933
  store i64 %conv54, ptr %retval1, align 8, !dbg !4934
  %33 = load i64, ptr %retval1, align 8, !dbg !4935
  %cmp55 = icmp slt i64 %33, 0, !dbg !4936
  br i1 %cmp55, label %cond.true, label %cond.false, !dbg !4937

cond.true:                                        ; preds = %if.end51
  %34 = load i64, ptr %retval1, align 8, !dbg !4938
  br label %cond.end, !dbg !4937

cond.false:                                       ; preds = %if.end51
  %35 = load i64, ptr %n.addr, align 8, !dbg !4939
  br label %cond.end, !dbg !4937

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %34, %cond.true ], [ %35, %cond.false ], !dbg !4937
  store i64 %cond, ptr %retval, align 8, !dbg !4940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4940

cleanup:                                          ; preds = %cond.end, %if.then44, %if.else40, %if.then31, %if.then18, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %adjust) #11, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf_ptr) #11, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #11, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 40, ptr %alm) #11, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 8, ptr %push) #11, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 8, ptr %alarm) #11, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 8, ptr %now) #11, !dbg !4941
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #11, !dbg !4941
  %36 = load i64, ptr %retval, align 8, !dbg !4941
  ret i64 %36, !dbg !4941
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4942 dso_local i32 @rtc_read_alarm(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4945 dso_local i64 @rtc_tm_to_time64(ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4948 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4952 dso_local i32 @rtc_read_time(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtos64(ptr noundef %s, i32 noundef %base, ptr noundef %res) #3 align 16 !dbg !4955 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4961, metadata !DIExpression()), !dbg !4964
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4962, metadata !DIExpression()), !dbg !4965
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4963, metadata !DIExpression()), !dbg !4966
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4967
  %1 = load i32, ptr %base.addr, align 4, !dbg !4968
  %2 = load ptr, ptr %res.addr, align 8, !dbg !4969
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12, !dbg !4970
  ret i32 %call, !dbg !4971
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4972 dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4975 dso_local i32 @rtc_set_alarm(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4976 dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_can_wakeup(ptr noundef %dev) #3 align 16 !dbg !4979 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4983, metadata !DIExpression()), !dbg !4984
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4985
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !4986
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !4987
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !4987
  %bf.clear = and i16 %bf.load, 1, !dbg !4987
  %bf.cast = zext i16 %bf.clear to i32, !dbg !4987
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !4985
  ret i1 %tobool, !dbg !4988
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !4989 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4997, metadata !DIExpression()), !dbg !5002
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4998, metadata !DIExpression()), !dbg !5003
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #11, !dbg !5004
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4999, metadata !DIExpression()), !dbg !5005
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5006
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5007
  %div = udiv i64 %1, 64, !dbg !5007
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5008
  store ptr %add.ptr, ptr %p, align 8, !dbg !5005
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #11, !dbg !5009
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5000, metadata !DIExpression()), !dbg !5010
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5011
  %rem = urem i64 %2, 64, !dbg !5011
  %shl = shl i64 1, %rem, !dbg !5011
  store i64 %shl, ptr %mask, align 8, !dbg !5010
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !5012
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5001, metadata !DIExpression()), !dbg !5013
  %3 = load ptr, ptr %p, align 8, !dbg !5014
  %4 = load i64, ptr %3, align 8, !dbg !5015
  store i64 %4, ptr %val, align 8, !dbg !5013
  %5 = load i64, ptr %val, align 8, !dbg !5016
  %6 = load i64, ptr %mask, align 8, !dbg !5017
  %and = and i64 %5, %6, !dbg !5018
  %tobool = icmp ne i64 %and, 0, !dbg !5019
  %lnot = xor i1 %tobool, true, !dbg !5019
  %lnot1 = xor i1 %lnot, true, !dbg !5020
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #11, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #11, !dbg !5021
  ret i1 %lnot1, !dbg !5022
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5023 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5026, metadata !DIExpression()), !dbg !5028
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5027, metadata !DIExpression()), !dbg !5029
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5030
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5031
  %div = udiv i64 %1, 64, !dbg !5031
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5032
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !5033
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5034
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5035
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5036
  ret i1 %call, !dbg !5037
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #7 align 16 !dbg !5038 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5046, metadata !DIExpression()), !dbg !5048
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5047, metadata !DIExpression()), !dbg !5049
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5050
  %1 = load i64, ptr %size.addr, align 8, !dbg !5051
  %conv = trunc i64 %1 to i32, !dbg !5051
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !5052
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5053
  %3 = load i64, ptr %size.addr, align 8, !dbg !5053
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !5053
  ret void, !dbg !5054
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5055 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5058, metadata !DIExpression()), !dbg !5060
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5059, metadata !DIExpression()), !dbg !5061
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5062
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5063
  br i1 %1, label %cond.true, label %cond.false, !dbg !5063

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5064
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5065
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !5066
  %conv = zext i1 %call to i32, !dbg !5066
  br label %cond.end, !dbg !5063

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5067
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5068
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !5069
  %conv2 = zext i1 %call1 to i32, !dbg !5069
  br label %cond.end, !dbg !5063

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5063
  %tobool = icmp ne i32 %cond, 0, !dbg !5063
  ret i1 %tobool, !dbg !5070
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5071 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5076, metadata !DIExpression()), !dbg !5078
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5077, metadata !DIExpression()), !dbg !5079
  ret i1 true, !dbg !5080
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5081 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5086, metadata !DIExpression()), !dbg !5089
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5087, metadata !DIExpression()), !dbg !5090
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5088, metadata !DIExpression()), !dbg !5091
  ret void, !dbg !5092
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5093 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5097, metadata !DIExpression()), !dbg !5099
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5098, metadata !DIExpression()), !dbg !5100
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5101
  %and = and i64 %0, 63, !dbg !5102
  %shl = shl i64 1, %and, !dbg !5103
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5104
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5105
  %shr = ashr i64 %2, 6, !dbg !5106
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5104
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5104
  %and1 = and i64 %shl, %3, !dbg !5107
  %cmp = icmp ne i64 %and1, 0, !dbg !5108
  ret i1 %cmp, !dbg !5109
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !5110 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5112, metadata !DIExpression()), !dbg !5115
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5113, metadata !DIExpression()), !dbg !5116
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !5117
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5114, metadata !DIExpression()), !dbg !5118
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5119
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5120
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !5121, !srcloc !5122
  %3 = icmp ult i8 %2, 2, !dbg !5121
  call void @llvm.assume(i1 %3), !dbg !5121
  store i8 %2, ptr %oldbit, align 1, !dbg !5121
  %4 = load i8, ptr %oldbit, align 1, !dbg !5123, !range !5124, !noundef !851
  %tobool = trunc i8 %4 to i1, !dbg !5123
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !5125
  ret i1 %tobool, !dbg !5126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @offset_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5127 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %offset = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5129, metadata !DIExpression()), !dbg !5136
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5130, metadata !DIExpression()), !dbg !5137
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5131, metadata !DIExpression()), !dbg !5138
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #11, !dbg !5139
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5132, metadata !DIExpression()), !dbg !5140
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !5141
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5133, metadata !DIExpression()), !dbg !5142
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5143
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5134, metadata !DIExpression()), !dbg !5143
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5143
  store ptr %0, ptr %__mptr, align 8, !dbg !5143
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5143
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5143
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5144
  %2 = load ptr, ptr %tmp, align 8, !dbg !5143
  %call = call i32 @rtc_read_offset(ptr noundef %2, ptr noundef %offset) #12, !dbg !5145
  %conv = sext i32 %call to i64, !dbg !5145
  store i64 %conv, ptr %retval1, align 8, !dbg !5146
  %3 = load i64, ptr %retval1, align 8, !dbg !5147
  %cmp = icmp eq i64 %3, 0, !dbg !5149
  br i1 %cmp, label %if.then, label %if.end, !dbg !5150

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5151
  %5 = load i64, ptr %offset, align 8, !dbg !5152
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.3, i64 noundef %5) #12, !dbg !5153
  %conv4 = sext i32 %call3 to i64, !dbg !5153
  store i64 %conv4, ptr %retval1, align 8, !dbg !5154
  br label %if.end, !dbg !5155

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %retval1, align 8, !dbg !5156
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #11, !dbg !5157
  ret i64 %6, !dbg !5158
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @offset_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !5159 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %retval1 = alloca i64, align 8
  %offset = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5161, metadata !DIExpression()), !dbg !5170
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5162, metadata !DIExpression()), !dbg !5171
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5163, metadata !DIExpression()), !dbg !5172
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5164, metadata !DIExpression()), !dbg !5173
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #11, !dbg !5174
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5165, metadata !DIExpression()), !dbg !5175
  call void @llvm.lifetime.start.p0(i64 8, ptr %offset) #11, !dbg !5176
  call void @llvm.dbg.declare(metadata ptr %offset, metadata !5166, metadata !DIExpression()), !dbg !5177
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5178
  %call = call i32 @kstrtol(ptr noundef %0, i32 noundef 10, ptr noundef %offset) #12, !dbg !5179
  %conv = sext i32 %call to i64, !dbg !5179
  store i64 %conv, ptr %retval1, align 8, !dbg !5180
  %1 = load i64, ptr %retval1, align 8, !dbg !5181
  %cmp = icmp eq i64 %1, 0, !dbg !5182
  br i1 %cmp, label %if.then, label %if.end, !dbg !5183

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5184
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5167, metadata !DIExpression()), !dbg !5184
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5184
  store ptr %2, ptr %__mptr, align 8, !dbg !5184
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5184
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !5184
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5184
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5185
  %4 = load ptr, ptr %tmp, align 8, !dbg !5184
  %5 = load i64, ptr %offset, align 8, !dbg !5186
  %call3 = call i32 @rtc_set_offset(ptr noundef %4, i64 noundef %5) #12, !dbg !5187
  %conv4 = sext i32 %call3 to i64, !dbg !5187
  store i64 %conv4, ptr %retval1, align 8, !dbg !5188
  br label %if.end, !dbg !5189

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %retval1, align 8, !dbg !5190
  %cmp5 = icmp slt i64 %6, 0, !dbg !5191
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !5192

cond.true:                                        ; preds = %if.end
  %7 = load i64, ptr %retval1, align 8, !dbg !5193
  br label %cond.end, !dbg !5192

cond.false:                                       ; preds = %if.end
  %8 = load i64, ptr %n.addr, align 8, !dbg !5194
  br label %cond.end, !dbg !5192

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !5192
  call void @llvm.lifetime.end.p0(i64 8, ptr %offset) #11, !dbg !5195
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #11, !dbg !5195
  ret i64 %cond, !dbg !5196
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5197 dso_local i32 @rtc_read_offset(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtol(ptr noundef %s, i32 noundef %base, ptr noundef %res) #3 align 16 !dbg !5200 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5204, metadata !DIExpression()), !dbg !5207
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5205, metadata !DIExpression()), !dbg !5208
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5206, metadata !DIExpression()), !dbg !5209
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5210
  %1 = load i32, ptr %base.addr, align 4, !dbg !5212
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5213
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12, !dbg !5214
  ret i32 %call, !dbg !5215
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5216 dso_local i32 @rtc_set_offset(ptr noundef, i64 noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @range_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5219 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5221, metadata !DIExpression()), !dbg !5228
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5222, metadata !DIExpression()), !dbg !5229
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5223, metadata !DIExpression()), !dbg !5230
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5231
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5232
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5224, metadata !DIExpression()), !dbg !5232
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5232
  store ptr %1, ptr %__mptr, align 8, !dbg !5232
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5232
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5232
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5232
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5233
  %3 = load ptr, ptr %tmp, align 8, !dbg !5232
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 21, !dbg !5234
  %4 = load i64, ptr %range_min, align 8, !dbg !5234
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #11, !dbg !5235
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !5226, metadata !DIExpression()), !dbg !5235
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5235
  store ptr %5, ptr %__mptr1, align 8, !dbg !5235
  %6 = load ptr, ptr %__mptr1, align 8, !dbg !5235
  %add.ptr3 = getelementptr i8, ptr %6, i64 0, !dbg !5235
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !5235
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #11, !dbg !5236
  %7 = load ptr, ptr %tmp2, align 8, !dbg !5235
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 22, !dbg !5237
  %8 = load i64, ptr %range_max, align 8, !dbg !5237
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.5, i64 noundef %4, i64 noundef %8) #12, !dbg !5238
  %conv = sext i32 %call to i64, !dbg !5238
  ret i64 %conv, !dbg !5239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @name_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5240 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5242, metadata !DIExpression()), !dbg !5245
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5243, metadata !DIExpression()), !dbg !5246
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5244, metadata !DIExpression()), !dbg !5247
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5248
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5249
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1, !dbg !5250
  %2 = load ptr, ptr %parent, align 8, !dbg !5250
  %call = call ptr @dev_driver_string(ptr noundef %2) #12, !dbg !5251
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5252
  %parent1 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1, !dbg !5253
  %4 = load ptr, ptr %parent1, align 8, !dbg !5253
  %call2 = call ptr @dev_name(ptr noundef %4) #12, !dbg !5254
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.7, ptr noundef %call, ptr noundef %call2) #12, !dbg !5255
  %conv = sext i32 %call3 to i64, !dbg !5255
  ret i64 %conv, !dbg !5256
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5257 dso_local ptr @dev_driver_string(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !5260 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5262, metadata !DIExpression()), !dbg !5263
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5264
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5266
  %1 = load ptr, ptr %init_name, align 8, !dbg !5266
  %tobool = icmp ne ptr %1, null, !dbg !5264
  br i1 %tobool, label %if.then, label %if.end, !dbg !5267

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5268
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !5269
  %3 = load ptr, ptr %init_name1, align 8, !dbg !5269
  store ptr %3, ptr %retval, align 8, !dbg !5270
  br label %return, !dbg !5270

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5271
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5272
  %call = call ptr @kobject_name(ptr noundef %kobj) #12, !dbg !5273
  store ptr %call, ptr %retval, align 8, !dbg !5274
  br label %return, !dbg !5274

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5275
  ret ptr %5, !dbg !5275
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !5276 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5278, metadata !DIExpression()), !dbg !5279
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5280
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !5281
  %1 = load ptr, ptr %name, align 8, !dbg !5281
  ret ptr %1, !dbg !5282
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @date_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5283 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %tm = alloca %struct.rtc_time, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5285, metadata !DIExpression()), !dbg !5292
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5286, metadata !DIExpression()), !dbg !5293
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5287, metadata !DIExpression()), !dbg !5294
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #11, !dbg !5295
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5288, metadata !DIExpression()), !dbg !5296
  call void @llvm.lifetime.start.p0(i64 36, ptr %tm) #11, !dbg !5297
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !5289, metadata !DIExpression()), !dbg !5298
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5299
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5290, metadata !DIExpression()), !dbg !5299
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5299
  store ptr %0, ptr %__mptr, align 8, !dbg !5299
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5299
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5299
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5299
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5300
  %2 = load ptr, ptr %tmp, align 8, !dbg !5299
  %call = call i32 @rtc_read_time(ptr noundef %2, ptr noundef %tm) #12, !dbg !5301
  %conv = sext i32 %call to i64, !dbg !5301
  store i64 %conv, ptr %retval1, align 8, !dbg !5302
  %3 = load i64, ptr %retval1, align 8, !dbg !5303
  %tobool = icmp ne i64 %3, 0, !dbg !5303
  br i1 %tobool, label %if.then, label %if.end, !dbg !5305

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %retval1, align 8, !dbg !5306
  store i64 %4, ptr %retval, align 8, !dbg !5307
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5307

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5308
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.9, ptr noundef %tm) #12, !dbg !5309
  %conv3 = sext i32 %call2 to i64, !dbg !5309
  store i64 %conv3, ptr %retval, align 8, !dbg !5310
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5310

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 36, ptr %tm) #11, !dbg !5311
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #11, !dbg !5311
  %6 = load i64, ptr %retval, align 8, !dbg !5311
  ret i64 %6, !dbg !5311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @time_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5312 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %tm = alloca %struct.rtc_time, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5314, metadata !DIExpression()), !dbg !5321
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5315, metadata !DIExpression()), !dbg !5322
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5316, metadata !DIExpression()), !dbg !5323
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #11, !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5317, metadata !DIExpression()), !dbg !5325
  call void @llvm.lifetime.start.p0(i64 36, ptr %tm) #11, !dbg !5326
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !5318, metadata !DIExpression()), !dbg !5327
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5328
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5319, metadata !DIExpression()), !dbg !5328
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5328
  store ptr %0, ptr %__mptr, align 8, !dbg !5328
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5328
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5328
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5328
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5329
  %2 = load ptr, ptr %tmp, align 8, !dbg !5328
  %call = call i32 @rtc_read_time(ptr noundef %2, ptr noundef %tm) #12, !dbg !5330
  %conv = sext i32 %call to i64, !dbg !5330
  store i64 %conv, ptr %retval1, align 8, !dbg !5331
  %3 = load i64, ptr %retval1, align 8, !dbg !5332
  %tobool = icmp ne i64 %3, 0, !dbg !5332
  br i1 %tobool, label %if.then, label %if.end, !dbg !5334

if.then:                                          ; preds = %entry
  %4 = load i64, ptr %retval1, align 8, !dbg !5335
  store i64 %4, ptr %retval, align 8, !dbg !5336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5336

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5337
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.11, ptr noundef %tm) #12, !dbg !5338
  %conv3 = sext i32 %call2 to i64, !dbg !5338
  store i64 %conv3, ptr %retval, align 8, !dbg !5339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5339

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 36, ptr %tm) #11, !dbg !5340
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #11, !dbg !5340
  %6 = load i64, ptr %retval, align 8, !dbg !5340
  ret i64 %6, !dbg !5340
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @since_epoch_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5341 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %retval1 = alloca i64, align 8
  %tm = alloca %struct.rtc_time, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %time = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5343, metadata !DIExpression()), !dbg !5353
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5344, metadata !DIExpression()), !dbg !5354
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5345, metadata !DIExpression()), !dbg !5355
  call void @llvm.lifetime.start.p0(i64 8, ptr %retval1) #11, !dbg !5356
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !5346, metadata !DIExpression()), !dbg !5357
  call void @llvm.lifetime.start.p0(i64 36, ptr %tm) #11, !dbg !5358
  call void @llvm.dbg.declare(metadata ptr %tm, metadata !5347, metadata !DIExpression()), !dbg !5359
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5360
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5348, metadata !DIExpression()), !dbg !5360
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5360
  store ptr %0, ptr %__mptr, align 8, !dbg !5360
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5360
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5360
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5360
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5361
  %2 = load ptr, ptr %tmp, align 8, !dbg !5360
  %call = call i32 @rtc_read_time(ptr noundef %2, ptr noundef %tm) #12, !dbg !5362
  %conv = sext i32 %call to i64, !dbg !5362
  store i64 %conv, ptr %retval1, align 8, !dbg !5363
  %3 = load i64, ptr %retval1, align 8, !dbg !5364
  %cmp = icmp eq i64 %3, 0, !dbg !5365
  br i1 %cmp, label %if.then, label %if.end, !dbg !5366

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %time) #11, !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %time, metadata !5350, metadata !DIExpression()), !dbg !5368
  %call3 = call i64 @rtc_tm_to_time64(ptr noundef %tm) #12, !dbg !5369
  store i64 %call3, ptr %time, align 8, !dbg !5370
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !5371
  %5 = load i64, ptr %time, align 8, !dbg !5372
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.1, i64 noundef %5) #12, !dbg !5373
  %conv5 = sext i32 %call4 to i64, !dbg !5373
  store i64 %conv5, ptr %retval1, align 8, !dbg !5374
  call void @llvm.lifetime.end.p0(i64 8, ptr %time) #11, !dbg !5375
  br label %if.end, !dbg !5376

if.end:                                           ; preds = %if.then, %entry
  %6 = load i64, ptr %retval1, align 8, !dbg !5377
  call void @llvm.lifetime.end.p0(i64 36, ptr %tm) #11, !dbg !5378
  call void @llvm.lifetime.end.p0(i64 8, ptr %retval1) #11, !dbg !5378
  ret i64 %6, !dbg !5379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_user_freq_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5380 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5382, metadata !DIExpression()), !dbg !5387
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5383, metadata !DIExpression()), !dbg !5388
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5384, metadata !DIExpression()), !dbg !5389
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5390
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5391
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5385, metadata !DIExpression()), !dbg !5391
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5391
  store ptr %1, ptr %__mptr, align 8, !dbg !5391
  %2 = load ptr, ptr %__mptr, align 8, !dbg !5391
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !5391
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5391
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5392
  %3 = load ptr, ptr %tmp, align 8, !dbg !5391
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 12, !dbg !5393
  %4 = load i32, ptr %max_user_freq, align 4, !dbg !5393
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.14, i32 noundef %4) #12, !dbg !5394
  %conv = sext i32 %call to i64, !dbg !5394
  ret i64 %conv, !dbg !5395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_user_freq_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !5396 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %rtc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %val = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5398, metadata !DIExpression()), !dbg !5407
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5399, metadata !DIExpression()), !dbg !5408
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5400, metadata !DIExpression()), !dbg !5409
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5401, metadata !DIExpression()), !dbg !5410
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #11, !dbg !5411
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5402, metadata !DIExpression()), !dbg !5412
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !5413
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5403, metadata !DIExpression()), !dbg !5413
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5413
  store ptr %0, ptr %__mptr, align 8, !dbg !5413
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5413
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5413
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5413
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !5414
  %2 = load ptr, ptr %tmp, align 8, !dbg !5413
  store ptr %2, ptr %rtc, align 8, !dbg !5412
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !5415
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5405, metadata !DIExpression()), !dbg !5416
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !5417
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5406, metadata !DIExpression()), !dbg !5418
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5419
  %call = call i32 @kstrtoul(ptr noundef %3, i32 noundef 0, ptr noundef %val) #12, !dbg !5420
  store i32 %call, ptr %err, align 4, !dbg !5421
  %4 = load i32, ptr %err, align 4, !dbg !5422
  %tobool = icmp ne i32 %4, 0, !dbg !5422
  br i1 %tobool, label %if.then, label %if.end, !dbg !5424

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %err, align 4, !dbg !5425
  %conv = sext i32 %5 to i64, !dbg !5425
  store i64 %conv, ptr %retval, align 8, !dbg !5426
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5426

if.end:                                           ; preds = %entry
  %6 = load i64, ptr %val, align 8, !dbg !5427
  %cmp = icmp uge i64 %6, 4096, !dbg !5429
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !5430

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i64, ptr %val, align 8, !dbg !5431
  %cmp2 = icmp eq i64 %7, 0, !dbg !5432
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !5433

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -22, ptr %retval, align 8, !dbg !5434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5434

if.end5:                                          ; preds = %lor.lhs.false
  %8 = load i64, ptr %val, align 8, !dbg !5435
  %conv6 = trunc i64 %8 to i32, !dbg !5436
  %9 = load ptr, ptr %rtc, align 8, !dbg !5437
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 12, !dbg !5438
  store i32 %conv6, ptr %max_user_freq, align 4, !dbg !5439
  %10 = load i64, ptr %n.addr, align 8, !dbg !5440
  store i64 %10, ptr %retval, align 8, !dbg !5441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5441

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !5442
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #11, !dbg !5442
  %11 = load i64, ptr %retval, align 8, !dbg !5442
  ret i64 %11, !dbg !5442
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #3 align 16 !dbg !5443 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !5447, metadata !DIExpression()), !dbg !5450
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !5448, metadata !DIExpression()), !dbg !5451
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5449, metadata !DIExpression()), !dbg !5452
  %0 = load ptr, ptr %s.addr, align 8, !dbg !5453
  %1 = load i32, ptr %base.addr, align 4, !dbg !5455
  %2 = load ptr, ptr %res.addr, align 8, !dbg !5456
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12, !dbg !5457
  ret i32 %call, !dbg !5458
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5459 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hctosys_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5462 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5464, metadata !DIExpression()), !dbg !5467
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5465, metadata !DIExpression()), !dbg !5468
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5466, metadata !DIExpression()), !dbg !5469
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5470
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.16) #12, !dbg !5471
  %conv = sext i32 %call to i64, !dbg !5471
  ret i64 %conv, !dbg !5472
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kmalloc_array(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5473 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5475, metadata !DIExpression()), !dbg !5480
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !5476, metadata !DIExpression()), !dbg !5481
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5477, metadata !DIExpression()), !dbg !5482
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5478, metadata !DIExpression()), !dbg !5483
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #11, !dbg !5484
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !5479, metadata !DIExpression()), !dbg !5485
  %0 = load i64, ptr %n.addr, align 8, !dbg !5486
  %1 = load i64, ptr %size.addr, align 8, !dbg !5486
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !5486
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !5486
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !5486
  store i64 %4, ptr %bytes, align 8, !dbg !5486
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #12, !dbg !5486
  %lnot = xor i1 %call, true, !dbg !5486
  %lnot1 = xor i1 %lnot, true, !dbg !5486
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5486
  %conv = sext i32 %lnot.ext to i64, !dbg !5486
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5486
  %tobool = icmp ne i64 %expval, 0, !dbg !5486
  br i1 %tobool, label %if.then, label %if.end, !dbg !5488

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5489
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5489

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !5490
  %6 = load i64, ptr %bytes, align 8, !dbg !5491
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5492
  %call2 = call noalias ptr @devm_kmalloc(ptr noundef %5, i64 noundef %6, i32 noundef %7) #13, !dbg !5493
  store ptr %call2, ptr %retval, align 8, !dbg !5494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5494

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #11, !dbg !5495
  %8 = load ptr, ptr %retval, align 8, !dbg !5495
  ret ptr %8, !dbg !5495
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #3 align 16 !dbg !5496 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !5501, metadata !DIExpression()), !dbg !5502
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !5503, !range !5124, !noundef !851
  %tobool = trunc i8 %0 to i1, !dbg !5503
  %lnot = xor i1 %tobool, true, !dbg !5503
  %lnot1 = xor i1 %lnot, true, !dbg !5503
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5503
  %conv = sext i32 %lnot.ext to i64, !dbg !5503
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5503
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5503
  ret i1 %tobool2, !dbg !5504
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !5505 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508}
!llvm.ident = !{!4509}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rtc_attr_groups", scope: !2, file: !3, line: 306, type: !4500, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/rtc/.sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/rtc/rtc-core\22 -D KBUILD_BASENAME=\22sysfs\22 -D KBUILD_MODNAME=\22rtc_core\22 -D __KBUILD_MODNAME=kmod_rtc_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/rtc/sysfs.ll drivers/rtc/sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !122, globals: !4410, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/rtc/sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d0366d051dfd16b335c2a3d95a0b2a3")
!4 = !{!5, !12, !20, !27, !32, !38, !43, !49, !56, !63, !69, !76, !84, !92, !101, !106, !111, !117}
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
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !50, line: 15, baseType: !7, size: 32, elements: !51)
!50 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!51 = !{!52, !53, !54, !55}
!52 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!53 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!54 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!55 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
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
!122 = !{!123, !125, !126, !4283, !4405, !4406, !913, !4408, !85, !4409}
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !124, line: 154, baseType: !7)
!124 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !128)
!128 = !{!129, !3938, !3939, !3942, !3943, !3996, !4066, !4067, !4068, !4069, !4070, !4077, !4169, !4182, !4192, !4196, !4198, !4199, !4200, !4204, !4211, !4212, !4215, !4218, !4222, !4225, !4226, !4227, !4228, !4229, !4230, !4260, !4261, !4262, !4265, !4268, !4277, !4278, !4279, !4280, !4281, !4282}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !127, file: !70, line: 706, baseType: !130, size: 512)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !131, line: 64, size: 512, elements: !132)
!131 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!132 = !{!133, !137, !143, !145, !234, !3837, !3928, !3933, !3934, !3935, !3936, !3937}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !131, line: 65, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !130, file: !131, line: 66, baseType: !138, size: 128, offset: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !124, line: 190, size: 128, elements: !139)
!139 = !{!140, !142}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !124, line: 191, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !138, file: !124, line: 191, baseType: !141, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !130, file: !131, line: 67, baseType: !144, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !130, file: !131, line: 68, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !131, line: 168, size: 768, elements: !148)
!148 = !{!149, !150, !193, !194}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !147, file: !131, line: 169, baseType: !138, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !147, file: !131, line: 170, baseType: !151, size: 32, offset: 128)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !152, line: 29, baseType: !153)
!152 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !152, line: 17, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, scope: !153, file: !152, line: 18, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !153, file: !152, line: 18, size: 32, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !156, file: !152, line: 19, baseType: !159, size: 32)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !160, line: 14, size: 32, elements: !161)
!160 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !159, file: !160, line: 15, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !164, line: 44, baseType: !165)
!164 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !164, line: 14, size: 32, elements: !166)
!166 = !{!167}
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !164, line: 15, baseType: !168, size: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !165, file: !164, line: 15, size: 32, elements: !169)
!169 = !{!170, !175, !185}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !168, file: !164, line: 16, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !124, line: 174, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 172, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !172, file: !124, line: 173, baseType: !85, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !164, line: 24, baseType: !176, size: 16)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !168, file: !164, line: 24, size: 16, elements: !177)
!177 = !{!178, !184}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !176, file: !164, line: 25, baseType: !179, size: 8)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !180, line: 17, baseType: !181)
!180 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !182, line: 21, baseType: !183)
!182 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!183 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !176, file: !164, line: 26, baseType: !179, size: 8, offset: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !164, line: 28, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !168, file: !164, line: 28, size: 32, elements: !187)
!187 = !{!188, !192}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !186, file: !164, line: 29, baseType: !189, size: 16)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !180, line: 19, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !182, line: 24, baseType: !191)
!191 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !186, file: !164, line: 30, baseType: !189, size: 16, offset: 16)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !147, file: !131, line: 171, baseType: !130, size: 512, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !147, file: !131, line: 172, baseType: !195, size: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !131, line: 133, size: 192, elements: !198)
!198 = !{!199, !206, !211}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !197, file: !131, line: 134, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!85, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !131, line: 135, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!134, !204}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !197, file: !131, line: 136, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!85, !204, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !131, line: 125, size: 20736, elements: !218)
!218 = !{!219, !224, !228, !229, !233}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !217, file: !131, line: 126, baseType: !220, size: 192)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 192, elements: !222)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!222 = !{!223}
!223 = !DISubrange(count: 3)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !217, file: !131, line: 127, baseType: !225, size: 4096, offset: 192)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 4096, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !217, file: !131, line: 128, baseType: !85, size: 32, offset: 4288)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !217, file: !131, line: 129, baseType: !230, size: 16384, offset: 4320)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 16384, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 2048)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !217, file: !131, line: 130, baseType: !85, size: 32, offset: 20704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !130, file: !131, line: 69, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !131, line: 116, size: 384, elements: !238)
!238 = !{!239, !243, !272, !3799, !3827, !3831}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !237, file: !131, line: 117, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !144}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !237, file: !131, line: 118, baseType: !244, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !247, line: 254, size: 128, elements: !248)
!247 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!248 = !{!249, !264}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !246, file: !247, line: 255, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !144, !258, !221}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !124, line: 66, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !255, line: 73, baseType: !256)
!255 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !255, line: 15, baseType: !257)
!257 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !247, line: 30, size: 128, elements: !260)
!260 = !{!261, !262}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !259, file: !247, line: 31, baseType: !134, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !259, file: !247, line: 32, baseType: !263, size: 16, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !124, line: 24, baseType: !191)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !246, file: !247, line: 256, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!253, !144, !258, !134, !268}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 61, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !255, line: 72, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !255, line: 16, baseType: !271)
!271 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !237, file: !131, line: 119, baseType: !273, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !247, line: 84, size: 320, elements: !277)
!277 = !{!278, !279, !283, !3795, !3797}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !276, file: !247, line: 85, baseType: !134, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !276, file: !247, line: 86, baseType: !280, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!263, !144, !258, !85}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !276, file: !247, line: 88, baseType: !284, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!263, !144, !287, !85}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !247, line: 175, size: 512, elements: !289)
!289 = !{!290, !291, !292, !293, !3786, !3790, !3791}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !288, file: !247, line: 176, baseType: !259, size: 128)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !288, file: !247, line: 177, baseType: !268, size: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !288, file: !247, line: 178, baseType: !125, size: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !288, file: !247, line: 179, baseType: !294, size: 64, offset: 256)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!297}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !28, line: 472, size: 1536, align: 64, elements: !299)
!299 = !{!300, !3620, !3621, !3622, !3623, !3624, !3625, !3626, !3627, !3780, !3781, !3782, !3783, !3784, !3785}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !298, file: !28, line: 473, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !28, line: 641, size: 4800, elements: !303)
!303 = !{!304, !305, !306, !314, !315, !322, !323, !326, !327, !3550, !3551, !3552, !3553, !3554, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3583, !3584, !3585, !3586, !3587, !3588, !3589, !3594, !3597, !3598, !3599, !3616, !3617, !3618, !3619}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !302, file: !28, line: 642, baseType: !263, size: 16)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !302, file: !28, line: 643, baseType: !191, size: 16, offset: 16)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !302, file: !28, line: 644, baseType: !307, size: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !308, line: 23, baseType: !309)
!308 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 21, size: 32, elements: !310)
!310 = !{!311}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !309, file: !308, line: 22, baseType: !312, size: 32)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !124, line: 37, baseType: !313)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !255, line: 49, baseType: !7)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !302, file: !28, line: 645, baseType: !138, size: 128, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !302, file: !28, line: 646, baseType: !316, size: 32, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !308, line: 28, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !308, line: 26, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !317, file: !308, line: 27, baseType: !320, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !124, line: 38, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !255, line: 50, baseType: !7)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !302, file: !28, line: 647, baseType: !7, size: 32, offset: 224)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !302, file: !28, line: 650, baseType: !324, size: 64, offset: 256)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !28, line: 607, flags: DIFlagFwdDecl)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !302, file: !28, line: 651, baseType: !324, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !302, file: !28, line: 654, baseType: !328, size: 64, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !330)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !28, line: 1966, size: 2048, align: 512, elements: !331)
!331 = !{!332, !3378, !3388, !3392, !3396, !3400, !3404, !3408, !3412, !3416, !3420, !3421, !3425, !3429, !3466, !3495, !3499, !3505, !3509, !3513, !3517, !3521, !3525, !3531, !3535}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !330, file: !28, line: 1967, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336, !301, !336, !7}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !338, line: 82, size: 1536, elements: !339)
!338 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!339 = !{!340, !341, !351, !359, !360, !380, !381, !385, !398, !3362, !3363, !3364, !3365, !3370, !3371, !3372}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !337, file: !338, line: 84, baseType: !7, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !337, file: !338, line: 85, baseType: !342, size: 32, offset: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !343, line: 275, baseType: !344)
!343 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !343, line: 275, size: 32, elements: !345)
!345 = !{!346}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !344, file: !343, line: 275, baseType: !347, size: 32)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !343, line: 69, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !343, line: 64, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !348, file: !343, line: 65, baseType: !7, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !337, file: !338, line: 86, baseType: !352, size: 128, offset: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !353, line: 38, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !353, line: 39, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !352, file: !353, line: 39, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !337, file: !338, line: 87, baseType: !336, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !337, file: !338, line: 88, baseType: !361, size: 128, offset: 256)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !338, line: 49, size: 128, elements: !362)
!362 = !{!363, !377}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !338, line: 50, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !338, line: 50, size: 64, elements: !365)
!365 = !{!366, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !338, line: 51, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !338, line: 51, size: 64, elements: !368)
!368 = !{!369, !372}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !367, file: !338, line: 52, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !180, line: 21, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !182, line: 27, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !367, file: !338, line: 52, baseType: !370, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !364, file: !338, line: 54, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !180, line: 23, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !182, line: 31, baseType: !376)
!376 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !361, file: !338, line: 56, baseType: !378, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !337, file: !338, line: 89, baseType: !301, size: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !337, file: !338, line: 91, baseType: !382, size: 256, offset: 448)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 256, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !337, file: !338, line: 94, baseType: !386, size: 64, offset: 704)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !387, line: 25, size: 64, elements: !388)
!387 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !387, line: 26, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 26, size: 64, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !390, file: !387, line: 28, baseType: !375, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, scope: !390, file: !387, line: 30, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !390, file: !387, line: 30, size: 64, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !394, file: !387, line: 31, baseType: !151, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !394, file: !387, line: 32, baseType: !85, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !337, file: !338, line: 95, baseType: !399, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !338, line: 128, size: 1024, align: 512, elements: !402)
!402 = !{!403, !407, !408, !415, !421, !425, !429, !433, !434, !438, !442, !3352, !3356}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !401, file: !338, line: 129, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = !DISubroutineType(types: !406)
!406 = !{!85, !336, !7}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !401, file: !338, line: 130, baseType: !404, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !401, file: !338, line: 131, baseType: !409, size: 64, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!85, !412, !414}
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !401, file: !338, line: 132, baseType: !416, size: 64, offset: 192)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!85, !412, !7, !134, !419}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !401, file: !338, line: 134, baseType: !422, size: 64, offset: 256)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{!85, !412}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !401, file: !338, line: 135, baseType: !426, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!85, !336}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !401, file: !338, line: 136, baseType: !430, size: 64, offset: 384)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !336}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !401, file: !338, line: 137, baseType: !430, size: 64, offset: 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !401, file: !338, line: 138, baseType: !435, size: 64, offset: 512)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{null, !336, !301}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !401, file: !338, line: 139, baseType: !439, size: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!221, !336, !221, !85}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !401, file: !338, line: 140, baseType: !443, size: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!446, !3351}
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !448, line: 70, size: 256, elements: !449)
!448 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!449 = !{!450, !451, !3347, !3348}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !447, file: !448, line: 71, baseType: !336, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !447, file: !448, line: 72, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !28, line: 1190, size: 10752, elements: !454)
!454 = !{!455, !456, !459, !460, !461, !465, !945, !1807, !1847, !1932, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1949, !1953, !1954, !1957, !1960, !1963, !1966, !1967, !1968, !2009, !3280, !3281, !3282, !3283, !3284, !3285, !3288, !3290, !3297, !3298, !3299, !3300, !3301, !3316, !3317, !3318, !3319, !3320, !3321, !3322, !3323, !3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !453, file: !28, line: 1191, baseType: !138, size: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !453, file: !28, line: 1192, baseType: !457, size: 32, offset: 128)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !124, line: 21, baseType: !458)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !124, line: 18, baseType: !370)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !453, file: !28, line: 1193, baseType: !183, size: 8, offset: 160)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !453, file: !28, line: 1194, baseType: !271, size: 64, offset: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !453, file: !28, line: 1195, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !124, line: 52, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !255, line: 88, baseType: !464)
!464 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !453, file: !28, line: 1196, baseType: !466, size: 64, offset: 320)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !28, line: 2366, size: 576, elements: !468)
!468 = !{!469, !470, !471, !478, !482, !486, !490, !930, !931, !935, !937, !938, !939, !941, !942, !943, !944}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !28, line: 2367, baseType: !134, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !467, file: !28, line: 2368, baseType: !85, size: 32, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !467, file: !28, line: 2376, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!85, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !477, line: 32, flags: DIFlagFwdDecl)
!477 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!478 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !467, file: !28, line: 2377, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !28, line: 75, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !467, file: !28, line: 2378, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!336, !466, !85, !134, !125}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !467, file: !28, line: 2380, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !452}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !467, file: !28, line: 2381, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !21, line: 402, size: 9216, align: 512, elements: !493)
!493 = !{!494, !495, !496, !500, !522, !548, !549, !550, !551, !555, !560, !561, !581, !637, !638, !639, !640, !641, !644, !645, !646, !654, !658, !685, !706, !707, !708, !709, !718, !741, !742, !745, !748, !749, !750, !751, !752, !753, !754, !759, !760, !888, !896, !897, !898, !900, !904, !905, !909, !910, !911, !912, !914, !915, !916, !923, !924, !925, !929}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !492, file: !21, line: 403, baseType: !20, size: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !492, file: !21, line: 406, baseType: !138, size: 128, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !21, line: 409, baseType: !497, size: 448, offset: 192)
!497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 448, elements: !498)
!498 = !{!499}
!499 = !DISubrange(count: 56)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !492, file: !21, line: 417, baseType: !501, size: 768, offset: 640)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !21, line: 45, size: 768, elements: !502)
!502 = !{!503, !504, !505, !506, !509}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !501, file: !21, line: 46, baseType: !130, size: 512)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !501, file: !21, line: 47, baseType: !491, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !501, file: !21, line: 48, baseType: !144, size: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !501, file: !21, line: 49, baseType: !507, size: 64, offset: 640)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !21, line: 49, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !501, file: !21, line: 50, baseType: !510, size: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !512, line: 26, size: 256, elements: !513)
!512 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!513 = !{!514, !515}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !511, file: !512, line: 27, baseType: !7, size: 32)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !511, file: !512, line: 28, baseType: !516, size: 192, offset: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !517, line: 43, size: 192, elements: !518)
!517 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!518 = !{!519, !521}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !516, file: !517, line: 44, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !160, line: 23, baseType: !159)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !516, file: !517, line: 45, baseType: !138, size: 128, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !492, file: !21, line: 418, baseType: !523, size: 64, offset: 1408)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !21, line: 53, size: 448, elements: !525)
!525 = !{!526, !527, !532, !536, !540, !544}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !524, file: !21, line: 54, baseType: !259, size: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !524, file: !21, line: 55, baseType: !528, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DISubroutineType(types: !530)
!530 = !{!253, !523, !531, !221}
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !524, file: !21, line: 57, baseType: !533, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!253, !523, !531, !134, !268}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !524, file: !21, line: 59, baseType: !537, size: 64, offset: 256)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !491, !134}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !524, file: !21, line: 60, baseType: !541, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{!85, !491}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !524, file: !21, line: 61, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !491}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !492, file: !21, line: 419, baseType: !134, size: 64, offset: 1472)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !492, file: !21, line: 420, baseType: !134, size: 64, offset: 1536)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !492, file: !21, line: 421, baseType: !144, size: 64, offset: 1600)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !492, file: !21, line: 424, baseType: !552, size: 64, offset: 1664)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !554)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !21, line: 424, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !492, file: !21, line: 425, baseType: !556, size: 64, offset: 1728)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !180, line: 20, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !182, line: 26, baseType: !85)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !492, file: !21, line: 426, baseType: !7, size: 32, offset: 1792)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !492, file: !21, line: 435, baseType: !562, size: 256, offset: 1856)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !563, line: 66, size: 256, elements: !564)
!563 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!564 = !{!565, !574, !575, !580}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !562, file: !563, line: 67, baseType: !566, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !567, line: 13, baseType: !568)
!567 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !124, line: 181, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !124, line: 179, size: 64, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !569, file: !124, line: 180, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !180, line: 22, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !182, line: 30, baseType: !464)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !562, file: !563, line: 68, baseType: !520, size: 32, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !562, file: !563, line: 70, baseType: !576, size: 32, offset: 96)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !577, line: 15, size: 32, elements: !578)
!577 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !576, file: !577, line: 20, baseType: !171, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !562, file: !563, line: 72, baseType: !138, size: 128, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !492, file: !21, line: 437, baseType: !582, size: 64, offset: 2112)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !584, line: 69, size: 320, elements: !585)
!584 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!585 = !{!586, !587, !588, !608, !610, !614, !615}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !584, line: 70, baseType: !134, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !583, file: !584, line: 71, baseType: !491, size: 64, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !583, file: !584, line: 72, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !584, line: 47, size: 256, elements: !592)
!592 = !{!593, !594, !600, !604}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !591, file: !584, line: 49, baseType: !7, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !591, file: !584, line: 51, baseType: !595, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!85, !134, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !583)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !591, file: !584, line: 53, baseType: !601, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!85, !221, !598}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !591, file: !584, line: 55, baseType: !605, size: 64, offset: 192)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !125}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !583, file: !584, line: 73, baseType: !609, size: 16, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !583, file: !584, line: 74, baseType: !611, size: 8, offset: 208)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !180, line: 16, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !182, line: 20, baseType: !613)
!613 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !584, line: 75, baseType: !179, size: 8, offset: 216)
!615 = !DIDerivedType(tag: DW_TAG_member, scope: !583, file: !584, line: 76, baseType: !616, size: 64, offset: 256)
!616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !583, file: !584, line: 76, size: 64, elements: !617)
!617 = !{!618, !619, !626}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !616, file: !584, line: 77, baseType: !125, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !616, file: !584, line: 78, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !584, line: 86, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !622, file: !584, line: 87, baseType: !7, size: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !622, file: !584, line: 88, baseType: !221, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !616, file: !584, line: 79, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !584, line: 92, size: 256, elements: !630)
!630 = !{!631, !632, !633, !635, !636}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !629, file: !584, line: 94, baseType: !7, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !629, file: !584, line: 95, baseType: !7, size: 32, offset: 32)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !629, file: !584, line: 96, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !629, file: !584, line: 97, baseType: !589, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !629, file: !584, line: 98, baseType: !125, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !492, file: !21, line: 438, baseType: !7, size: 32, offset: 2176)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !492, file: !21, line: 441, baseType: !7, size: 32, offset: 2208)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !492, file: !21, line: 442, baseType: !552, size: 64, offset: 2240)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !492, file: !21, line: 443, baseType: !556, size: 64, offset: 2304)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !492, file: !21, line: 444, baseType: !642, size: 8, offset: 2368)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !124, line: 35, baseType: !643)
!643 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !492, file: !21, line: 451, baseType: !642, size: 8, offset: 2376)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !492, file: !21, line: 454, baseType: !7, size: 32, offset: 2400)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !492, file: !21, line: 455, baseType: !647, size: 64, offset: 2432)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !649, line: 23, size: 96, elements: !650)
!649 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!650 = !{!651, !652, !653}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !648, file: !649, line: 24, baseType: !85, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !648, file: !649, line: 24, baseType: !85, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !648, file: !649, line: 24, baseType: !85, size: 32, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !492, file: !21, line: 458, baseType: !655, size: 64, offset: 2496)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!85}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !492, file: !21, line: 460, baseType: !659, size: 4032, align: 512, offset: 2560)
!659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !660, size: 4032, elements: !683)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !21, line: 362, size: 576, elements: !661)
!661 = !{!662, !663, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !660, file: !21, line: 363, baseType: !125, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !660, file: !21, line: 364, baseType: !7, size: 32, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !660, file: !21, line: 367, baseType: !665, size: 448, offset: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !21, line: 319, size: 448, elements: !666)
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !665, file: !21, line: 320, baseType: !491, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !665, file: !21, line: 321, baseType: !669, size: 384, offset: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !670, line: 40, size: 384, elements: !671)
!670 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !669, file: !670, line: 41, baseType: !673, size: 384, align: 64)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 384, align: 64, elements: !681)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !675, line: 5, size: 192, align: 64, elements: !676)
!675 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!676 = !{!677, !678, !680}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !674, file: !675, line: 6, baseType: !271, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !674, file: !675, line: 7, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !674, file: !675, line: 8, baseType: !679, size: 64, offset: 128)
!681 = !{!682}
!682 = !DISubrange(count: 2)
!683 = !{!684}
!684 = !DISubrange(count: 7)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !492, file: !21, line: 463, baseType: !686, size: 192, offset: 6592)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !687, line: 8, size: 192, elements: !688)
!687 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!688 = !{!689, !690, !692}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !686, file: !687, line: 10, baseType: !7, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !686, file: !687, line: 11, baseType: !691, size: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !686, file: !687, line: 12, baseType: !693, size: 64, offset: 128)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !695, line: 59, size: 48, elements: !696)
!695 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!696 = !{!697, !701, !702, !703, !704, !705}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !694, file: !695, line: 60, baseType: !698, size: 16)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !180, line: 18, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !182, line: 23, baseType: !700)
!700 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !694, file: !695, line: 61, baseType: !698, size: 16, offset: 16)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !694, file: !695, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !694, file: !695, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !694, file: !695, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !694, file: !695, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !492, file: !21, line: 465, baseType: !271, size: 64, offset: 6784)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !492, file: !21, line: 469, baseType: !7, size: 32, offset: 6848)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !492, file: !21, line: 470, baseType: !138, size: 128, offset: 6912)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !492, file: !21, line: 471, baseType: !710, size: 64, offset: 7040)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !712, line: 33, size: 96, elements: !713)
!712 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!713 = !{!714, !715, !716, !717}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !711, file: !712, line: 37, baseType: !85, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !711, file: !712, line: 43, baseType: !85, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !711, file: !712, line: 45, baseType: !191, size: 16, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !711, file: !712, line: 47, baseType: !191, size: 16, offset: 80)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !492, file: !21, line: 476, baseType: !719, size: 64, offset: 7104)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !21, line: 378, size: 256, elements: !721)
!721 = !{!722, !738, !739, !740}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !720, file: !21, line: 379, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !725, line: 204, baseType: !726)
!725 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !725, line: 197, size: 192, elements: !727)
!727 = !{!728, !730, !731, !732, !734, !736}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !726, file: !725, line: 198, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !725, line: 21, baseType: !371)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !726, file: !725, line: 199, baseType: !183, size: 8, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !726, file: !725, line: 200, baseType: !183, size: 8, offset: 40)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !726, file: !725, line: 201, baseType: !733, size: 16, offset: 48)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !725, line: 17, baseType: !190)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !726, file: !725, line: 202, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !725, line: 16, baseType: !375)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !726, file: !725, line: 203, baseType: !737, size: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !725, line: 22, baseType: !375)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !720, file: !21, line: 380, baseType: !7, size: 32, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !720, file: !21, line: 381, baseType: !221, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !720, file: !21, line: 382, baseType: !221, size: 64, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !492, file: !21, line: 477, baseType: !720, size: 256, offset: 7168)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !492, file: !21, line: 480, baseType: !743, size: 64, offset: 7424)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !21, line: 480, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !492, file: !21, line: 483, baseType: !746, size: 64, offset: 7488)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !21, line: 483, flags: DIFlagFwdDecl)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !492, file: !21, line: 488, baseType: !221, size: 64, offset: 7552)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !492, file: !21, line: 492, baseType: !125, size: 64, offset: 7616)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !492, file: !21, line: 493, baseType: !7, size: 32, offset: 7680)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !492, file: !21, line: 495, baseType: !125, size: 64, offset: 7744)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !492, file: !21, line: 496, baseType: !7, size: 32, offset: 7808)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !492, file: !21, line: 499, baseType: !7, size: 32, offset: 7840)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !492, file: !21, line: 500, baseType: !755, size: 64, offset: 7872)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !757, line: 45, baseType: !758)
!757 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !492, file: !21, line: 503, baseType: !7, size: 32, offset: 7936)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !492, file: !21, line: 504, baseType: !761, size: 64, offset: 8000)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !764, line: 96, size: 192, elements: !765)
!764 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!765 = !{!766, !767, !848, !852}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !763, file: !764, line: 97, baseType: !7, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !763, file: !764, line: 98, baseType: !768, size: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !764, line: 24, size: 3072, elements: !770)
!770 = !{!771, !773, !774, !775, !776, !800, !801, !802, !803, !821, !833, !834, !845, !846, !847}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !769, file: !764, line: 26, baseType: !772, size: 128)
!772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !566, size: 128, elements: !681)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !769, file: !764, line: 27, baseType: !772, size: 128, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !769, file: !764, line: 28, baseType: !85, size: 32, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !769, file: !764, line: 31, baseType: !151, size: 32, align: 512, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !769, file: !764, line: 32, baseType: !777, size: 960, offset: 576)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !778, line: 206, size: 960, elements: !779)
!778 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!779 = !{!780, !789, !794, !796, !797, !799}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !777, file: !778, line: 207, baseType: !781, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !124, line: 232, size: 128, align: 64, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !782, file: !124, line: 233, baseType: !781, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !782, file: !124, line: 234, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{null, !781}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !777, file: !778, line: 208, baseType: !790, size: 256, offset: 64)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !791, size: 256, elements: !792)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!792 = !{!793}
!793 = !DISubrange(count: 4)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !777, file: !778, line: 209, baseType: !795, size: 256, offset: 320)
!795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 256, elements: !792)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !777, file: !778, line: 213, baseType: !257, size: 64, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !777, file: !778, line: 215, baseType: !798, size: 256, offset: 640)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 256, elements: !792)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !778, line: 216, baseType: !179, size: 8, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !769, file: !764, line: 33, baseType: !271, size: 64, offset: 1536)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !769, file: !764, line: 34, baseType: !271, size: 64, offset: 1600)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !769, file: !764, line: 35, baseType: !642, size: 8, offset: 1664)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !769, file: !764, line: 36, baseType: !804, size: 320, offset: 1728)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !805, line: 11, size: 320, elements: !806)
!805 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!806 = !{!807, !814, !815, !820}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !804, file: !805, line: 16, baseType: !808, size: 128)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !124, line: 198, size: 128, elements: !809)
!809 = !{!810, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !808, file: !124, line: 199, baseType: !811, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !808, file: !124, line: 199, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !804, file: !805, line: 17, baseType: !271, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !804, file: !805, line: 18, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !819}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !804, file: !805, line: 19, baseType: !370, size: 32, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !769, file: !764, line: 37, baseType: !822, size: 256, offset: 2048)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !823, line: 98, size: 256, elements: !824)
!823 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!824 = !{!825, !826, !827}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !822, file: !823, line: 99, baseType: !566, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !822, file: !823, line: 100, baseType: !138, size: 128, offset: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !822, file: !823, line: 101, baseType: !828, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !823, line: 21, baseType: !829)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !832}
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !769, file: !764, line: 38, baseType: !782, size: 128, align: 64, offset: 2304)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !769, file: !764, line: 39, baseType: !835, size: 64, offset: 2432)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !764, line: 49, size: 768, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !836, file: !764, line: 50, baseType: !151, size: 32)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !836, file: !764, line: 51, baseType: !795, size: 256, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !836, file: !764, line: 53, baseType: !795, size: 256, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !836, file: !764, line: 54, baseType: !271, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !836, file: !764, line: 55, baseType: !835, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !836, file: !764, line: 56, baseType: !85, size: 32, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !836, file: !764, line: 57, baseType: !85, size: 32, offset: 736)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !769, file: !764, line: 40, baseType: !271, size: 64, offset: 2496)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !769, file: !764, line: 42, baseType: !85, size: 32, offset: 2560)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !769, file: !764, line: 43, baseType: !762, size: 64, offset: 2624)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !763, file: !764, line: 99, baseType: !849, offset: 128)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !850, line: 211, elements: !851)
!850 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!851 = !{}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !763, file: !764, line: 100, baseType: !853, size: 64, offset: 128)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !764, line: 63, size: 3008, elements: !855)
!855 = !{!856, !857, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !887}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !854, file: !764, line: 64, baseType: !835, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !854, file: !764, line: 65, baseType: !858, size: 192, offset: 64)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 192, elements: !222)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !854, file: !764, line: 67, baseType: !85, size: 32, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !854, file: !764, line: 68, baseType: !562, size: 256, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !854, file: !764, line: 69, baseType: !151, size: 32, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !854, file: !764, line: 70, baseType: !562, size: 256, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !854, file: !764, line: 71, baseType: !271, size: 64, offset: 896)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !854, file: !764, line: 72, baseType: !271, size: 64, offset: 960)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !854, file: !764, line: 73, baseType: !271, size: 64, offset: 1024)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !854, file: !764, line: 74, baseType: !271, size: 64, offset: 1088)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !854, file: !764, line: 75, baseType: !271, size: 64, offset: 1152)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !854, file: !764, line: 76, baseType: !271, size: 64, offset: 1216)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !854, file: !764, line: 77, baseType: !271, size: 64, offset: 1280)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !854, file: !764, line: 78, baseType: !271, size: 64, offset: 1344)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !854, file: !764, line: 79, baseType: !642, size: 8, offset: 1408)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !854, file: !764, line: 80, baseType: !271, size: 64, offset: 1472)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !854, file: !764, line: 81, baseType: !562, size: 256, offset: 1536)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !854, file: !764, line: 82, baseType: !511, size: 256, offset: 1792)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !854, file: !764, line: 84, baseType: !171, size: 32, offset: 2048)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !854, file: !764, line: 87, baseType: !271, size: 64, offset: 2112)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !854, file: !764, line: 88, baseType: !271, size: 64, offset: 2176)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !854, file: !764, line: 89, baseType: !879, size: 704, offset: 2240)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !823, line: 111, size: 704, elements: !880)
!880 = !{!881, !882, !883, !886}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !879, file: !823, line: 112, baseType: !822, size: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !879, file: !823, line: 113, baseType: !804, size: 320, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !879, file: !823, line: 116, baseType: !884, size: 64, offset: 576)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !823, line: 18, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !879, file: !823, line: 117, baseType: !85, size: 32, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !854, file: !764, line: 90, baseType: !762, size: 64, offset: 2944)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !492, file: !21, line: 515, baseType: !889, size: 64, offset: 8064)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !891, line: 117, size: 128, elements: !892)
!891 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!892 = !{!893, !894, !895}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !890, file: !891, line: 118, baseType: !558, size: 32)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !890, file: !891, line: 119, baseType: !558, size: 32, offset: 32)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !890, file: !891, line: 120, baseType: !257, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !492, file: !21, line: 516, baseType: !7, size: 32, offset: 8128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !492, file: !21, line: 519, baseType: !7, size: 32, offset: 8160)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !492, file: !21, line: 520, baseType: !899, size: 64, offset: 8192)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !492, file: !21, line: 523, baseType: !901, size: 64, offset: 8256)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !21, line: 523, flags: DIFlagFwdDecl)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !492, file: !21, line: 524, baseType: !7, size: 32, offset: 8320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !492, file: !21, line: 525, baseType: !906, size: 64, offset: 8384)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !21, line: 525, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !492, file: !21, line: 526, baseType: !7, size: 32, offset: 8448)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !492, file: !21, line: 533, baseType: !125, size: 64, offset: 8512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !492, file: !21, line: 534, baseType: !7, size: 32, offset: 8576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !492, file: !21, line: 535, baseType: !913, size: 64, offset: 8640)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !492, file: !21, line: 536, baseType: !7, size: 32, offset: 8704)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !492, file: !21, line: 539, baseType: !85, size: 32, offset: 8736)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !492, file: !21, line: 540, baseType: !917, size: 64, offset: 8768)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !919, line: 32, size: 64, elements: !920)
!919 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !918, file: !919, line: 33, baseType: !558, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !918, file: !919, line: 34, baseType: !558, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !492, file: !21, line: 563, baseType: !138, size: 128, offset: 8832)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !492, file: !21, line: 565, baseType: !138, size: 128, offset: 8960)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !492, file: !21, line: 568, baseType: !926, size: 64, offset: 9088)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DISubroutineType(types: !928)
!928 = !{null}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !492, file: !21, line: 570, baseType: !171, size: 32, offset: 9152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !467, file: !28, line: 2382, baseType: !466, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !467, file: !28, line: 2383, baseType: !932, size: 64, offset: 512)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !124, line: 194, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !932, file: !124, line: 195, baseType: !811, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !467, file: !28, line: 2385, baseType: !936, offset: 576)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !850, line: 206, elements: !851)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !467, file: !28, line: 2386, baseType: !936, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !467, file: !28, line: 2387, baseType: !936, offset: 576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !467, file: !28, line: 2388, baseType: !940, offset: 576)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, elements: !222)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !467, file: !28, line: 2390, baseType: !936, offset: 576)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !467, file: !28, line: 2391, baseType: !936, offset: 576)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !467, file: !28, line: 2392, baseType: !936, offset: 576)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !467, file: !28, line: 2393, baseType: !936, offset: 576)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !453, file: !28, line: 1197, baseType: !946, size: 64, offset: 384)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !28, line: 2057, size: 1664, elements: !949)
!949 = !{!950, !954, !958, !959, !963, !969, !973, !974, !975, !979, !983, !987, !988, !989, !995, !999, !1000, !1732, !1733, !1734, !1735, !1739, !1743, !1790, !1805, !1806}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !948, file: !28, line: 2058, baseType: !951, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!301, !452}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !948, file: !28, line: 2059, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !301}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !948, file: !28, line: 2060, baseType: !955, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !948, file: !28, line: 2062, baseType: !960, size: 64, offset: 192)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !301, !85}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !948, file: !28, line: 2063, baseType: !964, size: 64, offset: 256)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!85, !301, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !28, line: 309, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !948, file: !28, line: 2064, baseType: !970, size: 64, offset: 320)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DISubroutineType(types: !972)
!972 = !{!85, !301}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !948, file: !28, line: 2065, baseType: !955, size: 64, offset: 384)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !948, file: !28, line: 2066, baseType: !487, size: 64, offset: 448)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !948, file: !28, line: 2067, baseType: !976, size: 64, offset: 512)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{!85, !452, !85}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !948, file: !28, line: 2068, baseType: !980, size: 64, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DISubroutineType(types: !982)
!982 = !{!85, !452, !27}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !948, file: !28, line: 2069, baseType: !984, size: 64, offset: 640)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!85, !452}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !948, file: !28, line: 2070, baseType: !980, size: 64, offset: 704)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !948, file: !28, line: 2071, baseType: !984, size: 64, offset: 768)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !948, file: !28, line: 2072, baseType: !990, size: 64, offset: 832)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!85, !336, !993}
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !28, line: 62, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !948, file: !28, line: 2073, baseType: !996, size: 64, offset: 896)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!85, !452, !691, !221}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !948, file: !28, line: 2074, baseType: !487, size: 64, offset: 960)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !948, file: !28, line: 2076, baseType: !1001, size: 64, offset: 1024)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!85, !1004, !336}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1006, line: 17, size: 960, elements: !1007)
!1006 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1038, !1039, !1731}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1005, file: !1006, line: 18, baseType: !221, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1005, file: !1006, line: 19, baseType: !268, size: 64, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1005, file: !1006, line: 20, baseType: !268, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1005, file: !1006, line: 21, baseType: !268, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1005, file: !1006, line: 22, baseType: !268, size: 64, offset: 256)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1005, file: !1006, line: 23, baseType: !462, size: 64, offset: 320)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1005, file: !1006, line: 24, baseType: !462, size: 64, offset: 384)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1005, file: !1006, line: 25, baseType: !562, size: 256, offset: 448)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1005, file: !1006, line: 26, baseType: !1017, size: 64, offset: 704)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1006, line: 32, size: 256, elements: !1020)
!1020 = !{!1021, !1026, !1030, !1034}
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1019, file: !1006, line: 33, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!125, !1004, !1025}
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1019, file: !1006, line: 34, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DISubroutineType(types: !1029)
!1029 = !{null, !1004, !125}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1019, file: !1006, line: 35, baseType: !1031, size: 64, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!125, !1004, !125, !1025}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1019, file: !1006, line: 36, baseType: !1035, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!85, !1004, !125}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1005, file: !1006, line: 27, baseType: !85, size: 32, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1005, file: !1006, line: 28, baseType: !1040, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1042)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !28, line: 994, size: 1856, align: 64, elements: !1043)
!1043 = !{!1044, !1055, !1056, !1058, !1059, !1060, !1061, !1062, !1123, !1323, !1332, !1338, !1339, !1721, !1722, !1723, !1724, !1726, !1727, !1730}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !28, line: 995, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !28, line: 995, size: 128, elements: !1046)
!1046 = !{!1047, !1053, !1054}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1045, file: !28, line: 996, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1049, line: 60, size: 64, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !1049, line: 61, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1045, file: !28, line: 997, baseType: !782, size: 128, align: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1045, file: !28, line: 998, baseType: !7, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1042, file: !28, line: 1005, baseType: !151, size: 32, offset: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1042, file: !28, line: 1006, baseType: !1057, size: 32, offset: 160)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !124, line: 156, baseType: !7)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1042, file: !28, line: 1007, baseType: !566, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1042, file: !28, line: 1008, baseType: !562, size: 256, offset: 256)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1042, file: !28, line: 1009, baseType: !462, size: 64, offset: 512)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1042, file: !28, line: 1010, baseType: !7, size: 32, offset: 576)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1042, file: !28, line: 1011, baseType: !1063, size: 256, offset: 640)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !28, line: 948, size: 256, elements: !1064)
!1064 = !{!1065, !1086, !1119, !1120, !1121, !1122}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1063, file: !28, line: 949, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1067, line: 34, baseType: !1068)
!1067 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 25, size: 64, elements: !1069)
!1069 = !{!1070}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1068, file: !1067, line: 26, baseType: !1071, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1072, line: 27, baseType: !1073)
!1072 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1072, line: 13, size: 64, elements: !1074)
!1074 = !{!1075, !1085}
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1073, file: !1072, line: 14, baseType: !1076, size: 32)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1073, file: !1072, line: 14, size: 32, elements: !1077)
!1077 = !{!1078, !1079}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1076, file: !1072, line: 15, baseType: !171, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !1072, line: 16, baseType: !1080, size: 32)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !1072, line: 16, size: 32, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1080, file: !1072, line: 18, baseType: !179, size: 8)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1080, file: !1072, line: 19, baseType: !1084, size: 24, offset: 8)
!1084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 24, elements: !222)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1073, file: !1072, line: 26, baseType: !163, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1063, file: !28, line: 950, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !13, line: 59, size: 768, elements: !1089)
!1089 = !{!1090, !1096, !1097, !1098, !1100, !1101, !1108, !1109}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1088, file: !13, line: 61, baseType: !1091, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1092, line: 113, baseType: !1093)
!1092 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1092, line: 111, size: 32, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1093, file: !1092, line: 112, baseType: !171, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1088, file: !13, line: 62, baseType: !7, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1088, file: !13, line: 63, baseType: !151, size: 32, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1088, file: !13, line: 65, baseType: !1099, size: 256, offset: 128)
!1099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 256, elements: !792)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1088, file: !13, line: 66, baseType: !932, size: 64, offset: 384)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1088, file: !13, line: 68, baseType: !1102, size: 192, offset: 448)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1103, line: 41, baseType: !1104)
!1103 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1103, line: 37, size: 192, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1104, file: !1103, line: 38, baseType: !151, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1104, file: !1103, line: 39, baseType: !138, size: 128, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1088, file: !13, line: 69, baseType: !782, size: 128, align: 64, offset: 640)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1088, file: !13, line: 70, baseType: !1110, offset: 768)
!1110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1111, elements: !1117)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !13, line: 54, size: 128, elements: !1112)
!1112 = !{!1113, !1114}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1111, file: !13, line: 55, baseType: !85, size: 32)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1111, file: !13, line: 56, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !13, line: 56, flags: DIFlagFwdDecl)
!1117 = !{!1118}
!1118 = !DISubrange(count: -1)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1063, file: !28, line: 951, baseType: !12, size: 32, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1063, file: !28, line: 952, baseType: !307, size: 32, offset: 160)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1063, file: !28, line: 952, baseType: !307, size: 32, offset: 192)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1063, file: !28, line: 953, baseType: !85, size: 32, offset: 224)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1042, file: !28, line: 1012, baseType: !1124, size: 64, offset: 896)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1126)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1127, line: 110, size: 1472, elements: !1128)
!1127 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1128 = !{!1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1145, !1146, !1147, !1148, !1149, !1150, !1268, !1269, !1270, !1271, !1272, !1303, !1306, !1310, !1318}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1126, file: !1127, line: 111, baseType: !566, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1126, file: !1127, line: 112, baseType: !307, size: 32, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1126, file: !1127, line: 113, baseType: !316, size: 32, offset: 96)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1126, file: !1127, line: 114, baseType: !307, size: 32, offset: 128)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1126, file: !1127, line: 115, baseType: !316, size: 32, offset: 160)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1126, file: !1127, line: 116, baseType: !307, size: 32, offset: 192)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1126, file: !1127, line: 117, baseType: !316, size: 32, offset: 224)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1126, file: !1127, line: 118, baseType: !307, size: 32, offset: 256)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1126, file: !1127, line: 119, baseType: !316, size: 32, offset: 288)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1126, file: !1127, line: 120, baseType: !7, size: 32, offset: 320)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1126, file: !1127, line: 121, baseType: !1140, size: 64, offset: 384)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1141, line: 24, baseType: !1142)
!1141 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1141, line: 24, size: 64, elements: !1143)
!1143 = !{!1144}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1142, file: !1141, line: 24, baseType: !374, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1126, file: !1127, line: 122, baseType: !1140, size: 64, offset: 448)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1126, file: !1127, line: 123, baseType: !1140, size: 64, offset: 512)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1126, file: !1127, line: 124, baseType: !1140, size: 64, offset: 576)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1126, file: !1127, line: 125, baseType: !1140, size: 64, offset: 640)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1126, file: !1127, line: 127, baseType: !183, size: 8, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1126, file: !1127, line: 129, baseType: !1151, size: 64, offset: 768)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1153, line: 195, size: 1728, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1154 = !{!1155, !1156, !1159, !1164, !1173, !1176, !1177, !1184, !1185, !1186, !1187, !1190, !1191, !1192, !1193, !1194, !1232, !1253}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1152, file: !1153, line: 196, baseType: !1091, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1152, file: !1153, line: 197, baseType: !1157, size: 32, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1153, line: 28, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !124, line: 104, baseType: !558)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !1153, line: 198, baseType: !1160, size: 192, offset: 64)
!1160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !1153, line: 198, size: 192, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1160, file: !1153, line: 199, baseType: !138, size: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1160, file: !1153, line: 200, baseType: !674, size: 192, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1152, file: !1153, line: 205, baseType: !1165, size: 320, offset: 256)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1166, line: 48, size: 320, elements: !1167)
!1166 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1167 = !{!1168, !1169, !1170, !1171, !1172}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1165, file: !1166, line: 49, baseType: !566, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1165, file: !1166, line: 55, baseType: !566, size: 64, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1165, file: !1166, line: 57, baseType: !576, size: 32, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1165, file: !1166, line: 59, baseType: !520, size: 32, offset: 160)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1165, file: !1166, line: 60, baseType: !138, size: 128, offset: 192)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1152, file: !1153, line: 206, baseType: !1174, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1153, line: 206, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1152, file: !1153, line: 207, baseType: !125, size: 64, offset: 640)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !1153, line: 208, baseType: !1178, size: 64, offset: 704)
!1178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !1153, line: 208, size: 64, elements: !1179)
!1179 = !{!1180, !1183}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1178, file: !1153, line: 209, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1182, line: 8, baseType: !573)
!1182 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1178, file: !1153, line: 210, baseType: !1181, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1152, file: !1153, line: 212, baseType: !1181, size: 64, offset: 768)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1152, file: !1153, line: 213, baseType: !307, size: 32, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1152, file: !1153, line: 214, baseType: !316, size: 32, offset: 864)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1152, file: !1153, line: 215, baseType: !1188, size: 32, offset: 896)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1153, line: 31, baseType: !1189)
!1189 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !124, line: 110, baseType: !370)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1152, file: !1153, line: 216, baseType: !191, size: 16, offset: 928)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1152, file: !1153, line: 217, baseType: !191, size: 16, offset: 944)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1152, file: !1153, line: 221, baseType: !700, size: 16, offset: 960)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !1153, line: 228, baseType: !271, size: 64, offset: 1024)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !1153, line: 245, baseType: !1195, size: 320, offset: 1088)
!1195 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !1153, line: 245, size: 320, elements: !1196)
!1196 = !{!1197, !1224}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1195, file: !1153, line: 246, baseType: !1198, size: 320)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1153, line: 114, size: 320, elements: !1199)
!1199 = !{!1200, !1201, !1213, !1216, !1223}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1198, file: !1153, line: 116, baseType: !271, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !1153, line: 117, baseType: !1202, size: 64, offset: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1198, file: !1153, line: 117, size: 64, elements: !1203)
!1203 = !{!1204, !1212}
!1204 = !DIDerivedType(tag: DW_TAG_member, scope: !1202, file: !1153, line: 118, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1202, file: !1153, line: 118, size: 64, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1205, file: !1153, line: 120, baseType: !189, size: 16)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1205, file: !1153, line: 121, baseType: !1209, size: 48, offset: 16)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 48, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 6)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1202, file: !1153, line: 127, baseType: !271, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1198, file: !1153, line: 129, baseType: !1214, size: 64, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1153, line: 102, flags: DIFlagFwdDecl)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1198, file: !1153, line: 130, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1153, line: 108, size: 192, elements: !1219)
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1218, file: !1153, line: 109, baseType: !782, size: 128, align: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1218, file: !1153, line: 110, baseType: !1091, size: 32, offset: 128)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1218, file: !1153, line: 111, baseType: !642, size: 8, offset: 160)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1198, file: !1153, line: 131, baseType: !134, size: 64, offset: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, scope: !1195, file: !1153, line: 247, baseType: !1225, size: 320)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1195, file: !1153, line: 247, size: 320, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230, !1231}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1225, file: !1153, line: 248, baseType: !271, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1225, file: !1153, line: 249, baseType: !271, size: 64, offset: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1225, file: !1153, line: 250, baseType: !1214, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1225, file: !1153, line: 251, baseType: !1217, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1225, file: !1153, line: 252, baseType: !221, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !1153, line: 260, baseType: !1233, size: 256, offset: 1408)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !1153, line: 260, size: 256, elements: !1234)
!1234 = !{!1235, !1241}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1233, file: !1153, line: 261, baseType: !1236, size: 256)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1153, line: 134, size: 256, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1236, file: !1153, line: 135, baseType: !125, size: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1236, file: !1153, line: 136, baseType: !1240, size: 256)
!1240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 256, elements: !792)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1233, file: !1153, line: 262, baseType: !1242, size: 256)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1233, file: !1153, line: 262, size: 256, elements: !1243)
!1243 = !{!1244, !1245}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1242, file: !1153, line: 264, baseType: !138, size: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1242, file: !1153, line: 265, baseType: !1246, size: 128, offset: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1247, line: 22, size: 128, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1248 = !{!1249, !1252}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1246, file: !1247, line: 23, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1247, line: 23, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1246, file: !1247, line: 24, baseType: !271, size: 64, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1152, file: !1153, line: 280, baseType: !1254, size: 64, offset: 1664)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1153, line: 176, size: 192, elements: !1256)
!1256 = !{!1257, !1266, !1267}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1255, file: !1153, line: 177, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1153, line: 171, baseType: !1259)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!85, !1151, !1262, !1264, !1151}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1215)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1236)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1255, file: !1153, line: 178, baseType: !1151, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1255, file: !1153, line: 179, baseType: !1214, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1126, file: !1127, line: 130, baseType: !1151, size: 64, offset: 832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1126, file: !1127, line: 131, baseType: !1151, size: 64, offset: 896)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1126, file: !1127, line: 132, baseType: !1151, size: 64, offset: 960)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1126, file: !1127, line: 135, baseType: !125, size: 64, offset: 1024)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1126, file: !1127, line: 137, baseType: !1273, size: 64, offset: 1088)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1275, line: 14, size: 1088, elements: !1276)
!1275 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1276 = !{!1277, !1278, !1287, !1288, !1289, !1290, !1291, !1292}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1274, file: !1275, line: 15, baseType: !1091, size: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1274, file: !1275, line: 17, baseType: !1279, size: 320, offset: 64)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1280, line: 22, size: 320, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1281 = !{!1282, !1283, !1284, !1285}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1279, file: !1280, line: 23, baseType: !520, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1279, file: !1280, line: 24, baseType: !572, size: 64, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1279, file: !1280, line: 26, baseType: !138, size: 128, offset: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1279, file: !1280, line: 28, baseType: !1286, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1274, file: !1275, line: 19, baseType: !271, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1274, file: !1275, line: 20, baseType: !566, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1274, file: !1275, line: 23, baseType: !808, size: 128, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1274, file: !1275, line: 24, baseType: !307, size: 32, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1274, file: !1275, line: 29, baseType: !566, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1274, file: !1275, line: 36, baseType: !1293, size: 320, offset: 768)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1294, line: 15, size: 320, elements: !1295)
!1294 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1295 = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1293, file: !1294, line: 16, baseType: !520, size: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1293, file: !1294, line: 18, baseType: !85, size: 32, offset: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1293, file: !1294, line: 19, baseType: !85, size: 32, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1293, file: !1294, line: 20, baseType: !85, size: 32, offset: 96)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1293, file: !1294, line: 21, baseType: !85, size: 32, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1293, file: !1294, line: 22, baseType: !271, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1293, file: !1294, line: 23, baseType: !271, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1126, file: !1127, line: 138, baseType: !1304, size: 64, offset: 1152)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !308, line: 18, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1126, file: !1127, line: 139, baseType: !1307, size: 64, offset: 1216)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1309, line: 16, flags: DIFlagFwdDecl)
!1309 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1126, file: !1127, line: 140, baseType: !1311, size: 64, offset: 1280)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1127, line: 25, size: 64, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1312, file: !1127, line: 26, baseType: !171, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1312, file: !1127, line: 27, baseType: !85, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1312, file: !1127, line: 28, baseType: !1317, offset: 64)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !316, elements: !1117)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1126, file: !1127, line: 142, baseType: !1319, size: 128, offset: 1344)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1126, file: !1127, line: 142, size: 128, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1319, file: !1127, line: 143, baseType: !85, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1319, file: !1127, line: 144, baseType: !782, size: 128, align: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1042, file: !28, line: 1013, baseType: !1324, size: 256, offset: 960)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !28, line: 970, size: 256, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1324, file: !28, line: 971, baseType: !271, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1324, file: !28, line: 972, baseType: !7, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1324, file: !28, line: 973, baseType: !7, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1324, file: !28, line: 974, baseType: !7, size: 32, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1324, file: !28, line: 975, baseType: !7, size: 32, offset: 160)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1324, file: !28, line: 976, baseType: !462, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1042, file: !28, line: 1014, baseType: !1333, size: 128, offset: 1216)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1334, line: 8, size: 128, elements: !1335)
!1334 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1335 = !{!1336, !1337}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1333, file: !1334, line: 9, baseType: !446, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1333, file: !1334, line: 10, baseType: !336, size: 64, offset: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1042, file: !28, line: 1015, baseType: !301, size: 64, offset: 1344)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1042, file: !28, line: 1016, baseType: !1340, size: 64, offset: 1408)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1342)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !28, line: 1914, size: 2112, elements: !1343)
!1343 = !{!1344, !1345, !1350, !1354, !1358, !1386, !1387, !1393, !1406, !1423, !1427, !1428, !1642, !1643, !1647, !1652, !1653, !1657, !1661, !1667, !1668, !1672, !1673, !1680, !1684, !1688, !1694, !1698, !1702, !1706, !1710, !1711, !1717}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1342, file: !28, line: 1915, baseType: !491, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1342, file: !28, line: 1916, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!462, !1349, !462, !85}
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1342, file: !28, line: 1917, baseType: !1351, size: 64, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!253, !1349, !221, !268, !1025}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1342, file: !28, line: 1918, baseType: !1355, size: 64, offset: 192)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!253, !1349, !134, !268, !1025}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1342, file: !28, line: 1919, baseType: !1359, size: 64, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!253, !1362, !1384}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !28, line: 373, size: 384, elements: !1364)
!1364 = !{!1365, !1366, !1367, !1371, !1372, !1373, !1374}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1363, file: !28, line: 374, baseType: !1349, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1363, file: !28, line: 375, baseType: !462, size: 64, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1363, file: !28, line: 376, baseType: !1368, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1362, !257}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1363, file: !28, line: 377, baseType: !125, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1363, file: !28, line: 378, baseType: !85, size: 32, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1363, file: !28, line: 379, baseType: !189, size: 16, offset: 288)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !28, line: 380, baseType: !1375, size: 64, offset: 320)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1363, file: !28, line: 380, size: 64, elements: !1376)
!1376 = !{!1377, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1375, file: !28, line: 386, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !28, line: 386, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1375, file: !28, line: 395, baseType: !1381, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DISubroutineType(types: !1383)
!1383 = !{!253, !125}
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !28, line: 69, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1342, file: !28, line: 1920, baseType: !1359, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1342, file: !28, line: 1921, baseType: !1388, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1389, size: 64)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!85, !1362, !1391, !7}
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !28, line: 53, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1342, file: !28, line: 1923, baseType: !1394, size: 64, offset: 448)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!85, !1349, !1397}
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !28, line: 1858, size: 128, elements: !1399)
!1399 = !{!1400, !1405}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1398, file: !28, line: 1859, baseType: !1401, size: 64)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !28, line: 1855, baseType: !1402)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!642, !1397, !134, !85, !462, !374, !7}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1398, file: !28, line: 1860, baseType: !462, size: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1342, file: !28, line: 1924, baseType: !1407, size: 64, offset: 512)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1410, !1349, !1412}
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1411, line: 59, baseType: !7)
!1411 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1414, line: 37, size: 128, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1415 = !{!1416, !1422}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1413, file: !1414, line: 38, baseType: !1417, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1414, line: 31, baseType: !1418)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{null, !1349, !1421, !1412}
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1413, file: !1414, line: 39, baseType: !1410, size: 32, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1342, file: !28, line: 1925, baseType: !1424, size: 64, offset: 576)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!257, !1349, !7, !271}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1342, file: !28, line: 1926, baseType: !1424, size: 64, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1342, file: !28, line: 1927, baseType: !1429, size: 64, offset: 704)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!85, !1349, !1432}
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1434, line: 625, size: 1344, elements: !1435)
!1434 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1435 = !{!1436, !1445, !1600, !1606, !1613, !1614, !1619, !1620, !1625, !1626, !1629, !1633, !1634, !1635, !1636, !1637, !1640}
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1434, line: 628, baseType: !1437, size: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1434, line: 628, size: 128, elements: !1438)
!1438 = !{!1439, !1444}
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1437, file: !1434, line: 629, baseType: !1440, size: 128)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1437, file: !1434, line: 629, size: 128, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1440, file: !1434, line: 631, baseType: !271, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1440, file: !1434, line: 632, baseType: !271, size: 64, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1437, file: !1434, line: 635, baseType: !782, size: 128, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1433, file: !1434, line: 639, baseType: !1446, size: 64, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1434, line: 733, size: 10240, elements: !1448)
!1448 = !{!1449, !1598}
!1449 = !DIDerivedType(tag: DW_TAG_member, scope: !1447, file: !1434, line: 734, baseType: !1450, size: 10240)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1447, file: !1434, line: 734, size: 10240, elements: !1451)
!1451 = !{!1452, !1456, !1469, !1473, !1474, !1475, !1476, !1477, !1478, !1487, !1488, !1489, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1528, !1530, !1533, !1578, !1579, !1580, !1583, !1584, !1585, !1588, !1589, !1590, !1596, !1597}
!1452 = !DIDerivedType(tag: DW_TAG_member, scope: !1450, file: !1434, line: 739, baseType: !1453, size: 512, align: 512)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1450, file: !1434, line: 739, size: 512, align: 512, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1453, file: !1434, line: 747, baseType: !171, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1450, file: !1434, line: 750, baseType: !1457, size: 128, offset: 512)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1458, line: 218, size: 128, elements: !1459)
!1458 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1459 = !{!1460, !1467, !1468}
!1460 = !DIDerivedType(tag: DW_TAG_member, scope: !1457, file: !1458, line: 219, baseType: !1461, size: 32)
!1461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1457, file: !1458, line: 219, size: 32, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1461, file: !1458, line: 220, baseType: !151, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1461, file: !1458, line: 221, baseType: !1465)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1458, line: 197, baseType: !1466)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1458, line: 197, elements: !851)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1457, file: !1458, line: 223, baseType: !7, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1457, file: !1458, line: 224, baseType: !125, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1450, file: !1434, line: 752, baseType: !1470, size: 64, offset: 640)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!271, !1349, !271, !271, !271, !271}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1450, file: !1434, line: 756, baseType: !271, size: 64, offset: 704)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1450, file: !1434, line: 757, baseType: !271, size: 64, offset: 768)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1450, file: !1434, line: 760, baseType: !271, size: 64, offset: 832)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1450, file: !1434, line: 761, baseType: !271, size: 64, offset: 896)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1450, file: !1434, line: 763, baseType: !271, size: 64, offset: 960)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1450, file: !1434, line: 764, baseType: !1479, size: 64, offset: 1024)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1481, line: 299, baseType: !1482)
!1481 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1481, line: 299, size: 64, elements: !1483)
!1483 = !{!1484}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1482, file: !1481, line: 299, baseType: !1485, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1486, line: 18, baseType: !271)
!1486 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1450, file: !1434, line: 773, baseType: !171, size: 32, offset: 1088)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1450, file: !1434, line: 785, baseType: !171, size: 32, offset: 1120)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1450, file: !1434, line: 795, baseType: !1490, size: 64, offset: 1152)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1434, line: 726, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1491, file: !1434, line: 727, baseType: !374, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1491, file: !1434, line: 728, baseType: !85, size: 32, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1450, file: !1434, line: 801, baseType: !271, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1450, file: !1434, line: 804, baseType: !566, size: 64, offset: 1280)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1450, file: !1434, line: 806, baseType: !85, size: 32, offset: 1344)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1450, file: !1434, line: 808, baseType: !151, size: 32, offset: 1376)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1450, file: !1434, line: 823, baseType: !1165, size: 320, offset: 1408)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1450, file: !1434, line: 825, baseType: !138, size: 128, offset: 1728)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1450, file: !1434, line: 845, baseType: !85, size: 32, offset: 1856)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1450, file: !1434, line: 849, baseType: !271, size: 64, offset: 1920)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1450, file: !1434, line: 850, baseType: !271, size: 64, offset: 1984)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1450, file: !1434, line: 852, baseType: !271, size: 64, offset: 2048)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1450, file: !1434, line: 853, baseType: !271, size: 64, offset: 2112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1450, file: !1434, line: 854, baseType: !568, size: 64, offset: 2176)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1450, file: !1434, line: 855, baseType: !271, size: 64, offset: 2240)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1450, file: !1434, line: 856, baseType: !271, size: 64, offset: 2304)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1450, file: !1434, line: 857, baseType: !271, size: 64, offset: 2368)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1450, file: !1434, line: 858, baseType: !271, size: 64, offset: 2432)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1450, file: !1434, line: 865, baseType: !347, size: 32, offset: 2496)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1450, file: !1434, line: 867, baseType: !151, size: 32, offset: 2528)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1450, file: !1434, line: 869, baseType: !271, size: 64, offset: 2560)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1450, file: !1434, line: 869, baseType: !271, size: 64, offset: 2624)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1450, file: !1434, line: 869, baseType: !271, size: 64, offset: 2688)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1450, file: !1434, line: 869, baseType: !271, size: 64, offset: 2752)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1450, file: !1434, line: 870, baseType: !271, size: 64, offset: 2816)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1450, file: !1434, line: 870, baseType: !271, size: 64, offset: 2880)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1450, file: !1434, line: 870, baseType: !271, size: 64, offset: 2944)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1450, file: !1434, line: 871, baseType: !271, size: 64, offset: 3008)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1450, file: !1434, line: 871, baseType: !271, size: 64, offset: 3072)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1450, file: !1434, line: 871, baseType: !271, size: 64, offset: 3136)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1450, file: !1434, line: 871, baseType: !271, size: 64, offset: 3200)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1450, file: !1434, line: 873, baseType: !1525, size: 3328, offset: 3264)
!1525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 3328, elements: !1526)
!1526 = !{!1527}
!1527 = !DISubrange(count: 52)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1450, file: !1434, line: 875, baseType: !1529, size: 1280, offset: 6592)
!1529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1279, size: 1280, elements: !792)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1450, file: !1434, line: 877, baseType: !1531, size: 64, offset: 7872)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1434, line: 877, flags: DIFlagFwdDecl)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1450, file: !1434, line: 880, baseType: !1534, size: 1088, offset: 7936)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1535, line: 72, baseType: !1536)
!1535 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1535, line: 23, size: 1088, elements: !1537)
!1537 = !{!1538, !1539, !1540, !1541, !1542, !1545, !1546, !1547, !1548, !1575, !1576, !1577}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1536, file: !1535, line: 28, baseType: !374, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1536, file: !1535, line: 38, baseType: !568, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1536, file: !1535, line: 40, baseType: !271, size: 64, offset: 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1536, file: !1535, line: 43, baseType: !1165, size: 320, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1536, file: !1535, line: 44, baseType: !1543, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1535, line: 44, flags: DIFlagFwdDecl)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1536, file: !1535, line: 48, baseType: !271, size: 64, offset: 576)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1536, file: !1535, line: 59, baseType: !562, size: 256, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1536, file: !1535, line: 60, baseType: !125, size: 64, offset: 896)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1536, file: !1535, line: 61, baseType: !1549, size: 64, offset: 960)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1552, line: 13, size: 1216, elements: !1553)
!1552 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1553 = !{!1554, !1555, !1556, !1557, !1558, !1559, !1560, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1551, file: !1552, line: 14, baseType: !125, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1551, file: !1552, line: 15, baseType: !271, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1551, file: !1552, line: 17, baseType: !271, size: 64, offset: 128)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1551, file: !1552, line: 17, baseType: !271, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1551, file: !1552, line: 18, baseType: !271, size: 64, offset: 256)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1551, file: !1552, line: 18, baseType: !271, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1551, file: !1552, line: 19, baseType: !1561, size: 64, offset: 384)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1551, file: !1552, line: 21, baseType: !257, size: 64, offset: 448)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1551, file: !1552, line: 23, baseType: !257, size: 64, offset: 512)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1551, file: !1552, line: 24, baseType: !257, size: 64, offset: 576)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1551, file: !1552, line: 25, baseType: !257, size: 64, offset: 640)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1551, file: !1552, line: 26, baseType: !257, size: 64, offset: 704)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1551, file: !1552, line: 27, baseType: !257, size: 64, offset: 768)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1551, file: !1552, line: 28, baseType: !257, size: 64, offset: 832)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1551, file: !1552, line: 29, baseType: !257, size: 64, offset: 896)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1551, file: !1552, line: 30, baseType: !257, size: 64, offset: 960)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1551, file: !1552, line: 31, baseType: !257, size: 64, offset: 1024)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1551, file: !1552, line: 32, baseType: !257, size: 64, offset: 1088)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1551, file: !1552, line: 33, baseType: !257, size: 64, offset: 1152)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1536, file: !1535, line: 63, baseType: !171, size: 32, offset: 1024)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1536, file: !1535, line: 69, baseType: !189, size: 16, offset: 1056)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1536, file: !1535, line: 70, baseType: !698, size: 16, offset: 1072)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1450, file: !1434, line: 882, baseType: !271, size: 64, offset: 9024)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1450, file: !1434, line: 885, baseType: !151, size: 32, offset: 9088)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1450, file: !1434, line: 886, baseType: !1581, size: 64, offset: 9152)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1434, line: 732, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1450, file: !1434, line: 901, baseType: !1304, size: 64, offset: 9216)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1450, file: !1434, line: 904, baseType: !1349, size: 64, offset: 9280)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1450, file: !1434, line: 906, baseType: !1586, size: 64, offset: 9344)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1434, line: 906, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1450, file: !1434, line: 930, baseType: !171, size: 32, offset: 9408)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1450, file: !1434, line: 933, baseType: !171, size: 32, offset: 9440)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1450, file: !1434, line: 935, baseType: !1591, size: 64, offset: 9472)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1592)
!1592 = !{!1593}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1591, file: !57, line: 104, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1450, file: !1434, line: 940, baseType: !566, size: 64, offset: 9536)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1450, file: !1434, line: 942, baseType: !822, size: 256, offset: 9600)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1447, file: !1434, line: 986, baseType: !1599, offset: 10240)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, elements: !1117)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1433, file: !1434, line: 640, baseType: !1601, size: 64, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1481, line: 297, baseType: !1602)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1481, line: 297, size: 64, elements: !1603)
!1603 = !{!1604}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1602, file: !1481, line: 297, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1486, line: 19, baseType: !271)
!1606 = !DIDerivedType(tag: DW_TAG_member, scope: !1433, file: !1434, line: 646, baseType: !1607, size: 64, offset: 256)
!1607 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1433, file: !1434, line: 646, size: 64, elements: !1608)
!1608 = !{!1609, !1612}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1607, file: !1434, line: 647, baseType: !1610, size: 64)
!1610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1611)
!1611 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1434, line: 542, baseType: !271)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1607, file: !1434, line: 648, baseType: !1611, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1433, file: !1434, line: 666, baseType: !85, size: 32, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1433, file: !1434, line: 667, baseType: !1615, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1616, size: 64)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1434, line: 579, size: 320, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1616, file: !1434, line: 580, baseType: !1165, size: 320)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1433, file: !1434, line: 670, baseType: !642, size: 8, offset: 448)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1433, file: !1434, line: 681, baseType: !1621, size: 256, offset: 512)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1433, file: !1434, line: 678, size: 256, elements: !1622)
!1622 = !{!1623, !1624}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1621, file: !1434, line: 679, baseType: !674, size: 192, align: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1621, file: !1434, line: 680, baseType: !271, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1433, file: !1434, line: 689, baseType: !138, size: 128, offset: 768)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1433, file: !1434, line: 691, baseType: !1627, size: 64, offset: 896)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1434, line: 691, flags: DIFlagFwdDecl)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1433, file: !1434, line: 694, baseType: !1630, size: 64, offset: 960)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1434, line: 694, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1433, file: !1434, line: 697, baseType: !271, size: 64, offset: 1024)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1433, file: !1434, line: 699, baseType: !1349, size: 64, offset: 1088)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1433, file: !1434, line: 700, baseType: !125, size: 64, offset: 1152)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1433, file: !1434, line: 711, baseType: !566, size: 64, offset: 1216)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1433, file: !1434, line: 717, baseType: !1638, size: 64, offset: 1280)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1434, line: 717, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1433, file: !1434, line: 722, baseType: !1641, offset: 1344)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1434, line: 570, elements: !851)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1342, file: !28, line: 1928, baseType: !271, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1342, file: !28, line: 1929, baseType: !1644, size: 64, offset: 832)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!85, !301, !1349}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1342, file: !28, line: 1930, baseType: !1648, size: 64, offset: 896)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DISubroutineType(types: !1650)
!1650 = !{!85, !1349, !1651}
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !28, line: 1061, baseType: !125)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1342, file: !28, line: 1931, baseType: !1644, size: 64, offset: 960)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1342, file: !28, line: 1932, baseType: !1654, size: 64, offset: 1024)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!85, !1349, !462, !462, !85}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1342, file: !28, line: 1933, baseType: !1658, size: 64, offset: 1088)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{!85, !85, !1349, !85}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1342, file: !28, line: 1934, baseType: !1662, size: 64, offset: 1152)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!85, !1349, !85, !1665}
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !28, line: 1063, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1342, file: !28, line: 1935, baseType: !1470, size: 64, offset: 1216)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1342, file: !28, line: 1936, baseType: !1669, size: 64, offset: 1280)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!85, !85}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1342, file: !28, line: 1937, baseType: !1662, size: 64, offset: 1344)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1342, file: !28, line: 1938, baseType: !1674, size: 64, offset: 1408)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!253, !1677, !1349, !1025, !268, !7}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1679, line: 59, flags: DIFlagFwdDecl)
!1679 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1342, file: !28, line: 1939, baseType: !1681, size: 64, offset: 1472)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!253, !1349, !1025, !1677, !268, !7}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1342, file: !28, line: 1940, baseType: !1685, size: 64, offset: 1536)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1349}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1342, file: !28, line: 1941, baseType: !1689, size: 64, offset: 1600)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!85, !1349, !85, !1692, !1693}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1342, file: !28, line: 1942, baseType: !1695, size: 64, offset: 1664)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!257, !1349, !85, !462, !462}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1342, file: !28, line: 1944, baseType: !1699, size: 64, offset: 1728)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1004, !1349}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1342, file: !28, line: 1948, baseType: !1703, size: 64, offset: 1792)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!253, !1349, !462, !1349, !462, !268, !7}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1342, file: !28, line: 1950, baseType: !1707, size: 64, offset: 1856)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!462, !1349, !462, !1349, !462, !462, !7}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1342, file: !28, line: 1953, baseType: !1654, size: 64, offset: 1920)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1342, file: !28, line: 1954, baseType: !1712, size: 64, offset: 1984)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!85, !1715, !7}
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !28, line: 1911, flags: DIFlagFwdDecl)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1342, file: !28, line: 1955, baseType: !1718, size: 64, offset: 2048)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!85, !1715, !1391, !7}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1042, file: !28, line: 1018, baseType: !374, size: 64, offset: 1472)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1042, file: !28, line: 1020, baseType: !125, size: 64, offset: 1536)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1042, file: !28, line: 1023, baseType: !125, size: 64, offset: 1600)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1042, file: !28, line: 1027, baseType: !1725, size: 64, offset: 1664)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1042, file: !28, line: 1029, baseType: !297, size: 64, offset: 1728)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1042, file: !28, line: 1030, baseType: !1728, size: 32, offset: 1792)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1729, line: 8, baseType: !370)
!1729 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1042, file: !28, line: 1031, baseType: !1728, size: 32, offset: 1824)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1005, file: !1006, line: 29, baseType: !125, size: 64, offset: 896)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !948, file: !28, line: 2077, baseType: !1001, size: 64, offset: 1088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !948, file: !28, line: 2078, baseType: !1001, size: 64, offset: 1152)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !948, file: !28, line: 2079, baseType: !1001, size: 64, offset: 1216)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !948, file: !28, line: 2081, baseType: !1736, size: 64, offset: 1280)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!253, !452, !85, !221, !268, !462}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !948, file: !28, line: 2082, baseType: !1740, size: 64, offset: 1344)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{!253, !452, !85, !134, !268, !462}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !948, file: !28, line: 2083, baseType: !1744, size: 64, offset: 1408)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!1747, !301}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !33, line: 296, size: 1664, elements: !1750)
!1750 = !{!1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1775, !1776, !1777}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1749, file: !33, line: 297, baseType: !808, size: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1749, file: !33, line: 298, baseType: !138, size: 128, offset: 128)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1749, file: !33, line: 299, baseType: !138, size: 128, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1749, file: !33, line: 300, baseType: !138, size: 128, offset: 384)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1749, file: !33, line: 301, baseType: !562, size: 256, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1749, file: !33, line: 302, baseType: !151, size: 32, offset: 768)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1749, file: !33, line: 303, baseType: !171, size: 32, offset: 800)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1749, file: !33, line: 304, baseType: !452, size: 64, offset: 832)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1749, file: !33, line: 305, baseType: !1760, size: 64, offset: 896)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !33, line: 68, size: 64, elements: !1761)
!1761 = !{!1762, !1774}
!1762 = !DIDerivedType(tag: DW_TAG_member, scope: !1760, file: !33, line: 69, baseType: !1763, size: 32)
!1763 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1760, file: !33, line: 69, size: 32, elements: !1764)
!1764 = !{!1765, !1766, !1767}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1763, file: !33, line: 70, baseType: !307, size: 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1763, file: !33, line: 71, baseType: !316, size: 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1763, file: !33, line: 72, baseType: !1768, size: 32)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1769, line: 24, baseType: !1770)
!1769 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1769, line: 22, size: 32, elements: !1771)
!1771 = !{!1772}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1770, file: !1769, line: 23, baseType: !1773, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1769, line: 20, baseType: !313)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1760, file: !33, line: 74, baseType: !32, size: 32, offset: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1749, file: !33, line: 306, baseType: !462, size: 64, offset: 960)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1749, file: !33, line: 307, baseType: !271, size: 64, offset: 1024)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1749, file: !33, line: 308, baseType: !1778, size: 576, offset: 1088)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !33, line: 205, size: 576, elements: !1779)
!1779 = !{!1780, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1778, file: !33, line: 206, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !33, line: 66, baseType: !464)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1778, file: !33, line: 207, baseType: !1781, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1778, file: !33, line: 208, baseType: !1781, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1778, file: !33, line: 209, baseType: !1781, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1778, file: !33, line: 210, baseType: !1781, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1778, file: !33, line: 211, baseType: !1781, size: 64, offset: 320)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1778, file: !33, line: 212, baseType: !1781, size: 64, offset: 384)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1778, file: !33, line: 213, baseType: !1181, size: 64, offset: 448)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1778, file: !33, line: 214, baseType: !1181, size: 64, offset: 512)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !948, file: !28, line: 2085, baseType: !1791, size: 64, offset: 1472)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!257, !452, !1794}
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1796, line: 15, size: 256, elements: !1797)
!1796 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1797 = !{!1798, !1799, !1800, !1801, !1802}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1795, file: !1796, line: 16, baseType: !123, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1795, file: !1796, line: 19, baseType: !85, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1795, file: !1796, line: 26, baseType: !271, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1795, file: !1796, line: 33, baseType: !271, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1795, file: !1796, line: 36, baseType: !1803, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1434, line: 33, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !948, file: !28, line: 2087, baseType: !1791, size: 64, offset: 1536)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !948, file: !28, line: 2089, baseType: !487, size: 64, offset: 1600)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !453, file: !28, line: 1198, baseType: !1808, size: 64, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !33, line: 324, size: 704, elements: !1811)
!1811 = !{!1812, !1816, !1820, !1824, !1825, !1826, !1827, !1828, !1833, !1838, !1842}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1810, file: !33, line: 325, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!85, !1748}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1810, file: !33, line: 326, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1748, !452, !85}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1810, file: !33, line: 327, baseType: !1821, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1748}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1810, file: !33, line: 328, baseType: !1813, size: 64, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1810, file: !33, line: 329, baseType: !1813, size: 64, offset: 256)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1810, file: !33, line: 330, baseType: !1813, size: 64, offset: 320)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1810, file: !33, line: 331, baseType: !976, size: 64, offset: 384)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1810, file: !33, line: 334, baseType: !1829, size: 64, offset: 448)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!1832, !301}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1810, file: !33, line: 335, baseType: !1834, size: 64, offset: 512)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!85, !301, !1837}
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1810, file: !33, line: 337, baseType: !1839, size: 64, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!85, !301, !1832}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1810, file: !33, line: 339, baseType: !1843, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!85, !452, !1846}
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !453, file: !28, line: 1199, baseType: !1848, size: 64, offset: 512)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1850)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !33, line: 430, size: 704, elements: !1851)
!1851 = !{!1852, !1858, !1859, !1863, !1864, !1865, !1880, !1903, !1907, !1908, !1931}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1850, file: !33, line: 431, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!85, !452, !85, !85, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1333)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1850, file: !33, line: 432, baseType: !976, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1850, file: !33, line: 433, baseType: !1860, size: 64, offset: 128)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!85, !452, !7}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1850, file: !33, line: 434, baseType: !1860, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1850, file: !33, line: 435, baseType: !976, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1850, file: !33, line: 436, baseType: !1866, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!85, !452, !85, !1869}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !33, line: 417, size: 256, elements: !1871)
!1871 = !{!1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1870, file: !33, line: 418, baseType: !85, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1870, file: !33, line: 419, baseType: !7, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1870, file: !33, line: 420, baseType: !7, size: 32, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1870, file: !33, line: 422, baseType: !7, size: 32, offset: 96)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1870, file: !33, line: 423, baseType: !7, size: 32, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1870, file: !33, line: 424, baseType: !7, size: 32, offset: 160)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1870, file: !33, line: 425, baseType: !7, size: 32, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1870, file: !33, line: 426, baseType: !7, size: 32, offset: 224)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1850, file: !33, line: 437, baseType: !1881, size: 64, offset: 384)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!85, !452, !1760, !1884}
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !33, line: 345, size: 960, elements: !1886)
!1886 = !{!1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1885, file: !33, line: 346, baseType: !85, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1885, file: !33, line: 347, baseType: !374, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1885, file: !33, line: 348, baseType: !374, size: 64, offset: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1885, file: !33, line: 349, baseType: !374, size: 64, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1885, file: !33, line: 350, baseType: !374, size: 64, offset: 256)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1885, file: !33, line: 351, baseType: !374, size: 64, offset: 320)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1885, file: !33, line: 352, baseType: !374, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1885, file: !33, line: 353, baseType: !572, size: 64, offset: 448)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1885, file: !33, line: 355, baseType: !572, size: 64, offset: 512)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1885, file: !33, line: 356, baseType: !85, size: 32, offset: 576)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1885, file: !33, line: 357, baseType: !85, size: 32, offset: 608)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1885, file: !33, line: 358, baseType: !374, size: 64, offset: 640)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1885, file: !33, line: 359, baseType: !374, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1885, file: !33, line: 360, baseType: !374, size: 64, offset: 768)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1885, file: !33, line: 361, baseType: !572, size: 64, offset: 832)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1885, file: !33, line: 362, baseType: !85, size: 32, offset: 896)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1850, file: !33, line: 438, baseType: !1904, size: 64, offset: 448)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!85, !452, !1846, !1884}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1850, file: !33, line: 440, baseType: !1881, size: 64, offset: 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1850, file: !33, line: 441, baseType: !1909, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!85, !452, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !33, line: 411, size: 1408, elements: !1914)
!1914 = !{!1915, !1916}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1913, file: !33, line: 412, baseType: !7, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1913, file: !33, line: 413, baseType: !1917, size: 1344, offset: 64)
!1917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1918, size: 1344, elements: !222)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !33, line: 397, size: 448, elements: !1919)
!1919 = !{!1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1930}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1918, file: !33, line: 398, baseType: !7, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1918, file: !33, line: 399, baseType: !7, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1918, file: !33, line: 401, baseType: !7, size: 32, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1918, file: !33, line: 402, baseType: !7, size: 32, offset: 96)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1918, file: !33, line: 403, baseType: !7, size: 32, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1918, file: !33, line: 404, baseType: !7, size: 32, offset: 160)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1918, file: !33, line: 405, baseType: !7, size: 32, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1918, file: !33, line: 406, baseType: !376, size: 64, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1918, file: !33, line: 407, baseType: !1929, size: 64, offset: 320)
!1929 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !124, line: 132, baseType: !374)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1918, file: !33, line: 408, baseType: !1929, size: 64, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1850, file: !33, line: 442, baseType: !1860, size: 64, offset: 640)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !453, file: !28, line: 1200, baseType: !1933, size: 64, offset: 576)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1935 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !28, line: 54, flags: DIFlagFwdDecl)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !453, file: !28, line: 1201, baseType: !271, size: 64, offset: 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !453, file: !28, line: 1202, baseType: !271, size: 64, offset: 704)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !453, file: !28, line: 1203, baseType: !271, size: 64, offset: 768)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !453, file: !28, line: 1204, baseType: !336, size: 64, offset: 832)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !453, file: !28, line: 1205, baseType: !1165, size: 320, offset: 896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !453, file: !28, line: 1206, baseType: !85, size: 32, offset: 1216)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !453, file: !28, line: 1207, baseType: !171, size: 32, offset: 1248)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !453, file: !28, line: 1209, baseType: !125, size: 64, offset: 1280)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !453, file: !28, line: 1211, baseType: !1945, size: 64, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1948)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !28, line: 1211, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !453, file: !28, line: 1223, baseType: !1950, size: 64, offset: 1408)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !353, line: 34, size: 64, elements: !1951)
!1951 = !{!1952}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1950, file: !353, line: 35, baseType: !356, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !453, file: !28, line: 1224, baseType: !138, size: 128, offset: 1472)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !453, file: !28, line: 1225, baseType: !1955, size: 64, offset: 1600)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !28, line: 1225, flags: DIFlagFwdDecl)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !453, file: !28, line: 1226, baseType: !1958, size: 64, offset: 1664)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !28, line: 1226, flags: DIFlagFwdDecl)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !453, file: !28, line: 1227, baseType: !1961, size: 64, offset: 1728)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !28, line: 50, flags: DIFlagFwdDecl)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !453, file: !28, line: 1228, baseType: !1964, size: 64, offset: 1792)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !28, line: 1228, flags: DIFlagFwdDecl)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !453, file: !28, line: 1229, baseType: !808, size: 128, offset: 1856)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !453, file: !28, line: 1230, baseType: !7, size: 32, offset: 1984)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !453, file: !28, line: 1231, baseType: !1969, size: 2496, offset: 2048)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !33, line: 521, size: 2496, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1975, !2007}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1969, file: !33, line: 522, baseType: !7, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1969, file: !33, line: 523, baseType: !1165, size: 320, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1969, file: !33, line: 524, baseType: !1974, size: 192, offset: 384)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 192, elements: !222)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1969, file: !33, line: 525, baseType: !1976, size: 1728, offset: 576)
!1976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1977, size: 1728, elements: !222)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !33, line: 222, size: 576, elements: !1978)
!1978 = !{!1979, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1977, file: !33, line: 223, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !33, line: 445, size: 256, elements: !1982)
!1982 = !{!1983, !1984, !1997, !1998}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1981, file: !33, line: 446, baseType: !85, size: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1981, file: !33, line: 447, baseType: !1985, size: 64, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1987)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !33, line: 312, size: 512, elements: !1988)
!1988 = !{!1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1987, file: !33, line: 313, baseType: !976, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1987, file: !33, line: 314, baseType: !976, size: 64, offset: 64)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1987, file: !33, line: 315, baseType: !976, size: 64, offset: 128)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1987, file: !33, line: 316, baseType: !976, size: 64, offset: 192)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1987, file: !33, line: 317, baseType: !1813, size: 64, offset: 256)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1987, file: !33, line: 318, baseType: !1813, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1987, file: !33, line: 319, baseType: !1813, size: 64, offset: 384)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1987, file: !33, line: 320, baseType: !1843, size: 64, offset: 448)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1981, file: !33, line: 448, baseType: !491, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1981, file: !33, line: 449, baseType: !1980, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1977, file: !33, line: 224, baseType: !85, size: 32, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1977, file: !33, line: 226, baseType: !138, size: 128, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1977, file: !33, line: 227, baseType: !271, size: 64, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1977, file: !33, line: 228, baseType: !7, size: 32, offset: 320)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1977, file: !33, line: 229, baseType: !7, size: 32, offset: 352)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1977, file: !33, line: 230, baseType: !1781, size: 64, offset: 384)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1977, file: !33, line: 231, baseType: !1781, size: 64, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1977, file: !33, line: 232, baseType: !125, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1969, file: !33, line: 526, baseType: !2008, size: 192, offset: 2304)
!2008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1985, size: 192, elements: !222)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !453, file: !28, line: 1233, baseType: !2010, size: 2368, offset: 4544)
!2010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !28, line: 1184, size: 2368, elements: !2011)
!2011 = !{!2012, !2013, !2014}
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2010, file: !28, line: 1185, baseType: !191, size: 16)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2010, file: !28, line: 1186, baseType: !191, size: 16, offset: 16)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2010, file: !28, line: 1187, baseType: !2015, size: 2304, offset: 64)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2016, size: 2304, elements: !222)
!2016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2017, line: 12, size: 768, elements: !2018)
!2017 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2018 = !{!2019, !2027, !2028, !3278, !3279}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2016, file: !2017, line: 13, baseType: !2020, size: 384)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2021, line: 17, size: 384, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2022 = !{!2023, !2024, !2025, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2020, file: !2021, line: 18, baseType: !85, size: 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2020, file: !2021, line: 19, baseType: !85, size: 32, offset: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2020, file: !2021, line: 20, baseType: !1102, size: 192, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2020, file: !2021, line: 22, baseType: !782, size: 128, align: 64, offset: 256)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2016, file: !2017, line: 14, baseType: !634, size: 64, offset: 384)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2016, file: !2017, line: 15, baseType: !2029, size: 64, offset: 448)
!2029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2030, line: 16, size: 64, elements: !2031)
!2030 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2031 = !{!2032}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2029, file: !2030, line: 17, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1679, line: 746, size: 58368, elements: !2035)
!2035 = !{!2036, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2116, !2127, !2222, !2226, !2229, !2260, !2261, !2262, !2263, !2274, !2276, !2277, !2278, !2279, !2280, !2281, !2292, !2293, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2310, !2311, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2340, !2341, !2342, !2404, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2419, !2420, !2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2452, !2458, !2459, !2460, !2461, !2462, !2466, !2469, !2476, !2481, !2484, !2487, !2490, !2494, !2632, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2670, !2671, !2672, !2681, !2689, !2690, !2691, !2692, !2693, !2698, !2699, !2700, !2703, !2704, !2707, !2710, !2713, !2721, !2724, !2725, !2811, !2812, !2813, !2814, !2815, !2821, !2822, !2823, !2824, !2827, !2828, !2831, !2834, !2835, !2838, !2839, !2840, !2843, !2844, !2845, !2846, !2847, !2848, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2880, !2881, !2947, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2959, !3031, !3033, !3034, !3035, !3036, !3037, !3038, !3041, !3042, !3043, !3044, !3045, !3046, !3047, !3048, !3049, !3050, !3051, !3055, !3056, !3057}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2034, file: !1679, line: 752, baseType: !2037, size: 192)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2038, line: 56, size: 192, elements: !2039)
!2038 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2039 = !{!2040, !2041, !2042, !2043}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2037, file: !2038, line: 57, baseType: !271, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2037, file: !2038, line: 58, baseType: !271, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2037, file: !2038, line: 59, baseType: !370, size: 32, offset: 128)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2037, file: !2038, line: 61, baseType: !370, size: 32, offset: 160)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2034, file: !1679, line: 754, baseType: !7, size: 32, offset: 192)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2034, file: !1679, line: 767, baseType: !125, size: 64, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2034, file: !1679, line: 768, baseType: !1091, size: 32, offset: 320)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2034, file: !1679, line: 770, baseType: !7, size: 32, offset: 352)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2034, file: !1679, line: 771, baseType: !7, size: 32, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2034, file: !1679, line: 774, baseType: !85, size: 32, offset: 416)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2034, file: !1679, line: 775, baseType: !2051, size: 128, offset: 448)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2052, line: 58, size: 128, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2053 = !{!2054, !2055, !2060, !2061}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2051, file: !2052, line: 59, baseType: !1048, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2051, file: !2052, line: 60, baseType: !2056, size: 32, offset: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2051, file: !2052, line: 60, size: 32, elements: !2057)
!2057 = !{!2058, !2059}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2056, file: !2052, line: 61, baseType: !7, size: 32)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2056, file: !2052, line: 62, baseType: !171, size: 32)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2051, file: !2052, line: 65, baseType: !189, size: 16, offset: 96)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2051, file: !2052, line: 65, baseType: !189, size: 16, offset: 112)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2034, file: !1679, line: 776, baseType: !7, size: 32, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2034, file: !1679, line: 777, baseType: !271, size: 64, offset: 640)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2034, file: !1679, line: 778, baseType: !2033, size: 64, offset: 704)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2034, file: !1679, line: 787, baseType: !85, size: 32, offset: 768)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2034, file: !1679, line: 788, baseType: !85, size: 32, offset: 800)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2034, file: !1679, line: 790, baseType: !85, size: 32, offset: 832)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2034, file: !1679, line: 792, baseType: !85, size: 32, offset: 864)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2034, file: !1679, line: 793, baseType: !85, size: 32, offset: 896)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2034, file: !1679, line: 794, baseType: !85, size: 32, offset: 928)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2034, file: !1679, line: 795, baseType: !7, size: 32, offset: 960)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2034, file: !1679, line: 797, baseType: !2073, size: 2048, offset: 1024)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1679, line: 551, size: 2048, elements: !2074)
!2074 = !{!2075, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2095, !2098, !2099, !2100}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2073, file: !1679, line: 553, baseType: !2076, size: 128)
!2076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1679, line: 411, size: 128, elements: !2077)
!2077 = !{!2078, !2079}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2076, file: !1679, line: 412, baseType: !271, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2076, file: !1679, line: 413, baseType: !370, size: 32, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2073, file: !1679, line: 554, baseType: !674, size: 192, align: 64, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2073, file: !1679, line: 555, baseType: !374, size: 64, offset: 320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2073, file: !1679, line: 556, baseType: !374, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2073, file: !1679, line: 558, baseType: !138, size: 128, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2073, file: !1679, line: 559, baseType: !7, size: 32, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2073, file: !1679, line: 561, baseType: !374, size: 64, offset: 640)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2073, file: !1679, line: 562, baseType: !374, size: 64, offset: 704)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2073, file: !1679, line: 563, baseType: !374, size: 64, offset: 768)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2073, file: !1679, line: 564, baseType: !374, size: 64, offset: 832)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2073, file: !1679, line: 565, baseType: !572, size: 64, offset: 896)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2073, file: !1679, line: 566, baseType: !374, size: 64, offset: 960)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2073, file: !1679, line: 568, baseType: !374, size: 64, offset: 1024)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2073, file: !1679, line: 571, baseType: !85, size: 32, offset: 1088)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2073, file: !1679, line: 572, baseType: !2094, size: 64, offset: 1152)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2073, file: !1679, line: 574, baseType: !2096, size: 64, offset: 1216)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1679, line: 49, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2073, file: !1679, line: 576, baseType: !2096, size: 64, offset: 1280)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2073, file: !1679, line: 578, baseType: !271, size: 64, offset: 1344)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2073, file: !1679, line: 588, baseType: !2101, size: 512, align: 512, offset: 1536)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1679, line: 497, size: 512, align: 512, elements: !2102)
!2102 = !{!2103, !2104, !2105, !2106, !2107, !2108, !2109, !2110, !2111}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2101, file: !1679, line: 498, baseType: !374, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2101, file: !1679, line: 499, baseType: !374, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2101, file: !1679, line: 500, baseType: !374, size: 64, offset: 128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2101, file: !1679, line: 501, baseType: !370, size: 32, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2101, file: !1679, line: 502, baseType: !370, size: 32, offset: 224)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2101, file: !1679, line: 503, baseType: !271, size: 64, offset: 256)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2101, file: !1679, line: 504, baseType: !271, size: 64, offset: 320)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2101, file: !1679, line: 505, baseType: !271, size: 64, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2101, file: !1679, line: 506, baseType: !2112, size: 64, align: 64, offset: 448)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1679, line: 445, size: 64, align: 64, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2112, file: !1679, line: 446, baseType: !7, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2112, file: !1679, line: 447, baseType: !7, size: 32, offset: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2034, file: !1679, line: 798, baseType: !2117, size: 384, offset: 3072)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1679, line: 592, size: 384, elements: !2118)
!2118 = !{!2119, !2120, !2121, !2122, !2123, !2124, !2125}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2117, file: !1679, line: 593, baseType: !138, size: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2117, file: !1679, line: 594, baseType: !271, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2117, file: !1679, line: 595, baseType: !271, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2117, file: !1679, line: 596, baseType: !7, size: 32, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2117, file: !1679, line: 597, baseType: !191, size: 16, offset: 288)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2117, file: !1679, line: 598, baseType: !191, size: 16, offset: 304)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2117, file: !1679, line: 600, baseType: !2126, size: 64, offset: 320)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2034, file: !1679, line: 799, baseType: !2128, size: 1792, offset: 3456)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1679, line: 610, size: 1792, elements: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141, !2142, !2143, !2219, !2220}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2128, file: !1679, line: 611, baseType: !674, size: 192, align: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2128, file: !1679, line: 618, baseType: !374, size: 64, offset: 192)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2128, file: !1679, line: 619, baseType: !374, size: 64, offset: 256)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2128, file: !1679, line: 620, baseType: !374, size: 64, offset: 320)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2128, file: !1679, line: 621, baseType: !374, size: 64, offset: 384)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2128, file: !1679, line: 622, baseType: !374, size: 64, offset: 448)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2128, file: !1679, line: 629, baseType: !572, size: 64, offset: 512)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2128, file: !1679, line: 630, baseType: !374, size: 64, offset: 576)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2128, file: !1679, line: 631, baseType: !7, size: 32, offset: 640)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2128, file: !1679, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2128, file: !1679, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2128, file: !1679, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2128, file: !1679, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2128, file: !1679, line: 662, baseType: !2144, size: 512, offset: 704)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !2145)
!2145 = !{!2146, !2154, !2155, !2160, !2215, !2216, !2217, !2218}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2144, file: !39, line: 119, baseType: !2147, size: 256)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2148, line: 9, size: 256, elements: !2149)
!2148 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2149 = !{!2150, !2151}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2147, file: !2148, line: 10, baseType: !674, size: 192, align: 64)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2147, file: !2148, line: 11, baseType: !2152, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2153, line: 29, baseType: !572)
!2153 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2144, file: !39, line: 120, baseType: !2152, size: 64, offset: 256)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2144, file: !39, line: 121, baseType: !2156, size: 64, offset: 320)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!38, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2144, file: !39, line: 122, baseType: !2161, size: 64, offset: 384)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !2163)
!2163 = !{!2164, !2189, !2190, !2193, !2198, !2199, !2210, !2214}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2162, file: !39, line: 160, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !2167)
!2167 = !{!2168, !2169, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2166, file: !39, line: 216, baseType: !520, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2166, file: !39, line: 217, baseType: !7, size: 32, offset: 32)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2166, file: !39, line: 218, baseType: !7, size: 32, offset: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2166, file: !39, line: 219, baseType: !7, size: 32, offset: 96)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2166, file: !39, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2166, file: !39, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2166, file: !39, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2166, file: !39, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2166, file: !39, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2166, file: !39, line: 226, baseType: !7, size: 32, offset: 160)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2166, file: !39, line: 227, baseType: !191, size: 16, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2166, file: !39, line: 228, baseType: !191, size: 16, offset: 208)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2166, file: !39, line: 229, baseType: !7, size: 32, offset: 224)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2166, file: !39, line: 235, baseType: !2152, size: 64, offset: 256)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2166, file: !39, line: 236, baseType: !2159, size: 64, offset: 320)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2166, file: !39, line: 237, baseType: !2152, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2166, file: !39, line: 238, baseType: !2159, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2166, file: !39, line: 239, baseType: !2186, size: 4096, align: 512, offset: 512)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2162, size: 4096, align: 512, elements: !2187)
!2187 = !{!2188}
!2188 = !DISubrange(count: 8)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2162, file: !39, line: 161, baseType: !7, size: 32, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2162, file: !39, line: 162, baseType: !2191, size: 32, offset: 96)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !124, line: 32, baseType: !2192)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !255, line: 96, baseType: !85)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2162, file: !39, line: 163, baseType: !2194, size: 32, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !343, line: 274, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !343, line: 274, size: 32, elements: !2196)
!2196 = !{!2197}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2195, file: !343, line: 274, baseType: !347, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2162, file: !39, line: 164, baseType: !2159, size: 64, offset: 192)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2162, file: !39, line: 165, baseType: !2200, size: 128, offset: 256)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2148, line: 14, size: 128, elements: !2201)
!2201 = !{!2202}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2200, file: !2148, line: 15, baseType: !2203, size: 128)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !675, line: 26, size: 128, elements: !2204)
!2204 = !{!2205, !2209}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2203, file: !675, line: 27, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !675, line: 12, size: 64, elements: !2207)
!2207 = !{!2208}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2206, file: !675, line: 13, baseType: !679, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2203, file: !675, line: 28, baseType: !679, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2162, file: !39, line: 166, baseType: !2211, size: 64, offset: 384)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!2152}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2162, file: !39, line: 167, baseType: !2152, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2144, file: !39, line: 123, baseType: !179, size: 8, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2144, file: !39, line: 124, baseType: !179, size: 8, offset: 456)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2144, file: !39, line: 125, baseType: !179, size: 8, offset: 464)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2144, file: !39, line: 126, baseType: !179, size: 8, offset: 472)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2128, file: !1679, line: 671, baseType: !2144, size: 512, offset: 1216)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2128, file: !1679, line: 679, baseType: !2221, size: 64, offset: 1728)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2034, file: !1679, line: 800, baseType: !2223, size: 64, offset: 5248)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2225)
!2225 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1679, line: 800, flags: DIFlagFwdDecl)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2034, file: !1679, line: 809, baseType: !2227, size: 64, offset: 5312)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1679, line: 70, flags: DIFlagFwdDecl)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2034, file: !1679, line: 825, baseType: !2230, size: 2048, align: 512, offset: 5632)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1679, line: 509, size: 2048, align: 512, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2230, file: !1679, line: 511, baseType: !374, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2230, file: !1679, line: 512, baseType: !374, size: 64, offset: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2230, file: !1679, line: 513, baseType: !374, size: 64, offset: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2230, file: !1679, line: 514, baseType: !374, size: 64, offset: 192)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2230, file: !1679, line: 515, baseType: !374, size: 64, offset: 256)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2230, file: !1679, line: 516, baseType: !374, size: 64, offset: 320)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2230, file: !1679, line: 518, baseType: !374, size: 64, offset: 384)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2230, file: !1679, line: 519, baseType: !374, size: 64, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2230, file: !1679, line: 520, baseType: !572, size: 64, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2230, file: !1679, line: 522, baseType: !374, size: 64, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2230, file: !1679, line: 523, baseType: !374, size: 64, offset: 640)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2230, file: !1679, line: 524, baseType: !572, size: 64, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2230, file: !1679, line: 526, baseType: !572, size: 64, offset: 768)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2230, file: !1679, line: 527, baseType: !374, size: 64, offset: 832)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2230, file: !1679, line: 529, baseType: !374, size: 64, offset: 896)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2230, file: !1679, line: 530, baseType: !374, size: 64, offset: 960)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2230, file: !1679, line: 531, baseType: !374, size: 64, offset: 1024)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2230, file: !1679, line: 532, baseType: !374, size: 64, offset: 1088)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2230, file: !1679, line: 533, baseType: !374, size: 64, offset: 1152)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2230, file: !1679, line: 535, baseType: !374, size: 64, offset: 1216)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2230, file: !1679, line: 536, baseType: !374, size: 64, offset: 1280)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2230, file: !1679, line: 537, baseType: !374, size: 64, offset: 1344)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2230, file: !1679, line: 538, baseType: !374, size: 64, offset: 1408)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2230, file: !1679, line: 539, baseType: !374, size: 64, offset: 1472)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2230, file: !1679, line: 540, baseType: !374, size: 64, offset: 1536)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2230, file: !1679, line: 541, baseType: !374, size: 64, offset: 1600)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2230, file: !1679, line: 542, baseType: !374, size: 64, offset: 1664)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2230, file: !1679, line: 543, baseType: !374, size: 64, offset: 1728)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2034, file: !1679, line: 833, baseType: !7, size: 32, offset: 7680)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2034, file: !1679, line: 836, baseType: !7, size: 32, offset: 7712)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2034, file: !1679, line: 837, baseType: !85, size: 32, offset: 7744)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2034, file: !1679, line: 838, baseType: !2264, size: 64, offset: 7808)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2266)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2267, line: 19, baseType: !2268)
!2267 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2267, line: 19, size: 64, elements: !2269)
!2269 = !{!2270}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2268, file: !2267, line: 19, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 64, elements: !2272)
!2272 = !{!2273}
!2273 = !DISubrange(count: 1)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2034, file: !1679, line: 839, baseType: !2275, size: 64, offset: 7872)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2034, file: !1679, line: 840, baseType: !2266, size: 64, offset: 7936)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2034, file: !1679, line: 841, baseType: !125, size: 64, offset: 8000)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2034, file: !1679, line: 843, baseType: !191, size: 16, offset: 8064)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2034, file: !1679, line: 845, baseType: !191, size: 16, offset: 8080)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2034, file: !1679, line: 848, baseType: !85, size: 32, offset: 8096)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2034, file: !1679, line: 849, baseType: !2282, size: 32, offset: 8128)
!2282 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1679, line: 718, size: 32, elements: !2283)
!2283 = !{!2284, !2291}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2282, file: !1679, line: 724, baseType: !2285, size: 32)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2282, file: !1679, line: 719, size: 32, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2290}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2285, file: !1679, line: 720, baseType: !179, size: 8)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2285, file: !1679, line: 721, baseType: !179, size: 8, offset: 8)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2285, file: !1679, line: 722, baseType: !179, size: 8, offset: 16)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2285, file: !1679, line: 723, baseType: !179, size: 8, offset: 24)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2282, file: !1679, line: 725, baseType: !370, size: 32)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2034, file: !1679, line: 850, baseType: !138, size: 128, offset: 8192)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2034, file: !1679, line: 851, baseType: !2294, size: 64, offset: 8320)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1679, line: 60, flags: DIFlagFwdDecl)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2034, file: !1679, line: 855, baseType: !271, size: 64, offset: 8384)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2034, file: !1679, line: 856, baseType: !179, size: 8, offset: 8448)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2034, file: !1679, line: 857, baseType: !179, size: 8, offset: 8456)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2034, file: !1679, line: 858, baseType: !85, size: 32, offset: 8480)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2034, file: !1679, line: 859, baseType: !138, size: 128, offset: 8512)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2034, file: !1679, line: 860, baseType: !85, size: 32, offset: 8640)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2034, file: !1679, line: 861, baseType: !138, size: 128, offset: 8704)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2034, file: !1679, line: 873, baseType: !2304, size: 256, offset: 8832)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1679, line: 376, size: 256, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2309}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2304, file: !1679, line: 381, baseType: !271, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2304, file: !1679, line: 384, baseType: !376, size: 64, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2304, file: !1679, line: 389, baseType: !376, size: 64, offset: 128)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2304, file: !1679, line: 392, baseType: !376, size: 64, offset: 192)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2034, file: !1679, line: 875, baseType: !138, size: 128, offset: 9088)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2034, file: !1679, line: 877, baseType: !2312, size: 320, offset: 9216)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2313, line: 86, size: 320, elements: !2314)
!2313 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2314 = !{!2315, !2316, !2317}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2312, file: !2313, line: 87, baseType: !85, size: 32)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2312, file: !2313, line: 88, baseType: !138, size: 128, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2312, file: !2313, line: 89, baseType: !138, size: 128, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2034, file: !1679, line: 878, baseType: !674, size: 192, align: 64, offset: 9536)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2034, file: !1679, line: 881, baseType: !1446, size: 64, offset: 9728)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2034, file: !1679, line: 882, baseType: !1446, size: 64, offset: 9792)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2034, file: !1679, line: 884, baseType: !85, size: 32, offset: 9856)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2034, file: !1679, line: 885, baseType: !85, size: 32, offset: 9888)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2034, file: !1679, line: 886, baseType: !85, size: 32, offset: 9920)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2034, file: !1679, line: 888, baseType: !85, size: 32, offset: 9952)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2034, file: !1679, line: 890, baseType: !271, size: 64, offset: 9984)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2034, file: !1679, line: 893, baseType: !7, size: 32, offset: 10048)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2034, file: !1679, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2034, file: !1679, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2034, file: !1679, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2034, file: !1679, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2034, file: !1679, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2034, file: !1679, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2034, file: !1679, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2034, file: !1679, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2034, file: !1679, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2034, file: !1679, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2034, file: !1679, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2034, file: !1679, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2034, file: !1679, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2034, file: !1679, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2034, file: !1679, line: 969, baseType: !271, size: 64, offset: 10176)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2034, file: !1679, line: 971, baseType: !2343, size: 448, offset: 10240)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !44, line: 25, size: 448, elements: !2344)
!2344 = !{!2345, !2346, !2351}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2343, file: !44, line: 26, baseType: !271, size: 64)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2343, file: !44, line: 27, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!257, !2350}
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, scope: !2343, file: !44, line: 28, baseType: !2352, size: 320, offset: 128)
!2352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2343, file: !44, line: 28, size: 320, elements: !2353)
!2353 = !{!2354, !2364, !2389}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2352, file: !44, line: 37, baseType: !2355, size: 320)
!2355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !44, line: 30, size: 320, elements: !2356)
!2356 = !{!2357, !2359, !2360, !2361, !2362, !2363}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2355, file: !44, line: 31, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2355, file: !44, line: 32, baseType: !370, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2355, file: !44, line: 33, baseType: !370, size: 32, offset: 96)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2355, file: !44, line: 34, baseType: !370, size: 32, offset: 128)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2355, file: !44, line: 35, baseType: !374, size: 64, offset: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2355, file: !44, line: 36, baseType: !2358, size: 64, offset: 256)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2352, file: !44, line: 47, baseType: !2365, size: 192)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !44, line: 39, size: 192, elements: !2366)
!2366 = !{!2367, !2368, !2369, !2388}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2365, file: !44, line: 40, baseType: !2191, size: 32)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2365, file: !44, line: 41, baseType: !43, size: 32, offset: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, scope: !2365, file: !44, line: 42, baseType: !2370, size: 64, offset: 64)
!2370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2365, file: !44, line: 42, size: 64, elements: !2371)
!2371 = !{!2372, !2380}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2370, file: !44, line: 43, baseType: !2373, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2375, line: 7, size: 128, elements: !2376)
!2375 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2376 = !{!2377, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2374, file: !2375, line: 8, baseType: !2378, size: 64)
!2378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !255, line: 93, baseType: !464)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2374, file: !2375, line: 9, baseType: !464, size: 64, offset: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2370, file: !44, line: 44, baseType: !2381, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2383, line: 7, size: 64, elements: !2384)
!2383 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2384 = !{!2385, !2387}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2382, file: !2383, line: 8, baseType: !2386, size: 32)
!2386 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2383, line: 5, baseType: !558)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2382, file: !2383, line: 9, baseType: !558, size: 32, offset: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2365, file: !44, line: 46, baseType: !374, size: 64, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2352, file: !44, line: 55, baseType: !2390, size: 256)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2352, file: !44, line: 49, size: 256, elements: !2391)
!2391 = !{!2392, !2400, !2401, !2402, !2403}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2390, file: !44, line: 50, baseType: !2393, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2395, line: 36, size: 64, elements: !2396)
!2395 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2396 = !{!2397, !2398, !2399}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2394, file: !2395, line: 37, baseType: !85, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2394, file: !2395, line: 38, baseType: !700, size: 16, offset: 32)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2394, file: !2395, line: 39, baseType: !700, size: 16, offset: 48)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2390, file: !44, line: 51, baseType: !85, size: 32, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2390, file: !44, line: 52, baseType: !85, size: 32, offset: 96)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2390, file: !44, line: 53, baseType: !271, size: 64, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2390, file: !44, line: 54, baseType: !271, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2034, file: !1679, line: 973, baseType: !2405, size: 32, offset: 10688)
!2405 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !124, line: 27, baseType: !2406)
!2406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !255, line: 28, baseType: !85)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2034, file: !1679, line: 974, baseType: !2405, size: 32, offset: 10720)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2034, file: !1679, line: 978, baseType: !271, size: 64, offset: 10752)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2034, file: !1679, line: 987, baseType: !2033, size: 64, offset: 10816)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2034, file: !1679, line: 990, baseType: !2033, size: 64, offset: 10880)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2034, file: !1679, line: 995, baseType: !138, size: 128, offset: 10944)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2034, file: !1679, line: 996, baseType: !138, size: 128, offset: 11072)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2034, file: !1679, line: 997, baseType: !2033, size: 64, offset: 11200)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2034, file: !1679, line: 1005, baseType: !138, size: 128, offset: 11264)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2034, file: !1679, line: 1006, baseType: !138, size: 128, offset: 11392)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2034, file: !1679, line: 1009, baseType: !1087, size: 64, offset: 11520)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2034, file: !1679, line: 1010, baseType: !2418, size: 512, offset: 11584)
!2418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !808, size: 512, elements: !792)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2034, file: !1679, line: 1011, baseType: !138, size: 128, offset: 12096)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2034, file: !1679, line: 1012, baseType: !138, size: 128, offset: 12224)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2034, file: !1679, line: 1014, baseType: !510, size: 64, offset: 12352)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2034, file: !1679, line: 1017, baseType: !691, size: 64, offset: 12416)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2034, file: !1679, line: 1020, baseType: !691, size: 64, offset: 12480)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2034, file: !1679, line: 1023, baseType: !125, size: 64, offset: 12544)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2034, file: !1679, line: 1025, baseType: !374, size: 64, offset: 12608)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2034, file: !1679, line: 1026, baseType: !374, size: 64, offset: 12672)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2034, file: !1679, line: 1031, baseType: !374, size: 64, offset: 12736)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2034, file: !1679, line: 1032, baseType: !2429, size: 192, offset: 12800)
!2429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1679, line: 324, size: 192, elements: !2430)
!2430 = !{!2431, !2432, !2433}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2429, file: !1679, line: 326, baseType: !374, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2429, file: !1679, line: 327, baseType: !374, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2429, file: !1679, line: 328, baseType: !520, size: 32, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2034, file: !1679, line: 1041, baseType: !271, size: 64, offset: 12992)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2034, file: !1679, line: 1042, baseType: !271, size: 64, offset: 13056)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2034, file: !1679, line: 1045, baseType: !374, size: 64, offset: 13120)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2034, file: !1679, line: 1048, baseType: !374, size: 64, offset: 13184)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2034, file: !1679, line: 1051, baseType: !271, size: 64, offset: 13248)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2034, file: !1679, line: 1052, baseType: !271, size: 64, offset: 13312)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2034, file: !1679, line: 1055, baseType: !2441, size: 640, offset: 13376)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2442, line: 132, size: 640, elements: !2443)
!2442 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2443 = !{!2444, !2450, !2451}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2441, file: !2442, line: 133, baseType: !2445, size: 576)
!2445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2446, size: 576, elements: !222)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2442, line: 117, size: 192, elements: !2447)
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2446, file: !2442, line: 118, baseType: !374, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2446, file: !2442, line: 119, baseType: !2200, size: 128, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2441, file: !2442, line: 134, baseType: !7, size: 32, offset: 576)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2441, file: !2442, line: 135, baseType: !7, size: 32, offset: 608)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2034, file: !1679, line: 1058, baseType: !2453, size: 448, offset: 14016)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2442, line: 144, size: 448, elements: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2453, file: !2442, line: 145, baseType: !782, size: 128, align: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2453, file: !2442, line: 146, baseType: !562, size: 256, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2453, file: !2442, line: 147, baseType: !7, size: 32, offset: 384)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2034, file: !1679, line: 1064, baseType: !1124, size: 64, offset: 14464)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2034, file: !1679, line: 1067, baseType: !1124, size: 64, offset: 14528)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2034, file: !1679, line: 1070, baseType: !1124, size: 64, offset: 14592)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2034, file: !1679, line: 1074, baseType: !1151, size: 64, offset: 14656)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2034, file: !1679, line: 1084, baseType: !2463, size: 128, offset: 14720)
!2463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 128, elements: !2464)
!2464 = !{!2465}
!2465 = !DISubrange(count: 16)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2034, file: !1679, line: 1086, baseType: !2467, size: 64, offset: 14848)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1679, line: 55, flags: DIFlagFwdDecl)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2034, file: !1679, line: 1089, baseType: !2470, size: 64, offset: 14912)
!2470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2471, line: 12, size: 64, elements: !2472)
!2471 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2472 = !{!2473}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2470, file: !2471, line: 13, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2471, line: 8, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2034, file: !1679, line: 1090, baseType: !2477, size: 128, offset: 14976)
!2477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2478, line: 13, size: 128, elements: !2479)
!2478 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2479 = !{!2480}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2477, file: !2478, line: 14, baseType: !138, size: 128)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2034, file: !1679, line: 1097, baseType: !2482, size: 64, offset: 15104)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1679, line: 50, flags: DIFlagFwdDecl)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2034, file: !1679, line: 1100, baseType: !2485, size: 64, offset: 15168)
!2485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2486, size: 64)
!2486 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1679, line: 1100, flags: DIFlagFwdDecl)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2034, file: !1679, line: 1103, baseType: !2488, size: 64, offset: 15232)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1679, line: 53, flags: DIFlagFwdDecl)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2034, file: !1679, line: 1107, baseType: !2491, size: 64, offset: 15296)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2493, line: 35, flags: DIFlagFwdDecl)
!2493 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2034, file: !1679, line: 1110, baseType: !2495, size: 64, offset: 15360)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2497, line: 93, size: 8768, elements: !2498)
!2497 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2498 = !{!2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2546, !2555, !2556, !2558, !2559, !2560, !2563, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2601, !2602, !2609, !2619, !2622, !2623, !2626, !2627, !2628, !2629, !2630, !2631}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2496, file: !2497, line: 94, baseType: !1091, size: 32)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2496, file: !2497, line: 95, baseType: !171, size: 32, offset: 32)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2496, file: !2497, line: 96, baseType: !85, size: 32, offset: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2496, file: !2497, line: 97, baseType: !85, size: 32, offset: 96)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2496, file: !2497, line: 98, baseType: !138, size: 128, offset: 128)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2496, file: !2497, line: 100, baseType: !1102, size: 192, offset: 256)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2496, file: !2497, line: 103, baseType: !2033, size: 64, offset: 448)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2496, file: !2497, line: 106, baseType: !2507, size: 192, offset: 512)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1309, line: 32, size: 192, elements: !2508)
!2508 = !{!2509, !2510}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2507, file: !1309, line: 33, baseType: !138, size: 128)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2507, file: !1309, line: 34, baseType: !2511, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2512, line: 25, baseType: !2513)
!2512 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2513 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2512, line: 23, size: 64, elements: !2514)
!2514 = !{!2515}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2513, file: !2512, line: 24, baseType: !2271, size: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2496, file: !2497, line: 109, baseType: !932, size: 64, offset: 704)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2496, file: !2497, line: 112, baseType: !85, size: 32, offset: 768)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2496, file: !2497, line: 114, baseType: !85, size: 32, offset: 800)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2496, file: !2497, line: 115, baseType: !2033, size: 64, offset: 832)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2496, file: !2497, line: 118, baseType: !85, size: 32, offset: 896)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2496, file: !2497, line: 119, baseType: !7, size: 32, offset: 928)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2496, file: !2497, line: 121, baseType: !2523, size: 64, offset: 960)
!2523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2524, size: 64)
!2524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2497, line: 80, size: 448, elements: !2525)
!2525 = !{!2526, !2527, !2533}
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2524, file: !2497, line: 81, baseType: !171, size: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2524, file: !2497, line: 82, baseType: !2528, size: 128, offset: 64)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2497, line: 75, size: 128, elements: !2529)
!2529 = !{!2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2528, file: !2497, line: 76, baseType: !2033, size: 64)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2528, file: !2497, line: 77, baseType: !2532, size: 64, offset: 64)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2524, file: !2497, line: 83, baseType: !511, size: 256, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2496, file: !2497, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2496, file: !2497, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2496, file: !2497, line: 138, baseType: !7, size: 32, offset: 1056)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2496, file: !2497, line: 139, baseType: !138, size: 128, offset: 1088)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2496, file: !2497, line: 142, baseType: !2144, size: 512, offset: 1216)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2496, file: !2497, line: 143, baseType: !2152, size: 64, offset: 1728)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2496, file: !2497, line: 150, baseType: !2541, size: 256, offset: 1792)
!2541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2542, size: 256, elements: !681)
!2542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2497, line: 38, size: 128, elements: !2543)
!2543 = !{!2544, !2545}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2542, file: !2497, line: 39, baseType: !374, size: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2542, file: !2497, line: 40, baseType: !374, size: 64, offset: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2496, file: !2497, line: 156, baseType: !2547, size: 192, offset: 2048)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2497, line: 66, size: 192, elements: !2548)
!2548 = !{!2549}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2547, file: !2497, line: 67, baseType: !2550, size: 192)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2497, line: 47, size: 192, elements: !2551)
!2551 = !{!2552, !2553, !2554}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2550, file: !2497, line: 48, baseType: !568, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2550, file: !2497, line: 49, baseType: !568, size: 64, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2550, file: !2497, line: 50, baseType: !568, size: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2496, file: !2497, line: 160, baseType: !2441, size: 640, offset: 2240)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2496, file: !2497, line: 163, baseType: !2557, size: 256, offset: 2880)
!2557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1087, size: 256, elements: !792)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2496, file: !2497, line: 169, baseType: !1087, size: 64, offset: 3136)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2496, file: !2497, line: 172, baseType: !85, size: 32, offset: 3200)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2496, file: !2497, line: 174, baseType: !2561, size: 64, offset: 3264)
!2561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2562, size: 64)
!2562 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2497, line: 174, flags: DIFlagFwdDecl)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2496, file: !2497, line: 185, baseType: !2564, size: 64, offset: 3328)
!2564 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !343, line: 860, baseType: !2565)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 853, size: 64, elements: !2566)
!2566 = !{!2567, !2568}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2565, file: !343, line: 858, baseType: !342, size: 32)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2565, file: !343, line: 859, baseType: !151, size: 32, offset: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2496, file: !2497, line: 186, baseType: !374, size: 64, offset: 3392)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2496, file: !2497, line: 186, baseType: !374, size: 64, offset: 3456)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2496, file: !2497, line: 186, baseType: !374, size: 64, offset: 3520)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2496, file: !2497, line: 186, baseType: !374, size: 64, offset: 3584)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2496, file: !2497, line: 187, baseType: !374, size: 64, offset: 3648)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2496, file: !2497, line: 188, baseType: !374, size: 64, offset: 3712)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2496, file: !2497, line: 189, baseType: !2429, size: 192, offset: 3776)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2496, file: !2497, line: 190, baseType: !271, size: 64, offset: 3968)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2496, file: !2497, line: 190, baseType: !271, size: 64, offset: 4032)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2496, file: !2497, line: 190, baseType: !271, size: 64, offset: 4096)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2496, file: !2497, line: 190, baseType: !271, size: 64, offset: 4160)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2496, file: !2497, line: 191, baseType: !271, size: 64, offset: 4224)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2496, file: !2497, line: 191, baseType: !271, size: 64, offset: 4288)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2496, file: !2497, line: 191, baseType: !271, size: 64, offset: 4352)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2496, file: !2497, line: 191, baseType: !271, size: 64, offset: 4416)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2496, file: !2497, line: 192, baseType: !271, size: 64, offset: 4480)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2496, file: !2497, line: 192, baseType: !271, size: 64, offset: 4544)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2496, file: !2497, line: 192, baseType: !271, size: 64, offset: 4608)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2496, file: !2497, line: 192, baseType: !271, size: 64, offset: 4672)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2496, file: !2497, line: 193, baseType: !271, size: 64, offset: 4736)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2496, file: !2497, line: 193, baseType: !271, size: 64, offset: 4800)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2496, file: !2497, line: 194, baseType: !2591, size: 448, offset: 4864)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2592, line: 12, size: 448, elements: !2593)
!2592 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2593 = !{!2594, !2595, !2596, !2597, !2598, !2599, !2600}
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2591, file: !2592, line: 15, baseType: !374, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2591, file: !2592, line: 17, baseType: !374, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2591, file: !2592, line: 19, baseType: !374, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2591, file: !2592, line: 21, baseType: !374, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2591, file: !2592, line: 29, baseType: !374, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2591, file: !2592, line: 35, baseType: !374, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2591, file: !2592, line: 44, baseType: !374, size: 64, offset: 384)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2496, file: !2497, line: 202, baseType: !376, size: 64, offset: 5312)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2496, file: !2497, line: 213, baseType: !2603, size: 2048, offset: 5376)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 2048, elements: !2464)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2605, line: 43, size: 128, elements: !2606)
!2605 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2606 = !{!2607, !2608}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2604, file: !2605, line: 44, baseType: !270, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2604, file: !2605, line: 45, baseType: !270, size: 64, offset: 64)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2496, file: !2497, line: 216, baseType: !2610, size: 448, offset: 7424)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2497, line: 30, size: 448, elements: !2611)
!2611 = !{!2612, !2613, !2614, !2615, !2616, !2617, !2618}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2610, file: !2497, line: 31, baseType: !85, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2610, file: !2497, line: 32, baseType: !257, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2610, file: !2497, line: 33, baseType: !271, size: 64, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2610, file: !2497, line: 34, baseType: !374, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2610, file: !2497, line: 34, baseType: !374, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2610, file: !2497, line: 35, baseType: !271, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2610, file: !2497, line: 35, baseType: !271, size: 64, offset: 384)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2496, file: !2497, line: 219, baseType: !2620, size: 64, offset: 7872)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2497, line: 219, flags: DIFlagFwdDecl)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2496, file: !2497, line: 222, baseType: !7, size: 32, offset: 7936)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2496, file: !2497, line: 223, baseType: !2624, size: 64, offset: 8000)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2497, line: 223, flags: DIFlagFwdDecl)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2496, file: !2497, line: 230, baseType: !642, size: 8, offset: 8064)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2496, file: !2497, line: 231, baseType: !700, size: 16, offset: 8080)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2496, file: !2497, line: 232, baseType: !700, size: 16, offset: 8096)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2496, file: !2497, line: 234, baseType: !1446, size: 64, offset: 8128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2496, file: !2497, line: 237, baseType: !562, size: 256, offset: 8192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2496, file: !2497, line: 243, baseType: !1165, size: 320, offset: 8448)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2034, file: !1679, line: 1111, baseType: !2633, size: 64, offset: 15424)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2497, line: 20, size: 16640, elements: !2635)
!2635 = !{!2636, !2637, !2638, !2639}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2634, file: !2497, line: 21, baseType: !151, size: 32)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2634, file: !2497, line: 22, baseType: !1091, size: 32, offset: 32)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2634, file: !2497, line: 23, baseType: !1102, size: 192, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2634, file: !2497, line: 24, baseType: !2640, size: 16384, offset: 256)
!2640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2641, size: 16384, elements: !226)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1309, line: 51, size: 256, elements: !2642)
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2641, file: !1309, line: 52, baseType: !2644, size: 256)
!2644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1309, line: 37, size: 256, elements: !2645)
!2645 = !{!2646, !2653, !2654, !2658}
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2644, file: !1309, line: 39, baseType: !2647, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2648, line: 83, baseType: !2649)
!2648 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2648, line: 82, baseType: !2651)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !85}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2644, file: !1309, line: 40, baseType: !271, size: 64, offset: 64)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2644, file: !1309, line: 46, baseType: !2655, size: 64, offset: 128)
!2655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2648, line: 86, baseType: !2656)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2648, line: 85, baseType: !927)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2644, file: !1309, line: 48, baseType: !2511, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2034, file: !1679, line: 1112, baseType: !2511, size: 64, offset: 15488)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2034, file: !1679, line: 1113, baseType: !2511, size: 64, offset: 15552)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2034, file: !1679, line: 1115, baseType: !2511, size: 64, offset: 15616)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2034, file: !1679, line: 1116, baseType: !2507, size: 192, offset: 15680)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2034, file: !1679, line: 1117, baseType: !271, size: 64, offset: 15872)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2034, file: !1679, line: 1118, baseType: !268, size: 64, offset: 15936)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2034, file: !1679, line: 1119, baseType: !7, size: 32, offset: 16000)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2034, file: !1679, line: 1121, baseType: !781, size: 64, offset: 16064)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2034, file: !1679, line: 1125, baseType: !2668, size: 64, offset: 16128)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1679, line: 43, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2034, file: !1679, line: 1127, baseType: !307, size: 32, offset: 16192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2034, file: !1679, line: 1128, baseType: !7, size: 32, offset: 16224)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2034, file: !1679, line: 1130, baseType: !2673, size: 128, offset: 16256)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2674, line: 37, size: 128, elements: !2675)
!2674 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2675 = !{!2676, !2677, !2678}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2673, file: !2674, line: 38, baseType: !85, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2673, file: !2674, line: 39, baseType: !171, size: 32, offset: 32)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2673, file: !2674, line: 40, baseType: !2679, size: 64, offset: 64)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2674, line: 24, flags: DIFlagFwdDecl)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2034, file: !1679, line: 1131, baseType: !2682, size: 256, offset: 16384)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2683, line: 12, size: 256, elements: !2684)
!2683 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2684 = !{!2685, !2686, !2687, !2688}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2682, file: !2683, line: 13, baseType: !221, size: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2682, file: !2683, line: 14, baseType: !271, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2682, file: !2683, line: 15, baseType: !271, size: 64, offset: 128)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2682, file: !2683, line: 16, baseType: !642, size: 8, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2034, file: !1679, line: 1134, baseType: !374, size: 64, offset: 16640)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2034, file: !1679, line: 1135, baseType: !374, size: 64, offset: 16704)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2034, file: !1679, line: 1138, baseType: !151, size: 32, offset: 16768)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2034, file: !1679, line: 1141, baseType: !520, size: 32, offset: 16800)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2034, file: !1679, line: 1143, baseType: !2694, size: 64, offset: 16832)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1679, line: 735, size: 64, elements: !2695)
!2695 = !{!2696}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2694, file: !1679, line: 736, baseType: !2697, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2694, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2034, file: !1679, line: 1147, baseType: !2203, size: 128, offset: 16896)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2034, file: !1679, line: 1149, baseType: !2033, size: 64, offset: 17024)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2034, file: !1679, line: 1151, baseType: !2701, size: 64, offset: 17088)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1679, line: 1151, flags: DIFlagFwdDecl)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2034, file: !1679, line: 1188, baseType: !125, size: 64, offset: 17152)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2034, file: !1679, line: 1191, baseType: !2705, size: 64, offset: 17216)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1679, line: 44, flags: DIFlagFwdDecl)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2034, file: !1679, line: 1194, baseType: !2708, size: 64, offset: 17280)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1679, line: 45, flags: DIFlagFwdDecl)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2034, file: !1679, line: 1197, baseType: !2711, size: 64, offset: 17344)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1679, line: 61, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2034, file: !1679, line: 1199, baseType: !2714, size: 64, offset: 17408)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2716, line: 99, size: 128, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2717 = !{!2718, !2719, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2715, file: !2716, line: 100, baseType: !566, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2715, file: !2716, line: 101, baseType: !171, size: 32, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2715, file: !2716, line: 103, baseType: !191, size: 16, offset: 96)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2034, file: !1679, line: 1202, baseType: !2722, size: 64, offset: 17472)
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1679, line: 48, flags: DIFlagFwdDecl)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2034, file: !1679, line: 1205, baseType: !271, size: 64, offset: 17536)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2034, file: !1679, line: 1206, baseType: !2726, size: 64, offset: 17600)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1309, line: 14, baseType: !2728)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1309, line: 12, size: 384, elements: !2729)
!2729 = !{!2730}
!2730 = !DIDerivedType(tag: DW_TAG_member, scope: !2728, file: !1309, line: 13, baseType: !2731, size: 384)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2728, file: !1309, line: 13, size: 384, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2731, file: !1309, line: 13, baseType: !85, size: 32)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2731, file: !1309, line: 13, baseType: !85, size: 32, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2731, file: !1309, line: 13, baseType: !85, size: 32, offset: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2731, file: !1309, line: 13, baseType: !2737, size: 256, offset: 128)
!2737 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2738, line: 37, size: 256, elements: !2739)
!2738 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2739 = !{!2740, !2745, !2758, !2764, !2773, !2800, !2805}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2737, file: !2738, line: 42, baseType: !2741, size: 64)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !2738, line: 39, size: 64, elements: !2742)
!2742 = !{!2743, !2744}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2741, file: !2738, line: 40, baseType: !2406, size: 32)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2741, file: !2738, line: 41, baseType: !313, size: 32, offset: 32)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2737, file: !2738, line: 50, baseType: !2746, size: 192)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !2738, line: 45, size: 192, elements: !2747)
!2747 = !{!2748, !2750, !2751, !2757}
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2746, file: !2738, line: 46, baseType: !2749, size: 32)
!2749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !255, line: 95, baseType: !85)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2746, file: !2738, line: 47, baseType: !85, size: 32, offset: 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2746, file: !2738, line: 48, baseType: !2752, size: 64, offset: 64)
!2752 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2738, line: 11, baseType: !2753)
!2753 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2738, line: 8, size: 64, elements: !2754)
!2754 = !{!2755, !2756}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2753, file: !2738, line: 9, baseType: !85, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2753, file: !2738, line: 10, baseType: !125, size: 64)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2746, file: !2738, line: 49, baseType: !85, size: 32, offset: 128)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2737, file: !2738, line: 57, baseType: !2759, size: 128)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !2738, line: 53, size: 128, elements: !2760)
!2760 = !{!2761, !2762, !2763}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2759, file: !2738, line: 54, baseType: !2406, size: 32)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2759, file: !2738, line: 55, baseType: !313, size: 32, offset: 32)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2759, file: !2738, line: 56, baseType: !2752, size: 64, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2737, file: !2738, line: 66, baseType: !2765, size: 256)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !2738, line: 60, size: 256, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2772}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2765, file: !2738, line: 61, baseType: !2406, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2765, file: !2738, line: 62, baseType: !313, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2765, file: !2738, line: 63, baseType: !85, size: 32, offset: 64)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2765, file: !2738, line: 64, baseType: !2771, size: 64, offset: 128)
!2771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !255, line: 94, baseType: !256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2765, file: !2738, line: 65, baseType: !2771, size: 64, offset: 192)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2737, file: !2738, line: 105, baseType: !2774, size: 256)
!2774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !2738, line: 69, size: 256, elements: !2775)
!2775 = !{!2776, !2777}
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2774, file: !2738, line: 70, baseType: !125, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_member, scope: !2774, file: !2738, line: 79, baseType: !2778, size: 192, offset: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2774, file: !2738, line: 79, size: 192, elements: !2779)
!2779 = !{!2780, !2781, !2782, !2789, !2794}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2778, file: !2738, line: 81, baseType: !85, size: 32)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2778, file: !2738, line: 86, baseType: !700, size: 16)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2778, file: !2738, line: 92, baseType: !2783, size: 192)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2778, file: !2738, line: 88, size: 192, elements: !2784)
!2784 = !{!2785, !2787, !2788}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2783, file: !2738, line: 89, baseType: !2786, size: 64)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 64, elements: !2187)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2783, file: !2738, line: 90, baseType: !125, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2783, file: !2738, line: 91, baseType: !125, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2778, file: !2738, line: 97, baseType: !2790, size: 96)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2778, file: !2738, line: 94, size: 96, elements: !2791)
!2791 = !{!2792, !2793}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2790, file: !2738, line: 95, baseType: !2786, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2790, file: !2738, line: 96, baseType: !371, size: 32, offset: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2778, file: !2738, line: 103, baseType: !2795, size: 128)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2778, file: !2738, line: 99, size: 128, elements: !2796)
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2795, file: !2738, line: 100, baseType: !271, size: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2795, file: !2738, line: 101, baseType: !371, size: 32, offset: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2795, file: !2738, line: 102, baseType: !371, size: 32, offset: 96)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2737, file: !2738, line: 111, baseType: !2801, size: 128)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !2738, line: 108, size: 128, elements: !2802)
!2802 = !{!2803, !2804}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2801, file: !2738, line: 109, baseType: !257, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2801, file: !2738, line: 110, baseType: !85, size: 32, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2737, file: !2738, line: 118, baseType: !2806, size: 128)
!2806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2737, file: !2738, line: 114, size: 128, elements: !2807)
!2807 = !{!2808, !2809, !2810}
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2806, file: !2738, line: 115, baseType: !125, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2806, file: !2738, line: 116, baseType: !85, size: 32, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2806, file: !2738, line: 117, baseType: !7, size: 32, offset: 96)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2034, file: !1679, line: 1208, baseType: !2591, size: 448, offset: 17664)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2034, file: !1679, line: 1215, baseType: !374, size: 64, offset: 18112)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2034, file: !1679, line: 1217, baseType: !374, size: 64, offset: 18176)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2034, file: !1679, line: 1219, baseType: !374, size: 64, offset: 18240)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2034, file: !1679, line: 1223, baseType: !2816, size: 64, offset: 18304)
!2816 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2817, line: 99, baseType: !2818)
!2817 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2818 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2817, line: 99, size: 64, elements: !2819)
!2819 = !{!2820}
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2818, file: !2817, line: 99, baseType: !2271, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2034, file: !1679, line: 1225, baseType: !342, size: 32, offset: 18368)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2034, file: !1679, line: 1226, baseType: !85, size: 32, offset: 18400)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2034, file: !1679, line: 1227, baseType: !85, size: 32, offset: 18432)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2034, file: !1679, line: 1231, baseType: !2825, size: 64, offset: 18496)
!2825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2826, size: 64)
!2826 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1679, line: 1231, flags: DIFlagFwdDecl)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2034, file: !1679, line: 1233, baseType: !138, size: 128, offset: 18560)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2034, file: !1679, line: 1240, baseType: !2829, size: 64, offset: 18688)
!2829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2830, size: 64)
!2830 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1679, line: 62, flags: DIFlagFwdDecl)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2034, file: !1679, line: 1242, baseType: !2832, size: 64, offset: 18752)
!2832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2833, size: 64)
!2833 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1679, line: 1242, flags: DIFlagFwdDecl)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2034, file: !1679, line: 1244, baseType: !138, size: 128, offset: 18816)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2034, file: !1679, line: 1245, baseType: !2836, size: 64, offset: 18944)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2837 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1679, line: 51, flags: DIFlagFwdDecl)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2034, file: !1679, line: 1246, baseType: !562, size: 256, offset: 19008)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2034, file: !1679, line: 1247, baseType: !7, size: 32, offset: 19264)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2034, file: !1679, line: 1250, baseType: !2841, size: 64, offset: 19328)
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1679, line: 57, flags: DIFlagFwdDecl)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2034, file: !1679, line: 1251, baseType: !562, size: 256, offset: 19392)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2034, file: !1679, line: 1252, baseType: !138, size: 128, offset: 19648)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2034, file: !1679, line: 1259, baseType: !1638, size: 64, offset: 19776)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2034, file: !1679, line: 1260, baseType: !700, size: 16, offset: 19840)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2034, file: !1679, line: 1261, baseType: !700, size: 16, offset: 19856)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2034, file: !1679, line: 1314, baseType: !2849, size: 64, offset: 19904)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2851, line: 62, size: 256, align: 256, elements: !2852)
!2851 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2852 = !{!2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2850, file: !2851, line: 75, baseType: !371, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2850, file: !2851, line: 90, baseType: !371, size: 32, offset: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2850, file: !2851, line: 112, baseType: !375, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2850, file: !2851, line: 132, baseType: !371, size: 32, offset: 128)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2850, file: !2851, line: 140, baseType: !371, size: 32, offset: 160)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2850, file: !2851, line: 149, baseType: !371, size: 32, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2850, file: !2851, line: 154, baseType: !2860, offset: 224)
!2860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !1117)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2034, file: !1679, line: 1315, baseType: !370, size: 32, offset: 19968)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2034, file: !1679, line: 1316, baseType: !370, size: 32, offset: 20000)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2034, file: !1679, line: 1321, baseType: !271, size: 64, offset: 20032)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2034, file: !1679, line: 1325, baseType: !85, size: 32, offset: 20096)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2034, file: !1679, line: 1326, baseType: !85, size: 32, offset: 20128)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2034, file: !1679, line: 1327, baseType: !85, size: 32, offset: 20160)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2034, file: !1679, line: 1328, baseType: !85, size: 32, offset: 20192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2034, file: !1679, line: 1329, baseType: !782, size: 128, align: 64, offset: 20224)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2034, file: !1679, line: 1332, baseType: !2870, size: 128, offset: 20352)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2871, line: 51, size: 128, elements: !2872)
!2871 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2872 = !{!2873, !2878, !2879}
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2870, file: !2871, line: 60, baseType: !2874, size: 64)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2875, line: 7, size: 64, elements: !2876)
!2875 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2876 = !{!2877}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2874, file: !2875, line: 12, baseType: !2268, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2870, file: !2871, line: 63, baseType: !642, size: 8, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2870, file: !2871, line: 70, baseType: !642, size: 8, offset: 72)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2034, file: !1679, line: 1335, baseType: !1677, size: 64, offset: 20480)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2034, file: !1679, line: 1337, baseType: !2882, size: 128, offset: 20544)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2871, line: 39, size: 128, elements: !2883)
!2883 = !{!2884, !2945, !2946}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2882, file: !2871, line: 40, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1434, line: 74, size: 512, align: 128, elements: !2887)
!2887 = !{!2888, !2889, !2939, !2944}
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2886, file: !1434, line: 75, baseType: !271, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_member, scope: !2886, file: !1434, line: 83, baseType: !2890, size: 320, offset: 64)
!2890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2886, file: !1434, line: 83, size: 320, elements: !2891)
!2891 = !{!2892, !2913, !2927, !2931, !2938}
!2892 = !DIDerivedType(tag: DW_TAG_member, scope: !2890, file: !1434, line: 84, baseType: !2893, size: 320)
!2893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !1434, line: 84, size: 320, elements: !2894)
!2894 = !{!2895, !2906, !2907, !2912}
!2895 = !DIDerivedType(tag: DW_TAG_member, scope: !2893, file: !1434, line: 90, baseType: !2896, size: 128)
!2896 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2893, file: !1434, line: 90, size: 128, elements: !2897)
!2897 = !{!2898, !2899, !2904, !2905}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2896, file: !1434, line: 91, baseType: !138, size: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, scope: !2896, file: !1434, line: 94, baseType: !2900, size: 128)
!2900 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2896, file: !1434, line: 94, size: 128, elements: !2901)
!2901 = !{!2902, !2903}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2900, file: !1434, line: 96, baseType: !125, size: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2900, file: !1434, line: 98, baseType: !7, size: 32, offset: 64)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2896, file: !1434, line: 102, baseType: !138, size: 128)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2896, file: !1434, line: 103, baseType: !138, size: 128)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2893, file: !1434, line: 106, baseType: !297, size: 64, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, scope: !2893, file: !1434, line: 107, baseType: !2908, size: 64, offset: 192)
!2908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2893, file: !1434, line: 107, size: 64, elements: !2909)
!2909 = !{!2910, !2911}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2908, file: !1434, line: 108, baseType: !271, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2908, file: !1434, line: 109, baseType: !271, size: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2893, file: !1434, line: 117, baseType: !271, size: 64, offset: 256)
!2913 = !DIDerivedType(tag: DW_TAG_member, scope: !2890, file: !1434, line: 119, baseType: !2914, size: 320)
!2914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !1434, line: 119, size: 320, elements: !2915)
!2915 = !{!2916, !2917, !2920, !2921, !2922}
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2914, file: !1434, line: 124, baseType: !271, size: 64)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2914, file: !1434, line: 125, baseType: !2918, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2919, size: 64)
!2919 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1434, line: 125, flags: DIFlagFwdDecl)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2914, file: !1434, line: 126, baseType: !271, size: 64, offset: 128)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2914, file: !1434, line: 127, baseType: !271, size: 64, offset: 192)
!2922 = !DIDerivedType(tag: DW_TAG_member, scope: !2914, file: !1434, line: 128, baseType: !2923, size: 64, offset: 256)
!2923 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2914, file: !1434, line: 128, size: 64, elements: !2924)
!2924 = !{!2925, !2926}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2923, file: !1434, line: 133, baseType: !271, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2923, file: !1434, line: 138, baseType: !566, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !2890, file: !1434, line: 141, baseType: !2928, size: 64)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !1434, line: 141, size: 64, elements: !2929)
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2928, file: !1434, line: 142, baseType: !271, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2890, file: !1434, line: 144, baseType: !2932, size: 128)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2890, file: !1434, line: 144, size: 128, elements: !2933)
!2933 = !{!2934, !2937}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2932, file: !1434, line: 146, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1434, line: 146, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2932, file: !1434, line: 147, baseType: !125, size: 64, offset: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2890, file: !1434, line: 161, baseType: !782, size: 128, align: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, scope: !2886, file: !1434, line: 164, baseType: !2940, size: 32, offset: 384)
!2940 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2886, file: !1434, line: 164, size: 32, elements: !2941)
!2941 = !{!2942, !2943}
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2940, file: !1434, line: 169, baseType: !171, size: 32)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2940, file: !1434, line: 177, baseType: !7, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2886, file: !1434, line: 181, baseType: !171, size: 32, offset: 416)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2882, file: !2871, line: 42, baseType: !371, size: 32, offset: 64)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2882, file: !2871, line: 43, baseType: !371, size: 32, offset: 96)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2034, file: !1679, line: 1340, baseType: !2948, size: 64, offset: 20672)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1679, line: 69, flags: DIFlagFwdDecl)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2034, file: !1679, line: 1351, baseType: !85, size: 32, offset: 20736)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2034, file: !1679, line: 1352, baseType: !85, size: 32, offset: 20768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2034, file: !1679, line: 1354, baseType: !271, size: 64, offset: 20800)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2034, file: !1679, line: 1364, baseType: !374, size: 64, offset: 20864)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2034, file: !1679, line: 1365, baseType: !374, size: 64, offset: 20928)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2034, file: !1679, line: 1412, baseType: !271, size: 64, offset: 20992)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2034, file: !1679, line: 1453, baseType: !2957, size: 64, offset: 21056)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1679, line: 1453, flags: DIFlagFwdDecl)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2034, file: !1679, line: 1457, baseType: !2960, size: 64, offset: 21120)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !2962)
!2962 = !{!2963, !2964, !2983, !2986, !2987, !3020, !3030}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2961, file: !57, line: 62, baseType: !56, size: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, scope: !2961, file: !57, line: 64, baseType: !2965, size: 192, offset: 64)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2961, file: !57, line: 64, size: 192, elements: !2966)
!2966 = !{!2967, !2978}
!2967 = !DIDerivedType(tag: DW_TAG_member, scope: !2965, file: !57, line: 65, baseType: !2968, size: 192)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !57, line: 65, size: 192, elements: !2969)
!2969 = !{!2970, !2977}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2968, file: !57, line: 66, baseType: !2971, size: 128)
!2971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2972, line: 50, size: 128, elements: !2973)
!2972 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2973 = !{!2974, !2975, !2976}
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2971, file: !2972, line: 52, baseType: !271, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2971, file: !2972, line: 54, baseType: !7, size: 32, offset: 64)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2971, file: !2972, line: 55, baseType: !7, size: 32, offset: 96)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2968, file: !57, line: 67, baseType: !271, size: 64, offset: 128)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2965, file: !57, line: 70, baseType: !2979, size: 192)
!2979 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !57, line: 70, size: 192, elements: !2980)
!2980 = !{!2981, !2982}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2979, file: !57, line: 71, baseType: !782, size: 128, align: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2979, file: !57, line: 72, baseType: !271, size: 64, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2961, file: !57, line: 76, baseType: !2984, size: 64, offset: 256)
!2984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2985, size: 64)
!2985 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2961, file: !57, line: 77, baseType: !271, size: 64, offset: 320)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2961, file: !57, line: 79, baseType: !2988, size: 64, offset: 384)
!2988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2989, size: 64)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2972, line: 25, size: 256, elements: !2990)
!2990 = !{!2991, !2997, !3001}
!2991 = !DIDerivedType(tag: DW_TAG_member, scope: !2989, file: !2972, line: 26, baseType: !2992, size: 128)
!2992 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2989, file: !2972, line: 26, size: 128, elements: !2993)
!2993 = !{!2994, !2996}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2992, file: !2972, line: 27, baseType: !2995, size: 128)
!2995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !2464)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2992, file: !2972, line: 28, baseType: !2995, size: 128)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2989, file: !2972, line: 31, baseType: !2998, size: 64, offset: 128)
!2998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2999, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3000)
!3000 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2972, line: 23, flags: DIFlagFwdDecl)
!3001 = !DIDerivedType(tag: DW_TAG_member, scope: !2989, file: !2972, line: 33, baseType: !3002, size: 64, offset: 192)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2989, file: !2972, line: 33, size: 64, elements: !3003)
!3003 = !{!3004, !3010, !3015}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3002, file: !2972, line: 38, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !2972, line: 34, size: 64, elements: !3006)
!3006 = !{!3007, !3008, !3009}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3005, file: !2972, line: 35, baseType: !558, size: 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3005, file: !2972, line: 36, baseType: !179, size: 8, offset: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3005, file: !2972, line: 37, baseType: !179, size: 8, offset: 40)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3002, file: !2972, line: 42, baseType: !3011, size: 16)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !2972, line: 39, size: 16, elements: !3012)
!3012 = !{!3013, !3014}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3011, file: !2972, line: 40, baseType: !179, size: 8)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3011, file: !2972, line: 41, baseType: !179, size: 8, offset: 8)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3002, file: !2972, line: 46, baseType: !3016, size: 16)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3002, file: !2972, line: 43, size: 16, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3016, file: !2972, line: 44, baseType: !179, size: 8)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3016, file: !2972, line: 45, baseType: !179, size: 8, offset: 8)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2961, file: !57, line: 81, baseType: !3021, size: 64, offset: 448)
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3022, size: 64)
!3022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3023)
!3023 = !{!3024, !3025, !3026, !3027, !3028, !3029}
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3022, file: !57, line: 86, baseType: !2984, size: 64)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3022, file: !57, line: 87, baseType: !271, size: 64, offset: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3022, file: !57, line: 88, baseType: !271, size: 64, offset: 128)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3022, file: !57, line: 89, baseType: !271, size: 64, offset: 192)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3022, file: !57, line: 90, baseType: !642, size: 8, offset: 256)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3022, file: !57, line: 92, baseType: !3021, size: 64, offset: 320)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2961, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2034, file: !1679, line: 1463, baseType: !3032, offset: 21184)
!3032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1679, line: 739, elements: !851)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2034, file: !1679, line: 1470, baseType: !782, size: 128, align: 64, offset: 21184)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2034, file: !1679, line: 1471, baseType: !1091, size: 32, offset: 21312)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2034, file: !1679, line: 1472, baseType: !85, size: 32, offset: 21344)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2034, file: !1679, line: 1474, baseType: !2033, size: 64, offset: 21376)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2034, file: !1679, line: 1475, baseType: !804, size: 320, offset: 21440)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2034, file: !1679, line: 1478, baseType: !3039, size: 64, offset: 21760)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1679, line: 1478, flags: DIFlagFwdDecl)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2034, file: !1679, line: 1482, baseType: !1091, size: 32, offset: 21824)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2034, file: !1679, line: 1489, baseType: !125, size: 64, offset: 21888)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2034, file: !1679, line: 1504, baseType: !125, size: 64, offset: 21952)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2034, file: !1679, line: 1505, baseType: !375, size: 64, offset: 22016)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2034, file: !1679, line: 1506, baseType: !374, size: 64, offset: 22080)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2034, file: !1679, line: 1507, baseType: !375, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2034, file: !1679, line: 1508, baseType: !375, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2034, file: !1679, line: 1509, baseType: !375, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2034, file: !1679, line: 1510, baseType: !782, size: 128, align: 64, offset: 22208)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2034, file: !1679, line: 1511, baseType: !85, size: 32, offset: 22336)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2034, file: !1679, line: 1515, baseType: !3052, size: 64, offset: 22400)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1049, line: 56, size: 64, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3052, file: !1049, line: 57, baseType: !1052, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2034, file: !1679, line: 1518, baseType: !3052, size: 64, offset: 22464)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2034, file: !1679, line: 1528, baseType: !782, size: 128, align: 64, offset: 22528)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2034, file: !1679, line: 1552, baseType: !3058, size: 35328, offset: 23040)
!3058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3059, line: 430, size: 35328, elements: !3060)
!3059 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3060 = !{!3061, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3090, !3091, !3092, !3093, !3094, !3095, !3098, !3099, !3100, !3101}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3058, file: !3059, line: 432, baseType: !3062, size: 192)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3063, size: 192, elements: !222)
!3063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3064, line: 16, size: 64, elements: !3065)
!3064 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3065 = !{!3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3063, file: !3064, line: 17, baseType: !189, size: 16)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3063, file: !3064, line: 18, baseType: !189, size: 16, offset: 16)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3063, file: !3064, line: 19, baseType: !189, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3063, file: !3064, line: 19, baseType: !189, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3063, file: !3064, line: 19, baseType: !189, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3063, file: !3064, line: 19, baseType: !189, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3063, file: !3064, line: 19, baseType: !189, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3063, file: !3064, line: 20, baseType: !189, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3063, file: !3064, line: 20, baseType: !189, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3063, file: !3064, line: 20, baseType: !189, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3063, file: !3064, line: 20, baseType: !189, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3063, file: !3064, line: 20, baseType: !189, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3063, file: !3064, line: 20, baseType: !189, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3058, file: !3059, line: 436, baseType: !271, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3058, file: !3059, line: 440, baseType: !191, size: 16, offset: 256)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3058, file: !3059, line: 441, baseType: !191, size: 16, offset: 272)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3058, file: !3059, line: 442, baseType: !191, size: 16, offset: 288)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3058, file: !3059, line: 443, baseType: !191, size: 16, offset: 304)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3058, file: !3059, line: 447, baseType: !271, size: 64, offset: 320)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3058, file: !3059, line: 448, baseType: !271, size: 64, offset: 384)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3058, file: !3059, line: 459, baseType: !3087, size: 256, offset: 448)
!3087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3088, size: 256, elements: !792)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3059, line: 428, flags: DIFlagFwdDecl)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3058, file: !3059, line: 461, baseType: !271, size: 64, offset: 704)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3058, file: !3059, line: 463, baseType: !271, size: 64, offset: 768)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3058, file: !3059, line: 465, baseType: !271, size: 64, offset: 832)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3058, file: !3059, line: 466, baseType: !271, size: 64, offset: 896)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3058, file: !3059, line: 467, baseType: !271, size: 64, offset: 960)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3058, file: !3059, line: 473, baseType: !3096, size: 64, offset: 1024)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3059, line: 10, flags: DIFlagFwdDecl)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3058, file: !3059, line: 480, baseType: !271, size: 64, offset: 1088)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3058, file: !3059, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3058, file: !3059, line: 491, baseType: !370, size: 32, offset: 1184)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3058, file: !3059, line: 501, baseType: !3102, size: 33792, offset: 1536)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3103, line: 448, size: 33792, elements: !3104)
!3103 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3104 = !{!3105, !3106, !3107, !3269, !3270, !3276, !3277}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3102, file: !3103, line: 461, baseType: !7, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3102, file: !3103, line: 468, baseType: !271, size: 64, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3102, file: !3103, line: 476, baseType: !3108, size: 64, offset: 128)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3103, line: 356, size: 33280, align: 512, elements: !3110)
!3110 = !{!3111, !3112, !3113, !3114, !3115, !3116, !3117, !3118, !3119, !3120}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3109, file: !3103, line: 358, baseType: !7, size: 32)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3109, file: !3103, line: 361, baseType: !7, size: 32, offset: 32)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3109, file: !3103, line: 364, baseType: !374, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3109, file: !3103, line: 367, baseType: !374, size: 64, offset: 128)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3109, file: !3103, line: 370, baseType: !374, size: 64, offset: 192)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3109, file: !3103, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3109, file: !3103, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3109, file: !3103, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3109, file: !3103, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3109, file: !3103, line: 397, baseType: !3121, size: 32768, offset: 512)
!3121 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3103, line: 348, size: 32768, elements: !3122)
!3122 = !{!3123, !3138, !3175, !3252, !3265}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3121, file: !3103, line: 349, baseType: !3124, size: 896)
!3124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3103, line: 12, size: 896, elements: !3125)
!3125 = !{!3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3137}
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3124, file: !3103, line: 13, baseType: !370, size: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3124, file: !3103, line: 14, baseType: !370, size: 32, offset: 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3124, file: !3103, line: 15, baseType: !370, size: 32, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3124, file: !3103, line: 16, baseType: !370, size: 32, offset: 96)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3124, file: !3103, line: 17, baseType: !370, size: 32, offset: 128)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3124, file: !3103, line: 18, baseType: !370, size: 32, offset: 160)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3124, file: !3103, line: 19, baseType: !370, size: 32, offset: 192)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3124, file: !3103, line: 22, baseType: !3134, size: 640, offset: 224)
!3134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 640, elements: !3135)
!3135 = !{!3136}
!3136 = !DISubrange(count: 20)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3124, file: !3103, line: 25, baseType: !370, size: 32, offset: 864)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3121, file: !3103, line: 350, baseType: !3139, size: 4096, align: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3103, line: 34, size: 4096, align: 128, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144, !3145, !3160, !3161, !3162, !3164, !3166, !3170}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3139, file: !3103, line: 35, baseType: !189, size: 16)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3139, file: !3103, line: 36, baseType: !189, size: 16, offset: 16)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3139, file: !3103, line: 37, baseType: !189, size: 16, offset: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3139, file: !3103, line: 38, baseType: !189, size: 16, offset: 48)
!3145 = !DIDerivedType(tag: DW_TAG_member, scope: !3139, file: !3103, line: 39, baseType: !3146, size: 128, offset: 64)
!3146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3139, file: !3103, line: 39, size: 128, elements: !3147)
!3147 = !{!3148, !3153}
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !3103, line: 40, baseType: !3149, size: 128)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3103, line: 40, size: 128, elements: !3150)
!3150 = !{!3151, !3152}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3149, file: !3103, line: 41, baseType: !374, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3149, file: !3103, line: 42, baseType: !374, size: 64, offset: 64)
!3153 = !DIDerivedType(tag: DW_TAG_member, scope: !3146, file: !3103, line: 44, baseType: !3154, size: 128)
!3154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3146, file: !3103, line: 44, size: 128, elements: !3155)
!3155 = !{!3156, !3157, !3158, !3159}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3154, file: !3103, line: 45, baseType: !370, size: 32)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3154, file: !3103, line: 46, baseType: !370, size: 32, offset: 32)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3154, file: !3103, line: 47, baseType: !370, size: 32, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3154, file: !3103, line: 48, baseType: !370, size: 32, offset: 96)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3139, file: !3103, line: 51, baseType: !370, size: 32, offset: 192)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3139, file: !3103, line: 52, baseType: !370, size: 32, offset: 224)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3139, file: !3103, line: 55, baseType: !3163, size: 1024, offset: 256)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 1024, elements: !383)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3139, file: !3103, line: 58, baseType: !3165, size: 2048, offset: 1280)
!3165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 2048, elements: !226)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3139, file: !3103, line: 60, baseType: !3167, size: 384, offset: 3328)
!3167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 384, elements: !3168)
!3168 = !{!3169}
!3169 = !DISubrange(count: 12)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3139, file: !3103, line: 62, baseType: !3171, size: 384, offset: 3712)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3139, file: !3103, line: 62, size: 384, elements: !3172)
!3172 = !{!3173, !3174}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3171, file: !3103, line: 63, baseType: !3167, size: 384)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3171, file: !3103, line: 64, baseType: !3167, size: 384)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3121, file: !3103, line: 351, baseType: !3176, size: 1088)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3103, line: 79, size: 1088, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3251}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3176, file: !3103, line: 80, baseType: !370, size: 32)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3176, file: !3103, line: 81, baseType: !370, size: 32, offset: 32)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3176, file: !3103, line: 82, baseType: !370, size: 32, offset: 64)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3176, file: !3103, line: 83, baseType: !370, size: 32, offset: 96)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3176, file: !3103, line: 84, baseType: !370, size: 32, offset: 128)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3176, file: !3103, line: 85, baseType: !370, size: 32, offset: 160)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3176, file: !3103, line: 86, baseType: !370, size: 32, offset: 192)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3176, file: !3103, line: 88, baseType: !3134, size: 640, offset: 224)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3176, file: !3103, line: 89, baseType: !179, size: 8, offset: 864)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3176, file: !3103, line: 90, baseType: !179, size: 8, offset: 872)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3176, file: !3103, line: 91, baseType: !179, size: 8, offset: 880)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3176, file: !3103, line: 92, baseType: !179, size: 8, offset: 888)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3176, file: !3103, line: 93, baseType: !179, size: 8, offset: 896)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3176, file: !3103, line: 94, baseType: !179, size: 8, offset: 904)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3176, file: !3103, line: 95, baseType: !3193, size: 64, offset: 960)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3195, line: 11, size: 128, elements: !3196)
!3195 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3196 = !{!3197, !3198}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3194, file: !3195, line: 12, baseType: !257, size: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3194, file: !3195, line: 13, baseType: !3199, size: 64, offset: 64)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3201, line: 103, size: 1344, elements: !3202)
!3201 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3231, !3232, !3233}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3200, file: !3201, line: 109, baseType: !271, size: 64)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3200, file: !3201, line: 110, baseType: !271, size: 64, offset: 64)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3200, file: !3201, line: 111, baseType: !271, size: 64, offset: 128)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3200, file: !3201, line: 112, baseType: !271, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3200, file: !3201, line: 113, baseType: !271, size: 64, offset: 256)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3200, file: !3201, line: 114, baseType: !271, size: 64, offset: 320)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3200, file: !3201, line: 117, baseType: !271, size: 64, offset: 384)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3200, file: !3201, line: 118, baseType: !271, size: 64, offset: 448)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3200, file: !3201, line: 119, baseType: !271, size: 64, offset: 512)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3200, file: !3201, line: 120, baseType: !271, size: 64, offset: 576)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3200, file: !3201, line: 121, baseType: !271, size: 64, offset: 640)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3200, file: !3201, line: 122, baseType: !271, size: 64, offset: 704)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3200, file: !3201, line: 123, baseType: !271, size: 64, offset: 768)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3200, file: !3201, line: 124, baseType: !271, size: 64, offset: 832)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3200, file: !3201, line: 125, baseType: !271, size: 64, offset: 896)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3200, file: !3201, line: 139, baseType: !271, size: 64, offset: 960)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3200, file: !3201, line: 142, baseType: !271, size: 64, offset: 1024)
!3220 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !3201, line: 144, baseType: !3221, size: 64, offset: 1088)
!3221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !3201, line: 144, size: 64, elements: !3222)
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3221, file: !3201, line: 146, baseType: !189, size: 16)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3221, file: !3201, line: 148, baseType: !374, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3221, file: !3201, line: 150, baseType: !3226, size: 64)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3201, line: 59, size: 64, elements: !3227)
!3227 = !{!3228, !3229, !3230}
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3226, file: !3201, line: 61, baseType: !374, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3226, file: !3201, line: 63, baseType: !374, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3226, file: !3201, line: 65, baseType: !374, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3200, file: !3201, line: 153, baseType: !271, size: 64, offset: 1152)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3200, file: !3201, line: 154, baseType: !271, size: 64, offset: 1216)
!3233 = !DIDerivedType(tag: DW_TAG_member, scope: !3200, file: !3201, line: 156, baseType: !3234, size: 64, offset: 1280)
!3234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3200, file: !3201, line: 156, size: 64, elements: !3235)
!3235 = !{!3236, !3237, !3238}
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3234, file: !3201, line: 158, baseType: !189, size: 16)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3234, file: !3201, line: 160, baseType: !374, size: 64)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3234, file: !3201, line: 162, baseType: !3239, size: 64)
!3239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3201, line: 69, size: 64, elements: !3240)
!3240 = !{!3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250}
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3239, file: !3201, line: 71, baseType: !374, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3239, file: !3201, line: 73, baseType: !374, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3239, file: !3201, line: 75, baseType: !374, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3239, file: !3201, line: 77, baseType: !374, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3239, file: !3201, line: 80, baseType: !374, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3239, file: !3201, line: 83, baseType: !374, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3239, file: !3201, line: 86, baseType: !374, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3239, file: !3201, line: 88, baseType: !374, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3239, file: !3201, line: 93, baseType: !374, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3239, file: !3201, line: 100, baseType: !374, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3176, file: !3103, line: 96, baseType: !370, size: 32, offset: 1024)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3121, file: !3103, line: 352, baseType: !3253, size: 4608, align: 512)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3103, line: 333, size: 4608, align: 512, elements: !3254)
!3254 = !{!3255, !3256, !3263}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3253, file: !3103, line: 334, baseType: !3139, size: 4096, align: 128)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3253, file: !3103, line: 335, baseType: !3257, size: 512, offset: 4096)
!3257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3103, line: 312, size: 512, elements: !3258)
!3258 = !{!3259, !3260, !3261}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3257, file: !3103, line: 313, baseType: !374, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3257, file: !3103, line: 314, baseType: !374, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3257, file: !3103, line: 315, baseType: !3262, size: 384, offset: 128)
!3262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 384, elements: !1210)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3253, file: !3103, line: 336, baseType: !3264, offset: 4608)
!3264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, elements: !1117)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3121, file: !3103, line: 353, baseType: !3266, size: 32768)
!3266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 32768, elements: !3267)
!3267 = !{!3268}
!3268 = !DISubrange(count: 4096)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3102, file: !3103, line: 484, baseType: !3108, size: 64, offset: 192)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3102, file: !3103, line: 491, baseType: !3271, size: 128, offset: 256)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3103, line: 404, size: 128, elements: !3272)
!3272 = !{!3273, !3274, !3275}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3271, file: !3103, line: 424, baseType: !374, size: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3271, file: !3103, line: 432, baseType: !7, size: 32, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3271, file: !3103, line: 440, baseType: !7, size: 32, offset: 96)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3102, file: !3103, line: 498, baseType: !3271, size: 128, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3102, file: !3103, line: 508, baseType: !3109, size: 33280, align: 512, offset: 512)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2016, file: !2017, line: 16, baseType: !1102, size: 192, offset: 512)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2016, file: !2017, line: 17, baseType: !171, size: 32, offset: 704)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !453, file: !28, line: 1240, baseType: !125, size: 64, offset: 6912)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !453, file: !28, line: 1243, baseType: !370, size: 32, offset: 6976)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !453, file: !28, line: 1245, baseType: !1181, size: 64, offset: 7040)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !453, file: !28, line: 1246, baseType: !1181, size: 64, offset: 7104)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !453, file: !28, line: 1248, baseType: !371, size: 32, offset: 7168)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !453, file: !28, line: 1249, baseType: !3286, size: 64, offset: 7232)
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !28, line: 634, flags: DIFlagFwdDecl)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !453, file: !28, line: 1252, baseType: !3289, size: 256, offset: 7296)
!3289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 256, elements: !383)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !453, file: !28, line: 1253, baseType: !3291, size: 128, offset: 7552)
!3291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3292, line: 21, baseType: !3293)
!3292 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3292, line: 19, size: 128, elements: !3294)
!3294 = !{!3295}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3293, file: !3292, line: 20, baseType: !3296, size: 128)
!3296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !181, size: 128, elements: !2464)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !453, file: !28, line: 1255, baseType: !7, size: 32, offset: 7680)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !453, file: !28, line: 1261, baseType: !562, size: 256, offset: 7744)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !453, file: !28, line: 1267, baseType: !134, size: 64, offset: 8000)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !453, file: !28, line: 1269, baseType: !399, size: 64, offset: 8064)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !453, file: !28, line: 1271, baseType: !3302, size: 448, offset: 8128)
!3302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1796, line: 63, size: 448, elements: !3303)
!3303 = !{!3304, !3309, !3310, !3311, !3312, !3313, !3314}
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3302, file: !1796, line: 64, baseType: !3305, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!271, !3308, !1794}
!3308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3302, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3302, file: !1796, line: 66, baseType: !3305, size: 64, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3302, file: !1796, line: 69, baseType: !257, size: 64, offset: 128)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3302, file: !1796, line: 70, baseType: !85, size: 32, offset: 192)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3302, file: !1796, line: 71, baseType: !7, size: 32, offset: 224)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3302, file: !1796, line: 74, baseType: !138, size: 128, offset: 256)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3302, file: !1796, line: 85, baseType: !3315, size: 64, offset: 384)
!3315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !453, file: !28, line: 1274, baseType: !566, size: 64, offset: 8576)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !453, file: !28, line: 1280, baseType: !566, size: 64, offset: 8640)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !453, file: !28, line: 1283, baseType: !85, size: 32, offset: 8704)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !453, file: !28, line: 1286, baseType: !1728, size: 32, offset: 8736)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !453, file: !28, line: 1289, baseType: !884, size: 64, offset: 8768)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !453, file: !28, line: 1290, baseType: !932, size: 64, offset: 8832)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !453, file: !28, line: 1297, baseType: !1304, size: 64, offset: 8896)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !453, file: !28, line: 1304, baseType: !3324, size: 64, offset: 8960)
!3324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3325, line: 49, size: 64, elements: !3326)
!3325 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3326 = !{!3327}
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3324, file: !3325, line: 50, baseType: !3328, size: 64)
!3328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3329, size: 64)
!3329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3325, line: 41, size: 512, align: 512, elements: !3330)
!3330 = !{!3331, !3332, !3337}
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3329, file: !3325, line: 43, baseType: !151, size: 32)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3329, file: !3325, line: 45, baseType: !3333, size: 192, offset: 64)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3325, line: 29, size: 192, elements: !3334)
!3334 = !{!3335, !3336}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3333, file: !3325, line: 30, baseType: !138, size: 128)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3333, file: !3325, line: 32, baseType: !257, size: 64, offset: 128)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3329, file: !3325, line: 46, baseType: !257, size: 64, offset: 256)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !453, file: !28, line: 1305, baseType: !3324, size: 64, offset: 9024)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !453, file: !28, line: 1306, baseType: !782, size: 128, align: 64, offset: 9088)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !453, file: !28, line: 1307, baseType: !822, size: 256, offset: 9216)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !453, file: !28, line: 1309, baseType: !562, size: 256, offset: 9472)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !453, file: !28, line: 1314, baseType: !85, size: 32, offset: 9728)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !453, file: !28, line: 1317, baseType: !151, size: 32, align: 512, offset: 10240)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !453, file: !28, line: 1318, baseType: !138, size: 128, offset: 10304)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !453, file: !28, line: 1320, baseType: !151, size: 32, offset: 10432)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !453, file: !28, line: 1321, baseType: !138, size: 128, offset: 10496)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !447, file: !448, line: 73, baseType: !85, size: 32, offset: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !447, file: !448, line: 74, baseType: !3349, size: 64, offset: 192)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1141, line: 42, flags: DIFlagFwdDecl)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !401, file: !338, line: 141, baseType: !3353, size: 64, offset: 704)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = !DISubroutineType(types: !3355)
!3355 = !{!85, !1856, !642}
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !401, file: !338, line: 142, baseType: !3357, size: 64, offset: 768)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DISubroutineType(types: !3359)
!3359 = !{!336, !336, !3360}
!3360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3361, size: 64)
!3361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !337, file: !338, line: 96, baseType: !452, size: 64, offset: 832)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !337, file: !338, line: 97, baseType: !271, size: 64, offset: 896)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !337, file: !338, line: 98, baseType: !125, size: 64, offset: 960)
!3365 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !338, line: 100, baseType: !3366, size: 128, offset: 1024)
!3366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !338, line: 100, size: 128, elements: !3367)
!3367 = !{!3368, !3369}
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3366, file: !338, line: 101, baseType: !138, size: 128)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3366, file: !338, line: 102, baseType: !1421, size: 64)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !337, file: !338, line: 104, baseType: !138, size: 128, offset: 1152)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !337, file: !338, line: 105, baseType: !138, size: 128, offset: 1280)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !337, file: !338, line: 113, baseType: !3373, size: 128, offset: 1408)
!3373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !337, file: !338, line: 109, size: 128, elements: !3374)
!3374 = !{!3375, !3376, !3377}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3373, file: !338, line: 110, baseType: !808, size: 128)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3373, file: !338, line: 111, baseType: !352, size: 128)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3373, file: !338, line: 112, baseType: !782, size: 128, align: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !330, file: !28, line: 1968, baseType: !3379, size: 64, offset: 64)
!3379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3380, size: 64)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{!134, !336, !301, !3382}
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3384, line: 10, size: 128, elements: !3385)
!3384 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3385 = !{!3386, !3387}
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3383, file: !3384, line: 11, baseType: !605, size: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3383, file: !3384, line: 12, baseType: !125, size: 64, offset: 64)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !330, file: !28, line: 1969, baseType: !3389, size: 64, offset: 128)
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3390 = !DISubroutineType(types: !3391)
!3391 = !{!85, !3349, !301, !85}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !330, file: !28, line: 1970, baseType: !3393, size: 64, offset: 192)
!3393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3394, size: 64)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{!324, !301, !85, !642}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !330, file: !28, line: 1972, baseType: !3397, size: 64, offset: 256)
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DISubroutineType(types: !3399)
!3399 = !{!85, !336, !221, !85}
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !330, file: !28, line: 1974, baseType: !3401, size: 64, offset: 320)
!3401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3402, size: 64)
!3402 = !DISubroutineType(types: !3403)
!3403 = !{!85, !3349, !301, !336, !263, !642}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !330, file: !28, line: 1976, baseType: !3405, size: 64, offset: 384)
!3405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3406, size: 64)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!85, !336, !301, !336}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !330, file: !28, line: 1977, baseType: !3409, size: 64, offset: 448)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!85, !301, !336}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !330, file: !28, line: 1978, baseType: !3413, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{!85, !3349, !301, !336, !134}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !330, file: !28, line: 1980, baseType: !3417, size: 64, offset: 576)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!85, !3349, !301, !336, !263}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !330, file: !28, line: 1982, baseType: !3409, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !330, file: !28, line: 1983, baseType: !3422, size: 64, offset: 704)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DISubroutineType(types: !3424)
!3424 = !{!85, !3349, !301, !336, !263, !457}
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !330, file: !28, line: 1985, baseType: !3426, size: 64, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!85, !3349, !301, !336, !301, !336, !7}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !330, file: !28, line: 1987, baseType: !3430, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!85, !3349, !336, !3433}
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !28, line: 226, size: 640, elements: !3435)
!3435 = !{!3436, !3437, !3438, !3448, !3457, !3458, !3463, !3464, !3465}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3434, file: !28, line: 227, baseType: !7, size: 32)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3434, file: !28, line: 228, baseType: !263, size: 16, offset: 32)
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3434, file: !28, line: 241, baseType: !3439, size: 32, offset: 64)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3434, file: !28, line: 241, size: 32, elements: !3440)
!3440 = !{!3441, !3442}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3439, file: !28, line: 242, baseType: !307, size: 32)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3439, file: !28, line: 243, baseType: !3443, size: 32)
!3443 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3444, line: 16, baseType: !3445)
!3444 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3444, line: 14, size: 32, elements: !3446)
!3446 = !{!3447}
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3445, file: !3444, line: 15, baseType: !312, size: 32)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !3434, file: !28, line: 245, baseType: !3449, size: 32, offset: 96)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3434, file: !28, line: 245, size: 32, elements: !3450)
!3450 = !{!3451, !3452}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3449, file: !28, line: 246, baseType: !316, size: 32)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3449, file: !28, line: 247, baseType: !3453, size: 32)
!3453 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3444, line: 20, baseType: !3454)
!3454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3444, line: 18, size: 32, elements: !3455)
!3455 = !{!3456}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3454, file: !3444, line: 19, baseType: !320, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3434, file: !28, line: 249, baseType: !462, size: 64, offset: 128)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3434, file: !28, line: 250, baseType: !3459, size: 128, offset: 192)
!3459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1182, line: 13, size: 128, elements: !3460)
!3460 = !{!3461, !3462}
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3459, file: !1182, line: 14, baseType: !1181, size: 64)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3459, file: !1182, line: 15, baseType: !257, size: 64, offset: 64)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3434, file: !28, line: 251, baseType: !3459, size: 128, offset: 320)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3434, file: !28, line: 252, baseType: !3459, size: 128, offset: 448)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3434, file: !28, line: 259, baseType: !1349, size: 64, offset: 576)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !330, file: !28, line: 1988, baseType: !3467, size: 64, offset: 896)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!85, !3349, !1856, !3470, !370, !7}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3472, line: 22, size: 1280, elements: !3473)
!3472 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3493, !3494}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3471, file: !3472, line: 23, baseType: !370, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3471, file: !3472, line: 24, baseType: !263, size: 16, offset: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3471, file: !3472, line: 25, baseType: !7, size: 32, offset: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3471, file: !3472, line: 26, baseType: !1189, size: 32, offset: 96)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3471, file: !3472, line: 27, baseType: !374, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3471, file: !3472, line: 28, baseType: !374, size: 64, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3471, file: !3472, line: 41, baseType: !374, size: 64, offset: 256)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3471, file: !3472, line: 42, baseType: !457, size: 32, offset: 320)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3471, file: !3472, line: 43, baseType: !457, size: 32, offset: 352)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3471, file: !3472, line: 44, baseType: !307, size: 32, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3471, file: !3472, line: 45, baseType: !316, size: 32, offset: 416)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3471, file: !3472, line: 46, baseType: !462, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3471, file: !3472, line: 47, baseType: !3459, size: 128, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3471, file: !3472, line: 48, baseType: !3459, size: 128, offset: 640)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3471, file: !3472, line: 49, baseType: !3459, size: 128, offset: 768)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3471, file: !3472, line: 50, baseType: !3459, size: 128, offset: 896)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3471, file: !3472, line: 51, baseType: !374, size: 64, offset: 1024)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3471, file: !3472, line: 52, baseType: !374, size: 64, offset: 1088)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3471, file: !3472, line: 53, baseType: !370, size: 32, offset: 1152)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3471, file: !3472, line: 54, baseType: !370, size: 32, offset: 1184)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3471, file: !3472, line: 55, baseType: !374, size: 64, offset: 1216)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !330, file: !28, line: 1990, baseType: !3496, size: 64, offset: 960)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!253, !336, !221, !268}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !330, file: !28, line: 1991, baseType: !3500, size: 64, offset: 1024)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!85, !301, !3503, !374, !374}
!3503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3504, size: 64)
!3504 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !28, line: 55, flags: DIFlagFwdDecl)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !330, file: !28, line: 1993, baseType: !3506, size: 64, offset: 1088)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!85, !301, !85}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !330, file: !28, line: 1994, baseType: !3510, size: 64, offset: 1152)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!85, !301, !336, !1349, !7, !263}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !330, file: !28, line: 1997, baseType: !3514, size: 64, offset: 1216)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!85, !3349, !301, !1349, !263}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !330, file: !28, line: 1999, baseType: !3518, size: 64, offset: 1280)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{!324, !3349, !336, !85}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !330, file: !28, line: 2001, baseType: !3522, size: 64, offset: 1344)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!85, !3349, !336, !324, !85}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !330, file: !28, line: 2003, baseType: !3526, size: 64, offset: 1408)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!85, !3349, !336, !3529}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !28, line: 76, flags: DIFlagFwdDecl)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !330, file: !28, line: 2005, baseType: !3532, size: 64, offset: 1472)
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = !DISubroutineType(types: !3534)
!3534 = !{!85, !336, !3529}
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !330, file: !28, line: 2006, baseType: !3536, size: 64, offset: 1536)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!3539, !301}
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !28, line: 3192, size: 192, elements: !3541)
!3541 = !{!3542, !3549}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3540, file: !28, line: 3193, baseType: !3543, size: 128)
!3543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3544, line: 296, size: 128, elements: !3545)
!3544 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3545 = !{!3546, !3547, !3548}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3543, file: !3544, line: 297, baseType: !151, size: 32)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3543, file: !3544, line: 299, baseType: !123, size: 32, offset: 32)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3543, file: !3544, line: 300, baseType: !125, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3540, file: !28, line: 3194, baseType: !370, size: 32, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !302, file: !28, line: 655, baseType: !452, size: 64, offset: 448)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !302, file: !28, line: 656, baseType: !297, size: 64, offset: 512)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !302, file: !28, line: 659, baseType: !125, size: 64, offset: 576)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !302, file: !28, line: 663, baseType: !271, size: 64, offset: 640)
!3554 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !28, line: 671, baseType: !3555, size: 32, offset: 704)
!3555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !28, line: 671, size: 32, elements: !3556)
!3556 = !{!3557, !3559}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3555, file: !28, line: 672, baseType: !3558, size: 32)
!3558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3555, file: !28, line: 673, baseType: !7, size: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !302, file: !28, line: 675, baseType: !457, size: 32, offset: 736)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !302, file: !28, line: 676, baseType: !462, size: 64, offset: 768)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !302, file: !28, line: 677, baseType: !3459, size: 128, offset: 832)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !302, file: !28, line: 678, baseType: !3459, size: 128, offset: 960)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !302, file: !28, line: 679, baseType: !3459, size: 128, offset: 1088)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !302, file: !28, line: 680, baseType: !151, size: 32, offset: 1216)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !302, file: !28, line: 681, baseType: !191, size: 16, offset: 1248)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !302, file: !28, line: 682, baseType: !179, size: 8, offset: 1264)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !302, file: !28, line: 683, baseType: !179, size: 8, offset: 1272)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !302, file: !28, line: 684, baseType: !1929, size: 64, offset: 1280)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !302, file: !28, line: 691, baseType: !271, size: 64, offset: 1344)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !302, file: !28, line: 692, baseType: !1165, size: 320, offset: 1408)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !302, file: !28, line: 694, baseType: !271, size: 64, offset: 1728)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !302, file: !28, line: 695, baseType: !271, size: 64, offset: 1792)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !302, file: !28, line: 697, baseType: !808, size: 128, offset: 1856)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !302, file: !28, line: 698, baseType: !138, size: 128, offset: 1984)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !302, file: !28, line: 707, baseType: !138, size: 128, offset: 2112)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !302, file: !28, line: 708, baseType: !138, size: 128, offset: 2240)
!3578 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !28, line: 709, baseType: !3579, size: 128, offset: 2368)
!3579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !28, line: 709, size: 128, elements: !3580)
!3580 = !{!3581, !3582}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3579, file: !28, line: 710, baseType: !932, size: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3579, file: !28, line: 711, baseType: !782, size: 128, align: 64)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !302, file: !28, line: 713, baseType: !568, size: 64, offset: 2496)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !302, file: !28, line: 714, baseType: !568, size: 64, offset: 2560)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !302, file: !28, line: 715, baseType: !171, size: 32, offset: 2624)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !302, file: !28, line: 716, baseType: !171, size: 32, offset: 2656)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !302, file: !28, line: 717, baseType: !171, size: 32, offset: 2688)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !302, file: !28, line: 719, baseType: !171, size: 32, offset: 2720)
!3589 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !28, line: 721, baseType: !3590, size: 64, offset: 2752)
!3590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !28, line: 721, size: 64, elements: !3591)
!3591 = !{!3592, !3593}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3590, file: !28, line: 722, baseType: !1340, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3590, file: !28, line: 723, baseType: !955, size: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !302, file: !28, line: 725, baseType: !3595, size: 64, offset: 2816)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !28, line: 725, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !302, file: !28, line: 726, baseType: !298, size: 1536, align: 64, offset: 2880)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !302, file: !28, line: 727, baseType: !138, size: 128, offset: 4416)
!3599 = !DIDerivedType(tag: DW_TAG_member, scope: !302, file: !28, line: 728, baseType: !3600, size: 64, offset: 4544)
!3600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !302, file: !28, line: 728, size: 64, elements: !3601)
!3601 = !{!3602, !3603, !3614, !3615}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3600, file: !28, line: 729, baseType: !1677, size: 64)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3600, file: !28, line: 730, baseType: !3604, size: 64)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3606, line: 14, size: 832, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3607 = !{!3608, !3609, !3610, !3611, !3612, !3613}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3605, file: !3606, line: 15, baseType: !130, size: 512)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3605, file: !3606, line: 16, baseType: !491, size: 64, offset: 512)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3605, file: !3606, line: 17, baseType: !1340, size: 64, offset: 576)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3605, file: !3606, line: 18, baseType: !138, size: 128, offset: 640)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3605, file: !3606, line: 19, baseType: !457, size: 32, offset: 768)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3605, file: !3606, line: 20, baseType: !7, size: 32, offset: 800)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3600, file: !28, line: 731, baseType: !221, size: 64)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3600, file: !28, line: 732, baseType: !7, size: 32)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !302, file: !28, line: 735, baseType: !371, size: 32, offset: 4608)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !302, file: !28, line: 738, baseType: !371, size: 32, offset: 4640)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !302, file: !28, line: 739, baseType: !3286, size: 64, offset: 4672)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !302, file: !28, line: 750, baseType: !125, size: 64, offset: 4736)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !298, file: !28, line: 474, baseType: !3543, size: 128, offset: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !298, file: !28, line: 475, baseType: !1165, size: 320, offset: 192)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !298, file: !28, line: 476, baseType: !123, size: 32, offset: 512)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !298, file: !28, line: 477, baseType: !171, size: 32, offset: 544)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !298, file: !28, line: 482, baseType: !2203, size: 128, offset: 576)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !298, file: !28, line: 483, baseType: !271, size: 64, offset: 704)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !298, file: !28, line: 484, baseType: !271, size: 64, offset: 768)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !298, file: !28, line: 485, baseType: !3628, size: 64, offset: 832)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3630)
!3630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !28, line: 404, size: 1280, elements: !3631)
!3631 = !{!3632, !3636, !3706, !3710, !3714, !3720, !3725, !3729, !3734, !3738, !3742, !3746, !3747, !3751, !3755, !3759, !3764, !3768, !3775, !3776}
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3630, file: !28, line: 405, baseType: !3633, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DISubroutineType(types: !3635)
!3635 = !{!85, !2885, !967}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3630, file: !28, line: 406, baseType: !3637, size: 64, offset: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!85, !1349, !3640}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1434, line: 293, size: 1536, elements: !3642)
!3642 = !{!3643, !3673, !3687}
!3643 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !1434, line: 295, baseType: !3644, size: 512)
!3644 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3641, file: !1434, line: 295, size: 512, elements: !3645)
!3645 = !{!3646, !3672}
!3646 = !DIDerivedType(tag: DW_TAG_member, scope: !3644, file: !1434, line: 296, baseType: !3647, size: 448)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3644, file: !1434, line: 296, size: 448, elements: !3648)
!3648 = !{!3649, !3650, !3659, !3660, !3661, !3670, !3671}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3647, file: !1434, line: 298, baseType: !271, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, scope: !3647, file: !1434, line: 299, baseType: !3651, size: 128, offset: 64)
!3651 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3647, file: !1434, line: 299, size: 128, elements: !3652)
!3652 = !{!3653, !3654}
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3651, file: !1434, line: 300, baseType: !138, size: 128)
!3654 = !DIDerivedType(tag: DW_TAG_member, scope: !3651, file: !1434, line: 302, baseType: !3655, size: 128)
!3655 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3651, file: !1434, line: 302, size: 128, elements: !3656)
!3656 = !{!3657, !3658}
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3655, file: !1434, line: 303, baseType: !125, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3655, file: !1434, line: 305, baseType: !7, size: 32, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3647, file: !1434, line: 310, baseType: !297, size: 64, offset: 192)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3647, file: !1434, line: 311, baseType: !271, size: 64, offset: 256)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !3647, file: !1434, line: 312, baseType: !3662, size: 64, offset: 320)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3647, file: !1434, line: 312, size: 64, elements: !3663)
!3663 = !{!3664, !3665}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3662, file: !1434, line: 313, baseType: !125, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3662, file: !1434, line: 314, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1434, line: 257, baseType: !3667)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1434, line: 255, size: 64, elements: !3668)
!3668 = !{!3669}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3667, file: !1434, line: 256, baseType: !271, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3647, file: !1434, line: 316, baseType: !171, size: 32, offset: 384)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3647, file: !1434, line: 317, baseType: !171, size: 32, offset: 416)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3644, file: !1434, line: 323, baseType: !2886, size: 512, align: 128)
!3673 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !1434, line: 325, baseType: !3674, size: 512, offset: 512)
!3674 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3641, file: !1434, line: 325, size: 512, elements: !3675)
!3675 = !{!3676, !3686}
!3676 = !DIDerivedType(tag: DW_TAG_member, scope: !3674, file: !1434, line: 326, baseType: !3677, size: 320)
!3677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3674, file: !1434, line: 326, size: 320, elements: !3678)
!3678 = !{!3679, !3680, !3681, !3682, !3683, !3684, !3685}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3677, file: !1434, line: 327, baseType: !271, size: 64)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3677, file: !1434, line: 328, baseType: !271, size: 64, offset: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3677, file: !1434, line: 329, baseType: !271, size: 64, offset: 128)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3677, file: !1434, line: 331, baseType: !171, size: 32, offset: 192)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3677, file: !1434, line: 332, baseType: !171, size: 32, offset: 224)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3677, file: !1434, line: 333, baseType: !171, size: 32, offset: 256)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3677, file: !1434, line: 335, baseType: !7, size: 32, offset: 288)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3674, file: !1434, line: 339, baseType: !2886, size: 512, align: 128)
!3687 = !DIDerivedType(tag: DW_TAG_member, scope: !3641, file: !1434, line: 341, baseType: !3688, size: 512, offset: 1024)
!3688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3641, file: !1434, line: 341, size: 512, elements: !3689)
!3689 = !{!3690, !3699, !3705}
!3690 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !1434, line: 342, baseType: !3691, size: 384)
!3691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !1434, line: 342, size: 384, elements: !3692)
!3692 = !{!3693, !3694, !3695, !3696, !3697, !3698}
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3691, file: !1434, line: 343, baseType: !271, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3691, file: !1434, line: 344, baseType: !271, size: 64, offset: 64)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3691, file: !1434, line: 346, baseType: !125, size: 64, offset: 128)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3691, file: !1434, line: 347, baseType: !125, size: 64, offset: 192)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3691, file: !1434, line: 348, baseType: !125, size: 64, offset: 256)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3691, file: !1434, line: 349, baseType: !125, size: 64, offset: 320)
!3699 = !DIDerivedType(tag: DW_TAG_member, scope: !3688, file: !1434, line: 352, baseType: !3700, size: 256)
!3700 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3688, file: !1434, line: 352, size: 256, elements: !3701)
!3701 = !{!3702, !3703, !3704}
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3700, file: !1434, line: 353, baseType: !271, size: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3700, file: !1434, line: 354, baseType: !271, size: 64, offset: 64)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3700, file: !1434, line: 356, baseType: !138, size: 128, offset: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3688, file: !1434, line: 359, baseType: !2886, size: 512, align: 128)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3630, file: !28, line: 409, baseType: !3707, size: 64, offset: 128)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!85, !297, !967}
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3630, file: !28, line: 412, baseType: !3711, size: 64, offset: 192)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!642, !297, !3640}
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3630, file: !28, line: 414, baseType: !3715, size: 64, offset: 256)
!3715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3716, size: 64)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{null, !3718}
!3718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3719, size: 64)
!3719 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !28, line: 310, flags: DIFlagFwdDecl)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3630, file: !28, line: 416, baseType: !3721, size: 64, offset: 320)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{!85, !1349, !297, !462, !7, !3724, !1693}
!3724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3630, file: !28, line: 419, baseType: !3726, size: 64, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{!85, !1349, !297, !462, !7, !7, !2885, !125}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3630, file: !28, line: 424, baseType: !3730, size: 64, offset: 448)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!3733, !297, !3733}
!3733 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !124, line: 131, baseType: !374)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3630, file: !28, line: 425, baseType: !3735, size: 64, offset: 512)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{null, !3640, !268, !268}
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3630, file: !28, line: 426, baseType: !3739, size: 64, offset: 576)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!642, !3640, !123}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3630, file: !28, line: 427, baseType: !3743, size: 64, offset: 640)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{null, !3640}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3630, file: !28, line: 428, baseType: !1359, size: 64, offset: 704)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3630, file: !28, line: 433, baseType: !3748, size: 64, offset: 768)
!3748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!85, !297, !3640, !3640, !49}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3630, file: !28, line: 435, baseType: !3752, size: 64, offset: 832)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!85, !3640}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3630, file: !28, line: 436, baseType: !3756, size: 64, offset: 896)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DISubroutineType(types: !3758)
!3758 = !{!642, !3640, !268, !268}
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3630, file: !28, line: 438, baseType: !3760, size: 64, offset: 960)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{null, !3640, !3763, !3763}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3630, file: !28, line: 439, baseType: !3765, size: 64, offset: 1024)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DISubroutineType(types: !3767)
!3767 = !{!85, !297, !2885}
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3630, file: !28, line: 442, baseType: !3769, size: 64, offset: 1088)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!85, !3772, !1349, !3774}
!3772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3773, size: 64)
!3773 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !28, line: 66, flags: DIFlagFwdDecl)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3733, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3630, file: !28, line: 444, baseType: !1685, size: 64, offset: 1152)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3630, file: !28, line: 445, baseType: !3777, size: 64, offset: 1216)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!85, !1362, !1384}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !298, file: !28, line: 486, baseType: !271, size: 64, offset: 896)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !298, file: !28, line: 487, baseType: !1165, size: 320, offset: 960)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !298, file: !28, line: 488, baseType: !1728, size: 32, offset: 1280)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !298, file: !28, line: 489, baseType: !151, size: 32, offset: 1312)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !298, file: !28, line: 490, baseType: !138, size: 128, offset: 1344)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !298, file: !28, line: 491, baseType: !125, size: 64, offset: 1472)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !288, file: !247, line: 180, baseType: !3787, size: 64, offset: 320)
!3787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3788, size: 64)
!3788 = !DISubroutineType(types: !3789)
!3789 = !{!253, !1349, !144, !287, !221, !462, !268}
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !288, file: !247, line: 182, baseType: !3787, size: 64, offset: 384)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !288, file: !247, line: 184, baseType: !3792, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!85, !1349, !144, !287, !1432}
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !276, file: !247, line: 90, baseType: !3796, size: 64, offset: 192)
!3796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !276, file: !247, line: 91, baseType: !3798, size: 64, offset: 256)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !237, file: !131, line: 120, baseType: !3800, size: 64, offset: 192)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!3803, !204}
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3805)
!3805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !3806)
!3806 = !{!3807, !3808, !3812, !3816, !3822, !3826}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3805, file: !6, line: 40, baseType: !5, size: 32)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3805, file: !6, line: 41, baseType: !3809, size: 64, offset: 64)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!642}
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3805, file: !6, line: 42, baseType: !3813, size: 64, offset: 128)
!3813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3814, size: 64)
!3814 = !DISubroutineType(types: !3815)
!3815 = !{!125}
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3805, file: !6, line: 43, baseType: !3817, size: 64, offset: 192)
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{!1561, !3820}
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3805, file: !6, line: 44, baseType: !3823, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!1561}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3805, file: !6, line: 45, baseType: !605, size: 64, offset: 320)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !237, file: !131, line: 121, baseType: !3828, size: 64, offset: 256)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!1561, !204}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !237, file: !131, line: 122, baseType: !3832, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{null, !204, !3835, !3836}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !130, file: !131, line: 70, baseType: !3838, size: 64, offset: 384)
!3838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3839, size: 64)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !477, line: 190, size: 1152, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844, !3845, !3846, !3847, !3848, !3920, !3921, !3922, !3923, !3924, !3927}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3839, file: !477, line: 191, baseType: !171, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3839, file: !477, line: 192, baseType: !171, size: 32, offset: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3839, file: !477, line: 202, baseType: !3838, size: 64, offset: 64)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3839, file: !477, line: 203, baseType: !134, size: 64, offset: 128)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3839, file: !477, line: 205, baseType: !674, size: 192, align: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3839, file: !477, line: 207, baseType: !1561, size: 64, offset: 384)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3839, file: !477, line: 208, baseType: !7, size: 32, offset: 448)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3839, file: !477, line: 209, baseType: !3849, size: 256, offset: 512)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3839, file: !477, line: 209, size: 256, elements: !3850)
!3850 = !{!3851, !3860, !3864}
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3849, file: !477, line: 210, baseType: !3852, size: 256)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !477, line: 153, size: 256, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3859}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3852, file: !477, line: 154, baseType: !271, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3852, file: !477, line: 156, baseType: !2206, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3852, file: !477, line: 162, baseType: !3857, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !477, line: 162, flags: DIFlagFwdDecl)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3852, file: !477, line: 167, baseType: !271, size: 64, offset: 192)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3849, file: !477, line: 211, baseType: !3861, size: 64)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !477, line: 170, size: 64, elements: !3862)
!3862 = !{!3863}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3861, file: !477, line: 171, baseType: !3838, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3849, file: !477, line: 212, baseType: !3865, size: 256)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !477, line: 174, size: 256, elements: !3866)
!3866 = !{!3867, !3915, !3918, !3919}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3865, file: !477, line: 175, baseType: !3868, size: 64)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3870)
!3870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !477, line: 271, size: 768, elements: !3871)
!3871 = !{!3872, !3892, !3896, !3897, !3898, !3899, !3900, !3904, !3905, !3906, !3907, !3911}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3870, file: !477, line: 276, baseType: !3873, size: 64)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!85, !3876}
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !477, line: 251, size: 1216, elements: !3878)
!3878 = !{!3879, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891}
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3877, file: !477, line: 253, baseType: !3838, size: 64)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3877, file: !477, line: 254, baseType: !1349, size: 64, offset: 64)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3877, file: !477, line: 255, baseType: !1004, size: 64, offset: 128)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3877, file: !477, line: 256, baseType: !125, size: 64, offset: 192)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3877, file: !477, line: 259, baseType: !562, size: 256, offset: 256)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3877, file: !477, line: 260, baseType: !562, size: 256, offset: 512)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3877, file: !477, line: 261, baseType: !85, size: 32, offset: 768)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3877, file: !477, line: 262, baseType: !138, size: 128, offset: 832)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3877, file: !477, line: 263, baseType: !221, size: 64, offset: 960)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3877, file: !477, line: 265, baseType: !268, size: 64, offset: 1024)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3877, file: !477, line: 266, baseType: !642, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3877, file: !477, line: 267, baseType: !642, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3877, file: !477, line: 268, baseType: !1630, size: 64, offset: 1152)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3870, file: !477, line: 277, baseType: !3893, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{null, !3876}
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3870, file: !477, line: 290, baseType: !1035, size: 64, offset: 128)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3870, file: !477, line: 292, baseType: !1022, size: 64, offset: 192)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3870, file: !477, line: 293, baseType: !1031, size: 64, offset: 256)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3870, file: !477, line: 294, baseType: !1027, size: 64, offset: 320)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3870, file: !477, line: 296, baseType: !3901, size: 64, offset: 384)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!253, !3876, !221, !268, !462}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3870, file: !477, line: 306, baseType: !268, size: 64, offset: 448)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3870, file: !477, line: 313, baseType: !642, size: 8, offset: 512)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3870, file: !477, line: 314, baseType: !3901, size: 64, offset: 576)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3870, file: !477, line: 317, baseType: !3908, size: 64, offset: 640)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!1410, !3876, !1412}
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3870, file: !477, line: 320, baseType: !3912, size: 64, offset: 704)
!3912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3913, size: 64)
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!85, !3876, !1432}
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3865, file: !477, line: 176, baseType: !3916, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !477, line: 35, flags: DIFlagFwdDecl)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3865, file: !477, line: 177, baseType: !462, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3865, file: !477, line: 178, baseType: !3838, size: 64, offset: 192)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3839, file: !477, line: 215, baseType: !125, size: 64, offset: 768)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3839, file: !477, line: 221, baseType: !374, size: 64, offset: 832)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3839, file: !477, line: 223, baseType: !191, size: 16, offset: 896)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3839, file: !477, line: 224, baseType: !263, size: 16, offset: 912)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3839, file: !477, line: 225, baseType: !3925, size: 64, offset: 960)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !477, line: 36, flags: DIFlagFwdDecl)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3839, file: !477, line: 227, baseType: !782, size: 128, align: 64, offset: 1024)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !130, file: !131, line: 71, baseType: !3929, size: 32, offset: 448)
!3929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3930, line: 19, size: 32, elements: !3931)
!3930 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3931 = !{!3932}
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3929, file: !3930, line: 20, baseType: !1091, size: 32)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !130, file: !131, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !130, file: !131, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !130, file: !131, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !130, file: !131, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !130, file: !131, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !127, file: !70, line: 707, baseType: !126, size: 64, offset: 512)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !127, file: !70, line: 709, baseType: !3940, size: 64, offset: 576)
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !127, file: !70, line: 711, baseType: !134, size: 64, offset: 640)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !127, file: !70, line: 712, baseType: !3944, size: 64, offset: 704)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3946)
!3946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !3947)
!3947 = !{!3948, !3949, !3950, !3956, !3961, !3965}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3946, file: !70, line: 90, baseType: !134, size: 64)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !3946, file: !70, line: 91, baseType: !273, size: 64, offset: 64)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3946, file: !70, line: 92, baseType: !3951, size: 64, offset: 128)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!85, !3954, !216}
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !3946, file: !70, line: 93, baseType: !3957, size: 64, offset: 192)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!221, !3954, !3960, !3835, !3836}
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3946, file: !70, line: 95, baseType: !3962, size: 64, offset: 256)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{null, !126}
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3946, file: !70, line: 97, baseType: !3966, size: 64, offset: 320)
!3966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3967, size: 64)
!3967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3968)
!3968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !3969)
!3969 = !{!3970, !3974, !3975, !3976, !3977, !3978, !3979, !3980, !3981, !3982, !3983, !3984, !3985, !3986, !3987, !3988, !3989, !3990, !3991, !3992, !3993, !3994, !3995}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !3968, file: !77, line: 287, baseType: !3971, size: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!85, !126}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !3968, file: !77, line: 288, baseType: !3962, size: 64, offset: 64)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3968, file: !77, line: 289, baseType: !3971, size: 64, offset: 128)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3968, file: !77, line: 290, baseType: !3971, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !3968, file: !77, line: 291, baseType: !3971, size: 64, offset: 256)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !3968, file: !77, line: 292, baseType: !3971, size: 64, offset: 320)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !3968, file: !77, line: 293, baseType: !3971, size: 64, offset: 384)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !3968, file: !77, line: 294, baseType: !3971, size: 64, offset: 448)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !3968, file: !77, line: 295, baseType: !3971, size: 64, offset: 512)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !3968, file: !77, line: 296, baseType: !3971, size: 64, offset: 576)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !3968, file: !77, line: 297, baseType: !3971, size: 64, offset: 640)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !3968, file: !77, line: 298, baseType: !3971, size: 64, offset: 704)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !3968, file: !77, line: 299, baseType: !3971, size: 64, offset: 768)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !3968, file: !77, line: 300, baseType: !3971, size: 64, offset: 832)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !3968, file: !77, line: 301, baseType: !3971, size: 64, offset: 896)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !3968, file: !77, line: 302, baseType: !3971, size: 64, offset: 960)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !3968, file: !77, line: 303, baseType: !3971, size: 64, offset: 1024)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !3968, file: !77, line: 304, baseType: !3971, size: 64, offset: 1088)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !3968, file: !77, line: 305, baseType: !3971, size: 64, offset: 1152)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !3968, file: !77, line: 306, baseType: !3971, size: 64, offset: 1216)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !3968, file: !77, line: 307, baseType: !3971, size: 64, offset: 1280)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !3968, file: !77, line: 308, baseType: !3971, size: 64, offset: 1344)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !3968, file: !77, line: 309, baseType: !3971, size: 64, offset: 1408)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !127, file: !70, line: 714, baseType: !3997, size: 64, offset: 768)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3999)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4000, line: 80, size: 1344, elements: !4001)
!4000 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4001 = !{!4002, !4003, !4004, !4005, !4006, !4007, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058, !4059, !4060, !4061, !4065}
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3999, file: !4000, line: 81, baseType: !134, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !3999, file: !4000, line: 82, baseType: !134, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !3999, file: !4000, line: 83, baseType: !273, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !3999, file: !4000, line: 84, baseType: !273, size: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !3999, file: !4000, line: 85, baseType: !273, size: 64, offset: 256)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !3999, file: !4000, line: 87, baseType: !4008, size: 64, offset: 320)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DISubroutineType(types: !4010)
!4010 = !{!85, !126, !4011}
!4011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4017, !4018, !4019, !4020, !4024, !4028, !4029, !4030, !4031, !4032, !4040, !4041, !4042, !4043, !4044, !4045}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4012, file: !64, line: 97, baseType: !134, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4012, file: !64, line: 98, baseType: !3997, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4012, file: !64, line: 100, baseType: !491, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4012, file: !64, line: 101, baseType: !134, size: 64, offset: 192)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4012, file: !64, line: 103, baseType: !642, size: 8, offset: 256)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4012, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4012, file: !64, line: 106, baseType: !4021, size: 64, offset: 320)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4022, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4023)
!4023 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4012, file: !64, line: 107, baseType: !4025, size: 64, offset: 384)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4027)
!4027 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4012, file: !64, line: 109, baseType: !3971, size: 64, offset: 448)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4012, file: !64, line: 110, baseType: !3962, size: 64, offset: 512)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4012, file: !64, line: 111, baseType: !3971, size: 64, offset: 576)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4012, file: !64, line: 112, baseType: !3962, size: 64, offset: 640)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4012, file: !64, line: 113, baseType: !4033, size: 64, offset: 704)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!85, !126, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4037)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4038)
!4038 = !{!4039}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4037, file: !77, line: 59, baseType: !85, size: 32)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4012, file: !64, line: 114, baseType: !3971, size: 64, offset: 768)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4012, file: !64, line: 115, baseType: !273, size: 64, offset: 832)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4012, file: !64, line: 116, baseType: !273, size: 64, offset: 896)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4012, file: !64, line: 118, baseType: !3966, size: 64, offset: 960)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4012, file: !64, line: 119, baseType: !3962, size: 64, offset: 1024)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4012, file: !64, line: 121, baseType: !4046, size: 64, offset: 1088)
!4046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4047, size: 64)
!4047 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !3999, file: !4000, line: 88, baseType: !3951, size: 64, offset: 384)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !3999, file: !4000, line: 89, baseType: !3971, size: 64, offset: 448)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !3999, file: !4000, line: 90, baseType: !3962, size: 64, offset: 512)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !3999, file: !4000, line: 91, baseType: !3962, size: 64, offset: 576)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !3999, file: !4000, line: 92, baseType: !3962, size: 64, offset: 640)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !3999, file: !4000, line: 94, baseType: !3971, size: 64, offset: 704)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !3999, file: !4000, line: 95, baseType: !3971, size: 64, offset: 768)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !3999, file: !4000, line: 97, baseType: !4033, size: 64, offset: 832)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !3999, file: !4000, line: 98, baseType: !3971, size: 64, offset: 896)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !3999, file: !4000, line: 100, baseType: !3971, size: 64, offset: 960)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !3999, file: !4000, line: 102, baseType: !3971, size: 64, offset: 1024)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !3999, file: !4000, line: 103, baseType: !3962, size: 64, offset: 1088)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !3999, file: !4000, line: 105, baseType: !3966, size: 64, offset: 1152)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !3999, file: !4000, line: 107, baseType: !4062, size: 64, offset: 1216)
!4062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4063, size: 64)
!4063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4064)
!4064 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4000, line: 107, flags: DIFlagFwdDecl)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !3999, file: !4000, line: 109, baseType: !642, size: 8, offset: 1280)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !127, file: !70, line: 715, baseType: !4011, size: 64, offset: 832)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !127, file: !70, line: 717, baseType: !125, size: 64, offset: 896)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !127, file: !70, line: 719, baseType: !125, size: 64, offset: 960)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !127, file: !70, line: 721, baseType: !562, size: 256, offset: 1024)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !127, file: !70, line: 725, baseType: !4071, size: 448, offset: 1280)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4072)
!4072 = !{!4073, !4074, !4075, !4076}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4071, file: !70, line: 518, baseType: !138, size: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4071, file: !70, line: 519, baseType: !138, size: 128, offset: 128)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4071, file: !70, line: 520, baseType: !138, size: 128, offset: 256)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4071, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !127, file: !70, line: 726, baseType: !4078, size: 2496, offset: 1728)
!4078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4079)
!4079 = !{!4080, !4081, !4082, !4083, !4084, !4085, !4086, !4087, !4088, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4122, !4123, !4124, !4125, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4162, !4166}
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4078, file: !77, line: 664, baseType: !4036, size: 32)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4078, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4078, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4078, file: !77, line: 667, baseType: !642, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4078, file: !77, line: 668, baseType: !642, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4078, file: !77, line: 669, baseType: !642, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4078, file: !77, line: 670, baseType: !642, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4078, file: !77, line: 671, baseType: !642, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4078, file: !77, line: 672, baseType: !642, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4078, file: !77, line: 673, baseType: !642, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4078, file: !77, line: 674, baseType: !642, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4078, file: !77, line: 675, baseType: !370, size: 32, offset: 64)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4078, file: !77, line: 676, baseType: !151, size: 32, offset: 96)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4078, file: !77, line: 678, baseType: !138, size: 128, offset: 128)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4078, file: !77, line: 679, baseType: !511, size: 256, offset: 256)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4078, file: !77, line: 680, baseType: !4096, size: 64, offset: 512)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4098, line: 43, size: 1536, elements: !4099)
!4098 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4099 = !{!4100, !4101, !4102, !4103, !4104, !4107, !4108, !4109, !4110, !4111, !4112, !4113, !4114, !4115, !4116, !4117, !4118, !4119, !4120, !4121}
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4097, file: !4098, line: 44, baseType: !134, size: 64)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4097, file: !4098, line: 45, baseType: !85, size: 32, offset: 64)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4097, file: !4098, line: 46, baseType: !138, size: 128, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4097, file: !4098, line: 47, baseType: !151, size: 32, offset: 256)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4097, file: !4098, line: 48, baseType: !4105, size: 64, offset: 320)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4097, file: !4098, line: 49, baseType: !804, size: 320, offset: 384)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4097, file: !4098, line: 50, baseType: !271, size: 64, offset: 704)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4097, file: !4098, line: 51, baseType: !2152, size: 64, offset: 768)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4097, file: !4098, line: 52, baseType: !2152, size: 64, offset: 832)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4097, file: !4098, line: 53, baseType: !2152, size: 64, offset: 896)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4097, file: !4098, line: 54, baseType: !2152, size: 64, offset: 960)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4097, file: !4098, line: 55, baseType: !2152, size: 64, offset: 1024)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4097, file: !4098, line: 56, baseType: !271, size: 64, offset: 1088)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4097, file: !4098, line: 57, baseType: !271, size: 64, offset: 1152)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4097, file: !4098, line: 58, baseType: !271, size: 64, offset: 1216)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4097, file: !4098, line: 59, baseType: !271, size: 64, offset: 1280)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4097, file: !4098, line: 60, baseType: !271, size: 64, offset: 1344)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4097, file: !4098, line: 61, baseType: !126, size: 64, offset: 1408)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4097, file: !4098, line: 62, baseType: !642, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4097, file: !4098, line: 63, baseType: !642, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4078, file: !77, line: 681, baseType: !642, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4078, file: !77, line: 682, baseType: !642, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4078, file: !77, line: 683, baseType: !642, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4078, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4078, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4078, file: !77, line: 690, baseType: !2144, size: 512, offset: 640)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4078, file: !77, line: 691, baseType: !374, size: 64, offset: 1152)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4078, file: !77, line: 692, baseType: !822, size: 256, offset: 1216)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4078, file: !77, line: 693, baseType: !1102, size: 192, offset: 1472)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4078, file: !77, line: 694, baseType: !4105, size: 64, offset: 1664)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4078, file: !77, line: 695, baseType: !171, size: 32, offset: 1728)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4078, file: !77, line: 696, baseType: !171, size: 32, offset: 1760)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4078, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4078, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4078, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4078, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4078, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4078, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4078, file: !77, line: 703, baseType: !642, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4078, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4078, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4078, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4078, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4078, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4078, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4078, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4078, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4078, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4078, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4078, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4078, file: !77, line: 715, baseType: !374, size: 64, offset: 2048)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4078, file: !77, line: 716, baseType: !374, size: 64, offset: 2112)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4078, file: !77, line: 717, baseType: !374, size: 64, offset: 2176)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4078, file: !77, line: 718, baseType: !374, size: 64, offset: 2240)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4078, file: !77, line: 720, baseType: !4157, size: 64, offset: 2304)
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4159)
!4159 = !{!4160, !4161}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4158, file: !77, line: 633, baseType: !151, size: 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4158, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4078, file: !77, line: 721, baseType: !4163, size: 64, offset: 2368)
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4164, size: 64)
!4164 = !DISubroutineType(types: !4165)
!4165 = !{null, !126, !558}
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4078, file: !77, line: 722, baseType: !4167, size: 64, offset: 2432)
!4167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4168, size: 64)
!4168 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !127, file: !70, line: 727, baseType: !4170, size: 64, offset: 4224)
!4170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4171, size: 64)
!4171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4172)
!4172 = !{!4173, !4174, !4175, !4179, !4180, !4181}
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4171, file: !77, line: 743, baseType: !3968, size: 1472)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4171, file: !77, line: 744, baseType: !3971, size: 64, offset: 1472)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4171, file: !77, line: 745, baseType: !4176, size: 64, offset: 1536)
!4176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4177, size: 64)
!4177 = !DISubroutineType(types: !4178)
!4178 = !{null, !126, !642}
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4171, file: !77, line: 746, baseType: !3971, size: 64, offset: 1600)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4171, file: !77, line: 747, baseType: !3962, size: 64, offset: 1664)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4171, file: !77, line: 748, baseType: !3962, size: 64, offset: 1728)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !127, file: !70, line: 736, baseType: !4183, size: 128, offset: 4288)
!4183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4184)
!4184 = !{!4185, !4189}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4183, file: !70, line: 531, baseType: !4186, size: 64)
!4186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4187, size: 64)
!4187 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4188, line: 13, flags: DIFlagFwdDecl)
!4188 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4183, file: !70, line: 532, baseType: !4190, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !127, file: !70, line: 738, baseType: !4193, size: 64, offset: 4416)
!4193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4194, size: 64)
!4194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4195)
!4195 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !127, file: !70, line: 740, baseType: !4197, size: 64, offset: 4480)
!4197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !127, file: !70, line: 741, baseType: !374, size: 64, offset: 4544)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !127, file: !70, line: 746, baseType: !374, size: 64, offset: 4608)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !127, file: !70, line: 747, baseType: !4201, size: 64, offset: 4672)
!4201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4202, size: 64)
!4202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4203)
!4203 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !127, file: !70, line: 749, baseType: !4205, size: 64, offset: 4736)
!4205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4206, size: 64)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4207)
!4207 = !{!4208, !4209, !4210}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4206, file: !70, line: 433, baseType: !7, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4206, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4206, file: !70, line: 435, baseType: !271, size: 64, offset: 64)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !127, file: !70, line: 751, baseType: !138, size: 128, offset: 4800)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !127, file: !70, line: 762, baseType: !4213, size: 64, offset: 4928)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4214, size: 64)
!4214 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !127, file: !70, line: 770, baseType: !4216, offset: 4992)
!4216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4217, line: 5, elements: !851)
!4217 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !127, file: !70, line: 772, baseType: !4219, size: 64, offset: 4992)
!4219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4220, size: 64)
!4220 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4221, line: 18, flags: DIFlagFwdDecl)
!4221 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !127, file: !70, line: 773, baseType: !4223, size: 64, offset: 5056)
!4223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4224, size: 64)
!4224 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4000, line: 22, flags: DIFlagFwdDecl)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !127, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !127, file: !70, line: 778, baseType: !457, size: 32, offset: 5152)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !127, file: !70, line: 779, baseType: !370, size: 32, offset: 5184)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !127, file: !70, line: 781, baseType: !151, size: 32, offset: 5216)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !127, file: !70, line: 782, baseType: !138, size: 128, offset: 5248)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !127, file: !70, line: 784, baseType: !4231, size: 64, offset: 5376)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4233)
!4233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4234, line: 52, size: 768, elements: !4235)
!4234 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4235 = !{!4236, !4237, !4238, !4239, !4240, !4244, !4248, !4249, !4250, !4251, !4255, !4259}
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4233, file: !4234, line: 53, baseType: !134, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4233, file: !4234, line: 55, baseType: !273, size: 64, offset: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4233, file: !4234, line: 56, baseType: !273, size: 64, offset: 128)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4233, file: !4234, line: 58, baseType: !3951, size: 64, offset: 192)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4233, file: !4234, line: 59, baseType: !4241, size: 64, offset: 256)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!221, !3954, !3960}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4233, file: !4234, line: 61, baseType: !4245, size: 64, offset: 320)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DISubroutineType(types: !4247)
!4247 = !{null, !4231}
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4233, file: !4234, line: 62, baseType: !3962, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4233, file: !4234, line: 64, baseType: !3971, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4233, file: !4234, line: 66, baseType: !3803, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4233, file: !4234, line: 67, baseType: !4252, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!1561, !3954}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4233, file: !4234, line: 69, baseType: !4256, size: 64, offset: 640)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{null, !3954, !3835, !3836}
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4233, file: !4234, line: 71, baseType: !3966, size: 64, offset: 704)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !127, file: !70, line: 785, baseType: !273, size: 64, offset: 5440)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !127, file: !70, line: 787, baseType: !3962, size: 64, offset: 5504)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !127, file: !70, line: 788, baseType: !4263, size: 64, offset: 5568)
!4263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4264, size: 64)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !127, file: !70, line: 789, baseType: !4266, size: 64, offset: 5632)
!4266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4267, size: 64)
!4267 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !127, file: !70, line: 791, baseType: !4269, size: 64, offset: 5696)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4270, size: 64)
!4270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4271)
!4271 = !{!4272, !4273, !4274, !4275, !4276}
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4270, file: !70, line: 598, baseType: !92, size: 32)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4270, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4270, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4270, file: !70, line: 601, baseType: !642, size: 8, offset: 96)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4270, file: !70, line: 602, baseType: !642, size: 8, offset: 104)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !127, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !127, file: !70, line: 795, baseType: !642, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !127, file: !70, line: 796, baseType: !642, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !127, file: !70, line: 797, baseType: !642, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !127, file: !70, line: 798, baseType: !642, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !127, file: !70, line: 799, baseType: !642, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_device", file: !4285, line: 87, size: 10112, elements: !4286)
!4285 = !DIFile(filename: "./include/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff23d3d21ddec8b2b9f29ebd0a4cf8a2")
!4286 = !{!4287, !4288, !4289, !4290, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4378, !4379, !4380, !4381, !4392, !4393, !4394, !4395, !4396, !4397, !4398, !4399, !4401, !4402, !4403, !4404}
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4284, file: !4285, line: 88, baseType: !127, size: 5824)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4284, file: !4285, line: 89, baseType: !491, size: 64, offset: 5824)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4284, file: !4285, line: 91, baseType: !85, size: 32, offset: 5888)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4284, file: !4285, line: 93, baseType: !4291, size: 64, offset: 5952)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4293)
!4293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_class_ops", file: !4285, line: 59, size: 704, elements: !4294)
!4294 = !{!4295, !4299, !4316, !4317, !4327, !4328, !4332, !4336, !4341, !4345, !4361}
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4293, file: !4285, line: 60, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DISubroutineType(types: !4298)
!4298 = !{!85, !126, !7, !271}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "read_time", scope: !4293, file: !4285, line: 61, baseType: !4300, size: 64, offset: 64)
!4300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4301, size: 64)
!4301 = !DISubroutineType(types: !4302)
!4302 = !{!85, !126, !4303}
!4303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4304, size: 64)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !4305, line: 25, size: 288, elements: !4306)
!4305 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80f54d46d0d21ef6b644244083c34d9c")
!4306 = !{!4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315}
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !4304, file: !4305, line: 26, baseType: !85, size: 32)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !4304, file: !4305, line: 27, baseType: !85, size: 32, offset: 32)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !4304, file: !4305, line: 28, baseType: !85, size: 32, offset: 64)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !4304, file: !4305, line: 29, baseType: !85, size: 32, offset: 96)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !4304, file: !4305, line: 30, baseType: !85, size: 32, offset: 128)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !4304, file: !4305, line: 31, baseType: !85, size: 32, offset: 160)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !4304, file: !4305, line: 32, baseType: !85, size: 32, offset: 192)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !4304, file: !4305, line: 33, baseType: !85, size: 32, offset: 224)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !4304, file: !4305, line: 34, baseType: !85, size: 32, offset: 256)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !4293, file: !4285, line: 62, baseType: !4300, size: 64, offset: 128)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "read_alarm", scope: !4293, file: !4285, line: 63, baseType: !4318, size: 64, offset: 192)
!4318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4319, size: 64)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{!85, !126, !4321}
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_wkalrm", file: !4305, line: 41, size: 320, elements: !4323)
!4323 = !{!4324, !4325, !4326}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4322, file: !4305, line: 42, baseType: !183, size: 8)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !4322, file: !4305, line: 43, baseType: !183, size: 8, offset: 8)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4322, file: !4305, line: 44, baseType: !4304, size: 288, offset: 32)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "set_alarm", scope: !4293, file: !4285, line: 64, baseType: !4318, size: 64, offset: 256)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !4293, file: !4285, line: 65, baseType: !4329, size: 64, offset: 320)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4330, size: 64)
!4330 = !DISubroutineType(types: !4331)
!4331 = !{!85, !126, !1004}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_irq_enable", scope: !4293, file: !4285, line: 66, baseType: !4333, size: 64, offset: 384)
!4333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4334, size: 64)
!4334 = !DISubroutineType(types: !4335)
!4335 = !{!85, !126, !7}
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "read_offset", scope: !4293, file: !4285, line: 67, baseType: !4337, size: 64, offset: 448)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{!85, !126, !4340}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset", scope: !4293, file: !4285, line: 68, baseType: !4342, size: 64, offset: 512)
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!85, !126, !257}
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "param_get", scope: !4293, file: !4285, line: 69, baseType: !4346, size: 64, offset: 576)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = !DISubroutineType(types: !4348)
!4348 = !{!85, !126, !4349}
!4349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4350, size: 64)
!4350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_param", file: !4305, line: 70, size: 192, elements: !4351)
!4351 = !{!4352, !4353, !4359, !4360}
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4350, file: !4305, line: 71, baseType: !375, size: 64)
!4353 = !DIDerivedType(tag: DW_TAG_member, scope: !4350, file: !4305, line: 72, baseType: !4354, size: 64, offset: 64)
!4354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4350, file: !4305, line: 72, size: 64, elements: !4355)
!4355 = !{!4356, !4357, !4358}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4354, file: !4305, line: 73, baseType: !375, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4354, file: !4305, line: 74, baseType: !573, size: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4354, file: !4305, line: 75, baseType: !375, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4350, file: !4305, line: 77, baseType: !371, size: 32, offset: 128)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !4350, file: !4305, line: 78, baseType: !371, size: 32, offset: 160)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "param_set", scope: !4293, file: !4285, line: 70, baseType: !4346, size: 64, offset: 640)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !4284, file: !4285, line: 94, baseType: !562, size: 256, offset: 6016)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "char_dev", scope: !4284, file: !4285, line: 96, baseType: !3605, size: 832, offset: 6272)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4284, file: !4285, line: 97, baseType: !271, size: 64, offset: 7104)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !4284, file: !4285, line: 99, baseType: !271, size: 64, offset: 7168)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "irq_lock", scope: !4284, file: !4285, line: 100, baseType: !151, size: 32, offset: 7232)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "irq_queue", scope: !4284, file: !4285, line: 101, baseType: !1102, size: 192, offset: 7296)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !4284, file: !4285, line: 102, baseType: !4369, size: 64, offset: 7488)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !28, line: 1083, size: 384, elements: !4371)
!4371 = !{!4372, !4373, !4374, !4375, !4376, !4377}
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4370, file: !28, line: 1084, baseType: !1066, size: 64)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4370, file: !28, line: 1085, baseType: !85, size: 32, offset: 64)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4370, file: !28, line: 1086, baseType: !85, size: 32, offset: 96)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4370, file: !28, line: 1087, baseType: !4369, size: 64, offset: 128)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4370, file: !28, line: 1088, baseType: !1349, size: 64, offset: 192)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4370, file: !28, line: 1089, baseType: !782, size: 128, align: 64, offset: 256)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "irq_freq", scope: !4284, file: !4285, line: 104, baseType: !85, size: 32, offset: 7552)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_freq", scope: !4284, file: !4285, line: 105, baseType: !85, size: 32, offset: 7584)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "timerqueue", scope: !4284, file: !4285, line: 107, baseType: !2200, size: 128, offset: 7616)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "aie_timer", scope: !4284, file: !4285, line: 108, baseType: !4382, size: 512, offset: 7744)
!4382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_timer", file: !4285, line: 75, size: 512, elements: !4383)
!4383 = !{!4384, !4385, !4386, !4390, !4391}
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4382, file: !4285, line: 76, baseType: !2147, size: 256)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4382, file: !4285, line: 77, baseType: !2152, size: 64, offset: 256)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4382, file: !4285, line: 78, baseType: !4387, size: 64, offset: 320)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{null, !4283}
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "rtc", scope: !4382, file: !4285, line: 79, baseType: !4283, size: 64, offset: 384)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4382, file: !4285, line: 80, baseType: !85, size: 32, offset: 448)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "uie_rtctimer", scope: !4284, file: !4285, line: 109, baseType: !4382, size: 512, offset: 8256)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "pie_timer", scope: !4284, file: !4285, line: 110, baseType: !2144, size: 512, offset: 8768)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "pie_enabled", scope: !4284, file: !4285, line: 111, baseType: !85, size: 32, offset: 9280)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "irqwork", scope: !4284, file: !4285, line: 112, baseType: !822, size: 256, offset: 9344)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset_nsec", scope: !4284, file: !4285, line: 143, baseType: !271, size: 64, offset: 9600)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !4284, file: !4285, line: 145, baseType: !2271, size: 64, offset: 9664)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !4284, file: !4285, line: 147, baseType: !1181, size: 64, offset: 9728)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !4284, file: !4285, line: 148, baseType: !4400, size: 64, offset: 9792)
!4400 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeu64_t", file: !1182, line: 9, baseType: !375)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_offset_max", scope: !4284, file: !4285, line: 149, baseType: !4400, size: 64, offset: 9856)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "start_secs", scope: !4284, file: !4285, line: 150, baseType: !1181, size: 64, offset: 9920)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "offset_secs", scope: !4284, file: !4285, line: 151, baseType: !1181, size: 64, offset: 9984)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "set_start_time", scope: !4284, file: !4285, line: 152, baseType: !642, size: 8, offset: 10048)
!4405 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !124, line: 42, baseType: !271)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!4410 = !{!4411, !4413, !0, !4415, !4417, !4422, !4436, !4438, !4441, !4443, !4448, !4450, !4452, !4457, !4460, !4462, !4464, !4466, !4468, !4470, !4472, !4474, !4476, !4478, !4481, !4483, !4488, !4490, !4493, !4495, !4497}
!4411 = !DIGlobalVariableExpression(var: !4412, expr: !DIExpression())
!4412 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_add_groups267", scope: !2, file: !3, line: 347, type: !125, isLocal: true, isDefinition: true)
!4413 = !DIGlobalVariableExpression(var: !4414, expr: !DIExpression())
!4414 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_rtc_add_group268", scope: !2, file: !3, line: 355, type: !125, isLocal: true, isDefinition: true)
!4415 = !DIGlobalVariableExpression(var: !4416, expr: !DIExpression())
!4416 = distinct !DIGlobalVariable(name: "rtc_attr_group", scope: !2, file: !3, line: 301, type: !276, isLocal: true, isDefinition: true)
!4417 = !DIGlobalVariableExpression(var: !4418, expr: !DIExpression())
!4418 = distinct !DIGlobalVariable(scope: null, file: !3, line: 216, type: !4419, isLocal: true, isDefinition: true)
!4419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 80, elements: !4420)
!4420 = !{!4421}
!4421 = !DISubrange(count: 10)
!4422 = !DIGlobalVariableExpression(var: !4423, expr: !DIExpression())
!4423 = distinct !DIGlobalVariable(name: "dev_attr_wakealarm", scope: !2, file: !3, line: 216, type: !4424, isLocal: true, isDefinition: true)
!4424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !70, line: 106, size: 256, elements: !4425)
!4425 = !{!4426, !4427, !4432}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4424, file: !70, line: 107, baseType: !259, size: 128)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4424, file: !70, line: 108, baseType: !4428, size: 64, offset: 128)
!4428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4429, size: 64)
!4429 = !DISubroutineType(types: !4430)
!4430 = !{!253, !126, !4431, !221}
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4424, file: !70, line: 110, baseType: !4433, size: 64, offset: 192)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DISubroutineType(types: !4435)
!4435 = !{!253, !126, !4431, !134, !268}
!4436 = !DIGlobalVariableExpression(var: !4437, expr: !DIExpression())
!4437 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !1209, isLocal: true, isDefinition: true)
!4438 = !DIGlobalVariableExpression(var: !4439, expr: !DIExpression())
!4439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !4440, isLocal: true, isDefinition: true)
!4440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 56, elements: !683)
!4441 = !DIGlobalVariableExpression(var: !4442, expr: !DIExpression())
!4442 = distinct !DIGlobalVariable(name: "dev_attr_offset", scope: !2, file: !3, line: 244, type: !4424, isLocal: true, isDefinition: true)
!4443 = !DIGlobalVariableExpression(var: !4444, expr: !DIExpression())
!4444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 226, type: !4445, isLocal: true, isDefinition: true)
!4445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 40, elements: !4446)
!4446 = !{!4447}
!4447 = !DISubrange(count: 5)
!4448 = !DIGlobalVariableExpression(var: !4449, expr: !DIExpression())
!4449 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !1209, isLocal: true, isDefinition: true)
!4450 = !DIGlobalVariableExpression(var: !4451, expr: !DIExpression())
!4451 = distinct !DIGlobalVariable(name: "dev_attr_range", scope: !2, file: !3, line: 252, type: !4424, isLocal: true, isDefinition: true)
!4452 = !DIGlobalVariableExpression(var: !4453, expr: !DIExpression())
!4453 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !4454, isLocal: true, isDefinition: true)
!4454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 104, elements: !4455)
!4455 = !{!4456}
!4456 = !DISubrange(count: 13)
!4457 = !DIGlobalVariableExpression(var: !4458, expr: !DIExpression())
!4458 = distinct !DIGlobalVariable(name: "rtc_attrs", scope: !2, file: !3, line: 254, type: !4459, isLocal: true, isDefinition: true)
!4459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 640, elements: !4420)
!4460 = !DIGlobalVariableExpression(var: !4461, expr: !DIExpression())
!4461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !4445, isLocal: true, isDefinition: true)
!4462 = !DIGlobalVariableExpression(var: !4463, expr: !DIExpression())
!4463 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 30, type: !4424, isLocal: true, isDefinition: true)
!4464 = !DIGlobalVariableExpression(var: !4465, expr: !DIExpression())
!4465 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !4440, isLocal: true, isDefinition: true)
!4466 = !DIGlobalVariableExpression(var: !4467, expr: !DIExpression())
!4467 = distinct !DIGlobalVariable(scope: null, file: !3, line: 44, type: !4445, isLocal: true, isDefinition: true)
!4468 = !DIGlobalVariableExpression(var: !4469, expr: !DIExpression())
!4469 = distinct !DIGlobalVariable(name: "dev_attr_date", scope: !2, file: !3, line: 44, type: !4424, isLocal: true, isDefinition: true)
!4470 = !DIGlobalVariableExpression(var: !4471, expr: !DIExpression())
!4471 = distinct !DIGlobalVariable(scope: null, file: !3, line: 42, type: !4440, isLocal: true, isDefinition: true)
!4472 = !DIGlobalVariableExpression(var: !4473, expr: !DIExpression())
!4473 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !4445, isLocal: true, isDefinition: true)
!4474 = !DIGlobalVariableExpression(var: !4475, expr: !DIExpression())
!4475 = distinct !DIGlobalVariable(name: "dev_attr_time", scope: !2, file: !3, line: 58, type: !4424, isLocal: true, isDefinition: true)
!4476 = !DIGlobalVariableExpression(var: !4477, expr: !DIExpression())
!4477 = distinct !DIGlobalVariable(scope: null, file: !3, line: 56, type: !4440, isLocal: true, isDefinition: true)
!4478 = !DIGlobalVariableExpression(var: !4479, expr: !DIExpression())
!4479 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !4480, isLocal: true, isDefinition: true)
!4480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 96, elements: !3168)
!4481 = !DIGlobalVariableExpression(var: !4482, expr: !DIExpression())
!4482 = distinct !DIGlobalVariable(name: "dev_attr_since_epoch", scope: !2, file: !3, line: 76, type: !4424, isLocal: true, isDefinition: true)
!4483 = !DIGlobalVariableExpression(var: !4484, expr: !DIExpression())
!4484 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !4485, isLocal: true, isDefinition: true)
!4485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 112, elements: !4486)
!4486 = !{!4487}
!4487 = !DISubrange(count: 14)
!4488 = !DIGlobalVariableExpression(var: !4489, expr: !DIExpression())
!4489 = distinct !DIGlobalVariable(name: "dev_attr_max_user_freq", scope: !2, file: !3, line: 103, type: !4424, isLocal: true, isDefinition: true)
!4490 = !DIGlobalVariableExpression(var: !4491, expr: !DIExpression())
!4491 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !4492, isLocal: true, isDefinition: true)
!4492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32, elements: !792)
!4493 = !DIGlobalVariableExpression(var: !4494, expr: !DIExpression())
!4494 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !2786, isLocal: true, isDefinition: true)
!4495 = !DIGlobalVariableExpression(var: !4496, expr: !DIExpression())
!4496 = distinct !DIGlobalVariable(name: "dev_attr_hctosys", scope: !2, file: !3, line: 125, type: !4424, isLocal: true, isDefinition: true)
!4497 = !DIGlobalVariableExpression(var: !4498, expr: !DIExpression())
!4498 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !4499, isLocal: true, isDefinition: true)
!4499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 24, elements: !222)
!4500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 128, elements: !681)
!4501 = !{i32 7, !"Dwarf Version", i32 5}
!4502 = !{i32 2, !"Debug Info Version", i32 3}
!4503 = !{i32 1, !"wchar_size", i32 2}
!4504 = !{i32 8, !"cf-protection-branch", i32 1}
!4505 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4506 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4507 = !{i32 1, !"Code Model", i32 2}
!4508 = !{i32 1, !"override-stack-alignment", i32 8}
!4509 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4510 = distinct !DISubprogram(name: "rtc_get_dev_attribute_groups", scope: !3, file: !3, line: 311, type: !4511, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!273}
!4513 = !DILocation(line: 313, column: 2, scope: !4510)
!4514 = distinct !DISubprogram(name: "rtc_add_groups", scope: !3, file: !3, line: 316, type: !4515, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!85, !4283, !273}
!4517 = !{!4518, !4519, !4520, !4521, !4522, !4523, !4524}
!4518 = !DILocalVariable(name: "rtc", arg: 1, scope: !4514, file: !3, line: 316, type: !4283)
!4519 = !DILocalVariable(name: "grps", arg: 2, scope: !4514, file: !3, line: 316, type: !273)
!4520 = !DILocalVariable(name: "old_cnt", scope: !4514, file: !3, line: 318, type: !268)
!4521 = !DILocalVariable(name: "add_cnt", scope: !4514, file: !3, line: 318, type: !268)
!4522 = !DILocalVariable(name: "new_cnt", scope: !4514, file: !3, line: 318, type: !268)
!4523 = !DILocalVariable(name: "groups", scope: !4514, file: !3, line: 319, type: !273)
!4524 = !DILocalVariable(name: "old", scope: !4514, file: !3, line: 319, type: !273)
!4525 = !DILocation(line: 316, column: 39, scope: !4514)
!4526 = !DILocation(line: 316, column: 75, scope: !4514)
!4527 = !DILocation(line: 318, column: 2, scope: !4514)
!4528 = !DILocation(line: 318, column: 9, scope: !4514)
!4529 = !DILocation(line: 318, column: 22, scope: !4514)
!4530 = !DILocation(line: 318, column: 35, scope: !4514)
!4531 = !DILocation(line: 319, column: 2, scope: !4514)
!4532 = !DILocation(line: 319, column: 33, scope: !4514)
!4533 = !DILocation(line: 319, column: 43, scope: !4514)
!4534 = !DILocation(line: 321, column: 7, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 321, column: 6)
!4536 = !DILocation(line: 321, column: 6, scope: !4514)
!4537 = !DILocation(line: 322, column: 3, scope: !4535)
!4538 = !DILocation(line: 324, column: 11, scope: !4514)
!4539 = !DILocation(line: 324, column: 16, scope: !4514)
!4540 = !DILocation(line: 324, column: 20, scope: !4514)
!4541 = !DILocation(line: 324, column: 9, scope: !4514)
!4542 = !DILocation(line: 325, column: 6, scope: !4543)
!4543 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 325, column: 6)
!4544 = !DILocation(line: 325, column: 6, scope: !4514)
!4545 = !DILocation(line: 326, column: 3, scope: !4543)
!4546 = !DILocation(line: 326, column: 11, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4548, file: !3, line: 326, column: 3)
!4548 = distinct !DILexicalBlock(scope: !4543, file: !3, line: 326, column: 3)
!4549 = !DILocation(line: 326, column: 10, scope: !4547)
!4550 = !DILocation(line: 326, column: 3, scope: !4548)
!4551 = !DILocation(line: 327, column: 11, scope: !4547)
!4552 = !DILocation(line: 327, column: 4, scope: !4547)
!4553 = !DILocation(line: 326, column: 25, scope: !4547)
!4554 = !DILocation(line: 326, column: 3, scope: !4547)
!4555 = distinct !{!4555, !4550, !4556, !4557, !4558}
!4556 = !DILocation(line: 327, column: 11, scope: !4548)
!4557 = !{!"llvm.loop.mustprogress"}
!4558 = !{!"llvm.loop.unroll.disable"}
!4559 = !DILocation(line: 329, column: 16, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 329, column: 2)
!4561 = !DILocation(line: 329, column: 14, scope: !4560)
!4562 = !DILocation(line: 329, column: 7, scope: !4560)
!4563 = !DILocation(line: 329, column: 23, scope: !4564)
!4564 = distinct !DILexicalBlock(scope: !4560, file: !3, line: 329, column: 2)
!4565 = !DILocation(line: 329, column: 22, scope: !4564)
!4566 = !DILocation(line: 329, column: 2, scope: !4560)
!4567 = !DILocation(line: 330, column: 10, scope: !4564)
!4568 = !DILocation(line: 330, column: 3, scope: !4564)
!4569 = !DILocation(line: 329, column: 37, scope: !4564)
!4570 = !DILocation(line: 329, column: 2, scope: !4564)
!4571 = distinct !{!4571, !4566, !4572, !4557, !4558}
!4572 = !DILocation(line: 330, column: 10, scope: !4560)
!4573 = !DILocation(line: 332, column: 12, scope: !4514)
!4574 = !DILocation(line: 332, column: 22, scope: !4514)
!4575 = !DILocation(line: 332, column: 20, scope: !4514)
!4576 = !DILocation(line: 332, column: 30, scope: !4514)
!4577 = !DILocation(line: 332, column: 10, scope: !4514)
!4578 = !DILocation(line: 333, column: 25, scope: !4514)
!4579 = !DILocation(line: 333, column: 30, scope: !4514)
!4580 = !DILocation(line: 333, column: 35, scope: !4514)
!4581 = !DILocation(line: 333, column: 11, scope: !4514)
!4582 = !DILocation(line: 333, column: 9, scope: !4514)
!4583 = !DILocation(line: 334, column: 7, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 334, column: 6)
!4585 = !DILocation(line: 334, column: 6, scope: !4514)
!4586 = !DILocation(line: 335, column: 3, scope: !4584)
!4587 = !DILocation(line: 336, column: 9, scope: !4514)
!4588 = !DILocation(line: 336, column: 17, scope: !4514)
!4589 = !DILocation(line: 336, column: 22, scope: !4514)
!4590 = !DILocation(line: 336, column: 26, scope: !4514)
!4591 = !DILocation(line: 336, column: 34, scope: !4514)
!4592 = !DILocation(line: 336, column: 42, scope: !4514)
!4593 = !DILocation(line: 336, column: 2, scope: !4514)
!4594 = !DILocation(line: 337, column: 9, scope: !4514)
!4595 = !DILocation(line: 337, column: 18, scope: !4514)
!4596 = !DILocation(line: 337, column: 16, scope: !4514)
!4597 = !DILocation(line: 337, column: 27, scope: !4514)
!4598 = !DILocation(line: 337, column: 33, scope: !4514)
!4599 = !DILocation(line: 337, column: 41, scope: !4514)
!4600 = !DILocation(line: 337, column: 2, scope: !4514)
!4601 = !DILocation(line: 338, column: 2, scope: !4514)
!4602 = !DILocation(line: 338, column: 9, scope: !4514)
!4603 = !DILocation(line: 338, column: 19, scope: !4514)
!4604 = !DILocation(line: 338, column: 17, scope: !4514)
!4605 = !DILocation(line: 338, column: 28, scope: !4514)
!4606 = !DILocation(line: 340, column: 8, scope: !4514)
!4607 = !DILocation(line: 340, column: 13, scope: !4514)
!4608 = !DILocation(line: 340, column: 17, scope: !4514)
!4609 = !DILocation(line: 340, column: 6, scope: !4514)
!4610 = !DILocation(line: 341, column: 20, scope: !4514)
!4611 = !DILocation(line: 341, column: 2, scope: !4514)
!4612 = !DILocation(line: 341, column: 7, scope: !4514)
!4613 = !DILocation(line: 341, column: 11, scope: !4514)
!4614 = !DILocation(line: 341, column: 18, scope: !4514)
!4615 = !DILocation(line: 342, column: 6, scope: !4616)
!4616 = distinct !DILexicalBlock(scope: !4514, file: !3, line: 342, column: 6)
!4617 = !DILocation(line: 342, column: 10, scope: !4616)
!4618 = !DILocation(line: 342, column: 13, scope: !4616)
!4619 = !DILocation(line: 342, column: 17, scope: !4616)
!4620 = !DILocation(line: 342, column: 6, scope: !4514)
!4621 = !DILocation(line: 343, column: 15, scope: !4616)
!4622 = !DILocation(line: 343, column: 20, scope: !4616)
!4623 = !DILocation(line: 343, column: 25, scope: !4616)
!4624 = !DILocation(line: 343, column: 3, scope: !4616)
!4625 = !DILocation(line: 345, column: 2, scope: !4514)
!4626 = !DILocation(line: 346, column: 1, scope: !4514)
!4627 = distinct !DISubprogram(name: "devm_kcalloc", scope: !70, file: !70, line: 326, type: !4628, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4630)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!125, !126, !268, !268, !123}
!4630 = !{!4631, !4632, !4633, !4634}
!4631 = !DILocalVariable(name: "dev", arg: 1, scope: !4627, file: !70, line: 326, type: !126)
!4632 = !DILocalVariable(name: "n", arg: 2, scope: !4627, file: !70, line: 327, type: !268)
!4633 = !DILocalVariable(name: "size", arg: 3, scope: !4627, file: !70, line: 327, type: !268)
!4634 = !DILocalVariable(name: "flags", arg: 4, scope: !4627, file: !70, line: 327, type: !123)
!4635 = !DILocation(line: 326, column: 49, scope: !4627)
!4636 = !DILocation(line: 327, column: 13, scope: !4627)
!4637 = !DILocation(line: 327, column: 23, scope: !4627)
!4638 = !DILocation(line: 327, column: 35, scope: !4627)
!4639 = !DILocation(line: 329, column: 28, scope: !4627)
!4640 = !DILocation(line: 329, column: 33, scope: !4627)
!4641 = !DILocation(line: 329, column: 36, scope: !4627)
!4642 = !DILocation(line: 329, column: 42, scope: !4627)
!4643 = !DILocation(line: 329, column: 48, scope: !4627)
!4644 = !DILocation(line: 329, column: 9, scope: !4627)
!4645 = !DILocation(line: 329, column: 2, scope: !4627)
!4646 = !DISubprogram(name: "devm_kfree", scope: !70, file: !70, line: 342, type: !4647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4647 = !DISubroutineType(types: !4648)
!4648 = !{null, !126, !1561}
!4649 = distinct !DISubprogram(name: "rtc_add_group", scope: !3, file: !3, line: 349, type: !4650, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!85, !4283, !274}
!4652 = !{!4653, !4654, !4655}
!4653 = !DILocalVariable(name: "rtc", arg: 1, scope: !4649, file: !3, line: 349, type: !4283)
!4654 = !DILocalVariable(name: "grp", arg: 2, scope: !4649, file: !3, line: 349, type: !274)
!4655 = !DILocalVariable(name: "groups", scope: !4649, file: !3, line: 351, type: !4500)
!4656 = !DILocation(line: 349, column: 38, scope: !4649)
!4657 = !DILocation(line: 349, column: 73, scope: !4649)
!4658 = !DILocation(line: 351, column: 2, scope: !4649)
!4659 = !DILocation(line: 351, column: 32, scope: !4649)
!4660 = !DILocation(line: 351, column: 43, scope: !4649)
!4661 = !DILocation(line: 351, column: 45, scope: !4649)
!4662 = !DILocation(line: 353, column: 24, scope: !4649)
!4663 = !DILocation(line: 353, column: 29, scope: !4649)
!4664 = !DILocation(line: 353, column: 9, scope: !4649)
!4665 = !DILocation(line: 354, column: 1, scope: !4649)
!4666 = !DILocation(line: 353, column: 2, scope: !4649)
!4667 = distinct !DISubprogram(name: "rtc_attr_is_visible", scope: !3, file: !3, line: 280, type: !281, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4668)
!4668 = !{!4669, !4670, !4671, !4672, !4673, !4675, !4676, !4678}
!4669 = !DILocalVariable(name: "kobj", arg: 1, scope: !4667, file: !3, line: 280, type: !144)
!4670 = !DILocalVariable(name: "attr", arg: 2, scope: !4667, file: !3, line: 281, type: !258)
!4671 = !DILocalVariable(name: "n", arg: 3, scope: !4667, file: !3, line: 281, type: !85)
!4672 = !DILocalVariable(name: "dev", scope: !4667, file: !3, line: 283, type: !126)
!4673 = !DILocalVariable(name: "__mptr", scope: !4674, file: !3, line: 283, type: !125)
!4674 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 283, column: 23)
!4675 = !DILocalVariable(name: "rtc", scope: !4667, file: !3, line: 284, type: !4283)
!4676 = !DILocalVariable(name: "__mptr", scope: !4677, file: !3, line: 284, type: !125)
!4677 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 284, column: 27)
!4678 = !DILocalVariable(name: "mode", scope: !4667, file: !3, line: 285, type: !263)
!4679 = !DILocation(line: 280, column: 52, scope: !4667)
!4680 = !DILocation(line: 281, column: 26, scope: !4667)
!4681 = !DILocation(line: 281, column: 36, scope: !4667)
!4682 = !DILocation(line: 283, column: 2, scope: !4667)
!4683 = !DILocation(line: 283, column: 17, scope: !4667)
!4684 = !DILocation(line: 283, column: 23, scope: !4674)
!4685 = !DILocation(line: 283, column: 23, scope: !4667)
!4686 = !DILocation(line: 284, column: 2, scope: !4667)
!4687 = !DILocation(line: 284, column: 21, scope: !4667)
!4688 = !DILocation(line: 284, column: 27, scope: !4677)
!4689 = !DILocation(line: 284, column: 27, scope: !4667)
!4690 = !DILocation(line: 285, column: 2, scope: !4667)
!4691 = !DILocation(line: 285, column: 10, scope: !4667)
!4692 = !DILocation(line: 285, column: 17, scope: !4667)
!4693 = !DILocation(line: 285, column: 23, scope: !4667)
!4694 = !DILocation(line: 287, column: 6, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4667, file: !3, line: 287, column: 6)
!4696 = !DILocation(line: 287, column: 11, scope: !4695)
!4697 = !DILocation(line: 287, column: 6, scope: !4667)
!4698 = !DILocation(line: 288, column: 27, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !3, line: 288, column: 7)
!4700 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 287, column: 40)
!4701 = !DILocation(line: 288, column: 8, scope: !4699)
!4702 = !DILocation(line: 288, column: 7, scope: !4700)
!4703 = !DILocation(line: 289, column: 9, scope: !4699)
!4704 = !DILocation(line: 289, column: 4, scope: !4699)
!4705 = !DILocation(line: 290, column: 2, scope: !4700)
!4706 = !DILocation(line: 290, column: 13, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4695, file: !3, line: 290, column: 13)
!4708 = !DILocation(line: 290, column: 18, scope: !4707)
!4709 = !DILocation(line: 290, column: 13, scope: !4695)
!4710 = !DILocation(line: 291, column: 8, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4712, file: !3, line: 291, column: 7)
!4712 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 290, column: 44)
!4713 = !DILocation(line: 291, column: 13, scope: !4711)
!4714 = !DILocation(line: 291, column: 18, scope: !4711)
!4715 = !DILocation(line: 291, column: 7, scope: !4712)
!4716 = !DILocation(line: 292, column: 9, scope: !4711)
!4717 = !DILocation(line: 292, column: 4, scope: !4711)
!4718 = !DILocation(line: 293, column: 2, scope: !4712)
!4719 = !DILocation(line: 293, column: 13, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4707, file: !3, line: 293, column: 13)
!4721 = !DILocation(line: 293, column: 18, scope: !4720)
!4722 = !DILocation(line: 293, column: 13, scope: !4707)
!4723 = !DILocation(line: 294, column: 9, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4725, file: !3, line: 294, column: 7)
!4725 = distinct !DILexicalBlock(scope: !4720, file: !3, line: 293, column: 43)
!4726 = !DILocation(line: 294, column: 14, scope: !4724)
!4727 = !DILocation(line: 294, column: 26, scope: !4724)
!4728 = !DILocation(line: 294, column: 31, scope: !4724)
!4729 = !DILocation(line: 294, column: 24, scope: !4724)
!4730 = !DILocation(line: 294, column: 7, scope: !4725)
!4731 = !DILocation(line: 295, column: 9, scope: !4724)
!4732 = !DILocation(line: 295, column: 4, scope: !4724)
!4733 = !DILocation(line: 296, column: 2, scope: !4725)
!4734 = !DILocation(line: 298, column: 9, scope: !4667)
!4735 = !DILocation(line: 299, column: 1, scope: !4667)
!4736 = !DILocation(line: 298, column: 2, scope: !4667)
!4737 = distinct !DISubprogram(name: "rtc_does_wakealarm", scope: !3, file: !3, line: 272, type: !4738, scopeLine: 273, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4740)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!642, !4283}
!4740 = !{!4741}
!4741 = !DILocalVariable(name: "rtc", arg: 1, scope: !4737, file: !3, line: 272, type: !4283)
!4742 = !DILocation(line: 272, column: 51, scope: !4737)
!4743 = !DILocation(line: 274, column: 25, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4737, file: !3, line: 274, column: 6)
!4745 = !DILocation(line: 274, column: 30, scope: !4744)
!4746 = !DILocation(line: 274, column: 34, scope: !4744)
!4747 = !DILocation(line: 274, column: 7, scope: !4744)
!4748 = !DILocation(line: 274, column: 6, scope: !4737)
!4749 = !DILocation(line: 275, column: 3, scope: !4744)
!4750 = !DILocation(line: 277, column: 11, scope: !4737)
!4751 = !DILocation(line: 277, column: 10, scope: !4737)
!4752 = !DILocation(line: 277, column: 9, scope: !4737)
!4753 = !DILocation(line: 277, column: 2, scope: !4737)
!4754 = !DILocation(line: 278, column: 1, scope: !4737)
!4755 = distinct !DISubprogram(name: "wakealarm_show", scope: !3, file: !3, line: 128, type: !4429, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4756)
!4756 = !{!4757, !4758, !4759, !4760, !4761, !4762, !4763}
!4757 = !DILocalVariable(name: "dev", arg: 1, scope: !4755, file: !3, line: 128, type: !126)
!4758 = !DILocalVariable(name: "attr", arg: 2, scope: !4755, file: !3, line: 128, type: !4431)
!4759 = !DILocalVariable(name: "buf", arg: 3, scope: !4755, file: !3, line: 128, type: !221)
!4760 = !DILocalVariable(name: "retval", scope: !4755, file: !3, line: 130, type: !253)
!4761 = !DILocalVariable(name: "alarm", scope: !4755, file: !3, line: 131, type: !1181)
!4762 = !DILocalVariable(name: "alm", scope: !4755, file: !3, line: 132, type: !4322)
!4763 = !DILocalVariable(name: "__mptr", scope: !4764, file: !3, line: 142, type: !125)
!4764 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 142, column: 26)
!4765 = !DILocation(line: 128, column: 31, scope: !4755)
!4766 = !DILocation(line: 128, column: 61, scope: !4755)
!4767 = !DILocation(line: 128, column: 73, scope: !4755)
!4768 = !DILocation(line: 130, column: 2, scope: !4755)
!4769 = !DILocation(line: 130, column: 10, scope: !4755)
!4770 = !DILocation(line: 131, column: 2, scope: !4755)
!4771 = !DILocation(line: 131, column: 11, scope: !4755)
!4772 = !DILocation(line: 132, column: 2, scope: !4755)
!4773 = !DILocation(line: 132, column: 20, scope: !4755)
!4774 = !DILocation(line: 142, column: 26, scope: !4764)
!4775 = !DILocation(line: 142, column: 26, scope: !4755)
!4776 = !DILocation(line: 142, column: 11, scope: !4755)
!4777 = !DILocation(line: 142, column: 9, scope: !4755)
!4778 = !DILocation(line: 143, column: 6, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4755, file: !3, line: 143, column: 6)
!4780 = !DILocation(line: 143, column: 13, scope: !4779)
!4781 = !DILocation(line: 143, column: 18, scope: !4779)
!4782 = !DILocation(line: 143, column: 25, scope: !4779)
!4783 = !DILocation(line: 143, column: 21, scope: !4779)
!4784 = !DILocation(line: 143, column: 6, scope: !4755)
!4785 = !DILocation(line: 144, column: 33, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4779, file: !3, line: 143, column: 34)
!4787 = !DILocation(line: 144, column: 11, scope: !4786)
!4788 = !DILocation(line: 144, column: 9, scope: !4786)
!4789 = !DILocation(line: 145, column: 20, scope: !4786)
!4790 = !DILocation(line: 145, column: 35, scope: !4786)
!4791 = !DILocation(line: 145, column: 12, scope: !4786)
!4792 = !DILocation(line: 145, column: 10, scope: !4786)
!4793 = !DILocation(line: 146, column: 2, scope: !4786)
!4794 = !DILocation(line: 148, column: 9, scope: !4755)
!4795 = !DILocation(line: 149, column: 1, scope: !4755)
!4796 = !DILocation(line: 148, column: 2, scope: !4755)
!4797 = distinct !DISubprogram(name: "wakealarm_store", scope: !3, file: !3, line: 152, type: !4434, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4798)
!4798 = !{!4799, !4800, !4801, !4802, !4803, !4804, !4805, !4806, !4807, !4808, !4809, !4811, !4812}
!4799 = !DILocalVariable(name: "dev", arg: 1, scope: !4797, file: !3, line: 152, type: !126)
!4800 = !DILocalVariable(name: "attr", arg: 2, scope: !4797, file: !3, line: 152, type: !4431)
!4801 = !DILocalVariable(name: "buf", arg: 3, scope: !4797, file: !3, line: 153, type: !134)
!4802 = !DILocalVariable(name: "n", arg: 4, scope: !4797, file: !3, line: 153, type: !268)
!4803 = !DILocalVariable(name: "retval", scope: !4797, file: !3, line: 155, type: !253)
!4804 = !DILocalVariable(name: "now", scope: !4797, file: !3, line: 156, type: !1181)
!4805 = !DILocalVariable(name: "alarm", scope: !4797, file: !3, line: 156, type: !1181)
!4806 = !DILocalVariable(name: "push", scope: !4797, file: !3, line: 157, type: !1181)
!4807 = !DILocalVariable(name: "alm", scope: !4797, file: !3, line: 158, type: !4322)
!4808 = !DILocalVariable(name: "rtc", scope: !4797, file: !3, line: 159, type: !4283)
!4809 = !DILocalVariable(name: "__mptr", scope: !4810, file: !3, line: 159, type: !125)
!4810 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 159, column: 27)
!4811 = !DILocalVariable(name: "buf_ptr", scope: !4797, file: !3, line: 160, type: !134)
!4812 = !DILocalVariable(name: "adjust", scope: !4797, file: !3, line: 161, type: !85)
!4813 = !DILocation(line: 152, column: 32, scope: !4797)
!4814 = !DILocation(line: 152, column: 62, scope: !4797)
!4815 = !DILocation(line: 153, column: 15, scope: !4797)
!4816 = !DILocation(line: 153, column: 27, scope: !4797)
!4817 = !DILocation(line: 155, column: 2, scope: !4797)
!4818 = !DILocation(line: 155, column: 10, scope: !4797)
!4819 = !DILocation(line: 156, column: 2, scope: !4797)
!4820 = !DILocation(line: 156, column: 11, scope: !4797)
!4821 = !DILocation(line: 156, column: 16, scope: !4797)
!4822 = !DILocation(line: 157, column: 2, scope: !4797)
!4823 = !DILocation(line: 157, column: 11, scope: !4797)
!4824 = !DILocation(line: 158, column: 2, scope: !4797)
!4825 = !DILocation(line: 158, column: 20, scope: !4797)
!4826 = !DILocation(line: 159, column: 2, scope: !4797)
!4827 = !DILocation(line: 159, column: 21, scope: !4797)
!4828 = !DILocation(line: 159, column: 27, scope: !4810)
!4829 = !DILocation(line: 159, column: 27, scope: !4797)
!4830 = !DILocation(line: 160, column: 2, scope: !4797)
!4831 = !DILocation(line: 160, column: 14, scope: !4797)
!4832 = !DILocation(line: 161, column: 2, scope: !4797)
!4833 = !DILocation(line: 161, column: 6, scope: !4797)
!4834 = !DILocation(line: 166, column: 25, scope: !4797)
!4835 = !DILocation(line: 166, column: 35, scope: !4797)
!4836 = !DILocation(line: 166, column: 11, scope: !4797)
!4837 = !DILocation(line: 166, column: 9, scope: !4797)
!4838 = !DILocation(line: 167, column: 6, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 167, column: 6)
!4840 = !DILocation(line: 167, column: 13, scope: !4839)
!4841 = !DILocation(line: 167, column: 6, scope: !4797)
!4842 = !DILocation(line: 168, column: 10, scope: !4839)
!4843 = !DILocation(line: 168, column: 3, scope: !4839)
!4844 = !DILocation(line: 169, column: 30, scope: !4797)
!4845 = !DILocation(line: 169, column: 8, scope: !4797)
!4846 = !DILocation(line: 169, column: 6, scope: !4797)
!4847 = !DILocation(line: 171, column: 12, scope: !4797)
!4848 = !DILocation(line: 171, column: 10, scope: !4797)
!4849 = !DILocation(line: 172, column: 7, scope: !4850)
!4850 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 172, column: 6)
!4851 = !DILocation(line: 172, column: 6, scope: !4850)
!4852 = !DILocation(line: 172, column: 15, scope: !4850)
!4853 = !DILocation(line: 172, column: 6, scope: !4797)
!4854 = !DILocation(line: 173, column: 10, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4850, file: !3, line: 172, column: 23)
!4856 = !DILocation(line: 174, column: 8, scope: !4857)
!4857 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 174, column: 7)
!4858 = !DILocation(line: 174, column: 7, scope: !4857)
!4859 = !DILocation(line: 174, column: 16, scope: !4857)
!4860 = !DILocation(line: 174, column: 7, scope: !4855)
!4861 = !DILocation(line: 175, column: 11, scope: !4862)
!4862 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 174, column: 24)
!4863 = !DILocation(line: 176, column: 9, scope: !4862)
!4864 = !DILocation(line: 177, column: 3, scope: !4862)
!4865 = !DILocation(line: 178, column: 11, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4857, file: !3, line: 177, column: 10)
!4867 = !DILocation(line: 180, column: 2, scope: !4855)
!4868 = !DILocation(line: 181, column: 21, scope: !4797)
!4869 = !DILocation(line: 181, column: 11, scope: !4797)
!4870 = !DILocation(line: 181, column: 9, scope: !4797)
!4871 = !DILocation(line: 182, column: 6, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 182, column: 6)
!4873 = !DILocation(line: 182, column: 6, scope: !4797)
!4874 = !DILocation(line: 183, column: 10, scope: !4872)
!4875 = !DILocation(line: 183, column: 3, scope: !4872)
!4876 = !DILocation(line: 184, column: 6, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 184, column: 6)
!4878 = !DILocation(line: 184, column: 6, scope: !4797)
!4879 = !DILocation(line: 185, column: 12, scope: !4877)
!4880 = !DILocation(line: 185, column: 9, scope: !4877)
!4881 = !DILocation(line: 185, column: 3, scope: !4877)
!4882 = !DILocation(line: 186, column: 6, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4797, file: !3, line: 186, column: 6)
!4884 = !DILocation(line: 186, column: 14, scope: !4883)
!4885 = !DILocation(line: 186, column: 12, scope: !4883)
!4886 = !DILocation(line: 186, column: 18, scope: !4883)
!4887 = !DILocation(line: 186, column: 21, scope: !4883)
!4888 = !DILocation(line: 186, column: 6, scope: !4797)
!4889 = !DILocation(line: 191, column: 27, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 186, column: 27)
!4891 = !DILocation(line: 191, column: 12, scope: !4890)
!4892 = !DILocation(line: 191, column: 10, scope: !4890)
!4893 = !DILocation(line: 192, column: 7, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 192, column: 7)
!4895 = !DILocation(line: 192, column: 14, scope: !4894)
!4896 = !DILocation(line: 192, column: 7, scope: !4890)
!4897 = !DILocation(line: 193, column: 11, scope: !4894)
!4898 = !DILocation(line: 193, column: 4, scope: !4894)
!4899 = !DILocation(line: 194, column: 11, scope: !4900)
!4900 = distinct !DILexicalBlock(scope: !4890, file: !3, line: 194, column: 7)
!4901 = !DILocation(line: 194, column: 7, scope: !4900)
!4902 = !DILocation(line: 194, column: 7, scope: !4890)
!4903 = !DILocation(line: 195, column: 8, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 195, column: 8)
!4905 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 194, column: 20)
!4906 = !DILocation(line: 195, column: 8, scope: !4905)
!4907 = !DILocation(line: 196, column: 34, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4904, file: !3, line: 195, column: 14)
!4909 = !DILocation(line: 196, column: 12, scope: !4908)
!4910 = !DILocation(line: 196, column: 10, scope: !4908)
!4911 = !DILocation(line: 197, column: 14, scope: !4908)
!4912 = !DILocation(line: 197, column: 11, scope: !4908)
!4913 = !DILocation(line: 198, column: 4, scope: !4908)
!4914 = !DILocation(line: 199, column: 5, scope: !4904)
!4915 = !DILocation(line: 200, column: 3, scope: !4905)
!4916 = !DILocation(line: 200, column: 14, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4900, file: !3, line: 200, column: 14)
!4918 = !DILocation(line: 200, column: 14, scope: !4900)
!4919 = !DILocation(line: 201, column: 4, scope: !4917)
!4920 = !DILocation(line: 202, column: 7, scope: !4890)
!4921 = !DILocation(line: 202, column: 15, scope: !4890)
!4922 = !DILocation(line: 203, column: 2, scope: !4890)
!4923 = !DILocation(line: 204, column: 7, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4883, file: !3, line: 203, column: 9)
!4925 = !DILocation(line: 204, column: 15, scope: !4924)
!4926 = !DILocation(line: 209, column: 11, scope: !4924)
!4927 = !DILocation(line: 209, column: 15, scope: !4924)
!4928 = !DILocation(line: 209, column: 9, scope: !4924)
!4929 = !DILocation(line: 211, column: 19, scope: !4797)
!4930 = !DILocation(line: 211, column: 31, scope: !4797)
!4931 = !DILocation(line: 211, column: 2, scope: !4797)
!4932 = !DILocation(line: 213, column: 25, scope: !4797)
!4933 = !DILocation(line: 213, column: 11, scope: !4797)
!4934 = !DILocation(line: 213, column: 9, scope: !4797)
!4935 = !DILocation(line: 214, column: 10, scope: !4797)
!4936 = !DILocation(line: 214, column: 17, scope: !4797)
!4937 = !DILocation(line: 214, column: 9, scope: !4797)
!4938 = !DILocation(line: 214, column: 24, scope: !4797)
!4939 = !DILocation(line: 214, column: 33, scope: !4797)
!4940 = !DILocation(line: 214, column: 2, scope: !4797)
!4941 = !DILocation(line: 215, column: 1, scope: !4797)
!4942 = !DISubprogram(name: "rtc_read_alarm", scope: !4285, file: !4285, line: 190, type: !4943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!85, !4283, !4321}
!4945 = !DISubprogram(name: "rtc_tm_to_time64", scope: !4285, file: !4285, line: 24, type: !4946, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4946 = !DISubroutineType(types: !4947)
!4947 = !{!1181, !4303}
!4948 = !DISubprogram(name: "sprintf", scope: !4949, file: !4949, line: 10, type: !4950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4949 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4950 = !DISubroutineType(types: !4951)
!4951 = !{!85, !221, !134, null}
!4952 = !DISubprogram(name: "rtc_read_time", scope: !4285, file: !4285, line: 187, type: !4953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!85, !4283, !4303}
!4955 = distinct !DISubprogram(name: "kstrtos64", scope: !4956, file: !4956, line: 79, type: !4957, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4960)
!4956 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!85, !134, !7, !4959}
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!4960 = !{!4961, !4962, !4963}
!4961 = !DILocalVariable(name: "s", arg: 1, scope: !4955, file: !4956, line: 79, type: !134)
!4962 = !DILocalVariable(name: "base", arg: 2, scope: !4955, file: !4956, line: 79, type: !7)
!4963 = !DILocalVariable(name: "res", arg: 3, scope: !4955, file: !4956, line: 79, type: !4959)
!4964 = !DILocation(line: 79, column: 54, scope: !4955)
!4965 = !DILocation(line: 79, column: 70, scope: !4955)
!4966 = !DILocation(line: 79, column: 81, scope: !4955)
!4967 = !DILocation(line: 81, column: 18, scope: !4955)
!4968 = !DILocation(line: 81, column: 21, scope: !4955)
!4969 = !DILocation(line: 81, column: 27, scope: !4955)
!4970 = !DILocation(line: 81, column: 9, scope: !4955)
!4971 = !DILocation(line: 81, column: 2, scope: !4955)
!4972 = !DISubprogram(name: "rtc_time64_to_tm", scope: !4285, file: !4285, line: 25, type: !4973, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4973 = !DISubroutineType(types: !4974)
!4974 = !{null, !1181, !4303}
!4975 = !DISubprogram(name: "rtc_set_alarm", scope: !4285, file: !4285, line: 192, type: !4943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4976 = !DISubprogram(name: "kstrtoll", scope: !4956, file: !4956, line: 13, type: !4977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!85, !134, !7, !4408}
!4979 = distinct !DISubprogram(name: "device_can_wakeup", scope: !4098, file: !4098, line: 77, type: !4980, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4982)
!4980 = !DISubroutineType(types: !4981)
!4981 = !{!642, !126}
!4982 = !{!4983}
!4983 = !DILocalVariable(name: "dev", arg: 1, scope: !4979, file: !4098, line: 77, type: !126)
!4984 = !DILocation(line: 77, column: 53, scope: !4979)
!4985 = !DILocation(line: 79, column: 9, scope: !4979)
!4986 = !DILocation(line: 79, column: 14, scope: !4979)
!4987 = !DILocation(line: 79, column: 20, scope: !4979)
!4988 = !DILocation(line: 79, column: 2, scope: !4979)
!4989 = distinct !DISubprogram(name: "const_test_bit", scope: !4990, file: !4990, line: 166, type: !4991, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4996)
!4990 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4991 = !DISubroutineType(types: !4992)
!4992 = !{!642, !271, !4993}
!4993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!4994 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4995)
!4995 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !271)
!4996 = !{!4997, !4998, !4999, !5000, !5001}
!4997 = !DILocalVariable(name: "nr", arg: 1, scope: !4989, file: !4990, line: 166, type: !271)
!4998 = !DILocalVariable(name: "addr", arg: 2, scope: !4989, file: !4990, line: 166, type: !4993)
!4999 = !DILocalVariable(name: "p", scope: !4989, file: !4990, line: 168, type: !4406)
!5000 = !DILocalVariable(name: "mask", scope: !4989, file: !4990, line: 169, type: !271)
!5001 = !DILocalVariable(name: "val", scope: !4989, file: !4990, line: 170, type: !271)
!5002 = !DILocation(line: 166, column: 30, scope: !4989)
!5003 = !DILocation(line: 166, column: 64, scope: !4989)
!5004 = !DILocation(line: 168, column: 2, scope: !4989)
!5005 = !DILocation(line: 168, column: 23, scope: !4989)
!5006 = !DILocation(line: 168, column: 50, scope: !4989)
!5007 = !DILocation(line: 168, column: 57, scope: !4989)
!5008 = !DILocation(line: 168, column: 55, scope: !4989)
!5009 = !DILocation(line: 169, column: 2, scope: !4989)
!5010 = !DILocation(line: 169, column: 16, scope: !4989)
!5011 = !DILocation(line: 169, column: 23, scope: !4989)
!5012 = !DILocation(line: 170, column: 2, scope: !4989)
!5013 = !DILocation(line: 170, column: 16, scope: !4989)
!5014 = !DILocation(line: 170, column: 23, scope: !4989)
!5015 = !DILocation(line: 170, column: 22, scope: !4989)
!5016 = !DILocation(line: 172, column: 12, scope: !4989)
!5017 = !DILocation(line: 172, column: 18, scope: !4989)
!5018 = !DILocation(line: 172, column: 16, scope: !4989)
!5019 = !DILocation(line: 172, column: 10, scope: !4989)
!5020 = !DILocation(line: 172, column: 9, scope: !4989)
!5021 = !DILocation(line: 173, column: 1, scope: !4989)
!5022 = !DILocation(line: 172, column: 2, scope: !4989)
!5023 = distinct !DISubprogram(name: "_test_bit", scope: !5024, file: !5024, line: 139, type: !4991, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5025)
!5024 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5025 = !{!5026, !5027}
!5026 = !DILocalVariable(name: "nr", arg: 1, scope: !5023, file: !5024, line: 139, type: !271)
!5027 = !DILocalVariable(name: "addr", arg: 2, scope: !5023, file: !5024, line: 139, type: !4993)
!5028 = !DILocation(line: 139, column: 25, scope: !5023)
!5029 = !DILocation(line: 139, column: 59, scope: !5023)
!5030 = !DILocation(line: 141, column: 25, scope: !5023)
!5031 = !DILocation(line: 141, column: 32, scope: !5023)
!5032 = !DILocation(line: 141, column: 30, scope: !5023)
!5033 = !DILocation(line: 141, column: 2, scope: !5023)
!5034 = !DILocation(line: 142, column: 23, scope: !5023)
!5035 = !DILocation(line: 142, column: 27, scope: !5023)
!5036 = !DILocation(line: 142, column: 9, scope: !5023)
!5037 = !DILocation(line: 142, column: 2, scope: !5023)
!5038 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5039, file: !5039, line: 66, type: !5040, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5045)
!5039 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !5042, !268}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5044)
!5044 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5045 = !{!5046, !5047}
!5046 = !DILocalVariable(name: "v", arg: 1, scope: !5038, file: !5039, line: 66, type: !5042)
!5047 = !DILocalVariable(name: "size", arg: 2, scope: !5038, file: !5039, line: 66, type: !268)
!5048 = !DILocation(line: 66, column: 73, scope: !5038)
!5049 = !DILocation(line: 66, column: 83, scope: !5038)
!5050 = !DILocation(line: 68, column: 19, scope: !5038)
!5051 = !DILocation(line: 68, column: 22, scope: !5038)
!5052 = !DILocation(line: 68, column: 2, scope: !5038)
!5053 = !DILocation(line: 69, column: 2, scope: !5038)
!5054 = !DILocation(line: 70, column: 1, scope: !5038)
!5055 = distinct !DISubprogram(name: "arch_test_bit", scope: !5056, file: !5056, line: 237, type: !4991, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5057)
!5056 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5057 = !{!5058, !5059}
!5058 = !DILocalVariable(name: "nr", arg: 1, scope: !5055, file: !5056, line: 237, type: !271)
!5059 = !DILocalVariable(name: "addr", arg: 2, scope: !5055, file: !5056, line: 237, type: !4993)
!5060 = !DILocation(line: 237, column: 29, scope: !5055)
!5061 = !DILocation(line: 237, column: 63, scope: !5055)
!5062 = !DILocation(line: 239, column: 30, scope: !5055)
!5063 = !DILocation(line: 239, column: 9, scope: !5055)
!5064 = !DILocation(line: 239, column: 54, scope: !5055)
!5065 = !DILocation(line: 239, column: 58, scope: !5055)
!5066 = !DILocation(line: 239, column: 36, scope: !5055)
!5067 = !DILocation(line: 240, column: 26, scope: !5055)
!5068 = !DILocation(line: 240, column: 30, scope: !5055)
!5069 = !DILocation(line: 240, column: 8, scope: !5055)
!5070 = !DILocation(line: 239, column: 2, scope: !5055)
!5071 = distinct !DISubprogram(name: "kasan_check_read", scope: !5072, file: !5072, line: 40, type: !5073, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5075)
!5072 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5073 = !DISubroutineType(types: !5074)
!5074 = !{!642, !5042, !7}
!5075 = !{!5076, !5077}
!5076 = !DILocalVariable(name: "p", arg: 1, scope: !5071, file: !5072, line: 40, type: !5042)
!5077 = !DILocalVariable(name: "size", arg: 2, scope: !5071, file: !5072, line: 40, type: !7)
!5078 = !DILocation(line: 40, column: 58, scope: !5071)
!5079 = !DILocation(line: 40, column: 74, scope: !5071)
!5080 = !DILocation(line: 42, column: 2, scope: !5071)
!5081 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5082, file: !5082, line: 229, type: !5083, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5085)
!5082 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5083 = !DISubroutineType(types: !5084)
!5084 = !{null, !5042, !268, !85}
!5085 = !{!5086, !5087, !5088}
!5086 = !DILocalVariable(name: "ptr", arg: 1, scope: !5081, file: !5082, line: 229, type: !5042)
!5087 = !DILocalVariable(name: "size", arg: 2, scope: !5081, file: !5082, line: 229, type: !268)
!5088 = !DILocalVariable(name: "type", arg: 3, scope: !5081, file: !5082, line: 230, type: !85)
!5089 = !DILocation(line: 229, column: 60, scope: !5081)
!5090 = !DILocation(line: 229, column: 72, scope: !5081)
!5091 = !DILocation(line: 230, column: 15, scope: !5081)
!5092 = !DILocation(line: 230, column: 23, scope: !5081)
!5093 = distinct !DISubprogram(name: "constant_test_bit", scope: !5056, file: !5056, line: 204, type: !5094, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5096)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!642, !257, !4993}
!5096 = !{!5097, !5098}
!5097 = !DILocalVariable(name: "nr", arg: 1, scope: !5093, file: !5056, line: 204, type: !257)
!5098 = !DILocalVariable(name: "addr", arg: 2, scope: !5093, file: !5056, line: 204, type: !4993)
!5099 = !DILocation(line: 204, column: 52, scope: !5093)
!5100 = !DILocation(line: 204, column: 86, scope: !5093)
!5101 = !DILocation(line: 206, column: 19, scope: !5093)
!5102 = !DILocation(line: 206, column: 22, scope: !5093)
!5103 = !DILocation(line: 206, column: 15, scope: !5093)
!5104 = !DILocation(line: 207, column: 4, scope: !5093)
!5105 = !DILocation(line: 207, column: 9, scope: !5093)
!5106 = !DILocation(line: 207, column: 12, scope: !5093)
!5107 = !DILocation(line: 206, column: 44, scope: !5093)
!5108 = !DILocation(line: 207, column: 37, scope: !5093)
!5109 = !DILocation(line: 206, column: 2, scope: !5093)
!5110 = distinct !DISubprogram(name: "variable_test_bit", scope: !5056, file: !5056, line: 224, type: !5094, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5111)
!5111 = !{!5112, !5113, !5114}
!5112 = !DILocalVariable(name: "nr", arg: 1, scope: !5110, file: !5056, line: 224, type: !257)
!5113 = !DILocalVariable(name: "addr", arg: 2, scope: !5110, file: !5056, line: 224, type: !4993)
!5114 = !DILocalVariable(name: "oldbit", scope: !5110, file: !5056, line: 226, type: !642)
!5115 = !DILocation(line: 224, column: 52, scope: !5110)
!5116 = !DILocation(line: 224, column: 86, scope: !5110)
!5117 = !DILocation(line: 226, column: 2, scope: !5110)
!5118 = !DILocation(line: 226, column: 7, scope: !5110)
!5119 = !DILocation(line: 231, column: 33, scope: !5110)
!5120 = !DILocation(line: 231, column: 46, scope: !5110)
!5121 = !DILocation(line: 228, column: 2, scope: !5110)
!5122 = !{i64 2148359129, i64 2148359203}
!5123 = !DILocation(line: 233, column: 9, scope: !5110)
!5124 = !{i8 0, i8 2}
!5125 = !DILocation(line: 234, column: 1, scope: !5110)
!5126 = !DILocation(line: 233, column: 2, scope: !5110)
!5127 = distinct !DISubprogram(name: "offset_show", scope: !3, file: !3, line: 219, type: !4429, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5128)
!5128 = !{!5129, !5130, !5131, !5132, !5133, !5134}
!5129 = !DILocalVariable(name: "dev", arg: 1, scope: !5127, file: !3, line: 219, type: !126)
!5130 = !DILocalVariable(name: "attr", arg: 2, scope: !5127, file: !3, line: 219, type: !4431)
!5131 = !DILocalVariable(name: "buf", arg: 3, scope: !5127, file: !3, line: 219, type: !221)
!5132 = !DILocalVariable(name: "retval", scope: !5127, file: !3, line: 221, type: !253)
!5133 = !DILocalVariable(name: "offset", scope: !5127, file: !3, line: 222, type: !257)
!5134 = !DILocalVariable(name: "__mptr", scope: !5135, file: !3, line: 224, type: !125)
!5135 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 224, column: 27)
!5136 = !DILocation(line: 219, column: 28, scope: !5127)
!5137 = !DILocation(line: 219, column: 58, scope: !5127)
!5138 = !DILocation(line: 219, column: 70, scope: !5127)
!5139 = !DILocation(line: 221, column: 2, scope: !5127)
!5140 = !DILocation(line: 221, column: 10, scope: !5127)
!5141 = !DILocation(line: 222, column: 2, scope: !5127)
!5142 = !DILocation(line: 222, column: 7, scope: !5127)
!5143 = !DILocation(line: 224, column: 27, scope: !5135)
!5144 = !DILocation(line: 224, column: 27, scope: !5127)
!5145 = !DILocation(line: 224, column: 11, scope: !5127)
!5146 = !DILocation(line: 224, column: 9, scope: !5127)
!5147 = !DILocation(line: 225, column: 6, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5127, file: !3, line: 225, column: 6)
!5149 = !DILocation(line: 225, column: 13, scope: !5148)
!5150 = !DILocation(line: 225, column: 6, scope: !5127)
!5151 = !DILocation(line: 226, column: 20, scope: !5148)
!5152 = !DILocation(line: 226, column: 34, scope: !5148)
!5153 = !DILocation(line: 226, column: 12, scope: !5148)
!5154 = !DILocation(line: 226, column: 10, scope: !5148)
!5155 = !DILocation(line: 226, column: 3, scope: !5148)
!5156 = !DILocation(line: 228, column: 9, scope: !5127)
!5157 = !DILocation(line: 229, column: 1, scope: !5127)
!5158 = !DILocation(line: 228, column: 2, scope: !5127)
!5159 = distinct !DISubprogram(name: "offset_store", scope: !3, file: !3, line: 232, type: !4434, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5160)
!5160 = !{!5161, !5162, !5163, !5164, !5165, !5166, !5167}
!5161 = !DILocalVariable(name: "dev", arg: 1, scope: !5159, file: !3, line: 232, type: !126)
!5162 = !DILocalVariable(name: "attr", arg: 2, scope: !5159, file: !3, line: 232, type: !4431)
!5163 = !DILocalVariable(name: "buf", arg: 3, scope: !5159, file: !3, line: 233, type: !134)
!5164 = !DILocalVariable(name: "n", arg: 4, scope: !5159, file: !3, line: 233, type: !268)
!5165 = !DILocalVariable(name: "retval", scope: !5159, file: !3, line: 235, type: !253)
!5166 = !DILocalVariable(name: "offset", scope: !5159, file: !3, line: 236, type: !257)
!5167 = !DILocalVariable(name: "__mptr", scope: !5168, file: !3, line: 240, type: !125)
!5168 = distinct !DILexicalBlock(scope: !5169, file: !3, line: 240, column: 27)
!5169 = distinct !DILexicalBlock(scope: !5159, file: !3, line: 239, column: 6)
!5170 = !DILocation(line: 232, column: 29, scope: !5159)
!5171 = !DILocation(line: 232, column: 59, scope: !5159)
!5172 = !DILocation(line: 233, column: 19, scope: !5159)
!5173 = !DILocation(line: 233, column: 31, scope: !5159)
!5174 = !DILocation(line: 235, column: 2, scope: !5159)
!5175 = !DILocation(line: 235, column: 10, scope: !5159)
!5176 = !DILocation(line: 236, column: 2, scope: !5159)
!5177 = !DILocation(line: 236, column: 7, scope: !5159)
!5178 = !DILocation(line: 238, column: 19, scope: !5159)
!5179 = !DILocation(line: 238, column: 11, scope: !5159)
!5180 = !DILocation(line: 238, column: 9, scope: !5159)
!5181 = !DILocation(line: 239, column: 6, scope: !5169)
!5182 = !DILocation(line: 239, column: 13, scope: !5169)
!5183 = !DILocation(line: 239, column: 6, scope: !5159)
!5184 = !DILocation(line: 240, column: 27, scope: !5168)
!5185 = !DILocation(line: 240, column: 27, scope: !5169)
!5186 = !DILocation(line: 240, column: 47, scope: !5169)
!5187 = !DILocation(line: 240, column: 12, scope: !5169)
!5188 = !DILocation(line: 240, column: 10, scope: !5169)
!5189 = !DILocation(line: 240, column: 3, scope: !5169)
!5190 = !DILocation(line: 242, column: 10, scope: !5159)
!5191 = !DILocation(line: 242, column: 17, scope: !5159)
!5192 = !DILocation(line: 242, column: 9, scope: !5159)
!5193 = !DILocation(line: 242, column: 24, scope: !5159)
!5194 = !DILocation(line: 242, column: 33, scope: !5159)
!5195 = !DILocation(line: 243, column: 1, scope: !5159)
!5196 = !DILocation(line: 242, column: 2, scope: !5159)
!5197 = !DISubprogram(name: "rtc_read_offset", scope: !4285, file: !4285, line: 219, type: !5198, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!85, !4283, !4340}
!5200 = distinct !DISubprogram(name: "kstrtol", scope: !4956, file: !4956, line: 58, type: !5201, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5203)
!5201 = !DISubroutineType(types: !5202)
!5202 = !{!85, !134, !7, !4340}
!5203 = !{!5204, !5205, !5206}
!5204 = !DILocalVariable(name: "s", arg: 1, scope: !5200, file: !4956, line: 58, type: !134)
!5205 = !DILocalVariable(name: "base", arg: 2, scope: !5200, file: !4956, line: 58, type: !7)
!5206 = !DILocalVariable(name: "res", arg: 3, scope: !5200, file: !4956, line: 58, type: !4340)
!5207 = !DILocation(line: 58, column: 52, scope: !5200)
!5208 = !DILocation(line: 58, column: 68, scope: !5200)
!5209 = !DILocation(line: 58, column: 80, scope: !5200)
!5210 = !DILocation(line: 66, column: 19, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5200, file: !4956, line: 64, column: 6)
!5212 = !DILocation(line: 66, column: 22, scope: !5211)
!5213 = !DILocation(line: 66, column: 41, scope: !5211)
!5214 = !DILocation(line: 66, column: 10, scope: !5211)
!5215 = !DILocation(line: 66, column: 3, scope: !5211)
!5216 = !DISubprogram(name: "rtc_set_offset", scope: !4285, file: !4285, line: 220, type: !5217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5217 = !DISubroutineType(types: !5218)
!5218 = !{!85, !4283, !257}
!5219 = distinct !DISubprogram(name: "range_show", scope: !3, file: !3, line: 247, type: !4429, scopeLine: 248, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5220)
!5220 = !{!5221, !5222, !5223, !5224, !5226}
!5221 = !DILocalVariable(name: "dev", arg: 1, scope: !5219, file: !3, line: 247, type: !126)
!5222 = !DILocalVariable(name: "attr", arg: 2, scope: !5219, file: !3, line: 247, type: !4431)
!5223 = !DILocalVariable(name: "buf", arg: 3, scope: !5219, file: !3, line: 247, type: !221)
!5224 = !DILocalVariable(name: "__mptr", scope: !5225, file: !3, line: 249, type: !125)
!5225 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 249, column: 39)
!5226 = !DILocalVariable(name: "__mptr", scope: !5227, file: !3, line: 250, type: !125)
!5227 = distinct !DILexicalBlock(scope: !5219, file: !3, line: 250, column: 10)
!5228 = !DILocation(line: 247, column: 27, scope: !5219)
!5229 = !DILocation(line: 247, column: 57, scope: !5219)
!5230 = !DILocation(line: 247, column: 69, scope: !5219)
!5231 = !DILocation(line: 249, column: 17, scope: !5219)
!5232 = !DILocation(line: 249, column: 39, scope: !5225)
!5233 = !DILocation(line: 249, column: 39, scope: !5219)
!5234 = !DILocation(line: 249, column: 59, scope: !5219)
!5235 = !DILocation(line: 250, column: 10, scope: !5227)
!5236 = !DILocation(line: 250, column: 10, scope: !5219)
!5237 = !DILocation(line: 250, column: 30, scope: !5219)
!5238 = !DILocation(line: 249, column: 9, scope: !5219)
!5239 = !DILocation(line: 249, column: 2, scope: !5219)
!5240 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 25, type: !4429, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5241 = !{!5242, !5243, !5244}
!5242 = !DILocalVariable(name: "dev", arg: 1, scope: !5240, file: !3, line: 25, type: !126)
!5243 = !DILocalVariable(name: "attr", arg: 2, scope: !5240, file: !3, line: 25, type: !4431)
!5244 = !DILocalVariable(name: "buf", arg: 3, scope: !5240, file: !3, line: 25, type: !221)
!5245 = !DILocation(line: 25, column: 26, scope: !5240)
!5246 = !DILocation(line: 25, column: 56, scope: !5240)
!5247 = !DILocation(line: 25, column: 68, scope: !5240)
!5248 = !DILocation(line: 27, column: 17, scope: !5240)
!5249 = !DILocation(line: 27, column: 51, scope: !5240)
!5250 = !DILocation(line: 27, column: 56, scope: !5240)
!5251 = !DILocation(line: 27, column: 33, scope: !5240)
!5252 = !DILocation(line: 28, column: 19, scope: !5240)
!5253 = !DILocation(line: 28, column: 24, scope: !5240)
!5254 = !DILocation(line: 28, column: 10, scope: !5240)
!5255 = !DILocation(line: 27, column: 9, scope: !5240)
!5256 = !DILocation(line: 27, column: 2, scope: !5240)
!5257 = !DISubprogram(name: "dev_driver_string", scope: !70, file: !70, line: 1247, type: !5258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!134, !3954}
!5260 = distinct !DISubprogram(name: "dev_name", scope: !70, file: !70, line: 858, type: !5258, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5261)
!5261 = !{!5262}
!5262 = !DILocalVariable(name: "dev", arg: 1, scope: !5260, file: !70, line: 858, type: !3954)
!5263 = !DILocation(line: 858, column: 57, scope: !5260)
!5264 = !DILocation(line: 861, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5260, file: !70, line: 861, column: 6)
!5266 = !DILocation(line: 861, column: 11, scope: !5265)
!5267 = !DILocation(line: 861, column: 6, scope: !5260)
!5268 = !DILocation(line: 862, column: 10, scope: !5265)
!5269 = !DILocation(line: 862, column: 15, scope: !5265)
!5270 = !DILocation(line: 862, column: 3, scope: !5265)
!5271 = !DILocation(line: 864, column: 23, scope: !5260)
!5272 = !DILocation(line: 864, column: 28, scope: !5260)
!5273 = !DILocation(line: 864, column: 9, scope: !5260)
!5274 = !DILocation(line: 864, column: 2, scope: !5260)
!5275 = !DILocation(line: 865, column: 1, scope: !5260)
!5276 = distinct !DISubprogram(name: "kobject_name", scope: !131, file: !131, line: 87, type: !209, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5277)
!5277 = !{!5278}
!5278 = !DILocalVariable(name: "kobj", arg: 1, scope: !5276, file: !131, line: 87, type: !204)
!5279 = !DILocation(line: 87, column: 62, scope: !5276)
!5280 = !DILocation(line: 89, column: 9, scope: !5276)
!5281 = !DILocation(line: 89, column: 15, scope: !5276)
!5282 = !DILocation(line: 89, column: 2, scope: !5276)
!5283 = distinct !DISubprogram(name: "date_show", scope: !3, file: !3, line: 33, type: !4429, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5284)
!5284 = !{!5285, !5286, !5287, !5288, !5289, !5290}
!5285 = !DILocalVariable(name: "dev", arg: 1, scope: !5283, file: !3, line: 33, type: !126)
!5286 = !DILocalVariable(name: "attr", arg: 2, scope: !5283, file: !3, line: 33, type: !4431)
!5287 = !DILocalVariable(name: "buf", arg: 3, scope: !5283, file: !3, line: 33, type: !221)
!5288 = !DILocalVariable(name: "retval", scope: !5283, file: !3, line: 35, type: !253)
!5289 = !DILocalVariable(name: "tm", scope: !5283, file: !3, line: 36, type: !4304)
!5290 = !DILocalVariable(name: "__mptr", scope: !5291, file: !3, line: 38, type: !125)
!5291 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 38, column: 25)
!5292 = !DILocation(line: 33, column: 26, scope: !5283)
!5293 = !DILocation(line: 33, column: 56, scope: !5283)
!5294 = !DILocation(line: 33, column: 68, scope: !5283)
!5295 = !DILocation(line: 35, column: 2, scope: !5283)
!5296 = !DILocation(line: 35, column: 10, scope: !5283)
!5297 = !DILocation(line: 36, column: 2, scope: !5283)
!5298 = !DILocation(line: 36, column: 18, scope: !5283)
!5299 = !DILocation(line: 38, column: 25, scope: !5291)
!5300 = !DILocation(line: 38, column: 25, scope: !5283)
!5301 = !DILocation(line: 38, column: 11, scope: !5283)
!5302 = !DILocation(line: 38, column: 9, scope: !5283)
!5303 = !DILocation(line: 39, column: 6, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5283, file: !3, line: 39, column: 6)
!5305 = !DILocation(line: 39, column: 6, scope: !5283)
!5306 = !DILocation(line: 40, column: 10, scope: !5304)
!5307 = !DILocation(line: 40, column: 3, scope: !5304)
!5308 = !DILocation(line: 42, column: 17, scope: !5283)
!5309 = !DILocation(line: 42, column: 9, scope: !5283)
!5310 = !DILocation(line: 42, column: 2, scope: !5283)
!5311 = !DILocation(line: 43, column: 1, scope: !5283)
!5312 = distinct !DISubprogram(name: "time_show", scope: !3, file: !3, line: 47, type: !4429, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5313)
!5313 = !{!5314, !5315, !5316, !5317, !5318, !5319}
!5314 = !DILocalVariable(name: "dev", arg: 1, scope: !5312, file: !3, line: 47, type: !126)
!5315 = !DILocalVariable(name: "attr", arg: 2, scope: !5312, file: !3, line: 47, type: !4431)
!5316 = !DILocalVariable(name: "buf", arg: 3, scope: !5312, file: !3, line: 47, type: !221)
!5317 = !DILocalVariable(name: "retval", scope: !5312, file: !3, line: 49, type: !253)
!5318 = !DILocalVariable(name: "tm", scope: !5312, file: !3, line: 50, type: !4304)
!5319 = !DILocalVariable(name: "__mptr", scope: !5320, file: !3, line: 52, type: !125)
!5320 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 52, column: 25)
!5321 = !DILocation(line: 47, column: 26, scope: !5312)
!5322 = !DILocation(line: 47, column: 56, scope: !5312)
!5323 = !DILocation(line: 47, column: 68, scope: !5312)
!5324 = !DILocation(line: 49, column: 2, scope: !5312)
!5325 = !DILocation(line: 49, column: 10, scope: !5312)
!5326 = !DILocation(line: 50, column: 2, scope: !5312)
!5327 = !DILocation(line: 50, column: 18, scope: !5312)
!5328 = !DILocation(line: 52, column: 25, scope: !5320)
!5329 = !DILocation(line: 52, column: 25, scope: !5312)
!5330 = !DILocation(line: 52, column: 11, scope: !5312)
!5331 = !DILocation(line: 52, column: 9, scope: !5312)
!5332 = !DILocation(line: 53, column: 6, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5312, file: !3, line: 53, column: 6)
!5334 = !DILocation(line: 53, column: 6, scope: !5312)
!5335 = !DILocation(line: 54, column: 10, scope: !5333)
!5336 = !DILocation(line: 54, column: 3, scope: !5333)
!5337 = !DILocation(line: 56, column: 17, scope: !5312)
!5338 = !DILocation(line: 56, column: 9, scope: !5312)
!5339 = !DILocation(line: 56, column: 2, scope: !5312)
!5340 = !DILocation(line: 57, column: 1, scope: !5312)
!5341 = distinct !DISubprogram(name: "since_epoch_show", scope: !3, file: !3, line: 61, type: !4429, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5342)
!5342 = !{!5343, !5344, !5345, !5346, !5347, !5348, !5350}
!5343 = !DILocalVariable(name: "dev", arg: 1, scope: !5341, file: !3, line: 61, type: !126)
!5344 = !DILocalVariable(name: "attr", arg: 2, scope: !5341, file: !3, line: 61, type: !4431)
!5345 = !DILocalVariable(name: "buf", arg: 3, scope: !5341, file: !3, line: 61, type: !221)
!5346 = !DILocalVariable(name: "retval", scope: !5341, file: !3, line: 63, type: !253)
!5347 = !DILocalVariable(name: "tm", scope: !5341, file: !3, line: 64, type: !4304)
!5348 = !DILocalVariable(name: "__mptr", scope: !5349, file: !3, line: 66, type: !125)
!5349 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 66, column: 25)
!5350 = !DILocalVariable(name: "time", scope: !5351, file: !3, line: 68, type: !1181)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 67, column: 19)
!5352 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 67, column: 6)
!5353 = !DILocation(line: 61, column: 33, scope: !5341)
!5354 = !DILocation(line: 61, column: 63, scope: !5341)
!5355 = !DILocation(line: 61, column: 75, scope: !5341)
!5356 = !DILocation(line: 63, column: 2, scope: !5341)
!5357 = !DILocation(line: 63, column: 10, scope: !5341)
!5358 = !DILocation(line: 64, column: 2, scope: !5341)
!5359 = !DILocation(line: 64, column: 18, scope: !5341)
!5360 = !DILocation(line: 66, column: 25, scope: !5349)
!5361 = !DILocation(line: 66, column: 25, scope: !5341)
!5362 = !DILocation(line: 66, column: 11, scope: !5341)
!5363 = !DILocation(line: 66, column: 9, scope: !5341)
!5364 = !DILocation(line: 67, column: 6, scope: !5352)
!5365 = !DILocation(line: 67, column: 13, scope: !5352)
!5366 = !DILocation(line: 67, column: 6, scope: !5341)
!5367 = !DILocation(line: 68, column: 3, scope: !5351)
!5368 = !DILocation(line: 68, column: 12, scope: !5351)
!5369 = !DILocation(line: 70, column: 10, scope: !5351)
!5370 = !DILocation(line: 70, column: 8, scope: !5351)
!5371 = !DILocation(line: 71, column: 20, scope: !5351)
!5372 = !DILocation(line: 71, column: 35, scope: !5351)
!5373 = !DILocation(line: 71, column: 12, scope: !5351)
!5374 = !DILocation(line: 71, column: 10, scope: !5351)
!5375 = !DILocation(line: 72, column: 2, scope: !5352)
!5376 = !DILocation(line: 72, column: 2, scope: !5351)
!5377 = !DILocation(line: 74, column: 9, scope: !5341)
!5378 = !DILocation(line: 75, column: 1, scope: !5341)
!5379 = !DILocation(line: 74, column: 2, scope: !5341)
!5380 = distinct !DISubprogram(name: "max_user_freq_show", scope: !3, file: !3, line: 79, type: !4429, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5381)
!5381 = !{!5382, !5383, !5384, !5385}
!5382 = !DILocalVariable(name: "dev", arg: 1, scope: !5380, file: !3, line: 79, type: !126)
!5383 = !DILocalVariable(name: "attr", arg: 2, scope: !5380, file: !3, line: 79, type: !4431)
!5384 = !DILocalVariable(name: "buf", arg: 3, scope: !5380, file: !3, line: 79, type: !221)
!5385 = !DILocalVariable(name: "__mptr", scope: !5386, file: !3, line: 81, type: !125)
!5386 = distinct !DILexicalBlock(scope: !5380, file: !3, line: 81, column: 30)
!5387 = !DILocation(line: 79, column: 35, scope: !5380)
!5388 = !DILocation(line: 79, column: 65, scope: !5380)
!5389 = !DILocation(line: 79, column: 77, scope: !5380)
!5390 = !DILocation(line: 81, column: 17, scope: !5380)
!5391 = !DILocation(line: 81, column: 30, scope: !5386)
!5392 = !DILocation(line: 81, column: 30, scope: !5380)
!5393 = !DILocation(line: 81, column: 50, scope: !5380)
!5394 = !DILocation(line: 81, column: 9, scope: !5380)
!5395 = !DILocation(line: 81, column: 2, scope: !5380)
!5396 = distinct !DISubprogram(name: "max_user_freq_store", scope: !3, file: !3, line: 85, type: !4434, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5397)
!5397 = !{!5398, !5399, !5400, !5401, !5402, !5403, !5405, !5406}
!5398 = !DILocalVariable(name: "dev", arg: 1, scope: !5396, file: !3, line: 85, type: !126)
!5399 = !DILocalVariable(name: "attr", arg: 2, scope: !5396, file: !3, line: 85, type: !4431)
!5400 = !DILocalVariable(name: "buf", arg: 3, scope: !5396, file: !3, line: 86, type: !134)
!5401 = !DILocalVariable(name: "n", arg: 4, scope: !5396, file: !3, line: 86, type: !268)
!5402 = !DILocalVariable(name: "rtc", scope: !5396, file: !3, line: 88, type: !4283)
!5403 = !DILocalVariable(name: "__mptr", scope: !5404, file: !3, line: 88, type: !125)
!5404 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 88, column: 27)
!5405 = !DILocalVariable(name: "val", scope: !5396, file: !3, line: 89, type: !271)
!5406 = !DILocalVariable(name: "err", scope: !5396, file: !3, line: 90, type: !85)
!5407 = !DILocation(line: 85, column: 36, scope: !5396)
!5408 = !DILocation(line: 85, column: 66, scope: !5396)
!5409 = !DILocation(line: 86, column: 19, scope: !5396)
!5410 = !DILocation(line: 86, column: 31, scope: !5396)
!5411 = !DILocation(line: 88, column: 2, scope: !5396)
!5412 = !DILocation(line: 88, column: 21, scope: !5396)
!5413 = !DILocation(line: 88, column: 27, scope: !5404)
!5414 = !DILocation(line: 88, column: 27, scope: !5396)
!5415 = !DILocation(line: 89, column: 2, scope: !5396)
!5416 = !DILocation(line: 89, column: 16, scope: !5396)
!5417 = !DILocation(line: 90, column: 2, scope: !5396)
!5418 = !DILocation(line: 90, column: 6, scope: !5396)
!5419 = !DILocation(line: 92, column: 17, scope: !5396)
!5420 = !DILocation(line: 92, column: 8, scope: !5396)
!5421 = !DILocation(line: 92, column: 6, scope: !5396)
!5422 = !DILocation(line: 93, column: 6, scope: !5423)
!5423 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 93, column: 6)
!5424 = !DILocation(line: 93, column: 6, scope: !5396)
!5425 = !DILocation(line: 94, column: 10, scope: !5423)
!5426 = !DILocation(line: 94, column: 3, scope: !5423)
!5427 = !DILocation(line: 96, column: 6, scope: !5428)
!5428 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 96, column: 6)
!5429 = !DILocation(line: 96, column: 10, scope: !5428)
!5430 = !DILocation(line: 96, column: 18, scope: !5428)
!5431 = !DILocation(line: 96, column: 21, scope: !5428)
!5432 = !DILocation(line: 96, column: 25, scope: !5428)
!5433 = !DILocation(line: 96, column: 6, scope: !5396)
!5434 = !DILocation(line: 97, column: 3, scope: !5428)
!5435 = !DILocation(line: 99, column: 28, scope: !5396)
!5436 = !DILocation(line: 99, column: 23, scope: !5396)
!5437 = !DILocation(line: 99, column: 2, scope: !5396)
!5438 = !DILocation(line: 99, column: 7, scope: !5396)
!5439 = !DILocation(line: 99, column: 21, scope: !5396)
!5440 = !DILocation(line: 101, column: 9, scope: !5396)
!5441 = !DILocation(line: 101, column: 2, scope: !5396)
!5442 = !DILocation(line: 102, column: 1, scope: !5396)
!5443 = distinct !DISubprogram(name: "kstrtoul", scope: !4956, file: !4956, line: 30, type: !5444, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5446)
!5444 = !DISubroutineType(types: !5445)
!5445 = !{!85, !134, !7, !913}
!5446 = !{!5447, !5448, !5449}
!5447 = !DILocalVariable(name: "s", arg: 1, scope: !5443, file: !4956, line: 30, type: !134)
!5448 = !DILocalVariable(name: "base", arg: 2, scope: !5443, file: !4956, line: 30, type: !7)
!5449 = !DILocalVariable(name: "res", arg: 3, scope: !5443, file: !4956, line: 30, type: !913)
!5450 = !DILocation(line: 30, column: 53, scope: !5443)
!5451 = !DILocation(line: 30, column: 69, scope: !5443)
!5452 = !DILocation(line: 30, column: 90, scope: !5443)
!5453 = !DILocation(line: 38, column: 20, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5443, file: !4956, line: 36, column: 6)
!5455 = !DILocation(line: 38, column: 23, scope: !5454)
!5456 = !DILocation(line: 38, column: 51, scope: !5454)
!5457 = !DILocation(line: 38, column: 10, scope: !5454)
!5458 = !DILocation(line: 38, column: 3, scope: !5454)
!5459 = !DISubprogram(name: "kstrtoull", scope: !4956, file: !4956, line: 12, type: !5460, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5460 = !DISubroutineType(types: !5461)
!5461 = !{!85, !134, !7, !4409}
!5462 = distinct !DISubprogram(name: "hctosys_show", scope: !3, file: !3, line: 115, type: !4429, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5463)
!5463 = !{!5464, !5465, !5466}
!5464 = !DILocalVariable(name: "dev", arg: 1, scope: !5462, file: !3, line: 115, type: !126)
!5465 = !DILocalVariable(name: "attr", arg: 2, scope: !5462, file: !3, line: 115, type: !4431)
!5466 = !DILocalVariable(name: "buf", arg: 3, scope: !5462, file: !3, line: 115, type: !221)
!5467 = !DILocation(line: 115, column: 29, scope: !5462)
!5468 = !DILocation(line: 115, column: 59, scope: !5462)
!5469 = !DILocation(line: 115, column: 71, scope: !5462)
!5470 = !DILocation(line: 123, column: 17, scope: !5462)
!5471 = !DILocation(line: 123, column: 9, scope: !5462)
!5472 = !DILocation(line: 123, column: 2, scope: !5462)
!5473 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !70, file: !70, line: 316, type: !4628, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5474)
!5474 = !{!5475, !5476, !5477, !5478, !5479}
!5475 = !DILocalVariable(name: "dev", arg: 1, scope: !5473, file: !70, line: 316, type: !126)
!5476 = !DILocalVariable(name: "n", arg: 2, scope: !5473, file: !70, line: 317, type: !268)
!5477 = !DILocalVariable(name: "size", arg: 3, scope: !5473, file: !70, line: 317, type: !268)
!5478 = !DILocalVariable(name: "flags", arg: 4, scope: !5473, file: !70, line: 317, type: !123)
!5479 = !DILocalVariable(name: "bytes", scope: !5473, file: !70, line: 319, type: !268)
!5480 = !DILocation(line: 316, column: 55, scope: !5473)
!5481 = !DILocation(line: 317, column: 19, scope: !5473)
!5482 = !DILocation(line: 317, column: 29, scope: !5473)
!5483 = !DILocation(line: 317, column: 41, scope: !5473)
!5484 = !DILocation(line: 319, column: 2, scope: !5473)
!5485 = !DILocation(line: 319, column: 9, scope: !5473)
!5486 = !DILocation(line: 321, column: 6, scope: !5487)
!5487 = distinct !DILexicalBlock(scope: !5473, file: !70, line: 321, column: 6)
!5488 = !DILocation(line: 321, column: 6, scope: !5473)
!5489 = !DILocation(line: 322, column: 3, scope: !5487)
!5490 = !DILocation(line: 324, column: 22, scope: !5473)
!5491 = !DILocation(line: 324, column: 27, scope: !5473)
!5492 = !DILocation(line: 324, column: 34, scope: !5473)
!5493 = !DILocation(line: 324, column: 9, scope: !5473)
!5494 = !DILocation(line: 324, column: 2, scope: !5473)
!5495 = !DILocation(line: 325, column: 1, scope: !5473)
!5496 = distinct !DISubprogram(name: "__must_check_overflow", scope: !5497, file: !5497, line: 51, type: !5498, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5500)
!5497 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!5498 = !DISubroutineType(types: !5499)
!5499 = !{!642, !642}
!5500 = !{!5501}
!5501 = !DILocalVariable(name: "overflow", arg: 1, scope: !5496, file: !5497, line: 51, type: !642)
!5502 = !DILocation(line: 51, column: 60, scope: !5496)
!5503 = !DILocation(line: 53, column: 9, scope: !5496)
!5504 = !DILocation(line: 53, column: 2, scope: !5496)
!5505 = !DISubprogram(name: "devm_kmalloc", scope: !70, file: !70, line: 305, type: !5506, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5506 = !DISubroutineType(types: !5507)
!5507 = !{!125, !126, !268, !123}
