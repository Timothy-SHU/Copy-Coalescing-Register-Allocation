; ModuleID = 'drivers/rtc/class.c'
source_filename = "drivers/rtc/class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_rtc_allocate_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_rtc_allocate_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___devm_rtc_register_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __devm_rtc_register_device ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_rtc_device_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_rtc_device_register ; .previous"
module asm ".section\09\22.initcall4.init..kmod_rtc_core__270_487_rtc_init\22, \22a\22\09\09"
module asm "__initcall__kmod_rtc_core__270_487_rtc_init4:\09\09\09"
module asm ".long\09__initstub__kmod_rtc_core__270_487_rtc_init4 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type {}
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i64, i64, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i64, [1 x i64], i64, i64, i64, i64, i64, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rtc_ida = internal global %struct.ida { %struct.xarray { %struct.spinlock zeroinitializer, i32 67108869, ptr null } }, align 8, !dbg !0
@.str = private unnamed_addr constant [24 x i8] c"devm_rtc_release_device\00", align 1, !dbg !4609
@.str.1 = private unnamed_addr constant [6 x i8] c"rtc%d\00", align 1, !dbg !4614
@__UNIQUE_ID___addressable_devm_rtc_allocate_device267 = internal global ptr @devm_rtc_allocate_device, section ".discard.addressable", align 8, !dbg !4616
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to add char device %d:%d\0A\00", align 1, !dbg !4618
@.str.3 = private unnamed_addr constant [18 x i8] c"registered as %s\0A\00", align 1, !dbg !4623
@.str.4 = private unnamed_addr constant [27 x i8] c"devm_rtc_unregister_device\00", align 1, !dbg !4628
@__UNIQUE_ID___addressable___devm_rtc_register_device268 = internal global ptr @__devm_rtc_register_device, section ".discard.addressable", align 8, !dbg !4633
@__UNIQUE_ID___addressable_devm_rtc_device_register269 = internal global ptr @devm_rtc_device_register, section ".discard.addressable", align 8, !dbg !4635
@__UNIQUE_ID___addressable___initstub__kmod_rtc_core__270_487_rtc_init4271 = internal global ptr @__initstub__kmod_rtc_core__270_487_rtc_init4, section ".discard.addressable", align 8, !dbg !4637
@rtc_class = hidden global ptr null, align 8, !dbg !4639
@.str.5 = private unnamed_addr constant [4 x i8] c"rtc\00", align 1, !dbg !4642
@.str.6 = private unnamed_addr constant [30 x i8] c"/aliases ID %d not available\0A\00", align 1, !dbg !4645
@rtc_allocate_device.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4650
@.str.7 = private unnamed_addr constant [15 x i8] c"&rtc->ops_lock\00", align 1, !dbg !4657
@rtc_allocate_device.__key.8 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4662
@.str.9 = private unnamed_addr constant [16 x i8] c"&rtc->irq_queue\00", align 1, !dbg !4664
@rtc_allocate_device.__key.10 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !4666
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4668
@.str.12 = private unnamed_addr constant [11 x i8] c"start-year\00", align 1, !dbg !4673
@.str.13 = private unnamed_addr constant [35 x i8] c"\013rtc_core: couldn't create class\0A\00", align 1, !dbg !4678
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_devm_rtc_allocate_device267, ptr @__UNIQUE_ID___addressable___devm_rtc_register_device268, ptr @__UNIQUE_ID___addressable_devm_rtc_device_register269, ptr @__UNIQUE_ID___addressable___initstub__kmod_rtc_core__270_487_rtc_init4271], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_rtc_allocate_device(ptr noundef %dev) #0 align 16 !dbg !4696 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %id = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4700, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #17, !dbg !4705
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4701, metadata !DIExpression()), !dbg !4706
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #17, !dbg !4707
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4702, metadata !DIExpression()), !dbg !4708
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !4707
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4703, metadata !DIExpression()), !dbg !4709
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4710
  %call = call i32 @rtc_device_get_id(ptr noundef %0) #18, !dbg !4711
  store i32 %call, ptr %id, align 4, !dbg !4712
  %1 = load i32, ptr %id, align 4, !dbg !4713
  %cmp = icmp slt i32 %1, 0, !dbg !4715
  br i1 %cmp, label %if.then, label %if.end, !dbg !4716

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %id, align 4, !dbg !4717
  %conv = sext i32 %2 to i64, !dbg !4717
  %call1 = call ptr @ERR_PTR(i64 noundef %conv) #18, !dbg !4718
  store ptr %call1, ptr %retval, align 8, !dbg !4719
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4719

if.end:                                           ; preds = %entry
  %call2 = call ptr @rtc_allocate_device() #18, !dbg !4720
  store ptr %call2, ptr %rtc, align 8, !dbg !4721
  %3 = load ptr, ptr %rtc, align 8, !dbg !4722
  %tobool = icmp ne ptr %3, null, !dbg !4722
  br i1 %tobool, label %if.end5, label %if.then3, !dbg !4724

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr %id, align 4, !dbg !4725
  call void @ida_free(ptr noundef @rtc_ida, i32 noundef %4) #18, !dbg !4727
  %call4 = call ptr @ERR_PTR(i64 noundef -12) #18, !dbg !4728
  store ptr %call4, ptr %retval, align 8, !dbg !4729
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4729

if.end5:                                          ; preds = %if.end
  %5 = load i32, ptr %id, align 4, !dbg !4730
  %6 = load ptr, ptr %rtc, align 8, !dbg !4731
  %id6 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 2, !dbg !4732
  store i32 %5, ptr %id6, align 8, !dbg !4733
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !4734
  %8 = load ptr, ptr %rtc, align 8, !dbg !4735
  %dev7 = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 0, !dbg !4736
  %parent = getelementptr inbounds %struct.device, ptr %dev7, i32 0, i32 1, !dbg !4737
  store ptr %7, ptr %parent, align 8, !dbg !4738
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !4739
  %10 = load ptr, ptr %rtc, align 8, !dbg !4739
  %call8 = call i32 @__devm_add_action_or_reset(ptr noundef %9, ptr noundef @devm_rtc_release_device, ptr noundef %10, ptr noundef @.str) #18, !dbg !4739
  store i32 %call8, ptr %err, align 4, !dbg !4740
  %11 = load i32, ptr %err, align 4, !dbg !4741
  %tobool9 = icmp ne i32 %11, 0, !dbg !4741
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !4743

if.then10:                                        ; preds = %if.end5
  %12 = load i32, ptr %err, align 4, !dbg !4744
  %conv11 = sext i32 %12 to i64, !dbg !4744
  %call12 = call ptr @ERR_PTR(i64 noundef %conv11) #18, !dbg !4745
  store ptr %call12, ptr %retval, align 8, !dbg !4746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4746

if.end13:                                         ; preds = %if.end5
  %13 = load ptr, ptr %rtc, align 8, !dbg !4747
  %dev14 = getelementptr inbounds %struct.rtc_device, ptr %13, i32 0, i32 0, !dbg !4748
  %14 = load i32, ptr %id, align 4, !dbg !4749
  %call15 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev14, ptr noundef @.str.1, i32 noundef %14) #18, !dbg !4750
  store i32 %call15, ptr %err, align 4, !dbg !4751
  %15 = load i32, ptr %err, align 4, !dbg !4752
  %tobool16 = icmp ne i32 %15, 0, !dbg !4752
  br i1 %tobool16, label %if.then17, label %if.end20, !dbg !4754

if.then17:                                        ; preds = %if.end13
  %16 = load i32, ptr %err, align 4, !dbg !4755
  %conv18 = sext i32 %16 to i64, !dbg !4755
  %call19 = call ptr @ERR_PTR(i64 noundef %conv18) #18, !dbg !4756
  store ptr %call19, ptr %retval, align 8, !dbg !4757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4757

if.end20:                                         ; preds = %if.end13
  %17 = load ptr, ptr %rtc, align 8, !dbg !4758
  store ptr %17, ptr %retval, align 8, !dbg !4759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4759

cleanup:                                          ; preds = %if.end20, %if.then17, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !4760
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #17, !dbg !4760
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #17, !dbg !4760
  %18 = load ptr, ptr %retval, align 8, !dbg !4760
  ret ptr %18, !dbg !4760
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rtc_device_get_id(ptr noundef %dev) #0 align 16 !dbg !4761 {
entry:
  %dev.addr = alloca ptr, align 8
  %of_id = alloca i32, align 4
  %id = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4763, metadata !DIExpression()), !dbg !4766
  call void @llvm.lifetime.start.p0(i64 4, ptr %of_id) #17, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %of_id, metadata !4764, metadata !DIExpression()), !dbg !4768
  store i32 -1, ptr %of_id, align 4, !dbg !4768
  call void @llvm.lifetime.start.p0(i64 4, ptr %id) #17, !dbg !4767
  call void @llvm.dbg.declare(metadata ptr %id, metadata !4765, metadata !DIExpression()), !dbg !4769
  store i32 -1, ptr %id, align 4, !dbg !4769
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4770
  %of_node = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 23, !dbg !4772
  %1 = load ptr, ptr %of_node, align 8, !dbg !4772
  %tobool = icmp ne ptr %1, null, !dbg !4770
  br i1 %tobool, label %if.then, label %if.else, !dbg !4773

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4774
  %of_node1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 23, !dbg !4775
  %3 = load ptr, ptr %of_node1, align 8, !dbg !4775
  %call = call i32 @of_alias_get_id(ptr noundef %3, ptr noundef @.str.5) #18, !dbg !4776
  store i32 %call, ptr %of_id, align 4, !dbg !4777
  br label %if.end10, !dbg !4778

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !4779
  %parent = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1, !dbg !4781
  %5 = load ptr, ptr %parent, align 8, !dbg !4781
  %tobool2 = icmp ne ptr %5, null, !dbg !4779
  br i1 %tobool2, label %land.lhs.true, label %if.end, !dbg !4782

land.lhs.true:                                    ; preds = %if.else
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !4783
  %parent3 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !4784
  %7 = load ptr, ptr %parent3, align 8, !dbg !4784
  %of_node4 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 23, !dbg !4785
  %8 = load ptr, ptr %of_node4, align 8, !dbg !4785
  %tobool5 = icmp ne ptr %8, null, !dbg !4783
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !4786

if.then6:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !4787
  %parent7 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 1, !dbg !4788
  %10 = load ptr, ptr %parent7, align 8, !dbg !4788
  %of_node8 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 23, !dbg !4789
  %11 = load ptr, ptr %of_node8, align 8, !dbg !4789
  %call9 = call i32 @of_alias_get_id(ptr noundef %11, ptr noundef @.str.5) #18, !dbg !4790
  store i32 %call9, ptr %of_id, align 4, !dbg !4791
  br label %if.end, !dbg !4792

if.end:                                           ; preds = %if.then6, %land.lhs.true, %if.else
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %12 = load i32, ptr %of_id, align 4, !dbg !4793
  %cmp = icmp sge i32 %12, 0, !dbg !4795
  br i1 %cmp, label %if.then11, label %if.end16, !dbg !4796

if.then11:                                        ; preds = %if.end10
  %13 = load i32, ptr %of_id, align 4, !dbg !4797
  %14 = load i32, ptr %of_id, align 4, !dbg !4797
  %add = add i32 %14, 1, !dbg !4797
  %sub = sub i32 %add, 1, !dbg !4797
  %call12 = call i32 @ida_alloc_range(ptr noundef @rtc_ida, i32 noundef %13, i32 noundef %sub, i32 noundef 3264) #18, !dbg !4797
  store i32 %call12, ptr %id, align 4, !dbg !4799
  %15 = load i32, ptr %id, align 4, !dbg !4800
  %cmp13 = icmp slt i32 %15, 0, !dbg !4802
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !4803

if.then14:                                        ; preds = %if.then11
  br label %do.body, !dbg !4804

do.body:                                          ; preds = %if.then14
  br label %do.cond, !dbg !4806

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4806

do.end:                                           ; preds = %do.cond
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !4804
  %17 = load i32, ptr %of_id, align 4, !dbg !4804
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef @.str.6, i32 noundef %17) #19, !dbg !4804
  br label %if.end15, !dbg !4808

if.end15:                                         ; preds = %do.end, %if.then11
  br label %if.end16, !dbg !4809

if.end16:                                         ; preds = %if.end15, %if.end10
  %18 = load i32, ptr %id, align 4, !dbg !4810
  %cmp17 = icmp slt i32 %18, 0, !dbg !4812
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !4813

if.then18:                                        ; preds = %if.end16
  %call19 = call i32 @ida_alloc(ptr noundef @rtc_ida, i32 noundef 3264) #18, !dbg !4814
  store i32 %call19, ptr %id, align 4, !dbg !4815
  br label %if.end20, !dbg !4816

if.end20:                                         ; preds = %if.then18, %if.end16
  %19 = load i32, ptr %id, align 4, !dbg !4817
  call void @llvm.lifetime.end.p0(i64 4, ptr %id) #17, !dbg !4818
  call void @llvm.lifetime.end.p0(i64 4, ptr %of_id) #17, !dbg !4818
  ret i32 %19, !dbg !4819
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !4820 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  %0 = load i64, ptr %error.addr, align 8, !dbg !4827
  %1 = inttoptr i64 %0 to ptr, !dbg !4828
  ret ptr %1, !dbg !4829
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @rtc_allocate_device() #0 align 16 !dbg !4652 {
entry:
  %retval = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral16 = alloca %struct.atomic64_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #17, !dbg !4830
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4656, metadata !DIExpression()), !dbg !4831
  %call = call noalias ptr @kzalloc(i64 noundef 1264, i32 noundef 3264) #20, !dbg !4832
  store ptr %call, ptr %rtc, align 8, !dbg !4833
  %0 = load ptr, ptr %rtc, align 8, !dbg !4834
  %tobool = icmp ne ptr %0, null, !dbg !4834
  br i1 %tobool, label %if.end, label %if.then, !dbg !4836

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4837

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %rtc, align 8, !dbg !4838
  %dev = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 0, !dbg !4839
  call void @device_initialize(ptr noundef %dev) #18, !dbg !4840
  %2 = load ptr, ptr %rtc, align 8, !dbg !4841
  %set_offset_nsec = getelementptr inbounds %struct.rtc_device, ptr %2, i32 0, i32 19, !dbg !4842
  store i64 1005000000, ptr %set_offset_nsec, align 8, !dbg !4843
  %3 = load ptr, ptr %rtc, align 8, !dbg !4844
  %irq_freq = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 11, !dbg !4845
  store i32 1, ptr %irq_freq, align 8, !dbg !4846
  %4 = load ptr, ptr %rtc, align 8, !dbg !4847
  %max_user_freq = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 12, !dbg !4848
  store i32 64, ptr %max_user_freq, align 4, !dbg !4849
  %5 = load ptr, ptr @rtc_class, align 8, !dbg !4850
  %6 = load ptr, ptr %rtc, align 8, !dbg !4851
  %dev1 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 0, !dbg !4852
  %class = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 30, !dbg !4853
  store ptr %5, ptr %class, align 8, !dbg !4854
  %call2 = call ptr @rtc_get_dev_attribute_groups() #18, !dbg !4855
  %7 = load ptr, ptr %rtc, align 8, !dbg !4856
  %dev3 = getelementptr inbounds %struct.rtc_device, ptr %7, i32 0, i32 0, !dbg !4857
  %groups = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 31, !dbg !4858
  store ptr %call2, ptr %groups, align 8, !dbg !4859
  %8 = load ptr, ptr %rtc, align 8, !dbg !4860
  %dev4 = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 0, !dbg !4861
  %release = getelementptr inbounds %struct.device, ptr %dev4, i32 0, i32 32, !dbg !4862
  store ptr @rtc_device_release, ptr %release, align 8, !dbg !4863
  br label %do.body, !dbg !4864

do.body:                                          ; preds = %if.end
  %9 = load ptr, ptr %rtc, align 8, !dbg !4865
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 4, !dbg !4865
  call void @__mutex_init(ptr noundef %ops_lock, ptr noundef @.str.7, ptr noundef @rtc_allocate_device.__key) #18, !dbg !4865
  br label %do.cond, !dbg !4865

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4865

do.end:                                           ; preds = %do.cond
  br label %do.body5, !dbg !4867

do.body5:                                         ; preds = %do.end
  %10 = load ptr, ptr %rtc, align 8, !dbg !4868
  %irq_lock = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 8, !dbg !4868
  %call6 = call ptr @spinlock_check(ptr noundef %irq_lock) #18, !dbg !4868
  %11 = load ptr, ptr %rtc, align 8, !dbg !4868
  %irq_lock7 = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 8, !dbg !4868
  %12 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !4868
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %12, i32 0, i32 0, !dbg !4868
  %13 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !4868
  %counter = getelementptr inbounds %struct.atomic_t, ptr %13, i32 0, i32 0, !dbg !4868
  store i32 0, ptr %counter, align 4, !dbg !4868
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %irq_lock7, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !4868
  br label %do.cond8, !dbg !4868

do.cond8:                                         ; preds = %do.body5
  br label %do.end9, !dbg !4868

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !4870

do.body10:                                        ; preds = %do.end9
  %14 = load ptr, ptr %rtc, align 8, !dbg !4871
  %irq_queue = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 9, !dbg !4871
  call void @__init_waitqueue_head(ptr noundef %irq_queue, ptr noundef @.str.9, ptr noundef @rtc_allocate_device.__key.8) #18, !dbg !4871
  br label %do.cond11, !dbg !4871

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4871

do.end12:                                         ; preds = %do.cond11
  %15 = load ptr, ptr %rtc, align 8, !dbg !4873
  %timerqueue = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 13, !dbg !4874
  call void @timerqueue_init_head(ptr noundef %timerqueue) #18, !dbg !4875
  br label %do.body13, !dbg !4876

do.body13:                                        ; preds = %do.end12
  br label %do.body14, !dbg !4877

do.body14:                                        ; preds = %do.body13
  %16 = load ptr, ptr %rtc, align 8, !dbg !4879
  %irqwork = getelementptr inbounds %struct.rtc_device, ptr %16, i32 0, i32 18, !dbg !4879
  call void @__init_work(ptr noundef %irqwork, i32 noundef 0) #18, !dbg !4879
  %17 = load ptr, ptr %rtc, align 8, !dbg !4879
  %irqwork15 = getelementptr inbounds %struct.rtc_device, ptr %17, i32 0, i32 18, !dbg !4879
  %data = getelementptr inbounds %struct.work_struct, ptr %irqwork15, i32 0, i32 0, !dbg !4879
  %counter17 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral16, i32 0, i32 0, !dbg !4879
  store i64 68719476704, ptr %counter17, align 8, !dbg !4879
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral16, i64 8, i1 false), !dbg !4879
  %18 = load ptr, ptr %rtc, align 8, !dbg !4879
  %irqwork18 = getelementptr inbounds %struct.rtc_device, ptr %18, i32 0, i32 18, !dbg !4879
  %entry19 = getelementptr inbounds %struct.work_struct, ptr %irqwork18, i32 0, i32 1, !dbg !4879
  call void @INIT_LIST_HEAD(ptr noundef %entry19) #18, !dbg !4879
  %19 = load ptr, ptr %rtc, align 8, !dbg !4879
  %irqwork20 = getelementptr inbounds %struct.rtc_device, ptr %19, i32 0, i32 18, !dbg !4879
  %func = getelementptr inbounds %struct.work_struct, ptr %irqwork20, i32 0, i32 2, !dbg !4879
  store ptr @rtc_timer_do_work, ptr %func, align 8, !dbg !4879
  br label %do.cond21, !dbg !4879

do.cond21:                                        ; preds = %do.body14
  br label %do.end22, !dbg !4879

do.end22:                                         ; preds = %do.cond21
  br label %do.cond23, !dbg !4877

do.cond23:                                        ; preds = %do.end22
  br label %do.end24, !dbg !4877

do.end24:                                         ; preds = %do.cond23
  %20 = load ptr, ptr %rtc, align 8, !dbg !4881
  %aie_timer = getelementptr inbounds %struct.rtc_device, ptr %20, i32 0, i32 14, !dbg !4882
  %21 = load ptr, ptr %rtc, align 8, !dbg !4883
  call void @rtc_timer_init(ptr noundef %aie_timer, ptr noundef @rtc_aie_update_irq, ptr noundef %21) #18, !dbg !4884
  %22 = load ptr, ptr %rtc, align 8, !dbg !4885
  %uie_rtctimer = getelementptr inbounds %struct.rtc_device, ptr %22, i32 0, i32 15, !dbg !4886
  %23 = load ptr, ptr %rtc, align 8, !dbg !4887
  call void @rtc_timer_init(ptr noundef %uie_rtctimer, ptr noundef @rtc_uie_update_irq, ptr noundef %23) #18, !dbg !4888
  %24 = load ptr, ptr %rtc, align 8, !dbg !4889
  %pie_timer = getelementptr inbounds %struct.rtc_device, ptr %24, i32 0, i32 16, !dbg !4890
  call void @hrtimer_init(ptr noundef %pie_timer, i32 noundef 1, i32 noundef 1) #18, !dbg !4891
  %25 = load ptr, ptr %rtc, align 8, !dbg !4892
  %pie_timer25 = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 16, !dbg !4893
  %function = getelementptr inbounds %struct.hrtimer, ptr %pie_timer25, i32 0, i32 2, !dbg !4894
  store ptr @rtc_pie_update_irq, ptr %function, align 8, !dbg !4895
  %26 = load ptr, ptr %rtc, align 8, !dbg !4896
  %pie_enabled = getelementptr inbounds %struct.rtc_device, ptr %26, i32 0, i32 17, !dbg !4897
  store i32 0, ptr %pie_enabled, align 8, !dbg !4898
  %27 = load ptr, ptr %rtc, align 8, !dbg !4899
  %features = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 20, !dbg !4900
  %arraydecay = getelementptr inbounds [1 x i64], ptr %features, i64 0, i64 0, !dbg !4899
  call void @set_bit(i64 noundef 0, ptr noundef %arraydecay) #18, !dbg !4901
  %28 = load ptr, ptr %rtc, align 8, !dbg !4902
  %features26 = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 20, !dbg !4903
  %arraydecay27 = getelementptr inbounds [1 x i64], ptr %features26, i64 0, i64 0, !dbg !4902
  call void @set_bit(i64 noundef 4, ptr noundef %arraydecay27) #18, !dbg !4904
  %29 = load ptr, ptr %rtc, align 8, !dbg !4905
  store ptr %29, ptr %retval, align 8, !dbg !4906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4906

cleanup:                                          ; preds = %do.end24, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #17, !dbg !4907
  %30 = load ptr, ptr %retval, align 8, !dbg !4907
  ret ptr %30, !dbg !4907
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4908 dso_local void @ida_free(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__devm_add_action_or_reset(ptr noundef %dev, ptr noundef %action, ptr noundef %data, ptr noundef %name) #3 align 16 !dbg !4912 {
entry:
  %dev.addr = alloca ptr, align 8
  %action.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4916, metadata !DIExpression()), !dbg !4921
  store ptr %action, ptr %action.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %action.addr, metadata !4917, metadata !DIExpression()), !dbg !4922
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !4918, metadata !DIExpression()), !dbg !4923
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4919, metadata !DIExpression()), !dbg !4924
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !4925
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4920, metadata !DIExpression()), !dbg !4926
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4927
  %1 = load ptr, ptr %action.addr, align 8, !dbg !4928
  %2 = load ptr, ptr %data.addr, align 8, !dbg !4929
  %3 = load ptr, ptr %name.addr, align 8, !dbg !4930
  %call = call i32 @__devm_add_action(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #18, !dbg !4931
  store i32 %call, ptr %ret, align 4, !dbg !4932
  %4 = load i32, ptr %ret, align 4, !dbg !4933
  %tobool = icmp ne i32 %4, 0, !dbg !4933
  br i1 %tobool, label %if.then, label %if.end, !dbg !4935

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %action.addr, align 8, !dbg !4936
  %6 = load ptr, ptr %data.addr, align 8, !dbg !4937
  call void %5(ptr noundef %6) #18, !dbg !4936
  br label %if.end, !dbg !4936

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !4938
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !4939
  ret i32 %7, !dbg !4940
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_rtc_release_device(ptr noundef %res) #0 align 16 !dbg !4941 {
entry:
  %res.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4943, metadata !DIExpression()), !dbg !4945
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #17, !dbg !4946
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !4944, metadata !DIExpression()), !dbg !4947
  %0 = load ptr, ptr %res.addr, align 8, !dbg !4948
  store ptr %0, ptr %rtc, align 8, !dbg !4947
  %1 = load ptr, ptr %rtc, align 8, !dbg !4949
  %dev = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 0, !dbg !4950
  call void @put_device(ptr noundef %dev) #18, !dbg !4951
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #17, !dbg !4952
  ret void, !dbg !4952
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4953 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__devm_rtc_register_device(ptr noundef %owner, ptr noundef %rtc) #0 align 16 !dbg !4956 {
entry:
  %retval = alloca i32, align 4
  %owner.addr = alloca ptr, align 8
  %rtc.addr = alloca ptr, align 8
  %alrm = alloca %struct.rtc_wkalrm, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !4960, metadata !DIExpression()), !dbg !4964
  store ptr %rtc, ptr %rtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtc.addr, metadata !4961, metadata !DIExpression()), !dbg !4965
  call void @llvm.lifetime.start.p0(i64 40, ptr %alrm) #17, !dbg !4966
  call void @llvm.dbg.declare(metadata ptr %alrm, metadata !4962, metadata !DIExpression()), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4963, metadata !DIExpression()), !dbg !4969
  %0 = load ptr, ptr %rtc.addr, align 8, !dbg !4970
  %ops = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 3, !dbg !4972
  %1 = load ptr, ptr %ops, align 8, !dbg !4972
  %tobool = icmp ne ptr %1, null, !dbg !4970
  br i1 %tobool, label %if.end, label %if.then, !dbg !4973

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4974
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4974

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %rtc.addr, align 8, !dbg !4976
  %ops1 = getelementptr inbounds %struct.rtc_device, ptr %2, i32 0, i32 3, !dbg !4978
  %3 = load ptr, ptr %ops1, align 8, !dbg !4978
  %set_alarm = getelementptr inbounds %struct.rtc_class_ops, ptr %3, i32 0, i32 4, !dbg !4979
  %4 = load ptr, ptr %set_alarm, align 8, !dbg !4979
  %tobool2 = icmp ne ptr %4, null, !dbg !4976
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4980

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %rtc.addr, align 8, !dbg !4981
  %features = getelementptr inbounds %struct.rtc_device, ptr %5, i32 0, i32 20, !dbg !4982
  %arraydecay = getelementptr inbounds [1 x i64], ptr %features, i64 0, i64 0, !dbg !4981
  call void @clear_bit(i64 noundef 0, ptr noundef %arraydecay) #18, !dbg !4983
  br label %if.end4, !dbg !4983

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load ptr, ptr %rtc.addr, align 8, !dbg !4984
  %ops5 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 3, !dbg !4986
  %7 = load ptr, ptr %ops5, align 8, !dbg !4986
  %set_offset = getelementptr inbounds %struct.rtc_class_ops, ptr %7, i32 0, i32 8, !dbg !4987
  %8 = load ptr, ptr %set_offset, align 8, !dbg !4987
  %tobool6 = icmp ne ptr %8, null, !dbg !4984
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !4988

if.then7:                                         ; preds = %if.end4
  %9 = load ptr, ptr %rtc.addr, align 8, !dbg !4989
  %features8 = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 20, !dbg !4990
  %arraydecay9 = getelementptr inbounds [1 x i64], ptr %features8, i64 0, i64 0, !dbg !4989
  call void @set_bit(i64 noundef 5, ptr noundef %arraydecay9) #18, !dbg !4991
  br label %if.end10, !dbg !4991

if.end10:                                         ; preds = %if.then7, %if.end4
  %10 = load ptr, ptr %owner.addr, align 8, !dbg !4992
  %11 = load ptr, ptr %rtc.addr, align 8, !dbg !4993
  %owner11 = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 1, !dbg !4994
  store ptr %10, ptr %owner11, align 8, !dbg !4995
  %12 = load ptr, ptr %rtc.addr, align 8, !dbg !4996
  call void @rtc_device_get_offset(ptr noundef %12) #18, !dbg !4997
  %13 = load ptr, ptr %rtc.addr, align 8, !dbg !4998
  %call = call i32 @__rtc_read_alarm(ptr noundef %13, ptr noundef %alrm) #18, !dbg !4999
  store i32 %call, ptr %err, align 4, !dbg !5000
  %14 = load i32, ptr %err, align 4, !dbg !5001
  %tobool12 = icmp ne i32 %14, 0, !dbg !5001
  br i1 %tobool12, label %if.end17, label %land.lhs.true, !dbg !5003

land.lhs.true:                                    ; preds = %if.end10
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alrm, i32 0, i32 2, !dbg !5004
  %call13 = call i32 @rtc_valid_tm(ptr noundef %time) #18, !dbg !5005
  %tobool14 = icmp ne i32 %call13, 0, !dbg !5005
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !5006

if.then15:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %rtc.addr, align 8, !dbg !5007
  %call16 = call i32 @rtc_initialize_alarm(ptr noundef %15, ptr noundef %alrm) #18, !dbg !5008
  br label %if.end17, !dbg !5008

if.end17:                                         ; preds = %if.then15, %land.lhs.true, %if.end10
  %16 = load ptr, ptr %rtc.addr, align 8, !dbg !5009
  call void @rtc_dev_prepare(ptr noundef %16) #18, !dbg !5010
  %17 = load ptr, ptr %rtc.addr, align 8, !dbg !5011
  %char_dev = getelementptr inbounds %struct.rtc_device, ptr %17, i32 0, i32 5, !dbg !5012
  %18 = load ptr, ptr %rtc.addr, align 8, !dbg !5013
  %dev = getelementptr inbounds %struct.rtc_device, ptr %18, i32 0, i32 0, !dbg !5014
  %call18 = call i32 @cdev_device_add(ptr noundef %char_dev, ptr noundef %dev) #18, !dbg !5015
  store i32 %call18, ptr %err, align 4, !dbg !5016
  %19 = load i32, ptr %err, align 4, !dbg !5017
  %tobool19 = icmp ne i32 %19, 0, !dbg !5017
  br i1 %tobool19, label %if.then20, label %if.else, !dbg !5019

if.then20:                                        ; preds = %if.end17
  %20 = load ptr, ptr %rtc.addr, align 8, !dbg !5020
  %flags = getelementptr inbounds %struct.rtc_device, ptr %20, i32 0, i32 6, !dbg !5022
  call void @set_bit(i64 noundef 1, ptr noundef %flags) #18, !dbg !5023
  br label %do.body, !dbg !5024

do.body:                                          ; preds = %if.then20
  br label %do.cond, !dbg !5026

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5026

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %rtc.addr, align 8, !dbg !5024
  %dev21 = getelementptr inbounds %struct.rtc_device, ptr %21, i32 0, i32 0, !dbg !5024
  %parent = getelementptr inbounds %struct.device, ptr %dev21, i32 0, i32 1, !dbg !5024
  %22 = load ptr, ptr %parent, align 8, !dbg !5024
  %23 = load ptr, ptr %rtc.addr, align 8, !dbg !5024
  %dev22 = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 0, !dbg !5024
  %devt = getelementptr inbounds %struct.device, ptr %dev22, i32 0, i32 26, !dbg !5024
  %24 = load i32, ptr %devt, align 4, !dbg !5024
  %shr = lshr i32 %24, 20, !dbg !5024
  %25 = load ptr, ptr %rtc.addr, align 8, !dbg !5024
  %id = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 2, !dbg !5024
  %26 = load i32, ptr %id, align 8, !dbg !5024
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef @.str.2, i32 noundef %shr, i32 noundef %26) #19, !dbg !5024
  br label %if.end23, !dbg !5028

if.else:                                          ; preds = %if.end17
  br label %if.end23

if.end23:                                         ; preds = %if.else, %do.end
  %27 = load ptr, ptr %rtc.addr, align 8, !dbg !5029
  call void @rtc_proc_add_device(ptr noundef %27) #18, !dbg !5030
  br label %do.body24, !dbg !5031

do.body24:                                        ; preds = %if.end23
  br label %do.cond25, !dbg !5033

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5033

do.end26:                                         ; preds = %do.cond25
  %28 = load ptr, ptr %rtc.addr, align 8, !dbg !5031
  %dev27 = getelementptr inbounds %struct.rtc_device, ptr %28, i32 0, i32 0, !dbg !5031
  %parent28 = getelementptr inbounds %struct.device, ptr %dev27, i32 0, i32 1, !dbg !5031
  %29 = load ptr, ptr %parent28, align 8, !dbg !5031
  %30 = load ptr, ptr %rtc.addr, align 8, !dbg !5031
  %dev29 = getelementptr inbounds %struct.rtc_device, ptr %30, i32 0, i32 0, !dbg !5031
  %call30 = call ptr @dev_name(ptr noundef %dev29) #18, !dbg !5031
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %29, ptr noundef @.str.3, ptr noundef %call30) #19, !dbg !5031
  %31 = load ptr, ptr %rtc.addr, align 8, !dbg !5035
  %dev31 = getelementptr inbounds %struct.rtc_device, ptr %31, i32 0, i32 0, !dbg !5035
  %parent32 = getelementptr inbounds %struct.device, ptr %dev31, i32 0, i32 1, !dbg !5035
  %32 = load ptr, ptr %parent32, align 8, !dbg !5035
  %33 = load ptr, ptr %rtc.addr, align 8, !dbg !5035
  %call33 = call i32 @__devm_add_action_or_reset(ptr noundef %32, ptr noundef @devm_rtc_unregister_device, ptr noundef %33, ptr noundef @.str.4) #18, !dbg !5035
  store i32 %call33, ptr %retval, align 4, !dbg !5036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5036

cleanup:                                          ; preds = %do.end26, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5037
  call void @llvm.lifetime.end.p0(i64 40, ptr %alrm) #17, !dbg !5037
  %34 = load i32, ptr %retval, align 4, !dbg !5037
  ret i32 %34, !dbg !5037
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5038 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5045, metadata !DIExpression()), !dbg !5047
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5046, metadata !DIExpression()), !dbg !5048
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5049
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5050
  %div = sdiv i64 %1, 64, !dbg !5050
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5051
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5052
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5053
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5054
  call void @arch_clear_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5055
  ret void, !dbg !5056
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5057 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5059, metadata !DIExpression()), !dbg !5061
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5060, metadata !DIExpression()), !dbg !5062
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5063
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5064
  %div = sdiv i64 %1, 64, !dbg !5064
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5065
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5066
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5067
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5068
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5069
  ret void, !dbg !5070
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtc_device_get_offset(ptr noundef %rtc) #0 align 16 !dbg !5071 {
entry:
  %rtc.addr = alloca ptr, align 8
  %range_secs = alloca i64, align 8
  %start_year = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rtc, ptr %rtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtc.addr, metadata !5073, metadata !DIExpression()), !dbg !5077
  call void @llvm.lifetime.start.p0(i64 8, ptr %range_secs) #17, !dbg !5078
  call void @llvm.dbg.declare(metadata ptr %range_secs, metadata !5074, metadata !DIExpression()), !dbg !5079
  call void @llvm.lifetime.start.p0(i64 4, ptr %start_year) #17, !dbg !5080
  call void @llvm.dbg.declare(metadata ptr %start_year, metadata !5075, metadata !DIExpression()), !dbg !5081
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5082
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5076, metadata !DIExpression()), !dbg !5083
  %0 = load ptr, ptr %rtc.addr, align 8, !dbg !5084
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %0, i32 0, i32 21, !dbg !5086
  %1 = load i64, ptr %range_min, align 8, !dbg !5086
  %2 = load ptr, ptr %rtc.addr, align 8, !dbg !5087
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %2, i32 0, i32 22, !dbg !5088
  %3 = load i64, ptr %range_max, align 8, !dbg !5088
  %cmp = icmp eq i64 %1, %3, !dbg !5089
  br i1 %cmp, label %if.then, label %if.end, !dbg !5090

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5091

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %rtc.addr, align 8, !dbg !5092
  %dev = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 0, !dbg !5093
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1, !dbg !5094
  %5 = load ptr, ptr %parent, align 8, !dbg !5094
  %call = call i32 @device_property_read_u32(ptr noundef %5, ptr noundef @.str.12, ptr noundef %start_year) #18, !dbg !5095
  store i32 %call, ptr %ret, align 4, !dbg !5096
  %6 = load i32, ptr %ret, align 4, !dbg !5097
  %tobool = icmp ne i32 %6, 0, !dbg !5097
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !5099

if.then1:                                         ; preds = %if.end
  %7 = load i32, ptr %start_year, align 4, !dbg !5100
  %call2 = call i64 @mktime64(i32 noundef %7, i32 noundef 1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18, !dbg !5102
  %8 = load ptr, ptr %rtc.addr, align 8, !dbg !5103
  %start_secs = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 24, !dbg !5104
  store i64 %call2, ptr %start_secs, align 8, !dbg !5105
  %9 = load ptr, ptr %rtc.addr, align 8, !dbg !5106
  %set_start_time = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 26, !dbg !5107
  store i8 1, ptr %set_start_time, align 8, !dbg !5108
  br label %if.end3, !dbg !5109

if.end3:                                          ; preds = %if.then1, %if.end
  %10 = load ptr, ptr %rtc.addr, align 8, !dbg !5110
  %set_start_time4 = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 26, !dbg !5112
  %11 = load i8, ptr %set_start_time4, align 8, !dbg !5112, !range !5113, !noundef !913
  %tobool5 = trunc i8 %11 to i1, !dbg !5112
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5114

if.then6:                                         ; preds = %if.end3
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5115

if.end7:                                          ; preds = %if.end3
  %12 = load ptr, ptr %rtc.addr, align 8, !dbg !5116
  %range_max8 = getelementptr inbounds %struct.rtc_device, ptr %12, i32 0, i32 22, !dbg !5117
  %13 = load i64, ptr %range_max8, align 8, !dbg !5117
  %14 = load ptr, ptr %rtc.addr, align 8, !dbg !5118
  %range_min9 = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 21, !dbg !5119
  %15 = load i64, ptr %range_min9, align 8, !dbg !5119
  %sub = sub i64 %13, %15, !dbg !5120
  %add = add i64 %sub, 1, !dbg !5121
  store i64 %add, ptr %range_secs, align 8, !dbg !5122
  %16 = load ptr, ptr %rtc.addr, align 8, !dbg !5123
  %start_secs10 = getelementptr inbounds %struct.rtc_device, ptr %16, i32 0, i32 24, !dbg !5125
  %17 = load i64, ptr %start_secs10, align 8, !dbg !5125
  %18 = load ptr, ptr %rtc.addr, align 8, !dbg !5126
  %range_max11 = getelementptr inbounds %struct.rtc_device, ptr %18, i32 0, i32 22, !dbg !5127
  %19 = load i64, ptr %range_max11, align 8, !dbg !5127
  %cmp12 = icmp ugt i64 %17, %19, !dbg !5128
  br i1 %cmp12, label %if.then18, label %lor.lhs.false, !dbg !5129

lor.lhs.false:                                    ; preds = %if.end7
  %20 = load ptr, ptr %rtc.addr, align 8, !dbg !5130
  %start_secs13 = getelementptr inbounds %struct.rtc_device, ptr %20, i32 0, i32 24, !dbg !5131
  %21 = load i64, ptr %start_secs13, align 8, !dbg !5131
  %22 = load i64, ptr %range_secs, align 8, !dbg !5132
  %add14 = add i64 %21, %22, !dbg !5133
  %sub15 = sub i64 %add14, 1, !dbg !5134
  %23 = load ptr, ptr %rtc.addr, align 8, !dbg !5135
  %range_min16 = getelementptr inbounds %struct.rtc_device, ptr %23, i32 0, i32 21, !dbg !5136
  %24 = load i64, ptr %range_min16, align 8, !dbg !5136
  %cmp17 = icmp slt i64 %sub15, %24, !dbg !5137
  br i1 %cmp17, label %if.then18, label %if.else, !dbg !5138

if.then18:                                        ; preds = %lor.lhs.false, %if.end7
  %25 = load ptr, ptr %rtc.addr, align 8, !dbg !5139
  %start_secs19 = getelementptr inbounds %struct.rtc_device, ptr %25, i32 0, i32 24, !dbg !5140
  %26 = load i64, ptr %start_secs19, align 8, !dbg !5140
  %27 = load ptr, ptr %rtc.addr, align 8, !dbg !5141
  %range_min20 = getelementptr inbounds %struct.rtc_device, ptr %27, i32 0, i32 21, !dbg !5142
  %28 = load i64, ptr %range_min20, align 8, !dbg !5142
  %sub21 = sub i64 %26, %28, !dbg !5143
  %29 = load ptr, ptr %rtc.addr, align 8, !dbg !5144
  %offset_secs = getelementptr inbounds %struct.rtc_device, ptr %29, i32 0, i32 25, !dbg !5145
  store i64 %sub21, ptr %offset_secs, align 8, !dbg !5146
  br label %if.end38, !dbg !5144

if.else:                                          ; preds = %lor.lhs.false
  %30 = load ptr, ptr %rtc.addr, align 8, !dbg !5147
  %start_secs22 = getelementptr inbounds %struct.rtc_device, ptr %30, i32 0, i32 24, !dbg !5149
  %31 = load i64, ptr %start_secs22, align 8, !dbg !5149
  %32 = load ptr, ptr %rtc.addr, align 8, !dbg !5150
  %range_min23 = getelementptr inbounds %struct.rtc_device, ptr %32, i32 0, i32 21, !dbg !5151
  %33 = load i64, ptr %range_min23, align 8, !dbg !5151
  %cmp24 = icmp sgt i64 %31, %33, !dbg !5152
  br i1 %cmp24, label %if.then25, label %if.else27, !dbg !5153

if.then25:                                        ; preds = %if.else
  %34 = load i64, ptr %range_secs, align 8, !dbg !5154
  %35 = load ptr, ptr %rtc.addr, align 8, !dbg !5155
  %offset_secs26 = getelementptr inbounds %struct.rtc_device, ptr %35, i32 0, i32 25, !dbg !5156
  store i64 %34, ptr %offset_secs26, align 8, !dbg !5157
  br label %if.end37, !dbg !5155

if.else27:                                        ; preds = %if.else
  %36 = load ptr, ptr %rtc.addr, align 8, !dbg !5158
  %start_secs28 = getelementptr inbounds %struct.rtc_device, ptr %36, i32 0, i32 24, !dbg !5160
  %37 = load i64, ptr %start_secs28, align 8, !dbg !5160
  %38 = load ptr, ptr %rtc.addr, align 8, !dbg !5161
  %range_min29 = getelementptr inbounds %struct.rtc_device, ptr %38, i32 0, i32 21, !dbg !5162
  %39 = load i64, ptr %range_min29, align 8, !dbg !5162
  %cmp30 = icmp slt i64 %37, %39, !dbg !5163
  br i1 %cmp30, label %if.then31, label %if.else34, !dbg !5164

if.then31:                                        ; preds = %if.else27
  %40 = load i64, ptr %range_secs, align 8, !dbg !5165
  %sub32 = sub i64 0, %40, !dbg !5166
  %41 = load ptr, ptr %rtc.addr, align 8, !dbg !5167
  %offset_secs33 = getelementptr inbounds %struct.rtc_device, ptr %41, i32 0, i32 25, !dbg !5168
  store i64 %sub32, ptr %offset_secs33, align 8, !dbg !5169
  br label %if.end36, !dbg !5167

if.else34:                                        ; preds = %if.else27
  %42 = load ptr, ptr %rtc.addr, align 8, !dbg !5170
  %offset_secs35 = getelementptr inbounds %struct.rtc_device, ptr %42, i32 0, i32 25, !dbg !5171
  store i64 0, ptr %offset_secs35, align 8, !dbg !5172
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.then31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then25
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5173
  br label %cleanup, !dbg !5173

cleanup:                                          ; preds = %if.end38, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5173
  call void @llvm.lifetime.end.p0(i64 4, ptr %start_year) #17, !dbg !5173
  call void @llvm.lifetime.end.p0(i64 8, ptr %range_secs) #17, !dbg !5173
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5173

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5174 dso_local i32 @__rtc_read_alarm(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5177 dso_local i32 @rtc_valid_tm(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5180 dso_local i32 @rtc_initialize_alarm(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5181 dso_local void @rtc_dev_prepare(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5183 dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5186 dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5190 dso_local void @rtc_proc_add_device(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5191 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !5192 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5196, metadata !DIExpression()), !dbg !5197
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5198
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !5200
  %1 = load ptr, ptr %init_name, align 8, !dbg !5200
  %tobool = icmp ne ptr %1, null, !dbg !5198
  br i1 %tobool, label %if.then, label %if.end, !dbg !5201

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5202
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !5203
  %3 = load ptr, ptr %init_name1, align 8, !dbg !5203
  store ptr %3, ptr %retval, align 8, !dbg !5204
  br label %return, !dbg !5204

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !5205
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !5206
  %call = call ptr @kobject_name(ptr noundef %kobj) #18, !dbg !5207
  store ptr %call, ptr %retval, align 8, !dbg !5208
  br label %return, !dbg !5208

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !5209
  ret ptr %5, !dbg !5209
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_rtc_unregister_device(ptr noundef %data) #0 align 16 !dbg !5210 {
entry:
  %data.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !5212, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #17, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5213, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %data.addr, align 8, !dbg !5217
  store ptr %0, ptr %rtc, align 8, !dbg !5216
  %1 = load ptr, ptr %rtc, align 8, !dbg !5218
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %1, i32 0, i32 4, !dbg !5219
  call void @mutex_lock(ptr noundef %ops_lock) #18, !dbg !5220
  %2 = load ptr, ptr %rtc, align 8, !dbg !5221
  call void @rtc_proc_del_device(ptr noundef %2) #18, !dbg !5222
  %3 = load ptr, ptr %rtc, align 8, !dbg !5223
  %flags = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 6, !dbg !5223
  %4 = ptrtoint ptr %flags to i64, !dbg !5223
  %cmp = icmp ne i64 %4, 0, !dbg !5223
  %conv = zext i1 %cmp to i32, !dbg !5223
  %5 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !5223
  br i1 %5, label %land.lhs.true, label %cond.false, !dbg !5223

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %rtc, align 8, !dbg !5223
  %flags1 = getelementptr inbounds %struct.rtc_device, ptr %6, i32 0, i32 6, !dbg !5223
  %7 = ptrtoint ptr %flags1 to i64, !dbg !5223
  %cmp2 = icmp ne i64 %7, 0, !dbg !5223
  br i1 %cmp2, label %land.lhs.true4, label %cond.false, !dbg !5223

land.lhs.true4:                                   ; preds = %land.lhs.true
  %8 = load ptr, ptr %rtc, align 8, !dbg !5223
  %flags5 = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 6, !dbg !5223
  %9 = load i64, ptr %flags5, align 8, !dbg !5223
  %10 = call i1 @llvm.is.constant.i64(i64 %9), !dbg !5223
  br i1 %10, label %cond.true, label %cond.false, !dbg !5225

cond.true:                                        ; preds = %land.lhs.true4
  %11 = load ptr, ptr %rtc, align 8, !dbg !5223
  %flags6 = getelementptr inbounds %struct.rtc_device, ptr %11, i32 0, i32 6, !dbg !5223
  %call = call zeroext i1 @const_test_bit(i64 noundef 1, ptr noundef %flags6) #18, !dbg !5223
  br i1 %call, label %if.end, label %if.then, !dbg !5223

cond.false:                                       ; preds = %land.lhs.true4, %land.lhs.true, %entry
  %12 = load ptr, ptr %rtc, align 8, !dbg !5223
  %flags8 = getelementptr inbounds %struct.rtc_device, ptr %12, i32 0, i32 6, !dbg !5223
  %call9 = call zeroext i1 @_test_bit(i64 noundef 1, ptr noundef %flags8) #18, !dbg !5223
  br i1 %call9, label %if.end, label %if.then, !dbg !5225

if.then:                                          ; preds = %cond.false, %cond.true
  %13 = load ptr, ptr %rtc, align 8, !dbg !5226
  %char_dev = getelementptr inbounds %struct.rtc_device, ptr %13, i32 0, i32 5, !dbg !5227
  %14 = load ptr, ptr %rtc, align 8, !dbg !5228
  %dev = getelementptr inbounds %struct.rtc_device, ptr %14, i32 0, i32 0, !dbg !5229
  call void @cdev_device_del(ptr noundef %char_dev, ptr noundef %dev) #18, !dbg !5230
  br label %if.end, !dbg !5230

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %15 = load ptr, ptr %rtc, align 8, !dbg !5231
  %ops = getelementptr inbounds %struct.rtc_device, ptr %15, i32 0, i32 3, !dbg !5232
  store ptr null, ptr %ops, align 8, !dbg !5233
  %16 = load ptr, ptr %rtc, align 8, !dbg !5234
  %ops_lock11 = getelementptr inbounds %struct.rtc_device, ptr %16, i32 0, i32 4, !dbg !5235
  call void @mutex_unlock(ptr noundef %ops_lock11) #18, !dbg !5236
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #17, !dbg !5237
  ret void, !dbg !5237
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @devm_rtc_device_register(ptr noundef %dev, ptr noundef %name, ptr noundef %ops, ptr noundef %owner) #0 align 16 !dbg !5238 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %ops.addr = alloca ptr, align 8
  %owner.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5242, metadata !DIExpression()), !dbg !5248
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5243, metadata !DIExpression()), !dbg !5249
  store ptr %ops, ptr %ops.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ops.addr, metadata !5244, metadata !DIExpression()), !dbg !5250
  store ptr %owner, ptr %owner.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %owner.addr, metadata !5245, metadata !DIExpression()), !dbg !5251
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #17, !dbg !5252
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5246, metadata !DIExpression()), !dbg !5253
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5254
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5247, metadata !DIExpression()), !dbg !5255
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5256
  %call = call ptr @devm_rtc_allocate_device(ptr noundef %0) #18, !dbg !5257
  store ptr %call, ptr %rtc, align 8, !dbg !5258
  %1 = load ptr, ptr %rtc, align 8, !dbg !5259
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %1) #18, !dbg !5261
  br i1 %call1, label %if.then, label %if.end, !dbg !5262

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %rtc, align 8, !dbg !5263
  store ptr %2, ptr %retval, align 8, !dbg !5264
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5264

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ops.addr, align 8, !dbg !5265
  %4 = load ptr, ptr %rtc, align 8, !dbg !5266
  %ops2 = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 3, !dbg !5267
  store ptr %3, ptr %ops2, align 8, !dbg !5268
  %5 = load ptr, ptr %owner.addr, align 8, !dbg !5269
  %6 = load ptr, ptr %rtc, align 8, !dbg !5270
  %call3 = call i32 @__devm_rtc_register_device(ptr noundef %5, ptr noundef %6) #18, !dbg !5271
  store i32 %call3, ptr %err, align 4, !dbg !5272
  %7 = load i32, ptr %err, align 4, !dbg !5273
  %tobool = icmp ne i32 %7, 0, !dbg !5273
  br i1 %tobool, label %if.then4, label %if.end6, !dbg !5275

if.then4:                                         ; preds = %if.end
  %8 = load i32, ptr %err, align 4, !dbg !5276
  %conv = sext i32 %8 to i64, !dbg !5276
  %call5 = call ptr @ERR_PTR(i64 noundef %conv) #18, !dbg !5277
  store ptr %call5, ptr %retval, align 8, !dbg !5278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5278

if.end6:                                          ; preds = %if.end
  %9 = load ptr, ptr %rtc, align 8, !dbg !5279
  store ptr %9, ptr %retval, align 8, !dbg !5280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5280

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5281
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #17, !dbg !5281
  %10 = load ptr, ptr %retval, align 8, !dbg !5281
  ret ptr %10, !dbg !5281
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !5282 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5286, metadata !DIExpression()), !dbg !5287
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5288
  %1 = ptrtoint ptr %0 to i64, !dbg !5288
  %2 = inttoptr i64 %1 to ptr, !dbg !5288
  %3 = ptrtoint ptr %2 to i64, !dbg !5288
  %cmp = icmp uge i64 %3, -4095, !dbg !5288
  %lnot = xor i1 %cmp, true, !dbg !5288
  %lnot1 = xor i1 %lnot, true, !dbg !5288
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5288
  %conv = sext i32 %lnot.ext to i64, !dbg !5288
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5288
  %tobool = icmp ne i64 %expval, 0, !dbg !5288
  ret i1 %tobool, !dbg !5289
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_rtc_core__270_487_rtc_init4() #7 section ".init.text" align 16 !dbg !5290 {
entry:
  %call = call i32 @rtc_init() #19, !dbg !5291
  ret i32 %call, !dbg !5291
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @rtc_init() #7 section ".init.text" align 16 !dbg !5292 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %call = call ptr @class_create(ptr noundef @.str.5) #18, !dbg !5293
  store ptr %call, ptr @rtc_class, align 8, !dbg !5294
  %0 = load ptr, ptr @rtc_class, align 8, !dbg !5295
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %0) #18, !dbg !5297
  br i1 %call1, label %if.then, label %if.end, !dbg !5298

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5299

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5302

do.end:                                           ; preds = %do.body
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13) #19, !dbg !5299
  store i32 %call2, ptr %tmp, align 4, !dbg !5302
  %1 = load i32, ptr %tmp, align 4, !dbg !5299
  %2 = load ptr, ptr @rtc_class, align 8, !dbg !5304
  %call3 = call i64 @PTR_ERR(ptr noundef %2) #18, !dbg !5305
  %conv = trunc i64 %call3 to i32, !dbg !5305
  store i32 %conv, ptr %retval, align 4, !dbg !5306
  br label %return, !dbg !5306

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @rtc_class, align 8, !dbg !5307
  %pm = getelementptr inbounds %struct.class, ptr %3, i32 0, i32 11, !dbg !5308
  store ptr null, ptr %pm, align 8, !dbg !5309
  call void @rtc_dev_init() #19, !dbg !5310
  store i32 0, ptr %retval, align 4, !dbg !5311
  br label %return, !dbg !5311

return:                                           ; preds = %if.end, %do.end
  %4 = load i32, ptr %retval, align 4, !dbg !5312
  ret i32 %4, !dbg !5312
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @of_alias_get_id(ptr noundef %np, ptr noundef %stem) #3 align 16 !dbg !5313 {
entry:
  %np.addr = alloca ptr, align 8
  %stem.addr = alloca ptr, align 8
  store ptr %np, ptr %np.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %np.addr, metadata !5317, metadata !DIExpression()), !dbg !5319
  store ptr %stem, ptr %stem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stem.addr, metadata !5318, metadata !DIExpression()), !dbg !5320
  ret i32 -38, !dbg !5321
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5322 dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ida_alloc(ptr noundef %ida, i32 noundef %gfp) #3 align 16 !dbg !5325 {
entry:
  %ida.addr = alloca ptr, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !5329, metadata !DIExpression()), !dbg !5331
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !5330, metadata !DIExpression()), !dbg !5332
  %0 = load ptr, ptr %ida.addr, align 8, !dbg !5333
  %1 = load i32, ptr %gfp.addr, align 4, !dbg !5334
  %call = call i32 @ida_alloc_range(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef %1) #18, !dbg !5335
  ret i32 %call, !dbg !5336
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !5337 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5341, metadata !DIExpression()), !dbg !5343
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5342, metadata !DIExpression()), !dbg !5344
  %0 = load i64, ptr %size.addr, align 8, !dbg !5345
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5346
  %or = or i32 %1, 256, !dbg !5347
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #20, !dbg !5348
  ret ptr %call, !dbg !5349
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5350 dso_local void @device_initialize(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5351 dso_local ptr @rtc_get_dev_attribute_groups() #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rtc_device_release(ptr noundef %dev) #0 align 16 !dbg !5354 {
entry:
  %dev.addr = alloca ptr, align 8
  %rtc = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %head = alloca ptr, align 8
  %node = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5356, metadata !DIExpression()), !dbg !5363
  call void @llvm.lifetime.start.p0(i64 8, ptr %rtc) #17, !dbg !5364
  call void @llvm.dbg.declare(metadata ptr %rtc, metadata !5357, metadata !DIExpression()), !dbg !5365
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5358, metadata !DIExpression()), !dbg !5366
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5366
  store ptr %0, ptr %__mptr, align 8, !dbg !5366
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5366
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5366
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5366
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5367
  %2 = load ptr, ptr %tmp, align 8, !dbg !5366
  store ptr %2, ptr %rtc, align 8, !dbg !5365
  call void @llvm.lifetime.start.p0(i64 8, ptr %head) #17, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %head, metadata !5360, metadata !DIExpression()), !dbg !5369
  %3 = load ptr, ptr %rtc, align 8, !dbg !5370
  %timerqueue = getelementptr inbounds %struct.rtc_device, ptr %3, i32 0, i32 13, !dbg !5371
  store ptr %timerqueue, ptr %head, align 8, !dbg !5369
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #17, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %node, metadata !5362, metadata !DIExpression()), !dbg !5373
  %4 = load ptr, ptr %rtc, align 8, !dbg !5374
  %ops_lock = getelementptr inbounds %struct.rtc_device, ptr %4, i32 0, i32 4, !dbg !5375
  call void @mutex_lock(ptr noundef %ops_lock) #18, !dbg !5376
  br label %while.cond, !dbg !5377

while.cond:                                       ; preds = %while.body, %entry
  %5 = load ptr, ptr %head, align 8, !dbg !5378
  %call = call ptr @timerqueue_getnext(ptr noundef %5) #18, !dbg !5379
  store ptr %call, ptr %node, align 8, !dbg !5380
  %tobool = icmp ne ptr %call, null, !dbg !5377
  br i1 %tobool, label %while.body, label %while.end, !dbg !5377

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %head, align 8, !dbg !5381
  %7 = load ptr, ptr %node, align 8, !dbg !5382
  %call1 = call zeroext i1 @timerqueue_del(ptr noundef %6, ptr noundef %7) #18, !dbg !5383
  br label %while.cond, !dbg !5377, !llvm.loop !5384

while.end:                                        ; preds = %while.cond
  %8 = load ptr, ptr %rtc, align 8, !dbg !5388
  %ops_lock2 = getelementptr inbounds %struct.rtc_device, ptr %8, i32 0, i32 4, !dbg !5389
  call void @mutex_unlock(ptr noundef %ops_lock2) #18, !dbg !5390
  %9 = load ptr, ptr %rtc, align 8, !dbg !5391
  %irqwork = getelementptr inbounds %struct.rtc_device, ptr %9, i32 0, i32 18, !dbg !5392
  %call3 = call zeroext i1 @cancel_work_sync(ptr noundef %irqwork) #18, !dbg !5393
  %10 = load ptr, ptr %rtc, align 8, !dbg !5394
  %id = getelementptr inbounds %struct.rtc_device, ptr %10, i32 0, i32 2, !dbg !5395
  %11 = load i32, ptr %id, align 8, !dbg !5395
  call void @ida_free(ptr noundef @rtc_ida, i32 noundef %11) #18, !dbg !5396
  %12 = load ptr, ptr %rtc, align 8, !dbg !5397
  %ops_lock4 = getelementptr inbounds %struct.rtc_device, ptr %12, i32 0, i32 4, !dbg !5398
  call void @mutex_destroy(ptr noundef %ops_lock4) #18, !dbg !5399
  %13 = load ptr, ptr %rtc, align 8, !dbg !5400
  call void @kfree(ptr noundef %13) #18, !dbg !5401
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #17, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 8, ptr %head) #17, !dbg !5402
  call void @llvm.lifetime.end.p0(i64 8, ptr %rtc) #17, !dbg !5402
  ret void, !dbg !5402
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5403 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #5 align 16 !dbg !5408 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5415, metadata !DIExpression()), !dbg !5416
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5417
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5418
  ret ptr %1, !dbg !5419
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5420 dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @timerqueue_init_head(ptr noundef %head) #3 align 16 !dbg !5424 {
entry:
  %head.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.rb_root_cached, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5428, metadata !DIExpression()), !dbg !5429
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5430
  %rb_root = getelementptr inbounds %struct.timerqueue_head, ptr %0, i32 0, i32 0, !dbg !5431
  %rb_root1 = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral, i32 0, i32 0, !dbg !5432
  %rb_node = getelementptr inbounds %struct.rb_root, ptr %rb_root1, i32 0, i32 0, !dbg !5432
  store ptr null, ptr %rb_node, align 8, !dbg !5432
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %.compoundliteral, i32 0, i32 1, !dbg !5432
  store ptr null, ptr %rb_leftmost, align 8, !dbg !5432
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %rb_root, ptr align 8 %.compoundliteral, i64 16, i1 false), !dbg !5432
  ret void, !dbg !5433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #3 align 16 !dbg !5434 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !5438, metadata !DIExpression()), !dbg !5440
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !5439, metadata !DIExpression()), !dbg !5441
  ret void, !dbg !5442
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5443 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5448, metadata !DIExpression()), !dbg !5449
  br label %do.body, !dbg !5450

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5451

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5453

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5451

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5455
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5455
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5455
  store volatile ptr %0, ptr %next, align 8, !dbg !5455
  br label %do.end3, !dbg !5455

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5451

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5457

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5458

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5460

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5458

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5462
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5462
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5462
  store volatile ptr %2, ptr %prev, align 8, !dbg !5462
  br label %do.end9, !dbg !5462

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5458

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5464
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rtc_timer_do_work(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5465 dso_local void @rtc_timer_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rtc_aie_update_irq(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @rtc_uie_update_irq(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5469 dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @rtc_pie_update_irq(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5472 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5474, metadata !DIExpression()), !dbg !5479
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5475, metadata !DIExpression()), !dbg !5480
  %0 = load i64, ptr %size.addr, align 8, !dbg !5481
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5482
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5483

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5484
  %tobool = icmp ne i64 %2, 0, !dbg !5484
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5485

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !5486
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5476, metadata !DIExpression()), !dbg !5487
  %3 = load i64, ptr %size.addr, align 8, !dbg !5488
  %cmp = icmp ugt i64 %3, 8192, !dbg !5490
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5491

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5492
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5493
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !5494
  store ptr %call, ptr %retval, align 8, !dbg !5495
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5495

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5496
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #18, !dbg !5496
  store i32 %call2, ptr %index, align 4, !dbg !5497
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5498
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5499
  %9 = ptrtoint ptr %8 to i64, !dbg !5499
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #18, !dbg !5500
  %idxprom = zext i32 %call3 to i64, !dbg !5501
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5501
  %10 = load i32, ptr %index, align 4, !dbg !5502
  %idxprom4 = zext i32 %10 to i64, !dbg !5501
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5501
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5501
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5503
  %13 = load i64, ptr %size.addr, align 8, !dbg !5504
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !5505
  store ptr %call6, ptr %retval, align 8, !dbg !5506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5506

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !5507
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5508
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5509
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !5510
  store ptr %call8, ptr %retval, align 8, !dbg !5511
  br label %return, !dbg !5511

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5512
  ret ptr %16, !dbg !5512
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5513 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #5 align 16 !dbg !5514 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5518, metadata !DIExpression()), !dbg !5520
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5519, metadata !DIExpression()), !dbg !5521
  %0 = load i64, ptr %size.addr, align 8, !dbg !5522
  %tobool = icmp ne i64 %0, 0, !dbg !5522
  br i1 %tobool, label %if.end, label %if.then, !dbg !5524

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5525
  br label %return, !dbg !5525

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5526
  %cmp = icmp ule i64 %1, 8, !dbg !5528
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5529

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5530
  br label %return, !dbg !5530

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5531
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5533
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5534

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5535
  %cmp4 = icmp ule i64 %3, 96, !dbg !5536
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5537

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5538
  br label %return, !dbg !5538

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5539
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5541
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5542

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5543
  %cmp9 = icmp ule i64 %5, 192, !dbg !5544
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5545

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5546
  br label %return, !dbg !5546

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5547
  %cmp12 = icmp ule i64 %6, 8, !dbg !5549
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5550

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5551
  br label %return, !dbg !5551

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5552
  %cmp15 = icmp ule i64 %7, 16, !dbg !5554
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5555

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5556
  br label %return, !dbg !5556

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5557
  %cmp18 = icmp ule i64 %8, 32, !dbg !5559
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5560

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5561
  br label %return, !dbg !5561

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5562
  %cmp21 = icmp ule i64 %9, 64, !dbg !5564
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5565

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5566
  br label %return, !dbg !5566

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5567
  %cmp24 = icmp ule i64 %10, 128, !dbg !5569
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5570

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5571
  br label %return, !dbg !5571

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5572
  %cmp27 = icmp ule i64 %11, 256, !dbg !5574
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5575

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5576
  br label %return, !dbg !5576

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5577
  %cmp30 = icmp ule i64 %12, 512, !dbg !5579
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5580

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5581
  br label %return, !dbg !5581

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5582
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5584
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5585

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5586
  br label %return, !dbg !5586

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5587
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5589
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5590

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5591
  br label %return, !dbg !5591

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5592
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5594
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5595

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5596
  br label %return, !dbg !5596

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5597
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5599
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5600

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5601
  br label %return, !dbg !5601

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5602
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5604
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5605

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5606
  br label %return, !dbg !5606

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5607
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5609
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5610

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5611
  br label %return, !dbg !5611

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5612
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5614
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5615

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5616
  br label %return, !dbg !5616

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5617
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5619
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5620

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5621
  br label %return, !dbg !5621

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5622
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5624
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5625

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5626
  br label %return, !dbg !5626

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5627
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5629
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5630

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5631
  br label %return, !dbg !5631

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5632
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5634
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5635

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5636
  br label %return, !dbg !5636

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5637
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5639
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5640

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5641
  br label %return, !dbg !5641

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5642, !range !5113, !noundef !913
  %tobool69 = trunc i8 %25 to i1, !dbg !5642
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5644

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5645

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #22, !dbg !5646, !srcloc !5649
  unreachable, !dbg !5646

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5650

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5651

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5652

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5654

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5652

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 480, i32 0, i64 12) #17, !dbg !5656, !srcloc !5658
  br label %do.end75, !dbg !5656

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5652

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5659
  br label %return, !dbg !5659

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5660
  ret i32 %26, !dbg !5660
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5661 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #5 align 16 !dbg !5667 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5671, metadata !DIExpression()), !dbg !5673
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5672, metadata !DIExpression()), !dbg !5674
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5675
  %and = and i32 %0, 17, !dbg !5675
  %cmp = icmp eq i32 %and, 0, !dbg !5675
  %lnot = xor i1 %cmp, true, !dbg !5675
  %lnot1 = xor i1 %lnot, true, !dbg !5675
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5675
  %conv = sext i32 %lnot.ext to i64, !dbg !5675
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5675
  %tobool = icmp ne i64 %expval, 0, !dbg !5675
  br i1 %tobool, label %if.then, label %if.end, !dbg !5677

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5678
  br label %return, !dbg !5678

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5679
  %and2 = and i32 %1, 1, !dbg !5681
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5681
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5682

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5683
  br label %return, !dbg !5683

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5684
  br label %return, !dbg !5684

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5686
  ret i32 %2, !dbg !5686
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5687 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5688 dso_local void @__compiletime_assert_263() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5689 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @timerqueue_getnext(ptr noundef %head) #3 align 16 !dbg !5692 {
entry:
  %head.addr = alloca ptr, align 8
  %leftmost = alloca ptr, align 8
  %____ptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5696, metadata !DIExpression()), !dbg !5702
  call void @llvm.lifetime.start.p0(i64 8, ptr %leftmost) #17, !dbg !5703
  call void @llvm.dbg.declare(metadata ptr %leftmost, metadata !5697, metadata !DIExpression()), !dbg !5704
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5705
  %rb_root = getelementptr inbounds %struct.timerqueue_head, ptr %0, i32 0, i32 0, !dbg !5705
  %rb_leftmost = getelementptr inbounds %struct.rb_root_cached, ptr %rb_root, i32 0, i32 1, !dbg !5705
  %1 = load ptr, ptr %rb_leftmost, align 8, !dbg !5705
  store ptr %1, ptr %leftmost, align 8, !dbg !5704
  call void @llvm.lifetime.start.p0(i64 8, ptr %____ptr) #17, !dbg !5706
  call void @llvm.dbg.declare(metadata ptr %____ptr, metadata !5698, metadata !DIExpression()), !dbg !5706
  %2 = load ptr, ptr %leftmost, align 8, !dbg !5706
  store ptr %2, ptr %____ptr, align 8, !dbg !5706
  %3 = load ptr, ptr %____ptr, align 8, !dbg !5706
  %tobool = icmp ne ptr %3, null, !dbg !5706
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5706

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5707
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5700, metadata !DIExpression()), !dbg !5707
  %4 = load ptr, ptr %____ptr, align 8, !dbg !5707
  store ptr %4, ptr %__mptr, align 8, !dbg !5707
  %5 = load ptr, ptr %__mptr, align 8, !dbg !5707
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !5707
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5707
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5706
  %6 = load ptr, ptr %tmp1, align 8, !dbg !5707
  br label %cond.end, !dbg !5706

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5706

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ null, %cond.false ], !dbg !5706
  store ptr %cond, ptr %tmp, align 8, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 8, ptr %____ptr) #17, !dbg !5708
  %7 = load ptr, ptr %tmp, align 8, !dbg !5706
  call void @llvm.lifetime.end.p0(i64 8, ptr %leftmost) #17, !dbg !5709
  ret ptr %7, !dbg !5710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5711 dso_local zeroext i1 @timerqueue_del(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5714 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5715 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @mutex_destroy(ptr noundef %lock) #3 align 16 !dbg !5718 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5720, metadata !DIExpression()), !dbg !5721
  ret void, !dbg !5722
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5723 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5726 dso_local i32 @__devm_add_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5727 dso_local void @put_device(ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5728 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5736, metadata !DIExpression()), !dbg !5738
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5737, metadata !DIExpression()), !dbg !5739
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5740
  %1 = load i64, ptr %size.addr, align 8, !dbg !5741
  %conv = trunc i64 %1 to i32, !dbg !5741
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #18, !dbg !5742
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5743
  %3 = load i64, ptr %size.addr, align 8, !dbg !5743
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #18, !dbg !5743
  ret void, !dbg !5744
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_clear_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5745 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5748, metadata !DIExpression()), !dbg !5750
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5749, metadata !DIExpression()), !dbg !5751
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5752
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5754
  br i1 %1, label %if.then, label %if.else, !dbg !5755

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5756
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5756
  %shr = ashr i64 %3, 3, !dbg !5756
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5756
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5758
  %and = and i64 %4, 7, !dbg !5758
  %sh_prom = trunc i64 %and to i32, !dbg !5758
  %shl = shl i32 1, %sh_prom, !dbg !5758
  %not = xor i32 %shl, -1, !dbg !5759
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %not, ptr elementtype(i8) %add.ptr) #17, !dbg !5760, !srcloc !5761
  br label %if.end, !dbg !5762

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5763
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5765
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #17, !dbg !5766, !srcloc !5767
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5768
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5769 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5774, metadata !DIExpression()), !dbg !5776
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5775, metadata !DIExpression()), !dbg !5777
  ret i1 true, !dbg !5778
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #3 align 16 !dbg !5779 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5784, metadata !DIExpression()), !dbg !5787
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5785, metadata !DIExpression()), !dbg !5788
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5786, metadata !DIExpression()), !dbg !5789
  ret void, !dbg !5790
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5791 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5793, metadata !DIExpression()), !dbg !5795
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5794, metadata !DIExpression()), !dbg !5796
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5797
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5799
  br i1 %1, label %if.then, label %if.else, !dbg !5800

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !5801
  %3 = load i64, ptr %nr.addr, align 8, !dbg !5801
  %shr = ashr i64 %3, 3, !dbg !5801
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !5801
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5803
  %and = and i64 %4, 7, !dbg !5803
  %sh_prom = trunc i64 %and to i32, !dbg !5803
  %shl = shl i32 1, %sh_prom, !dbg !5803
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #17, !dbg !5804, !srcloc !5805
  br label %if.end, !dbg !5806

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5807
  %6 = load i64, ptr %nr.addr, align 8, !dbg !5809
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #17, !dbg !5810, !srcloc !5811
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !5812
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_property_read_u32(ptr noundef %dev, ptr noundef %propname, ptr noundef %val) #3 align 16 !dbg !5813 {
entry:
  %dev.addr = alloca ptr, align 8
  %propname.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5817, metadata !DIExpression()), !dbg !5820
  store ptr %propname, ptr %propname.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %propname.addr, metadata !5818, metadata !DIExpression()), !dbg !5821
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5819, metadata !DIExpression()), !dbg !5822
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5823
  %1 = load ptr, ptr %propname.addr, align 8, !dbg !5824
  %2 = load ptr, ptr %val.addr, align 8, !dbg !5825
  %call = call i32 @device_property_read_u32_array(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef 1) #18, !dbg !5826
  ret i32 %call, !dbg !5827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5828 dso_local i64 @mktime64(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5832 dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !5835 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5837, metadata !DIExpression()), !dbg !5838
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5839
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !5840
  %1 = load ptr, ptr %name, align 8, !dbg !5840
  ret ptr %1, !dbg !5841
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5842 dso_local void @rtc_proc_del_device(ptr noundef) #4

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5843 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5850, metadata !DIExpression()), !dbg !5855
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5851, metadata !DIExpression()), !dbg !5856
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #17, !dbg !5857
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5852, metadata !DIExpression()), !dbg !5858
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5859
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5860
  %div = udiv i64 %1, 64, !dbg !5860
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5861
  store ptr %add.ptr, ptr %p, align 8, !dbg !5858
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #17, !dbg !5862
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !5853, metadata !DIExpression()), !dbg !5863
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5864
  %rem = urem i64 %2, 64, !dbg !5864
  %shl = shl i64 1, %rem, !dbg !5864
  store i64 %shl, ptr %mask, align 8, !dbg !5863
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #17, !dbg !5865
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5854, metadata !DIExpression()), !dbg !5866
  %3 = load ptr, ptr %p, align 8, !dbg !5867
  %4 = load i64, ptr %3, align 8, !dbg !5868
  store i64 %4, ptr %val, align 8, !dbg !5866
  %5 = load i64, ptr %val, align 8, !dbg !5869
  %6 = load i64, ptr %mask, align 8, !dbg !5870
  %and = and i64 %5, %6, !dbg !5871
  %tobool = icmp ne i64 %and, 0, !dbg !5872
  %lnot = xor i1 %tobool, true, !dbg !5872
  %lnot1 = xor i1 %lnot, true, !dbg !5873
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #17, !dbg !5874
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #17, !dbg !5874
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #17, !dbg !5874
  ret i1 %lnot1, !dbg !5875
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5876 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5879, metadata !DIExpression()), !dbg !5881
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5880, metadata !DIExpression()), !dbg !5882
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5883
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5884
  %div = udiv i64 %1, 64, !dbg !5884
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5885
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #18, !dbg !5886
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5887
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5888
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5889
  ret i1 %call, !dbg !5890
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5891 dso_local void @cdev_device_del(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !5894 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5896, metadata !DIExpression()), !dbg !5898
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5897, metadata !DIExpression()), !dbg !5899
  %0 = load ptr, ptr %v.addr, align 8, !dbg !5900
  %1 = load i64, ptr %size.addr, align 8, !dbg !5901
  %conv = trunc i64 %1 to i32, !dbg !5901
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #18, !dbg !5902
  %2 = load ptr, ptr %v.addr, align 8, !dbg !5903
  %3 = load i64, ptr %size.addr, align 8, !dbg !5903
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #18, !dbg !5903
  ret void, !dbg !5904
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5905 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5907, metadata !DIExpression()), !dbg !5909
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5908, metadata !DIExpression()), !dbg !5910
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5911
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5912
  br i1 %1, label %cond.true, label %cond.false, !dbg !5912

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5913
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5914
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #18, !dbg !5915
  %conv = zext i1 %call to i32, !dbg !5915
  br label %cond.end, !dbg !5912

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !5916
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !5917
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #18, !dbg !5918
  %conv2 = zext i1 %call1 to i32, !dbg !5918
  br label %cond.end, !dbg !5912

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !5912
  %tobool = icmp ne i32 %cond, 0, !dbg !5912
  ret i1 %tobool, !dbg !5919
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #3 align 16 !dbg !5920 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5922, metadata !DIExpression()), !dbg !5924
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5923, metadata !DIExpression()), !dbg !5925
  ret i1 true, !dbg !5926
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5927 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5931, metadata !DIExpression()), !dbg !5933
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5932, metadata !DIExpression()), !dbg !5934
  %0 = load i64, ptr %nr.addr, align 8, !dbg !5935
  %and = and i64 %0, 63, !dbg !5936
  %shl = shl i64 1, %and, !dbg !5937
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !5938
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5939
  %shr = ashr i64 %2, 6, !dbg !5940
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !5938
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !5938
  %and1 = and i64 %shl, %3, !dbg !5941
  %cmp = icmp ne i64 %and1, 0, !dbg !5942
  ret i1 %cmp, !dbg !5943
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !5944 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5946, metadata !DIExpression()), !dbg !5949
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5947, metadata !DIExpression()), !dbg !5950
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #17, !dbg !5951
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !5948, metadata !DIExpression()), !dbg !5952
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5953
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5954
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #17, !dbg !5955, !srcloc !5956
  %3 = icmp ult i8 %2, 2, !dbg !5955
  call void @llvm.assume(i1 %3), !dbg !5955
  store i8 %2, ptr %oldbit, align 1, !dbg !5955
  %4 = load i8, ptr %oldbit, align 1, !dbg !5957, !range !5113, !noundef !913
  %tobool = trunc i8 %4 to i1, !dbg !5957
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #17, !dbg !5958
  ret i1 %tobool, !dbg !5959
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5960 dso_local ptr @class_create(ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5963 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !5967 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !5971, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !5973
  %1 = ptrtoint ptr %0 to i64, !dbg !5974
  ret i64 %1, !dbg !5975
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5976 dso_local void @rtc_dev_init() #6 section ".init.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noredzone }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4687, !4688, !4689, !4690, !4691, !4692, !4693, !4694}
!llvm.ident = !{!4695}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "rtc_ida", scope: !2, file: !3, line: 23, type: !4683, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/rtc/.class.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/rtc/rtc-core\22 -D KBUILD_BASENAME=\22class\22 -D KBUILD_MODNAME=\22rtc_core\22 -D __KBUILD_MODNAME=kmod_rtc_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/rtc/class.ll drivers/rtc/class.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !181, globals: !4608, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/rtc/class.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "157948f1c783dd71147bbb6ca47a891b")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !98, !107, !112, !117, !123, !149, !166, !171}
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
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
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
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !93, line: 30, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!96 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!97 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!101 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!102 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!103 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!104 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!105 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!106 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!110 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!111 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !113)
!113 = !{!114, !115, !116}
!114 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!115 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!116 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !118)
!118 = !{!119, !120, !121, !122}
!119 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!120 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!121 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!122 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 30, baseType: !7, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!125 = !{!126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!126 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!127 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!128 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!129 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!130 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!131 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!132 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!133 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!134 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!135 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!136 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!137 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!138 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!139 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!140 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!141 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!142 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!143 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!144 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!145 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!146 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!147 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!148 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_mode", file: !33, line: 39, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165}
!151 = !DIEnumerator(name: "HRTIMER_MODE_ABS", value: 0)
!152 = !DIEnumerator(name: "HRTIMER_MODE_REL", value: 1)
!153 = !DIEnumerator(name: "HRTIMER_MODE_PINNED", value: 2)
!154 = !DIEnumerator(name: "HRTIMER_MODE_SOFT", value: 4)
!155 = !DIEnumerator(name: "HRTIMER_MODE_HARD", value: 8)
!156 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED", value: 2)
!157 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED", value: 3)
!158 = !DIEnumerator(name: "HRTIMER_MODE_ABS_SOFT", value: 4)
!159 = !DIEnumerator(name: "HRTIMER_MODE_REL_SOFT", value: 5)
!160 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_SOFT", value: 6)
!161 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_SOFT", value: 7)
!162 = !DIEnumerator(name: "HRTIMER_MODE_ABS_HARD", value: 8)
!163 = !DIEnumerator(name: "HRTIMER_MODE_REL_HARD", value: 9)
!164 = !DIEnumerator(name: "HRTIMER_MODE_ABS_PINNED_HARD", value: 10)
!165 = !DIEnumerator(name: "HRTIMER_MODE_REL_PINNED_HARD", value: 11)
!166 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !167, line: 10, baseType: !7, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!168 = !{!169, !170}
!169 = !DIEnumerator(name: "false", value: 0)
!170 = !DIEnumerator(name: "true", value: 1)
!171 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !172, line: 364, baseType: !7, size: 32, elements: !173)
!172 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!173 = !{!174, !175, !176, !177, !178, !179, !180}
!174 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!175 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!176 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!177 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!178 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!179 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!180 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!181 = !{!182, !7, !183, !185, !186, !4598, !4599, !4601, !4603, !4605, !4606, !975, !321}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !184, line: 154, baseType: !7)
!184 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!185 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_device", file: !188, line: 87, size: 10112, elements: !189)
!188 = !DIFile(filename: "./include/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff23d3d21ddec8b2b9f29ebd0a4cf8a2")
!189 = !{!190, !4481, !4482, !4483, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4571, !4572, !4573, !4574, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4594, !4595, !4596, !4597}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !187, file: !188, line: 88, baseType: !191, size: 5824)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !192)
!192 = !{!193, !4000, !4002, !4005, !4006, !4059, !4144, !4145, !4146, !4147, !4148, !4155, !4247, !4260, !4270, !4274, !4276, !4277, !4278, !4282, !4289, !4290, !4293, !4296, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4458, !4459, !4460, !4463, !4466, !4475, !4476, !4477, !4478, !4479, !4480}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !191, file: !70, line: 706, baseType: !194, size: 512)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !195, line: 64, size: 512, elements: !196)
!195 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!196 = !{!197, !201, !207, !209, !298, !3899, !3990, !3995, !3996, !3997, !3998, !3999}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !194, file: !195, line: 65, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !194, file: !195, line: 66, baseType: !202, size: 128, offset: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !184, line: 190, size: 128, elements: !203)
!203 = !{!204, !206}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !202, file: !184, line: 191, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !202, file: !184, line: 191, baseType: !205, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !194, file: !195, line: 67, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !194, file: !195, line: 68, baseType: !210, size: 64, offset: 256)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !195, line: 168, size: 768, elements: !212)
!212 = !{!213, !214, !257, !258}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !211, file: !195, line: 169, baseType: !202, size: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !211, file: !195, line: 170, baseType: !215, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !216, line: 29, baseType: !217)
!216 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !216, line: 17, size: 32, elements: !218)
!218 = !{!219}
!219 = !DIDerivedType(tag: DW_TAG_member, scope: !217, file: !216, line: 18, baseType: !220, size: 32)
!220 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !217, file: !216, line: 18, size: 32, elements: !221)
!221 = !{!222}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !220, file: !216, line: 19, baseType: !223, size: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !224, line: 14, size: 32, elements: !225)
!224 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !223, file: !224, line: 15, baseType: !227, size: 32)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !228, line: 44, baseType: !229)
!228 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !228, line: 14, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, scope: !229, file: !228, line: 15, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !229, file: !228, line: 15, size: 32, elements: !233)
!233 = !{!234, !239, !249}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !232, file: !228, line: 16, baseType: !235, size: 32)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !184, line: 174, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 172, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !236, file: !184, line: 173, baseType: !85, size: 32)
!239 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 24, baseType: !240, size: 16)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 24, size: 16, elements: !241)
!241 = !{!242, !248}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !240, file: !228, line: 25, baseType: !243, size: 8)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !244, line: 17, baseType: !245)
!244 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !246, line: 21, baseType: !247)
!246 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!247 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !240, file: !228, line: 26, baseType: !243, size: 8, offset: 8)
!249 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 28, baseType: !250, size: 32)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !228, line: 28, size: 32, elements: !251)
!251 = !{!252, !256}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !250, file: !228, line: 29, baseType: !253, size: 16)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !244, line: 19, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !246, line: 24, baseType: !255)
!255 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !250, file: !228, line: 30, baseType: !253, size: 16, offset: 16)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !211, file: !195, line: 171, baseType: !194, size: 512, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !211, file: !195, line: 172, baseType: !259, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !195, line: 133, size: 192, elements: !262)
!262 = !{!263, !270, !275}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !261, file: !195, line: 134, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!85, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !261, file: !195, line: 135, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!198, !268}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !261, file: !195, line: 136, baseType: !276, size: 64, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!85, !268, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !195, line: 125, size: 20736, elements: !282)
!282 = !{!283, !288, !292, !293, !297}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !281, file: !195, line: 126, baseType: !284, size: 192)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 192, elements: !286)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!286 = !{!287}
!287 = !DISubrange(count: 3)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !281, file: !195, line: 127, baseType: !289, size: 4096, offset: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !285, size: 4096, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !281, file: !195, line: 128, baseType: !85, size: 32, offset: 4288)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !281, file: !195, line: 129, baseType: !294, size: 16384, offset: 4320)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 16384, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 2048)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !281, file: !195, line: 130, baseType: !85, size: 32, offset: 20704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !194, file: !195, line: 69, baseType: !299, size: 64, offset: 320)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !195, line: 116, size: 384, elements: !302)
!302 = !{!303, !307, !335, !3861, !3889, !3893}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !301, file: !195, line: 117, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !208}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !301, file: !195, line: 118, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !311, line: 254, size: 128, elements: !312)
!311 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!312 = !{!313, !328}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !310, file: !311, line: 255, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317, !208, !322, !285}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !184, line: 66, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !319, line: 73, baseType: !320)
!319 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !319, line: 15, baseType: !321)
!321 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !311, line: 30, size: 128, elements: !324)
!324 = !{!325, !326}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !323, file: !311, line: 31, baseType: !198, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !323, file: !311, line: 32, baseType: !327, size: 16, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !184, line: 24, baseType: !255)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !310, file: !311, line: 256, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!317, !208, !322, !198, !332}
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 61, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !319, line: 72, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !319, line: 16, baseType: !185)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !301, file: !195, line: 119, baseType: !336, size: 64, offset: 128)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !311, line: 84, size: 320, elements: !340)
!340 = !{!341, !342, !346, !3857, !3859}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !339, file: !311, line: 85, baseType: !198, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !339, file: !311, line: 86, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!327, !208, !322, !85}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !339, file: !311, line: 88, baseType: !347, size: 64, offset: 128)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!327, !208, !350, !85}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !311, line: 175, size: 512, elements: !352)
!352 = !{!353, !354, !355, !356, !3848, !3852, !3853}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !351, file: !311, line: 176, baseType: !323, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !351, file: !311, line: 177, baseType: !332, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !351, file: !311, line: 178, baseType: !182, size: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !351, file: !311, line: 179, baseType: !357, size: 64, offset: 256)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !362)
!362 = !{!363, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3842, !3843, !3844, !3845, !3846, !3847}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !361, file: !14, line: 473, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !366)
!366 = !{!367, !368, !369, !377, !378, !385, !386, !389, !390, !3612, !3613, !3614, !3615, !3616, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3656, !3659, !3660, !3661, !3678, !3679, !3680, !3681}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !365, file: !14, line: 642, baseType: !327, size: 16)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !365, file: !14, line: 643, baseType: !255, size: 16, offset: 16)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !365, file: !14, line: 644, baseType: !370, size: 32, offset: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !371, line: 23, baseType: !372)
!371 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 21, size: 32, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !372, file: !371, line: 22, baseType: !375, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !184, line: 37, baseType: !376)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !319, line: 49, baseType: !7)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !365, file: !14, line: 645, baseType: !202, size: 128, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !365, file: !14, line: 646, baseType: !379, size: 32, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !371, line: 28, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 26, size: 32, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !380, file: !371, line: 27, baseType: !383, size: 32)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !184, line: 38, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !319, line: 50, baseType: !7)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !365, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !365, file: !14, line: 650, baseType: !387, size: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !365, file: !14, line: 651, baseType: !387, size: 64, offset: 320)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !365, file: !14, line: 654, baseType: !391, size: 64, offset: 384)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !394)
!394 = !{!395, !3440, !3450, !3454, !3458, !3462, !3466, !3470, !3474, !3478, !3482, !3483, !3487, !3491, !3528, !3557, !3561, !3567, !3571, !3575, !3579, !3583, !3587, !3593, !3597}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !393, file: !14, line: 1967, baseType: !396, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!399, !364, !399, !7}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !401, line: 82, size: 1536, elements: !402)
!401 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!402 = !{!403, !404, !414, !422, !423, !443, !444, !448, !461, !3424, !3425, !3426, !3427, !3432, !3433, !3434}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !400, file: !401, line: 84, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !400, file: !401, line: 85, baseType: !405, size: 32, offset: 32)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !406, line: 275, baseType: !407)
!406 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !406, line: 275, size: 32, elements: !408)
!408 = !{!409}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !407, file: !406, line: 275, baseType: !410, size: 32)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !406, line: 69, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !406, line: 64, size: 32, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !411, file: !406, line: 65, baseType: !7, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !400, file: !401, line: 86, baseType: !415, size: 128, offset: 64)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !416, line: 38, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!417 = !{!418, !420}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !416, line: 39, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !415, file: !416, line: 39, baseType: !421, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !400, file: !401, line: 87, baseType: !399, size: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !400, file: !401, line: 88, baseType: !424, size: 128, offset: 256)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !401, line: 49, size: 128, elements: !425)
!425 = !{!426, !440}
!426 = !DIDerivedType(tag: DW_TAG_member, scope: !424, file: !401, line: 50, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !424, file: !401, line: 50, size: 64, elements: !428)
!428 = !{!429, !436}
!429 = !DIDerivedType(tag: DW_TAG_member, scope: !427, file: !401, line: 51, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !427, file: !401, line: 51, size: 64, elements: !431)
!431 = !{!432, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !430, file: !401, line: 52, baseType: !433, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !244, line: 21, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !246, line: 27, baseType: !7)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !430, file: !401, line: 52, baseType: !433, size: 32, offset: 32)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !427, file: !401, line: 54, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !244, line: 23, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !246, line: 31, baseType: !439)
!439 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !424, file: !401, line: 56, baseType: !441, size: 64, offset: 64)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !400, file: !401, line: 89, baseType: !364, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !400, file: !401, line: 91, baseType: !445, size: 256, offset: 448)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 256, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !400, file: !401, line: 94, baseType: !449, size: 64, offset: 704)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !450, line: 25, size: 64, elements: !451)
!450 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!451 = !{!452}
!452 = !DIDerivedType(tag: DW_TAG_member, scope: !449, file: !450, line: 26, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !449, file: !450, line: 26, size: 64, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !453, file: !450, line: 28, baseType: !438, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !450, line: 30, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !450, line: 30, size: 64, elements: !458)
!458 = !{!459, !460}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !457, file: !450, line: 31, baseType: !215, size: 32)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !457, file: !450, line: 32, baseType: !85, size: 32, offset: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !400, file: !401, line: 95, baseType: !462, size: 64, offset: 768)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !401, line: 128, size: 1024, align: 512, elements: !465)
!465 = !{!466, !470, !471, !478, !484, !488, !492, !496, !497, !501, !505, !3414, !3418}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !464, file: !401, line: 129, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!85, !399, !7}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !464, file: !401, line: 130, baseType: !467, size: 64, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !464, file: !401, line: 131, baseType: !472, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!85, !475, !477}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !400)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !464, file: !401, line: 132, baseType: !479, size: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!85, !475, !7, !198, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !424)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !464, file: !401, line: 134, baseType: !485, size: 64, offset: 256)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!85, !475}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !464, file: !401, line: 135, baseType: !489, size: 64, offset: 320)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!85, !399}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !464, file: !401, line: 136, baseType: !493, size: 64, offset: 384)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !399}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !464, file: !401, line: 137, baseType: !493, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !464, file: !401, line: 138, baseType: !498, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !399, !364}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !464, file: !401, line: 139, baseType: !502, size: 64, offset: 576)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DISubroutineType(types: !504)
!504 = !{!285, !399, !285, !85}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !464, file: !401, line: 140, baseType: !506, size: 64, offset: 640)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{!509, !3413}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !511, line: 70, size: 256, elements: !512)
!511 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!512 = !{!513, !514, !3409, !3410}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !510, file: !511, line: 71, baseType: !399, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !510, file: !511, line: 72, baseType: !515, size: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !517)
!517 = !{!518, !519, !522, !523, !524, !528, !1007, !1869, !1909, !1994, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2011, !2015, !2016, !2019, !2022, !2025, !2028, !2029, !2030, !2071, !3342, !3343, !3344, !3345, !3346, !3347, !3350, !3352, !3359, !3360, !3361, !3362, !3363, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3400, !3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !516, file: !14, line: 1191, baseType: !202, size: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !516, file: !14, line: 1192, baseType: !520, size: 32, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !184, line: 21, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !184, line: 18, baseType: !433)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !516, file: !14, line: 1193, baseType: !247, size: 8, offset: 160)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !516, file: !14, line: 1194, baseType: !185, size: 64, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !516, file: !14, line: 1195, baseType: !525, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !184, line: 52, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !319, line: 88, baseType: !527)
!527 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !516, file: !14, line: 1196, baseType: !529, size: 64, offset: 320)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !531)
!531 = !{!532, !533, !534, !541, !545, !549, !553, !992, !993, !997, !999, !1000, !1001, !1003, !1004, !1005, !1006}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !14, line: 2367, baseType: !198, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !530, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !530, file: !14, line: 2376, baseType: !535, size: 64, offset: 128)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DISubroutineType(types: !537)
!537 = !{!85, !538}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !540, line: 32, flags: DIFlagFwdDecl)
!540 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !530, file: !14, line: 2377, baseType: !542, size: 64, offset: 192)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !530, file: !14, line: 2378, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{!399, !529, !85, !198, !182}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !530, file: !14, line: 2380, baseType: !550, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{null, !515}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !530, file: !14, line: 2381, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !556)
!556 = !{!557, !558, !559, !563, !585, !611, !612, !613, !614, !618, !623, !624, !644, !700, !701, !702, !703, !704, !707, !708, !709, !717, !721, !748, !769, !770, !771, !772, !781, !804, !805, !808, !811, !812, !813, !814, !815, !816, !817, !822, !823, !950, !958, !959, !960, !962, !966, !967, !971, !972, !973, !974, !976, !977, !978, !985, !986, !987, !991}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !555, file: !6, line: 403, baseType: !5, size: 32)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !555, file: !6, line: 406, baseType: !202, size: 128, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !555, file: !6, line: 409, baseType: !560, size: 448, offset: 192)
!560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 448, elements: !561)
!561 = !{!562}
!562 = !DISubrange(count: 56)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !555, file: !6, line: 417, baseType: !564, size: 768, offset: 640)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !565)
!565 = !{!566, !567, !568, !569, !572}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !564, file: !6, line: 46, baseType: !194, size: 512)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !564, file: !6, line: 47, baseType: !554, size: 64, offset: 512)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !564, file: !6, line: 48, baseType: !208, size: 64, offset: 576)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !564, file: !6, line: 49, baseType: !570, size: 64, offset: 640)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !564, file: !6, line: 50, baseType: !573, size: 64, offset: 704)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !575, line: 26, size: 256, elements: !576)
!575 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !574, file: !575, line: 27, baseType: !7, size: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !574, file: !575, line: 28, baseType: !579, size: 192, offset: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !580, line: 43, size: 192, elements: !581)
!580 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!581 = !{!582, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !579, file: !580, line: 44, baseType: !583, size: 32)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !224, line: 23, baseType: !223)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !579, file: !580, line: 45, baseType: !202, size: 128, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !555, file: !6, line: 418, baseType: !586, size: 64, offset: 1408)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !588)
!588 = !{!589, !590, !595, !599, !603, !607}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !587, file: !6, line: 54, baseType: !323, size: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !587, file: !6, line: 55, baseType: !591, size: 64, offset: 128)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!317, !586, !594, !285}
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !587, file: !6, line: 57, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!317, !586, !594, !198, !332}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !587, file: !6, line: 59, baseType: !600, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = !DISubroutineType(types: !602)
!602 = !{null, !554, !198}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !587, file: !6, line: 60, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!85, !554}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !587, file: !6, line: 61, baseType: !608, size: 64, offset: 384)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{null, !554}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !555, file: !6, line: 419, baseType: !198, size: 64, offset: 1472)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !555, file: !6, line: 420, baseType: !198, size: 64, offset: 1536)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !555, file: !6, line: 421, baseType: !208, size: 64, offset: 1600)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !555, file: !6, line: 424, baseType: !615, size: 64, offset: 1664)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !555, file: !6, line: 425, baseType: !619, size: 64, offset: 1728)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !244, line: 20, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !246, line: 26, baseType: !85)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !555, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !555, file: !6, line: 435, baseType: !625, size: 256, offset: 1856)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !626, line: 66, size: 256, elements: !627)
!626 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!627 = !{!628, !637, !638, !643}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !625, file: !626, line: 67, baseType: !629, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !630, line: 13, baseType: !631)
!630 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !184, line: 181, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !184, line: 179, size: 64, elements: !633)
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !632, file: !184, line: 180, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !244, line: 22, baseType: !636)
!636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !246, line: 30, baseType: !527)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !625, file: !626, line: 68, baseType: !583, size: 32, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !625, file: !626, line: 70, baseType: !639, size: 32, offset: 96)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !640, line: 15, size: 32, elements: !641)
!640 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!641 = !{!642}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !639, file: !640, line: 20, baseType: !235, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !625, file: !626, line: 72, baseType: !202, size: 128, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !555, file: !6, line: 437, baseType: !645, size: 64, offset: 2112)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !647, line: 69, size: 320, elements: !648)
!647 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!648 = !{!649, !650, !651, !671, !673, !677, !678}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !647, line: 70, baseType: !198, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !646, file: !647, line: 71, baseType: !554, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !646, file: !647, line: 72, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !647, line: 47, size: 256, elements: !655)
!655 = !{!656, !657, !663, !667}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !654, file: !647, line: 49, baseType: !7, size: 32)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !654, file: !647, line: 51, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!85, !198, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !654, file: !647, line: 53, baseType: !664, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!85, !285, !661}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !654, file: !647, line: 55, baseType: !668, size: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !182}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !646, file: !647, line: 73, baseType: !672, size: 16, offset: 192)
!672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !646, file: !647, line: 74, baseType: !674, size: 8, offset: 208)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !244, line: 16, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !246, line: 20, baseType: !676)
!676 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !647, line: 75, baseType: !243, size: 8, offset: 216)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !646, file: !647, line: 76, baseType: !679, size: 64, offset: 256)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !646, file: !647, line: 76, size: 64, elements: !680)
!680 = !{!681, !682, !689}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !679, file: !647, line: 77, baseType: !182, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !679, file: !647, line: 78, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !647, line: 86, size: 128, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !685, file: !647, line: 87, baseType: !7, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !685, file: !647, line: 88, baseType: !285, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !679, file: !647, line: 79, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !647, line: 92, size: 256, elements: !693)
!693 = !{!694, !695, !696, !698, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !692, file: !647, line: 94, baseType: !7, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !692, file: !647, line: 95, baseType: !7, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !692, file: !647, line: 96, baseType: !697, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !692, file: !647, line: 97, baseType: !652, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !692, file: !647, line: 98, baseType: !182, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !555, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !555, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !555, file: !6, line: 442, baseType: !615, size: 64, offset: 2240)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !555, file: !6, line: 443, baseType: !619, size: 64, offset: 2304)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !555, file: !6, line: 444, baseType: !705, size: 8, offset: 2368)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !184, line: 35, baseType: !706)
!706 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !555, file: !6, line: 451, baseType: !705, size: 8, offset: 2376)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !555, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !555, file: !6, line: 455, baseType: !710, size: 64, offset: 2432)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !712, line: 23, size: 96, elements: !713)
!712 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!713 = !{!714, !715, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !711, file: !712, line: 24, baseType: !85, size: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !711, file: !712, line: 24, baseType: !85, size: 32, offset: 32)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !711, file: !712, line: 24, baseType: !85, size: 32, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !555, file: !6, line: 458, baseType: !718, size: 64, offset: 2496)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!85}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !555, file: !6, line: 460, baseType: !722, size: 4032, align: 512, offset: 2560)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 4032, elements: !746)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !724)
!724 = !{!725, !726, !727}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !723, file: !6, line: 363, baseType: !182, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !723, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !723, file: !6, line: 367, baseType: !728, size: 448, offset: 128)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !729)
!729 = !{!730, !731}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !728, file: !6, line: 320, baseType: !554, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !728, file: !6, line: 321, baseType: !732, size: 384, offset: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !733, line: 40, size: 384, elements: !734)
!733 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!734 = !{!735}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !732, file: !733, line: 41, baseType: !736, size: 384, align: 64)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !737, size: 384, align: 64, elements: !744)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !738, line: 5, size: 192, align: 64, elements: !739)
!738 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!739 = !{!740, !741, !743}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !737, file: !738, line: 6, baseType: !185, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !737, file: !738, line: 7, baseType: !742, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !737, file: !738, line: 8, baseType: !742, size: 64, offset: 128)
!744 = !{!745}
!745 = !DISubrange(count: 2)
!746 = !{!747}
!747 = !DISubrange(count: 7)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !555, file: !6, line: 463, baseType: !749, size: 192, offset: 6592)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !750, line: 8, size: 192, elements: !751)
!750 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!751 = !{!752, !753, !755}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !749, file: !750, line: 10, baseType: !7, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !749, file: !750, line: 11, baseType: !754, size: 64, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !749, file: !750, line: 12, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !758, line: 59, size: 48, elements: !759)
!758 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!759 = !{!760, !764, !765, !766, !767, !768}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !757, file: !758, line: 60, baseType: !761, size: 16)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !244, line: 18, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !246, line: 23, baseType: !763)
!763 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !757, file: !758, line: 61, baseType: !761, size: 16, offset: 16)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !757, file: !758, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !757, file: !758, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !757, file: !758, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !757, file: !758, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !555, file: !6, line: 465, baseType: !185, size: 64, offset: 6784)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !555, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !555, file: !6, line: 470, baseType: !202, size: 128, offset: 6912)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !555, file: !6, line: 471, baseType: !773, size: 64, offset: 7040)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !775, line: 33, size: 96, elements: !776)
!775 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!776 = !{!777, !778, !779, !780}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !774, file: !775, line: 37, baseType: !85, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !774, file: !775, line: 43, baseType: !85, size: 32, offset: 32)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !774, file: !775, line: 45, baseType: !255, size: 16, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !774, file: !775, line: 47, baseType: !255, size: 16, offset: 80)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !555, file: !6, line: 476, baseType: !782, size: 64, offset: 7104)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !784)
!784 = !{!785, !801, !802, !803}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !783, file: !6, line: 379, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !788, line: 204, baseType: !789)
!788 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !788, line: 197, size: 192, elements: !790)
!790 = !{!791, !793, !794, !795, !797, !799}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !789, file: !788, line: 198, baseType: !792, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !788, line: 21, baseType: !434)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !789, file: !788, line: 199, baseType: !247, size: 8, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !789, file: !788, line: 200, baseType: !247, size: 8, offset: 40)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !789, file: !788, line: 201, baseType: !796, size: 16, offset: 48)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !788, line: 17, baseType: !254)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !789, file: !788, line: 202, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !788, line: 16, baseType: !438)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !789, file: !788, line: 203, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !788, line: 22, baseType: !438)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !783, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !783, file: !6, line: 381, baseType: !285, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !783, file: !6, line: 382, baseType: !285, size: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !555, file: !6, line: 477, baseType: !783, size: 256, offset: 7168)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !555, file: !6, line: 480, baseType: !806, size: 64, offset: 7424)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !555, file: !6, line: 483, baseType: !809, size: 64, offset: 7488)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !555, file: !6, line: 488, baseType: !285, size: 64, offset: 7552)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !555, file: !6, line: 492, baseType: !182, size: 64, offset: 7616)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !555, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !555, file: !6, line: 495, baseType: !182, size: 64, offset: 7744)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !555, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !555, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !555, file: !6, line: 500, baseType: !818, size: 64, offset: 7872)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !820, line: 45, baseType: !821)
!820 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !555, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !555, file: !6, line: 504, baseType: !824, size: 64, offset: 8000)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !827, line: 96, size: 192, elements: !828)
!827 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!828 = !{!829, !830, !910, !914}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !826, file: !827, line: 97, baseType: !7, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !826, file: !827, line: 98, baseType: !831, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !827, line: 24, size: 3072, elements: !833)
!833 = !{!834, !836, !837, !838, !839, !863, !864, !865, !866, !884, !895, !896, !907, !908, !909}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !832, file: !827, line: 26, baseType: !835, size: 128)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !629, size: 128, elements: !744)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !832, file: !827, line: 27, baseType: !835, size: 128, offset: 128)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !832, file: !827, line: 28, baseType: !85, size: 32, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !832, file: !827, line: 31, baseType: !215, size: 32, align: 512, offset: 512)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !832, file: !827, line: 32, baseType: !840, size: 960, offset: 576)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !841, line: 206, size: 960, elements: !842)
!841 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!842 = !{!843, !852, !857, !859, !860, !862}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !840, file: !841, line: 207, baseType: !844, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !184, line: 232, size: 128, align: 64, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !845, file: !184, line: 233, baseType: !844, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !845, file: !184, line: 234, baseType: !849, size: 64, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{null, !844}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !840, file: !841, line: 208, baseType: !853, size: 256, offset: 64)
!853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !854, size: 256, elements: !855)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!855 = !{!856}
!856 = !DISubrange(count: 4)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !840, file: !841, line: 209, baseType: !858, size: 256, offset: 320)
!858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !855)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !840, file: !841, line: 213, baseType: !321, size: 64, offset: 576)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !840, file: !841, line: 215, baseType: !861, size: 256, offset: 640)
!861 = !DICompositeType(tag: DW_TAG_array_type, baseType: !321, size: 256, elements: !855)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !841, line: 216, baseType: !243, size: 8, offset: 896)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !832, file: !827, line: 33, baseType: !185, size: 64, offset: 1536)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !832, file: !827, line: 34, baseType: !185, size: 64, offset: 1600)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !832, file: !827, line: 35, baseType: !705, size: 8, offset: 1664)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !832, file: !827, line: 36, baseType: !867, size: 320, offset: 1728)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !868, line: 11, size: 320, elements: !869)
!868 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!869 = !{!870, !877, !878, !883}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !867, file: !868, line: 16, baseType: !871, size: 128)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !184, line: 198, size: 128, elements: !872)
!872 = !{!873, !875}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !871, file: !184, line: 199, baseType: !874, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !871, file: !184, line: 199, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !867, file: !868, line: 17, baseType: !185, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !867, file: !868, line: 18, baseType: !879, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !867, file: !868, line: 19, baseType: !433, size: 32, offset: 256)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !832, file: !827, line: 37, baseType: !885, size: 256, offset: 2048)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !124, line: 98, size: 256, elements: !886)
!886 = !{!887, !888, !889}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !885, file: !124, line: 99, baseType: !629, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !885, file: !124, line: 100, baseType: !202, size: 128, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !885, file: !124, line: 101, baseType: !890, size: 64, offset: 192)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !124, line: 21, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !894}
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !832, file: !827, line: 38, baseType: !845, size: 128, align: 64, offset: 2304)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !832, file: !827, line: 39, baseType: !897, size: 64, offset: 2432)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !827, line: 49, size: 768, elements: !899)
!899 = !{!900, !901, !902, !903, !904, !905, !906}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !898, file: !827, line: 50, baseType: !215, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !898, file: !827, line: 51, baseType: !858, size: 256, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !898, file: !827, line: 53, baseType: !858, size: 256, offset: 320)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !898, file: !827, line: 54, baseType: !185, size: 64, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !898, file: !827, line: 55, baseType: !897, size: 64, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !898, file: !827, line: 56, baseType: !85, size: 32, offset: 704)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !898, file: !827, line: 57, baseType: !85, size: 32, offset: 736)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !832, file: !827, line: 40, baseType: !185, size: 64, offset: 2496)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !832, file: !827, line: 42, baseType: !85, size: 32, offset: 2560)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !832, file: !827, line: 43, baseType: !825, size: 64, offset: 2624)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !826, file: !827, line: 99, baseType: !911, offset: 128)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !912, line: 211, elements: !913)
!912 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!913 = !{}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !826, file: !827, line: 100, baseType: !915, size: 64, offset: 128)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !827, line: 63, size: 3008, elements: !917)
!917 = !{!918, !919, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !933, !934, !935, !936, !937, !938, !939, !940, !949}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !916, file: !827, line: 64, baseType: !897, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !916, file: !827, line: 65, baseType: !920, size: 192, offset: 64)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 192, elements: !286)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !916, file: !827, line: 67, baseType: !85, size: 32, offset: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !916, file: !827, line: 68, baseType: !625, size: 256, offset: 320)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !916, file: !827, line: 69, baseType: !215, size: 32, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !916, file: !827, line: 70, baseType: !625, size: 256, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !916, file: !827, line: 71, baseType: !185, size: 64, offset: 896)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !916, file: !827, line: 72, baseType: !185, size: 64, offset: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !916, file: !827, line: 73, baseType: !185, size: 64, offset: 1024)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !916, file: !827, line: 74, baseType: !185, size: 64, offset: 1088)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !916, file: !827, line: 75, baseType: !185, size: 64, offset: 1152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !916, file: !827, line: 76, baseType: !185, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !916, file: !827, line: 77, baseType: !185, size: 64, offset: 1280)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !916, file: !827, line: 78, baseType: !185, size: 64, offset: 1344)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !916, file: !827, line: 79, baseType: !705, size: 8, offset: 1408)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !916, file: !827, line: 80, baseType: !185, size: 64, offset: 1472)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !916, file: !827, line: 81, baseType: !625, size: 256, offset: 1536)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !916, file: !827, line: 82, baseType: !574, size: 256, offset: 1792)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !916, file: !827, line: 84, baseType: !235, size: 32, offset: 2048)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !916, file: !827, line: 87, baseType: !185, size: 64, offset: 2112)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !916, file: !827, line: 88, baseType: !185, size: 64, offset: 2176)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !916, file: !827, line: 89, baseType: !941, size: 704, offset: 2240)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !124, line: 111, size: 704, elements: !942)
!942 = !{!943, !944, !945, !948}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !941, file: !124, line: 112, baseType: !885, size: 256)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !941, file: !124, line: 113, baseType: !867, size: 320, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !941, file: !124, line: 116, baseType: !946, size: 64, offset: 576)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !124, line: 18, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !941, file: !124, line: 117, baseType: !85, size: 32, offset: 640)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !916, file: !827, line: 90, baseType: !825, size: 64, offset: 2944)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !555, file: !6, line: 515, baseType: !951, size: 64, offset: 8064)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !953, line: 117, size: 128, elements: !954)
!953 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !952, file: !953, line: 118, baseType: !621, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !952, file: !953, line: 119, baseType: !621, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !952, file: !953, line: 120, baseType: !321, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !555, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !555, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !555, file: !6, line: 520, baseType: !961, size: 64, offset: 8192)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !555, file: !6, line: 523, baseType: !963, size: 64, offset: 8256)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !555, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !555, file: !6, line: 525, baseType: !968, size: 64, offset: 8384)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !555, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !555, file: !6, line: 533, baseType: !182, size: 64, offset: 8512)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !555, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !555, file: !6, line: 535, baseType: !975, size: 64, offset: 8640)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !555, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !555, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !555, file: !6, line: 540, baseType: !979, size: 64, offset: 8768)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !981, line: 32, size: 64, elements: !982)
!981 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !980, file: !981, line: 33, baseType: !621, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !980, file: !981, line: 34, baseType: !621, size: 32, offset: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !555, file: !6, line: 563, baseType: !202, size: 128, offset: 8832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !555, file: !6, line: 565, baseType: !202, size: 128, offset: 8960)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !555, file: !6, line: 568, baseType: !988, size: 64, offset: 9088)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !555, file: !6, line: 570, baseType: !235, size: 32, offset: 9152)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !530, file: !14, line: 2382, baseType: !529, size: 64, offset: 448)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !530, file: !14, line: 2383, baseType: !994, size: 64, offset: 512)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !184, line: 194, size: 64, elements: !995)
!995 = !{!996}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !994, file: !184, line: 195, baseType: !874, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !530, file: !14, line: 2385, baseType: !998, offset: 576)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !912, line: 206, elements: !913)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !530, file: !14, line: 2386, baseType: !998, offset: 576)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !530, file: !14, line: 2387, baseType: !998, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !530, file: !14, line: 2388, baseType: !1002, offset: 576)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !998, elements: !286)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !530, file: !14, line: 2390, baseType: !998, offset: 576)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !530, file: !14, line: 2391, baseType: !998, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !530, file: !14, line: 2392, baseType: !998, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !530, file: !14, line: 2393, baseType: !998, offset: 576)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !516, file: !14, line: 1197, baseType: !1008, size: 64, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !1011)
!1011 = !{!1012, !1016, !1020, !1021, !1025, !1031, !1035, !1036, !1037, !1041, !1045, !1049, !1050, !1051, !1057, !1061, !1062, !1794, !1795, !1796, !1797, !1801, !1805, !1852, !1867, !1868}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1010, file: !14, line: 2058, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!364, !515}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1010, file: !14, line: 2059, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DISubroutineType(types: !1019)
!1019 = !{null, !364}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1010, file: !14, line: 2060, baseType: !1017, size: 64, offset: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1010, file: !14, line: 2062, baseType: !1022, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{null, !364, !85}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1010, file: !14, line: 2063, baseType: !1026, size: 64, offset: 256)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!85, !364, !1029}
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1010, file: !14, line: 2064, baseType: !1032, size: 64, offset: 320)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!85, !364}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1010, file: !14, line: 2065, baseType: !1017, size: 64, offset: 384)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1010, file: !14, line: 2066, baseType: !550, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1010, file: !14, line: 2067, baseType: !1038, size: 64, offset: 512)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!85, !515, !85}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1010, file: !14, line: 2068, baseType: !1042, size: 64, offset: 576)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!85, !515, !13}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1010, file: !14, line: 2069, baseType: !1046, size: 64, offset: 640)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!85, !515}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1010, file: !14, line: 2070, baseType: !1042, size: 64, offset: 704)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1010, file: !14, line: 2071, baseType: !1046, size: 64, offset: 768)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1010, file: !14, line: 2072, baseType: !1052, size: 64, offset: 832)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!85, !399, !1055}
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1010, file: !14, line: 2073, baseType: !1058, size: 64, offset: 896)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!85, !515, !754, !285}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1010, file: !14, line: 2074, baseType: !550, size: 64, offset: 960)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1010, file: !14, line: 2076, baseType: !1063, size: 64, offset: 1024)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!85, !1066, !399}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1068, line: 17, size: 960, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1100, !1101, !1793}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1067, file: !1068, line: 18, baseType: !285, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1067, file: !1068, line: 19, baseType: !332, size: 64, offset: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1067, file: !1068, line: 20, baseType: !332, size: 64, offset: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1067, file: !1068, line: 21, baseType: !332, size: 64, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1067, file: !1068, line: 22, baseType: !332, size: 64, offset: 256)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1067, file: !1068, line: 23, baseType: !525, size: 64, offset: 320)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1067, file: !1068, line: 24, baseType: !525, size: 64, offset: 384)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1067, file: !1068, line: 25, baseType: !625, size: 256, offset: 448)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1067, file: !1068, line: 26, baseType: !1079, size: 64, offset: 704)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1081)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1068, line: 32, size: 256, elements: !1082)
!1082 = !{!1083, !1088, !1092, !1096}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1081, file: !1068, line: 33, baseType: !1084, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{!182, !1066, !1087}
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1081, file: !1068, line: 34, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !1066, !182}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1081, file: !1068, line: 35, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!182, !1066, !182, !1087}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1081, file: !1068, line: 36, baseType: !1097, size: 64, offset: 192)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!85, !1066, !182}
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1067, file: !1068, line: 27, baseType: !85, size: 32, offset: 768)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1067, file: !1068, line: 28, baseType: !1102, size: 64, offset: 832)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1104)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1105)
!1105 = !{!1106, !1117, !1118, !1120, !1121, !1122, !1123, !1124, !1185, !1385, !1394, !1400, !1401, !1783, !1784, !1785, !1786, !1788, !1789, !1792}
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !14, line: 995, baseType: !1107, size: 128)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !14, line: 995, size: 128, elements: !1108)
!1108 = !{!1109, !1115, !1116}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1107, file: !14, line: 996, baseType: !1110, size: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1111, line: 60, size: 64, elements: !1112)
!1111 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1112 = !{!1113}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1110, file: !1111, line: 61, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1107, file: !14, line: 997, baseType: !845, size: 128, align: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1107, file: !14, line: 998, baseType: !7, size: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1104, file: !14, line: 1005, baseType: !215, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1104, file: !14, line: 1006, baseType: !1119, size: 32, offset: 160)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !184, line: 156, baseType: !7)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1104, file: !14, line: 1007, baseType: !629, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1104, file: !14, line: 1008, baseType: !625, size: 256, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1104, file: !14, line: 1009, baseType: !525, size: 64, offset: 512)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1104, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1104, file: !14, line: 1011, baseType: !1125, size: 256, offset: 640)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1126)
!1126 = !{!1127, !1148, !1181, !1182, !1183, !1184}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1125, file: !14, line: 949, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1129, line: 34, baseType: !1130)
!1129 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1129, line: 25, size: 64, elements: !1131)
!1131 = !{!1132}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1130, file: !1129, line: 26, baseType: !1133, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1134, line: 27, baseType: !1135)
!1134 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1134, line: 13, size: 64, elements: !1136)
!1136 = !{!1137, !1147}
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1135, file: !1134, line: 14, baseType: !1138, size: 32)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1135, file: !1134, line: 14, size: 32, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1138, file: !1134, line: 15, baseType: !235, size: 32)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1134, line: 16, baseType: !1142, size: 32)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1134, line: 16, size: 32, elements: !1143)
!1143 = !{!1144, !1145}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1142, file: !1134, line: 18, baseType: !243, size: 8)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1142, file: !1134, line: 19, baseType: !1146, size: 24, offset: 8)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 24, elements: !286)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1135, file: !1134, line: 26, baseType: !227, size: 32, offset: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1125, file: !14, line: 950, baseType: !1149, size: 64, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !1151)
!1151 = !{!1152, !1158, !1159, !1160, !1162, !1163, !1170, !1171}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1150, file: !19, line: 61, baseType: !1153, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1154, line: 113, baseType: !1155)
!1154 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1154, line: 111, size: 32, elements: !1156)
!1156 = !{!1157}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1155, file: !1154, line: 112, baseType: !235, size: 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1150, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1150, file: !19, line: 63, baseType: !215, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1150, file: !19, line: 65, baseType: !1161, size: 256, offset: 128)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !994, size: 256, elements: !855)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1150, file: !19, line: 66, baseType: !994, size: 64, offset: 384)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1150, file: !19, line: 68, baseType: !1164, size: 192, offset: 448)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1165, line: 41, baseType: !1166)
!1165 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1165, line: 37, size: 192, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1166, file: !1165, line: 38, baseType: !215, size: 32)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1166, file: !1165, line: 39, baseType: !202, size: 128, offset: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1150, file: !19, line: 69, baseType: !845, size: 128, align: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1150, file: !19, line: 70, baseType: !1172, offset: 768)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, elements: !1179)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !1174)
!1174 = !{!1175, !1176}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1173, file: !19, line: 55, baseType: !85, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1173, file: !19, line: 56, baseType: !1177, size: 64, offset: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!1179 = !{!1180}
!1180 = !DISubrange(count: -1)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1125, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1125, file: !14, line: 952, baseType: !370, size: 32, offset: 160)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1125, file: !14, line: 952, baseType: !370, size: 32, offset: 192)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1125, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1104, file: !14, line: 1012, baseType: !1186, size: 64, offset: 896)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1189, line: 110, size: 1472, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1190 = !{!1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1207, !1208, !1209, !1210, !1211, !1212, !1330, !1331, !1332, !1333, !1334, !1365, !1368, !1372, !1380}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1188, file: !1189, line: 111, baseType: !629, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1188, file: !1189, line: 112, baseType: !370, size: 32, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1188, file: !1189, line: 113, baseType: !379, size: 32, offset: 96)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1188, file: !1189, line: 114, baseType: !370, size: 32, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1188, file: !1189, line: 115, baseType: !379, size: 32, offset: 160)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1188, file: !1189, line: 116, baseType: !370, size: 32, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1188, file: !1189, line: 117, baseType: !379, size: 32, offset: 224)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1188, file: !1189, line: 118, baseType: !370, size: 32, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1188, file: !1189, line: 119, baseType: !379, size: 32, offset: 288)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1188, file: !1189, line: 120, baseType: !7, size: 32, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1188, file: !1189, line: 121, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1203, line: 24, baseType: !1204)
!1203 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1203, line: 24, size: 64, elements: !1205)
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1204, file: !1203, line: 24, baseType: !437, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1188, file: !1189, line: 122, baseType: !1202, size: 64, offset: 448)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1188, file: !1189, line: 123, baseType: !1202, size: 64, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1188, file: !1189, line: 124, baseType: !1202, size: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1188, file: !1189, line: 125, baseType: !1202, size: 64, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1188, file: !1189, line: 127, baseType: !247, size: 8, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1188, file: !1189, line: 129, baseType: !1213, size: 64, offset: 768)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1215, line: 195, size: 1728, elements: !1216)
!1215 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1216 = !{!1217, !1218, !1221, !1226, !1235, !1238, !1239, !1246, !1247, !1248, !1249, !1252, !1253, !1254, !1255, !1256, !1294, !1315}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1214, file: !1215, line: 196, baseType: !1153, size: 32)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1214, file: !1215, line: 197, baseType: !1219, size: 32, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1215, line: 28, baseType: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !184, line: 104, baseType: !621)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 198, baseType: !1222, size: 192, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 198, size: 192, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1222, file: !1215, line: 199, baseType: !202, size: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1222, file: !1215, line: 200, baseType: !737, size: 192, align: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1214, file: !1215, line: 205, baseType: !1227, size: 320, offset: 256)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1228, line: 48, size: 320, elements: !1229)
!1228 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1229 = !{!1230, !1231, !1232, !1233, !1234}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1227, file: !1228, line: 49, baseType: !629, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1227, file: !1228, line: 55, baseType: !629, size: 64, offset: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1227, file: !1228, line: 57, baseType: !639, size: 32, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1227, file: !1228, line: 59, baseType: !583, size: 32, offset: 160)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1227, file: !1228, line: 60, baseType: !202, size: 128, offset: 192)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1214, file: !1215, line: 206, baseType: !1236, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1215, line: 206, flags: DIFlagFwdDecl)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1214, file: !1215, line: 207, baseType: !182, size: 64, offset: 640)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 208, baseType: !1240, size: 64, offset: 704)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 208, size: 64, elements: !1241)
!1241 = !{!1242, !1245}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1240, file: !1215, line: 209, baseType: !1243, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1244, line: 8, baseType: !636)
!1244 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1240, file: !1215, line: 210, baseType: !1243, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1214, file: !1215, line: 212, baseType: !1243, size: 64, offset: 768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1214, file: !1215, line: 213, baseType: !370, size: 32, offset: 832)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1214, file: !1215, line: 214, baseType: !379, size: 32, offset: 864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1214, file: !1215, line: 215, baseType: !1250, size: 32, offset: 896)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1215, line: 31, baseType: !1251)
!1251 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !184, line: 110, baseType: !433)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1214, file: !1215, line: 216, baseType: !255, size: 16, offset: 928)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1214, file: !1215, line: 217, baseType: !255, size: 16, offset: 944)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1214, file: !1215, line: 221, baseType: !763, size: 16, offset: 960)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1214, file: !1215, line: 228, baseType: !185, size: 64, offset: 1024)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 245, baseType: !1257, size: 320, offset: 1088)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 245, size: 320, elements: !1258)
!1258 = !{!1259, !1286}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1257, file: !1215, line: 246, baseType: !1260, size: 320)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1215, line: 114, size: 320, elements: !1261)
!1261 = !{!1262, !1263, !1275, !1278, !1285}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1260, file: !1215, line: 116, baseType: !185, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !1215, line: 117, baseType: !1264, size: 64, offset: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1260, file: !1215, line: 117, size: 64, elements: !1265)
!1265 = !{!1266, !1274}
!1266 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !1215, line: 118, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !1215, line: 118, size: 64, elements: !1268)
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1267, file: !1215, line: 120, baseType: !253, size: 16)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1267, file: !1215, line: 121, baseType: !1271, size: 48, offset: 16)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 48, elements: !1272)
!1272 = !{!1273}
!1273 = !DISubrange(count: 6)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1264, file: !1215, line: 127, baseType: !185, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1260, file: !1215, line: 129, baseType: !1276, size: 64, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1215, line: 102, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1260, file: !1215, line: 130, baseType: !1279, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1215, line: 108, size: 192, elements: !1281)
!1281 = !{!1282, !1283, !1284}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1280, file: !1215, line: 109, baseType: !845, size: 128, align: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1280, file: !1215, line: 110, baseType: !1153, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1280, file: !1215, line: 111, baseType: !705, size: 8, offset: 160)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1260, file: !1215, line: 131, baseType: !198, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !1215, line: 247, baseType: !1287, size: 320)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !1215, line: 247, size: 320, elements: !1288)
!1288 = !{!1289, !1290, !1291, !1292, !1293}
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1287, file: !1215, line: 248, baseType: !185, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1287, file: !1215, line: 249, baseType: !185, size: 64, offset: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1287, file: !1215, line: 250, baseType: !1276, size: 64, offset: 128)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1287, file: !1215, line: 251, baseType: !1279, size: 64, offset: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1287, file: !1215, line: 252, baseType: !285, size: 64, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1215, line: 260, baseType: !1295, size: 256, offset: 1408)
!1295 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1215, line: 260, size: 256, elements: !1296)
!1296 = !{!1297, !1303}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1295, file: !1215, line: 261, baseType: !1298, size: 256)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1215, line: 134, size: 256, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1298, file: !1215, line: 135, baseType: !182, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1298, file: !1215, line: 136, baseType: !1302, size: 256)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !855)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1295, file: !1215, line: 262, baseType: !1304, size: 256)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1295, file: !1215, line: 262, size: 256, elements: !1305)
!1305 = !{!1306, !1307}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1304, file: !1215, line: 264, baseType: !202, size: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1304, file: !1215, line: 265, baseType: !1308, size: 128, offset: 128)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1309, line: 22, size: 128, elements: !1310)
!1309 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1310 = !{!1311, !1314}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1308, file: !1309, line: 23, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1309, line: 23, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1308, file: !1309, line: 24, baseType: !185, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1214, file: !1215, line: 280, baseType: !1316, size: 64, offset: 1664)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1215, line: 176, size: 192, elements: !1318)
!1318 = !{!1319, !1328, !1329}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1317, file: !1215, line: 177, baseType: !1320, size: 64)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1215, line: 171, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!85, !1213, !1324, !1326, !1213}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1298)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1317, file: !1215, line: 178, baseType: !1213, size: 64, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1317, file: !1215, line: 179, baseType: !1276, size: 64, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1188, file: !1189, line: 130, baseType: !1213, size: 64, offset: 832)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1188, file: !1189, line: 131, baseType: !1213, size: 64, offset: 896)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1188, file: !1189, line: 132, baseType: !1213, size: 64, offset: 960)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1188, file: !1189, line: 135, baseType: !182, size: 64, offset: 1024)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1188, file: !1189, line: 137, baseType: !1335, size: 64, offset: 1088)
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1337, line: 14, size: 1088, elements: !1338)
!1337 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1338 = !{!1339, !1340, !1349, !1350, !1351, !1352, !1353, !1354}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1336, file: !1337, line: 15, baseType: !1153, size: 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1336, file: !1337, line: 17, baseType: !1341, size: 320, offset: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1342, line: 22, size: 320, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1343 = !{!1344, !1345, !1346, !1347}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !1342, line: 23, baseType: !583, size: 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1341, file: !1342, line: 24, baseType: !635, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1341, file: !1342, line: 26, baseType: !202, size: 128, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1341, file: !1342, line: 28, baseType: !1348, size: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1336, file: !1337, line: 19, baseType: !185, size: 64, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1336, file: !1337, line: 20, baseType: !629, size: 64, offset: 448)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1336, file: !1337, line: 23, baseType: !871, size: 128, offset: 512)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1336, file: !1337, line: 24, baseType: !370, size: 32, offset: 640)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1336, file: !1337, line: 29, baseType: !629, size: 64, offset: 704)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1336, file: !1337, line: 36, baseType: !1355, size: 320, offset: 768)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1356, line: 15, size: 320, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1363, !1364}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !1356, line: 16, baseType: !583, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1355, file: !1356, line: 18, baseType: !85, size: 32, offset: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1355, file: !1356, line: 19, baseType: !85, size: 32, offset: 64)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1355, file: !1356, line: 20, baseType: !85, size: 32, offset: 96)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1355, file: !1356, line: 21, baseType: !85, size: 32, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1355, file: !1356, line: 22, baseType: !185, size: 64, offset: 192)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1355, file: !1356, line: 23, baseType: !185, size: 64, offset: 256)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1188, file: !1189, line: 138, baseType: !1366, size: 64, offset: 1152)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !371, line: 18, flags: DIFlagFwdDecl)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1188, file: !1189, line: 139, baseType: !1369, size: 64, offset: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1371, line: 16, flags: DIFlagFwdDecl)
!1371 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1188, file: !1189, line: 140, baseType: !1373, size: 64, offset: 1280)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1189, line: 25, size: 64, elements: !1375)
!1375 = !{!1376, !1377, !1378}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1374, file: !1189, line: 26, baseType: !235, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1374, file: !1189, line: 27, baseType: !85, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1374, file: !1189, line: 28, baseType: !1379, offset: 64)
!1379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, elements: !1179)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1188, file: !1189, line: 142, baseType: !1381, size: 128, offset: 1344)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1188, file: !1189, line: 142, size: 128, elements: !1382)
!1382 = !{!1383, !1384}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1381, file: !1189, line: 143, baseType: !85, size: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1381, file: !1189, line: 144, baseType: !845, size: 128, align: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1104, file: !14, line: 1013, baseType: !1386, size: 256, offset: 960)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1386, file: !14, line: 971, baseType: !185, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1386, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1386, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1386, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1386, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1386, file: !14, line: 976, baseType: !525, size: 64, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1104, file: !14, line: 1014, baseType: !1395, size: 128, offset: 1216)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1396, line: 8, size: 128, elements: !1397)
!1396 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1397 = !{!1398, !1399}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1395, file: !1396, line: 9, baseType: !509, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1395, file: !1396, line: 10, baseType: !399, size: 64, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1104, file: !14, line: 1015, baseType: !364, size: 64, offset: 1344)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1104, file: !14, line: 1016, baseType: !1402, size: 64, offset: 1408)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1404)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1405)
!1405 = !{!1406, !1407, !1412, !1416, !1420, !1448, !1449, !1455, !1468, !1485, !1489, !1490, !1704, !1705, !1709, !1714, !1715, !1719, !1723, !1729, !1730, !1734, !1735, !1742, !1746, !1750, !1756, !1760, !1764, !1768, !1772, !1773, !1779}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1404, file: !14, line: 1915, baseType: !554, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1404, file: !14, line: 1916, baseType: !1408, size: 64, offset: 64)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!525, !1411, !525, !85}
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1404, file: !14, line: 1917, baseType: !1413, size: 64, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!317, !1411, !285, !332, !1087}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1404, file: !14, line: 1918, baseType: !1417, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!317, !1411, !198, !332, !1087}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1404, file: !14, line: 1919, baseType: !1421, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!317, !1424, !1446}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1426)
!1426 = !{!1427, !1428, !1429, !1433, !1434, !1435, !1436}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1425, file: !14, line: 374, baseType: !1411, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1425, file: !14, line: 375, baseType: !525, size: 64, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1425, file: !14, line: 376, baseType: !1430, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !1424, !321}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1425, file: !14, line: 377, baseType: !182, size: 64, offset: 192)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1425, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1425, file: !14, line: 379, baseType: !253, size: 16, offset: 288)
!1436 = !DIDerivedType(tag: DW_TAG_member, scope: !1425, file: !14, line: 380, baseType: !1437, size: 64, offset: 320)
!1437 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1425, file: !14, line: 380, size: 64, elements: !1438)
!1438 = !{!1439, !1442}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1437, file: !14, line: 386, baseType: !1440, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1437, file: !14, line: 395, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1444, size: 64)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!317, !182}
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1404, file: !14, line: 1920, baseType: !1421, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1404, file: !14, line: 1921, baseType: !1450, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!85, !1424, !1453, !7}
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1404, file: !14, line: 1923, baseType: !1456, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!85, !1411, !1459}
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1461)
!1461 = !{!1462, !1467}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1460, file: !14, line: 1859, baseType: !1463, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!705, !1459, !198, !85, !525, !437, !7}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1460, file: !14, line: 1860, baseType: !525, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1404, file: !14, line: 1924, baseType: !1469, size: 64, offset: 512)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1472, !1411, !1474}
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1473, line: 59, baseType: !7)
!1473 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1476, line: 37, size: 128, elements: !1477)
!1476 = !DIFile(filename: "./include/linux/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "377ffc2dcb5165d3eba041ceb264139e")
!1477 = !{!1478, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "_qproc", scope: !1475, file: !1476, line: 38, baseType: !1479, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "poll_queue_proc", file: !1476, line: 31, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{null, !1411, !1483, !1474}
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "_key", scope: !1475, file: !1476, line: 39, baseType: !1472, size: 32, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1404, file: !14, line: 1925, baseType: !1486, size: 64, offset: 576)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DISubroutineType(types: !1488)
!1488 = !{!321, !1411, !7, !185}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1404, file: !14, line: 1926, baseType: !1486, size: 64, offset: 640)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1404, file: !14, line: 1927, baseType: !1491, size: 64, offset: 704)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!85, !1411, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1496, line: 625, size: 1344, elements: !1497)
!1496 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1497 = !{!1498, !1507, !1662, !1668, !1675, !1676, !1681, !1682, !1687, !1688, !1691, !1695, !1696, !1697, !1698, !1699, !1702}
!1498 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1496, line: 628, baseType: !1499, size: 128)
!1499 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !1496, line: 628, size: 128, elements: !1500)
!1500 = !{!1501, !1506}
!1501 = !DIDerivedType(tag: DW_TAG_member, scope: !1499, file: !1496, line: 629, baseType: !1502, size: 128)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1499, file: !1496, line: 629, size: 128, elements: !1503)
!1503 = !{!1504, !1505}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1502, file: !1496, line: 631, baseType: !185, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1502, file: !1496, line: 632, baseType: !185, size: 64, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1499, file: !1496, line: 635, baseType: !845, size: 128, align: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1495, file: !1496, line: 639, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1496, line: 733, size: 10240, elements: !1510)
!1510 = !{!1511, !1660}
!1511 = !DIDerivedType(tag: DW_TAG_member, scope: !1509, file: !1496, line: 734, baseType: !1512, size: 10240)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1509, file: !1496, line: 734, size: 10240, elements: !1513)
!1513 = !{!1514, !1518, !1531, !1535, !1536, !1537, !1538, !1539, !1540, !1549, !1550, !1551, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1590, !1592, !1595, !1640, !1641, !1642, !1645, !1646, !1647, !1650, !1651, !1652, !1658, !1659}
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1512, file: !1496, line: 739, baseType: !1515, size: 512, align: 512)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1512, file: !1496, line: 739, size: 512, align: 512, elements: !1516)
!1516 = !{!1517}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1515, file: !1496, line: 747, baseType: !235, size: 32)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1512, file: !1496, line: 750, baseType: !1519, size: 128, offset: 512)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1520, line: 218, size: 128, elements: !1521)
!1520 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1521 = !{!1522, !1529, !1530}
!1522 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !1520, line: 219, baseType: !1523, size: 32)
!1523 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !1520, line: 219, size: 32, elements: !1524)
!1524 = !{!1525, !1526}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1523, file: !1520, line: 220, baseType: !215, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1523, file: !1520, line: 221, baseType: !1527)
!1527 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1520, line: 197, baseType: !1528)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 197, elements: !913)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1519, file: !1520, line: 223, baseType: !7, size: 32, offset: 32)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1519, file: !1520, line: 224, baseType: !182, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1512, file: !1496, line: 752, baseType: !1532, size: 64, offset: 640)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!185, !1411, !185, !185, !185, !185}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1512, file: !1496, line: 756, baseType: !185, size: 64, offset: 704)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1512, file: !1496, line: 757, baseType: !185, size: 64, offset: 768)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1512, file: !1496, line: 760, baseType: !185, size: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1512, file: !1496, line: 761, baseType: !185, size: 64, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1512, file: !1496, line: 763, baseType: !185, size: 64, offset: 960)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1512, file: !1496, line: 764, baseType: !1541, size: 64, offset: 1024)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1543, line: 299, baseType: !1544)
!1543 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1543, line: 299, size: 64, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1544, file: !1543, line: 299, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1548, line: 18, baseType: !185)
!1548 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1512, file: !1496, line: 773, baseType: !235, size: 32, offset: 1088)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1512, file: !1496, line: 785, baseType: !235, size: 32, offset: 1120)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1512, file: !1496, line: 795, baseType: !1552, size: 64, offset: 1152)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1496, line: 726, size: 128, elements: !1554)
!1554 = !{!1555, !1556}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1553, file: !1496, line: 727, baseType: !437, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1553, file: !1496, line: 728, baseType: !85, size: 32, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1512, file: !1496, line: 801, baseType: !185, size: 64, offset: 1216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1512, file: !1496, line: 804, baseType: !629, size: 64, offset: 1280)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1512, file: !1496, line: 806, baseType: !85, size: 32, offset: 1344)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1512, file: !1496, line: 808, baseType: !215, size: 32, offset: 1376)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1512, file: !1496, line: 823, baseType: !1227, size: 320, offset: 1408)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1512, file: !1496, line: 825, baseType: !202, size: 128, offset: 1728)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1512, file: !1496, line: 845, baseType: !85, size: 32, offset: 1856)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1512, file: !1496, line: 849, baseType: !185, size: 64, offset: 1920)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1512, file: !1496, line: 850, baseType: !185, size: 64, offset: 1984)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1512, file: !1496, line: 852, baseType: !185, size: 64, offset: 2048)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1512, file: !1496, line: 853, baseType: !185, size: 64, offset: 2112)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1512, file: !1496, line: 854, baseType: !631, size: 64, offset: 2176)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1512, file: !1496, line: 855, baseType: !185, size: 64, offset: 2240)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1512, file: !1496, line: 856, baseType: !185, size: 64, offset: 2304)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1512, file: !1496, line: 857, baseType: !185, size: 64, offset: 2368)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1512, file: !1496, line: 858, baseType: !185, size: 64, offset: 2432)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1512, file: !1496, line: 865, baseType: !410, size: 32, offset: 2496)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1512, file: !1496, line: 867, baseType: !215, size: 32, offset: 2528)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1512, file: !1496, line: 869, baseType: !185, size: 64, offset: 2560)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1512, file: !1496, line: 869, baseType: !185, size: 64, offset: 2624)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1512, file: !1496, line: 869, baseType: !185, size: 64, offset: 2688)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1512, file: !1496, line: 869, baseType: !185, size: 64, offset: 2752)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1512, file: !1496, line: 870, baseType: !185, size: 64, offset: 2816)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1512, file: !1496, line: 870, baseType: !185, size: 64, offset: 2880)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1512, file: !1496, line: 870, baseType: !185, size: 64, offset: 2944)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1512, file: !1496, line: 871, baseType: !185, size: 64, offset: 3008)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1512, file: !1496, line: 871, baseType: !185, size: 64, offset: 3072)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1512, file: !1496, line: 871, baseType: !185, size: 64, offset: 3136)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1512, file: !1496, line: 871, baseType: !185, size: 64, offset: 3200)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1512, file: !1496, line: 873, baseType: !1587, size: 3328, offset: 3264)
!1587 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 3328, elements: !1588)
!1588 = !{!1589}
!1589 = !DISubrange(count: 52)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1512, file: !1496, line: 875, baseType: !1591, size: 1280, offset: 6592)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1341, size: 1280, elements: !855)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1512, file: !1496, line: 877, baseType: !1593, size: 64, offset: 7872)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1496, line: 877, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1512, file: !1496, line: 880, baseType: !1596, size: 1088, offset: 7936)
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1597, line: 72, baseType: !1598)
!1597 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1597, line: 23, size: 1088, elements: !1599)
!1599 = !{!1600, !1601, !1602, !1603, !1604, !1607, !1608, !1609, !1610, !1637, !1638, !1639}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1598, file: !1597, line: 28, baseType: !437, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1598, file: !1597, line: 38, baseType: !631, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1598, file: !1597, line: 40, baseType: !185, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1598, file: !1597, line: 43, baseType: !1227, size: 320, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1598, file: !1597, line: 44, baseType: !1605, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1597, line: 44, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1598, file: !1597, line: 48, baseType: !185, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1598, file: !1597, line: 59, baseType: !625, size: 256, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1598, file: !1597, line: 60, baseType: !182, size: 64, offset: 896)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1598, file: !1597, line: 61, baseType: !1611, size: 64, offset: 960)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1614, line: 13, size: 1216, elements: !1615)
!1614 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1615 = !{!1616, !1617, !1618, !1619, !1620, !1621, !1622, !1625, !1626, !1627, !1628, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1613, file: !1614, line: 14, baseType: !182, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1613, file: !1614, line: 15, baseType: !185, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1613, file: !1614, line: 17, baseType: !185, size: 64, offset: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1613, file: !1614, line: 17, baseType: !185, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1613, file: !1614, line: 18, baseType: !185, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1613, file: !1614, line: 18, baseType: !185, size: 64, offset: 320)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1613, file: !1614, line: 19, baseType: !1623, size: 64, offset: 384)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1613, file: !1614, line: 21, baseType: !321, size: 64, offset: 448)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1613, file: !1614, line: 23, baseType: !321, size: 64, offset: 512)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1613, file: !1614, line: 24, baseType: !321, size: 64, offset: 576)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1613, file: !1614, line: 25, baseType: !321, size: 64, offset: 640)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1613, file: !1614, line: 26, baseType: !321, size: 64, offset: 704)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1613, file: !1614, line: 27, baseType: !321, size: 64, offset: 768)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1613, file: !1614, line: 28, baseType: !321, size: 64, offset: 832)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1613, file: !1614, line: 29, baseType: !321, size: 64, offset: 896)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1613, file: !1614, line: 30, baseType: !321, size: 64, offset: 960)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1613, file: !1614, line: 31, baseType: !321, size: 64, offset: 1024)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1613, file: !1614, line: 32, baseType: !321, size: 64, offset: 1088)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1613, file: !1614, line: 33, baseType: !321, size: 64, offset: 1152)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1598, file: !1597, line: 63, baseType: !235, size: 32, offset: 1024)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1598, file: !1597, line: 69, baseType: !253, size: 16, offset: 1056)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1598, file: !1597, line: 70, baseType: !761, size: 16, offset: 1072)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1512, file: !1496, line: 882, baseType: !185, size: 64, offset: 9024)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1512, file: !1496, line: 885, baseType: !215, size: 32, offset: 9088)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1512, file: !1496, line: 886, baseType: !1643, size: 64, offset: 9152)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1496, line: 732, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1512, file: !1496, line: 901, baseType: !1366, size: 64, offset: 9216)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1512, file: !1496, line: 904, baseType: !1411, size: 64, offset: 9280)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1512, file: !1496, line: 906, baseType: !1648, size: 64, offset: 9344)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1496, line: 906, flags: DIFlagFwdDecl)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1512, file: !1496, line: 930, baseType: !235, size: 32, offset: 9408)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1512, file: !1496, line: 933, baseType: !235, size: 32, offset: 9440)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1512, file: !1496, line: 935, baseType: !1653, size: 64, offset: 9472)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1654)
!1654 = !{!1655}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1653, file: !44, line: 104, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1512, file: !1496, line: 940, baseType: !629, size: 64, offset: 9536)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1512, file: !1496, line: 942, baseType: !885, size: 256, offset: 9600)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1509, file: !1496, line: 986, baseType: !1661, offset: 10240)
!1661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, elements: !1179)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1495, file: !1496, line: 640, baseType: !1663, size: 64, offset: 192)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1543, line: 297, baseType: !1664)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1543, line: 297, size: 64, elements: !1665)
!1665 = !{!1666}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1664, file: !1543, line: 297, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1548, line: 19, baseType: !185)
!1668 = !DIDerivedType(tag: DW_TAG_member, scope: !1495, file: !1496, line: 646, baseType: !1669, size: 64, offset: 256)
!1669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1495, file: !1496, line: 646, size: 64, elements: !1670)
!1670 = !{!1671, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1669, file: !1496, line: 647, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1496, line: 542, baseType: !185)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1669, file: !1496, line: 648, baseType: !1673, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1495, file: !1496, line: 666, baseType: !85, size: 32, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1495, file: !1496, line: 667, baseType: !1677, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1496, line: 579, size: 320, elements: !1679)
!1679 = !{!1680}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1678, file: !1496, line: 580, baseType: !1227, size: 320)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1495, file: !1496, line: 670, baseType: !705, size: 8, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1495, file: !1496, line: 681, baseType: !1683, size: 256, offset: 512)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1495, file: !1496, line: 678, size: 256, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1683, file: !1496, line: 679, baseType: !737, size: 192, align: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1683, file: !1496, line: 680, baseType: !185, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1495, file: !1496, line: 689, baseType: !202, size: 128, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1495, file: !1496, line: 691, baseType: !1689, size: 64, offset: 896)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1496, line: 691, flags: DIFlagFwdDecl)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1495, file: !1496, line: 694, baseType: !1692, size: 64, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1496, line: 694, flags: DIFlagFwdDecl)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1495, file: !1496, line: 697, baseType: !185, size: 64, offset: 1024)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1495, file: !1496, line: 699, baseType: !1411, size: 64, offset: 1088)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1495, file: !1496, line: 700, baseType: !182, size: 64, offset: 1152)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1495, file: !1496, line: 711, baseType: !629, size: 64, offset: 1216)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1495, file: !1496, line: 717, baseType: !1700, size: 64, offset: 1280)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1496, line: 717, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1495, file: !1496, line: 722, baseType: !1703, offset: 1344)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1496, line: 570, elements: !913)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1404, file: !14, line: 1928, baseType: !185, size: 64, offset: 768)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1404, file: !14, line: 1929, baseType: !1706, size: 64, offset: 832)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!85, !364, !1411}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1404, file: !14, line: 1930, baseType: !1710, size: 64, offset: 896)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!85, !1411, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !182)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1404, file: !14, line: 1931, baseType: !1706, size: 64, offset: 960)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1404, file: !14, line: 1932, baseType: !1716, size: 64, offset: 1024)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!85, !1411, !525, !525, !85}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1404, file: !14, line: 1933, baseType: !1720, size: 64, offset: 1088)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!85, !85, !1411, !85}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1404, file: !14, line: 1934, baseType: !1724, size: 64, offset: 1152)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DISubroutineType(types: !1726)
!1726 = !{!85, !1411, !85, !1727}
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1404, file: !14, line: 1935, baseType: !1532, size: 64, offset: 1216)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1404, file: !14, line: 1936, baseType: !1731, size: 64, offset: 1280)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!85, !85}
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1404, file: !14, line: 1937, baseType: !1724, size: 64, offset: 1344)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1404, file: !14, line: 1938, baseType: !1736, size: 64, offset: 1408)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!317, !1739, !1411, !1087, !332, !7}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1741, line: 59, flags: DIFlagFwdDecl)
!1741 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1404, file: !14, line: 1939, baseType: !1743, size: 64, offset: 1472)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!317, !1411, !1087, !1739, !332, !7}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1404, file: !14, line: 1940, baseType: !1747, size: 64, offset: 1536)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1411}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1404, file: !14, line: 1941, baseType: !1751, size: 64, offset: 1600)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!85, !1411, !85, !1754, !1755}
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1404, file: !14, line: 1942, baseType: !1757, size: 64, offset: 1664)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!321, !1411, !85, !525, !525}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1404, file: !14, line: 1944, baseType: !1761, size: 64, offset: 1728)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{null, !1066, !1411}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1404, file: !14, line: 1948, baseType: !1765, size: 64, offset: 1792)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!317, !1411, !525, !1411, !525, !332, !7}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1404, file: !14, line: 1950, baseType: !1769, size: 64, offset: 1856)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!525, !1411, !525, !1411, !525, !525, !7}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1404, file: !14, line: 1953, baseType: !1716, size: 64, offset: 1920)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1404, file: !14, line: 1954, baseType: !1774, size: 64, offset: 1984)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!85, !1777, !7}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1404, file: !14, line: 1955, baseType: !1780, size: 64, offset: 2048)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!85, !1777, !1453, !7}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1104, file: !14, line: 1018, baseType: !437, size: 64, offset: 1472)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1104, file: !14, line: 1020, baseType: !182, size: 64, offset: 1536)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1104, file: !14, line: 1023, baseType: !182, size: 64, offset: 1600)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1104, file: !14, line: 1027, baseType: !1787, size: 64, offset: 1664)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1104, file: !14, line: 1029, baseType: !360, size: 64, offset: 1728)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1104, file: !14, line: 1030, baseType: !1790, size: 32, offset: 1792)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1791, line: 8, baseType: !433)
!1791 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1104, file: !14, line: 1031, baseType: !1790, size: 32, offset: 1824)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1067, file: !1068, line: 29, baseType: !182, size: 64, offset: 896)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1010, file: !14, line: 2077, baseType: !1063, size: 64, offset: 1088)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1010, file: !14, line: 2078, baseType: !1063, size: 64, offset: 1152)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1010, file: !14, line: 2079, baseType: !1063, size: 64, offset: 1216)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1010, file: !14, line: 2081, baseType: !1798, size: 64, offset: 1280)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{!317, !515, !85, !285, !332, !525}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1010, file: !14, line: 2082, baseType: !1802, size: 64, offset: 1344)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!317, !515, !85, !198, !332, !525}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1010, file: !14, line: 2083, baseType: !1806, size: 64, offset: 1408)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DISubroutineType(types: !1808)
!1808 = !{!1809, !364}
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1812)
!1812 = !{!1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1837, !1838, !1839}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1811, file: !27, line: 297, baseType: !871, size: 128)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1811, file: !27, line: 298, baseType: !202, size: 128, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1811, file: !27, line: 299, baseType: !202, size: 128, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1811, file: !27, line: 300, baseType: !202, size: 128, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1811, file: !27, line: 301, baseType: !625, size: 256, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1811, file: !27, line: 302, baseType: !215, size: 32, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1811, file: !27, line: 303, baseType: !235, size: 32, offset: 800)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1811, file: !27, line: 304, baseType: !515, size: 64, offset: 832)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1811, file: !27, line: 305, baseType: !1822, size: 64, offset: 896)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1823)
!1823 = !{!1824, !1836}
!1824 = !DIDerivedType(tag: DW_TAG_member, scope: !1822, file: !27, line: 69, baseType: !1825, size: 32)
!1825 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1822, file: !27, line: 69, size: 32, elements: !1826)
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1825, file: !27, line: 70, baseType: !370, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1825, file: !27, line: 71, baseType: !379, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1825, file: !27, line: 72, baseType: !1830, size: 32)
!1830 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1831, line: 24, baseType: !1832)
!1831 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1831, line: 22, size: 32, elements: !1833)
!1833 = !{!1834}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1832, file: !1831, line: 23, baseType: !1835, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1831, line: 20, baseType: !376)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1822, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1811, file: !27, line: 306, baseType: !525, size: 64, offset: 960)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1811, file: !27, line: 307, baseType: !185, size: 64, offset: 1024)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1811, file: !27, line: 308, baseType: !1840, size: 576, offset: 1088)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1841)
!1841 = !{!1842, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1840, file: !27, line: 206, baseType: !1843, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !527)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1840, file: !27, line: 207, baseType: !1843, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1840, file: !27, line: 208, baseType: !1843, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1840, file: !27, line: 209, baseType: !1843, size: 64, offset: 192)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1840, file: !27, line: 210, baseType: !1843, size: 64, offset: 256)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1840, file: !27, line: 211, baseType: !1843, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1840, file: !27, line: 212, baseType: !1843, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1840, file: !27, line: 213, baseType: !1243, size: 64, offset: 448)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1840, file: !27, line: 214, baseType: !1243, size: 64, offset: 512)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1010, file: !14, line: 2085, baseType: !1853, size: 64, offset: 1472)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!321, !515, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1858, line: 15, size: 256, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1859 = !{!1860, !1861, !1862, !1863, !1864}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1857, file: !1858, line: 16, baseType: !183, size: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1857, file: !1858, line: 19, baseType: !85, size: 32, offset: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1857, file: !1858, line: 26, baseType: !185, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1857, file: !1858, line: 33, baseType: !185, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1857, file: !1858, line: 36, baseType: !1865, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1496, line: 33, flags: DIFlagFwdDecl)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1010, file: !14, line: 2087, baseType: !1853, size: 64, offset: 1536)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1010, file: !14, line: 2089, baseType: !550, size: 64, offset: 1600)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !516, file: !14, line: 1198, baseType: !1870, size: 64, offset: 448)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1872)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1873)
!1873 = !{!1874, !1878, !1882, !1886, !1887, !1888, !1889, !1890, !1895, !1900, !1904}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1872, file: !27, line: 325, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{!85, !1810}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1872, file: !27, line: 326, baseType: !1879, size: 64, offset: 64)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{!1810, !515, !85}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1872, file: !27, line: 327, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !1810}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1872, file: !27, line: 328, baseType: !1875, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1872, file: !27, line: 329, baseType: !1875, size: 64, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1872, file: !27, line: 330, baseType: !1875, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1872, file: !27, line: 331, baseType: !1038, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1872, file: !27, line: 334, baseType: !1891, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!1894, !364}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1843, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1872, file: !27, line: 335, baseType: !1896, size: 64, offset: 512)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!85, !364, !1899}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1872, file: !27, line: 337, baseType: !1901, size: 64, offset: 576)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!85, !364, !1894}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1872, file: !27, line: 339, baseType: !1905, size: 64, offset: 640)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!85, !515, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !516, file: !14, line: 1199, baseType: !1910, size: 64, offset: 512)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1913)
!1913 = !{!1914, !1920, !1921, !1925, !1926, !1927, !1942, !1965, !1969, !1970, !1993}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1912, file: !27, line: 431, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!85, !515, !85, !85, !1918}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1912, file: !27, line: 432, baseType: !1038, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1912, file: !27, line: 433, baseType: !1922, size: 64, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!85, !515, !7}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1912, file: !27, line: 434, baseType: !1922, size: 64, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1912, file: !27, line: 435, baseType: !1038, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1912, file: !27, line: 436, baseType: !1928, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!85, !515, !85, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1932, file: !27, line: 418, baseType: !85, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1932, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1932, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1932, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1932, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1932, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1932, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1932, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1912, file: !27, line: 437, baseType: !1943, size: 64, offset: 384)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{!85, !515, !1822, !1946}
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1947, file: !27, line: 346, baseType: !85, size: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1947, file: !27, line: 347, baseType: !437, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1947, file: !27, line: 348, baseType: !437, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1947, file: !27, line: 349, baseType: !437, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1947, file: !27, line: 350, baseType: !437, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1947, file: !27, line: 351, baseType: !437, size: 64, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1947, file: !27, line: 352, baseType: !437, size: 64, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1947, file: !27, line: 353, baseType: !635, size: 64, offset: 448)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1947, file: !27, line: 355, baseType: !635, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1947, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1947, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1947, file: !27, line: 358, baseType: !437, size: 64, offset: 640)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1947, file: !27, line: 359, baseType: !437, size: 64, offset: 704)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1947, file: !27, line: 360, baseType: !437, size: 64, offset: 768)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1947, file: !27, line: 361, baseType: !635, size: 64, offset: 832)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1947, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1912, file: !27, line: 438, baseType: !1966, size: 64, offset: 448)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!85, !515, !1908, !1946}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1912, file: !27, line: 440, baseType: !1943, size: 64, offset: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1912, file: !27, line: 441, baseType: !1971, size: 64, offset: 576)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!85, !515, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1976)
!1976 = !{!1977, !1978}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1975, file: !27, line: 412, baseType: !7, size: 32)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1975, file: !27, line: 413, baseType: !1979, size: 1344, offset: 64)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1980, size: 1344, elements: !286)
!1980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1981)
!1981 = !{!1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1992}
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1980, file: !27, line: 398, baseType: !7, size: 32)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1980, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1980, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1980, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1980, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1980, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1980, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1980, file: !27, line: 406, baseType: !439, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1980, file: !27, line: 407, baseType: !1991, size: 64, offset: 320)
!1991 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !184, line: 132, baseType: !437)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1980, file: !27, line: 408, baseType: !1991, size: 64, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1912, file: !27, line: 442, baseType: !1922, size: 64, offset: 640)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !516, file: !14, line: 1200, baseType: !1995, size: 64, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1997)
!1997 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !516, file: !14, line: 1201, baseType: !185, size: 64, offset: 640)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !516, file: !14, line: 1202, baseType: !185, size: 64, offset: 704)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !516, file: !14, line: 1203, baseType: !185, size: 64, offset: 768)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !516, file: !14, line: 1204, baseType: !399, size: 64, offset: 832)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !516, file: !14, line: 1205, baseType: !1227, size: 320, offset: 896)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !516, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !516, file: !14, line: 1207, baseType: !235, size: 32, offset: 1248)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !516, file: !14, line: 1209, baseType: !182, size: 64, offset: 1280)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !516, file: !14, line: 1211, baseType: !2007, size: 64, offset: 1344)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2010)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !516, file: !14, line: 1223, baseType: !2012, size: 64, offset: 1408)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !416, line: 34, size: 64, elements: !2013)
!2013 = !{!2014}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2012, file: !416, line: 35, baseType: !419, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !516, file: !14, line: 1224, baseType: !202, size: 128, offset: 1472)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !516, file: !14, line: 1225, baseType: !2017, size: 64, offset: 1600)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !516, file: !14, line: 1226, baseType: !2020, size: 64, offset: 1664)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !516, file: !14, line: 1227, baseType: !2023, size: 64, offset: 1728)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !516, file: !14, line: 1228, baseType: !2026, size: 64, offset: 1792)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !516, file: !14, line: 1229, baseType: !871, size: 128, offset: 1856)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !516, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !516, file: !14, line: 1231, baseType: !2031, size: 2496, offset: 2048)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !2032)
!2032 = !{!2033, !2034, !2035, !2037, !2069}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !27, line: 522, baseType: !7, size: 32)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2031, file: !27, line: 523, baseType: !1227, size: 320, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2031, file: !27, line: 524, baseType: !2036, size: 192, offset: 384)
!2036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !364, size: 192, elements: !286)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2031, file: !27, line: 525, baseType: !2038, size: 1728, offset: 576)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2039, size: 1728, elements: !286)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !2040)
!2040 = !{!2041, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2039, file: !27, line: 223, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !2044)
!2044 = !{!2045, !2046, !2059, !2060}
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2043, file: !27, line: 446, baseType: !85, size: 32)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2043, file: !27, line: 447, baseType: !2047, size: 64, offset: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2049)
!2049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !2050)
!2050 = !{!2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2049, file: !27, line: 313, baseType: !1038, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2049, file: !27, line: 314, baseType: !1038, size: 64, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2049, file: !27, line: 315, baseType: !1038, size: 64, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2049, file: !27, line: 316, baseType: !1038, size: 64, offset: 192)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2049, file: !27, line: 317, baseType: !1875, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2049, file: !27, line: 318, baseType: !1875, size: 64, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2049, file: !27, line: 319, baseType: !1875, size: 64, offset: 384)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2049, file: !27, line: 320, baseType: !1905, size: 64, offset: 448)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2043, file: !27, line: 448, baseType: !554, size: 64, offset: 128)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2043, file: !27, line: 449, baseType: !2042, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2039, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2039, file: !27, line: 226, baseType: !202, size: 128, offset: 128)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2039, file: !27, line: 227, baseType: !185, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2039, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2039, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2039, file: !27, line: 230, baseType: !1843, size: 64, offset: 384)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2039, file: !27, line: 231, baseType: !1843, size: 64, offset: 448)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2039, file: !27, line: 232, baseType: !182, size: 64, offset: 512)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2031, file: !27, line: 526, baseType: !2070, size: 192, offset: 2304)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2047, size: 192, elements: !286)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !516, file: !14, line: 1233, baseType: !2072, size: 2368, offset: 4544)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2073)
!2073 = !{!2074, !2075, !2076}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2072, file: !14, line: 1185, baseType: !255, size: 16)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2072, file: !14, line: 1186, baseType: !255, size: 16, offset: 16)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2072, file: !14, line: 1187, baseType: !2077, size: 2304, offset: 64)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2078, size: 2304, elements: !286)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2079, line: 12, size: 768, elements: !2080)
!2079 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2080 = !{!2081, !2089, !2090, !3340, !3341}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2078, file: !2079, line: 13, baseType: !2082, size: 384)
!2082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2083, line: 17, size: 384, elements: !2084)
!2083 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2084 = !{!2085, !2086, !2087, !2088}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2082, file: !2083, line: 18, baseType: !85, size: 32)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2082, file: !2083, line: 19, baseType: !85, size: 32, offset: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2082, file: !2083, line: 20, baseType: !1164, size: 192, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2082, file: !2083, line: 22, baseType: !845, size: 128, align: 64, offset: 256)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2078, file: !2079, line: 14, baseType: !697, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2078, file: !2079, line: 15, baseType: !2091, size: 64, offset: 448)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2092, line: 16, size: 64, elements: !2093)
!2092 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2093 = !{!2094}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2091, file: !2092, line: 17, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1741, line: 746, size: 58368, elements: !2097)
!2097 = !{!2098, !2106, !2107, !2108, !2109, !2110, !2111, !2112, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134, !2178, !2189, !2284, !2288, !2291, !2322, !2323, !2324, !2325, !2336, !2338, !2339, !2340, !2341, !2342, !2343, !2354, !2355, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2372, !2373, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2388, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404, !2466, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2514, !2520, !2521, !2522, !2523, !2524, !2528, !2531, !2538, !2543, !2546, !2549, !2552, !2556, !2694, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2732, !2733, !2734, !2743, !2751, !2752, !2753, !2754, !2755, !2760, !2761, !2762, !2765, !2766, !2769, !2772, !2775, !2783, !2786, !2787, !2873, !2874, !2875, !2876, !2877, !2883, !2884, !2885, !2886, !2889, !2890, !2893, !2896, !2897, !2900, !2901, !2902, !2905, !2906, !2907, !2908, !2909, !2910, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2942, !2943, !3009, !3012, !3013, !3014, !3015, !3016, !3017, !3018, !3021, !3093, !3095, !3096, !3097, !3098, !3099, !3100, !3103, !3104, !3105, !3106, !3107, !3108, !3109, !3110, !3111, !3112, !3113, !3117, !3118, !3119}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2096, file: !1741, line: 752, baseType: !2099, size: 192)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2100, line: 56, size: 192, elements: !2101)
!2100 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2101 = !{!2102, !2103, !2104, !2105}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2099, file: !2100, line: 57, baseType: !185, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2099, file: !2100, line: 58, baseType: !185, size: 64, offset: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2099, file: !2100, line: 59, baseType: !433, size: 32, offset: 128)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2099, file: !2100, line: 61, baseType: !433, size: 32, offset: 160)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2096, file: !1741, line: 754, baseType: !7, size: 32, offset: 192)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2096, file: !1741, line: 767, baseType: !182, size: 64, offset: 256)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2096, file: !1741, line: 768, baseType: !1153, size: 32, offset: 320)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2096, file: !1741, line: 770, baseType: !7, size: 32, offset: 352)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2096, file: !1741, line: 771, baseType: !7, size: 32, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2096, file: !1741, line: 774, baseType: !85, size: 32, offset: 416)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2096, file: !1741, line: 775, baseType: !2113, size: 128, offset: 448)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2114, line: 58, size: 128, elements: !2115)
!2114 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2115 = !{!2116, !2117, !2122, !2123}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2113, file: !2114, line: 59, baseType: !1110, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_member, scope: !2113, file: !2114, line: 60, baseType: !2118, size: 32, offset: 64)
!2118 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2113, file: !2114, line: 60, size: 32, elements: !2119)
!2119 = !{!2120, !2121}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2118, file: !2114, line: 61, baseType: !7, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2118, file: !2114, line: 62, baseType: !235, size: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2113, file: !2114, line: 65, baseType: !253, size: 16, offset: 96)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2113, file: !2114, line: 65, baseType: !253, size: 16, offset: 112)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2096, file: !1741, line: 776, baseType: !7, size: 32, offset: 576)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2096, file: !1741, line: 777, baseType: !185, size: 64, offset: 640)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2096, file: !1741, line: 778, baseType: !2095, size: 64, offset: 704)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2096, file: !1741, line: 787, baseType: !85, size: 32, offset: 768)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2096, file: !1741, line: 788, baseType: !85, size: 32, offset: 800)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2096, file: !1741, line: 790, baseType: !85, size: 32, offset: 832)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2096, file: !1741, line: 792, baseType: !85, size: 32, offset: 864)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2096, file: !1741, line: 793, baseType: !85, size: 32, offset: 896)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2096, file: !1741, line: 794, baseType: !85, size: 32, offset: 928)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2096, file: !1741, line: 795, baseType: !7, size: 32, offset: 960)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2096, file: !1741, line: 797, baseType: !2135, size: 2048, offset: 1024)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1741, line: 551, size: 2048, elements: !2136)
!2136 = !{!2137, !2142, !2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2157, !2160, !2161, !2162}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2135, file: !1741, line: 553, baseType: !2138, size: 128)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1741, line: 411, size: 128, elements: !2139)
!2139 = !{!2140, !2141}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2138, file: !1741, line: 412, baseType: !185, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2138, file: !1741, line: 413, baseType: !433, size: 32, offset: 64)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2135, file: !1741, line: 554, baseType: !737, size: 192, align: 64, offset: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2135, file: !1741, line: 555, baseType: !437, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2135, file: !1741, line: 556, baseType: !437, size: 64, offset: 384)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2135, file: !1741, line: 558, baseType: !202, size: 128, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2135, file: !1741, line: 559, baseType: !7, size: 32, offset: 576)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2135, file: !1741, line: 561, baseType: !437, size: 64, offset: 640)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2135, file: !1741, line: 562, baseType: !437, size: 64, offset: 704)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2135, file: !1741, line: 563, baseType: !437, size: 64, offset: 768)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2135, file: !1741, line: 564, baseType: !437, size: 64, offset: 832)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2135, file: !1741, line: 565, baseType: !635, size: 64, offset: 896)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2135, file: !1741, line: 566, baseType: !437, size: 64, offset: 960)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2135, file: !1741, line: 568, baseType: !437, size: 64, offset: 1024)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2135, file: !1741, line: 571, baseType: !85, size: 32, offset: 1088)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2135, file: !1741, line: 572, baseType: !2156, size: 64, offset: 1152)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2135, file: !1741, line: 574, baseType: !2158, size: 64, offset: 1216)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1741, line: 49, flags: DIFlagFwdDecl)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2135, file: !1741, line: 576, baseType: !2158, size: 64, offset: 1280)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2135, file: !1741, line: 578, baseType: !185, size: 64, offset: 1344)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2135, file: !1741, line: 588, baseType: !2163, size: 512, align: 512, offset: 1536)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1741, line: 497, size: 512, align: 512, elements: !2164)
!2164 = !{!2165, !2166, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2163, file: !1741, line: 498, baseType: !437, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2163, file: !1741, line: 499, baseType: !437, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2163, file: !1741, line: 500, baseType: !437, size: 64, offset: 128)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2163, file: !1741, line: 501, baseType: !433, size: 32, offset: 192)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2163, file: !1741, line: 502, baseType: !433, size: 32, offset: 224)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2163, file: !1741, line: 503, baseType: !185, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2163, file: !1741, line: 504, baseType: !185, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2163, file: !1741, line: 505, baseType: !185, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2163, file: !1741, line: 506, baseType: !2174, size: 64, align: 64, offset: 448)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1741, line: 445, size: 64, align: 64, elements: !2175)
!2175 = !{!2176, !2177}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2174, file: !1741, line: 446, baseType: !7, size: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2174, file: !1741, line: 447, baseType: !7, size: 32, offset: 32)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2096, file: !1741, line: 798, baseType: !2179, size: 384, offset: 3072)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1741, line: 592, size: 384, elements: !2180)
!2180 = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2179, file: !1741, line: 593, baseType: !202, size: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2179, file: !1741, line: 594, baseType: !185, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2179, file: !1741, line: 595, baseType: !185, size: 64, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2179, file: !1741, line: 596, baseType: !7, size: 32, offset: 256)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2179, file: !1741, line: 597, baseType: !255, size: 16, offset: 288)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2179, file: !1741, line: 598, baseType: !255, size: 16, offset: 304)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2179, file: !1741, line: 600, baseType: !2188, size: 64, offset: 320)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2096, file: !1741, line: 799, baseType: !2190, size: 1792, offset: 3456)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1741, line: 610, size: 1792, elements: !2191)
!2191 = !{!2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2281, !2282}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2190, file: !1741, line: 611, baseType: !737, size: 192, align: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2190, file: !1741, line: 618, baseType: !437, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2190, file: !1741, line: 619, baseType: !437, size: 64, offset: 256)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2190, file: !1741, line: 620, baseType: !437, size: 64, offset: 320)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2190, file: !1741, line: 621, baseType: !437, size: 64, offset: 384)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2190, file: !1741, line: 622, baseType: !437, size: 64, offset: 448)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2190, file: !1741, line: 629, baseType: !635, size: 64, offset: 512)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2190, file: !1741, line: 630, baseType: !437, size: 64, offset: 576)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !1741, line: 631, baseType: !7, size: 32, offset: 640)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2190, file: !1741, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2190, file: !1741, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2190, file: !1741, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2190, file: !1741, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2190, file: !1741, line: 662, baseType: !2206, size: 512, offset: 704)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !2207)
!2207 = !{!2208, !2216, !2217, !2222, !2277, !2278, !2279, !2280}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2206, file: !33, line: 119, baseType: !2209, size: 256)
!2209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2210, line: 9, size: 256, elements: !2211)
!2210 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2211 = !{!2212, !2213}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2209, file: !2210, line: 10, baseType: !737, size: 192, align: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2209, file: !2210, line: 11, baseType: !2214, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2215, line: 29, baseType: !635)
!2215 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2206, file: !33, line: 120, baseType: !2214, size: 64, offset: 256)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2206, file: !33, line: 121, baseType: !2218, size: 64, offset: 320)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DISubroutineType(types: !2220)
!2220 = !{!32, !2221}
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2206, file: !33, line: 122, baseType: !2223, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !2225)
!2225 = !{!2226, !2251, !2252, !2255, !2260, !2261, !2272, !2276}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2224, file: !33, line: 160, baseType: !2227, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !2229)
!2229 = !{!2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2228, file: !33, line: 216, baseType: !583, size: 32)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2228, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2228, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2228, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2228, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2228, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2228, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2228, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2228, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2228, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2228, file: !33, line: 227, baseType: !255, size: 16, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2228, file: !33, line: 228, baseType: !255, size: 16, offset: 208)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2228, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2228, file: !33, line: 235, baseType: !2214, size: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2228, file: !33, line: 236, baseType: !2221, size: 64, offset: 320)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2228, file: !33, line: 237, baseType: !2214, size: 64, offset: 384)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2228, file: !33, line: 238, baseType: !2221, size: 64, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2228, file: !33, line: 239, baseType: !2248, size: 4096, align: 512, offset: 512)
!2248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2224, size: 4096, align: 512, elements: !2249)
!2249 = !{!2250}
!2250 = !DISubrange(count: 8)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2224, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2224, file: !33, line: 162, baseType: !2253, size: 32, offset: 96)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !184, line: 32, baseType: !2254)
!2254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !319, line: 96, baseType: !85)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2224, file: !33, line: 163, baseType: !2256, size: 32, offset: 128)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !406, line: 274, baseType: !2257)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !406, line: 274, size: 32, elements: !2258)
!2258 = !{!2259}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2257, file: !406, line: 274, baseType: !410, size: 32)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2224, file: !33, line: 164, baseType: !2221, size: 64, offset: 192)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2224, file: !33, line: 165, baseType: !2262, size: 128, offset: 256)
!2262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2210, line: 14, size: 128, elements: !2263)
!2263 = !{!2264}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2262, file: !2210, line: 15, baseType: !2265, size: 128)
!2265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !738, line: 26, size: 128, elements: !2266)
!2266 = !{!2267, !2271}
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2265, file: !738, line: 27, baseType: !2268, size: 64)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !738, line: 12, size: 64, elements: !2269)
!2269 = !{!2270}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2268, file: !738, line: 13, baseType: !742, size: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2265, file: !738, line: 28, baseType: !742, size: 64, offset: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2224, file: !33, line: 166, baseType: !2273, size: 64, offset: 384)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!2214}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2224, file: !33, line: 167, baseType: !2214, size: 64, offset: 448)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2206, file: !33, line: 123, baseType: !243, size: 8, offset: 448)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2206, file: !33, line: 124, baseType: !243, size: 8, offset: 456)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2206, file: !33, line: 125, baseType: !243, size: 8, offset: 464)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2206, file: !33, line: 126, baseType: !243, size: 8, offset: 472)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2190, file: !1741, line: 671, baseType: !2206, size: 512, offset: 1216)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2190, file: !1741, line: 679, baseType: !2283, size: 64, offset: 1728)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2096, file: !1741, line: 800, baseType: !2285, size: 64, offset: 5248)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2287)
!2287 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1741, line: 800, flags: DIFlagFwdDecl)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2096, file: !1741, line: 809, baseType: !2289, size: 64, offset: 5312)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1741, line: 70, flags: DIFlagFwdDecl)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2096, file: !1741, line: 825, baseType: !2292, size: 2048, align: 512, offset: 5632)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1741, line: 509, size: 2048, align: 512, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2292, file: !1741, line: 511, baseType: !437, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2292, file: !1741, line: 512, baseType: !437, size: 64, offset: 64)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2292, file: !1741, line: 513, baseType: !437, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2292, file: !1741, line: 514, baseType: !437, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2292, file: !1741, line: 515, baseType: !437, size: 64, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2292, file: !1741, line: 516, baseType: !437, size: 64, offset: 320)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2292, file: !1741, line: 518, baseType: !437, size: 64, offset: 384)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2292, file: !1741, line: 519, baseType: !437, size: 64, offset: 448)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2292, file: !1741, line: 520, baseType: !635, size: 64, offset: 512)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2292, file: !1741, line: 522, baseType: !437, size: 64, offset: 576)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2292, file: !1741, line: 523, baseType: !437, size: 64, offset: 640)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2292, file: !1741, line: 524, baseType: !635, size: 64, offset: 704)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2292, file: !1741, line: 526, baseType: !635, size: 64, offset: 768)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2292, file: !1741, line: 527, baseType: !437, size: 64, offset: 832)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2292, file: !1741, line: 529, baseType: !437, size: 64, offset: 896)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2292, file: !1741, line: 530, baseType: !437, size: 64, offset: 960)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2292, file: !1741, line: 531, baseType: !437, size: 64, offset: 1024)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2292, file: !1741, line: 532, baseType: !437, size: 64, offset: 1088)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2292, file: !1741, line: 533, baseType: !437, size: 64, offset: 1152)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2292, file: !1741, line: 535, baseType: !437, size: 64, offset: 1216)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2292, file: !1741, line: 536, baseType: !437, size: 64, offset: 1280)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2292, file: !1741, line: 537, baseType: !437, size: 64, offset: 1344)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2292, file: !1741, line: 538, baseType: !437, size: 64, offset: 1408)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2292, file: !1741, line: 539, baseType: !437, size: 64, offset: 1472)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2292, file: !1741, line: 540, baseType: !437, size: 64, offset: 1536)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2292, file: !1741, line: 541, baseType: !437, size: 64, offset: 1600)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2292, file: !1741, line: 542, baseType: !437, size: 64, offset: 1664)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2292, file: !1741, line: 543, baseType: !437, size: 64, offset: 1728)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2096, file: !1741, line: 833, baseType: !7, size: 32, offset: 7680)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2096, file: !1741, line: 836, baseType: !7, size: 32, offset: 7712)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2096, file: !1741, line: 837, baseType: !85, size: 32, offset: 7744)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2096, file: !1741, line: 838, baseType: !2326, size: 64, offset: 7808)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2329, line: 19, baseType: !2330)
!2329 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2329, line: 19, size: 64, elements: !2331)
!2331 = !{!2332}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2330, file: !2329, line: 19, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 64, elements: !2334)
!2334 = !{!2335}
!2335 = !DISubrange(count: 1)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2096, file: !1741, line: 839, baseType: !2337, size: 64, offset: 7872)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2096, file: !1741, line: 840, baseType: !2328, size: 64, offset: 7936)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2096, file: !1741, line: 841, baseType: !182, size: 64, offset: 8000)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2096, file: !1741, line: 843, baseType: !255, size: 16, offset: 8064)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2096, file: !1741, line: 845, baseType: !255, size: 16, offset: 8080)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2096, file: !1741, line: 848, baseType: !85, size: 32, offset: 8096)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2096, file: !1741, line: 849, baseType: !2344, size: 32, offset: 8128)
!2344 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1741, line: 718, size: 32, elements: !2345)
!2345 = !{!2346, !2353}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2344, file: !1741, line: 724, baseType: !2347, size: 32)
!2347 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2344, file: !1741, line: 719, size: 32, elements: !2348)
!2348 = !{!2349, !2350, !2351, !2352}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2347, file: !1741, line: 720, baseType: !243, size: 8)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2347, file: !1741, line: 721, baseType: !243, size: 8, offset: 8)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2347, file: !1741, line: 722, baseType: !243, size: 8, offset: 16)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2347, file: !1741, line: 723, baseType: !243, size: 8, offset: 24)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2344, file: !1741, line: 725, baseType: !433, size: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2096, file: !1741, line: 850, baseType: !202, size: 128, offset: 8192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2096, file: !1741, line: 851, baseType: !2356, size: 64, offset: 8320)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1741, line: 60, flags: DIFlagFwdDecl)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2096, file: !1741, line: 855, baseType: !185, size: 64, offset: 8384)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2096, file: !1741, line: 856, baseType: !243, size: 8, offset: 8448)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2096, file: !1741, line: 857, baseType: !243, size: 8, offset: 8456)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2096, file: !1741, line: 858, baseType: !85, size: 32, offset: 8480)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2096, file: !1741, line: 859, baseType: !202, size: 128, offset: 8512)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2096, file: !1741, line: 860, baseType: !85, size: 32, offset: 8640)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2096, file: !1741, line: 861, baseType: !202, size: 128, offset: 8704)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2096, file: !1741, line: 873, baseType: !2366, size: 256, offset: 8832)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1741, line: 376, size: 256, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2366, file: !1741, line: 381, baseType: !185, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2366, file: !1741, line: 384, baseType: !439, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2366, file: !1741, line: 389, baseType: !439, size: 64, offset: 128)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2366, file: !1741, line: 392, baseType: !439, size: 64, offset: 192)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2096, file: !1741, line: 875, baseType: !202, size: 128, offset: 9088)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2096, file: !1741, line: 877, baseType: !2374, size: 320, offset: 9216)
!2374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2375, line: 86, size: 320, elements: !2376)
!2375 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2376 = !{!2377, !2378, !2379}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2374, file: !2375, line: 87, baseType: !85, size: 32)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2374, file: !2375, line: 88, baseType: !202, size: 128, offset: 64)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2374, file: !2375, line: 89, baseType: !202, size: 128, offset: 192)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2096, file: !1741, line: 878, baseType: !737, size: 192, align: 64, offset: 9536)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2096, file: !1741, line: 881, baseType: !1508, size: 64, offset: 9728)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2096, file: !1741, line: 882, baseType: !1508, size: 64, offset: 9792)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2096, file: !1741, line: 884, baseType: !85, size: 32, offset: 9856)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2096, file: !1741, line: 885, baseType: !85, size: 32, offset: 9888)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2096, file: !1741, line: 886, baseType: !85, size: 32, offset: 9920)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2096, file: !1741, line: 888, baseType: !85, size: 32, offset: 9952)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2096, file: !1741, line: 890, baseType: !185, size: 64, offset: 9984)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2096, file: !1741, line: 893, baseType: !7, size: 32, offset: 10048)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2096, file: !1741, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2096, file: !1741, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2096, file: !1741, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2096, file: !1741, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2096, file: !1741, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2096, file: !1741, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2096, file: !1741, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2096, file: !1741, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2096, file: !1741, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2096, file: !1741, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2096, file: !1741, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2096, file: !1741, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2096, file: !1741, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2096, file: !1741, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2096, file: !1741, line: 969, baseType: !185, size: 64, offset: 10176)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2096, file: !1741, line: 971, baseType: !2405, size: 448, offset: 10240)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !2406)
!2406 = !{!2407, !2408, !2413}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2405, file: !38, line: 26, baseType: !185, size: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2405, file: !38, line: 27, baseType: !2409, size: 64, offset: 64)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!321, !2412}
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, scope: !2405, file: !38, line: 28, baseType: !2414, size: 320, offset: 128)
!2414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2405, file: !38, line: 28, size: 320, elements: !2415)
!2415 = !{!2416, !2426, !2451}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2414, file: !38, line: 37, baseType: !2417, size: 320)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2414, file: !38, line: 30, size: 320, elements: !2418)
!2418 = !{!2419, !2421, !2422, !2423, !2424, !2425}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2417, file: !38, line: 31, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2417, file: !38, line: 32, baseType: !433, size: 32, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2417, file: !38, line: 33, baseType: !433, size: 32, offset: 96)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2417, file: !38, line: 34, baseType: !433, size: 32, offset: 128)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2417, file: !38, line: 35, baseType: !437, size: 64, offset: 192)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2417, file: !38, line: 36, baseType: !2420, size: 64, offset: 256)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2414, file: !38, line: 47, baseType: !2427, size: 192)
!2427 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2414, file: !38, line: 39, size: 192, elements: !2428)
!2428 = !{!2429, !2430, !2431, !2450}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2427, file: !38, line: 40, baseType: !2253, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2427, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, scope: !2427, file: !38, line: 42, baseType: !2432, size: 64, offset: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2427, file: !38, line: 42, size: 64, elements: !2433)
!2433 = !{!2434, !2442}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2432, file: !38, line: 43, baseType: !2435, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2437, line: 7, size: 128, elements: !2438)
!2437 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2438 = !{!2439, !2441}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2436, file: !2437, line: 8, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !319, line: 93, baseType: !527)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2436, file: !2437, line: 9, baseType: !527, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2432, file: !38, line: 44, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2445, line: 7, size: 64, elements: !2446)
!2445 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2446 = !{!2447, !2449}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2444, file: !2445, line: 8, baseType: !2448, size: 32)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2445, line: 5, baseType: !621)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2444, file: !2445, line: 9, baseType: !621, size: 32, offset: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2427, file: !38, line: 46, baseType: !437, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2414, file: !38, line: 55, baseType: !2452, size: 256)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2414, file: !38, line: 49, size: 256, elements: !2453)
!2453 = !{!2454, !2462, !2463, !2464, !2465}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2452, file: !38, line: 50, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2456, size: 64)
!2456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2457, line: 36, size: 64, elements: !2458)
!2457 = !DIFile(filename: "./include/uapi/asm-generic/poll.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a033f71fef0124c1155b1436c02f0f9f")
!2458 = !{!2459, !2460, !2461}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !2456, file: !2457, line: 37, baseType: !85, size: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !2456, file: !2457, line: 38, baseType: !763, size: 16, offset: 32)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !2456, file: !2457, line: 39, baseType: !763, size: 16, offset: 48)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2452, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2452, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2452, file: !38, line: 53, baseType: !185, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2452, file: !38, line: 54, baseType: !185, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2096, file: !1741, line: 973, baseType: !2467, size: 32, offset: 10688)
!2467 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !184, line: 27, baseType: !2468)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !319, line: 28, baseType: !85)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2096, file: !1741, line: 974, baseType: !2467, size: 32, offset: 10720)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2096, file: !1741, line: 978, baseType: !185, size: 64, offset: 10752)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2096, file: !1741, line: 987, baseType: !2095, size: 64, offset: 10816)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2096, file: !1741, line: 990, baseType: !2095, size: 64, offset: 10880)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2096, file: !1741, line: 995, baseType: !202, size: 128, offset: 10944)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2096, file: !1741, line: 996, baseType: !202, size: 128, offset: 11072)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2096, file: !1741, line: 997, baseType: !2095, size: 64, offset: 11200)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2096, file: !1741, line: 1005, baseType: !202, size: 128, offset: 11264)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2096, file: !1741, line: 1006, baseType: !202, size: 128, offset: 11392)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2096, file: !1741, line: 1009, baseType: !1149, size: 64, offset: 11520)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2096, file: !1741, line: 1010, baseType: !2480, size: 512, offset: 11584)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !871, size: 512, elements: !855)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2096, file: !1741, line: 1011, baseType: !202, size: 128, offset: 12096)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2096, file: !1741, line: 1012, baseType: !202, size: 128, offset: 12224)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2096, file: !1741, line: 1014, baseType: !573, size: 64, offset: 12352)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2096, file: !1741, line: 1017, baseType: !754, size: 64, offset: 12416)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2096, file: !1741, line: 1020, baseType: !754, size: 64, offset: 12480)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2096, file: !1741, line: 1023, baseType: !182, size: 64, offset: 12544)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2096, file: !1741, line: 1025, baseType: !437, size: 64, offset: 12608)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2096, file: !1741, line: 1026, baseType: !437, size: 64, offset: 12672)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2096, file: !1741, line: 1031, baseType: !437, size: 64, offset: 12736)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2096, file: !1741, line: 1032, baseType: !2491, size: 192, offset: 12800)
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1741, line: 324, size: 192, elements: !2492)
!2492 = !{!2493, !2494, !2495}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2491, file: !1741, line: 326, baseType: !437, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2491, file: !1741, line: 327, baseType: !437, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2491, file: !1741, line: 328, baseType: !583, size: 32, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2096, file: !1741, line: 1041, baseType: !185, size: 64, offset: 12992)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2096, file: !1741, line: 1042, baseType: !185, size: 64, offset: 13056)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2096, file: !1741, line: 1045, baseType: !437, size: 64, offset: 13120)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2096, file: !1741, line: 1048, baseType: !437, size: 64, offset: 13184)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2096, file: !1741, line: 1051, baseType: !185, size: 64, offset: 13248)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2096, file: !1741, line: 1052, baseType: !185, size: 64, offset: 13312)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2096, file: !1741, line: 1055, baseType: !2503, size: 640, offset: 13376)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2504, line: 132, size: 640, elements: !2505)
!2504 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2505 = !{!2506, !2512, !2513}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2503, file: !2504, line: 133, baseType: !2507, size: 576)
!2507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2508, size: 576, elements: !286)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2504, line: 117, size: 192, elements: !2509)
!2509 = !{!2510, !2511}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2508, file: !2504, line: 118, baseType: !437, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2508, file: !2504, line: 119, baseType: !2262, size: 128, offset: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2503, file: !2504, line: 134, baseType: !7, size: 32, offset: 576)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2503, file: !2504, line: 135, baseType: !7, size: 32, offset: 608)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2096, file: !1741, line: 1058, baseType: !2515, size: 448, offset: 14016)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2504, line: 144, size: 448, elements: !2516)
!2516 = !{!2517, !2518, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2515, file: !2504, line: 145, baseType: !845, size: 128, align: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2515, file: !2504, line: 146, baseType: !625, size: 256, offset: 128)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2515, file: !2504, line: 147, baseType: !7, size: 32, offset: 384)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2096, file: !1741, line: 1064, baseType: !1186, size: 64, offset: 14464)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2096, file: !1741, line: 1067, baseType: !1186, size: 64, offset: 14528)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2096, file: !1741, line: 1070, baseType: !1186, size: 64, offset: 14592)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2096, file: !1741, line: 1074, baseType: !1213, size: 64, offset: 14656)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2096, file: !1741, line: 1084, baseType: !2525, size: 128, offset: 14720)
!2525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 128, elements: !2526)
!2526 = !{!2527}
!2527 = !DISubrange(count: 16)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2096, file: !1741, line: 1086, baseType: !2529, size: 64, offset: 14848)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1741, line: 55, flags: DIFlagFwdDecl)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2096, file: !1741, line: 1089, baseType: !2532, size: 64, offset: 14912)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2533, line: 12, size: 64, elements: !2534)
!2533 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2532, file: !2533, line: 13, baseType: !2536, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2533, line: 8, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2096, file: !1741, line: 1090, baseType: !2539, size: 128, offset: 14976)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2540, line: 13, size: 128, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2541 = !{!2542}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2539, file: !2540, line: 14, baseType: !202, size: 128)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2096, file: !1741, line: 1097, baseType: !2544, size: 64, offset: 15104)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1741, line: 50, flags: DIFlagFwdDecl)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2096, file: !1741, line: 1100, baseType: !2547, size: 64, offset: 15168)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1741, line: 1100, flags: DIFlagFwdDecl)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2096, file: !1741, line: 1103, baseType: !2550, size: 64, offset: 15232)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1741, line: 53, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2096, file: !1741, line: 1107, baseType: !2553, size: 64, offset: 15296)
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2554, size: 64)
!2554 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2555, line: 35, flags: DIFlagFwdDecl)
!2555 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2096, file: !1741, line: 1110, baseType: !2557, size: 64, offset: 15360)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2559, line: 93, size: 8768, elements: !2560)
!2559 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2560 = !{!2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2608, !2617, !2618, !2620, !2621, !2622, !2625, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2663, !2664, !2671, !2681, !2684, !2685, !2688, !2689, !2690, !2691, !2692, !2693}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2558, file: !2559, line: 94, baseType: !1153, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2558, file: !2559, line: 95, baseType: !235, size: 32, offset: 32)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2558, file: !2559, line: 96, baseType: !85, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2558, file: !2559, line: 97, baseType: !85, size: 32, offset: 96)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2558, file: !2559, line: 98, baseType: !202, size: 128, offset: 128)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2558, file: !2559, line: 100, baseType: !1164, size: 192, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2558, file: !2559, line: 103, baseType: !2095, size: 64, offset: 448)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2558, file: !2559, line: 106, baseType: !2569, size: 192, offset: 512)
!2569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1371, line: 32, size: 192, elements: !2570)
!2570 = !{!2571, !2572}
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2569, file: !1371, line: 33, baseType: !202, size: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2569, file: !1371, line: 34, baseType: !2573, size: 64, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2574, line: 25, baseType: !2575)
!2574 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2574, line: 23, size: 64, elements: !2576)
!2576 = !{!2577}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2575, file: !2574, line: 24, baseType: !2333, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2558, file: !2559, line: 109, baseType: !994, size: 64, offset: 704)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2558, file: !2559, line: 112, baseType: !85, size: 32, offset: 768)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2558, file: !2559, line: 114, baseType: !85, size: 32, offset: 800)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2558, file: !2559, line: 115, baseType: !2095, size: 64, offset: 832)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2558, file: !2559, line: 118, baseType: !85, size: 32, offset: 896)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2558, file: !2559, line: 119, baseType: !7, size: 32, offset: 928)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2558, file: !2559, line: 121, baseType: !2585, size: 64, offset: 960)
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2559, line: 80, size: 448, elements: !2587)
!2587 = !{!2588, !2589, !2595}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2586, file: !2559, line: 81, baseType: !235, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2586, file: !2559, line: 82, baseType: !2590, size: 128, offset: 64)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2559, line: 75, size: 128, elements: !2591)
!2591 = !{!2592, !2593}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2590, file: !2559, line: 76, baseType: !2095, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2590, file: !2559, line: 77, baseType: !2594, size: 64, offset: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2590, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2586, file: !2559, line: 83, baseType: !574, size: 256, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2558, file: !2559, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2558, file: !2559, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2558, file: !2559, line: 138, baseType: !7, size: 32, offset: 1056)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2558, file: !2559, line: 139, baseType: !202, size: 128, offset: 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2558, file: !2559, line: 142, baseType: !2206, size: 512, offset: 1216)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2558, file: !2559, line: 143, baseType: !2214, size: 64, offset: 1728)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2558, file: !2559, line: 150, baseType: !2603, size: 256, offset: 1792)
!2603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2604, size: 256, elements: !744)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2559, line: 38, size: 128, elements: !2605)
!2605 = !{!2606, !2607}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2604, file: !2559, line: 39, baseType: !437, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2604, file: !2559, line: 40, baseType: !437, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2558, file: !2559, line: 156, baseType: !2609, size: 192, offset: 2048)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2559, line: 66, size: 192, elements: !2610)
!2610 = !{!2611}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2609, file: !2559, line: 67, baseType: !2612, size: 192)
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2559, line: 47, size: 192, elements: !2613)
!2613 = !{!2614, !2615, !2616}
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2612, file: !2559, line: 48, baseType: !631, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2612, file: !2559, line: 49, baseType: !631, size: 64, offset: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2612, file: !2559, line: 50, baseType: !631, size: 64, offset: 128)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2558, file: !2559, line: 160, baseType: !2503, size: 640, offset: 2240)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2558, file: !2559, line: 163, baseType: !2619, size: 256, offset: 2880)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 256, elements: !855)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2558, file: !2559, line: 169, baseType: !1149, size: 64, offset: 3136)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2558, file: !2559, line: 172, baseType: !85, size: 32, offset: 3200)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2558, file: !2559, line: 174, baseType: !2623, size: 64, offset: 3264)
!2623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2624, size: 64)
!2624 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2559, line: 174, flags: DIFlagFwdDecl)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2558, file: !2559, line: 185, baseType: !2626, size: 64, offset: 3328)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !406, line: 860, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !406, line: 853, size: 64, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2627, file: !406, line: 858, baseType: !405, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2627, file: !406, line: 859, baseType: !215, size: 32, offset: 32)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2558, file: !2559, line: 186, baseType: !437, size: 64, offset: 3392)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2558, file: !2559, line: 186, baseType: !437, size: 64, offset: 3456)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2558, file: !2559, line: 186, baseType: !437, size: 64, offset: 3520)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2558, file: !2559, line: 186, baseType: !437, size: 64, offset: 3584)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2558, file: !2559, line: 187, baseType: !437, size: 64, offset: 3648)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2558, file: !2559, line: 188, baseType: !437, size: 64, offset: 3712)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2558, file: !2559, line: 189, baseType: !2491, size: 192, offset: 3776)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2558, file: !2559, line: 190, baseType: !185, size: 64, offset: 3968)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2558, file: !2559, line: 190, baseType: !185, size: 64, offset: 4032)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2558, file: !2559, line: 190, baseType: !185, size: 64, offset: 4096)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2558, file: !2559, line: 190, baseType: !185, size: 64, offset: 4160)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2558, file: !2559, line: 191, baseType: !185, size: 64, offset: 4224)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2558, file: !2559, line: 191, baseType: !185, size: 64, offset: 4288)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2558, file: !2559, line: 191, baseType: !185, size: 64, offset: 4352)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2558, file: !2559, line: 191, baseType: !185, size: 64, offset: 4416)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2558, file: !2559, line: 192, baseType: !185, size: 64, offset: 4480)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2558, file: !2559, line: 192, baseType: !185, size: 64, offset: 4544)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2558, file: !2559, line: 192, baseType: !185, size: 64, offset: 4608)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2558, file: !2559, line: 192, baseType: !185, size: 64, offset: 4672)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2558, file: !2559, line: 193, baseType: !185, size: 64, offset: 4736)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2558, file: !2559, line: 193, baseType: !185, size: 64, offset: 4800)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2558, file: !2559, line: 194, baseType: !2653, size: 448, offset: 4864)
!2653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2654, line: 12, size: 448, elements: !2655)
!2654 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2655 = !{!2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2653, file: !2654, line: 15, baseType: !437, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2653, file: !2654, line: 17, baseType: !437, size: 64, offset: 64)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2653, file: !2654, line: 19, baseType: !437, size: 64, offset: 128)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2653, file: !2654, line: 21, baseType: !437, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2653, file: !2654, line: 29, baseType: !437, size: 64, offset: 256)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2653, file: !2654, line: 35, baseType: !437, size: 64, offset: 320)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2653, file: !2654, line: 44, baseType: !437, size: 64, offset: 384)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2558, file: !2559, line: 202, baseType: !439, size: 64, offset: 5312)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2558, file: !2559, line: 213, baseType: !2665, size: 2048, offset: 5376)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2666, size: 2048, elements: !2526)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2667, line: 43, size: 128, elements: !2668)
!2667 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2668 = !{!2669, !2670}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2666, file: !2667, line: 44, baseType: !334, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2666, file: !2667, line: 45, baseType: !334, size: 64, offset: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2558, file: !2559, line: 216, baseType: !2672, size: 448, offset: 7424)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2559, line: 30, size: 448, elements: !2673)
!2673 = !{!2674, !2675, !2676, !2677, !2678, !2679, !2680}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2672, file: !2559, line: 31, baseType: !85, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2672, file: !2559, line: 32, baseType: !321, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2672, file: !2559, line: 33, baseType: !185, size: 64, offset: 128)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2672, file: !2559, line: 34, baseType: !437, size: 64, offset: 192)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2672, file: !2559, line: 34, baseType: !437, size: 64, offset: 256)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2672, file: !2559, line: 35, baseType: !185, size: 64, offset: 320)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2672, file: !2559, line: 35, baseType: !185, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2558, file: !2559, line: 219, baseType: !2682, size: 64, offset: 7872)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2559, line: 219, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2558, file: !2559, line: 222, baseType: !7, size: 32, offset: 7936)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2558, file: !2559, line: 223, baseType: !2686, size: 64, offset: 8000)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2559, line: 223, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2558, file: !2559, line: 230, baseType: !705, size: 8, offset: 8064)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2558, file: !2559, line: 231, baseType: !763, size: 16, offset: 8080)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2558, file: !2559, line: 232, baseType: !763, size: 16, offset: 8096)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2558, file: !2559, line: 234, baseType: !1508, size: 64, offset: 8128)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2558, file: !2559, line: 237, baseType: !625, size: 256, offset: 8192)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2558, file: !2559, line: 243, baseType: !1227, size: 320, offset: 8448)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2096, file: !1741, line: 1111, baseType: !2695, size: 64, offset: 15424)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2559, line: 20, size: 16640, elements: !2697)
!2697 = !{!2698, !2699, !2700, !2701}
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2696, file: !2559, line: 21, baseType: !215, size: 32)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2696, file: !2559, line: 22, baseType: !1153, size: 32, offset: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2696, file: !2559, line: 23, baseType: !1164, size: 192, offset: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2696, file: !2559, line: 24, baseType: !2702, size: 16384, offset: 256)
!2702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2703, size: 16384, elements: !290)
!2703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1371, line: 51, size: 256, elements: !2704)
!2704 = !{!2705}
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2703, file: !1371, line: 52, baseType: !2706, size: 256)
!2706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1371, line: 37, size: 256, elements: !2707)
!2707 = !{!2708, !2715, !2716, !2720}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2706, file: !1371, line: 39, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2710, line: 83, baseType: !2711)
!2710 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2710, line: 82, baseType: !2713)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{null, !85}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2706, file: !1371, line: 40, baseType: !185, size: 64, offset: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2706, file: !1371, line: 46, baseType: !2717, size: 64, offset: 128)
!2717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2710, line: 86, baseType: !2718)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2710, line: 85, baseType: !989)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2706, file: !1371, line: 48, baseType: !2573, size: 64, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2096, file: !1741, line: 1112, baseType: !2573, size: 64, offset: 15488)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2096, file: !1741, line: 1113, baseType: !2573, size: 64, offset: 15552)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2096, file: !1741, line: 1115, baseType: !2573, size: 64, offset: 15616)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2096, file: !1741, line: 1116, baseType: !2569, size: 192, offset: 15680)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2096, file: !1741, line: 1117, baseType: !185, size: 64, offset: 15872)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2096, file: !1741, line: 1118, baseType: !332, size: 64, offset: 15936)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2096, file: !1741, line: 1119, baseType: !7, size: 32, offset: 16000)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2096, file: !1741, line: 1121, baseType: !844, size: 64, offset: 16064)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2096, file: !1741, line: 1125, baseType: !2730, size: 64, offset: 16128)
!2730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2731 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1741, line: 43, flags: DIFlagFwdDecl)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2096, file: !1741, line: 1127, baseType: !370, size: 32, offset: 16192)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2096, file: !1741, line: 1128, baseType: !7, size: 32, offset: 16224)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2096, file: !1741, line: 1130, baseType: !2735, size: 128, offset: 16256)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2736, line: 37, size: 128, elements: !2737)
!2736 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2737 = !{!2738, !2739, !2740}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2735, file: !2736, line: 38, baseType: !85, size: 32)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2735, file: !2736, line: 39, baseType: !235, size: 32, offset: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2735, file: !2736, line: 40, baseType: !2741, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2742, size: 64)
!2742 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2736, line: 24, flags: DIFlagFwdDecl)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2096, file: !1741, line: 1131, baseType: !2744, size: 256, offset: 16384)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2745, line: 12, size: 256, elements: !2746)
!2745 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2746 = !{!2747, !2748, !2749, !2750}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2744, file: !2745, line: 13, baseType: !285, size: 64)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2744, file: !2745, line: 14, baseType: !185, size: 64, offset: 64)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2744, file: !2745, line: 15, baseType: !185, size: 64, offset: 128)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2744, file: !2745, line: 16, baseType: !705, size: 8, offset: 192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2096, file: !1741, line: 1134, baseType: !437, size: 64, offset: 16640)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2096, file: !1741, line: 1135, baseType: !437, size: 64, offset: 16704)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2096, file: !1741, line: 1138, baseType: !215, size: 32, offset: 16768)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2096, file: !1741, line: 1141, baseType: !583, size: 32, offset: 16800)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2096, file: !1741, line: 1143, baseType: !2756, size: 64, offset: 16832)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1741, line: 735, size: 64, elements: !2757)
!2757 = !{!2758}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2756, file: !1741, line: 736, baseType: !2759, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2096, file: !1741, line: 1147, baseType: !2265, size: 128, offset: 16896)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2096, file: !1741, line: 1149, baseType: !2095, size: 64, offset: 17024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2096, file: !1741, line: 1151, baseType: !2763, size: 64, offset: 17088)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1741, line: 1151, flags: DIFlagFwdDecl)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2096, file: !1741, line: 1188, baseType: !182, size: 64, offset: 17152)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2096, file: !1741, line: 1191, baseType: !2767, size: 64, offset: 17216)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1741, line: 44, flags: DIFlagFwdDecl)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2096, file: !1741, line: 1194, baseType: !2770, size: 64, offset: 17280)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1741, line: 45, flags: DIFlagFwdDecl)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2096, file: !1741, line: 1197, baseType: !2773, size: 64, offset: 17344)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1741, line: 61, flags: DIFlagFwdDecl)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2096, file: !1741, line: 1199, baseType: !2776, size: 64, offset: 17408)
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2778, line: 99, size: 128, elements: !2779)
!2778 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2779 = !{!2780, !2781, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2777, file: !2778, line: 100, baseType: !629, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2777, file: !2778, line: 101, baseType: !235, size: 32, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2777, file: !2778, line: 103, baseType: !255, size: 16, offset: 96)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2096, file: !1741, line: 1202, baseType: !2784, size: 64, offset: 17472)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1741, line: 48, flags: DIFlagFwdDecl)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2096, file: !1741, line: 1205, baseType: !185, size: 64, offset: 17536)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2096, file: !1741, line: 1206, baseType: !2788, size: 64, offset: 17600)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1371, line: 14, baseType: !2790)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1371, line: 12, size: 384, elements: !2791)
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_member, scope: !2790, file: !1371, line: 13, baseType: !2793, size: 384)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2790, file: !1371, line: 13, size: 384, elements: !2794)
!2794 = !{!2795, !2796, !2797, !2798}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2793, file: !1371, line: 13, baseType: !85, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2793, file: !1371, line: 13, baseType: !85, size: 32, offset: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2793, file: !1371, line: 13, baseType: !85, size: 32, offset: 64)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2793, file: !1371, line: 13, baseType: !2799, size: 256, offset: 128)
!2799 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2800, line: 37, size: 256, elements: !2801)
!2800 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2801 = !{!2802, !2807, !2820, !2826, !2835, !2862, !2867}
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2799, file: !2800, line: 42, baseType: !2803, size: 64)
!2803 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 39, size: 64, elements: !2804)
!2804 = !{!2805, !2806}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2803, file: !2800, line: 40, baseType: !2468, size: 32)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2803, file: !2800, line: 41, baseType: !376, size: 32, offset: 32)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2799, file: !2800, line: 50, baseType: !2808, size: 192)
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 45, size: 192, elements: !2809)
!2809 = !{!2810, !2812, !2813, !2819}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2808, file: !2800, line: 46, baseType: !2811, size: 32)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !319, line: 95, baseType: !85)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2808, file: !2800, line: 47, baseType: !85, size: 32, offset: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2808, file: !2800, line: 48, baseType: !2814, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2800, line: 11, baseType: !2815)
!2815 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2800, line: 8, size: 64, elements: !2816)
!2816 = !{!2817, !2818}
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2815, file: !2800, line: 9, baseType: !85, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2815, file: !2800, line: 10, baseType: !182, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2808, file: !2800, line: 49, baseType: !85, size: 32, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2799, file: !2800, line: 57, baseType: !2821, size: 128)
!2821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 53, size: 128, elements: !2822)
!2822 = !{!2823, !2824, !2825}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2821, file: !2800, line: 54, baseType: !2468, size: 32)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2821, file: !2800, line: 55, baseType: !376, size: 32, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2821, file: !2800, line: 56, baseType: !2814, size: 64, offset: 64)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2799, file: !2800, line: 66, baseType: !2827, size: 256)
!2827 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 60, size: 256, elements: !2828)
!2828 = !{!2829, !2830, !2831, !2832, !2834}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2827, file: !2800, line: 61, baseType: !2468, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2827, file: !2800, line: 62, baseType: !376, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2827, file: !2800, line: 63, baseType: !85, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2827, file: !2800, line: 64, baseType: !2833, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !319, line: 94, baseType: !320)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2827, file: !2800, line: 65, baseType: !2833, size: 64, offset: 192)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2799, file: !2800, line: 105, baseType: !2836, size: 256)
!2836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 69, size: 256, elements: !2837)
!2837 = !{!2838, !2839}
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2836, file: !2800, line: 70, baseType: !182, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !2836, file: !2800, line: 79, baseType: !2840, size: 192, offset: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2836, file: !2800, line: 79, size: 192, elements: !2841)
!2841 = !{!2842, !2843, !2844, !2851, !2856}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2840, file: !2800, line: 81, baseType: !85, size: 32)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2840, file: !2800, line: 86, baseType: !763, size: 16)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2840, file: !2800, line: 92, baseType: !2845, size: 192)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !2800, line: 88, size: 192, elements: !2846)
!2846 = !{!2847, !2849, !2850}
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2845, file: !2800, line: 89, baseType: !2848, size: 64)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 64, elements: !2249)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2845, file: !2800, line: 90, baseType: !182, size: 64, offset: 64)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2845, file: !2800, line: 91, baseType: !182, size: 64, offset: 128)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2840, file: !2800, line: 97, baseType: !2852, size: 96)
!2852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !2800, line: 94, size: 96, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2852, file: !2800, line: 95, baseType: !2848, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2852, file: !2800, line: 96, baseType: !434, size: 32, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2840, file: !2800, line: 103, baseType: !2857, size: 128)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2840, file: !2800, line: 99, size: 128, elements: !2858)
!2858 = !{!2859, !2860, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2857, file: !2800, line: 100, baseType: !185, size: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2857, file: !2800, line: 101, baseType: !434, size: 32, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2857, file: !2800, line: 102, baseType: !434, size: 32, offset: 96)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2799, file: !2800, line: 111, baseType: !2863, size: 128)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 108, size: 128, elements: !2864)
!2864 = !{!2865, !2866}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2863, file: !2800, line: 109, baseType: !321, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2863, file: !2800, line: 110, baseType: !85, size: 32, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2799, file: !2800, line: 118, baseType: !2868, size: 128)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2799, file: !2800, line: 114, size: 128, elements: !2869)
!2869 = !{!2870, !2871, !2872}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2868, file: !2800, line: 115, baseType: !182, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2868, file: !2800, line: 116, baseType: !85, size: 32, offset: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2868, file: !2800, line: 117, baseType: !7, size: 32, offset: 96)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2096, file: !1741, line: 1208, baseType: !2653, size: 448, offset: 17664)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2096, file: !1741, line: 1215, baseType: !437, size: 64, offset: 18112)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2096, file: !1741, line: 1217, baseType: !437, size: 64, offset: 18176)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2096, file: !1741, line: 1219, baseType: !437, size: 64, offset: 18240)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2096, file: !1741, line: 1223, baseType: !2878, size: 64, offset: 18304)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2879, line: 99, baseType: !2880)
!2879 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2879, line: 99, size: 64, elements: !2881)
!2881 = !{!2882}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2880, file: !2879, line: 99, baseType: !2333, size: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2096, file: !1741, line: 1225, baseType: !405, size: 32, offset: 18368)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2096, file: !1741, line: 1226, baseType: !85, size: 32, offset: 18400)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2096, file: !1741, line: 1227, baseType: !85, size: 32, offset: 18432)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2096, file: !1741, line: 1231, baseType: !2887, size: 64, offset: 18496)
!2887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2888, size: 64)
!2888 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1741, line: 1231, flags: DIFlagFwdDecl)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2096, file: !1741, line: 1233, baseType: !202, size: 128, offset: 18560)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2096, file: !1741, line: 1240, baseType: !2891, size: 64, offset: 18688)
!2891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2892, size: 64)
!2892 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1741, line: 62, flags: DIFlagFwdDecl)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2096, file: !1741, line: 1242, baseType: !2894, size: 64, offset: 18752)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1741, line: 1242, flags: DIFlagFwdDecl)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2096, file: !1741, line: 1244, baseType: !202, size: 128, offset: 18816)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2096, file: !1741, line: 1245, baseType: !2898, size: 64, offset: 18944)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1741, line: 51, flags: DIFlagFwdDecl)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2096, file: !1741, line: 1246, baseType: !625, size: 256, offset: 19008)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2096, file: !1741, line: 1247, baseType: !7, size: 32, offset: 19264)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2096, file: !1741, line: 1250, baseType: !2903, size: 64, offset: 19328)
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1741, line: 57, flags: DIFlagFwdDecl)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2096, file: !1741, line: 1251, baseType: !625, size: 256, offset: 19392)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2096, file: !1741, line: 1252, baseType: !202, size: 128, offset: 19648)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2096, file: !1741, line: 1259, baseType: !1700, size: 64, offset: 19776)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2096, file: !1741, line: 1260, baseType: !763, size: 16, offset: 19840)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2096, file: !1741, line: 1261, baseType: !763, size: 16, offset: 19856)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2096, file: !1741, line: 1314, baseType: !2911, size: 64, offset: 19904)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2913, line: 62, size: 256, align: 256, elements: !2914)
!2913 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2914 = !{!2915, !2916, !2917, !2918, !2919, !2920, !2921}
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2912, file: !2913, line: 75, baseType: !434, size: 32)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2912, file: !2913, line: 90, baseType: !434, size: 32, offset: 32)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2912, file: !2913, line: 112, baseType: !438, size: 64, offset: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2912, file: !2913, line: 132, baseType: !434, size: 32, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2912, file: !2913, line: 140, baseType: !434, size: 32, offset: 160)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2912, file: !2913, line: 149, baseType: !434, size: 32, offset: 192)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2912, file: !2913, line: 154, baseType: !2922, offset: 224)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, elements: !1179)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2096, file: !1741, line: 1315, baseType: !433, size: 32, offset: 19968)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2096, file: !1741, line: 1316, baseType: !433, size: 32, offset: 20000)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2096, file: !1741, line: 1321, baseType: !185, size: 64, offset: 20032)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2096, file: !1741, line: 1325, baseType: !85, size: 32, offset: 20096)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2096, file: !1741, line: 1326, baseType: !85, size: 32, offset: 20128)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2096, file: !1741, line: 1327, baseType: !85, size: 32, offset: 20160)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2096, file: !1741, line: 1328, baseType: !85, size: 32, offset: 20192)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2096, file: !1741, line: 1329, baseType: !845, size: 128, align: 64, offset: 20224)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2096, file: !1741, line: 1332, baseType: !2932, size: 128, offset: 20352)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2933, line: 51, size: 128, elements: !2934)
!2933 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2934 = !{!2935, !2940, !2941}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2932, file: !2933, line: 60, baseType: !2936, size: 64)
!2936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2937, line: 7, size: 64, elements: !2938)
!2937 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2938 = !{!2939}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2936, file: !2937, line: 12, baseType: !2330, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2932, file: !2933, line: 63, baseType: !705, size: 8, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2932, file: !2933, line: 70, baseType: !705, size: 8, offset: 72)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2096, file: !1741, line: 1335, baseType: !1739, size: 64, offset: 20480)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2096, file: !1741, line: 1337, baseType: !2944, size: 128, offset: 20544)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2933, line: 39, size: 128, elements: !2945)
!2945 = !{!2946, !3007, !3008}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2944, file: !2933, line: 40, baseType: !2947, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2948, size: 64)
!2948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1496, line: 74, size: 512, align: 128, elements: !2949)
!2949 = !{!2950, !2951, !3001, !3006}
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2948, file: !1496, line: 75, baseType: !185, size: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !1496, line: 83, baseType: !2952, size: 320, offset: 64)
!2952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !1496, line: 83, size: 320, elements: !2953)
!2953 = !{!2954, !2975, !2989, !2993, !3000}
!2954 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !1496, line: 84, baseType: !2955, size: 320)
!2955 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !1496, line: 84, size: 320, elements: !2956)
!2956 = !{!2957, !2968, !2969, !2974}
!2957 = !DIDerivedType(tag: DW_TAG_member, scope: !2955, file: !1496, line: 90, baseType: !2958, size: 128)
!2958 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2955, file: !1496, line: 90, size: 128, elements: !2959)
!2959 = !{!2960, !2961, !2966, !2967}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2958, file: !1496, line: 91, baseType: !202, size: 128)
!2961 = !DIDerivedType(tag: DW_TAG_member, scope: !2958, file: !1496, line: 94, baseType: !2962, size: 128)
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2958, file: !1496, line: 94, size: 128, elements: !2963)
!2963 = !{!2964, !2965}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2962, file: !1496, line: 96, baseType: !182, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2962, file: !1496, line: 98, baseType: !7, size: 32, offset: 64)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2958, file: !1496, line: 102, baseType: !202, size: 128)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2958, file: !1496, line: 103, baseType: !202, size: 128)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2955, file: !1496, line: 106, baseType: !360, size: 64, offset: 128)
!2969 = !DIDerivedType(tag: DW_TAG_member, scope: !2955, file: !1496, line: 107, baseType: !2970, size: 64, offset: 192)
!2970 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2955, file: !1496, line: 107, size: 64, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2970, file: !1496, line: 108, baseType: !185, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2970, file: !1496, line: 109, baseType: !185, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2955, file: !1496, line: 117, baseType: !185, size: 64, offset: 256)
!2975 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !1496, line: 119, baseType: !2976, size: 320)
!2976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !1496, line: 119, size: 320, elements: !2977)
!2977 = !{!2978, !2979, !2982, !2983, !2984}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2976, file: !1496, line: 124, baseType: !185, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2976, file: !1496, line: 125, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2981, size: 64)
!2981 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1496, line: 125, flags: DIFlagFwdDecl)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2976, file: !1496, line: 126, baseType: !185, size: 64, offset: 128)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2976, file: !1496, line: 127, baseType: !185, size: 64, offset: 192)
!2984 = !DIDerivedType(tag: DW_TAG_member, scope: !2976, file: !1496, line: 128, baseType: !2985, size: 64, offset: 256)
!2985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2976, file: !1496, line: 128, size: 64, elements: !2986)
!2986 = !{!2987, !2988}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2985, file: !1496, line: 133, baseType: !185, size: 64)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2985, file: !1496, line: 138, baseType: !629, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !1496, line: 141, baseType: !2990, size: 64)
!2990 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !1496, line: 141, size: 64, elements: !2991)
!2991 = !{!2992}
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2990, file: !1496, line: 142, baseType: !185, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, scope: !2952, file: !1496, line: 144, baseType: !2994, size: 128)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2952, file: !1496, line: 144, size: 128, elements: !2995)
!2995 = !{!2996, !2999}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2994, file: !1496, line: 146, baseType: !2997, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1496, line: 146, flags: DIFlagFwdDecl)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2994, file: !1496, line: 147, baseType: !182, size: 64, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2952, file: !1496, line: 161, baseType: !845, size: 128, align: 64)
!3001 = !DIDerivedType(tag: DW_TAG_member, scope: !2948, file: !1496, line: 164, baseType: !3002, size: 32, offset: 384)
!3002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2948, file: !1496, line: 164, size: 32, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3002, file: !1496, line: 169, baseType: !235, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3002, file: !1496, line: 177, baseType: !7, size: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2948, file: !1496, line: 181, baseType: !235, size: 32, offset: 416)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2944, file: !2933, line: 42, baseType: !434, size: 32, offset: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2944, file: !2933, line: 43, baseType: !434, size: 32, offset: 96)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2096, file: !1741, line: 1340, baseType: !3010, size: 64, offset: 20672)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1741, line: 69, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2096, file: !1741, line: 1351, baseType: !85, size: 32, offset: 20736)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2096, file: !1741, line: 1352, baseType: !85, size: 32, offset: 20768)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2096, file: !1741, line: 1354, baseType: !185, size: 64, offset: 20800)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2096, file: !1741, line: 1364, baseType: !437, size: 64, offset: 20864)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2096, file: !1741, line: 1365, baseType: !437, size: 64, offset: 20928)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2096, file: !1741, line: 1412, baseType: !185, size: 64, offset: 20992)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2096, file: !1741, line: 1453, baseType: !3019, size: 64, offset: 21056)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1741, line: 1453, flags: DIFlagFwdDecl)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2096, file: !1741, line: 1457, baseType: !3022, size: 64, offset: 21120)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3023, size: 64)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !3024)
!3024 = !{!3025, !3026, !3045, !3048, !3049, !3082, !3092}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3023, file: !44, line: 62, baseType: !43, size: 32)
!3026 = !DIDerivedType(tag: DW_TAG_member, scope: !3023, file: !44, line: 64, baseType: !3027, size: 192, offset: 64)
!3027 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3023, file: !44, line: 64, size: 192, elements: !3028)
!3028 = !{!3029, !3040}
!3029 = !DIDerivedType(tag: DW_TAG_member, scope: !3027, file: !44, line: 65, baseType: !3030, size: 192)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !44, line: 65, size: 192, elements: !3031)
!3031 = !{!3032, !3039}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3030, file: !44, line: 66, baseType: !3033, size: 128)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3034, line: 50, size: 128, elements: !3035)
!3034 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3035 = !{!3036, !3037, !3038}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3033, file: !3034, line: 52, baseType: !185, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3033, file: !3034, line: 54, baseType: !7, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3033, file: !3034, line: 55, baseType: !7, size: 32, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3030, file: !44, line: 67, baseType: !185, size: 64, offset: 128)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !3027, file: !44, line: 70, baseType: !3041, size: 192)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3027, file: !44, line: 70, size: 192, elements: !3042)
!3042 = !{!3043, !3044}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3041, file: !44, line: 71, baseType: !845, size: 128, align: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3041, file: !44, line: 72, baseType: !185, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3023, file: !44, line: 76, baseType: !3046, size: 64, offset: 256)
!3046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3047, size: 64)
!3047 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3023, file: !44, line: 77, baseType: !185, size: 64, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3023, file: !44, line: 79, baseType: !3050, size: 64, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3034, line: 25, size: 256, elements: !3052)
!3052 = !{!3053, !3059, !3063}
!3053 = !DIDerivedType(tag: DW_TAG_member, scope: !3051, file: !3034, line: 26, baseType: !3054, size: 128)
!3054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3051, file: !3034, line: 26, size: 128, elements: !3055)
!3055 = !{!3056, !3058}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3054, file: !3034, line: 27, baseType: !3057, size: 128)
!3057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 128, elements: !2526)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3054, file: !3034, line: 28, baseType: !3057, size: 128)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3051, file: !3034, line: 31, baseType: !3060, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3062)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3034, line: 23, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, scope: !3051, file: !3034, line: 33, baseType: !3064, size: 64, offset: 192)
!3064 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3051, file: !3034, line: 33, size: 64, elements: !3065)
!3065 = !{!3066, !3072, !3077}
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3064, file: !3034, line: 38, baseType: !3067, size: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !3034, line: 34, size: 64, elements: !3068)
!3068 = !{!3069, !3070, !3071}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3067, file: !3034, line: 35, baseType: !621, size: 32)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3067, file: !3034, line: 36, baseType: !243, size: 8, offset: 32)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3067, file: !3034, line: 37, baseType: !243, size: 8, offset: 40)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3064, file: !3034, line: 42, baseType: !3073, size: 16)
!3073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !3034, line: 39, size: 16, elements: !3074)
!3074 = !{!3075, !3076}
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3073, file: !3034, line: 40, baseType: !243, size: 8)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3073, file: !3034, line: 41, baseType: !243, size: 8, offset: 8)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3064, file: !3034, line: 46, baseType: !3078, size: 16)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3064, file: !3034, line: 43, size: 16, elements: !3079)
!3079 = !{!3080, !3081}
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3078, file: !3034, line: 44, baseType: !243, size: 8)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3078, file: !3034, line: 45, baseType: !243, size: 8, offset: 8)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3023, file: !44, line: 81, baseType: !3083, size: 64, offset: 448)
!3083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3084, size: 64)
!3084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !3085)
!3085 = !{!3086, !3087, !3088, !3089, !3090, !3091}
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3084, file: !44, line: 86, baseType: !3046, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3084, file: !44, line: 87, baseType: !185, size: 64, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3084, file: !44, line: 88, baseType: !185, size: 64, offset: 128)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3084, file: !44, line: 89, baseType: !185, size: 64, offset: 192)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3084, file: !44, line: 90, baseType: !705, size: 8, offset: 256)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3084, file: !44, line: 92, baseType: !3083, size: 64, offset: 320)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3023, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2096, file: !1741, line: 1463, baseType: !3094, offset: 21184)
!3094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1741, line: 739, elements: !913)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2096, file: !1741, line: 1470, baseType: !845, size: 128, align: 64, offset: 21184)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2096, file: !1741, line: 1471, baseType: !1153, size: 32, offset: 21312)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2096, file: !1741, line: 1472, baseType: !85, size: 32, offset: 21344)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2096, file: !1741, line: 1474, baseType: !2095, size: 64, offset: 21376)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2096, file: !1741, line: 1475, baseType: !867, size: 320, offset: 21440)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2096, file: !1741, line: 1478, baseType: !3101, size: 64, offset: 21760)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1741, line: 1478, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2096, file: !1741, line: 1482, baseType: !1153, size: 32, offset: 21824)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2096, file: !1741, line: 1489, baseType: !182, size: 64, offset: 21888)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2096, file: !1741, line: 1504, baseType: !182, size: 64, offset: 21952)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2096, file: !1741, line: 1505, baseType: !438, size: 64, offset: 22016)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2096, file: !1741, line: 1506, baseType: !437, size: 64, offset: 22080)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2096, file: !1741, line: 1507, baseType: !438, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2096, file: !1741, line: 1508, baseType: !438, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2096, file: !1741, line: 1509, baseType: !438, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2096, file: !1741, line: 1510, baseType: !845, size: 128, align: 64, offset: 22208)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2096, file: !1741, line: 1511, baseType: !85, size: 32, offset: 22336)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2096, file: !1741, line: 1515, baseType: !3114, size: 64, offset: 22400)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1111, line: 56, size: 64, elements: !3115)
!3115 = !{!3116}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3114, file: !1111, line: 57, baseType: !1114, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2096, file: !1741, line: 1518, baseType: !3114, size: 64, offset: 22464)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2096, file: !1741, line: 1528, baseType: !845, size: 128, align: 64, offset: 22528)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2096, file: !1741, line: 1552, baseType: !3120, size: 35328, offset: 23040)
!3120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3121, line: 430, size: 35328, elements: !3122)
!3121 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3122 = !{!3123, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3152, !3153, !3154, !3155, !3156, !3157, !3160, !3161, !3162, !3163}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3120, file: !3121, line: 432, baseType: !3124, size: 192)
!3124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3125, size: 192, elements: !286)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3126, line: 16, size: 64, elements: !3127)
!3126 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3127 = !{!3128, !3129, !3130, !3131, !3132, !3133, !3134, !3135, !3136, !3137, !3138, !3139, !3140}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3125, file: !3126, line: 17, baseType: !253, size: 16)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3125, file: !3126, line: 18, baseType: !253, size: 16, offset: 16)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3125, file: !3126, line: 19, baseType: !253, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3125, file: !3126, line: 19, baseType: !253, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3125, file: !3126, line: 19, baseType: !253, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3125, file: !3126, line: 19, baseType: !253, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3125, file: !3126, line: 19, baseType: !253, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3125, file: !3126, line: 20, baseType: !253, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3125, file: !3126, line: 20, baseType: !253, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3125, file: !3126, line: 20, baseType: !253, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3125, file: !3126, line: 20, baseType: !253, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3125, file: !3126, line: 20, baseType: !253, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3125, file: !3126, line: 20, baseType: !253, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3120, file: !3121, line: 436, baseType: !185, size: 64, offset: 192)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3120, file: !3121, line: 440, baseType: !255, size: 16, offset: 256)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3120, file: !3121, line: 441, baseType: !255, size: 16, offset: 272)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3120, file: !3121, line: 442, baseType: !255, size: 16, offset: 288)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3120, file: !3121, line: 443, baseType: !255, size: 16, offset: 304)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3120, file: !3121, line: 447, baseType: !185, size: 64, offset: 320)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3120, file: !3121, line: 448, baseType: !185, size: 64, offset: 384)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3120, file: !3121, line: 459, baseType: !3149, size: 256, offset: 448)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3150, size: 256, elements: !855)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3121, line: 428, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3120, file: !3121, line: 461, baseType: !185, size: 64, offset: 704)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3120, file: !3121, line: 463, baseType: !185, size: 64, offset: 768)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3120, file: !3121, line: 465, baseType: !185, size: 64, offset: 832)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3120, file: !3121, line: 466, baseType: !185, size: 64, offset: 896)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3120, file: !3121, line: 467, baseType: !185, size: 64, offset: 960)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3120, file: !3121, line: 473, baseType: !3158, size: 64, offset: 1024)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3121, line: 10, flags: DIFlagFwdDecl)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3120, file: !3121, line: 480, baseType: !185, size: 64, offset: 1088)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3120, file: !3121, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3120, file: !3121, line: 491, baseType: !433, size: 32, offset: 1184)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3120, file: !3121, line: 501, baseType: !3164, size: 33792, offset: 1536)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3165, line: 448, size: 33792, elements: !3166)
!3165 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3166 = !{!3167, !3168, !3169, !3331, !3332, !3338, !3339}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3164, file: !3165, line: 461, baseType: !7, size: 32)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3164, file: !3165, line: 468, baseType: !185, size: 64, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3164, file: !3165, line: 476, baseType: !3170, size: 64, offset: 128)
!3170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3165, line: 356, size: 33280, align: 512, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3171, file: !3165, line: 358, baseType: !7, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3171, file: !3165, line: 361, baseType: !7, size: 32, offset: 32)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3171, file: !3165, line: 364, baseType: !437, size: 64, offset: 64)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3171, file: !3165, line: 367, baseType: !437, size: 64, offset: 128)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3171, file: !3165, line: 370, baseType: !437, size: 64, offset: 192)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3171, file: !3165, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3171, file: !3165, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3171, file: !3165, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3171, file: !3165, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3171, file: !3165, line: 397, baseType: !3183, size: 32768, offset: 512)
!3183 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3165, line: 348, size: 32768, elements: !3184)
!3184 = !{!3185, !3200, !3237, !3314, !3327}
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3183, file: !3165, line: 349, baseType: !3186, size: 896)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3165, line: 12, size: 896, elements: !3187)
!3187 = !{!3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3199}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3186, file: !3165, line: 13, baseType: !433, size: 32)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3186, file: !3165, line: 14, baseType: !433, size: 32, offset: 32)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3186, file: !3165, line: 15, baseType: !433, size: 32, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3186, file: !3165, line: 16, baseType: !433, size: 32, offset: 96)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3186, file: !3165, line: 17, baseType: !433, size: 32, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3186, file: !3165, line: 18, baseType: !433, size: 32, offset: 160)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3186, file: !3165, line: 19, baseType: !433, size: 32, offset: 192)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3186, file: !3165, line: 22, baseType: !3196, size: 640, offset: 224)
!3196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 640, elements: !3197)
!3197 = !{!3198}
!3198 = !DISubrange(count: 20)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3186, file: !3165, line: 25, baseType: !433, size: 32, offset: 864)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3183, file: !3165, line: 350, baseType: !3201, size: 4096, align: 128)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3165, line: 34, size: 4096, align: 128, elements: !3202)
!3202 = !{!3203, !3204, !3205, !3206, !3207, !3222, !3223, !3224, !3226, !3228, !3232}
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3201, file: !3165, line: 35, baseType: !253, size: 16)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3201, file: !3165, line: 36, baseType: !253, size: 16, offset: 16)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3201, file: !3165, line: 37, baseType: !253, size: 16, offset: 32)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3201, file: !3165, line: 38, baseType: !253, size: 16, offset: 48)
!3207 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !3165, line: 39, baseType: !3208, size: 128, offset: 64)
!3208 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !3165, line: 39, size: 128, elements: !3209)
!3209 = !{!3210, !3215}
!3210 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3165, line: 40, baseType: !3211, size: 128)
!3211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3208, file: !3165, line: 40, size: 128, elements: !3212)
!3212 = !{!3213, !3214}
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3211, file: !3165, line: 41, baseType: !437, size: 64)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3211, file: !3165, line: 42, baseType: !437, size: 64, offset: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, scope: !3208, file: !3165, line: 44, baseType: !3216, size: 128)
!3216 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3208, file: !3165, line: 44, size: 128, elements: !3217)
!3217 = !{!3218, !3219, !3220, !3221}
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3216, file: !3165, line: 45, baseType: !433, size: 32)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3216, file: !3165, line: 46, baseType: !433, size: 32, offset: 32)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3216, file: !3165, line: 47, baseType: !433, size: 32, offset: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3216, file: !3165, line: 48, baseType: !433, size: 32, offset: 96)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3201, file: !3165, line: 51, baseType: !433, size: 32, offset: 192)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3201, file: !3165, line: 52, baseType: !433, size: 32, offset: 224)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3201, file: !3165, line: 55, baseType: !3225, size: 1024, offset: 256)
!3225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 1024, elements: !446)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3201, file: !3165, line: 58, baseType: !3227, size: 2048, offset: 1280)
!3227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 2048, elements: !290)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3201, file: !3165, line: 60, baseType: !3229, size: 384, offset: 3328)
!3229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !433, size: 384, elements: !3230)
!3230 = !{!3231}
!3231 = !DISubrange(count: 12)
!3232 = !DIDerivedType(tag: DW_TAG_member, scope: !3201, file: !3165, line: 62, baseType: !3233, size: 384, offset: 3712)
!3233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3201, file: !3165, line: 62, size: 384, elements: !3234)
!3234 = !{!3235, !3236}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3233, file: !3165, line: 63, baseType: !3229, size: 384)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3233, file: !3165, line: 64, baseType: !3229, size: 384)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3183, file: !3165, line: 351, baseType: !3238, size: 1088)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3165, line: 79, size: 1088, elements: !3239)
!3239 = !{!3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3313}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3238, file: !3165, line: 80, baseType: !433, size: 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3238, file: !3165, line: 81, baseType: !433, size: 32, offset: 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3238, file: !3165, line: 82, baseType: !433, size: 32, offset: 64)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3238, file: !3165, line: 83, baseType: !433, size: 32, offset: 96)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3238, file: !3165, line: 84, baseType: !433, size: 32, offset: 128)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3238, file: !3165, line: 85, baseType: !433, size: 32, offset: 160)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3238, file: !3165, line: 86, baseType: !433, size: 32, offset: 192)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3238, file: !3165, line: 88, baseType: !3196, size: 640, offset: 224)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3238, file: !3165, line: 89, baseType: !243, size: 8, offset: 864)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3238, file: !3165, line: 90, baseType: !243, size: 8, offset: 872)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3238, file: !3165, line: 91, baseType: !243, size: 8, offset: 880)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3238, file: !3165, line: 92, baseType: !243, size: 8, offset: 888)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3238, file: !3165, line: 93, baseType: !243, size: 8, offset: 896)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3238, file: !3165, line: 94, baseType: !243, size: 8, offset: 904)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3238, file: !3165, line: 95, baseType: !3255, size: 64, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3256, size: 64)
!3256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3257, line: 11, size: 128, elements: !3258)
!3257 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3258 = !{!3259, !3260}
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3256, file: !3257, line: 12, baseType: !321, size: 64)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3256, file: !3257, line: 13, baseType: !3261, size: 64, offset: 64)
!3261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3262, size: 64)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3263, line: 103, size: 1344, elements: !3264)
!3263 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3264 = !{!3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3293, !3294, !3295}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3262, file: !3263, line: 109, baseType: !185, size: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3262, file: !3263, line: 110, baseType: !185, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3262, file: !3263, line: 111, baseType: !185, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3262, file: !3263, line: 112, baseType: !185, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3262, file: !3263, line: 113, baseType: !185, size: 64, offset: 256)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3262, file: !3263, line: 114, baseType: !185, size: 64, offset: 320)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3262, file: !3263, line: 117, baseType: !185, size: 64, offset: 384)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3262, file: !3263, line: 118, baseType: !185, size: 64, offset: 448)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3262, file: !3263, line: 119, baseType: !185, size: 64, offset: 512)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3262, file: !3263, line: 120, baseType: !185, size: 64, offset: 576)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3262, file: !3263, line: 121, baseType: !185, size: 64, offset: 640)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3262, file: !3263, line: 122, baseType: !185, size: 64, offset: 704)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3262, file: !3263, line: 123, baseType: !185, size: 64, offset: 768)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3262, file: !3263, line: 124, baseType: !185, size: 64, offset: 832)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3262, file: !3263, line: 125, baseType: !185, size: 64, offset: 896)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3262, file: !3263, line: 139, baseType: !185, size: 64, offset: 960)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3262, file: !3263, line: 142, baseType: !185, size: 64, offset: 1024)
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !3263, line: 144, baseType: !3283, size: 64, offset: 1088)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !3263, line: 144, size: 64, elements: !3284)
!3284 = !{!3285, !3286, !3287}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3283, file: !3263, line: 146, baseType: !253, size: 16)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3283, file: !3263, line: 148, baseType: !437, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3283, file: !3263, line: 150, baseType: !3288, size: 64)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3263, line: 59, size: 64, elements: !3289)
!3289 = !{!3290, !3291, !3292}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3288, file: !3263, line: 61, baseType: !437, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3288, file: !3263, line: 63, baseType: !437, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3288, file: !3263, line: 65, baseType: !437, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3262, file: !3263, line: 153, baseType: !185, size: 64, offset: 1152)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3262, file: !3263, line: 154, baseType: !185, size: 64, offset: 1216)
!3295 = !DIDerivedType(tag: DW_TAG_member, scope: !3262, file: !3263, line: 156, baseType: !3296, size: 64, offset: 1280)
!3296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3262, file: !3263, line: 156, size: 64, elements: !3297)
!3297 = !{!3298, !3299, !3300}
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3296, file: !3263, line: 158, baseType: !253, size: 16)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3296, file: !3263, line: 160, baseType: !437, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3296, file: !3263, line: 162, baseType: !3301, size: 64)
!3301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3263, line: 69, size: 64, elements: !3302)
!3302 = !{!3303, !3304, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312}
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3301, file: !3263, line: 71, baseType: !437, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3301, file: !3263, line: 73, baseType: !437, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3301, file: !3263, line: 75, baseType: !437, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3301, file: !3263, line: 77, baseType: !437, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3301, file: !3263, line: 80, baseType: !437, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3301, file: !3263, line: 83, baseType: !437, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3301, file: !3263, line: 86, baseType: !437, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3301, file: !3263, line: 88, baseType: !437, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3301, file: !3263, line: 93, baseType: !437, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3301, file: !3263, line: 100, baseType: !437, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3238, file: !3165, line: 96, baseType: !433, size: 32, offset: 1024)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3183, file: !3165, line: 352, baseType: !3315, size: 4608, align: 512)
!3315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3165, line: 333, size: 4608, align: 512, elements: !3316)
!3316 = !{!3317, !3318, !3325}
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3315, file: !3165, line: 334, baseType: !3201, size: 4096, align: 128)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3315, file: !3165, line: 335, baseType: !3319, size: 512, offset: 4096)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3165, line: 312, size: 512, elements: !3320)
!3320 = !{!3321, !3322, !3323}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3319, file: !3165, line: 313, baseType: !437, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3319, file: !3165, line: 314, baseType: !437, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3319, file: !3165, line: 315, baseType: !3324, size: 384, offset: 128)
!3324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 384, elements: !1272)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3315, file: !3165, line: 336, baseType: !3326, offset: 4608)
!3326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, elements: !1179)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3183, file: !3165, line: 353, baseType: !3328, size: 32768)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 32768, elements: !3329)
!3329 = !{!3330}
!3330 = !DISubrange(count: 4096)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3164, file: !3165, line: 484, baseType: !3170, size: 64, offset: 192)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3164, file: !3165, line: 491, baseType: !3333, size: 128, offset: 256)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3165, line: 404, size: 128, elements: !3334)
!3334 = !{!3335, !3336, !3337}
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3333, file: !3165, line: 424, baseType: !437, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3333, file: !3165, line: 432, baseType: !7, size: 32, offset: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3333, file: !3165, line: 440, baseType: !7, size: 32, offset: 96)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3164, file: !3165, line: 498, baseType: !3333, size: 128, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3164, file: !3165, line: 508, baseType: !3171, size: 33280, align: 512, offset: 512)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2078, file: !2079, line: 16, baseType: !1164, size: 192, offset: 512)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2078, file: !2079, line: 17, baseType: !235, size: 32, offset: 704)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !516, file: !14, line: 1240, baseType: !182, size: 64, offset: 6912)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !516, file: !14, line: 1243, baseType: !433, size: 32, offset: 6976)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !516, file: !14, line: 1245, baseType: !1243, size: 64, offset: 7040)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !516, file: !14, line: 1246, baseType: !1243, size: 64, offset: 7104)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !516, file: !14, line: 1248, baseType: !434, size: 32, offset: 7168)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !516, file: !14, line: 1249, baseType: !3348, size: 64, offset: 7232)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !516, file: !14, line: 1252, baseType: !3351, size: 256, offset: 7296)
!3351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 256, elements: !446)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !516, file: !14, line: 1253, baseType: !3353, size: 128, offset: 7552)
!3353 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3354, line: 21, baseType: !3355)
!3354 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3354, line: 19, size: 128, elements: !3356)
!3356 = !{!3357}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3355, file: !3354, line: 20, baseType: !3358, size: 128)
!3358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !245, size: 128, elements: !2526)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !516, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !516, file: !14, line: 1261, baseType: !625, size: 256, offset: 7744)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !516, file: !14, line: 1267, baseType: !198, size: 64, offset: 8000)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !516, file: !14, line: 1269, baseType: !462, size: 64, offset: 8064)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !516, file: !14, line: 1271, baseType: !3364, size: 448, offset: 8128)
!3364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1858, line: 63, size: 448, elements: !3365)
!3365 = !{!3366, !3371, !3372, !3373, !3374, !3375, !3376}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3364, file: !1858, line: 64, baseType: !3367, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = !DISubroutineType(types: !3369)
!3369 = !{!185, !3370, !1856}
!3370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3364, size: 64)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3364, file: !1858, line: 66, baseType: !3367, size: 64, offset: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3364, file: !1858, line: 69, baseType: !321, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3364, file: !1858, line: 70, baseType: !85, size: 32, offset: 192)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3364, file: !1858, line: 71, baseType: !7, size: 32, offset: 224)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3364, file: !1858, line: 74, baseType: !202, size: 128, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3364, file: !1858, line: 85, baseType: !3377, size: 64, offset: 384)
!3377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !516, file: !14, line: 1274, baseType: !629, size: 64, offset: 8576)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !516, file: !14, line: 1280, baseType: !629, size: 64, offset: 8640)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !516, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !516, file: !14, line: 1286, baseType: !1790, size: 32, offset: 8736)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !516, file: !14, line: 1289, baseType: !946, size: 64, offset: 8768)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !516, file: !14, line: 1290, baseType: !994, size: 64, offset: 8832)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !516, file: !14, line: 1297, baseType: !1366, size: 64, offset: 8896)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !516, file: !14, line: 1304, baseType: !3386, size: 64, offset: 8960)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3387, line: 49, size: 64, elements: !3388)
!3387 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3388 = !{!3389}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3386, file: !3387, line: 50, baseType: !3390, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3387, line: 41, size: 512, align: 512, elements: !3392)
!3392 = !{!3393, !3394, !3399}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3391, file: !3387, line: 43, baseType: !215, size: 32)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3391, file: !3387, line: 45, baseType: !3395, size: 192, offset: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3387, line: 29, size: 192, elements: !3396)
!3396 = !{!3397, !3398}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3395, file: !3387, line: 30, baseType: !202, size: 128)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3395, file: !3387, line: 32, baseType: !321, size: 64, offset: 128)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3391, file: !3387, line: 46, baseType: !321, size: 64, offset: 256)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !516, file: !14, line: 1305, baseType: !3386, size: 64, offset: 9024)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !516, file: !14, line: 1306, baseType: !845, size: 128, align: 64, offset: 9088)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !516, file: !14, line: 1307, baseType: !885, size: 256, offset: 9216)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !516, file: !14, line: 1309, baseType: !625, size: 256, offset: 9472)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !516, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !516, file: !14, line: 1317, baseType: !215, size: 32, align: 512, offset: 10240)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !516, file: !14, line: 1318, baseType: !202, size: 128, offset: 10304)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !516, file: !14, line: 1320, baseType: !215, size: 32, offset: 10432)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !516, file: !14, line: 1321, baseType: !202, size: 128, offset: 10496)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !510, file: !511, line: 73, baseType: !85, size: 32, offset: 128)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !510, file: !511, line: 74, baseType: !3411, size: 64, offset: 192)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1203, line: 42, flags: DIFlagFwdDecl)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !464, file: !401, line: 141, baseType: !3415, size: 64, offset: 704)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!85, !1918, !705}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !464, file: !401, line: 142, baseType: !3419, size: 64, offset: 768)
!3419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3420, size: 64)
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!399, !399, !3422}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !365)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !400, file: !401, line: 96, baseType: !515, size: 64, offset: 832)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !400, file: !401, line: 97, baseType: !185, size: 64, offset: 896)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !400, file: !401, line: 98, baseType: !182, size: 64, offset: 960)
!3427 = !DIDerivedType(tag: DW_TAG_member, scope: !400, file: !401, line: 100, baseType: !3428, size: 128, offset: 1024)
!3428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 100, size: 128, elements: !3429)
!3429 = !{!3430, !3431}
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3428, file: !401, line: 101, baseType: !202, size: 128)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3428, file: !401, line: 102, baseType: !1483, size: 64)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !400, file: !401, line: 104, baseType: !202, size: 128, offset: 1152)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !400, file: !401, line: 105, baseType: !202, size: 128, offset: 1280)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !400, file: !401, line: 113, baseType: !3435, size: 128, offset: 1408)
!3435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !400, file: !401, line: 109, size: 128, elements: !3436)
!3436 = !{!3437, !3438, !3439}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3435, file: !401, line: 110, baseType: !871, size: 128)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3435, file: !401, line: 111, baseType: !415, size: 128)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3435, file: !401, line: 112, baseType: !845, size: 128, align: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !393, file: !14, line: 1968, baseType: !3441, size: 64, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!198, !399, !364, !3444}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3446, line: 10, size: 128, elements: !3447)
!3446 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3447 = !{!3448, !3449}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3445, file: !3446, line: 11, baseType: !668, size: 64)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3445, file: !3446, line: 12, baseType: !182, size: 64, offset: 64)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !393, file: !14, line: 1969, baseType: !3451, size: 64, offset: 128)
!3451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3452, size: 64)
!3452 = !DISubroutineType(types: !3453)
!3453 = !{!85, !3411, !364, !85}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !393, file: !14, line: 1970, baseType: !3455, size: 64, offset: 192)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!387, !364, !85, !705}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !393, file: !14, line: 1972, baseType: !3459, size: 64, offset: 256)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!85, !399, !285, !85}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !393, file: !14, line: 1974, baseType: !3463, size: 64, offset: 320)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!85, !3411, !364, !399, !327, !705}
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !393, file: !14, line: 1976, baseType: !3467, size: 64, offset: 384)
!3467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3468, size: 64)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{!85, !399, !364, !399}
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !393, file: !14, line: 1977, baseType: !3471, size: 64, offset: 448)
!3471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3472, size: 64)
!3472 = !DISubroutineType(types: !3473)
!3473 = !{!85, !364, !399}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !393, file: !14, line: 1978, baseType: !3475, size: 64, offset: 512)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3476, size: 64)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!85, !3411, !364, !399, !198}
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !393, file: !14, line: 1980, baseType: !3479, size: 64, offset: 576)
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!85, !3411, !364, !399, !327}
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !393, file: !14, line: 1982, baseType: !3471, size: 64, offset: 640)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !393, file: !14, line: 1983, baseType: !3484, size: 64, offset: 704)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DISubroutineType(types: !3486)
!3486 = !{!85, !3411, !364, !399, !327, !520}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !393, file: !14, line: 1985, baseType: !3488, size: 64, offset: 768)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!85, !3411, !364, !399, !364, !399, !7}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !393, file: !14, line: 1987, baseType: !3492, size: 64, offset: 832)
!3492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3493, size: 64)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!85, !3411, !399, !3495}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3510, !3519, !3520, !3525, !3526, !3527}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3496, file: !14, line: 227, baseType: !7, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3496, file: !14, line: 228, baseType: !327, size: 16, offset: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !14, line: 241, baseType: !3501, size: 32, offset: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !14, line: 241, size: 32, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3501, file: !14, line: 242, baseType: !370, size: 32)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3501, file: !14, line: 243, baseType: !3505, size: 32)
!3505 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3506, line: 16, baseType: !3507)
!3506 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3506, line: 14, size: 32, elements: !3508)
!3508 = !{!3509}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3507, file: !3506, line: 15, baseType: !375, size: 32)
!3510 = !DIDerivedType(tag: DW_TAG_member, scope: !3496, file: !14, line: 245, baseType: !3511, size: 32, offset: 96)
!3511 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3496, file: !14, line: 245, size: 32, elements: !3512)
!3512 = !{!3513, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3511, file: !14, line: 246, baseType: !379, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3511, file: !14, line: 247, baseType: !3515, size: 32)
!3515 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3506, line: 20, baseType: !3516)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3506, line: 18, size: 32, elements: !3517)
!3517 = !{!3518}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3516, file: !3506, line: 19, baseType: !383, size: 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3496, file: !14, line: 249, baseType: !525, size: 64, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3496, file: !14, line: 250, baseType: !3521, size: 128, offset: 192)
!3521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1244, line: 13, size: 128, elements: !3522)
!3522 = !{!3523, !3524}
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3521, file: !1244, line: 14, baseType: !1243, size: 64)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3521, file: !1244, line: 15, baseType: !321, size: 64, offset: 64)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3496, file: !14, line: 251, baseType: !3521, size: 128, offset: 320)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3496, file: !14, line: 252, baseType: !3521, size: 128, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3496, file: !14, line: 259, baseType: !1411, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !393, file: !14, line: 1988, baseType: !3529, size: 64, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DISubroutineType(types: !3531)
!3531 = !{!85, !3411, !1918, !3532, !433, !7}
!3532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3533, size: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3534, line: 22, size: 1280, elements: !3535)
!3534 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3535 = !{!3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3549, !3550, !3551, !3552, !3553, !3554, !3555, !3556}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3533, file: !3534, line: 23, baseType: !433, size: 32)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3533, file: !3534, line: 24, baseType: !327, size: 16, offset: 32)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3533, file: !3534, line: 25, baseType: !7, size: 32, offset: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3533, file: !3534, line: 26, baseType: !1251, size: 32, offset: 96)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3533, file: !3534, line: 27, baseType: !437, size: 64, offset: 128)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3533, file: !3534, line: 28, baseType: !437, size: 64, offset: 192)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3533, file: !3534, line: 41, baseType: !437, size: 64, offset: 256)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3533, file: !3534, line: 42, baseType: !520, size: 32, offset: 320)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3533, file: !3534, line: 43, baseType: !520, size: 32, offset: 352)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3533, file: !3534, line: 44, baseType: !370, size: 32, offset: 384)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3533, file: !3534, line: 45, baseType: !379, size: 32, offset: 416)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3533, file: !3534, line: 46, baseType: !525, size: 64, offset: 448)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3533, file: !3534, line: 47, baseType: !3521, size: 128, offset: 512)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3533, file: !3534, line: 48, baseType: !3521, size: 128, offset: 640)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3533, file: !3534, line: 49, baseType: !3521, size: 128, offset: 768)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3533, file: !3534, line: 50, baseType: !3521, size: 128, offset: 896)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3533, file: !3534, line: 51, baseType: !437, size: 64, offset: 1024)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3533, file: !3534, line: 52, baseType: !437, size: 64, offset: 1088)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3533, file: !3534, line: 53, baseType: !433, size: 32, offset: 1152)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3533, file: !3534, line: 54, baseType: !433, size: 32, offset: 1184)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3533, file: !3534, line: 55, baseType: !437, size: 64, offset: 1216)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !393, file: !14, line: 1990, baseType: !3558, size: 64, offset: 960)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!317, !399, !285, !332}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !393, file: !14, line: 1991, baseType: !3562, size: 64, offset: 1024)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!85, !364, !3565, !437, !437}
!3565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3566, size: 64)
!3566 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !393, file: !14, line: 1993, baseType: !3568, size: 64, offset: 1088)
!3568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3569, size: 64)
!3569 = !DISubroutineType(types: !3570)
!3570 = !{!85, !364, !85}
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !393, file: !14, line: 1994, baseType: !3572, size: 64, offset: 1152)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!85, !364, !399, !1411, !7, !327}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !393, file: !14, line: 1997, baseType: !3576, size: 64, offset: 1216)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = !DISubroutineType(types: !3578)
!3578 = !{!85, !3411, !364, !1411, !327}
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !393, file: !14, line: 1999, baseType: !3580, size: 64, offset: 1280)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!387, !3411, !399, !85}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !393, file: !14, line: 2001, baseType: !3584, size: 64, offset: 1344)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DISubroutineType(types: !3586)
!3586 = !{!85, !3411, !399, !387, !85}
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !393, file: !14, line: 2003, baseType: !3588, size: 64, offset: 1408)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DISubroutineType(types: !3590)
!3590 = !{!85, !3411, !399, !3591}
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !393, file: !14, line: 2005, baseType: !3594, size: 64, offset: 1472)
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!85, !399, !3591}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !393, file: !14, line: 2006, baseType: !3598, size: 64, offset: 1536)
!3598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3599, size: 64)
!3599 = !DISubroutineType(types: !3600)
!3600 = !{!3601, !364}
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3603)
!3603 = !{!3604, !3611}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3602, file: !14, line: 3193, baseType: !3605, size: 128)
!3605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3606, line: 296, size: 128, elements: !3607)
!3606 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3607 = !{!3608, !3609, !3610}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3605, file: !3606, line: 297, baseType: !215, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3605, file: !3606, line: 299, baseType: !183, size: 32, offset: 32)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3605, file: !3606, line: 300, baseType: !182, size: 64, offset: 64)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3602, file: !14, line: 3194, baseType: !433, size: 32, offset: 128)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !365, file: !14, line: 655, baseType: !515, size: 64, offset: 448)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !365, file: !14, line: 656, baseType: !360, size: 64, offset: 512)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !365, file: !14, line: 659, baseType: !182, size: 64, offset: 576)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !365, file: !14, line: 663, baseType: !185, size: 64, offset: 640)
!3616 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 671, baseType: !3617, size: 32, offset: 704)
!3617 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 671, size: 32, elements: !3618)
!3618 = !{!3619, !3621}
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3617, file: !14, line: 672, baseType: !3620, size: 32)
!3620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3617, file: !14, line: 673, baseType: !7, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !365, file: !14, line: 675, baseType: !520, size: 32, offset: 736)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !365, file: !14, line: 676, baseType: !525, size: 64, offset: 768)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !365, file: !14, line: 677, baseType: !3521, size: 128, offset: 832)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !365, file: !14, line: 678, baseType: !3521, size: 128, offset: 960)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !365, file: !14, line: 679, baseType: !3521, size: 128, offset: 1088)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !365, file: !14, line: 680, baseType: !215, size: 32, offset: 1216)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !365, file: !14, line: 681, baseType: !255, size: 16, offset: 1248)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !365, file: !14, line: 682, baseType: !243, size: 8, offset: 1264)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !365, file: !14, line: 683, baseType: !243, size: 8, offset: 1272)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !365, file: !14, line: 684, baseType: !1991, size: 64, offset: 1280)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !365, file: !14, line: 691, baseType: !185, size: 64, offset: 1344)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !365, file: !14, line: 692, baseType: !1227, size: 320, offset: 1408)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !365, file: !14, line: 694, baseType: !185, size: 64, offset: 1728)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !365, file: !14, line: 695, baseType: !185, size: 64, offset: 1792)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !365, file: !14, line: 697, baseType: !871, size: 128, offset: 1856)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !365, file: !14, line: 698, baseType: !202, size: 128, offset: 1984)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !365, file: !14, line: 707, baseType: !202, size: 128, offset: 2112)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !365, file: !14, line: 708, baseType: !202, size: 128, offset: 2240)
!3640 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 709, baseType: !3641, size: 128, offset: 2368)
!3641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 709, size: 128, elements: !3642)
!3642 = !{!3643, !3644}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3641, file: !14, line: 710, baseType: !994, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3641, file: !14, line: 711, baseType: !845, size: 128, align: 64)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !365, file: !14, line: 713, baseType: !631, size: 64, offset: 2496)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !365, file: !14, line: 714, baseType: !631, size: 64, offset: 2560)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !365, file: !14, line: 715, baseType: !235, size: 32, offset: 2624)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !365, file: !14, line: 716, baseType: !235, size: 32, offset: 2656)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !365, file: !14, line: 717, baseType: !235, size: 32, offset: 2688)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !365, file: !14, line: 719, baseType: !235, size: 32, offset: 2720)
!3651 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 721, baseType: !3652, size: 64, offset: 2752)
!3652 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 721, size: 64, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3652, file: !14, line: 722, baseType: !1402, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3652, file: !14, line: 723, baseType: !1017, size: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !365, file: !14, line: 725, baseType: !3657, size: 64, offset: 2816)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !365, file: !14, line: 726, baseType: !361, size: 1536, align: 64, offset: 2880)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !365, file: !14, line: 727, baseType: !202, size: 128, offset: 4416)
!3661 = !DIDerivedType(tag: DW_TAG_member, scope: !365, file: !14, line: 728, baseType: !3662, size: 64, offset: 4544)
!3662 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !365, file: !14, line: 728, size: 64, elements: !3663)
!3663 = !{!3664, !3665, !3676, !3677}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3662, file: !14, line: 729, baseType: !1739, size: 64)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3662, file: !14, line: 730, baseType: !3666, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !3668, line: 14, size: 832, elements: !3669)
!3668 = !DIFile(filename: "./include/linux/cdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dd3580fb19b1b4d9a4e84334e4ba7aa6")
!3669 = !{!3670, !3671, !3672, !3673, !3674, !3675}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3667, file: !3668, line: 15, baseType: !194, size: 512)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3667, file: !3668, line: 16, baseType: !554, size: 64, offset: 512)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3667, file: !3668, line: 17, baseType: !1402, size: 64, offset: 576)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3667, file: !3668, line: 18, baseType: !202, size: 128, offset: 640)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3667, file: !3668, line: 19, baseType: !520, size: 32, offset: 768)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3667, file: !3668, line: 20, baseType: !7, size: 32, offset: 800)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3662, file: !14, line: 731, baseType: !285, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3662, file: !14, line: 732, baseType: !7, size: 32)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !365, file: !14, line: 735, baseType: !434, size: 32, offset: 4608)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !365, file: !14, line: 738, baseType: !434, size: 32, offset: 4640)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !365, file: !14, line: 739, baseType: !3348, size: 64, offset: 4672)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !365, file: !14, line: 750, baseType: !182, size: 64, offset: 4736)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !361, file: !14, line: 474, baseType: !3605, size: 128, offset: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !361, file: !14, line: 475, baseType: !1227, size: 320, offset: 192)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !361, file: !14, line: 476, baseType: !183, size: 32, offset: 512)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !361, file: !14, line: 477, baseType: !235, size: 32, offset: 544)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !361, file: !14, line: 482, baseType: !2265, size: 128, offset: 576)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !361, file: !14, line: 483, baseType: !185, size: 64, offset: 704)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !361, file: !14, line: 484, baseType: !185, size: 64, offset: 768)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !361, file: !14, line: 485, baseType: !3690, size: 64, offset: 832)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3693)
!3693 = !{!3694, !3698, !3768, !3772, !3776, !3782, !3787, !3791, !3796, !3800, !3804, !3808, !3809, !3813, !3817, !3821, !3826, !3830, !3837, !3838}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3692, file: !14, line: 405, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!85, !2947, !1029}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3692, file: !14, line: 406, baseType: !3699, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!85, !1411, !3702}
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1496, line: 293, size: 1536, elements: !3704)
!3704 = !{!3705, !3735, !3749}
!3705 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !1496, line: 295, baseType: !3706, size: 512)
!3706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3703, file: !1496, line: 295, size: 512, elements: !3707)
!3707 = !{!3708, !3734}
!3708 = !DIDerivedType(tag: DW_TAG_member, scope: !3706, file: !1496, line: 296, baseType: !3709, size: 448)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3706, file: !1496, line: 296, size: 448, elements: !3710)
!3710 = !{!3711, !3712, !3721, !3722, !3723, !3732, !3733}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3709, file: !1496, line: 298, baseType: !185, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !1496, line: 299, baseType: !3713, size: 128, offset: 64)
!3713 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3709, file: !1496, line: 299, size: 128, elements: !3714)
!3714 = !{!3715, !3716}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3713, file: !1496, line: 300, baseType: !202, size: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, scope: !3713, file: !1496, line: 302, baseType: !3717, size: 128)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3713, file: !1496, line: 302, size: 128, elements: !3718)
!3718 = !{!3719, !3720}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3717, file: !1496, line: 303, baseType: !182, size: 64)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3717, file: !1496, line: 305, baseType: !7, size: 32, offset: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3709, file: !1496, line: 310, baseType: !360, size: 64, offset: 192)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3709, file: !1496, line: 311, baseType: !185, size: 64, offset: 256)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !3709, file: !1496, line: 312, baseType: !3724, size: 64, offset: 320)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3709, file: !1496, line: 312, size: 64, elements: !3725)
!3725 = !{!3726, !3727}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3724, file: !1496, line: 313, baseType: !182, size: 64)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3724, file: !1496, line: 314, baseType: !3728, size: 64)
!3728 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1496, line: 257, baseType: !3729)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1496, line: 255, size: 64, elements: !3730)
!3730 = !{!3731}
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3729, file: !1496, line: 256, baseType: !185, size: 64)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3709, file: !1496, line: 316, baseType: !235, size: 32, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3709, file: !1496, line: 317, baseType: !235, size: 32, offset: 416)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3706, file: !1496, line: 323, baseType: !2948, size: 512, align: 128)
!3735 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !1496, line: 325, baseType: !3736, size: 512, offset: 512)
!3736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3703, file: !1496, line: 325, size: 512, elements: !3737)
!3737 = !{!3738, !3748}
!3738 = !DIDerivedType(tag: DW_TAG_member, scope: !3736, file: !1496, line: 326, baseType: !3739, size: 320)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3736, file: !1496, line: 326, size: 320, elements: !3740)
!3740 = !{!3741, !3742, !3743, !3744, !3745, !3746, !3747}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3739, file: !1496, line: 327, baseType: !185, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3739, file: !1496, line: 328, baseType: !185, size: 64, offset: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3739, file: !1496, line: 329, baseType: !185, size: 64, offset: 128)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3739, file: !1496, line: 331, baseType: !235, size: 32, offset: 192)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3739, file: !1496, line: 332, baseType: !235, size: 32, offset: 224)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3739, file: !1496, line: 333, baseType: !235, size: 32, offset: 256)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3739, file: !1496, line: 335, baseType: !7, size: 32, offset: 288)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3736, file: !1496, line: 339, baseType: !2948, size: 512, align: 128)
!3749 = !DIDerivedType(tag: DW_TAG_member, scope: !3703, file: !1496, line: 341, baseType: !3750, size: 512, offset: 1024)
!3750 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3703, file: !1496, line: 341, size: 512, elements: !3751)
!3751 = !{!3752, !3761, !3767}
!3752 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !1496, line: 342, baseType: !3753, size: 384)
!3753 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3750, file: !1496, line: 342, size: 384, elements: !3754)
!3754 = !{!3755, !3756, !3757, !3758, !3759, !3760}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3753, file: !1496, line: 343, baseType: !185, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3753, file: !1496, line: 344, baseType: !185, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3753, file: !1496, line: 346, baseType: !182, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3753, file: !1496, line: 347, baseType: !182, size: 64, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3753, file: !1496, line: 348, baseType: !182, size: 64, offset: 256)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3753, file: !1496, line: 349, baseType: !182, size: 64, offset: 320)
!3761 = !DIDerivedType(tag: DW_TAG_member, scope: !3750, file: !1496, line: 352, baseType: !3762, size: 256)
!3762 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3750, file: !1496, line: 352, size: 256, elements: !3763)
!3763 = !{!3764, !3765, !3766}
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3762, file: !1496, line: 353, baseType: !185, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3762, file: !1496, line: 354, baseType: !185, size: 64, offset: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3762, file: !1496, line: 356, baseType: !202, size: 128, offset: 128)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3750, file: !1496, line: 359, baseType: !2948, size: 512, align: 128)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3692, file: !14, line: 409, baseType: !3769, size: 64, offset: 128)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!85, !360, !1029}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3692, file: !14, line: 412, baseType: !3773, size: 64, offset: 192)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!705, !360, !3702}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3692, file: !14, line: 414, baseType: !3777, size: 64, offset: 256)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{null, !3780}
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3692, file: !14, line: 416, baseType: !3783, size: 64, offset: 320)
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DISubroutineType(types: !3785)
!3785 = !{!85, !1411, !360, !525, !7, !3786, !1755}
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2947, size: 64)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3692, file: !14, line: 419, baseType: !3788, size: 64, offset: 384)
!3788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3789, size: 64)
!3789 = !DISubroutineType(types: !3790)
!3790 = !{!85, !1411, !360, !525, !7, !7, !2947, !182}
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3692, file: !14, line: 424, baseType: !3792, size: 64, offset: 448)
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DISubroutineType(types: !3794)
!3794 = !{!3795, !360, !3795}
!3795 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !184, line: 131, baseType: !437)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3692, file: !14, line: 425, baseType: !3797, size: 64, offset: 512)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{null, !3702, !332, !332}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3692, file: !14, line: 426, baseType: !3801, size: 64, offset: 576)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DISubroutineType(types: !3803)
!3803 = !{!705, !3702, !183}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3692, file: !14, line: 427, baseType: !3805, size: 64, offset: 640)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{null, !3702}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3692, file: !14, line: 428, baseType: !1421, size: 64, offset: 704)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3692, file: !14, line: 433, baseType: !3810, size: 64, offset: 768)
!3810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3811, size: 64)
!3811 = !DISubroutineType(types: !3812)
!3812 = !{!85, !360, !3702, !3702, !50}
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3692, file: !14, line: 435, baseType: !3814, size: 64, offset: 832)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!85, !3702}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3692, file: !14, line: 436, baseType: !3818, size: 64, offset: 896)
!3818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3819, size: 64)
!3819 = !DISubroutineType(types: !3820)
!3820 = !{!705, !3702, !332, !332}
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3692, file: !14, line: 438, baseType: !3822, size: 64, offset: 960)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DISubroutineType(types: !3824)
!3824 = !{null, !3702, !3825, !3825}
!3825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3692, file: !14, line: 439, baseType: !3827, size: 64, offset: 1024)
!3827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3828, size: 64)
!3828 = !DISubroutineType(types: !3829)
!3829 = !{!85, !360, !2947}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3692, file: !14, line: 442, baseType: !3831, size: 64, offset: 1088)
!3831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3832, size: 64)
!3832 = !DISubroutineType(types: !3833)
!3833 = !{!85, !3834, !1411, !3836}
!3834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3835, size: 64)
!3835 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3692, file: !14, line: 444, baseType: !1747, size: 64, offset: 1152)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3692, file: !14, line: 445, baseType: !3839, size: 64, offset: 1216)
!3839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3840, size: 64)
!3840 = !DISubroutineType(types: !3841)
!3841 = !{!85, !1424, !1446}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !14, line: 486, baseType: !185, size: 64, offset: 896)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !361, file: !14, line: 487, baseType: !1227, size: 320, offset: 960)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !361, file: !14, line: 488, baseType: !1790, size: 32, offset: 1280)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !361, file: !14, line: 489, baseType: !215, size: 32, offset: 1312)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !361, file: !14, line: 490, baseType: !202, size: 128, offset: 1344)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !361, file: !14, line: 491, baseType: !182, size: 64, offset: 1472)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !351, file: !311, line: 180, baseType: !3849, size: 64, offset: 320)
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = !DISubroutineType(types: !3851)
!3851 = !{!317, !1411, !208, !350, !285, !525, !332}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !351, file: !311, line: 182, baseType: !3849, size: 64, offset: 384)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !351, file: !311, line: 184, baseType: !3854, size: 64, offset: 448)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!85, !1411, !208, !350, !1494}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !339, file: !311, line: 90, baseType: !3858, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !339, file: !311, line: 91, baseType: !3860, size: 64, offset: 256)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !301, file: !195, line: 120, baseType: !3862, size: 64, offset: 192)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!3865, !268}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3867)
!3867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3868)
!3868 = !{!3869, !3870, !3874, !3878, !3884, !3888}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3867, file: !58, line: 40, baseType: !57, size: 32)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3867, file: !58, line: 41, baseType: !3871, size: 64, offset: 64)
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DISubroutineType(types: !3873)
!3873 = !{!705}
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3867, file: !58, line: 42, baseType: !3875, size: 64, offset: 128)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!182}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3867, file: !58, line: 43, baseType: !3879, size: 64, offset: 192)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!1623, !3882}
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3867, file: !58, line: 44, baseType: !3885, size: 64, offset: 256)
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3886, size: 64)
!3886 = !DISubroutineType(types: !3887)
!3887 = !{!1623}
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3867, file: !58, line: 45, baseType: !668, size: 64, offset: 320)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !301, file: !195, line: 121, baseType: !3890, size: 64, offset: 256)
!3890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3891, size: 64)
!3891 = !DISubroutineType(types: !3892)
!3892 = !{!1623, !268}
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !301, file: !195, line: 122, baseType: !3894, size: 64, offset: 320)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{null, !268, !3897, !3898}
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !194, file: !195, line: 70, baseType: !3900, size: 64, offset: 384)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !540, line: 190, size: 1152, elements: !3902)
!3902 = !{!3903, !3904, !3905, !3906, !3907, !3908, !3909, !3910, !3982, !3983, !3984, !3985, !3986, !3989}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3901, file: !540, line: 191, baseType: !235, size: 32)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3901, file: !540, line: 192, baseType: !235, size: 32, offset: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3901, file: !540, line: 202, baseType: !3900, size: 64, offset: 64)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3901, file: !540, line: 203, baseType: !198, size: 64, offset: 128)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3901, file: !540, line: 205, baseType: !737, size: 192, align: 64, offset: 192)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3901, file: !540, line: 207, baseType: !1623, size: 64, offset: 384)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3901, file: !540, line: 208, baseType: !7, size: 32, offset: 448)
!3910 = !DIDerivedType(tag: DW_TAG_member, scope: !3901, file: !540, line: 209, baseType: !3911, size: 256, offset: 512)
!3911 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3901, file: !540, line: 209, size: 256, elements: !3912)
!3912 = !{!3913, !3922, !3926}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3911, file: !540, line: 210, baseType: !3914, size: 256)
!3914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !540, line: 153, size: 256, elements: !3915)
!3915 = !{!3916, !3917, !3918, !3921}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3914, file: !540, line: 154, baseType: !185, size: 64)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3914, file: !540, line: 156, baseType: !2268, size: 64, offset: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3914, file: !540, line: 162, baseType: !3919, size: 64, offset: 128)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !540, line: 162, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3914, file: !540, line: 167, baseType: !185, size: 64, offset: 192)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3911, file: !540, line: 211, baseType: !3923, size: 64)
!3923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !540, line: 170, size: 64, elements: !3924)
!3924 = !{!3925}
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3923, file: !540, line: 171, baseType: !3900, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3911, file: !540, line: 212, baseType: !3927, size: 256)
!3927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !540, line: 174, size: 256, elements: !3928)
!3928 = !{!3929, !3977, !3980, !3981}
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3927, file: !540, line: 175, baseType: !3930, size: 64)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3932)
!3932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !540, line: 271, size: 768, elements: !3933)
!3933 = !{!3934, !3954, !3958, !3959, !3960, !3961, !3962, !3966, !3967, !3968, !3969, !3973}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3932, file: !540, line: 276, baseType: !3935, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!85, !3938}
!3938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3939, size: 64)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !540, line: 251, size: 1216, elements: !3940)
!3940 = !{!3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948, !3949, !3950, !3951, !3952, !3953}
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3939, file: !540, line: 253, baseType: !3900, size: 64)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3939, file: !540, line: 254, baseType: !1411, size: 64, offset: 64)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3939, file: !540, line: 255, baseType: !1066, size: 64, offset: 128)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3939, file: !540, line: 256, baseType: !182, size: 64, offset: 192)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3939, file: !540, line: 259, baseType: !625, size: 256, offset: 256)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3939, file: !540, line: 260, baseType: !625, size: 256, offset: 512)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3939, file: !540, line: 261, baseType: !85, size: 32, offset: 768)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3939, file: !540, line: 262, baseType: !202, size: 128, offset: 832)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3939, file: !540, line: 263, baseType: !285, size: 64, offset: 960)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3939, file: !540, line: 265, baseType: !332, size: 64, offset: 1024)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3939, file: !540, line: 266, baseType: !705, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3939, file: !540, line: 267, baseType: !705, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3939, file: !540, line: 268, baseType: !1692, size: 64, offset: 1152)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3932, file: !540, line: 277, baseType: !3955, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DISubroutineType(types: !3957)
!3957 = !{null, !3938}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3932, file: !540, line: 290, baseType: !1097, size: 64, offset: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3932, file: !540, line: 292, baseType: !1084, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3932, file: !540, line: 293, baseType: !1093, size: 64, offset: 256)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3932, file: !540, line: 294, baseType: !1089, size: 64, offset: 320)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3932, file: !540, line: 296, baseType: !3963, size: 64, offset: 384)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!317, !3938, !285, !332, !525}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3932, file: !540, line: 306, baseType: !332, size: 64, offset: 448)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3932, file: !540, line: 313, baseType: !705, size: 8, offset: 512)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3932, file: !540, line: 314, baseType: !3963, size: 64, offset: 576)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3932, file: !540, line: 317, baseType: !3970, size: 64, offset: 640)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DISubroutineType(types: !3972)
!3972 = !{!1472, !3938, !1474}
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3932, file: !540, line: 320, baseType: !3974, size: 64, offset: 704)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!85, !3938, !1494}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3927, file: !540, line: 176, baseType: !3978, size: 64, offset: 64)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !540, line: 35, flags: DIFlagFwdDecl)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3927, file: !540, line: 177, baseType: !525, size: 64, offset: 128)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3927, file: !540, line: 178, baseType: !3900, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3901, file: !540, line: 215, baseType: !182, size: 64, offset: 768)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3901, file: !540, line: 221, baseType: !437, size: 64, offset: 832)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3901, file: !540, line: 223, baseType: !255, size: 16, offset: 896)
!3985 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3901, file: !540, line: 224, baseType: !327, size: 16, offset: 912)
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3901, file: !540, line: 225, baseType: !3987, size: 64, offset: 960)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !540, line: 36, flags: DIFlagFwdDecl)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3901, file: !540, line: 227, baseType: !845, size: 128, align: 64, offset: 1024)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !194, file: !195, line: 71, baseType: !3991, size: 32, offset: 448)
!3991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3992, line: 19, size: 32, elements: !3993)
!3992 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3993 = !{!3994}
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3991, file: !3992, line: 20, baseType: !1153, size: 32)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !194, file: !195, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !194, file: !195, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !194, file: !195, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !194, file: !195, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !194, file: !195, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !70, line: 707, baseType: !4001, size: 64, offset: 512)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !191, file: !70, line: 709, baseType: !4003, size: 64, offset: 576)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !191, file: !70, line: 711, baseType: !198, size: 64, offset: 640)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !191, file: !70, line: 712, baseType: !4007, size: 64, offset: 704)
!4007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4008, size: 64)
!4008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4009)
!4009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4010)
!4010 = !{!4011, !4012, !4013, !4019, !4024, !4028}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4009, file: !70, line: 90, baseType: !198, size: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4009, file: !70, line: 91, baseType: !336, size: 64, offset: 64)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4009, file: !70, line: 92, baseType: !4014, size: 64, offset: 128)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!85, !4017, !280}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4009, file: !70, line: 93, baseType: !4020, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!285, !4017, !4023, !3897, !3898}
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4009, file: !70, line: 95, baseType: !4025, size: 64, offset: 256)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DISubroutineType(types: !4027)
!4027 = !{null, !4001}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4009, file: !70, line: 97, baseType: !4029, size: 64, offset: 320)
!4029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4031)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4032)
!4032 = !{!4033, !4037, !4038, !4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057, !4058}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4031, file: !77, line: 287, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!85, !4001}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4031, file: !77, line: 288, baseType: !4025, size: 64, offset: 64)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4031, file: !77, line: 289, baseType: !4034, size: 64, offset: 128)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4031, file: !77, line: 290, baseType: !4034, size: 64, offset: 192)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4031, file: !77, line: 291, baseType: !4034, size: 64, offset: 256)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4031, file: !77, line: 292, baseType: !4034, size: 64, offset: 320)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4031, file: !77, line: 293, baseType: !4034, size: 64, offset: 384)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4031, file: !77, line: 294, baseType: !4034, size: 64, offset: 448)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4031, file: !77, line: 295, baseType: !4034, size: 64, offset: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4031, file: !77, line: 296, baseType: !4034, size: 64, offset: 576)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4031, file: !77, line: 297, baseType: !4034, size: 64, offset: 640)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4031, file: !77, line: 298, baseType: !4034, size: 64, offset: 704)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4031, file: !77, line: 299, baseType: !4034, size: 64, offset: 768)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4031, file: !77, line: 300, baseType: !4034, size: 64, offset: 832)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4031, file: !77, line: 301, baseType: !4034, size: 64, offset: 896)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4031, file: !77, line: 302, baseType: !4034, size: 64, offset: 960)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4031, file: !77, line: 303, baseType: !4034, size: 64, offset: 1024)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4031, file: !77, line: 304, baseType: !4034, size: 64, offset: 1088)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4031, file: !77, line: 305, baseType: !4034, size: 64, offset: 1152)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4031, file: !77, line: 306, baseType: !4034, size: 64, offset: 1216)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4031, file: !77, line: 307, baseType: !4034, size: 64, offset: 1280)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4031, file: !77, line: 308, baseType: !4034, size: 64, offset: 1344)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4031, file: !77, line: 309, baseType: !4034, size: 64, offset: 1408)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !191, file: !70, line: 714, baseType: !4060, size: 64, offset: 768)
!4060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4061, size: 64)
!4061 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4062)
!4062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4063, line: 80, size: 1344, elements: !4064)
!4063 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4064 = !{!4065, !4066, !4067, !4068, !4069, !4070, !4126, !4127, !4128, !4129, !4130, !4131, !4132, !4133, !4134, !4135, !4136, !4137, !4138, !4139, !4143}
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4062, file: !4063, line: 81, baseType: !198, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4062, file: !4063, line: 82, baseType: !198, size: 64, offset: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4062, file: !4063, line: 83, baseType: !336, size: 64, offset: 128)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4062, file: !4063, line: 84, baseType: !336, size: 64, offset: 192)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4062, file: !4063, line: 85, baseType: !336, size: 64, offset: 256)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4062, file: !4063, line: 87, baseType: !4071, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{!85, !4001, !4074}
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4076)
!4076 = !{!4077, !4078, !4079, !4080, !4081, !4082, !4083, !4096, !4106, !4107, !4108, !4109, !4110, !4118, !4119, !4120, !4121, !4122, !4123}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4075, file: !64, line: 97, baseType: !198, size: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4075, file: !64, line: 98, baseType: !4060, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4075, file: !64, line: 100, baseType: !554, size: 64, offset: 128)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4075, file: !64, line: 101, baseType: !198, size: 64, offset: 192)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4075, file: !64, line: 103, baseType: !705, size: 8, offset: 256)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4075, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4075, file: !64, line: 106, baseType: !4084, size: 64, offset: 320)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4086)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4087, line: 282, size: 1600, elements: !4088)
!4087 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4088 = !{!4089, !4090, !4091, !4095}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4086, file: !4087, line: 283, baseType: !3351, size: 256)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4086, file: !4087, line: 284, baseType: !3351, size: 256, offset: 256)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4086, file: !4087, line: 285, baseType: !4092, size: 1024, offset: 512)
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 1024, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 128)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4086, file: !4087, line: 286, baseType: !1623, size: 64, offset: 1536)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4075, file: !64, line: 107, baseType: !4097, size: 64, offset: 384)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4099)
!4099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4087, line: 217, size: 256, elements: !4100)
!4100 = !{!4101, !4102, !4104, !4105}
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4099, file: !4087, line: 218, baseType: !3358, size: 128)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4099, file: !4087, line: 219, baseType: !4103, size: 64, offset: 128)
!4103 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4087, line: 15, baseType: !185)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4099, file: !4087, line: 220, baseType: !434, size: 32, offset: 192)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4099, file: !4087, line: 221, baseType: !434, size: 32, offset: 224)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4075, file: !64, line: 109, baseType: !4034, size: 64, offset: 448)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4075, file: !64, line: 110, baseType: !4025, size: 64, offset: 512)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4075, file: !64, line: 111, baseType: !4034, size: 64, offset: 576)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4075, file: !64, line: 112, baseType: !4025, size: 64, offset: 640)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4075, file: !64, line: 113, baseType: !4111, size: 64, offset: 704)
!4111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4112, size: 64)
!4112 = !DISubroutineType(types: !4113)
!4113 = !{!85, !4001, !4114}
!4114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4115)
!4115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4116)
!4116 = !{!4117}
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4115, file: !77, line: 59, baseType: !85, size: 32)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4075, file: !64, line: 114, baseType: !4034, size: 64, offset: 768)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4075, file: !64, line: 115, baseType: !336, size: 64, offset: 832)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4075, file: !64, line: 116, baseType: !336, size: 64, offset: 896)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4075, file: !64, line: 118, baseType: !4029, size: 64, offset: 960)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4075, file: !64, line: 119, baseType: !4025, size: 64, offset: 1024)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4075, file: !64, line: 121, baseType: !4124, size: 64, offset: 1088)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4126 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4062, file: !4063, line: 88, baseType: !4014, size: 64, offset: 384)
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4062, file: !4063, line: 89, baseType: !4034, size: 64, offset: 448)
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4062, file: !4063, line: 90, baseType: !4025, size: 64, offset: 512)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4062, file: !4063, line: 91, baseType: !4025, size: 64, offset: 576)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4062, file: !4063, line: 92, baseType: !4025, size: 64, offset: 640)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4062, file: !4063, line: 94, baseType: !4034, size: 64, offset: 704)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4062, file: !4063, line: 95, baseType: !4034, size: 64, offset: 768)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4062, file: !4063, line: 97, baseType: !4111, size: 64, offset: 832)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4062, file: !4063, line: 98, baseType: !4034, size: 64, offset: 896)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4062, file: !4063, line: 100, baseType: !4034, size: 64, offset: 960)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4062, file: !4063, line: 102, baseType: !4034, size: 64, offset: 1024)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4062, file: !4063, line: 103, baseType: !4025, size: 64, offset: 1088)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4062, file: !4063, line: 105, baseType: !4029, size: 64, offset: 1152)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4062, file: !4063, line: 107, baseType: !4140, size: 64, offset: 1216)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4142)
!4142 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4063, line: 107, flags: DIFlagFwdDecl)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4062, file: !4063, line: 109, baseType: !705, size: 8, offset: 1280)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !191, file: !70, line: 715, baseType: !4074, size: 64, offset: 832)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !191, file: !70, line: 717, baseType: !182, size: 64, offset: 896)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !191, file: !70, line: 719, baseType: !182, size: 64, offset: 960)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !191, file: !70, line: 721, baseType: !625, size: 256, offset: 1024)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !191, file: !70, line: 725, baseType: !4149, size: 448, offset: 1280)
!4149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4150)
!4150 = !{!4151, !4152, !4153, !4154}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4149, file: !70, line: 518, baseType: !202, size: 128)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4149, file: !70, line: 519, baseType: !202, size: 128, offset: 128)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4149, file: !70, line: 520, baseType: !202, size: 128, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4149, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !191, file: !70, line: 726, baseType: !4156, size: 2496, offset: 1728)
!4156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4157)
!4157 = !{!4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4200, !4201, !4202, !4203, !4204, !4205, !4206, !4207, !4208, !4209, !4210, !4211, !4212, !4213, !4214, !4215, !4216, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4240, !4244}
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4156, file: !77, line: 664, baseType: !4114, size: 32)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4156, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4156, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4156, file: !77, line: 667, baseType: !705, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4156, file: !77, line: 668, baseType: !705, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4156, file: !77, line: 669, baseType: !705, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4156, file: !77, line: 670, baseType: !705, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4156, file: !77, line: 671, baseType: !705, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4156, file: !77, line: 672, baseType: !705, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4156, file: !77, line: 673, baseType: !705, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4156, file: !77, line: 674, baseType: !705, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4156, file: !77, line: 675, baseType: !433, size: 32, offset: 64)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4156, file: !77, line: 676, baseType: !215, size: 32, offset: 96)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4156, file: !77, line: 678, baseType: !202, size: 128, offset: 128)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4156, file: !77, line: 679, baseType: !574, size: 256, offset: 256)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4156, file: !77, line: 680, baseType: !4174, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4176, line: 43, size: 1536, elements: !4177)
!4176 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4185, !4186, !4187, !4188, !4189, !4190, !4191, !4192, !4193, !4194, !4195, !4196, !4197, !4198, !4199}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !4176, line: 44, baseType: !198, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4175, file: !4176, line: 45, baseType: !85, size: 32, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4175, file: !4176, line: 46, baseType: !202, size: 128, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4175, file: !4176, line: 47, baseType: !215, size: 32, offset: 256)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4175, file: !4176, line: 48, baseType: !4183, size: 64, offset: 320)
!4183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4184, size: 64)
!4184 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4175, file: !4176, line: 49, baseType: !867, size: 320, offset: 384)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4175, file: !4176, line: 50, baseType: !185, size: 64, offset: 704)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4175, file: !4176, line: 51, baseType: !2214, size: 64, offset: 768)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4175, file: !4176, line: 52, baseType: !2214, size: 64, offset: 832)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4175, file: !4176, line: 53, baseType: !2214, size: 64, offset: 896)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4175, file: !4176, line: 54, baseType: !2214, size: 64, offset: 960)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4175, file: !4176, line: 55, baseType: !2214, size: 64, offset: 1024)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4175, file: !4176, line: 56, baseType: !185, size: 64, offset: 1088)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4175, file: !4176, line: 57, baseType: !185, size: 64, offset: 1152)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4175, file: !4176, line: 58, baseType: !185, size: 64, offset: 1216)
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4175, file: !4176, line: 59, baseType: !185, size: 64, offset: 1280)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4175, file: !4176, line: 60, baseType: !185, size: 64, offset: 1344)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4175, file: !4176, line: 61, baseType: !4001, size: 64, offset: 1408)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4175, file: !4176, line: 62, baseType: !705, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4175, file: !4176, line: 63, baseType: !705, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4156, file: !77, line: 681, baseType: !705, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4156, file: !77, line: 682, baseType: !705, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4156, file: !77, line: 683, baseType: !705, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4156, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4156, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4156, file: !77, line: 690, baseType: !2206, size: 512, offset: 640)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4156, file: !77, line: 691, baseType: !437, size: 64, offset: 1152)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4156, file: !77, line: 692, baseType: !885, size: 256, offset: 1216)
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4156, file: !77, line: 693, baseType: !1164, size: 192, offset: 1472)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4156, file: !77, line: 694, baseType: !4183, size: 64, offset: 1664)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4156, file: !77, line: 695, baseType: !235, size: 32, offset: 1728)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4156, file: !77, line: 696, baseType: !235, size: 32, offset: 1760)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4156, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4156, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4156, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4156, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4156, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4156, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4156, file: !77, line: 703, baseType: !705, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4156, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4156, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4156, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4156, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4156, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4156, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4156, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4156, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4156, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4156, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4156, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4156, file: !77, line: 715, baseType: !437, size: 64, offset: 2048)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4156, file: !77, line: 716, baseType: !437, size: 64, offset: 2112)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4156, file: !77, line: 717, baseType: !437, size: 64, offset: 2176)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4156, file: !77, line: 718, baseType: !437, size: 64, offset: 2240)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4156, file: !77, line: 720, baseType: !4235, size: 64, offset: 2304)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4237)
!4237 = !{!4238, !4239}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4236, file: !77, line: 633, baseType: !215, size: 32)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4236, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4156, file: !77, line: 721, baseType: !4241, size: 64, offset: 2368)
!4241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4242, size: 64)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{null, !4001, !621}
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4156, file: !77, line: 722, baseType: !4245, size: 64, offset: 2432)
!4245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4246, size: 64)
!4246 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !191, file: !70, line: 727, baseType: !4248, size: 64, offset: 4224)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4250)
!4250 = !{!4251, !4252, !4253, !4257, !4258, !4259}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4249, file: !77, line: 743, baseType: !4031, size: 1472)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4249, file: !77, line: 744, baseType: !4034, size: 64, offset: 1472)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4249, file: !77, line: 745, baseType: !4254, size: 64, offset: 1536)
!4254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4255, size: 64)
!4255 = !DISubroutineType(types: !4256)
!4256 = !{null, !4001, !705}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4249, file: !77, line: 746, baseType: !4034, size: 64, offset: 1600)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4249, file: !77, line: 747, baseType: !4025, size: 64, offset: 1664)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4249, file: !77, line: 748, baseType: !4025, size: 64, offset: 1728)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !191, file: !70, line: 736, baseType: !4261, size: 128, offset: 4288)
!4261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4262)
!4262 = !{!4263, !4267}
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4261, file: !70, line: 531, baseType: !4264, size: 64)
!4264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4265, size: 64)
!4265 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4266, line: 13, flags: DIFlagFwdDecl)
!4266 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4261, file: !70, line: 532, baseType: !4268, size: 64, offset: 64)
!4268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4269, size: 64)
!4269 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !191, file: !70, line: 738, baseType: !4271, size: 64, offset: 4416)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4273)
!4273 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !191, file: !70, line: 740, baseType: !4275, size: 64, offset: 4480)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !191, file: !70, line: 741, baseType: !437, size: 64, offset: 4544)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !191, file: !70, line: 746, baseType: !437, size: 64, offset: 4608)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !191, file: !70, line: 747, baseType: !4279, size: 64, offset: 4672)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4281)
!4281 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !191, file: !70, line: 749, baseType: !4283, size: 64, offset: 4736)
!4283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4284, size: 64)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4285)
!4285 = !{!4286, !4287, !4288}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4284, file: !70, line: 433, baseType: !7, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4284, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4284, file: !70, line: 435, baseType: !185, size: 64, offset: 64)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !191, file: !70, line: 751, baseType: !202, size: 128, offset: 4800)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !191, file: !70, line: 762, baseType: !4291, size: 64, offset: 4928)
!4291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4292, size: 64)
!4292 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !191, file: !70, line: 770, baseType: !4294, offset: 4992)
!4294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4295, line: 5, elements: !913)
!4295 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !191, file: !70, line: 772, baseType: !4297, size: 64, offset: 4992)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4298, size: 64)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4299, line: 48, size: 1152, elements: !4300)
!4299 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!4300 = !{!4301, !4302, !4304, !4305, !4408, !4416, !4417, !4418, !4419, !4420, !4421}
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4298, file: !4299, line: 49, baseType: !198, size: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !4298, file: !4299, line: 50, baseType: !4303, size: 32, offset: 64)
!4303 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !4299, line: 25, baseType: !433)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !4298, file: !4299, line: 51, baseType: !198, size: 64, offset: 128)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4298, file: !4299, line: 52, baseType: !4306, size: 512, offset: 192)
!4306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4307, line: 41, size: 512, elements: !4308)
!4307 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4308 = !{!4309, !4311, !4404, !4405, !4406, !4407}
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4306, file: !4307, line: 42, baseType: !4310, size: 64)
!4310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4306, size: 64)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4306, file: !4307, line: 43, baseType: !4312, size: 64, offset: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4314)
!4314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4307, line: 125, size: 1408, elements: !4315)
!4315 = !{!4316, !4320, !4324, !4330, !4334, !4335, !4339, !4343, !4347, !4351, !4355, !4356, !4360, !4364, !4368, !4379, !4380, !4381, !4382, !4392, !4396, !4400}
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4314, file: !4307, line: 126, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4318, size: 64)
!4318 = !DISubroutineType(types: !4319)
!4319 = !{!4310, !4310}
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4314, file: !4307, line: 127, baseType: !4321, size: 64, offset: 64)
!4321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4322, size: 64)
!4322 = !DISubroutineType(types: !4323)
!4323 = !{null, !4310}
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4314, file: !4307, line: 128, baseType: !4325, size: 64, offset: 128)
!4325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4326, size: 64)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!705, !4328}
!4328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4329, size: 64)
!4329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4306)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4314, file: !4307, line: 129, baseType: !4331, size: 64, offset: 192)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = !DISubroutineType(types: !4333)
!4333 = !{!1623, !4328, !4017}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4314, file: !4307, line: 131, baseType: !4325, size: 64, offset: 256)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4314, file: !4307, line: 133, baseType: !4336, size: 64, offset: 320)
!4336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4337, size: 64)
!4337 = !DISubroutineType(types: !4338)
!4338 = !{!92, !4328}
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4314, file: !4307, line: 134, baseType: !4340, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!705, !4328, !198}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4314, file: !4307, line: 136, baseType: !4344, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!85, !4328, !198, !7, !182, !332}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4314, file: !4307, line: 141, baseType: !4348, size: 64, offset: 512)
!4348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4349, size: 64)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{!85, !4328, !198, !961, !332}
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4314, file: !4307, line: 144, baseType: !4352, size: 64, offset: 576)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{!198, !4328}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4314, file: !4307, line: 145, baseType: !4352, size: 64, offset: 640)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4314, file: !4307, line: 146, baseType: !4357, size: 64, offset: 704)
!4357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4358, size: 64)
!4358 = !DISubroutineType(types: !4359)
!4359 = !{!4310, !4328}
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4314, file: !4307, line: 148, baseType: !4361, size: 64, offset: 768)
!4361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4362, size: 64)
!4362 = !DISubroutineType(types: !4363)
!4363 = !{!4310, !4328, !4310}
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4314, file: !4307, line: 151, baseType: !4365, size: 64, offset: 832)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{!4310, !4328, !198}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4314, file: !4307, line: 153, baseType: !4369, size: 64, offset: 896)
!4369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4370, size: 64)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!85, !4328, !198, !198, !7, !7, !4372}
!4372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4373, size: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4307, line: 94, size: 640, elements: !4374)
!4374 = !{!4375, !4376, !4377}
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4373, file: !4307, line: 95, baseType: !4310, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4373, file: !4307, line: 96, baseType: !7, size: 32, offset: 64)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4373, file: !4307, line: 97, baseType: !4378, size: 512, offset: 128)
!4378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 512, elements: !2249)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4314, file: !4307, line: 158, baseType: !4361, size: 64, offset: 960)
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4314, file: !4307, line: 161, baseType: !4357, size: 64, offset: 1024)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4314, file: !4307, line: 163, baseType: !4317, size: 64, offset: 1088)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4314, file: !4307, line: 164, baseType: !4383, size: 64, offset: 1152)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!85, !4328, !4386}
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4307, line: 73, size: 128, elements: !4388)
!4388 = !{!4389, !4390, !4391}
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4387, file: !4307, line: 74, baseType: !7, size: 32)
!4390 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4387, file: !4307, line: 75, baseType: !7, size: 32, offset: 32)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4387, file: !4307, line: 76, baseType: !4328, size: 64, offset: 64)
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4314, file: !4307, line: 166, baseType: !4393, size: 64, offset: 1216)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DISubroutineType(types: !4395)
!4395 = !{!182, !4310, !85}
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4314, file: !4307, line: 167, baseType: !4397, size: 64, offset: 1280)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{!85, !4328, !7}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4314, file: !4307, line: 168, baseType: !4401, size: 64, offset: 1344)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DISubroutineType(types: !4403)
!4403 = !{!85, !4310}
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4306, file: !4307, line: 44, baseType: !4001, size: 64, offset: 128)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4306, file: !4307, line: 45, baseType: !202, size: 128, offset: 192)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4306, file: !4307, line: 46, baseType: !202, size: 128, offset: 320)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4306, file: !4307, line: 47, baseType: !243, size: 8, offset: 448)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4298, file: !4299, line: 54, baseType: !4409, size: 64, offset: 704)
!4409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4410, size: 64)
!4410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !4299, line: 28, size: 256, elements: !4411)
!4411 = !{!4412, !4413, !4414, !4415}
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4410, file: !4299, line: 29, baseType: !285, size: 64)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !4410, file: !4299, line: 30, baseType: !85, size: 32, offset: 64)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4410, file: !4299, line: 31, baseType: !182, size: 64, offset: 128)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4410, file: !4299, line: 32, baseType: !4409, size: 64, offset: 192)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !4298, file: !4299, line: 55, baseType: !4409, size: 64, offset: 768)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4298, file: !4299, line: 56, baseType: !4297, size: 64, offset: 832)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !4298, file: !4299, line: 57, baseType: !4297, size: 64, offset: 896)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !4298, file: !4299, line: 58, baseType: !4297, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4298, file: !4299, line: 62, baseType: !185, size: 64, offset: 1024)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4298, file: !4299, line: 63, baseType: !182, size: 64, offset: 1088)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !191, file: !70, line: 773, baseType: !4310, size: 64, offset: 5056)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !191, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !191, file: !70, line: 778, baseType: !520, size: 32, offset: 5152)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !191, file: !70, line: 779, baseType: !433, size: 32, offset: 5184)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !191, file: !70, line: 781, baseType: !215, size: 32, offset: 5216)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !191, file: !70, line: 782, baseType: !202, size: 128, offset: 5248)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !191, file: !70, line: 784, baseType: !4429, size: 64, offset: 5376)
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4431)
!4431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4432, line: 52, size: 768, elements: !4433)
!4432 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4433 = !{!4434, !4435, !4436, !4437, !4438, !4442, !4446, !4447, !4448, !4449, !4453, !4457}
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4431, file: !4432, line: 53, baseType: !198, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4431, file: !4432, line: 55, baseType: !336, size: 64, offset: 64)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4431, file: !4432, line: 56, baseType: !336, size: 64, offset: 128)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4431, file: !4432, line: 58, baseType: !4014, size: 64, offset: 192)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4431, file: !4432, line: 59, baseType: !4439, size: 64, offset: 256)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!285, !4017, !4023}
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4431, file: !4432, line: 61, baseType: !4443, size: 64, offset: 320)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{null, !4429}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4431, file: !4432, line: 62, baseType: !4025, size: 64, offset: 384)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4431, file: !4432, line: 64, baseType: !4034, size: 64, offset: 448)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4431, file: !4432, line: 66, baseType: !3865, size: 64, offset: 512)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4431, file: !4432, line: 67, baseType: !4450, size: 64, offset: 576)
!4450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4451, size: 64)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!1623, !4017}
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4431, file: !4432, line: 69, baseType: !4454, size: 64, offset: 640)
!4454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4455, size: 64)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !4017, !3897, !3898}
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4431, file: !4432, line: 71, baseType: !4029, size: 64, offset: 704)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !191, file: !70, line: 785, baseType: !336, size: 64, offset: 5440)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !191, file: !70, line: 787, baseType: !4025, size: 64, offset: 5504)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !191, file: !70, line: 788, baseType: !4461, size: 64, offset: 5568)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !191, file: !70, line: 789, baseType: !4464, size: 64, offset: 5632)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !191, file: !70, line: 791, baseType: !4467, size: 64, offset: 5696)
!4467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4468, size: 64)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4469)
!4469 = !{!4470, !4471, !4472, !4473, !4474}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4468, file: !70, line: 598, baseType: !98, size: 32)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4468, file: !70, line: 599, baseType: !107, size: 32, offset: 32)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4468, file: !70, line: 600, baseType: !112, size: 32, offset: 64)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4468, file: !70, line: 601, baseType: !705, size: 8, offset: 96)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4468, file: !70, line: 602, baseType: !705, size: 8, offset: 104)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !191, file: !70, line: 793, baseType: !117, size: 32, offset: 5760)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !191, file: !70, line: 795, baseType: !705, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !191, file: !70, line: 796, baseType: !705, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !191, file: !70, line: 797, baseType: !705, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !191, file: !70, line: 798, baseType: !705, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !191, file: !70, line: 799, baseType: !705, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !187, file: !188, line: 89, baseType: !554, size: 64, offset: 5824)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !187, file: !188, line: 91, baseType: !85, size: 32, offset: 5888)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !187, file: !188, line: 93, baseType: !4484, size: 64, offset: 5952)
!4484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4485, size: 64)
!4485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4486)
!4486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_class_ops", file: !188, line: 59, size: 704, elements: !4487)
!4487 = !{!4488, !4492, !4509, !4510, !4520, !4521, !4525, !4529, !4534, !4538, !4554}
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !4486, file: !188, line: 60, baseType: !4489, size: 64)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!85, !4001, !7, !185}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "read_time", scope: !4486, file: !188, line: 61, baseType: !4493, size: 64, offset: 64)
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!85, !4001, !4496}
!4496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4497, size: 64)
!4497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_time", file: !4498, line: 25, size: 288, elements: !4499)
!4498 = !DIFile(filename: "./include/uapi/linux/rtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "80f54d46d0d21ef6b644244083c34d9c")
!4499 = !{!4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !4497, file: !4498, line: 26, baseType: !85, size: 32)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !4497, file: !4498, line: 27, baseType: !85, size: 32, offset: 32)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !4497, file: !4498, line: 28, baseType: !85, size: 32, offset: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !4497, file: !4498, line: 29, baseType: !85, size: 32, offset: 96)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !4497, file: !4498, line: 30, baseType: !85, size: 32, offset: 128)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !4497, file: !4498, line: 31, baseType: !85, size: 32, offset: 160)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !4497, file: !4498, line: 32, baseType: !85, size: 32, offset: 192)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !4497, file: !4498, line: 33, baseType: !85, size: 32, offset: 224)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !4497, file: !4498, line: 34, baseType: !85, size: 32, offset: 256)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "set_time", scope: !4486, file: !188, line: 62, baseType: !4493, size: 64, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "read_alarm", scope: !4486, file: !188, line: 63, baseType: !4511, size: 64, offset: 192)
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = !DISubroutineType(types: !4513)
!4513 = !{!85, !4001, !4514}
!4514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4515, size: 64)
!4515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_wkalrm", file: !4498, line: 41, size: 320, elements: !4516)
!4516 = !{!4517, !4518, !4519}
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4515, file: !4498, line: 42, baseType: !247, size: 8)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !4515, file: !4498, line: 43, baseType: !247, size: 8, offset: 8)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !4515, file: !4498, line: 44, baseType: !4497, size: 288, offset: 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "set_alarm", scope: !4486, file: !188, line: 64, baseType: !4511, size: 64, offset: 256)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !4486, file: !188, line: 65, baseType: !4522, size: 64, offset: 320)
!4522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4523, size: 64)
!4523 = !DISubroutineType(types: !4524)
!4524 = !{!85, !4001, !1066}
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_irq_enable", scope: !4486, file: !188, line: 66, baseType: !4526, size: 64, offset: 384)
!4526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4527, size: 64)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{!85, !4001, !7}
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "read_offset", scope: !4486, file: !188, line: 67, baseType: !4530, size: 64, offset: 448)
!4530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4531, size: 64)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!85, !4001, !4533}
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset", scope: !4486, file: !188, line: 68, baseType: !4535, size: 64, offset: 512)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{!85, !4001, !321}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "param_get", scope: !4486, file: !188, line: 69, baseType: !4539, size: 64, offset: 576)
!4539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4540, size: 64)
!4540 = !DISubroutineType(types: !4541)
!4541 = !{!85, !4001, !4542}
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_param", file: !4498, line: 70, size: 192, elements: !4544)
!4544 = !{!4545, !4546, !4552, !4553}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4543, file: !4498, line: 71, baseType: !438, size: 64)
!4546 = !DIDerivedType(tag: DW_TAG_member, scope: !4543, file: !4498, line: 72, baseType: !4547, size: 64, offset: 64)
!4547 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4543, file: !4498, line: 72, size: 64, elements: !4548)
!4548 = !{!4549, !4550, !4551}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "uvalue", scope: !4547, file: !4498, line: 73, baseType: !438, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "svalue", scope: !4547, file: !4498, line: 74, baseType: !636, size: 64)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4547, file: !4498, line: 75, baseType: !438, size: 64)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4543, file: !4498, line: 77, baseType: !434, size: 32, offset: 128)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "__pad", scope: !4543, file: !4498, line: 78, baseType: !434, size: 32, offset: 160)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "param_set", scope: !4486, file: !188, line: 70, baseType: !4539, size: 64, offset: 640)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "ops_lock", scope: !187, file: !188, line: 94, baseType: !625, size: 256, offset: 6016)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "char_dev", scope: !187, file: !188, line: 96, baseType: !3667, size: 832, offset: 6272)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !187, file: !188, line: 97, baseType: !185, size: 64, offset: 7104)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "irq_data", scope: !187, file: !188, line: 99, baseType: !185, size: 64, offset: 7168)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "irq_lock", scope: !187, file: !188, line: 100, baseType: !215, size: 32, offset: 7232)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "irq_queue", scope: !187, file: !188, line: 101, baseType: !1164, size: 192, offset: 7296)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "async_queue", scope: !187, file: !188, line: 102, baseType: !4562, size: 64, offset: 7488)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fasync_struct", file: !14, line: 1083, size: 384, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570}
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "fa_lock", scope: !4563, file: !14, line: 1084, baseType: !1128, size: 64)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !4563, file: !14, line: 1085, baseType: !85, size: 32, offset: 64)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "fa_fd", scope: !4563, file: !14, line: 1086, baseType: !85, size: 32, offset: 96)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "fa_next", scope: !4563, file: !14, line: 1087, baseType: !4562, size: 64, offset: 128)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "fa_file", scope: !4563, file: !14, line: 1088, baseType: !1411, size: 64, offset: 192)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "fa_rcu", scope: !4563, file: !14, line: 1089, baseType: !845, size: 128, align: 64, offset: 256)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "irq_freq", scope: !187, file: !188, line: 104, baseType: !85, size: 32, offset: 7552)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_freq", scope: !187, file: !188, line: 105, baseType: !85, size: 32, offset: 7584)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "timerqueue", scope: !187, file: !188, line: 107, baseType: !2262, size: 128, offset: 7616)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "aie_timer", scope: !187, file: !188, line: 108, baseType: !4575, size: 512, offset: 7744)
!4575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtc_timer", file: !188, line: 75, size: 512, elements: !4576)
!4576 = !{!4577, !4578, !4579, !4583, !4584}
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4575, file: !188, line: 76, baseType: !2209, size: 256)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !4575, file: !188, line: 77, baseType: !2214, size: 64, offset: 256)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4575, file: !188, line: 78, baseType: !4580, size: 64, offset: 320)
!4580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4581, size: 64)
!4581 = !DISubroutineType(types: !4582)
!4582 = !{null, !186}
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "rtc", scope: !4575, file: !188, line: 79, baseType: !186, size: 64, offset: 384)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4575, file: !188, line: 80, baseType: !85, size: 32, offset: 448)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "uie_rtctimer", scope: !187, file: !188, line: 109, baseType: !4575, size: 512, offset: 8256)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "pie_timer", scope: !187, file: !188, line: 110, baseType: !2206, size: 512, offset: 8768)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "pie_enabled", scope: !187, file: !188, line: 111, baseType: !85, size: 32, offset: 9280)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "irqwork", scope: !187, file: !188, line: 112, baseType: !885, size: 256, offset: 9344)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "set_offset_nsec", scope: !187, file: !188, line: 143, baseType: !185, size: 64, offset: 9600)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !187, file: !188, line: 145, baseType: !2333, size: 64, offset: 9664)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "range_min", scope: !187, file: !188, line: 147, baseType: !1243, size: 64, offset: 9728)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "range_max", scope: !187, file: !188, line: 148, baseType: !4593, size: 64, offset: 9792)
!4593 = !DIDerivedType(tag: DW_TAG_typedef, name: "timeu64_t", file: !1244, line: 9, baseType: !438)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "alarm_offset_max", scope: !187, file: !188, line: 149, baseType: !4593, size: 64, offset: 9856)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "start_secs", scope: !187, file: !188, line: 150, baseType: !1243, size: 64, offset: 9920)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "offset_secs", scope: !187, file: !188, line: 151, baseType: !1243, size: 64, offset: 9984)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "set_start_time", scope: !187, file: !188, line: 152, baseType: !705, size: 8, offset: 10048)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!4599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4600, size: 64)
!4600 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !205)
!4601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4602, size: 64)
!4602 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !200)
!4603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4604, size: 64)
!4604 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !321)
!4605 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !184, line: 42, baseType: !185)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !185)
!4608 = !{!4609, !4614, !4616, !4618, !4623, !4628, !4633, !4635, !4637, !4639, !4642, !4645, !4650, !4657, !4662, !4664, !4666, !4668, !0, !4673, !4678}
!4609 = !DIGlobalVariableExpression(var: !4610, expr: !DIExpression())
!4610 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !4611, isLocal: true, isDefinition: true)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 192, elements: !4612)
!4612 = !{!4613}
!4613 = !DISubrange(count: 24)
!4614 = !DIGlobalVariableExpression(var: !4615, expr: !DIExpression())
!4615 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !1271, isLocal: true, isDefinition: true)
!4616 = !DIGlobalVariableExpression(var: !4617, expr: !DIExpression())
!4617 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_rtc_allocate_device267", scope: !2, file: !3, line: 387, type: !182, isLocal: true, isDefinition: true)
!4618 = !DIGlobalVariableExpression(var: !4619, expr: !DIExpression())
!4619 = distinct !DIGlobalVariable(scope: null, file: !3, line: 418, type: !4620, isLocal: true, isDefinition: true)
!4620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 264, elements: !4621)
!4621 = !{!4622}
!4622 = !DISubrange(count: 33)
!4623 = !DIGlobalVariableExpression(var: !4624, expr: !DIExpression())
!4624 = distinct !DIGlobalVariable(scope: null, file: !3, line: 427, type: !4625, isLocal: true, isDefinition: true)
!4625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 144, elements: !4626)
!4626 = !{!4627}
!4627 = !DISubrange(count: 18)
!4628 = !DIGlobalVariableExpression(var: !4629, expr: !DIExpression())
!4629 = distinct !DIGlobalVariable(scope: null, file: !3, line: 435, type: !4630, isLocal: true, isDefinition: true)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 216, elements: !4631)
!4631 = !{!4632}
!4632 = !DISubrange(count: 27)
!4633 = !DIGlobalVariableExpression(var: !4634, expr: !DIExpression())
!4634 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___devm_rtc_register_device268", scope: !2, file: !3, line: 438, type: !182, isLocal: true, isDefinition: true)
!4635 = !DIGlobalVariableExpression(var: !4636, expr: !DIExpression())
!4636 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_rtc_device_register269", scope: !2, file: !3, line: 474, type: !182, isLocal: true, isDefinition: true)
!4637 = !DIGlobalVariableExpression(var: !4638, expr: !DIExpression())
!4638 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_rtc_core__270_487_rtc_init4271", scope: !2, file: !3, line: 487, type: !182, isLocal: true, isDefinition: true)
!4639 = !DIGlobalVariableExpression(var: !4640, expr: !DIExpression())
!4640 = distinct !DIGlobalVariable(name: "rtc_class", scope: !2, file: !3, line: 24, type: !4641, isLocal: false, isDefinition: true)
!4641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4642 = !DIGlobalVariableExpression(var: !4643, expr: !DIExpression())
!4643 = distinct !DIGlobalVariable(scope: null, file: !3, line: 254, type: !4644, isLocal: true, isDefinition: true)
!4644 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 32, elements: !855)
!4645 = !DIGlobalVariableExpression(var: !4646, expr: !DIExpression())
!4646 = distinct !DIGlobalVariable(scope: null, file: !3, line: 261, type: !4647, isLocal: true, isDefinition: true)
!4647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 240, elements: !4648)
!4648 = !{!4649}
!4649 = !DISubrange(count: 30)
!4650 = !DIGlobalVariableExpression(var: !4651, expr: !DIExpression())
!4651 = distinct !DIGlobalVariable(name: "__key", scope: !4652, file: !3, line: 227, type: !998, isLocal: true, isDefinition: true)
!4652 = distinct !DISubprogram(name: "rtc_allocate_device", scope: !3, file: !3, line: 203, type: !4653, scopeLine: 204, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!186}
!4655 = !{!4656}
!4656 = !DILocalVariable(name: "rtc", scope: !4652, file: !3, line: 205, type: !186)
!4657 = !DIGlobalVariableExpression(var: !4658, expr: !DIExpression())
!4658 = distinct !DIGlobalVariable(scope: null, file: !3, line: 227, type: !4659, isLocal: true, isDefinition: true)
!4659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 120, elements: !4660)
!4660 = !{!4661}
!4661 = !DISubrange(count: 15)
!4662 = !DIGlobalVariableExpression(var: !4663, expr: !DIExpression())
!4663 = distinct !DIGlobalVariable(name: "__key", scope: !4652, file: !3, line: 229, type: !998, isLocal: true, isDefinition: true)
!4664 = !DIGlobalVariableExpression(var: !4665, expr: !DIExpression())
!4665 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !2525, isLocal: true, isDefinition: true)
!4666 = !DIGlobalVariableExpression(var: !4667, expr: !DIExpression())
!4667 = distinct !DIGlobalVariable(name: "__key", scope: !4652, file: !3, line: 233, type: !998, isLocal: true, isDefinition: true)
!4668 = !DIGlobalVariableExpression(var: !4669, expr: !DIExpression())
!4669 = distinct !DIGlobalVariable(scope: null, file: !172, line: 480, type: !4670, isLocal: true, isDefinition: true)
!4670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 168, elements: !4671)
!4671 = !{!4672}
!4672 = !DISubrange(count: 21)
!4673 = !DIGlobalVariableExpression(var: !4674, expr: !DIExpression())
!4674 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !4675, isLocal: true, isDefinition: true)
!4675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 88, elements: !4676)
!4676 = !{!4677}
!4677 = !DISubrange(count: 11)
!4678 = !DIGlobalVariableExpression(var: !4679, expr: !DIExpression())
!4679 = distinct !DIGlobalVariable(scope: null, file: !3, line: 480, type: !4680, isLocal: true, isDefinition: true)
!4680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !200, size: 280, elements: !4681)
!4681 = !{!4682}
!4682 = !DISubrange(count: 35)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !4684, line: 246, size: 128, elements: !4685)
!4684 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4685 = !{!4686}
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4683, file: !4684, line: 247, baseType: !3605, size: 128)
!4687 = !{i32 7, !"Dwarf Version", i32 5}
!4688 = !{i32 2, !"Debug Info Version", i32 3}
!4689 = !{i32 1, !"wchar_size", i32 2}
!4690 = !{i32 8, !"cf-protection-branch", i32 1}
!4691 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4692 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4693 = !{i32 1, !"Code Model", i32 2}
!4694 = !{i32 1, !"override-stack-alignment", i32 8}
!4695 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4696 = distinct !DISubprogram(name: "devm_rtc_allocate_device", scope: !3, file: !3, line: 360, type: !4697, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4699)
!4697 = !DISubroutineType(types: !4698)
!4698 = !{!186, !4001}
!4699 = !{!4700, !4701, !4702, !4703}
!4700 = !DILocalVariable(name: "dev", arg: 1, scope: !4696, file: !3, line: 360, type: !4001)
!4701 = !DILocalVariable(name: "rtc", scope: !4696, file: !3, line: 362, type: !186)
!4702 = !DILocalVariable(name: "id", scope: !4696, file: !3, line: 363, type: !85)
!4703 = !DILocalVariable(name: "err", scope: !4696, file: !3, line: 363, type: !85)
!4704 = !DILocation(line: 360, column: 60, scope: !4696)
!4705 = !DILocation(line: 362, column: 2, scope: !4696)
!4706 = !DILocation(line: 362, column: 21, scope: !4696)
!4707 = !DILocation(line: 363, column: 2, scope: !4696)
!4708 = !DILocation(line: 363, column: 6, scope: !4696)
!4709 = !DILocation(line: 363, column: 10, scope: !4696)
!4710 = !DILocation(line: 365, column: 25, scope: !4696)
!4711 = !DILocation(line: 365, column: 7, scope: !4696)
!4712 = !DILocation(line: 365, column: 5, scope: !4696)
!4713 = !DILocation(line: 366, column: 6, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 366, column: 6)
!4715 = !DILocation(line: 366, column: 9, scope: !4714)
!4716 = !DILocation(line: 366, column: 6, scope: !4696)
!4717 = !DILocation(line: 367, column: 18, scope: !4714)
!4718 = !DILocation(line: 367, column: 10, scope: !4714)
!4719 = !DILocation(line: 367, column: 3, scope: !4714)
!4720 = !DILocation(line: 369, column: 8, scope: !4696)
!4721 = !DILocation(line: 369, column: 6, scope: !4696)
!4722 = !DILocation(line: 370, column: 7, scope: !4723)
!4723 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 370, column: 6)
!4724 = !DILocation(line: 370, column: 6, scope: !4696)
!4725 = !DILocation(line: 371, column: 22, scope: !4726)
!4726 = distinct !DILexicalBlock(scope: !4723, file: !3, line: 370, column: 12)
!4727 = !DILocation(line: 371, column: 3, scope: !4726)
!4728 = !DILocation(line: 372, column: 10, scope: !4726)
!4729 = !DILocation(line: 372, column: 3, scope: !4726)
!4730 = !DILocation(line: 375, column: 12, scope: !4696)
!4731 = !DILocation(line: 375, column: 2, scope: !4696)
!4732 = !DILocation(line: 375, column: 7, scope: !4696)
!4733 = !DILocation(line: 375, column: 10, scope: !4696)
!4734 = !DILocation(line: 376, column: 20, scope: !4696)
!4735 = !DILocation(line: 376, column: 2, scope: !4696)
!4736 = !DILocation(line: 376, column: 7, scope: !4696)
!4737 = !DILocation(line: 376, column: 11, scope: !4696)
!4738 = !DILocation(line: 376, column: 18, scope: !4696)
!4739 = !DILocation(line: 377, column: 8, scope: !4696)
!4740 = !DILocation(line: 377, column: 6, scope: !4696)
!4741 = !DILocation(line: 378, column: 6, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 378, column: 6)
!4743 = !DILocation(line: 378, column: 6, scope: !4696)
!4744 = !DILocation(line: 379, column: 18, scope: !4742)
!4745 = !DILocation(line: 379, column: 10, scope: !4742)
!4746 = !DILocation(line: 379, column: 3, scope: !4742)
!4747 = !DILocation(line: 381, column: 22, scope: !4696)
!4748 = !DILocation(line: 381, column: 27, scope: !4696)
!4749 = !DILocation(line: 381, column: 41, scope: !4696)
!4750 = !DILocation(line: 381, column: 8, scope: !4696)
!4751 = !DILocation(line: 381, column: 6, scope: !4696)
!4752 = !DILocation(line: 382, column: 6, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4696, file: !3, line: 382, column: 6)
!4754 = !DILocation(line: 382, column: 6, scope: !4696)
!4755 = !DILocation(line: 383, column: 18, scope: !4753)
!4756 = !DILocation(line: 383, column: 10, scope: !4753)
!4757 = !DILocation(line: 383, column: 3, scope: !4753)
!4758 = !DILocation(line: 385, column: 9, scope: !4696)
!4759 = !DILocation(line: 385, column: 2, scope: !4696)
!4760 = !DILocation(line: 386, column: 1, scope: !4696)
!4761 = distinct !DISubprogram(name: "rtc_device_get_id", scope: !3, file: !3, line: 249, type: !4035, scopeLine: 250, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4762)
!4762 = !{!4763, !4764, !4765}
!4763 = !DILocalVariable(name: "dev", arg: 1, scope: !4761, file: !3, line: 249, type: !4001)
!4764 = !DILocalVariable(name: "of_id", scope: !4761, file: !3, line: 251, type: !85)
!4765 = !DILocalVariable(name: "id", scope: !4761, file: !3, line: 251, type: !85)
!4766 = !DILocation(line: 249, column: 45, scope: !4761)
!4767 = !DILocation(line: 251, column: 2, scope: !4761)
!4768 = !DILocation(line: 251, column: 6, scope: !4761)
!4769 = !DILocation(line: 251, column: 18, scope: !4761)
!4770 = !DILocation(line: 253, column: 6, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 253, column: 6)
!4772 = !DILocation(line: 253, column: 11, scope: !4771)
!4773 = !DILocation(line: 253, column: 6, scope: !4761)
!4774 = !DILocation(line: 254, column: 27, scope: !4771)
!4775 = !DILocation(line: 254, column: 32, scope: !4771)
!4776 = !DILocation(line: 254, column: 11, scope: !4771)
!4777 = !DILocation(line: 254, column: 9, scope: !4771)
!4778 = !DILocation(line: 254, column: 3, scope: !4771)
!4779 = !DILocation(line: 255, column: 11, scope: !4780)
!4780 = distinct !DILexicalBlock(scope: !4771, file: !3, line: 255, column: 11)
!4781 = !DILocation(line: 255, column: 16, scope: !4780)
!4782 = !DILocation(line: 255, column: 23, scope: !4780)
!4783 = !DILocation(line: 255, column: 26, scope: !4780)
!4784 = !DILocation(line: 255, column: 31, scope: !4780)
!4785 = !DILocation(line: 255, column: 39, scope: !4780)
!4786 = !DILocation(line: 255, column: 11, scope: !4771)
!4787 = !DILocation(line: 256, column: 27, scope: !4780)
!4788 = !DILocation(line: 256, column: 32, scope: !4780)
!4789 = !DILocation(line: 256, column: 40, scope: !4780)
!4790 = !DILocation(line: 256, column: 11, scope: !4780)
!4791 = !DILocation(line: 256, column: 9, scope: !4780)
!4792 = !DILocation(line: 256, column: 3, scope: !4780)
!4793 = !DILocation(line: 258, column: 6, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 258, column: 6)
!4795 = !DILocation(line: 258, column: 12, scope: !4794)
!4796 = !DILocation(line: 258, column: 6, scope: !4761)
!4797 = !DILocation(line: 259, column: 8, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !4794, file: !3, line: 258, column: 18)
!4799 = !DILocation(line: 259, column: 6, scope: !4798)
!4800 = !DILocation(line: 260, column: 7, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4798, file: !3, line: 260, column: 7)
!4802 = !DILocation(line: 260, column: 10, scope: !4801)
!4803 = !DILocation(line: 260, column: 7, scope: !4798)
!4804 = !DILocation(line: 261, column: 4, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4801, file: !3, line: 261, column: 4)
!4806 = !DILocation(line: 261, column: 4, scope: !4807)
!4807 = distinct !DILexicalBlock(scope: !4805, file: !3, line: 261, column: 4)
!4808 = !DILocation(line: 261, column: 4, scope: !4801)
!4809 = !DILocation(line: 262, column: 2, scope: !4798)
!4810 = !DILocation(line: 264, column: 6, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !4761, file: !3, line: 264, column: 6)
!4812 = !DILocation(line: 264, column: 9, scope: !4811)
!4813 = !DILocation(line: 264, column: 6, scope: !4761)
!4814 = !DILocation(line: 265, column: 8, scope: !4811)
!4815 = !DILocation(line: 265, column: 6, scope: !4811)
!4816 = !DILocation(line: 265, column: 3, scope: !4811)
!4817 = !DILocation(line: 267, column: 9, scope: !4761)
!4818 = !DILocation(line: 268, column: 1, scope: !4761)
!4819 = !DILocation(line: 267, column: 2, scope: !4761)
!4820 = distinct !DISubprogram(name: "ERR_PTR", scope: !4821, file: !4821, line: 39, type: !4822, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4824)
!4821 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4822 = !DISubroutineType(types: !4823)
!4823 = !{!182, !321}
!4824 = !{!4825}
!4825 = !DILocalVariable(name: "error", arg: 1, scope: !4820, file: !4821, line: 39, type: !321)
!4826 = !DILocation(line: 39, column: 48, scope: !4820)
!4827 = !DILocation(line: 41, column: 18, scope: !4820)
!4828 = !DILocation(line: 41, column: 9, scope: !4820)
!4829 = !DILocation(line: 41, column: 2, scope: !4820)
!4830 = !DILocation(line: 205, column: 2, scope: !4652)
!4831 = !DILocation(line: 205, column: 21, scope: !4652)
!4832 = !DILocation(line: 207, column: 8, scope: !4652)
!4833 = !DILocation(line: 207, column: 6, scope: !4652)
!4834 = !DILocation(line: 208, column: 7, scope: !4835)
!4835 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 208, column: 6)
!4836 = !DILocation(line: 208, column: 6, scope: !4652)
!4837 = !DILocation(line: 209, column: 3, scope: !4835)
!4838 = !DILocation(line: 211, column: 21, scope: !4652)
!4839 = !DILocation(line: 211, column: 26, scope: !4652)
!4840 = !DILocation(line: 211, column: 2, scope: !4652)
!4841 = !DILocation(line: 219, column: 2, scope: !4652)
!4842 = !DILocation(line: 219, column: 7, scope: !4652)
!4843 = !DILocation(line: 219, column: 23, scope: !4652)
!4844 = !DILocation(line: 221, column: 2, scope: !4652)
!4845 = !DILocation(line: 221, column: 7, scope: !4652)
!4846 = !DILocation(line: 221, column: 16, scope: !4652)
!4847 = !DILocation(line: 222, column: 2, scope: !4652)
!4848 = !DILocation(line: 222, column: 7, scope: !4652)
!4849 = !DILocation(line: 222, column: 21, scope: !4652)
!4850 = !DILocation(line: 223, column: 19, scope: !4652)
!4851 = !DILocation(line: 223, column: 2, scope: !4652)
!4852 = !DILocation(line: 223, column: 7, scope: !4652)
!4853 = !DILocation(line: 223, column: 11, scope: !4652)
!4854 = !DILocation(line: 223, column: 17, scope: !4652)
!4855 = !DILocation(line: 224, column: 20, scope: !4652)
!4856 = !DILocation(line: 224, column: 2, scope: !4652)
!4857 = !DILocation(line: 224, column: 7, scope: !4652)
!4858 = !DILocation(line: 224, column: 11, scope: !4652)
!4859 = !DILocation(line: 224, column: 18, scope: !4652)
!4860 = !DILocation(line: 225, column: 2, scope: !4652)
!4861 = !DILocation(line: 225, column: 7, scope: !4652)
!4862 = !DILocation(line: 225, column: 11, scope: !4652)
!4863 = !DILocation(line: 225, column: 19, scope: !4652)
!4864 = !DILocation(line: 227, column: 2, scope: !4652)
!4865 = !DILocation(line: 227, column: 2, scope: !4866)
!4866 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 227, column: 2)
!4867 = !DILocation(line: 228, column: 2, scope: !4652)
!4868 = !DILocation(line: 228, column: 2, scope: !4869)
!4869 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 228, column: 2)
!4870 = !DILocation(line: 229, column: 2, scope: !4652)
!4871 = !DILocation(line: 229, column: 2, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 229, column: 2)
!4873 = !DILocation(line: 232, column: 24, scope: !4652)
!4874 = !DILocation(line: 232, column: 29, scope: !4652)
!4875 = !DILocation(line: 232, column: 2, scope: !4652)
!4876 = !DILocation(line: 233, column: 2, scope: !4652)
!4877 = !DILocation(line: 233, column: 2, scope: !4878)
!4878 = distinct !DILexicalBlock(scope: !4652, file: !3, line: 233, column: 2)
!4879 = !DILocation(line: 233, column: 2, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4878, file: !3, line: 233, column: 2)
!4881 = !DILocation(line: 235, column: 18, scope: !4652)
!4882 = !DILocation(line: 235, column: 23, scope: !4652)
!4883 = !DILocation(line: 235, column: 54, scope: !4652)
!4884 = !DILocation(line: 235, column: 2, scope: !4652)
!4885 = !DILocation(line: 237, column: 18, scope: !4652)
!4886 = !DILocation(line: 237, column: 23, scope: !4652)
!4887 = !DILocation(line: 237, column: 57, scope: !4652)
!4888 = !DILocation(line: 237, column: 2, scope: !4652)
!4889 = !DILocation(line: 239, column: 16, scope: !4652)
!4890 = !DILocation(line: 239, column: 21, scope: !4652)
!4891 = !DILocation(line: 239, column: 2, scope: !4652)
!4892 = !DILocation(line: 240, column: 2, scope: !4652)
!4893 = !DILocation(line: 240, column: 7, scope: !4652)
!4894 = !DILocation(line: 240, column: 17, scope: !4652)
!4895 = !DILocation(line: 240, column: 26, scope: !4652)
!4896 = !DILocation(line: 241, column: 2, scope: !4652)
!4897 = !DILocation(line: 241, column: 7, scope: !4652)
!4898 = !DILocation(line: 241, column: 19, scope: !4652)
!4899 = !DILocation(line: 243, column: 29, scope: !4652)
!4900 = !DILocation(line: 243, column: 34, scope: !4652)
!4901 = !DILocation(line: 243, column: 2, scope: !4652)
!4902 = !DILocation(line: 244, column: 40, scope: !4652)
!4903 = !DILocation(line: 244, column: 45, scope: !4652)
!4904 = !DILocation(line: 244, column: 2, scope: !4652)
!4905 = !DILocation(line: 246, column: 9, scope: !4652)
!4906 = !DILocation(line: 246, column: 2, scope: !4652)
!4907 = !DILocation(line: 247, column: 1, scope: !4652)
!4908 = !DISubprogram(name: "ida_free", scope: !4684, file: !4684, line: 258, type: !4909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4909 = !DISubroutineType(types: !4910)
!4910 = !{null, !4911, !7}
!4911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4683, size: 64)
!4912 = distinct !DISubprogram(name: "__devm_add_action_or_reset", scope: !70, file: !70, line: 395, type: !4913, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4915)
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!85, !4001, !668, !182, !198}
!4915 = !{!4916, !4917, !4918, !4919, !4920}
!4916 = !DILocalVariable(name: "dev", arg: 1, scope: !4912, file: !70, line: 395, type: !4001)
!4917 = !DILocalVariable(name: "action", arg: 2, scope: !4912, file: !70, line: 395, type: !668)
!4918 = !DILocalVariable(name: "data", arg: 3, scope: !4912, file: !70, line: 396, type: !182)
!4919 = !DILocalVariable(name: "name", arg: 4, scope: !4912, file: !70, line: 396, type: !198)
!4920 = !DILocalVariable(name: "ret", scope: !4912, file: !70, line: 398, type: !85)
!4921 = !DILocation(line: 395, column: 61, scope: !4912)
!4922 = !DILocation(line: 395, column: 73, scope: !4912)
!4923 = !DILocation(line: 396, column: 17, scope: !4912)
!4924 = !DILocation(line: 396, column: 35, scope: !4912)
!4925 = !DILocation(line: 398, column: 2, scope: !4912)
!4926 = !DILocation(line: 398, column: 6, scope: !4912)
!4927 = !DILocation(line: 400, column: 26, scope: !4912)
!4928 = !DILocation(line: 400, column: 31, scope: !4912)
!4929 = !DILocation(line: 400, column: 39, scope: !4912)
!4930 = !DILocation(line: 400, column: 45, scope: !4912)
!4931 = !DILocation(line: 400, column: 8, scope: !4912)
!4932 = !DILocation(line: 400, column: 6, scope: !4912)
!4933 = !DILocation(line: 401, column: 6, scope: !4934)
!4934 = distinct !DILexicalBlock(scope: !4912, file: !70, line: 401, column: 6)
!4935 = !DILocation(line: 401, column: 6, scope: !4912)
!4936 = !DILocation(line: 402, column: 3, scope: !4934)
!4937 = !DILocation(line: 402, column: 10, scope: !4934)
!4938 = !DILocation(line: 404, column: 9, scope: !4912)
!4939 = !DILocation(line: 405, column: 1, scope: !4912)
!4940 = !DILocation(line: 404, column: 2, scope: !4912)
!4941 = distinct !DISubprogram(name: "devm_rtc_release_device", scope: !3, file: !3, line: 353, type: !669, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4942)
!4942 = !{!4943, !4944}
!4943 = !DILocalVariable(name: "res", arg: 1, scope: !4941, file: !3, line: 353, type: !182)
!4944 = !DILocalVariable(name: "rtc", scope: !4941, file: !3, line: 355, type: !186)
!4945 = !DILocation(line: 353, column: 43, scope: !4941)
!4946 = !DILocation(line: 355, column: 2, scope: !4941)
!4947 = !DILocation(line: 355, column: 21, scope: !4941)
!4948 = !DILocation(line: 355, column: 27, scope: !4941)
!4949 = !DILocation(line: 357, column: 14, scope: !4941)
!4950 = !DILocation(line: 357, column: 19, scope: !4941)
!4951 = !DILocation(line: 357, column: 2, scope: !4941)
!4952 = !DILocation(line: 358, column: 1, scope: !4941)
!4953 = !DISubprogram(name: "dev_set_name", scope: !70, file: !70, line: 879, type: !4954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!85, !4001, !198, null}
!4956 = distinct !DISubprogram(name: "__devm_rtc_register_device", scope: !3, file: !3, line: 389, type: !4957, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4959)
!4957 = !DISubroutineType(types: !4958)
!4958 = !{!85, !554, !186}
!4959 = !{!4960, !4961, !4962, !4963}
!4960 = !DILocalVariable(name: "owner", arg: 1, scope: !4956, file: !3, line: 389, type: !554)
!4961 = !DILocalVariable(name: "rtc", arg: 2, scope: !4956, file: !3, line: 389, type: !186)
!4962 = !DILocalVariable(name: "alrm", scope: !4956, file: !3, line: 391, type: !4515)
!4963 = !DILocalVariable(name: "err", scope: !4956, file: !3, line: 392, type: !85)
!4964 = !DILocation(line: 389, column: 47, scope: !4956)
!4965 = !DILocation(line: 389, column: 73, scope: !4956)
!4966 = !DILocation(line: 391, column: 2, scope: !4956)
!4967 = !DILocation(line: 391, column: 20, scope: !4956)
!4968 = !DILocation(line: 392, column: 2, scope: !4956)
!4969 = !DILocation(line: 392, column: 6, scope: !4956)
!4970 = !DILocation(line: 394, column: 7, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 394, column: 6)
!4972 = !DILocation(line: 394, column: 12, scope: !4971)
!4973 = !DILocation(line: 394, column: 6, scope: !4956)
!4974 = !DILocation(line: 396, column: 3, scope: !4975)
!4975 = distinct !DILexicalBlock(scope: !4971, file: !3, line: 394, column: 17)
!4976 = !DILocation(line: 399, column: 7, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 399, column: 6)
!4978 = !DILocation(line: 399, column: 12, scope: !4977)
!4979 = !DILocation(line: 399, column: 17, scope: !4977)
!4980 = !DILocation(line: 399, column: 6, scope: !4956)
!4981 = !DILocation(line: 400, column: 32, scope: !4977)
!4982 = !DILocation(line: 400, column: 37, scope: !4977)
!4983 = !DILocation(line: 400, column: 3, scope: !4977)
!4984 = !DILocation(line: 402, column: 6, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 402, column: 6)
!4986 = !DILocation(line: 402, column: 11, scope: !4985)
!4987 = !DILocation(line: 402, column: 16, scope: !4985)
!4988 = !DILocation(line: 402, column: 6, scope: !4956)
!4989 = !DILocation(line: 403, column: 35, scope: !4985)
!4990 = !DILocation(line: 403, column: 40, scope: !4985)
!4991 = !DILocation(line: 403, column: 3, scope: !4985)
!4992 = !DILocation(line: 405, column: 15, scope: !4956)
!4993 = !DILocation(line: 405, column: 2, scope: !4956)
!4994 = !DILocation(line: 405, column: 7, scope: !4956)
!4995 = !DILocation(line: 405, column: 13, scope: !4956)
!4996 = !DILocation(line: 406, column: 24, scope: !4956)
!4997 = !DILocation(line: 406, column: 2, scope: !4956)
!4998 = !DILocation(line: 409, column: 25, scope: !4956)
!4999 = !DILocation(line: 409, column: 8, scope: !4956)
!5000 = !DILocation(line: 409, column: 6, scope: !4956)
!5001 = !DILocation(line: 410, column: 7, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 410, column: 6)
!5003 = !DILocation(line: 410, column: 11, scope: !5002)
!5004 = !DILocation(line: 410, column: 34, scope: !5002)
!5005 = !DILocation(line: 410, column: 15, scope: !5002)
!5006 = !DILocation(line: 410, column: 6, scope: !4956)
!5007 = !DILocation(line: 411, column: 24, scope: !5002)
!5008 = !DILocation(line: 411, column: 3, scope: !5002)
!5009 = !DILocation(line: 413, column: 18, scope: !4956)
!5010 = !DILocation(line: 413, column: 2, scope: !4956)
!5011 = !DILocation(line: 415, column: 25, scope: !4956)
!5012 = !DILocation(line: 415, column: 30, scope: !4956)
!5013 = !DILocation(line: 415, column: 41, scope: !4956)
!5014 = !DILocation(line: 415, column: 46, scope: !4956)
!5015 = !DILocation(line: 415, column: 8, scope: !4956)
!5016 = !DILocation(line: 415, column: 6, scope: !4956)
!5017 = !DILocation(line: 416, column: 6, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 416, column: 6)
!5019 = !DILocation(line: 416, column: 6, scope: !4956)
!5020 = !DILocation(line: 417, column: 25, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !5018, file: !3, line: 416, column: 11)
!5022 = !DILocation(line: 417, column: 30, scope: !5021)
!5023 = !DILocation(line: 417, column: 3, scope: !5021)
!5024 = !DILocation(line: 418, column: 3, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5021, file: !3, line: 418, column: 3)
!5026 = !DILocation(line: 418, column: 3, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 418, column: 3)
!5028 = !DILocation(line: 420, column: 2, scope: !5021)
!5029 = !DILocation(line: 425, column: 22, scope: !4956)
!5030 = !DILocation(line: 425, column: 2, scope: !4956)
!5031 = !DILocation(line: 427, column: 2, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !4956, file: !3, line: 427, column: 2)
!5033 = !DILocation(line: 427, column: 2, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5032, file: !3, line: 427, column: 2)
!5035 = !DILocation(line: 435, column: 9, scope: !4956)
!5036 = !DILocation(line: 435, column: 2, scope: !4956)
!5037 = !DILocation(line: 437, column: 1, scope: !4956)
!5038 = distinct !DISubprogram(name: "clear_bit", scope: !5039, file: !5039, line: 39, type: !5040, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5044)
!5039 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5040 = !DISubroutineType(types: !5041)
!5041 = !{null, !321, !5042}
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !185)
!5044 = !{!5045, !5046}
!5045 = !DILocalVariable(name: "nr", arg: 1, scope: !5038, file: !5039, line: 39, type: !321)
!5046 = !DILocalVariable(name: "addr", arg: 2, scope: !5038, file: !5039, line: 39, type: !5042)
!5047 = !DILocation(line: 39, column: 44, scope: !5038)
!5048 = !DILocation(line: 39, column: 72, scope: !5038)
!5049 = !DILocation(line: 41, column: 26, scope: !5038)
!5050 = !DILocation(line: 41, column: 33, scope: !5038)
!5051 = !DILocation(line: 41, column: 31, scope: !5038)
!5052 = !DILocation(line: 41, column: 2, scope: !5038)
!5053 = !DILocation(line: 42, column: 17, scope: !5038)
!5054 = !DILocation(line: 42, column: 21, scope: !5038)
!5055 = !DILocation(line: 42, column: 2, scope: !5038)
!5056 = !DILocation(line: 43, column: 1, scope: !5038)
!5057 = distinct !DISubprogram(name: "set_bit", scope: !5039, file: !5039, line: 26, type: !5040, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5058)
!5058 = !{!5059, !5060}
!5059 = !DILocalVariable(name: "nr", arg: 1, scope: !5057, file: !5039, line: 26, type: !321)
!5060 = !DILocalVariable(name: "addr", arg: 2, scope: !5057, file: !5039, line: 26, type: !5042)
!5061 = !DILocation(line: 26, column: 42, scope: !5057)
!5062 = !DILocation(line: 26, column: 70, scope: !5057)
!5063 = !DILocation(line: 28, column: 26, scope: !5057)
!5064 = !DILocation(line: 28, column: 33, scope: !5057)
!5065 = !DILocation(line: 28, column: 31, scope: !5057)
!5066 = !DILocation(line: 28, column: 2, scope: !5057)
!5067 = !DILocation(line: 29, column: 15, scope: !5057)
!5068 = !DILocation(line: 29, column: 19, scope: !5057)
!5069 = !DILocation(line: 29, column: 2, scope: !5057)
!5070 = !DILocation(line: 30, column: 1, scope: !5057)
!5071 = distinct !DISubprogram(name: "rtc_device_get_offset", scope: !3, file: !3, line: 270, type: !4581, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5072)
!5072 = !{!5073, !5074, !5075, !5076}
!5073 = !DILocalVariable(name: "rtc", arg: 1, scope: !5071, file: !3, line: 270, type: !186)
!5074 = !DILocalVariable(name: "range_secs", scope: !5071, file: !3, line: 272, type: !1243)
!5075 = !DILocalVariable(name: "start_year", scope: !5071, file: !3, line: 273, type: !433)
!5076 = !DILocalVariable(name: "ret", scope: !5071, file: !3, line: 274, type: !85)
!5077 = !DILocation(line: 270, column: 54, scope: !5071)
!5078 = !DILocation(line: 272, column: 2, scope: !5071)
!5079 = !DILocation(line: 272, column: 11, scope: !5071)
!5080 = !DILocation(line: 273, column: 2, scope: !5071)
!5081 = !DILocation(line: 273, column: 6, scope: !5071)
!5082 = !DILocation(line: 274, column: 2, scope: !5071)
!5083 = !DILocation(line: 274, column: 6, scope: !5071)
!5084 = !DILocation(line: 281, column: 6, scope: !5085)
!5085 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 281, column: 6)
!5086 = !DILocation(line: 281, column: 11, scope: !5085)
!5087 = !DILocation(line: 281, column: 24, scope: !5085)
!5088 = !DILocation(line: 281, column: 29, scope: !5085)
!5089 = !DILocation(line: 281, column: 21, scope: !5085)
!5090 = !DILocation(line: 281, column: 6, scope: !5071)
!5091 = !DILocation(line: 282, column: 3, scope: !5085)
!5092 = !DILocation(line: 284, column: 33, scope: !5071)
!5093 = !DILocation(line: 284, column: 38, scope: !5071)
!5094 = !DILocation(line: 284, column: 42, scope: !5071)
!5095 = !DILocation(line: 284, column: 8, scope: !5071)
!5096 = !DILocation(line: 284, column: 6, scope: !5071)
!5097 = !DILocation(line: 286, column: 7, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 286, column: 6)
!5099 = !DILocation(line: 286, column: 6, scope: !5071)
!5100 = !DILocation(line: 287, column: 30, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 286, column: 12)
!5102 = !DILocation(line: 287, column: 21, scope: !5101)
!5103 = !DILocation(line: 287, column: 3, scope: !5101)
!5104 = !DILocation(line: 287, column: 8, scope: !5101)
!5105 = !DILocation(line: 287, column: 19, scope: !5101)
!5106 = !DILocation(line: 288, column: 3, scope: !5101)
!5107 = !DILocation(line: 288, column: 8, scope: !5101)
!5108 = !DILocation(line: 288, column: 23, scope: !5101)
!5109 = !DILocation(line: 289, column: 2, scope: !5101)
!5110 = !DILocation(line: 295, column: 7, scope: !5111)
!5111 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 295, column: 6)
!5112 = !DILocation(line: 295, column: 12, scope: !5111)
!5113 = !{i8 0, i8 2}
!5114 = !DILocation(line: 295, column: 6, scope: !5071)
!5115 = !DILocation(line: 296, column: 3, scope: !5111)
!5116 = !DILocation(line: 298, column: 15, scope: !5071)
!5117 = !DILocation(line: 298, column: 20, scope: !5071)
!5118 = !DILocation(line: 298, column: 32, scope: !5071)
!5119 = !DILocation(line: 298, column: 37, scope: !5071)
!5120 = !DILocation(line: 298, column: 30, scope: !5071)
!5121 = !DILocation(line: 298, column: 47, scope: !5071)
!5122 = !DILocation(line: 298, column: 13, scope: !5071)
!5123 = !DILocation(line: 326, column: 6, scope: !5124)
!5124 = distinct !DILexicalBlock(scope: !5071, file: !3, line: 326, column: 6)
!5125 = !DILocation(line: 326, column: 11, scope: !5124)
!5126 = !DILocation(line: 326, column: 24, scope: !5124)
!5127 = !DILocation(line: 326, column: 29, scope: !5124)
!5128 = !DILocation(line: 326, column: 22, scope: !5124)
!5129 = !DILocation(line: 326, column: 39, scope: !5124)
!5130 = !DILocation(line: 327, column: 6, scope: !5124)
!5131 = !DILocation(line: 327, column: 11, scope: !5124)
!5132 = !DILocation(line: 327, column: 24, scope: !5124)
!5133 = !DILocation(line: 327, column: 22, scope: !5124)
!5134 = !DILocation(line: 327, column: 35, scope: !5124)
!5135 = !DILocation(line: 327, column: 41, scope: !5124)
!5136 = !DILocation(line: 327, column: 46, scope: !5124)
!5137 = !DILocation(line: 327, column: 39, scope: !5124)
!5138 = !DILocation(line: 326, column: 6, scope: !5071)
!5139 = !DILocation(line: 328, column: 22, scope: !5124)
!5140 = !DILocation(line: 328, column: 27, scope: !5124)
!5141 = !DILocation(line: 328, column: 40, scope: !5124)
!5142 = !DILocation(line: 328, column: 45, scope: !5124)
!5143 = !DILocation(line: 328, column: 38, scope: !5124)
!5144 = !DILocation(line: 328, column: 3, scope: !5124)
!5145 = !DILocation(line: 328, column: 8, scope: !5124)
!5146 = !DILocation(line: 328, column: 20, scope: !5124)
!5147 = !DILocation(line: 329, column: 11, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5124, file: !3, line: 329, column: 11)
!5149 = !DILocation(line: 329, column: 16, scope: !5148)
!5150 = !DILocation(line: 329, column: 29, scope: !5148)
!5151 = !DILocation(line: 329, column: 34, scope: !5148)
!5152 = !DILocation(line: 329, column: 27, scope: !5148)
!5153 = !DILocation(line: 329, column: 11, scope: !5124)
!5154 = !DILocation(line: 330, column: 22, scope: !5148)
!5155 = !DILocation(line: 330, column: 3, scope: !5148)
!5156 = !DILocation(line: 330, column: 8, scope: !5148)
!5157 = !DILocation(line: 330, column: 20, scope: !5148)
!5158 = !DILocation(line: 331, column: 11, scope: !5159)
!5159 = distinct !DILexicalBlock(scope: !5148, file: !3, line: 331, column: 11)
!5160 = !DILocation(line: 331, column: 16, scope: !5159)
!5161 = !DILocation(line: 331, column: 29, scope: !5159)
!5162 = !DILocation(line: 331, column: 34, scope: !5159)
!5163 = !DILocation(line: 331, column: 27, scope: !5159)
!5164 = !DILocation(line: 331, column: 11, scope: !5148)
!5165 = !DILocation(line: 332, column: 23, scope: !5159)
!5166 = !DILocation(line: 332, column: 22, scope: !5159)
!5167 = !DILocation(line: 332, column: 3, scope: !5159)
!5168 = !DILocation(line: 332, column: 8, scope: !5159)
!5169 = !DILocation(line: 332, column: 20, scope: !5159)
!5170 = !DILocation(line: 334, column: 3, scope: !5159)
!5171 = !DILocation(line: 334, column: 8, scope: !5159)
!5172 = !DILocation(line: 334, column: 20, scope: !5159)
!5173 = !DILocation(line: 335, column: 1, scope: !5071)
!5174 = !DISubprogram(name: "__rtc_read_alarm", scope: !188, file: !188, line: 189, type: !5175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5175 = !DISubroutineType(types: !5176)
!5176 = !{!85, !186, !4514}
!5177 = !DISubprogram(name: "rtc_valid_tm", scope: !188, file: !188, line: 23, type: !5178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!85, !4496}
!5180 = !DISubprogram(name: "rtc_initialize_alarm", scope: !188, file: !188, line: 194, type: !5175, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5181 = !DISubprogram(name: "rtc_dev_prepare", scope: !5182, file: !5182, line: 5, type: !4581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5182 = !DIFile(filename: "drivers/rtc/rtc-core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8518d80d8f5564349668e935697043e")
!5183 = !DISubprogram(name: "cdev_device_add", scope: !3668, file: !3668, line: 32, type: !5184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!85, !3666, !4001}
!5186 = !DISubprogram(name: "_dev_warn", scope: !5187, file: !5187, line: 52, type: !5188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5187 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5188 = !DISubroutineType(types: !5189)
!5189 = !{null, !4017, !198, null}
!5190 = !DISubprogram(name: "rtc_proc_add_device", scope: !5182, file: !5182, line: 21, type: !4581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5191 = !DISubprogram(name: "_dev_info", scope: !5187, file: !5187, line: 56, type: !5188, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5192 = distinct !DISubprogram(name: "dev_name", scope: !70, file: !70, line: 858, type: !5193, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5195)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!198, !4017}
!5195 = !{!5196}
!5196 = !DILocalVariable(name: "dev", arg: 1, scope: !5192, file: !70, line: 858, type: !4017)
!5197 = !DILocation(line: 858, column: 57, scope: !5192)
!5198 = !DILocation(line: 861, column: 6, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5192, file: !70, line: 861, column: 6)
!5200 = !DILocation(line: 861, column: 11, scope: !5199)
!5201 = !DILocation(line: 861, column: 6, scope: !5192)
!5202 = !DILocation(line: 862, column: 10, scope: !5199)
!5203 = !DILocation(line: 862, column: 15, scope: !5199)
!5204 = !DILocation(line: 862, column: 3, scope: !5199)
!5205 = !DILocation(line: 864, column: 23, scope: !5192)
!5206 = !DILocation(line: 864, column: 28, scope: !5192)
!5207 = !DILocation(line: 864, column: 9, scope: !5192)
!5208 = !DILocation(line: 864, column: 2, scope: !5192)
!5209 = !DILocation(line: 865, column: 1, scope: !5192)
!5210 = distinct !DISubprogram(name: "devm_rtc_unregister_device", scope: !3, file: !3, line: 337, type: !669, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5211)
!5211 = !{!5212, !5213}
!5212 = !DILocalVariable(name: "data", arg: 1, scope: !5210, file: !3, line: 337, type: !182)
!5213 = !DILocalVariable(name: "rtc", scope: !5210, file: !3, line: 339, type: !186)
!5214 = !DILocation(line: 337, column: 46, scope: !5210)
!5215 = !DILocation(line: 339, column: 2, scope: !5210)
!5216 = !DILocation(line: 339, column: 21, scope: !5210)
!5217 = !DILocation(line: 339, column: 27, scope: !5210)
!5218 = !DILocation(line: 341, column: 14, scope: !5210)
!5219 = !DILocation(line: 341, column: 19, scope: !5210)
!5220 = !DILocation(line: 341, column: 2, scope: !5210)
!5221 = !DILocation(line: 346, column: 22, scope: !5210)
!5222 = !DILocation(line: 346, column: 2, scope: !5210)
!5223 = !DILocation(line: 347, column: 7, scope: !5224)
!5224 = distinct !DILexicalBlock(scope: !5210, file: !3, line: 347, column: 6)
!5225 = !DILocation(line: 347, column: 6, scope: !5210)
!5226 = !DILocation(line: 348, column: 20, scope: !5224)
!5227 = !DILocation(line: 348, column: 25, scope: !5224)
!5228 = !DILocation(line: 348, column: 36, scope: !5224)
!5229 = !DILocation(line: 348, column: 41, scope: !5224)
!5230 = !DILocation(line: 348, column: 3, scope: !5224)
!5231 = !DILocation(line: 349, column: 2, scope: !5210)
!5232 = !DILocation(line: 349, column: 7, scope: !5210)
!5233 = !DILocation(line: 349, column: 11, scope: !5210)
!5234 = !DILocation(line: 350, column: 16, scope: !5210)
!5235 = !DILocation(line: 350, column: 21, scope: !5210)
!5236 = !DILocation(line: 350, column: 2, scope: !5210)
!5237 = !DILocation(line: 351, column: 1, scope: !5210)
!5238 = distinct !DISubprogram(name: "devm_rtc_device_register", scope: !3, file: !3, line: 454, type: !5239, scopeLine: 458, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5241)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{!186, !4001, !198, !4484, !554}
!5241 = !{!5242, !5243, !5244, !5245, !5246, !5247}
!5242 = !DILocalVariable(name: "dev", arg: 1, scope: !5238, file: !3, line: 454, type: !4001)
!5243 = !DILocalVariable(name: "name", arg: 2, scope: !5238, file: !3, line: 455, type: !198)
!5244 = !DILocalVariable(name: "ops", arg: 3, scope: !5238, file: !3, line: 456, type: !4484)
!5245 = !DILocalVariable(name: "owner", arg: 4, scope: !5238, file: !3, line: 457, type: !554)
!5246 = !DILocalVariable(name: "rtc", scope: !5238, file: !3, line: 459, type: !186)
!5247 = !DILocalVariable(name: "err", scope: !5238, file: !3, line: 460, type: !85)
!5248 = !DILocation(line: 454, column: 60, scope: !5238)
!5249 = !DILocation(line: 455, column: 22, scope: !5238)
!5250 = !DILocation(line: 456, column: 38, scope: !5238)
!5251 = !DILocation(line: 457, column: 25, scope: !5238)
!5252 = !DILocation(line: 459, column: 2, scope: !5238)
!5253 = !DILocation(line: 459, column: 21, scope: !5238)
!5254 = !DILocation(line: 460, column: 2, scope: !5238)
!5255 = !DILocation(line: 460, column: 6, scope: !5238)
!5256 = !DILocation(line: 462, column: 33, scope: !5238)
!5257 = !DILocation(line: 462, column: 8, scope: !5238)
!5258 = !DILocation(line: 462, column: 6, scope: !5238)
!5259 = !DILocation(line: 463, column: 13, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 463, column: 6)
!5261 = !DILocation(line: 463, column: 6, scope: !5260)
!5262 = !DILocation(line: 463, column: 6, scope: !5238)
!5263 = !DILocation(line: 464, column: 10, scope: !5260)
!5264 = !DILocation(line: 464, column: 3, scope: !5260)
!5265 = !DILocation(line: 466, column: 13, scope: !5238)
!5266 = !DILocation(line: 466, column: 2, scope: !5238)
!5267 = !DILocation(line: 466, column: 7, scope: !5238)
!5268 = !DILocation(line: 466, column: 11, scope: !5238)
!5269 = !DILocation(line: 468, column: 35, scope: !5238)
!5270 = !DILocation(line: 468, column: 42, scope: !5238)
!5271 = !DILocation(line: 468, column: 8, scope: !5238)
!5272 = !DILocation(line: 468, column: 6, scope: !5238)
!5273 = !DILocation(line: 469, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5238, file: !3, line: 469, column: 6)
!5275 = !DILocation(line: 469, column: 6, scope: !5238)
!5276 = !DILocation(line: 470, column: 18, scope: !5274)
!5277 = !DILocation(line: 470, column: 10, scope: !5274)
!5278 = !DILocation(line: 470, column: 3, scope: !5274)
!5279 = !DILocation(line: 472, column: 9, scope: !5238)
!5280 = !DILocation(line: 472, column: 2, scope: !5238)
!5281 = !DILocation(line: 473, column: 1, scope: !5238)
!5282 = distinct !DISubprogram(name: "IS_ERR", scope: !4821, file: !4821, line: 59, type: !5283, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!705, !1623}
!5285 = !{!5286}
!5286 = !DILocalVariable(name: "ptr", arg: 1, scope: !5282, file: !4821, line: 59, type: !1623)
!5287 = !DILocation(line: 59, column: 60, scope: !5282)
!5288 = !DILocation(line: 61, column: 9, scope: !5282)
!5289 = !DILocation(line: 61, column: 2, scope: !5282)
!5290 = distinct !DISubprogram(name: "__initstub__kmod_rtc_core__270_487_rtc_init4", scope: !3, file: !3, line: 487, type: !719, scopeLine: 487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5291 = !DILocation(line: 487, column: 1, scope: !5290)
!5292 = distinct !DISubprogram(name: "rtc_init", scope: !3, file: !3, line: 476, type: !719, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5293 = !DILocation(line: 478, column: 14, scope: !5292)
!5294 = !DILocation(line: 478, column: 12, scope: !5292)
!5295 = !DILocation(line: 479, column: 13, scope: !5296)
!5296 = distinct !DILexicalBlock(scope: !5292, file: !3, line: 479, column: 6)
!5297 = !DILocation(line: 479, column: 6, scope: !5296)
!5298 = !DILocation(line: 479, column: 6, scope: !5292)
!5299 = !DILocation(line: 480, column: 3, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !3, line: 480, column: 3)
!5301 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 479, column: 25)
!5302 = !DILocation(line: 480, column: 3, scope: !5303)
!5303 = distinct !DILexicalBlock(scope: !5300, file: !3, line: 480, column: 3)
!5304 = !DILocation(line: 481, column: 18, scope: !5301)
!5305 = !DILocation(line: 481, column: 10, scope: !5301)
!5306 = !DILocation(line: 481, column: 3, scope: !5301)
!5307 = !DILocation(line: 483, column: 2, scope: !5292)
!5308 = !DILocation(line: 483, column: 13, scope: !5292)
!5309 = !DILocation(line: 483, column: 16, scope: !5292)
!5310 = !DILocation(line: 484, column: 2, scope: !5292)
!5311 = !DILocation(line: 485, column: 2, scope: !5292)
!5312 = !DILocation(line: 486, column: 1, scope: !5292)
!5313 = distinct !DISubprogram(name: "of_alias_get_id", scope: !4299, file: !4299, line: 786, type: !5314, scopeLine: 787, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5316)
!5314 = !DISubroutineType(types: !5315)
!5315 = !{!85, !4297, !198}
!5316 = !{!5317, !5318}
!5317 = !DILocalVariable(name: "np", arg: 1, scope: !5313, file: !4299, line: 786, type: !4297)
!5318 = !DILocalVariable(name: "stem", arg: 2, scope: !5313, file: !4299, line: 786, type: !198)
!5319 = !DILocation(line: 786, column: 55, scope: !5313)
!5320 = !DILocation(line: 786, column: 71, scope: !5313)
!5321 = !DILocation(line: 788, column: 2, scope: !5313)
!5322 = !DISubprogram(name: "ida_alloc_range", scope: !4684, file: !4684, line: 257, type: !5323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!85, !4911, !7, !7, !183}
!5325 = distinct !DISubprogram(name: "ida_alloc", scope: !4684, file: !4684, line: 273, type: !5326, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5328)
!5326 = !DISubroutineType(types: !5327)
!5327 = !{!85, !4911, !183}
!5328 = !{!5329, !5330}
!5329 = !DILocalVariable(name: "ida", arg: 1, scope: !5325, file: !4684, line: 273, type: !4911)
!5330 = !DILocalVariable(name: "gfp", arg: 2, scope: !5325, file: !4684, line: 273, type: !183)
!5331 = !DILocation(line: 273, column: 41, scope: !5325)
!5332 = !DILocation(line: 273, column: 52, scope: !5325)
!5333 = !DILocation(line: 275, column: 25, scope: !5325)
!5334 = !DILocation(line: 275, column: 37, scope: !5325)
!5335 = !DILocation(line: 275, column: 9, scope: !5325)
!5336 = !DILocation(line: 275, column: 2, scope: !5325)
!5337 = distinct !DISubprogram(name: "kzalloc", scope: !172, file: !172, line: 719, type: !5338, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5340)
!5338 = !DISubroutineType(types: !5339)
!5339 = !{!182, !332, !183}
!5340 = !{!5341, !5342}
!5341 = !DILocalVariable(name: "size", arg: 1, scope: !5337, file: !172, line: 719, type: !332)
!5342 = !DILocalVariable(name: "flags", arg: 2, scope: !5337, file: !172, line: 719, type: !183)
!5343 = !DILocation(line: 719, column: 52, scope: !5337)
!5344 = !DILocation(line: 719, column: 64, scope: !5337)
!5345 = !DILocation(line: 721, column: 17, scope: !5337)
!5346 = !DILocation(line: 721, column: 23, scope: !5337)
!5347 = !DILocation(line: 721, column: 29, scope: !5337)
!5348 = !DILocation(line: 721, column: 9, scope: !5337)
!5349 = !DILocation(line: 721, column: 2, scope: !5337)
!5350 = !DISubprogram(name: "device_initialize", scope: !70, file: !70, line: 1056, type: !4026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5351 = !DISubprogram(name: "rtc_get_dev_attribute_groups", scope: !5182, file: !5182, line: 37, type: !5352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5352 = !DISubroutineType(types: !5353)
!5353 = !{!336}
!5354 = distinct !DISubprogram(name: "rtc_device_release", scope: !3, file: !3, line: 26, type: !4026, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5355)
!5355 = !{!5356, !5357, !5358, !5360, !5362}
!5356 = !DILocalVariable(name: "dev", arg: 1, scope: !5354, file: !3, line: 26, type: !4001)
!5357 = !DILocalVariable(name: "rtc", scope: !5354, file: !3, line: 28, type: !186)
!5358 = !DILocalVariable(name: "__mptr", scope: !5359, file: !3, line: 28, type: !182)
!5359 = distinct !DILexicalBlock(scope: !5354, file: !3, line: 28, column: 27)
!5360 = !DILocalVariable(name: "head", scope: !5354, file: !3, line: 29, type: !5361)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!5362 = !DILocalVariable(name: "node", scope: !5354, file: !3, line: 30, type: !4598)
!5363 = !DILocation(line: 26, column: 47, scope: !5354)
!5364 = !DILocation(line: 28, column: 2, scope: !5354)
!5365 = !DILocation(line: 28, column: 21, scope: !5354)
!5366 = !DILocation(line: 28, column: 27, scope: !5359)
!5367 = !DILocation(line: 28, column: 27, scope: !5354)
!5368 = !DILocation(line: 29, column: 2, scope: !5354)
!5369 = !DILocation(line: 29, column: 26, scope: !5354)
!5370 = !DILocation(line: 29, column: 34, scope: !5354)
!5371 = !DILocation(line: 29, column: 39, scope: !5354)
!5372 = !DILocation(line: 30, column: 2, scope: !5354)
!5373 = !DILocation(line: 30, column: 26, scope: !5354)
!5374 = !DILocation(line: 32, column: 14, scope: !5354)
!5375 = !DILocation(line: 32, column: 19, scope: !5354)
!5376 = !DILocation(line: 32, column: 2, scope: !5354)
!5377 = !DILocation(line: 33, column: 2, scope: !5354)
!5378 = !DILocation(line: 33, column: 36, scope: !5354)
!5379 = !DILocation(line: 33, column: 17, scope: !5354)
!5380 = !DILocation(line: 33, column: 15, scope: !5354)
!5381 = !DILocation(line: 34, column: 18, scope: !5354)
!5382 = !DILocation(line: 34, column: 24, scope: !5354)
!5383 = !DILocation(line: 34, column: 3, scope: !5354)
!5384 = distinct !{!5384, !5377, !5385, !5386, !5387}
!5385 = !DILocation(line: 34, column: 28, scope: !5354)
!5386 = !{!"llvm.loop.mustprogress"}
!5387 = !{!"llvm.loop.unroll.disable"}
!5388 = !DILocation(line: 35, column: 16, scope: !5354)
!5389 = !DILocation(line: 35, column: 21, scope: !5354)
!5390 = !DILocation(line: 35, column: 2, scope: !5354)
!5391 = !DILocation(line: 37, column: 20, scope: !5354)
!5392 = !DILocation(line: 37, column: 25, scope: !5354)
!5393 = !DILocation(line: 37, column: 2, scope: !5354)
!5394 = !DILocation(line: 39, column: 21, scope: !5354)
!5395 = !DILocation(line: 39, column: 26, scope: !5354)
!5396 = !DILocation(line: 39, column: 2, scope: !5354)
!5397 = !DILocation(line: 40, column: 17, scope: !5354)
!5398 = !DILocation(line: 40, column: 22, scope: !5354)
!5399 = !DILocation(line: 40, column: 2, scope: !5354)
!5400 = !DILocation(line: 41, column: 8, scope: !5354)
!5401 = !DILocation(line: 41, column: 2, scope: !5354)
!5402 = !DILocation(line: 42, column: 1, scope: !5354)
!5403 = !DISubprogram(name: "__mutex_init", scope: !626, file: !626, line: 121, type: !5404, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5404 = !DISubroutineType(types: !5405)
!5405 = !{null, !5406, !198, !5407}
!5406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!5407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!5408 = distinct !DISubprogram(name: "spinlock_check", scope: !5409, file: !5409, line: 324, type: !5410, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5414)
!5409 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5410 = !DISubroutineType(types: !5411)
!5411 = !{!5412, !5413}
!5412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!5414 = !{!5415}
!5415 = !DILocalVariable(name: "lock", arg: 1, scope: !5408, file: !5409, line: 324, type: !5413)
!5416 = !DILocation(line: 324, column: 67, scope: !5408)
!5417 = !DILocation(line: 326, column: 10, scope: !5408)
!5418 = !DILocation(line: 326, column: 16, scope: !5408)
!5419 = !DILocation(line: 326, column: 2, scope: !5408)
!5420 = !DISubprogram(name: "__init_waitqueue_head", scope: !1165, file: !1165, line: 64, type: !5421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5421 = !DISubroutineType(types: !5422)
!5422 = !{null, !5423, !198, !5407}
!5423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!5424 = distinct !DISubprogram(name: "timerqueue_init_head", scope: !2210, file: !2210, line: 56, type: !5425, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5427)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{null, !5361}
!5427 = !{!5428}
!5428 = !DILocalVariable(name: "head", arg: 1, scope: !5424, file: !2210, line: 56, type: !5361)
!5429 = !DILocation(line: 56, column: 65, scope: !5424)
!5430 = !DILocation(line: 58, column: 2, scope: !5424)
!5431 = !DILocation(line: 58, column: 8, scope: !5424)
!5432 = !DILocation(line: 58, column: 18, scope: !5424)
!5433 = !DILocation(line: 59, column: 1, scope: !5424)
!5434 = distinct !DISubprogram(name: "__init_work", scope: !124, file: !124, line: 263, type: !5435, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5437)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{null, !894, !85}
!5437 = !{!5438, !5439}
!5438 = !DILocalVariable(name: "work", arg: 1, scope: !5434, file: !124, line: 263, type: !894)
!5439 = !DILocalVariable(name: "onstack", arg: 2, scope: !5434, file: !124, line: 263, type: !85)
!5440 = !DILocation(line: 263, column: 52, scope: !5434)
!5441 = !DILocation(line: 263, column: 62, scope: !5434)
!5442 = !DILocation(line: 263, column: 73, scope: !5434)
!5443 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5444, file: !5444, line: 35, type: !5445, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5447)
!5444 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5445 = !DISubroutineType(types: !5446)
!5446 = !{null, !205}
!5447 = !{!5448}
!5448 = !DILocalVariable(name: "list", arg: 1, scope: !5443, file: !5444, line: 35, type: !205)
!5449 = !DILocation(line: 35, column: 53, scope: !5443)
!5450 = !DILocation(line: 37, column: 2, scope: !5443)
!5451 = !DILocation(line: 37, column: 2, scope: !5452)
!5452 = distinct !DILexicalBlock(scope: !5443, file: !5444, line: 37, column: 2)
!5453 = !DILocation(line: 37, column: 2, scope: !5454)
!5454 = distinct !DILexicalBlock(scope: !5452, file: !5444, line: 37, column: 2)
!5455 = !DILocation(line: 37, column: 2, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5452, file: !5444, line: 37, column: 2)
!5457 = !DILocation(line: 38, column: 2, scope: !5443)
!5458 = !DILocation(line: 38, column: 2, scope: !5459)
!5459 = distinct !DILexicalBlock(scope: !5443, file: !5444, line: 38, column: 2)
!5460 = !DILocation(line: 38, column: 2, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5459, file: !5444, line: 38, column: 2)
!5462 = !DILocation(line: 38, column: 2, scope: !5463)
!5463 = distinct !DILexicalBlock(scope: !5459, file: !5444, line: 38, column: 2)
!5464 = !DILocation(line: 39, column: 1, scope: !5443)
!5465 = !DISubprogram(name: "rtc_timer_init", scope: !188, file: !188, line: 214, type: !5466, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5466 = !DISubroutineType(types: !5467)
!5467 = !{null, !5468, !4580, !186}
!5468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4575, size: 64)
!5469 = !DISubprogram(name: "hrtimer_init", scope: !33, file: !33, line: 374, type: !5470, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5470 = !DISubroutineType(types: !5471)
!5471 = !{null, !2221, !2253, !149}
!5472 = distinct !DISubprogram(name: "kmalloc", scope: !172, file: !172, line: 591, type: !5338, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5473)
!5473 = !{!5474, !5475, !5476}
!5474 = !DILocalVariable(name: "size", arg: 1, scope: !5472, file: !172, line: 591, type: !332)
!5475 = !DILocalVariable(name: "flags", arg: 2, scope: !5472, file: !172, line: 591, type: !183)
!5476 = !DILocalVariable(name: "index", scope: !5477, file: !172, line: 594, type: !7)
!5477 = distinct !DILexicalBlock(scope: !5478, file: !172, line: 593, column: 42)
!5478 = distinct !DILexicalBlock(scope: !5472, file: !172, line: 593, column: 6)
!5479 = !DILocation(line: 591, column: 61, scope: !5472)
!5480 = !DILocation(line: 591, column: 73, scope: !5472)
!5481 = !DILocation(line: 593, column: 27, scope: !5478)
!5482 = !DILocation(line: 593, column: 6, scope: !5478)
!5483 = !DILocation(line: 593, column: 33, scope: !5478)
!5484 = !DILocation(line: 593, column: 36, scope: !5478)
!5485 = !DILocation(line: 593, column: 6, scope: !5472)
!5486 = !DILocation(line: 594, column: 3, scope: !5477)
!5487 = !DILocation(line: 594, column: 16, scope: !5477)
!5488 = !DILocation(line: 596, column: 7, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5477, file: !172, line: 596, column: 7)
!5490 = !DILocation(line: 596, column: 12, scope: !5489)
!5491 = !DILocation(line: 596, column: 7, scope: !5477)
!5492 = !DILocation(line: 597, column: 25, scope: !5489)
!5493 = !DILocation(line: 597, column: 31, scope: !5489)
!5494 = !DILocation(line: 597, column: 11, scope: !5489)
!5495 = !DILocation(line: 597, column: 4, scope: !5489)
!5496 = !DILocation(line: 599, column: 11, scope: !5477)
!5497 = !DILocation(line: 599, column: 9, scope: !5477)
!5498 = !DILocation(line: 601, column: 33, scope: !5477)
!5499 = !DILocation(line: 601, column: 40, scope: !5477)
!5500 = !DILocation(line: 601, column: 20, scope: !5477)
!5501 = !DILocation(line: 601, column: 5, scope: !5477)
!5502 = !DILocation(line: 601, column: 51, scope: !5477)
!5503 = !DILocation(line: 602, column: 5, scope: !5477)
!5504 = !DILocation(line: 602, column: 12, scope: !5477)
!5505 = !DILocation(line: 600, column: 10, scope: !5477)
!5506 = !DILocation(line: 600, column: 3, scope: !5477)
!5507 = !DILocation(line: 603, column: 2, scope: !5478)
!5508 = !DILocation(line: 604, column: 19, scope: !5472)
!5509 = !DILocation(line: 604, column: 25, scope: !5472)
!5510 = !DILocation(line: 604, column: 9, scope: !5472)
!5511 = !DILocation(line: 604, column: 2, scope: !5472)
!5512 = !DILocation(line: 605, column: 1, scope: !5472)
!5513 = !DISubprogram(name: "kmalloc_large", scope: !172, file: !172, line: 531, type: !5338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5514 = distinct !DISubprogram(name: "__kmalloc_index", scope: !172, file: !172, line: 444, type: !5515, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5517)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!7, !332, !705}
!5517 = !{!5518, !5519}
!5518 = !DILocalVariable(name: "size", arg: 1, scope: !5514, file: !172, line: 444, type: !332)
!5519 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5514, file: !172, line: 445, type: !705)
!5520 = !DILocation(line: 444, column: 60, scope: !5514)
!5521 = !DILocation(line: 445, column: 16, scope: !5514)
!5522 = !DILocation(line: 447, column: 7, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 447, column: 6)
!5524 = !DILocation(line: 447, column: 6, scope: !5514)
!5525 = !DILocation(line: 448, column: 3, scope: !5523)
!5526 = !DILocation(line: 450, column: 6, scope: !5527)
!5527 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 450, column: 6)
!5528 = !DILocation(line: 450, column: 11, scope: !5527)
!5529 = !DILocation(line: 450, column: 6, scope: !5514)
!5530 = !DILocation(line: 451, column: 3, scope: !5527)
!5531 = !DILocation(line: 453, column: 32, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 453, column: 6)
!5533 = !DILocation(line: 453, column: 37, scope: !5532)
!5534 = !DILocation(line: 453, column: 42, scope: !5532)
!5535 = !DILocation(line: 453, column: 45, scope: !5532)
!5536 = !DILocation(line: 453, column: 50, scope: !5532)
!5537 = !DILocation(line: 453, column: 6, scope: !5514)
!5538 = !DILocation(line: 454, column: 3, scope: !5532)
!5539 = !DILocation(line: 455, column: 32, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 455, column: 6)
!5541 = !DILocation(line: 455, column: 37, scope: !5540)
!5542 = !DILocation(line: 455, column: 43, scope: !5540)
!5543 = !DILocation(line: 455, column: 46, scope: !5540)
!5544 = !DILocation(line: 455, column: 51, scope: !5540)
!5545 = !DILocation(line: 455, column: 6, scope: !5514)
!5546 = !DILocation(line: 456, column: 3, scope: !5540)
!5547 = !DILocation(line: 457, column: 6, scope: !5548)
!5548 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 457, column: 6)
!5549 = !DILocation(line: 457, column: 11, scope: !5548)
!5550 = !DILocation(line: 457, column: 6, scope: !5514)
!5551 = !DILocation(line: 457, column: 26, scope: !5548)
!5552 = !DILocation(line: 458, column: 6, scope: !5553)
!5553 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 458, column: 6)
!5554 = !DILocation(line: 458, column: 11, scope: !5553)
!5555 = !DILocation(line: 458, column: 6, scope: !5514)
!5556 = !DILocation(line: 458, column: 26, scope: !5553)
!5557 = !DILocation(line: 459, column: 6, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 459, column: 6)
!5559 = !DILocation(line: 459, column: 11, scope: !5558)
!5560 = !DILocation(line: 459, column: 6, scope: !5514)
!5561 = !DILocation(line: 459, column: 26, scope: !5558)
!5562 = !DILocation(line: 460, column: 6, scope: !5563)
!5563 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 460, column: 6)
!5564 = !DILocation(line: 460, column: 11, scope: !5563)
!5565 = !DILocation(line: 460, column: 6, scope: !5514)
!5566 = !DILocation(line: 460, column: 26, scope: !5563)
!5567 = !DILocation(line: 461, column: 6, scope: !5568)
!5568 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 461, column: 6)
!5569 = !DILocation(line: 461, column: 11, scope: !5568)
!5570 = !DILocation(line: 461, column: 6, scope: !5514)
!5571 = !DILocation(line: 461, column: 26, scope: !5568)
!5572 = !DILocation(line: 462, column: 6, scope: !5573)
!5573 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 462, column: 6)
!5574 = !DILocation(line: 462, column: 11, scope: !5573)
!5575 = !DILocation(line: 462, column: 6, scope: !5514)
!5576 = !DILocation(line: 462, column: 26, scope: !5573)
!5577 = !DILocation(line: 463, column: 6, scope: !5578)
!5578 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 463, column: 6)
!5579 = !DILocation(line: 463, column: 11, scope: !5578)
!5580 = !DILocation(line: 463, column: 6, scope: !5514)
!5581 = !DILocation(line: 463, column: 26, scope: !5578)
!5582 = !DILocation(line: 464, column: 6, scope: !5583)
!5583 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 464, column: 6)
!5584 = !DILocation(line: 464, column: 11, scope: !5583)
!5585 = !DILocation(line: 464, column: 6, scope: !5514)
!5586 = !DILocation(line: 464, column: 26, scope: !5583)
!5587 = !DILocation(line: 465, column: 6, scope: !5588)
!5588 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 465, column: 6)
!5589 = !DILocation(line: 465, column: 11, scope: !5588)
!5590 = !DILocation(line: 465, column: 6, scope: !5514)
!5591 = !DILocation(line: 465, column: 26, scope: !5588)
!5592 = !DILocation(line: 466, column: 6, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 466, column: 6)
!5594 = !DILocation(line: 466, column: 11, scope: !5593)
!5595 = !DILocation(line: 466, column: 6, scope: !5514)
!5596 = !DILocation(line: 466, column: 26, scope: !5593)
!5597 = !DILocation(line: 467, column: 6, scope: !5598)
!5598 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 467, column: 6)
!5599 = !DILocation(line: 467, column: 11, scope: !5598)
!5600 = !DILocation(line: 467, column: 6, scope: !5514)
!5601 = !DILocation(line: 467, column: 26, scope: !5598)
!5602 = !DILocation(line: 468, column: 6, scope: !5603)
!5603 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 468, column: 6)
!5604 = !DILocation(line: 468, column: 11, scope: !5603)
!5605 = !DILocation(line: 468, column: 6, scope: !5514)
!5606 = !DILocation(line: 468, column: 26, scope: !5603)
!5607 = !DILocation(line: 469, column: 6, scope: !5608)
!5608 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 469, column: 6)
!5609 = !DILocation(line: 469, column: 11, scope: !5608)
!5610 = !DILocation(line: 469, column: 6, scope: !5514)
!5611 = !DILocation(line: 469, column: 26, scope: !5608)
!5612 = !DILocation(line: 470, column: 6, scope: !5613)
!5613 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 470, column: 6)
!5614 = !DILocation(line: 470, column: 11, scope: !5613)
!5615 = !DILocation(line: 470, column: 6, scope: !5514)
!5616 = !DILocation(line: 470, column: 26, scope: !5613)
!5617 = !DILocation(line: 471, column: 6, scope: !5618)
!5618 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 471, column: 6)
!5619 = !DILocation(line: 471, column: 11, scope: !5618)
!5620 = !DILocation(line: 471, column: 6, scope: !5514)
!5621 = !DILocation(line: 471, column: 26, scope: !5618)
!5622 = !DILocation(line: 472, column: 6, scope: !5623)
!5623 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 472, column: 6)
!5624 = !DILocation(line: 472, column: 11, scope: !5623)
!5625 = !DILocation(line: 472, column: 6, scope: !5514)
!5626 = !DILocation(line: 472, column: 26, scope: !5623)
!5627 = !DILocation(line: 473, column: 6, scope: !5628)
!5628 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 473, column: 6)
!5629 = !DILocation(line: 473, column: 11, scope: !5628)
!5630 = !DILocation(line: 473, column: 6, scope: !5514)
!5631 = !DILocation(line: 473, column: 26, scope: !5628)
!5632 = !DILocation(line: 474, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 474, column: 6)
!5634 = !DILocation(line: 474, column: 11, scope: !5633)
!5635 = !DILocation(line: 474, column: 6, scope: !5514)
!5636 = !DILocation(line: 474, column: 27, scope: !5633)
!5637 = !DILocation(line: 475, column: 6, scope: !5638)
!5638 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 475, column: 6)
!5639 = !DILocation(line: 475, column: 11, scope: !5638)
!5640 = !DILocation(line: 475, column: 6, scope: !5514)
!5641 = !DILocation(line: 475, column: 32, scope: !5638)
!5642 = !DILocation(line: 477, column: 50, scope: !5643)
!5643 = distinct !DILexicalBlock(scope: !5514, file: !172, line: 477, column: 6)
!5644 = !DILocation(line: 477, column: 6, scope: !5514)
!5645 = !DILocation(line: 478, column: 3, scope: !5643)
!5646 = !DILocation(line: 478, column: 3, scope: !5647)
!5647 = distinct !DILexicalBlock(scope: !5648, file: !172, line: 478, column: 3)
!5648 = distinct !DILexicalBlock(scope: !5643, file: !172, line: 478, column: 3)
!5649 = !{i32 -2140834114}
!5650 = !DILocation(line: 478, column: 3, scope: !5648)
!5651 = !DILocation(line: 480, column: 3, scope: !5643)
!5652 = !DILocation(line: 480, column: 3, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5643, file: !172, line: 480, column: 3)
!5654 = !DILocation(line: 480, column: 3, scope: !5655)
!5655 = distinct !DILexicalBlock(scope: !5653, file: !172, line: 480, column: 3)
!5656 = !DILocation(line: 480, column: 3, scope: !5657)
!5657 = distinct !DILexicalBlock(scope: !5653, file: !172, line: 480, column: 3)
!5658 = !{i64 2154133385, i64 2154133414, i64 2154133460, i64 2154133518, i64 2154133572, i64 2154133626, i64 2154133681, i64 2154133712}
!5659 = !DILocation(line: 483, column: 2, scope: !5514)
!5660 = !DILocation(line: 484, column: 1, scope: !5514)
!5661 = !DISubprogram(name: "kmalloc_trace", scope: !172, file: !172, line: 525, type: !5662, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5662 = !DISubroutineType(types: !5663)
!5663 = !{!182, !5664, !183, !332}
!5664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5665, size: 64)
!5665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5666, line: 325, flags: DIFlagFwdDecl)
!5666 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5667 = distinct !DISubprogram(name: "kmalloc_type", scope: !172, file: !172, line: 401, type: !5668, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5670)
!5668 = !DISubroutineType(types: !5669)
!5669 = !{!171, !183, !185}
!5670 = !{!5671, !5672}
!5671 = !DILocalVariable(name: "flags", arg: 1, scope: !5667, file: !172, line: 401, type: !183)
!5672 = !DILocalVariable(name: "caller", arg: 2, scope: !5667, file: !172, line: 401, type: !185)
!5673 = !DILocation(line: 401, column: 67, scope: !5667)
!5674 = !DILocation(line: 401, column: 88, scope: !5667)
!5675 = !DILocation(line: 407, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5667, file: !172, line: 407, column: 6)
!5677 = !DILocation(line: 407, column: 6, scope: !5667)
!5678 = !DILocation(line: 413, column: 3, scope: !5676)
!5679 = !DILocation(line: 423, column: 38, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5667, file: !172, line: 423, column: 6)
!5681 = !DILocation(line: 423, column: 44, scope: !5680)
!5682 = !DILocation(line: 423, column: 6, scope: !5667)
!5683 = !DILocation(line: 424, column: 3, scope: !5680)
!5684 = !DILocation(line: 426, column: 3, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5667, file: !172, line: 425, column: 6)
!5686 = !DILocation(line: 429, column: 1, scope: !5667)
!5687 = !DISubprogram(name: "__kmalloc", scope: !172, file: !172, line: 488, type: !5338, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5688 = !DISubprogram(name: "__compiletime_assert_263", scope: !172, file: !172, line: 478, type: !989, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5689 = !DISubprogram(name: "mutex_lock", scope: !626, file: !626, line: 227, type: !5690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5690 = !DISubroutineType(types: !5691)
!5691 = !{null, !5406}
!5692 = distinct !DISubprogram(name: "timerqueue_getnext", scope: !2210, file: !2210, line: 34, type: !5693, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5695)
!5693 = !DISubroutineType(types: !5694)
!5694 = !{!4598, !5361}
!5695 = !{!5696, !5697, !5698, !5700}
!5696 = !DILocalVariable(name: "head", arg: 1, scope: !5692, file: !2210, line: 34, type: !5361)
!5697 = !DILocalVariable(name: "leftmost", scope: !5692, file: !2210, line: 36, type: !742)
!5698 = !DILocalVariable(name: "____ptr", scope: !5699, file: !2210, line: 38, type: !742)
!5699 = distinct !DILexicalBlock(scope: !5692, file: !2210, line: 38, column: 9)
!5700 = !DILocalVariable(name: "__mptr", scope: !5701, file: !2210, line: 38, type: !182)
!5701 = distinct !DILexicalBlock(scope: !5699, file: !2210, line: 38, column: 9)
!5702 = !DILocation(line: 34, column: 68, scope: !5692)
!5703 = !DILocation(line: 36, column: 2, scope: !5692)
!5704 = !DILocation(line: 36, column: 18, scope: !5692)
!5705 = !DILocation(line: 36, column: 29, scope: !5692)
!5706 = !DILocation(line: 38, column: 9, scope: !5699)
!5707 = !DILocation(line: 38, column: 9, scope: !5701)
!5708 = !DILocation(line: 38, column: 9, scope: !5692)
!5709 = !DILocation(line: 39, column: 1, scope: !5692)
!5710 = !DILocation(line: 38, column: 2, scope: !5692)
!5711 = !DISubprogram(name: "timerqueue_del", scope: !2210, file: !2210, line: 21, type: !5712, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5712 = !DISubroutineType(types: !5713)
!5713 = !{!705, !5361, !4598}
!5714 = !DISubprogram(name: "mutex_unlock", scope: !626, file: !626, line: 246, type: !5690, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5715 = !DISubprogram(name: "cancel_work_sync", scope: !124, file: !124, line: 515, type: !5716, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5716 = !DISubroutineType(types: !5717)
!5717 = !{!705, !894}
!5718 = distinct !DISubprogram(name: "mutex_destroy", scope: !626, file: !626, line: 92, type: !5690, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5719)
!5719 = !{!5720}
!5720 = !DILocalVariable(name: "lock", arg: 1, scope: !5718, file: !626, line: 92, type: !5406)
!5721 = !DILocation(line: 92, column: 48, scope: !5718)
!5722 = !DILocation(line: 92, column: 55, scope: !5718)
!5723 = !DISubprogram(name: "kfree", scope: !172, file: !172, line: 227, type: !5724, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5724 = !DISubroutineType(types: !5725)
!5725 = !{null, !1623}
!5726 = !DISubprogram(name: "__devm_add_action", scope: !70, file: !70, line: 391, type: !4913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5727 = !DISubprogram(name: "put_device", scope: !70, file: !70, line: 1231, type: !4026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5728 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !5729, file: !5729, line: 80, type: !5730, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5735)
!5729 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!5730 = !DISubroutineType(types: !5731)
!5731 = !{null, !5732, !332}
!5732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5733, size: 64)
!5733 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5734)
!5734 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5735 = !{!5736, !5737}
!5736 = !DILocalVariable(name: "v", arg: 1, scope: !5728, file: !5729, line: 80, type: !5732)
!5737 = !DILocalVariable(name: "size", arg: 2, scope: !5728, file: !5729, line: 80, type: !332)
!5738 = !DILocation(line: 80, column: 74, scope: !5728)
!5739 = !DILocation(line: 80, column: 84, scope: !5728)
!5740 = !DILocation(line: 82, column: 20, scope: !5728)
!5741 = !DILocation(line: 82, column: 23, scope: !5728)
!5742 = !DILocation(line: 82, column: 2, scope: !5728)
!5743 = !DILocation(line: 83, column: 2, scope: !5728)
!5744 = !DILocation(line: 84, column: 1, scope: !5728)
!5745 = distinct !DISubprogram(name: "arch_clear_bit", scope: !5746, file: !5746, line: 72, type: !5040, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5747)
!5746 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5747 = !{!5748, !5749}
!5748 = !DILocalVariable(name: "nr", arg: 1, scope: !5745, file: !5746, line: 72, type: !321)
!5749 = !DILocalVariable(name: "addr", arg: 2, scope: !5745, file: !5746, line: 72, type: !5042)
!5750 = !DILocation(line: 72, column: 21, scope: !5745)
!5751 = !DILocation(line: 72, column: 49, scope: !5745)
!5752 = !DILocation(line: 74, column: 27, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5745, file: !5746, line: 74, column: 6)
!5754 = !DILocation(line: 74, column: 6, scope: !5753)
!5755 = !DILocation(line: 74, column: 6, scope: !5745)
!5756 = !DILocation(line: 76, column: 6, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5753, file: !5746, line: 74, column: 32)
!5758 = !DILocation(line: 77, column: 13, scope: !5757)
!5759 = !DILocation(line: 77, column: 12, scope: !5757)
!5760 = !DILocation(line: 75, column: 3, scope: !5757)
!5761 = !{i64 2148341171, i64 2148341210, i64 2148341231, i64 2148341268, i64 2148341291, i64 2148341161}
!5762 = !DILocation(line: 78, column: 2, scope: !5757)
!5763 = !DILocation(line: 80, column: 8, scope: !5764)
!5764 = distinct !DILexicalBlock(scope: !5753, file: !5746, line: 78, column: 9)
!5765 = !DILocation(line: 80, column: 32, scope: !5764)
!5766 = !DILocation(line: 79, column: 3, scope: !5764)
!5767 = !{i64 2148341456, i64 2148341495, i64 2148341516, i64 2148341553, i64 2148341576, i64 2148341446}
!5768 = !DILocation(line: 82, column: 1, scope: !5745)
!5769 = distinct !DISubprogram(name: "kasan_check_write", scope: !5770, file: !5770, line: 44, type: !5771, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5773)
!5770 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!5771 = !DISubroutineType(types: !5772)
!5772 = !{!705, !5732, !7}
!5773 = !{!5774, !5775}
!5774 = !DILocalVariable(name: "p", arg: 1, scope: !5769, file: !5770, line: 44, type: !5732)
!5775 = !DILocalVariable(name: "size", arg: 2, scope: !5769, file: !5770, line: 44, type: !7)
!5776 = !DILocation(line: 44, column: 59, scope: !5769)
!5777 = !DILocation(line: 44, column: 75, scope: !5769)
!5778 = !DILocation(line: 46, column: 2, scope: !5769)
!5779 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5780, file: !5780, line: 229, type: !5781, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5780 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!5781 = !DISubroutineType(types: !5782)
!5782 = !{null, !5732, !332, !85}
!5783 = !{!5784, !5785, !5786}
!5784 = !DILocalVariable(name: "ptr", arg: 1, scope: !5779, file: !5780, line: 229, type: !5732)
!5785 = !DILocalVariable(name: "size", arg: 2, scope: !5779, file: !5780, line: 229, type: !332)
!5786 = !DILocalVariable(name: "type", arg: 3, scope: !5779, file: !5780, line: 230, type: !85)
!5787 = !DILocation(line: 229, column: 60, scope: !5779)
!5788 = !DILocation(line: 229, column: 72, scope: !5779)
!5789 = !DILocation(line: 230, column: 15, scope: !5779)
!5790 = !DILocation(line: 230, column: 23, scope: !5779)
!5791 = distinct !DISubprogram(name: "arch_set_bit", scope: !5746, file: !5746, line: 52, type: !5040, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5792)
!5792 = !{!5793, !5794}
!5793 = !DILocalVariable(name: "nr", arg: 1, scope: !5791, file: !5746, line: 52, type: !321)
!5794 = !DILocalVariable(name: "addr", arg: 2, scope: !5791, file: !5746, line: 52, type: !5042)
!5795 = !DILocation(line: 52, column: 19, scope: !5791)
!5796 = !DILocation(line: 52, column: 47, scope: !5791)
!5797 = !DILocation(line: 54, column: 27, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5791, file: !5746, line: 54, column: 6)
!5799 = !DILocation(line: 54, column: 6, scope: !5798)
!5800 = !DILocation(line: 54, column: 6, scope: !5791)
!5801 = !DILocation(line: 56, column: 6, scope: !5802)
!5802 = distinct !DILexicalBlock(scope: !5798, file: !5746, line: 54, column: 32)
!5803 = !DILocation(line: 57, column: 12, scope: !5802)
!5804 = !DILocation(line: 55, column: 3, scope: !5802)
!5805 = !{i64 2148339883, i64 2148339922, i64 2148339943, i64 2148339980, i64 2148340003, i64 2148339873}
!5806 = !DILocation(line: 59, column: 2, scope: !5802)
!5807 = !DILocation(line: 61, column: 8, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5798, file: !5746, line: 59, column: 9)
!5809 = !DILocation(line: 61, column: 32, scope: !5808)
!5810 = !DILocation(line: 60, column: 3, scope: !5808)
!5811 = !{i64 2148340168, i64 2148340207, i64 2148340228, i64 2148340265, i64 2148340288, i64 2148340158}
!5812 = !DILocation(line: 63, column: 1, scope: !5791)
!5813 = distinct !DISubprogram(name: "device_property_read_u32", scope: !93, file: !93, line: 209, type: !5814, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5816)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!85, !4017, !198, !2420}
!5816 = !{!5817, !5818, !5819}
!5817 = !DILocalVariable(name: "dev", arg: 1, scope: !5813, file: !93, line: 209, type: !4017)
!5818 = !DILocalVariable(name: "propname", arg: 2, scope: !5813, file: !93, line: 210, type: !198)
!5819 = !DILocalVariable(name: "val", arg: 3, scope: !5813, file: !93, line: 210, type: !2420)
!5820 = !DILocation(line: 209, column: 65, scope: !5813)
!5821 = !DILocation(line: 210, column: 21, scope: !5813)
!5822 = !DILocation(line: 210, column: 36, scope: !5813)
!5823 = !DILocation(line: 212, column: 40, scope: !5813)
!5824 = !DILocation(line: 212, column: 45, scope: !5813)
!5825 = !DILocation(line: 212, column: 55, scope: !5813)
!5826 = !DILocation(line: 212, column: 9, scope: !5813)
!5827 = !DILocation(line: 212, column: 2, scope: !5813)
!5828 = !DISubprogram(name: "mktime64", scope: !5829, file: !5829, line: 20, type: !5830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5829 = !DIFile(filename: "./include/linux/time.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f33592c8760b58e8aacec1e4121b19fc")
!5830 = !DISubroutineType(types: !5831)
!5831 = !{!1243, !3620, !3620, !3620, !3620, !3620, !3620}
!5832 = !DISubprogram(name: "device_property_read_u32_array", scope: !93, file: !93, line: 48, type: !5833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5833 = !DISubroutineType(types: !5834)
!5834 = !{!85, !4017, !198, !2420, !332}
!5835 = distinct !DISubprogram(name: "kobject_name", scope: !195, file: !195, line: 87, type: !273, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5836)
!5836 = !{!5837}
!5837 = !DILocalVariable(name: "kobj", arg: 1, scope: !5835, file: !195, line: 87, type: !268)
!5838 = !DILocation(line: 87, column: 62, scope: !5835)
!5839 = !DILocation(line: 89, column: 9, scope: !5835)
!5840 = !DILocation(line: 89, column: 15, scope: !5835)
!5841 = !DILocation(line: 89, column: 2, scope: !5835)
!5842 = !DISubprogram(name: "rtc_proc_del_device", scope: !5182, file: !5182, line: 22, type: !4581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5843 = distinct !DISubprogram(name: "const_test_bit", scope: !5844, file: !5844, line: 166, type: !5845, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5849)
!5844 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!5845 = !DISubroutineType(types: !5846)
!5846 = !{!705, !185, !5847}
!5847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5848, size: 64)
!5848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5043)
!5849 = !{!5850, !5851, !5852, !5853, !5854}
!5850 = !DILocalVariable(name: "nr", arg: 1, scope: !5843, file: !5844, line: 166, type: !185)
!5851 = !DILocalVariable(name: "addr", arg: 2, scope: !5843, file: !5844, line: 166, type: !5847)
!5852 = !DILocalVariable(name: "p", scope: !5843, file: !5844, line: 168, type: !4606)
!5853 = !DILocalVariable(name: "mask", scope: !5843, file: !5844, line: 169, type: !185)
!5854 = !DILocalVariable(name: "val", scope: !5843, file: !5844, line: 170, type: !185)
!5855 = !DILocation(line: 166, column: 30, scope: !5843)
!5856 = !DILocation(line: 166, column: 64, scope: !5843)
!5857 = !DILocation(line: 168, column: 2, scope: !5843)
!5858 = !DILocation(line: 168, column: 23, scope: !5843)
!5859 = !DILocation(line: 168, column: 50, scope: !5843)
!5860 = !DILocation(line: 168, column: 57, scope: !5843)
!5861 = !DILocation(line: 168, column: 55, scope: !5843)
!5862 = !DILocation(line: 169, column: 2, scope: !5843)
!5863 = !DILocation(line: 169, column: 16, scope: !5843)
!5864 = !DILocation(line: 169, column: 23, scope: !5843)
!5865 = !DILocation(line: 170, column: 2, scope: !5843)
!5866 = !DILocation(line: 170, column: 16, scope: !5843)
!5867 = !DILocation(line: 170, column: 23, scope: !5843)
!5868 = !DILocation(line: 170, column: 22, scope: !5843)
!5869 = !DILocation(line: 172, column: 12, scope: !5843)
!5870 = !DILocation(line: 172, column: 18, scope: !5843)
!5871 = !DILocation(line: 172, column: 16, scope: !5843)
!5872 = !DILocation(line: 172, column: 10, scope: !5843)
!5873 = !DILocation(line: 172, column: 9, scope: !5843)
!5874 = !DILocation(line: 173, column: 1, scope: !5843)
!5875 = !DILocation(line: 172, column: 2, scope: !5843)
!5876 = distinct !DISubprogram(name: "_test_bit", scope: !5877, file: !5877, line: 139, type: !5845, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5877 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!5878 = !{!5879, !5880}
!5879 = !DILocalVariable(name: "nr", arg: 1, scope: !5876, file: !5877, line: 139, type: !185)
!5880 = !DILocalVariable(name: "addr", arg: 2, scope: !5876, file: !5877, line: 139, type: !5847)
!5881 = !DILocation(line: 139, column: 25, scope: !5876)
!5882 = !DILocation(line: 139, column: 59, scope: !5876)
!5883 = !DILocation(line: 141, column: 25, scope: !5876)
!5884 = !DILocation(line: 141, column: 32, scope: !5876)
!5885 = !DILocation(line: 141, column: 30, scope: !5876)
!5886 = !DILocation(line: 141, column: 2, scope: !5876)
!5887 = !DILocation(line: 142, column: 23, scope: !5876)
!5888 = !DILocation(line: 142, column: 27, scope: !5876)
!5889 = !DILocation(line: 142, column: 9, scope: !5876)
!5890 = !DILocation(line: 142, column: 2, scope: !5876)
!5891 = !DISubprogram(name: "cdev_device_del", scope: !3668, file: !3668, line: 33, type: !5892, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5892 = !DISubroutineType(types: !5893)
!5893 = !{null, !3666, !4001}
!5894 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !5729, file: !5729, line: 66, type: !5730, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5895)
!5895 = !{!5896, !5897}
!5896 = !DILocalVariable(name: "v", arg: 1, scope: !5894, file: !5729, line: 66, type: !5732)
!5897 = !DILocalVariable(name: "size", arg: 2, scope: !5894, file: !5729, line: 66, type: !332)
!5898 = !DILocation(line: 66, column: 73, scope: !5894)
!5899 = !DILocation(line: 66, column: 83, scope: !5894)
!5900 = !DILocation(line: 68, column: 19, scope: !5894)
!5901 = !DILocation(line: 68, column: 22, scope: !5894)
!5902 = !DILocation(line: 68, column: 2, scope: !5894)
!5903 = !DILocation(line: 69, column: 2, scope: !5894)
!5904 = !DILocation(line: 70, column: 1, scope: !5894)
!5905 = distinct !DISubprogram(name: "arch_test_bit", scope: !5746, file: !5746, line: 237, type: !5845, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5906)
!5906 = !{!5907, !5908}
!5907 = !DILocalVariable(name: "nr", arg: 1, scope: !5905, file: !5746, line: 237, type: !185)
!5908 = !DILocalVariable(name: "addr", arg: 2, scope: !5905, file: !5746, line: 237, type: !5847)
!5909 = !DILocation(line: 237, column: 29, scope: !5905)
!5910 = !DILocation(line: 237, column: 63, scope: !5905)
!5911 = !DILocation(line: 239, column: 30, scope: !5905)
!5912 = !DILocation(line: 239, column: 9, scope: !5905)
!5913 = !DILocation(line: 239, column: 54, scope: !5905)
!5914 = !DILocation(line: 239, column: 58, scope: !5905)
!5915 = !DILocation(line: 239, column: 36, scope: !5905)
!5916 = !DILocation(line: 240, column: 26, scope: !5905)
!5917 = !DILocation(line: 240, column: 30, scope: !5905)
!5918 = !DILocation(line: 240, column: 8, scope: !5905)
!5919 = !DILocation(line: 239, column: 2, scope: !5905)
!5920 = distinct !DISubprogram(name: "kasan_check_read", scope: !5770, file: !5770, line: 40, type: !5771, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5921)
!5921 = !{!5922, !5923}
!5922 = !DILocalVariable(name: "p", arg: 1, scope: !5920, file: !5770, line: 40, type: !5732)
!5923 = !DILocalVariable(name: "size", arg: 2, scope: !5920, file: !5770, line: 40, type: !7)
!5924 = !DILocation(line: 40, column: 58, scope: !5920)
!5925 = !DILocation(line: 40, column: 74, scope: !5920)
!5926 = !DILocation(line: 42, column: 2, scope: !5920)
!5927 = distinct !DISubprogram(name: "constant_test_bit", scope: !5746, file: !5746, line: 204, type: !5928, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5930)
!5928 = !DISubroutineType(types: !5929)
!5929 = !{!705, !321, !5847}
!5930 = !{!5931, !5932}
!5931 = !DILocalVariable(name: "nr", arg: 1, scope: !5927, file: !5746, line: 204, type: !321)
!5932 = !DILocalVariable(name: "addr", arg: 2, scope: !5927, file: !5746, line: 204, type: !5847)
!5933 = !DILocation(line: 204, column: 52, scope: !5927)
!5934 = !DILocation(line: 204, column: 86, scope: !5927)
!5935 = !DILocation(line: 206, column: 19, scope: !5927)
!5936 = !DILocation(line: 206, column: 22, scope: !5927)
!5937 = !DILocation(line: 206, column: 15, scope: !5927)
!5938 = !DILocation(line: 207, column: 4, scope: !5927)
!5939 = !DILocation(line: 207, column: 9, scope: !5927)
!5940 = !DILocation(line: 207, column: 12, scope: !5927)
!5941 = !DILocation(line: 206, column: 44, scope: !5927)
!5942 = !DILocation(line: 207, column: 37, scope: !5927)
!5943 = !DILocation(line: 206, column: 2, scope: !5927)
!5944 = distinct !DISubprogram(name: "variable_test_bit", scope: !5746, file: !5746, line: 224, type: !5928, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5945)
!5945 = !{!5946, !5947, !5948}
!5946 = !DILocalVariable(name: "nr", arg: 1, scope: !5944, file: !5746, line: 224, type: !321)
!5947 = !DILocalVariable(name: "addr", arg: 2, scope: !5944, file: !5746, line: 224, type: !5847)
!5948 = !DILocalVariable(name: "oldbit", scope: !5944, file: !5746, line: 226, type: !705)
!5949 = !DILocation(line: 224, column: 52, scope: !5944)
!5950 = !DILocation(line: 224, column: 86, scope: !5944)
!5951 = !DILocation(line: 226, column: 2, scope: !5944)
!5952 = !DILocation(line: 226, column: 7, scope: !5944)
!5953 = !DILocation(line: 231, column: 33, scope: !5944)
!5954 = !DILocation(line: 231, column: 46, scope: !5944)
!5955 = !DILocation(line: 228, column: 2, scope: !5944)
!5956 = !{i64 2148353495, i64 2148353569}
!5957 = !DILocation(line: 233, column: 9, scope: !5944)
!5958 = !DILocation(line: 234, column: 1, scope: !5944)
!5959 = !DILocation(line: 233, column: 2, scope: !5944)
!5960 = !DISubprogram(name: "class_create", scope: !4432, file: !4432, line: 230, type: !5961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{!4641, !198}
!5963 = !DISubprogram(name: "_printk", scope: !5964, file: !5964, line: 153, type: !5965, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5964 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5965 = !DISubroutineType(types: !5966)
!5966 = !{!85, !198, null}
!5967 = distinct !DISubprogram(name: "PTR_ERR", scope: !4821, file: !4821, line: 49, type: !5968, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5970)
!5968 = !DISubroutineType(types: !5969)
!5969 = !{!321, !1623}
!5970 = !{!5971}
!5971 = !DILocalVariable(name: "ptr", arg: 1, scope: !5967, file: !4821, line: 49, type: !1623)
!5972 = !DILocation(line: 49, column: 61, scope: !5967)
!5973 = !DILocation(line: 51, column: 16, scope: !5967)
!5974 = !DILocation(line: 51, column: 9, scope: !5967)
!5975 = !DILocation(line: 51, column: 2, scope: !5967)
!5976 = !DISubprogram(name: "rtc_dev_init", scope: !5182, file: !5182, line: 4, type: !989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
