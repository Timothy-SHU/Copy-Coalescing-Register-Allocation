; ModuleID = 'drivers/leds/led-triggers.c'
source_filename = "drivers/leds/led-triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_write: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_write ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_read: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_set: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_remove: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_remove ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_set_default: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_set_default ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_unregister: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_unregister ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_led_trigger_register: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_led_trigger_register ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_event: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_event ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_blink: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_blink ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_blink_oneshot: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_blink_oneshot ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_register_simple: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_register_simple ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_led_trigger_unregister_simple: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad led_trigger_unregister_simple ; .previous"

%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i64, i64, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, i64, i64, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.led_trigger = type { ptr, ptr, ptr, i32, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
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
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@trigger_list = hidden global %struct.list_head { ptr @trigger_list, ptr @trigger_list }, align 8, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1, !dbg !4557
@triggers_list_lock = internal global %struct.rw_semaphore { %struct.atomic64_t zeroinitializer, %struct.atomic64_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @triggers_list_lock, i64 24), ptr getelementptr (i8, ptr @triggers_list_lock, i64 24) } }, align 8, !dbg !4621
@__UNIQUE_ID___addressable_led_trigger_write287 = internal global ptr @led_trigger_write, section ".discard.addressable", align 8, !dbg !4562
@__UNIQUE_ID___addressable_led_trigger_read288 = internal global ptr @led_trigger_read, section ".discard.addressable", align 8, !dbg !4564
@.str.1 = private unnamed_addr constant [11 x i8] c"TRIGGER=%s\00", align 1, !dbg !4566
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to add trigger attributes\0A\00", align 1, !dbg !4571
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: Error sending uevent\0A\00", align 1, !dbg !4576
@__func__.led_trigger_set = private unnamed_addr constant [16 x i8] c"led_trigger_set\00", align 1, !dbg !4581
@__UNIQUE_ID___addressable_led_trigger_set289 = internal global ptr @led_trigger_set, section ".discard.addressable", align 8, !dbg !4584
@__UNIQUE_ID___addressable_led_trigger_remove290 = internal global ptr @led_trigger_remove, section ".discard.addressable", align 8, !dbg !4586
@__UNIQUE_ID___addressable_led_trigger_set_default291 = internal global ptr @led_trigger_set_default, section ".discard.addressable", align 8, !dbg !4588
@leds_list_lock = external dso_local global %struct.rw_semaphore, align 8
@leds_list = external dso_local global %struct.list_head, align 8
@__UNIQUE_ID___addressable_led_trigger_register292 = internal global ptr @led_trigger_register, section ".discard.addressable", align 8, !dbg !4590
@__UNIQUE_ID___addressable_led_trigger_unregister293 = internal global ptr @led_trigger_unregister, section ".discard.addressable", align 8, !dbg !4592
@.str.4 = private unnamed_addr constant [25 x i8] c"devm_led_trigger_release\00", align 1, !dbg !4594
@__UNIQUE_ID___addressable_devm_led_trigger_register294 = internal global ptr @devm_led_trigger_register, section ".discard.addressable", align 8, !dbg !4599
@__UNIQUE_ID___addressable_led_trigger_event297 = internal global ptr @led_trigger_event, section ".discard.addressable", align 8, !dbg !4601
@__UNIQUE_ID___addressable_led_trigger_blink300 = internal global ptr @led_trigger_blink, section ".discard.addressable", align 8, !dbg !4603
@__UNIQUE_ID___addressable_led_trigger_blink_oneshot301 = internal global ptr @led_trigger_blink_oneshot, section ".discard.addressable", align 8, !dbg !4605
@.str.5 = private unnamed_addr constant [42 x i8] c"\014LED trigger %s failed to register (%d)\0A\00", align 1, !dbg !4607
@.str.6 = private unnamed_addr constant [49 x i8] c"\014LED trigger %s failed to register (no memory)\0A\00", align 1, !dbg !4612
@__UNIQUE_ID___addressable_led_trigger_register_simple302 = internal global ptr @led_trigger_register_simple, section ".discard.addressable", align 8, !dbg !4617
@__UNIQUE_ID___addressable_led_trigger_unregister_simple303 = internal global ptr @led_trigger_unregister_simple, section ".discard.addressable", align 8, !dbg !4619
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !4623
@.str.8 = private unnamed_addr constant [7 x i8] c"[none]\00", align 1, !dbg !4626
@.str.9 = private unnamed_addr constant [8 x i8] c" %s%s%s\00", align 1, !dbg !4629
@.str.10 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !4631
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4634
@.str.12 = private unnamed_addr constant [2 x i8] c"]\00", align 1, !dbg !4637
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !4639
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.14 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4641
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID___addressable_led_trigger_write287, ptr @__UNIQUE_ID___addressable_led_trigger_read288, ptr @__UNIQUE_ID___addressable_led_trigger_set289, ptr @__UNIQUE_ID___addressable_led_trigger_remove290, ptr @__UNIQUE_ID___addressable_led_trigger_set_default291, ptr @__UNIQUE_ID___addressable_led_trigger_register292, ptr @__UNIQUE_ID___addressable_led_trigger_unregister293, ptr @__UNIQUE_ID___addressable_devm_led_trigger_register294, ptr @__UNIQUE_ID___addressable_led_trigger_event297, ptr @__UNIQUE_ID___addressable_led_trigger_blink300, ptr @__UNIQUE_ID___addressable_led_trigger_blink_oneshot301, ptr @__UNIQUE_ID___addressable_led_trigger_register_simple302, ptr @__UNIQUE_ID___addressable_led_trigger_unregister_simple303], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @led_trigger_write(ptr noundef %filp, ptr noundef %kobj, ptr noundef %bin_attr, ptr noundef %buf, i64 noundef %pos, i64 noundef %count) #0 align 16 !dbg !4655 {
entry:
  %filp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %bin_attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %trig = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr5 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !4657, metadata !DIExpression()), !dbg !4676
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4658, metadata !DIExpression()), !dbg !4677
  store ptr %bin_attr, ptr %bin_attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bin_attr.addr, metadata !4659, metadata !DIExpression()), !dbg !4678
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4660, metadata !DIExpression()), !dbg !4679
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4661, metadata !DIExpression()), !dbg !4680
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4662, metadata !DIExpression()), !dbg !4681
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !4682
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4663, metadata !DIExpression()), !dbg !4683
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4684
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4664, metadata !DIExpression()), !dbg !4684
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4684
  store ptr %0, ptr %__mptr, align 8, !dbg !4684
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4684
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4684
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4684
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4685
  %2 = load ptr, ptr %tmp, align 8, !dbg !4684
  store ptr %2, ptr %dev, align 8, !dbg !4683
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #16, !dbg !4686
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !4666, metadata !DIExpression()), !dbg !4687
  %3 = load ptr, ptr %dev, align 8, !dbg !4688
  %call = call ptr @dev_get_drvdata(ptr noundef %3) #17, !dbg !4689
  store ptr %call, ptr %led_cdev, align 8, !dbg !4687
  call void @llvm.lifetime.start.p0(i64 8, ptr %trig) #16, !dbg !4690
  call void @llvm.dbg.declare(metadata ptr %trig, metadata !4667, metadata !DIExpression()), !dbg !4691
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4692
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4668, metadata !DIExpression()), !dbg !4693
  %4 = load i64, ptr %count.addr, align 8, !dbg !4694
  %conv = trunc i64 %4 to i32, !dbg !4694
  store i32 %conv, ptr %ret, align 4, !dbg !4693
  %5 = load ptr, ptr %led_cdev, align 8, !dbg !4695
  %led_access = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 37, !dbg !4696
  call void @mutex_lock(ptr noundef %led_access) #17, !dbg !4697
  %6 = load ptr, ptr %led_cdev, align 8, !dbg !4698
  %call1 = call zeroext i1 @led_sysfs_is_disabled(ptr noundef %6) #17, !dbg !4700
  br i1 %call1, label %if.then, label %if.end, !dbg !4701

if.then:                                          ; preds = %entry
  store i32 -16, ptr %ret, align 4, !dbg !4702
  br label %unlock, !dbg !4704

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !4705
  %call2 = call zeroext i1 @sysfs_streq(ptr noundef %7, ptr noundef @.str) #17, !dbg !4707
  br i1 %call2, label %if.then3, label %if.end4, !dbg !4708

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %led_cdev, align 8, !dbg !4709
  call void @led_trigger_remove(ptr noundef %8) #17, !dbg !4711
  br label %unlock, !dbg !4712

if.end4:                                          ; preds = %if.end
  call void @down_read(ptr noundef @triggers_list_lock) #17, !dbg !4713
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #16, !dbg !4714
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !4669, metadata !DIExpression()), !dbg !4714
  %9 = load ptr, ptr @trigger_list, align 8, !dbg !4714
  store ptr %9, ptr %__mptr5, align 8, !dbg !4714
  %10 = load ptr, ptr %__mptr5, align 8, !dbg !4714
  %add.ptr7 = getelementptr i8, ptr %10, i64 -64, !dbg !4714
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !4714
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #16, !dbg !4715
  %11 = load ptr, ptr %tmp6, align 8, !dbg !4714
  store ptr %11, ptr %trig, align 8, !dbg !4715
  br label %for.cond, !dbg !4715

for.cond:                                         ; preds = %for.inc, %if.end4
  %12 = load ptr, ptr %trig, align 8, !dbg !4716
  %next_trig = getelementptr inbounds %struct.led_trigger, ptr %12, i32 0, i32 7, !dbg !4716
  %cmp = icmp eq ptr %next_trig, @trigger_list, !dbg !4716
  %lnot = xor i1 %cmp, true, !dbg !4716
  br i1 %lnot, label %for.body, label %for.end, !dbg !4715

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !4717
  %14 = load ptr, ptr %trig, align 8, !dbg !4720
  %name = getelementptr inbounds %struct.led_trigger, ptr %14, i32 0, i32 0, !dbg !4721
  %15 = load ptr, ptr %name, align 8, !dbg !4721
  %call9 = call zeroext i1 @sysfs_streq(ptr noundef %13, ptr noundef %15) #17, !dbg !4722
  br i1 %call9, label %land.lhs.true, label %if.end16, !dbg !4723

land.lhs.true:                                    ; preds = %for.body
  %16 = load ptr, ptr %led_cdev, align 8, !dbg !4724
  %17 = load ptr, ptr %trig, align 8, !dbg !4725
  %call11 = call zeroext i1 @trigger_relevant(ptr noundef %16, ptr noundef %17) #17, !dbg !4726
  br i1 %call11, label %if.then13, label %if.end16, !dbg !4727

if.then13:                                        ; preds = %land.lhs.true
  %18 = load ptr, ptr %led_cdev, align 8, !dbg !4728
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %18, i32 0, i32 26, !dbg !4730
  call void @down_write(ptr noundef %trigger_lock) #17, !dbg !4731
  %19 = load ptr, ptr %led_cdev, align 8, !dbg !4732
  %20 = load ptr, ptr %trig, align 8, !dbg !4733
  %call14 = call i32 @led_trigger_set(ptr noundef %19, ptr noundef %20) #17, !dbg !4734
  %21 = load ptr, ptr %led_cdev, align 8, !dbg !4735
  %trigger_lock15 = getelementptr inbounds %struct.led_classdev, ptr %21, i32 0, i32 26, !dbg !4736
  call void @up_write(ptr noundef %trigger_lock15) #17, !dbg !4737
  call void @up_read(ptr noundef @triggers_list_lock) #17, !dbg !4738
  br label %unlock, !dbg !4739

if.end16:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !4740

for.inc:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #16, !dbg !4741
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !4672, metadata !DIExpression()), !dbg !4741
  %22 = load ptr, ptr %trig, align 8, !dbg !4741
  %next_trig18 = getelementptr inbounds %struct.led_trigger, ptr %22, i32 0, i32 7, !dbg !4741
  %next = getelementptr inbounds %struct.list_head, ptr %next_trig18, i32 0, i32 0, !dbg !4741
  %23 = load ptr, ptr %next, align 8, !dbg !4741
  store ptr %23, ptr %__mptr17, align 8, !dbg !4741
  %24 = load ptr, ptr %__mptr17, align 8, !dbg !4741
  %add.ptr20 = getelementptr i8, ptr %24, i64 -64, !dbg !4741
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4741
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #16, !dbg !4716
  %25 = load ptr, ptr %tmp19, align 8, !dbg !4741
  store ptr %25, ptr %trig, align 8, !dbg !4716
  br label %for.cond, !dbg !4716, !llvm.loop !4742

for.end:                                          ; preds = %for.cond
  store i32 -22, ptr %ret, align 4, !dbg !4746
  call void @up_read(ptr noundef @triggers_list_lock) #17, !dbg !4747
  br label %unlock, !dbg !4747

unlock:                                           ; preds = %for.end, %if.then13, %if.then3, %if.then
  call void @llvm.dbg.label(metadata !4675), !dbg !4748
  %26 = load ptr, ptr %led_cdev, align 8, !dbg !4749
  %led_access21 = getelementptr inbounds %struct.led_classdev, ptr %26, i32 0, i32 37, !dbg !4750
  call void @mutex_unlock(ptr noundef %led_access21) #17, !dbg !4751
  %27 = load i32, ptr %ret, align 4, !dbg !4752
  %conv22 = sext i32 %27 to i64, !dbg !4752
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !4753
  call void @llvm.lifetime.end.p0(i64 8, ptr %trig) #16, !dbg !4753
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #16, !dbg !4753
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !4753
  ret i64 %conv22, !dbg !4754
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #3 align 16 !dbg !4755 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4759, metadata !DIExpression()), !dbg !4760
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4761
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !4762
  %1 = load ptr, ptr %driver_data, align 8, !dbg !4762
  ret ptr %1, !dbg !4763
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4764 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @led_sysfs_is_disabled(ptr noundef %led_cdev) #3 align 16 !dbg !4768 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !4772, metadata !DIExpression()), !dbg !4773
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4774
  %flags = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 4, !dbg !4775
  %1 = load i32, ptr %flags, align 4, !dbg !4775
  %conv = sext i32 %1 to i64, !dbg !4774
  %and = and i64 %conv, 131072, !dbg !4776
  %tobool = icmp ne i64 %and, 0, !dbg !4774
  ret i1 %tobool, !dbg !4777
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4778 dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_remove(ptr noundef %led_cdev) #0 align 16 !dbg !4782 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4786
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 26, !dbg !4787
  call void @down_write(ptr noundef %trigger_lock) #17, !dbg !4788
  %1 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4789
  %call = call i32 @led_trigger_set(ptr noundef %1, ptr noundef null) #17, !dbg !4790
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4791
  %trigger_lock1 = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 26, !dbg !4792
  call void @up_write(ptr noundef %trigger_lock1) #17, !dbg !4793
  ret void, !dbg !4794
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4795 dso_local void @down_read(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @trigger_relevant(ptr noundef %led_cdev, ptr noundef %trig) #3 align 16 !dbg !4799 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %trig.addr = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !4803, metadata !DIExpression()), !dbg !4805
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !4804, metadata !DIExpression()), !dbg !4806
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !4807
  %trigger_type = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 4, !dbg !4808
  %1 = load ptr, ptr %trigger_type, align 8, !dbg !4808
  %tobool = icmp ne ptr %1, null, !dbg !4807
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !4809

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %trig.addr, align 8, !dbg !4810
  %trigger_type1 = getelementptr inbounds %struct.led_trigger, ptr %2, i32 0, i32 4, !dbg !4811
  %3 = load ptr, ptr %trigger_type1, align 8, !dbg !4811
  %4 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4812
  %trigger_type2 = getelementptr inbounds %struct.led_classdev, ptr %4, i32 0, i32 31, !dbg !4813
  %5 = load ptr, ptr %trigger_type2, align 8, !dbg !4813
  %cmp = icmp eq ptr %3, %5, !dbg !4814
  br label %lor.end, !dbg !4809

lor.end:                                          ; preds = %lor.rhs, %entry
  %6 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  ret i1 %6, !dbg !4815
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4816 dso_local void @down_write(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @led_trigger_set(ptr noundef %led_cdev, ptr noundef %trig) #0 align 16 !dbg !4817 {
entry:
  %retval = alloca i32, align 4
  %led_cdev.addr = alloca ptr, align 8
  %trig.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %envp = alloca [2 x ptr], align 16
  %name = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !4821, metadata !DIExpression()), !dbg !4830
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !4822, metadata !DIExpression()), !dbg !4831
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #16, !dbg !4832
  call void @llvm.dbg.declare(metadata ptr %event, metadata !4823, metadata !DIExpression()), !dbg !4833
  store ptr null, ptr %event, align 8, !dbg !4833
  call void @llvm.lifetime.start.p0(i64 16, ptr %envp) #16, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %envp, metadata !4824, metadata !DIExpression()), !dbg !4835
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #16, !dbg !4836
  call void @llvm.dbg.declare(metadata ptr %name, metadata !4826, metadata !DIExpression()), !dbg !4837
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !4838
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4827, metadata !DIExpression()), !dbg !4839
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4840
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 27, !dbg !4842
  %1 = load ptr, ptr %trigger, align 8, !dbg !4842
  %tobool = icmp ne ptr %1, null, !dbg !4840
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !4843

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %trig.addr, align 8, !dbg !4844
  %tobool1 = icmp ne ptr %2, null, !dbg !4844
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4845

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !4846
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4846

if.end:                                           ; preds = %land.lhs.true, %entry
  %3 = load ptr, ptr %trig.addr, align 8, !dbg !4847
  %tobool2 = icmp ne ptr %3, null, !dbg !4847
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4847

cond.true:                                        ; preds = %if.end
  %4 = load ptr, ptr %trig.addr, align 8, !dbg !4848
  %name3 = getelementptr inbounds %struct.led_trigger, ptr %4, i32 0, i32 0, !dbg !4849
  %5 = load ptr, ptr %name3, align 8, !dbg !4849
  br label %cond.end, !dbg !4847

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !4847

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ @.str, %cond.false ], !dbg !4847
  store ptr %cond, ptr %name, align 8, !dbg !4850
  %6 = load ptr, ptr %name, align 8, !dbg !4851
  %call = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef @.str.1, ptr noundef %6) #17, !dbg !4852
  store ptr %call, ptr %event, align 8, !dbg !4853
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4854
  %trigger4 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 27, !dbg !4856
  %8 = load ptr, ptr %trigger4, align 8, !dbg !4856
  %tobool5 = icmp ne ptr %8, null, !dbg !4854
  br i1 %tobool5, label %if.then6, label %if.end20, !dbg !4857

if.then6:                                         ; preds = %cond.end
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4858
  %trigger7 = getelementptr inbounds %struct.led_classdev, ptr %9, i32 0, i32 27, !dbg !4860
  %10 = load ptr, ptr %trigger7, align 8, !dbg !4860
  %leddev_list_lock = getelementptr inbounds %struct.led_trigger, ptr %10, i32 0, i32 5, !dbg !4861
  call void @spin_lock(ptr noundef %leddev_list_lock) #17, !dbg !4862
  %11 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4863
  %trig_list = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 28, !dbg !4864
  call void @list_del_rcu(ptr noundef %trig_list) #17, !dbg !4865
  %12 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4866
  %trigger8 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 27, !dbg !4867
  %13 = load ptr, ptr %trigger8, align 8, !dbg !4867
  %leddev_list_lock9 = getelementptr inbounds %struct.led_trigger, ptr %13, i32 0, i32 5, !dbg !4868
  call void @spin_unlock(ptr noundef %leddev_list_lock9) #17, !dbg !4869
  call void @synchronize_rcu() #17, !dbg !4870
  %14 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4871
  %set_brightness_work = getelementptr inbounds %struct.led_classdev, ptr %14, i32 0, i32 22, !dbg !4872
  %call10 = call zeroext i1 @cancel_work_sync(ptr noundef %set_brightness_work) #17, !dbg !4873
  %15 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4874
  call void @led_stop_software_blink(ptr noundef %15) #17, !dbg !4875
  %16 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4876
  %dev = getelementptr inbounds %struct.led_classdev, ptr %16, i32 0, i32 12, !dbg !4877
  %17 = load ptr, ptr %dev, align 8, !dbg !4877
  %18 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4878
  %trigger11 = getelementptr inbounds %struct.led_classdev, ptr %18, i32 0, i32 27, !dbg !4879
  %19 = load ptr, ptr %trigger11, align 8, !dbg !4879
  %groups = getelementptr inbounds %struct.led_trigger, ptr %19, i32 0, i32 8, !dbg !4880
  %20 = load ptr, ptr %groups, align 8, !dbg !4880
  call void @device_remove_groups(ptr noundef %17, ptr noundef %20) #17, !dbg !4881
  %21 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4882
  %trigger12 = getelementptr inbounds %struct.led_classdev, ptr %21, i32 0, i32 27, !dbg !4884
  %22 = load ptr, ptr %trigger12, align 8, !dbg !4884
  %deactivate = getelementptr inbounds %struct.led_trigger, ptr %22, i32 0, i32 2, !dbg !4885
  %23 = load ptr, ptr %deactivate, align 8, !dbg !4885
  %tobool13 = icmp ne ptr %23, null, !dbg !4882
  br i1 %tobool13, label %if.then14, label %if.end17, !dbg !4886

if.then14:                                        ; preds = %if.then6
  %24 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4887
  %trigger15 = getelementptr inbounds %struct.led_classdev, ptr %24, i32 0, i32 27, !dbg !4888
  %25 = load ptr, ptr %trigger15, align 8, !dbg !4888
  %deactivate16 = getelementptr inbounds %struct.led_trigger, ptr %25, i32 0, i32 2, !dbg !4889
  %26 = load ptr, ptr %deactivate16, align 8, !dbg !4889
  %27 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4890
  call void %26(ptr noundef %27) #17, !dbg !4887
  br label %if.end17, !dbg !4887

if.end17:                                         ; preds = %if.then14, %if.then6
  %28 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4891
  %trigger18 = getelementptr inbounds %struct.led_classdev, ptr %28, i32 0, i32 27, !dbg !4892
  store ptr null, ptr %trigger18, align 8, !dbg !4893
  %29 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4894
  %trigger_data = getelementptr inbounds %struct.led_classdev, ptr %29, i32 0, i32 29, !dbg !4895
  store ptr null, ptr %trigger_data, align 8, !dbg !4896
  %30 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4897
  %activated = getelementptr inbounds %struct.led_classdev, ptr %30, i32 0, i32 30, !dbg !4898
  store i8 0, ptr %activated, align 8, !dbg !4899
  %31 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4900
  %flags = getelementptr inbounds %struct.led_classdev, ptr %31, i32 0, i32 4, !dbg !4901
  %32 = load i32, ptr %flags, align 4, !dbg !4902
  %conv = sext i32 %32 to i64, !dbg !4902
  %and = and i64 %conv, -8388609, !dbg !4902
  %conv19 = trunc i64 %and to i32, !dbg !4902
  store i32 %conv19, ptr %flags, align 4, !dbg !4902
  %33 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4903
  call void @led_set_brightness(ptr noundef %33, i32 noundef 0) #17, !dbg !4904
  br label %if.end20, !dbg !4905

if.end20:                                         ; preds = %if.end17, %cond.end
  %34 = load ptr, ptr %trig.addr, align 8, !dbg !4906
  %tobool21 = icmp ne ptr %34, null, !dbg !4906
  br i1 %tobool21, label %if.then22, label %if.end44, !dbg !4908

if.then22:                                        ; preds = %if.end20
  %35 = load ptr, ptr %trig.addr, align 8, !dbg !4909
  %leddev_list_lock23 = getelementptr inbounds %struct.led_trigger, ptr %35, i32 0, i32 5, !dbg !4911
  call void @spin_lock(ptr noundef %leddev_list_lock23) #17, !dbg !4912
  %36 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4913
  %trig_list24 = getelementptr inbounds %struct.led_classdev, ptr %36, i32 0, i32 28, !dbg !4914
  %37 = load ptr, ptr %trig.addr, align 8, !dbg !4915
  %led_cdevs = getelementptr inbounds %struct.led_trigger, ptr %37, i32 0, i32 6, !dbg !4916
  call void @list_add_tail_rcu(ptr noundef %trig_list24, ptr noundef %led_cdevs) #17, !dbg !4917
  %38 = load ptr, ptr %trig.addr, align 8, !dbg !4918
  %leddev_list_lock25 = getelementptr inbounds %struct.led_trigger, ptr %38, i32 0, i32 5, !dbg !4919
  call void @spin_unlock(ptr noundef %leddev_list_lock25) #17, !dbg !4920
  %39 = load ptr, ptr %trig.addr, align 8, !dbg !4921
  %40 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4922
  %trigger26 = getelementptr inbounds %struct.led_classdev, ptr %40, i32 0, i32 27, !dbg !4923
  store ptr %39, ptr %trigger26, align 8, !dbg !4924
  call void @synchronize_rcu() #17, !dbg !4925
  %41 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4926
  %set_brightness_work27 = getelementptr inbounds %struct.led_classdev, ptr %41, i32 0, i32 22, !dbg !4927
  %call28 = call zeroext i1 @flush_work(ptr noundef %set_brightness_work27) #17, !dbg !4928
  store i32 0, ptr %ret, align 4, !dbg !4929
  %42 = load ptr, ptr %trig.addr, align 8, !dbg !4930
  %activate = getelementptr inbounds %struct.led_trigger, ptr %42, i32 0, i32 1, !dbg !4932
  %43 = load ptr, ptr %activate, align 8, !dbg !4932
  %tobool29 = icmp ne ptr %43, null, !dbg !4930
  br i1 %tobool29, label %if.then30, label %if.else, !dbg !4933

if.then30:                                        ; preds = %if.then22
  %44 = load ptr, ptr %trig.addr, align 8, !dbg !4934
  %activate31 = getelementptr inbounds %struct.led_trigger, ptr %44, i32 0, i32 1, !dbg !4935
  %45 = load ptr, ptr %activate31, align 8, !dbg !4935
  %46 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4936
  %call32 = call i32 %45(ptr noundef %46) #17, !dbg !4934
  store i32 %call32, ptr %ret, align 4, !dbg !4937
  br label %if.end33, !dbg !4938

if.else:                                          ; preds = %if.then22
  %47 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4939
  %48 = load ptr, ptr %trig.addr, align 8, !dbg !4940
  %brightness = getelementptr inbounds %struct.led_trigger, ptr %48, i32 0, i32 3, !dbg !4941
  %49 = load i32, ptr %brightness, align 8, !dbg !4941
  call void @led_set_brightness(ptr noundef %47, i32 noundef %49) #17, !dbg !4942
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then30
  %50 = load i32, ptr %ret, align 4, !dbg !4943
  %tobool34 = icmp ne i32 %50, 0, !dbg !4943
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !4945

if.then35:                                        ; preds = %if.end33
  br label %err_activate, !dbg !4946

if.end36:                                         ; preds = %if.end33
  %51 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4947
  %dev37 = getelementptr inbounds %struct.led_classdev, ptr %51, i32 0, i32 12, !dbg !4948
  %52 = load ptr, ptr %dev37, align 8, !dbg !4948
  %53 = load ptr, ptr %trig.addr, align 8, !dbg !4949
  %groups38 = getelementptr inbounds %struct.led_trigger, ptr %53, i32 0, i32 8, !dbg !4950
  %54 = load ptr, ptr %groups38, align 8, !dbg !4950
  %call39 = call i32 @device_add_groups(ptr noundef %52, ptr noundef %54) #17, !dbg !4951
  store i32 %call39, ptr %ret, align 4, !dbg !4952
  %55 = load i32, ptr %ret, align 4, !dbg !4953
  %tobool40 = icmp ne i32 %55, 0, !dbg !4953
  br i1 %tobool40, label %if.then41, label %if.end43, !dbg !4955

if.then41:                                        ; preds = %if.end36
  br label %do.body, !dbg !4956

do.body:                                          ; preds = %if.then41
  br label %do.cond, !dbg !4959

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4959

do.end:                                           ; preds = %do.cond
  %56 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4956
  %dev42 = getelementptr inbounds %struct.led_classdev, ptr %56, i32 0, i32 12, !dbg !4956
  %57 = load ptr, ptr %dev42, align 8, !dbg !4956
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef @.str.2) #18, !dbg !4956
  br label %err_add_groups, !dbg !4961

if.end43:                                         ; preds = %if.end36
  br label %if.end44, !dbg !4962

if.end44:                                         ; preds = %if.end43, %if.end20
  %58 = load ptr, ptr %event, align 8, !dbg !4963
  %tobool45 = icmp ne ptr %58, null, !dbg !4963
  br i1 %tobool45, label %if.then46, label %if.end57, !dbg !4965

if.then46:                                        ; preds = %if.end44
  %59 = load ptr, ptr %event, align 8, !dbg !4966
  %arrayidx = getelementptr [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !4968
  store ptr %59, ptr %arrayidx, align 16, !dbg !4969
  %arrayidx47 = getelementptr [2 x ptr], ptr %envp, i64 0, i64 1, !dbg !4970
  store ptr null, ptr %arrayidx47, align 8, !dbg !4971
  %60 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4972
  %dev48 = getelementptr inbounds %struct.led_classdev, ptr %60, i32 0, i32 12, !dbg !4974
  %61 = load ptr, ptr %dev48, align 8, !dbg !4974
  %kobj = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 0, !dbg !4975
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !4976
  %call49 = call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef 2, ptr noundef %arraydecay) #17, !dbg !4977
  %tobool50 = icmp ne i32 %call49, 0, !dbg !4977
  br i1 %tobool50, label %if.then51, label %if.end56, !dbg !4978

if.then51:                                        ; preds = %if.then46
  br label %do.body52, !dbg !4979

do.body52:                                        ; preds = %if.then51
  br label %do.cond53, !dbg !4981

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !4981

do.end54:                                         ; preds = %do.cond53
  %62 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4979
  %dev55 = getelementptr inbounds %struct.led_classdev, ptr %62, i32 0, i32 12, !dbg !4979
  %63 = load ptr, ptr %dev55, align 8, !dbg !4979
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef @.str.3, ptr noundef @__func__.led_trigger_set) #18, !dbg !4979
  br label %if.end56, !dbg !4983

if.end56:                                         ; preds = %do.end54, %if.then46
  %64 = load ptr, ptr %event, align 8, !dbg !4984
  call void @kfree(ptr noundef %64) #17, !dbg !4985
  br label %if.end57, !dbg !4986

if.end57:                                         ; preds = %if.end56, %if.end44
  store i32 0, ptr %retval, align 4, !dbg !4987
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4987

err_add_groups:                                   ; preds = %do.end
  call void @llvm.dbg.label(metadata !4828), !dbg !4988
  %65 = load ptr, ptr %trig.addr, align 8, !dbg !4989
  %deactivate58 = getelementptr inbounds %struct.led_trigger, ptr %65, i32 0, i32 2, !dbg !4991
  %66 = load ptr, ptr %deactivate58, align 8, !dbg !4991
  %tobool59 = icmp ne ptr %66, null, !dbg !4989
  br i1 %tobool59, label %if.then60, label %if.end62, !dbg !4992

if.then60:                                        ; preds = %err_add_groups
  %67 = load ptr, ptr %trig.addr, align 8, !dbg !4993
  %deactivate61 = getelementptr inbounds %struct.led_trigger, ptr %67, i32 0, i32 2, !dbg !4994
  %68 = load ptr, ptr %deactivate61, align 8, !dbg !4994
  %69 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4995
  call void %68(ptr noundef %69) #17, !dbg !4993
  br label %if.end62, !dbg !4993

if.end62:                                         ; preds = %if.then60, %err_add_groups
  br label %err_activate, !dbg !4991

err_activate:                                     ; preds = %if.end62, %if.then35
  call void @llvm.dbg.label(metadata !4829), !dbg !4996
  %70 = load ptr, ptr %led_cdev.addr, align 8, !dbg !4997
  %trigger63 = getelementptr inbounds %struct.led_classdev, ptr %70, i32 0, i32 27, !dbg !4998
  %71 = load ptr, ptr %trigger63, align 8, !dbg !4998
  %leddev_list_lock64 = getelementptr inbounds %struct.led_trigger, ptr %71, i32 0, i32 5, !dbg !4999
  call void @spin_lock(ptr noundef %leddev_list_lock64) #17, !dbg !5000
  %72 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5001
  %trig_list65 = getelementptr inbounds %struct.led_classdev, ptr %72, i32 0, i32 28, !dbg !5002
  call void @list_del_rcu(ptr noundef %trig_list65) #17, !dbg !5003
  %73 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5004
  %trigger66 = getelementptr inbounds %struct.led_classdev, ptr %73, i32 0, i32 27, !dbg !5005
  %74 = load ptr, ptr %trigger66, align 8, !dbg !5005
  %leddev_list_lock67 = getelementptr inbounds %struct.led_trigger, ptr %74, i32 0, i32 5, !dbg !5006
  call void @spin_unlock(ptr noundef %leddev_list_lock67) #17, !dbg !5007
  call void @synchronize_rcu() #17, !dbg !5008
  %75 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5009
  %trigger68 = getelementptr inbounds %struct.led_classdev, ptr %75, i32 0, i32 27, !dbg !5010
  store ptr null, ptr %trigger68, align 8, !dbg !5011
  %76 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5012
  %trigger_data69 = getelementptr inbounds %struct.led_classdev, ptr %76, i32 0, i32 29, !dbg !5013
  store ptr null, ptr %trigger_data69, align 8, !dbg !5014
  %77 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5015
  call void @led_set_brightness(ptr noundef %77, i32 noundef 0) #17, !dbg !5016
  %78 = load ptr, ptr %event, align 8, !dbg !5017
  call void @kfree(ptr noundef %78) #17, !dbg !5018
  %79 = load i32, ptr %ret, align 4, !dbg !5019
  store i32 %79, ptr %retval, align 4, !dbg !5020
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5020

cleanup:                                          ; preds = %err_activate, %if.end57, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #16, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 16, ptr %envp) #16, !dbg !5021
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #16, !dbg !5021
  %80 = load i32, ptr %retval, align 4, !dbg !5021
  ret i32 %80, !dbg !5021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5022 dso_local void @up_write(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5023 dso_local void @up_read(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5024 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @led_trigger_read(ptr noundef %filp, ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %pos, i64 noundef %count) #0 align 16 !dbg !5025 {
entry:
  %retval = alloca i64, align 8
  %filp.addr = alloca ptr, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %pos.addr = alloca i64, align 8
  %count.addr = alloca i64, align 8
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %data = alloca ptr, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %filp, ptr %filp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %filp.addr, metadata !5027, metadata !DIExpression()), !dbg !5039
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5028, metadata !DIExpression()), !dbg !5040
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5029, metadata !DIExpression()), !dbg !5041
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5030, metadata !DIExpression()), !dbg !5042
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5031, metadata !DIExpression()), !dbg !5043
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5032, metadata !DIExpression()), !dbg !5044
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !5045
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5033, metadata !DIExpression()), !dbg !5046
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5047
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5034, metadata !DIExpression()), !dbg !5047
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5047
  store ptr %0, ptr %__mptr, align 8, !dbg !5047
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5047
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5047
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5047
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5048
  %2 = load ptr, ptr %tmp, align 8, !dbg !5047
  store ptr %2, ptr %dev, align 8, !dbg !5046
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #16, !dbg !5049
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !5036, metadata !DIExpression()), !dbg !5050
  %3 = load ptr, ptr %dev, align 8, !dbg !5051
  %call = call ptr @dev_get_drvdata(ptr noundef %3) #17, !dbg !5052
  store ptr %call, ptr %led_cdev, align 8, !dbg !5050
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #16, !dbg !5053
  call void @llvm.dbg.declare(metadata ptr %data, metadata !5037, metadata !DIExpression()), !dbg !5054
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !5055
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5038, metadata !DIExpression()), !dbg !5056
  call void @down_read(ptr noundef @triggers_list_lock) #17, !dbg !5057
  %4 = load ptr, ptr %led_cdev, align 8, !dbg !5058
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %4, i32 0, i32 26, !dbg !5059
  call void @down_read(ptr noundef %trigger_lock) #17, !dbg !5060
  %5 = load ptr, ptr %led_cdev, align 8, !dbg !5061
  %call1 = call i32 @led_trigger_format(ptr noundef null, i64 noundef 0, ptr noundef %5) #17, !dbg !5062
  store i32 %call1, ptr %len, align 4, !dbg !5063
  %6 = load i32, ptr %len, align 4, !dbg !5064
  %add = add i32 %6, 1, !dbg !5065
  %conv = sext i32 %add to i64, !dbg !5064
  %call2 = call noalias ptr @kvmalloc(i64 noundef %conv, i32 noundef 3264) #19, !dbg !5066
  store ptr %call2, ptr %data, align 8, !dbg !5067
  %7 = load ptr, ptr %data, align 8, !dbg !5068
  %tobool = icmp ne ptr %7, null, !dbg !5068
  br i1 %tobool, label %if.end, label %if.then, !dbg !5070

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %led_cdev, align 8, !dbg !5071
  %trigger_lock3 = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 26, !dbg !5073
  call void @up_read(ptr noundef %trigger_lock3) #17, !dbg !5074
  call void @up_read(ptr noundef @triggers_list_lock) #17, !dbg !5075
  store i64 -12, ptr %retval, align 8, !dbg !5076
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5076

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %data, align 8, !dbg !5077
  %10 = load i32, ptr %len, align 4, !dbg !5078
  %add4 = add i32 %10, 1, !dbg !5079
  %conv5 = sext i32 %add4 to i64, !dbg !5078
  %11 = load ptr, ptr %led_cdev, align 8, !dbg !5080
  %call6 = call i32 @led_trigger_format(ptr noundef %9, i64 noundef %conv5, ptr noundef %11) #17, !dbg !5081
  store i32 %call6, ptr %len, align 4, !dbg !5082
  %12 = load ptr, ptr %led_cdev, align 8, !dbg !5083
  %trigger_lock7 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 26, !dbg !5084
  call void @up_read(ptr noundef %trigger_lock7) #17, !dbg !5085
  call void @up_read(ptr noundef @triggers_list_lock) #17, !dbg !5086
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !5087
  %14 = load i64, ptr %count.addr, align 8, !dbg !5088
  %15 = load ptr, ptr %data, align 8, !dbg !5089
  %16 = load i32, ptr %len, align 4, !dbg !5090
  %conv8 = sext i32 %16 to i64, !dbg !5090
  %call9 = call i64 @memory_read_from_buffer(ptr noundef %13, i64 noundef %14, ptr noundef %pos.addr, ptr noundef %15, i64 noundef %conv8) #17, !dbg !5091
  %conv10 = trunc i64 %call9 to i32, !dbg !5091
  store i32 %conv10, ptr %len, align 4, !dbg !5092
  %17 = load ptr, ptr %data, align 8, !dbg !5093
  call void @kvfree(ptr noundef %17) #17, !dbg !5094
  %18 = load i32, ptr %len, align 4, !dbg !5095
  %conv11 = sext i32 %18 to i64, !dbg !5095
  store i64 %conv11, ptr %retval, align 8, !dbg !5096
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5096

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #16, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #16, !dbg !5097
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !5097
  %19 = load i64, ptr %retval, align 8, !dbg !5097
  ret i64 %19, !dbg !5097
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_trigger_format(ptr noundef %buf, i64 noundef %size, ptr noundef %led_cdev) #0 align 16 !dbg !5098 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %led_cdev.addr = alloca ptr, align 8
  %trig = alloca ptr, align 8
  %len = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %hit = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr18 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5102, metadata !DIExpression()), !dbg !5115
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5103, metadata !DIExpression()), !dbg !5116
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !5104, metadata !DIExpression()), !dbg !5117
  call void @llvm.lifetime.start.p0(i64 8, ptr %trig) #16, !dbg !5118
  call void @llvm.dbg.declare(metadata ptr %trig, metadata !5105, metadata !DIExpression()), !dbg !5119
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #16, !dbg !5120
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5106, metadata !DIExpression()), !dbg !5121
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5122
  %1 = load i64, ptr %size.addr, align 8, !dbg !5123
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5124
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 27, !dbg !5125
  %3 = load ptr, ptr %trigger, align 8, !dbg !5125
  %tobool = icmp ne ptr %3, null, !dbg !5124
  %4 = zext i1 %tobool to i64, !dbg !5124
  %cond = select i1 %tobool, ptr @.str, ptr @.str.8, !dbg !5124
  %call = call i32 (ptr, i64, ptr, ...) @led_trigger_snprintf(ptr noundef %0, i64 noundef %1, ptr noundef @.str.7, ptr noundef %cond) #17, !dbg !5126
  store i32 %call, ptr %len, align 4, !dbg !5121
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5127
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5107, metadata !DIExpression()), !dbg !5127
  %5 = load ptr, ptr @trigger_list, align 8, !dbg !5127
  store ptr %5, ptr %__mptr, align 8, !dbg !5127
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5127
  %add.ptr = getelementptr i8, ptr %6, i64 -64, !dbg !5127
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5128
  %7 = load ptr, ptr %tmp, align 8, !dbg !5127
  store ptr %7, ptr %trig, align 8, !dbg !5128
  br label %for.cond, !dbg !5128

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %trig, align 8, !dbg !5129
  %next_trig = getelementptr inbounds %struct.led_trigger, ptr %8, i32 0, i32 7, !dbg !5129
  %cmp = icmp eq ptr %next_trig, @trigger_list, !dbg !5129
  %lnot = xor i1 %cmp, true, !dbg !5129
  br i1 %lnot, label %for.body, label %for.end, !dbg !5128

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %hit) #16, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %hit, metadata !5110, metadata !DIExpression()), !dbg !5131
  %9 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5132
  %10 = load ptr, ptr %trig, align 8, !dbg !5134
  %call1 = call zeroext i1 @trigger_relevant(ptr noundef %9, ptr noundef %10) #17, !dbg !5135
  br i1 %call1, label %if.end, label %if.then, !dbg !5136

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5137

if.end:                                           ; preds = %for.body
  %11 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5138
  %trigger2 = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 27, !dbg !5139
  %12 = load ptr, ptr %trigger2, align 8, !dbg !5139
  %tobool3 = icmp ne ptr %12, null, !dbg !5138
  br i1 %tobool3, label %land.rhs, label %land.end, !dbg !5140

land.rhs:                                         ; preds = %if.end
  %13 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5141
  %trigger4 = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 27, !dbg !5142
  %14 = load ptr, ptr %trigger4, align 8, !dbg !5142
  %name = getelementptr inbounds %struct.led_trigger, ptr %14, i32 0, i32 0, !dbg !5143
  %15 = load ptr, ptr %name, align 8, !dbg !5143
  %16 = load ptr, ptr %trig, align 8, !dbg !5144
  %name5 = getelementptr inbounds %struct.led_trigger, ptr %16, i32 0, i32 0, !dbg !5145
  %17 = load ptr, ptr %name5, align 8, !dbg !5145
  %call6 = call i32 @strcmp(ptr noundef %15, ptr noundef %17) #17, !dbg !5146
  %tobool7 = icmp ne i32 %call6, 0, !dbg !5147
  %lnot8 = xor i1 %tobool7, true, !dbg !5147
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end
  %18 = phi i1 [ false, %if.end ], [ %lnot8, %land.rhs ], !dbg !5148
  %frombool = zext i1 %18 to i8, !dbg !5149
  store i8 %frombool, ptr %hit, align 1, !dbg !5149
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !5150
  %20 = load i32, ptr %len, align 4, !dbg !5151
  %idx.ext = sext i32 %20 to i64, !dbg !5152
  %add.ptr9 = getelementptr i8, ptr %19, i64 %idx.ext, !dbg !5152
  %21 = load i64, ptr %size.addr, align 8, !dbg !5153
  %22 = load i32, ptr %len, align 4, !dbg !5154
  %conv = sext i32 %22 to i64, !dbg !5154
  %sub = sub i64 %21, %conv, !dbg !5155
  %23 = load i8, ptr %hit, align 1, !dbg !5156, !range !5157, !noundef !901
  %tobool10 = trunc i8 %23 to i1, !dbg !5156
  %24 = zext i1 %tobool10 to i64, !dbg !5156
  %cond12 = select i1 %tobool10, ptr @.str.10, ptr @.str.11, !dbg !5156
  %25 = load ptr, ptr %trig, align 8, !dbg !5158
  %name13 = getelementptr inbounds %struct.led_trigger, ptr %25, i32 0, i32 0, !dbg !5159
  %26 = load ptr, ptr %name13, align 8, !dbg !5159
  %27 = load i8, ptr %hit, align 1, !dbg !5160, !range !5157, !noundef !901
  %tobool14 = trunc i8 %27 to i1, !dbg !5160
  %28 = zext i1 %tobool14 to i64, !dbg !5160
  %cond16 = select i1 %tobool14, ptr @.str.12, ptr @.str.11, !dbg !5160
  %call17 = call i32 (ptr, i64, ptr, ...) @led_trigger_snprintf(ptr noundef %add.ptr9, i64 noundef %sub, ptr noundef @.str.9, ptr noundef %cond12, ptr noundef %26, ptr noundef %cond16) #17, !dbg !5161
  %29 = load i32, ptr %len, align 4, !dbg !5162
  %add = add i32 %29, %call17, !dbg !5162
  store i32 %add, ptr %len, align 4, !dbg !5162
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5163
  br label %cleanup, !dbg !5163

cleanup:                                          ; preds = %land.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %hit) #16, !dbg !5163
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !5164

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #16, !dbg !5165
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !5113, metadata !DIExpression()), !dbg !5165
  %30 = load ptr, ptr %trig, align 8, !dbg !5165
  %next_trig19 = getelementptr inbounds %struct.led_trigger, ptr %30, i32 0, i32 7, !dbg !5165
  %next = getelementptr inbounds %struct.list_head, ptr %next_trig19, i32 0, i32 0, !dbg !5165
  %31 = load ptr, ptr %next, align 8, !dbg !5165
  store ptr %31, ptr %__mptr18, align 8, !dbg !5165
  %32 = load ptr, ptr %__mptr18, align 8, !dbg !5165
  %add.ptr21 = getelementptr i8, ptr %32, i64 -64, !dbg !5165
  store ptr %add.ptr21, ptr %tmp20, align 8, !dbg !5165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #16, !dbg !5129
  %33 = load ptr, ptr %tmp20, align 8, !dbg !5165
  store ptr %33, ptr %trig, align 8, !dbg !5129
  br label %for.cond, !dbg !5129, !llvm.loop !5166

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %buf.addr, align 8, !dbg !5168
  %35 = load i32, ptr %len, align 4, !dbg !5169
  %idx.ext22 = sext i32 %35 to i64, !dbg !5170
  %add.ptr23 = getelementptr i8, ptr %34, i64 %idx.ext22, !dbg !5170
  %36 = load i64, ptr %size.addr, align 8, !dbg !5171
  %37 = load i32, ptr %len, align 4, !dbg !5172
  %conv24 = sext i32 %37 to i64, !dbg !5172
  %sub25 = sub i64 %36, %conv24, !dbg !5173
  %call26 = call i32 (ptr, i64, ptr, ...) @led_trigger_snprintf(ptr noundef %add.ptr23, i64 noundef %sub25, ptr noundef @.str.13) #17, !dbg !5174
  %38 = load i32, ptr %len, align 4, !dbg !5175
  %add27 = add i32 %38, %call26, !dbg !5175
  store i32 %add27, ptr %len, align 4, !dbg !5175
  %39 = load i32, ptr %len, align 4, !dbg !5176
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #16, !dbg !5177
  call void @llvm.lifetime.end.p0(i64 8, ptr %trig) #16, !dbg !5177
  ret i32 %39, !dbg !5178

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kvmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5179 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5183, metadata !DIExpression()), !dbg !5185
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5184, metadata !DIExpression()), !dbg !5186
  %0 = load i64, ptr %size.addr, align 8, !dbg !5187
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5188
  %call = call noalias ptr @kvmalloc_node(i64 noundef %0, i32 noundef %1, i32 noundef -1) #19, !dbg !5189
  ret ptr %call, !dbg !5190
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5191 dso_local i64 @memory_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5194 dso_local void @kvfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5197 dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !5201 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5206, metadata !DIExpression()), !dbg !5207
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5208
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5208
  call void @_raw_spin_lock(ptr noundef %1) #17, !dbg !5208
  ret void, !dbg !5209
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #3 align 16 !dbg !5210 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5215, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5217
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5218
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5219
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5220
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !5221
  ret void, !dbg !5222
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !5223 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5225, metadata !DIExpression()), !dbg !5226
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5227
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5227
  call void @_raw_spin_unlock(ptr noundef %1) #17, !dbg !5227
  ret void, !dbg !5228
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5229 dso_local void @synchronize_rcu() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5231 dso_local zeroext i1 @cancel_work_sync(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5234 dso_local void @led_stop_software_blink(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5236 dso_local void @device_remove_groups(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5239 dso_local void @led_set_brightness(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5242 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5246, metadata !DIExpression()), !dbg !5248
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5247, metadata !DIExpression()), !dbg !5249
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5250
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5251
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5252
  %2 = load ptr, ptr %prev, align 8, !dbg !5252
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5253
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !5254
  ret void, !dbg !5255
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5256 dso_local zeroext i1 @flush_work(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5257 dso_local i32 @device_add_groups(ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5260 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5264 dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5268 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_set_default(ptr noundef %led_cdev) #0 align 16 !dbg !5269 {
entry:
  %led_cdev.addr = alloca ptr, align 8
  %trig = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %led_cdev, ptr %led_cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %led_cdev.addr, metadata !5271, metadata !DIExpression()), !dbg !5279
  call void @llvm.lifetime.start.p0(i64 8, ptr %trig) #16, !dbg !5280
  call void @llvm.dbg.declare(metadata ptr %trig, metadata !5272, metadata !DIExpression()), !dbg !5281
  %0 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5282
  %default_trigger = getelementptr inbounds %struct.led_classdev, ptr %0, i32 0, i32 15, !dbg !5284
  %1 = load ptr, ptr %default_trigger, align 8, !dbg !5284
  %tobool = icmp ne ptr %1, null, !dbg !5282
  br i1 %tobool, label %if.end, label %if.then, !dbg !5285

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5286

if.end:                                           ; preds = %entry
  call void @down_read(ptr noundef @triggers_list_lock) #17, !dbg !5287
  %2 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5288
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %2, i32 0, i32 26, !dbg !5289
  call void @down_write(ptr noundef %trigger_lock) #17, !dbg !5290
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5291
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5273, metadata !DIExpression()), !dbg !5291
  %3 = load ptr, ptr @trigger_list, align 8, !dbg !5291
  store ptr %3, ptr %__mptr, align 8, !dbg !5291
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5291
  %add.ptr = getelementptr i8, ptr %4, i64 -64, !dbg !5291
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5291
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5292
  %5 = load ptr, ptr %tmp, align 8, !dbg !5291
  store ptr %5, ptr %trig, align 8, !dbg !5292
  br label %for.cond, !dbg !5292

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %trig, align 8, !dbg !5293
  %next_trig = getelementptr inbounds %struct.led_trigger, ptr %6, i32 0, i32 7, !dbg !5293
  %cmp = icmp eq ptr %next_trig, @trigger_list, !dbg !5293
  %lnot = xor i1 %cmp, true, !dbg !5293
  br i1 %lnot, label %for.body, label %for.end, !dbg !5292

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5294
  %default_trigger1 = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 15, !dbg !5297
  %8 = load ptr, ptr %default_trigger1, align 8, !dbg !5297
  %9 = load ptr, ptr %trig, align 8, !dbg !5298
  %name = getelementptr inbounds %struct.led_trigger, ptr %9, i32 0, i32 0, !dbg !5299
  %10 = load ptr, ptr %name, align 8, !dbg !5299
  %call = call i32 @strcmp(ptr noundef %8, ptr noundef %10) #17, !dbg !5300
  %tobool2 = icmp ne i32 %call, 0, !dbg !5300
  br i1 %tobool2, label %if.end7, label %land.lhs.true, !dbg !5301

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5302
  %12 = load ptr, ptr %trig, align 8, !dbg !5303
  %call3 = call zeroext i1 @trigger_relevant(ptr noundef %11, ptr noundef %12) #17, !dbg !5304
  br i1 %call3, label %if.then4, label %if.end7, !dbg !5305

if.then4:                                         ; preds = %land.lhs.true
  %13 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5306
  %flags = getelementptr inbounds %struct.led_classdev, ptr %13, i32 0, i32 4, !dbg !5308
  %14 = load i32, ptr %flags, align 4, !dbg !5309
  %conv = sext i32 %14 to i64, !dbg !5309
  %or = or i64 %conv, 8388608, !dbg !5309
  %conv5 = trunc i64 %or to i32, !dbg !5309
  store i32 %conv5, ptr %flags, align 4, !dbg !5309
  %15 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5310
  %16 = load ptr, ptr %trig, align 8, !dbg !5311
  %call6 = call i32 @led_trigger_set(ptr noundef %15, ptr noundef %16) #17, !dbg !5312
  br label %for.end, !dbg !5313

if.end7:                                          ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !5314

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #16, !dbg !5315
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !5276, metadata !DIExpression()), !dbg !5315
  %17 = load ptr, ptr %trig, align 8, !dbg !5315
  %next_trig9 = getelementptr inbounds %struct.led_trigger, ptr %17, i32 0, i32 7, !dbg !5315
  %next = getelementptr inbounds %struct.list_head, ptr %next_trig9, i32 0, i32 0, !dbg !5315
  %18 = load ptr, ptr %next, align 8, !dbg !5315
  store ptr %18, ptr %__mptr8, align 8, !dbg !5315
  %19 = load ptr, ptr %__mptr8, align 8, !dbg !5315
  %add.ptr11 = getelementptr i8, ptr %19, i64 -64, !dbg !5315
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !5315
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #16, !dbg !5293
  %20 = load ptr, ptr %tmp10, align 8, !dbg !5315
  store ptr %20, ptr %trig, align 8, !dbg !5293
  br label %for.cond, !dbg !5293, !llvm.loop !5316

for.end:                                          ; preds = %if.then4, %for.cond
  %21 = load ptr, ptr %led_cdev.addr, align 8, !dbg !5318
  %trigger_lock12 = getelementptr inbounds %struct.led_classdev, ptr %21, i32 0, i32 26, !dbg !5319
  call void @up_write(ptr noundef %trigger_lock12) #17, !dbg !5320
  call void @up_read(ptr noundef @triggers_list_lock) #17, !dbg !5321
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5322
  br label %cleanup, !dbg !5322

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %trig) #16, !dbg !5322
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5322

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5323 dso_local i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @led_trigger_register(ptr noundef %trig) #0 align 16 !dbg !5326 {
entry:
  %retval = alloca i32, align 4
  %trig.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %_trig = alloca ptr, align 8
  %.compoundliteral = alloca %struct.spinlock, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr11 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  %__mptr39 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5330, metadata !DIExpression()), !dbg !5345
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #16, !dbg !5346
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !5331, metadata !DIExpression()), !dbg !5347
  call void @llvm.lifetime.start.p0(i64 8, ptr %_trig) #16, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %_trig, metadata !5332, metadata !DIExpression()), !dbg !5349
  br label %do.body, !dbg !5350

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !5351
  %leddev_list_lock = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 5, !dbg !5351
  %call = call ptr @spinlock_check(ptr noundef %leddev_list_lock) #17, !dbg !5351
  %1 = load ptr, ptr %trig.addr, align 8, !dbg !5351
  %leddev_list_lock1 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 5, !dbg !5351
  %2 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !5351
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %2, i32 0, i32 0, !dbg !5351
  %3 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !5351
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !5351
  store i32 0, ptr %counter, align 4, !dbg !5351
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %leddev_list_lock1, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !5351
  br label %do.cond, !dbg !5351

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5351

do.end:                                           ; preds = %do.cond
  %4 = load ptr, ptr %trig.addr, align 8, !dbg !5353
  %led_cdevs = getelementptr inbounds %struct.led_trigger, ptr %4, i32 0, i32 6, !dbg !5354
  call void @INIT_LIST_HEAD(ptr noundef %led_cdevs) #17, !dbg !5355
  call void @down_write(ptr noundef @triggers_list_lock) #17, !dbg !5356
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5357
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5333, metadata !DIExpression()), !dbg !5357
  %5 = load ptr, ptr @trigger_list, align 8, !dbg !5357
  store ptr %5, ptr %__mptr, align 8, !dbg !5357
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5357
  %add.ptr = getelementptr i8, ptr %6, i64 -64, !dbg !5357
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5358
  %7 = load ptr, ptr %tmp, align 8, !dbg !5357
  store ptr %7, ptr %_trig, align 8, !dbg !5358
  br label %for.cond, !dbg !5358

for.cond:                                         ; preds = %for.inc, %do.end
  %8 = load ptr, ptr %_trig, align 8, !dbg !5359
  %next_trig = getelementptr inbounds %struct.led_trigger, ptr %8, i32 0, i32 7, !dbg !5359
  %cmp = icmp eq ptr %next_trig, @trigger_list, !dbg !5359
  %lnot = xor i1 %cmp, true, !dbg !5359
  br i1 %lnot, label %for.body, label %for.end, !dbg !5358

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %_trig, align 8, !dbg !5360
  %name = getelementptr inbounds %struct.led_trigger, ptr %9, i32 0, i32 0, !dbg !5363
  %10 = load ptr, ptr %name, align 8, !dbg !5363
  %11 = load ptr, ptr %trig.addr, align 8, !dbg !5364
  %name2 = getelementptr inbounds %struct.led_trigger, ptr %11, i32 0, i32 0, !dbg !5365
  %12 = load ptr, ptr %name2, align 8, !dbg !5365
  %call3 = call i32 @strcmp(ptr noundef %10, ptr noundef %12) #17, !dbg !5366
  %tobool = icmp ne i32 %call3, 0, !dbg !5366
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !5367

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %trig.addr, align 8, !dbg !5368
  %trigger_type = getelementptr inbounds %struct.led_trigger, ptr %13, i32 0, i32 4, !dbg !5369
  %14 = load ptr, ptr %trigger_type, align 8, !dbg !5369
  %15 = load ptr, ptr %_trig, align 8, !dbg !5370
  %trigger_type4 = getelementptr inbounds %struct.led_trigger, ptr %15, i32 0, i32 4, !dbg !5371
  %16 = load ptr, ptr %trigger_type4, align 8, !dbg !5371
  %cmp5 = icmp eq ptr %14, %16, !dbg !5372
  br i1 %cmp5, label %if.then, label %lor.lhs.false, !dbg !5373

lor.lhs.false:                                    ; preds = %land.lhs.true
  %17 = load ptr, ptr %trig.addr, align 8, !dbg !5374
  %trigger_type6 = getelementptr inbounds %struct.led_trigger, ptr %17, i32 0, i32 4, !dbg !5375
  %18 = load ptr, ptr %trigger_type6, align 8, !dbg !5375
  %tobool7 = icmp ne ptr %18, null, !dbg !5374
  br i1 %tobool7, label %lor.lhs.false8, label %if.then, !dbg !5376

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %19 = load ptr, ptr %_trig, align 8, !dbg !5377
  %trigger_type9 = getelementptr inbounds %struct.led_trigger, ptr %19, i32 0, i32 4, !dbg !5378
  %20 = load ptr, ptr %trigger_type9, align 8, !dbg !5378
  %tobool10 = icmp ne ptr %20, null, !dbg !5377
  br i1 %tobool10, label %if.end, label %if.then, !dbg !5379

if.then:                                          ; preds = %lor.lhs.false8, %lor.lhs.false, %land.lhs.true
  call void @up_write(ptr noundef @triggers_list_lock) #17, !dbg !5380
  store i32 -17, ptr %retval, align 4, !dbg !5382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5382

if.end:                                           ; preds = %lor.lhs.false8, %for.body
  br label %for.inc, !dbg !5383

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #16, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !5336, metadata !DIExpression()), !dbg !5384
  %21 = load ptr, ptr %_trig, align 8, !dbg !5384
  %next_trig12 = getelementptr inbounds %struct.led_trigger, ptr %21, i32 0, i32 7, !dbg !5384
  %next = getelementptr inbounds %struct.list_head, ptr %next_trig12, i32 0, i32 0, !dbg !5384
  %22 = load ptr, ptr %next, align 8, !dbg !5384
  store ptr %22, ptr %__mptr11, align 8, !dbg !5384
  %23 = load ptr, ptr %__mptr11, align 8, !dbg !5384
  %add.ptr14 = getelementptr i8, ptr %23, i64 -64, !dbg !5384
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !5384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #16, !dbg !5359
  %24 = load ptr, ptr %tmp13, align 8, !dbg !5384
  store ptr %24, ptr %_trig, align 8, !dbg !5359
  br label %for.cond, !dbg !5359, !llvm.loop !5385

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %trig.addr, align 8, !dbg !5387
  %next_trig15 = getelementptr inbounds %struct.led_trigger, ptr %25, i32 0, i32 7, !dbg !5388
  call void @list_add_tail(ptr noundef %next_trig15, ptr noundef @trigger_list) #17, !dbg !5389
  call void @up_write(ptr noundef @triggers_list_lock) #17, !dbg !5390
  call void @down_read(ptr noundef @leds_list_lock) #17, !dbg !5391
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #16, !dbg !5392
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !5339, metadata !DIExpression()), !dbg !5392
  %26 = load ptr, ptr @leds_list, align 8, !dbg !5392
  store ptr %26, ptr %__mptr16, align 8, !dbg !5392
  %27 = load ptr, ptr %__mptr16, align 8, !dbg !5392
  %add.ptr18 = getelementptr i8, ptr %27, i64 -96, !dbg !5392
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !5392
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #16, !dbg !5393
  %28 = load ptr, ptr %tmp17, align 8, !dbg !5392
  store ptr %28, ptr %led_cdev, align 8, !dbg !5393
  br label %for.cond19, !dbg !5393

for.cond19:                                       ; preds = %for.inc38, %for.end
  %29 = load ptr, ptr %led_cdev, align 8, !dbg !5394
  %node = getelementptr inbounds %struct.led_classdev, ptr %29, i32 0, i32 14, !dbg !5394
  %cmp20 = icmp eq ptr %node, @leds_list, !dbg !5394
  %lnot21 = xor i1 %cmp20, true, !dbg !5394
  br i1 %lnot21, label %for.body22, label %for.end44, !dbg !5393

for.body22:                                       ; preds = %for.cond19
  %30 = load ptr, ptr %led_cdev, align 8, !dbg !5395
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %30, i32 0, i32 26, !dbg !5397
  call void @down_write(ptr noundef %trigger_lock) #17, !dbg !5398
  %31 = load ptr, ptr %led_cdev, align 8, !dbg !5399
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %31, i32 0, i32 27, !dbg !5401
  %32 = load ptr, ptr %trigger, align 8, !dbg !5401
  %tobool23 = icmp ne ptr %32, null, !dbg !5399
  br i1 %tobool23, label %if.end36, label %land.lhs.true24, !dbg !5402

land.lhs.true24:                                  ; preds = %for.body22
  %33 = load ptr, ptr %led_cdev, align 8, !dbg !5403
  %default_trigger = getelementptr inbounds %struct.led_classdev, ptr %33, i32 0, i32 15, !dbg !5404
  %34 = load ptr, ptr %default_trigger, align 8, !dbg !5404
  %tobool25 = icmp ne ptr %34, null, !dbg !5403
  br i1 %tobool25, label %land.lhs.true26, label %if.end36, !dbg !5405

land.lhs.true26:                                  ; preds = %land.lhs.true24
  %35 = load ptr, ptr %led_cdev, align 8, !dbg !5406
  %default_trigger27 = getelementptr inbounds %struct.led_classdev, ptr %35, i32 0, i32 15, !dbg !5407
  %36 = load ptr, ptr %default_trigger27, align 8, !dbg !5407
  %37 = load ptr, ptr %trig.addr, align 8, !dbg !5408
  %name28 = getelementptr inbounds %struct.led_trigger, ptr %37, i32 0, i32 0, !dbg !5409
  %38 = load ptr, ptr %name28, align 8, !dbg !5409
  %call29 = call i32 @strcmp(ptr noundef %36, ptr noundef %38) #17, !dbg !5410
  %tobool30 = icmp ne i32 %call29, 0, !dbg !5410
  br i1 %tobool30, label %if.end36, label %land.lhs.true31, !dbg !5411

land.lhs.true31:                                  ; preds = %land.lhs.true26
  %39 = load ptr, ptr %led_cdev, align 8, !dbg !5412
  %40 = load ptr, ptr %trig.addr, align 8, !dbg !5413
  %call32 = call zeroext i1 @trigger_relevant(ptr noundef %39, ptr noundef %40) #17, !dbg !5414
  br i1 %call32, label %if.then33, label %if.end36, !dbg !5415

if.then33:                                        ; preds = %land.lhs.true31
  %41 = load ptr, ptr %led_cdev, align 8, !dbg !5416
  %flags = getelementptr inbounds %struct.led_classdev, ptr %41, i32 0, i32 4, !dbg !5418
  %42 = load i32, ptr %flags, align 4, !dbg !5419
  %conv = sext i32 %42 to i64, !dbg !5419
  %or = or i64 %conv, 8388608, !dbg !5419
  %conv34 = trunc i64 %or to i32, !dbg !5419
  store i32 %conv34, ptr %flags, align 4, !dbg !5419
  %43 = load ptr, ptr %led_cdev, align 8, !dbg !5420
  %44 = load ptr, ptr %trig.addr, align 8, !dbg !5421
  %call35 = call i32 @led_trigger_set(ptr noundef %43, ptr noundef %44) #17, !dbg !5422
  br label %if.end36, !dbg !5423

if.end36:                                         ; preds = %if.then33, %land.lhs.true31, %land.lhs.true26, %land.lhs.true24, %for.body22
  %45 = load ptr, ptr %led_cdev, align 8, !dbg !5424
  %trigger_lock37 = getelementptr inbounds %struct.led_classdev, ptr %45, i32 0, i32 26, !dbg !5425
  call void @up_write(ptr noundef %trigger_lock37) #17, !dbg !5426
  br label %for.inc38, !dbg !5427

for.inc38:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr39) #16, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %__mptr39, metadata !5342, metadata !DIExpression()), !dbg !5428
  %46 = load ptr, ptr %led_cdev, align 8, !dbg !5428
  %node40 = getelementptr inbounds %struct.led_classdev, ptr %46, i32 0, i32 14, !dbg !5428
  %next41 = getelementptr inbounds %struct.list_head, ptr %node40, i32 0, i32 0, !dbg !5428
  %47 = load ptr, ptr %next41, align 8, !dbg !5428
  store ptr %47, ptr %__mptr39, align 8, !dbg !5428
  %48 = load ptr, ptr %__mptr39, align 8, !dbg !5428
  %add.ptr43 = getelementptr i8, ptr %48, i64 -96, !dbg !5428
  store ptr %add.ptr43, ptr %tmp42, align 8, !dbg !5428
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr39) #16, !dbg !5394
  %49 = load ptr, ptr %tmp42, align 8, !dbg !5428
  store ptr %49, ptr %led_cdev, align 8, !dbg !5394
  br label %for.cond19, !dbg !5394, !llvm.loop !5429

for.end44:                                        ; preds = %for.cond19
  call void @up_read(ptr noundef @leds_list_lock) #17, !dbg !5431
  store i32 0, ptr %retval, align 4, !dbg !5432
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5432

cleanup:                                          ; preds = %for.end44, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %_trig) #16, !dbg !5433
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #16, !dbg !5433
  %50 = load i32, ptr %retval, align 4, !dbg !5433
  ret i32 %50, !dbg !5433
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !5434 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5439, metadata !DIExpression()), !dbg !5440
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5441
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5442
  ret ptr %1, !dbg !5443
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !5444 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5447, metadata !DIExpression()), !dbg !5448
  br label %do.body, !dbg !5449

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5450

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5452

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5450

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5454
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5454
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5454
  store volatile ptr %0, ptr %next, align 8, !dbg !5454
  br label %do.end3, !dbg !5454

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5450

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5456

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5457

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5459

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5457

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5461
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5461
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5461
  store volatile ptr %2, ptr %prev, align 8, !dbg !5461
  br label %do.end9, !dbg !5461

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5457

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5463
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !5464 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5466, metadata !DIExpression()), !dbg !5468
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5467, metadata !DIExpression()), !dbg !5469
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5470
  %1 = load ptr, ptr %head.addr, align 8, !dbg !5471
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5472
  %2 = load ptr, ptr %prev, align 8, !dbg !5472
  %3 = load ptr, ptr %head.addr, align 8, !dbg !5473
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !5474
  ret void, !dbg !5475
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_unregister(ptr noundef %trig) #0 align 16 !dbg !5476 {
entry:
  %trig.addr = alloca ptr, align 8
  %led_cdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5480, metadata !DIExpression()), !dbg !5488
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #16, !dbg !5489
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !5481, metadata !DIExpression()), !dbg !5490
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !5491
  %next_trig = getelementptr inbounds %struct.led_trigger, ptr %0, i32 0, i32 7, !dbg !5493
  %call = call i32 @list_empty_careful(ptr noundef %next_trig) #17, !dbg !5494
  %tobool = icmp ne i32 %call, 0, !dbg !5494
  br i1 %tobool, label %if.then, label %if.end, !dbg !5495

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5496

if.end:                                           ; preds = %entry
  call void @down_write(ptr noundef @triggers_list_lock) #17, !dbg !5497
  %1 = load ptr, ptr %trig.addr, align 8, !dbg !5498
  %next_trig1 = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 7, !dbg !5499
  call void @list_del_init(ptr noundef %next_trig1) #17, !dbg !5500
  call void @up_write(ptr noundef @triggers_list_lock) #17, !dbg !5501
  call void @down_read(ptr noundef @leds_list_lock) #17, !dbg !5502
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5503
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5482, metadata !DIExpression()), !dbg !5503
  %2 = load ptr, ptr @leds_list, align 8, !dbg !5503
  store ptr %2, ptr %__mptr, align 8, !dbg !5503
  %3 = load ptr, ptr %__mptr, align 8, !dbg !5503
  %add.ptr = getelementptr i8, ptr %3, i64 -96, !dbg !5503
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5503
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5504
  %4 = load ptr, ptr %tmp, align 8, !dbg !5503
  store ptr %4, ptr %led_cdev, align 8, !dbg !5504
  br label %for.cond, !dbg !5504

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %led_cdev, align 8, !dbg !5505
  %node = getelementptr inbounds %struct.led_classdev, ptr %5, i32 0, i32 14, !dbg !5505
  %cmp = icmp eq ptr %node, @leds_list, !dbg !5505
  %lnot = xor i1 %cmp, true, !dbg !5505
  br i1 %lnot, label %for.body, label %for.end, !dbg !5504

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %led_cdev, align 8, !dbg !5506
  %trigger_lock = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 26, !dbg !5508
  call void @down_write(ptr noundef %trigger_lock) #17, !dbg !5509
  %7 = load ptr, ptr %led_cdev, align 8, !dbg !5510
  %trigger = getelementptr inbounds %struct.led_classdev, ptr %7, i32 0, i32 27, !dbg !5512
  %8 = load ptr, ptr %trigger, align 8, !dbg !5512
  %9 = load ptr, ptr %trig.addr, align 8, !dbg !5513
  %cmp2 = icmp eq ptr %8, %9, !dbg !5514
  br i1 %cmp2, label %if.then3, label %if.end5, !dbg !5515

if.then3:                                         ; preds = %for.body
  %10 = load ptr, ptr %led_cdev, align 8, !dbg !5516
  %call4 = call i32 @led_trigger_set(ptr noundef %10, ptr noundef null) #17, !dbg !5517
  br label %if.end5, !dbg !5517

if.end5:                                          ; preds = %if.then3, %for.body
  %11 = load ptr, ptr %led_cdev, align 8, !dbg !5518
  %trigger_lock6 = getelementptr inbounds %struct.led_classdev, ptr %11, i32 0, i32 26, !dbg !5519
  call void @up_write(ptr noundef %trigger_lock6) #17, !dbg !5520
  br label %for.inc, !dbg !5521

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #16, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !5485, metadata !DIExpression()), !dbg !5522
  %12 = load ptr, ptr %led_cdev, align 8, !dbg !5522
  %node8 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 14, !dbg !5522
  %next = getelementptr inbounds %struct.list_head, ptr %node8, i32 0, i32 0, !dbg !5522
  %13 = load ptr, ptr %next, align 8, !dbg !5522
  store ptr %13, ptr %__mptr7, align 8, !dbg !5522
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !5522
  %add.ptr10 = getelementptr i8, ptr %14, i64 -96, !dbg !5522
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !5522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #16, !dbg !5505
  %15 = load ptr, ptr %tmp9, align 8, !dbg !5522
  store ptr %15, ptr %led_cdev, align 8, !dbg !5505
  br label %for.cond, !dbg !5505, !llvm.loop !5523

for.end:                                          ; preds = %for.cond
  call void @up_read(ptr noundef @leds_list_lock) #17, !dbg !5525
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5526
  br label %cleanup, !dbg !5526

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #16, !dbg !5526
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5526

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty_careful(ptr noundef %head) #3 align 16 !dbg !5527 {
entry:
  %head.addr = alloca ptr, align 8
  %next = alloca ptr, align 8
  %___p1 = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !5533, metadata !DIExpression()), !dbg !5538
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #16, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %next, metadata !5534, metadata !DIExpression()), !dbg !5540
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p1) #16, !dbg !5541
  call void @llvm.dbg.declare(metadata ptr %___p1, metadata !5535, metadata !DIExpression()), !dbg !5541
  br label %do.body, !dbg !5542

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5544

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5544

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %head.addr, align 8, !dbg !5542
  %next1 = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !5542
  %1 = load volatile ptr, ptr %next1, align 8, !dbg !5542
  store ptr %1, ptr %tmp, align 8, !dbg !5544
  %2 = load ptr, ptr %tmp, align 8, !dbg !5542
  store ptr %2, ptr %___p1, align 8, !dbg !5541
  br label %do.body2, !dbg !5541

do.body2:                                         ; preds = %do.end
  br label %do.cond3, !dbg !5546

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5546

do.end4:                                          ; preds = %do.cond3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5541, !srcloc !5548
  %3 = load ptr, ptr %___p1, align 8, !dbg !5541
  store ptr %3, ptr %tmp5, align 8, !dbg !5541
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p1) #16, !dbg !5549
  %4 = load ptr, ptr %tmp5, align 8, !dbg !5541
  store ptr %4, ptr %next, align 8, !dbg !5540
  %5 = load ptr, ptr %next, align 8, !dbg !5550
  %6 = load ptr, ptr %head.addr, align 8, !dbg !5551
  %call = call i32 @list_is_head(ptr noundef %5, ptr noundef %6) #17, !dbg !5552
  %tobool = icmp ne i32 %call, 0, !dbg !5552
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !5553

land.rhs:                                         ; preds = %do.end4
  %7 = load ptr, ptr %next, align 8, !dbg !5554
  br label %do.body6, !dbg !5555

do.body6:                                         ; preds = %land.rhs
  br label %do.cond7, !dbg !5557

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5557

do.end8:                                          ; preds = %do.cond7
  %8 = load ptr, ptr %head.addr, align 8, !dbg !5555
  %prev = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !5555
  %9 = load volatile ptr, ptr %prev, align 8, !dbg !5555
  store ptr %9, ptr %tmp9, align 8, !dbg !5557
  %10 = load ptr, ptr %tmp9, align 8, !dbg !5555
  %cmp = icmp eq ptr %7, %10, !dbg !5559
  br label %land.end

land.end:                                         ; preds = %do.end8, %do.end4
  %11 = phi i1 [ false, %do.end4 ], [ %cmp, %do.end8 ], !dbg !5560
  %land.ext = zext i1 %11 to i32, !dbg !5553
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #16, !dbg !5561
  ret i32 %land.ext, !dbg !5562
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #3 align 16 !dbg !5563 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5565, metadata !DIExpression()), !dbg !5566
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5567
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !5568
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5569
  call void @INIT_LIST_HEAD(ptr noundef %1) #17, !dbg !5570
  ret void, !dbg !5571
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_led_trigger_register(ptr noundef %dev, ptr noundef %trig) #0 align 16 !dbg !5572 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %trig.addr = alloca ptr, align 8
  %dr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5576, metadata !DIExpression()), !dbg !5580
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5577, metadata !DIExpression()), !dbg !5581
  call void @llvm.lifetime.start.p0(i64 8, ptr %dr) #16, !dbg !5582
  call void @llvm.dbg.declare(metadata ptr %dr, metadata !5578, metadata !DIExpression()), !dbg !5583
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #16, !dbg !5584
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !5579, metadata !DIExpression()), !dbg !5585
  %call = call noalias ptr @__devres_alloc_node(ptr noundef @devm_led_trigger_release, i64 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef @.str.4) #17, !dbg !5586
  store ptr %call, ptr %dr, align 8, !dbg !5587
  %0 = load ptr, ptr %dr, align 8, !dbg !5588
  %tobool = icmp ne ptr %0, null, !dbg !5588
  br i1 %tobool, label %if.end, label %if.then, !dbg !5590

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5591

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %trig.addr, align 8, !dbg !5592
  %2 = load ptr, ptr %dr, align 8, !dbg !5593
  store ptr %1, ptr %2, align 8, !dbg !5594
  %3 = load ptr, ptr %trig.addr, align 8, !dbg !5595
  %call1 = call i32 @led_trigger_register(ptr noundef %3) #17, !dbg !5596
  store i32 %call1, ptr %rc, align 4, !dbg !5597
  %4 = load i32, ptr %rc, align 4, !dbg !5598
  %tobool2 = icmp ne i32 %4, 0, !dbg !5598
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !5600

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %dr, align 8, !dbg !5601
  call void @devres_free(ptr noundef %5) #17, !dbg !5602
  br label %if.end4, !dbg !5602

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !5603
  %7 = load ptr, ptr %dr, align 8, !dbg !5604
  call void @devres_add(ptr noundef %6, ptr noundef %7) #17, !dbg !5605
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  %8 = load i32, ptr %rc, align 4, !dbg !5606
  store i32 %8, ptr %retval, align 4, !dbg !5607
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5607

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #16, !dbg !5608
  call void @llvm.lifetime.end.p0(i64 8, ptr %dr) #16, !dbg !5608
  %9 = load i32, ptr %retval, align 4, !dbg !5608
  ret i32 %9, !dbg !5608
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5609 dso_local noalias ptr @__devres_alloc_node(ptr noundef, i64 noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @devm_led_trigger_release(ptr noundef %dev, ptr noundef %res) #0 align 16 !dbg !5616 {
entry:
  %dev.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5618, metadata !DIExpression()), !dbg !5620
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !5619, metadata !DIExpression()), !dbg !5621
  %0 = load ptr, ptr %res.addr, align 8, !dbg !5622
  %1 = load ptr, ptr %0, align 8, !dbg !5623
  call void @led_trigger_unregister(ptr noundef %1) #17, !dbg !5624
  ret void, !dbg !5625
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5626 dso_local void @devres_free(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5627 dso_local void @devres_add(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_event(ptr noundef %trig, i32 noundef %brightness) #0 align 16 !dbg !5628 {
entry:
  %trig.addr = alloca ptr, align 8
  %brightness.addr = alloca i32, align 4
  %led_cdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5632, metadata !DIExpression()), !dbg !5641
  store i32 %brightness, ptr %brightness.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %brightness.addr, metadata !5633, metadata !DIExpression()), !dbg !5642
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #16, !dbg !5643
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !5634, metadata !DIExpression()), !dbg !5644
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !5645
  %tobool = icmp ne ptr %0, null, !dbg !5645
  br i1 %tobool, label %if.end, label %if.then, !dbg !5647

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5648

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %brightness.addr, align 4, !dbg !5649
  %2 = load ptr, ptr %trig.addr, align 8, !dbg !5650
  %brightness1 = getelementptr inbounds %struct.led_trigger, ptr %2, i32 0, i32 3, !dbg !5651
  store i32 %1, ptr %brightness1, align 8, !dbg !5652
  call void @rcu_read_lock() #17, !dbg !5653
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5654
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5635, metadata !DIExpression()), !dbg !5654
  br label %do.body, !dbg !5655

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5657

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5657

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %trig.addr, align 8, !dbg !5655
  %led_cdevs = getelementptr inbounds %struct.led_trigger, ptr %3, i32 0, i32 6, !dbg !5655
  %next = getelementptr inbounds %struct.list_head, ptr %led_cdevs, i32 0, i32 0, !dbg !5655
  %4 = load volatile ptr, ptr %next, align 8, !dbg !5655
  store ptr %4, ptr %tmp, align 8, !dbg !5657
  %5 = load ptr, ptr %tmp, align 8, !dbg !5655
  store ptr %5, ptr %__mptr, align 8, !dbg !5654
  %6 = load ptr, ptr %__mptr, align 8, !dbg !5654
  %add.ptr = getelementptr i8, ptr %6, i64 -296, !dbg !5654
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !5654
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5659
  %7 = load ptr, ptr %tmp2, align 8, !dbg !5654
  store ptr %7, ptr %led_cdev, align 8, !dbg !5659
  br label %for.cond, !dbg !5659

for.cond:                                         ; preds = %do.end7, %do.end
  %8 = load ptr, ptr %led_cdev, align 8, !dbg !5660
  %trig_list = getelementptr inbounds %struct.led_classdev, ptr %8, i32 0, i32 28, !dbg !5660
  %9 = load ptr, ptr %trig.addr, align 8, !dbg !5660
  %led_cdevs3 = getelementptr inbounds %struct.led_trigger, ptr %9, i32 0, i32 6, !dbg !5660
  %cmp = icmp ne ptr %trig_list, %led_cdevs3, !dbg !5660
  br i1 %cmp, label %for.body, label %for.end, !dbg !5659

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %led_cdev, align 8, !dbg !5661
  %11 = load i32, ptr %brightness.addr, align 4, !dbg !5662
  call void @led_set_brightness(ptr noundef %10, i32 noundef %11) #17, !dbg !5663
  br label %for.inc, !dbg !5663

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #16, !dbg !5664
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !5638, metadata !DIExpression()), !dbg !5664
  br label %do.body5, !dbg !5665

do.body5:                                         ; preds = %for.inc
  br label %do.cond6, !dbg !5667

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5667

do.end7:                                          ; preds = %do.cond6
  %12 = load ptr, ptr %led_cdev, align 8, !dbg !5665
  %trig_list9 = getelementptr inbounds %struct.led_classdev, ptr %12, i32 0, i32 28, !dbg !5665
  %next10 = getelementptr inbounds %struct.list_head, ptr %trig_list9, i32 0, i32 0, !dbg !5665
  %13 = load volatile ptr, ptr %next10, align 8, !dbg !5665
  store ptr %13, ptr %tmp8, align 8, !dbg !5667
  %14 = load ptr, ptr %tmp8, align 8, !dbg !5665
  store ptr %14, ptr %__mptr4, align 8, !dbg !5664
  %15 = load ptr, ptr %__mptr4, align 8, !dbg !5664
  %add.ptr12 = getelementptr i8, ptr %15, i64 -296, !dbg !5664
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !5664
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #16, !dbg !5660
  %16 = load ptr, ptr %tmp11, align 8, !dbg !5664
  store ptr %16, ptr %led_cdev, align 8, !dbg !5660
  br label %for.cond, !dbg !5660, !llvm.loop !5669

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #17, !dbg !5671
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5672
  br label %cleanup, !dbg !5672

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #16, !dbg !5672
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5672

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #6 align 16 !dbg !5673 {
entry:
  call void @__rcu_read_lock() #17, !dbg !5674
  br label %do.body, !dbg !5675

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5676

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !5678

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5679

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5681
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #3 align 16 !dbg !5682 {
entry:
  br label %do.body, !dbg !5683

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !5684

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !5686
  br label %do.body1, !dbg !5687

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !5688

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !5690
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_blink(ptr noundef %trig, i64 noundef %delay_on, i64 noundef %delay_off) #0 align 16 !dbg !5691 {
entry:
  %trig.addr = alloca ptr, align 8
  %delay_on.addr = alloca i64, align 8
  %delay_off.addr = alloca i64, align 8
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5695, metadata !DIExpression()), !dbg !5698
  store i64 %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !5696, metadata !DIExpression()), !dbg !5699
  store i64 %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !5697, metadata !DIExpression()), !dbg !5700
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !5701
  %1 = load i64, ptr %delay_on.addr, align 8, !dbg !5702
  %2 = load i64, ptr %delay_off.addr, align 8, !dbg !5703
  call void @led_trigger_blink_setup(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 0, i32 noundef 0) #17, !dbg !5704
  ret void, !dbg !5705
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @led_trigger_blink_setup(ptr noundef %trig, i64 noundef %delay_on, i64 noundef %delay_off, i32 noundef %oneshot, i32 noundef %invert) #0 align 16 !dbg !5706 {
entry:
  %trig.addr = alloca ptr, align 8
  %delay_on.addr = alloca i64, align 8
  %delay_off.addr = alloca i64, align 8
  %oneshot.addr = alloca i32, align 4
  %invert.addr = alloca i32, align 4
  %led_cdev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5710, metadata !DIExpression()), !dbg !5722
  store i64 %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !5711, metadata !DIExpression()), !dbg !5723
  store i64 %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !5712, metadata !DIExpression()), !dbg !5724
  store i32 %oneshot, ptr %oneshot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %oneshot.addr, metadata !5713, metadata !DIExpression()), !dbg !5725
  store i32 %invert, ptr %invert.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %invert.addr, metadata !5714, metadata !DIExpression()), !dbg !5726
  call void @llvm.lifetime.start.p0(i64 8, ptr %led_cdev) #16, !dbg !5727
  call void @llvm.dbg.declare(metadata ptr %led_cdev, metadata !5715, metadata !DIExpression()), !dbg !5728
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !5729
  %tobool = icmp ne ptr %0, null, !dbg !5729
  br i1 %tobool, label %if.end, label %if.then, !dbg !5731

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5732

if.end:                                           ; preds = %entry
  call void @rcu_read_lock() #17, !dbg !5733
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5734
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5716, metadata !DIExpression()), !dbg !5734
  br label %do.body, !dbg !5735

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5737

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5737

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %trig.addr, align 8, !dbg !5735
  %led_cdevs = getelementptr inbounds %struct.led_trigger, ptr %1, i32 0, i32 6, !dbg !5735
  %next = getelementptr inbounds %struct.list_head, ptr %led_cdevs, i32 0, i32 0, !dbg !5735
  %2 = load volatile ptr, ptr %next, align 8, !dbg !5735
  store ptr %2, ptr %tmp, align 8, !dbg !5737
  %3 = load ptr, ptr %tmp, align 8, !dbg !5735
  store ptr %3, ptr %__mptr, align 8, !dbg !5734
  %4 = load ptr, ptr %__mptr, align 8, !dbg !5734
  %add.ptr = getelementptr i8, ptr %4, i64 -296, !dbg !5734
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !5734
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5739
  %5 = load ptr, ptr %tmp1, align 8, !dbg !5734
  store ptr %5, ptr %led_cdev, align 8, !dbg !5739
  br label %for.cond, !dbg !5739

for.cond:                                         ; preds = %do.end9, %do.end
  %6 = load ptr, ptr %led_cdev, align 8, !dbg !5740
  %trig_list = getelementptr inbounds %struct.led_classdev, ptr %6, i32 0, i32 28, !dbg !5740
  %7 = load ptr, ptr %trig.addr, align 8, !dbg !5740
  %led_cdevs2 = getelementptr inbounds %struct.led_trigger, ptr %7, i32 0, i32 6, !dbg !5740
  %cmp = icmp ne ptr %trig_list, %led_cdevs2, !dbg !5740
  br i1 %cmp, label %for.body, label %for.end, !dbg !5739

for.body:                                         ; preds = %for.cond
  %8 = load i32, ptr %oneshot.addr, align 4, !dbg !5741
  %tobool3 = icmp ne i32 %8, 0, !dbg !5741
  br i1 %tobool3, label %if.then4, label %if.else, !dbg !5744

if.then4:                                         ; preds = %for.body
  %9 = load ptr, ptr %led_cdev, align 8, !dbg !5745
  %10 = load i32, ptr %invert.addr, align 4, !dbg !5746
  call void @led_blink_set_oneshot(ptr noundef %9, ptr noundef %delay_on.addr, ptr noundef %delay_off.addr, i32 noundef %10) #17, !dbg !5747
  br label %if.end5, !dbg !5747

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %led_cdev, align 8, !dbg !5748
  %12 = load i64, ptr %delay_on.addr, align 8, !dbg !5749
  %13 = load i64, ptr %delay_off.addr, align 8, !dbg !5750
  call void @led_blink_set_nosleep(ptr noundef %11, i64 noundef %12, i64 noundef %13) #17, !dbg !5751
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then4
  br label %for.inc, !dbg !5752

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #16, !dbg !5753
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !5719, metadata !DIExpression()), !dbg !5753
  br label %do.body7, !dbg !5754

do.body7:                                         ; preds = %for.inc
  br label %do.cond8, !dbg !5756

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !5756

do.end9:                                          ; preds = %do.cond8
  %14 = load ptr, ptr %led_cdev, align 8, !dbg !5754
  %trig_list11 = getelementptr inbounds %struct.led_classdev, ptr %14, i32 0, i32 28, !dbg !5754
  %next12 = getelementptr inbounds %struct.list_head, ptr %trig_list11, i32 0, i32 0, !dbg !5754
  %15 = load volatile ptr, ptr %next12, align 8, !dbg !5754
  store ptr %15, ptr %tmp10, align 8, !dbg !5756
  %16 = load ptr, ptr %tmp10, align 8, !dbg !5754
  store ptr %16, ptr %__mptr6, align 8, !dbg !5753
  %17 = load ptr, ptr %__mptr6, align 8, !dbg !5753
  %add.ptr14 = getelementptr i8, ptr %17, i64 -296, !dbg !5753
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !5753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #16, !dbg !5740
  %18 = load ptr, ptr %tmp13, align 8, !dbg !5753
  store ptr %18, ptr %led_cdev, align 8, !dbg !5740
  br label %for.cond, !dbg !5740, !llvm.loop !5758

for.end:                                          ; preds = %for.cond
  call void @rcu_read_unlock() #17, !dbg !5760
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5761
  br label %cleanup, !dbg !5761

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %led_cdev) #16, !dbg !5761
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5761

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_blink_oneshot(ptr noundef %trig, i64 noundef %delay_on, i64 noundef %delay_off, i32 noundef %invert) #0 align 16 !dbg !5762 {
entry:
  %trig.addr = alloca ptr, align 8
  %delay_on.addr = alloca i64, align 8
  %delay_off.addr = alloca i64, align 8
  %invert.addr = alloca i32, align 4
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5766, metadata !DIExpression()), !dbg !5770
  store i64 %delay_on, ptr %delay_on.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_on.addr, metadata !5767, metadata !DIExpression()), !dbg !5771
  store i64 %delay_off, ptr %delay_off.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay_off.addr, metadata !5768, metadata !DIExpression()), !dbg !5772
  store i32 %invert, ptr %invert.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %invert.addr, metadata !5769, metadata !DIExpression()), !dbg !5773
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !5774
  %1 = load i64, ptr %delay_on.addr, align 8, !dbg !5775
  %2 = load i64, ptr %delay_off.addr, align 8, !dbg !5776
  %3 = load i32, ptr %invert.addr, align 4, !dbg !5777
  call void @led_trigger_blink_setup(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef 1, i32 noundef %3) #17, !dbg !5778
  ret void, !dbg !5779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_register_simple(ptr noundef %name, ptr noundef %tp) #0 align 16 !dbg !5780 {
entry:
  %name.addr = alloca ptr, align 8
  %tp.addr = alloca ptr, align 8
  %trig = alloca ptr, align 8
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5784, metadata !DIExpression()), !dbg !5788
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !5785, metadata !DIExpression()), !dbg !5789
  call void @llvm.lifetime.start.p0(i64 8, ptr %trig) #16, !dbg !5790
  call void @llvm.dbg.declare(metadata ptr %trig, metadata !5786, metadata !DIExpression()), !dbg !5791
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5792
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5787, metadata !DIExpression()), !dbg !5793
  %call = call noalias ptr @kzalloc(i64 noundef 88, i32 noundef 3264) #19, !dbg !5794
  store ptr %call, ptr %trig, align 8, !dbg !5795
  %0 = load ptr, ptr %trig, align 8, !dbg !5796
  %tobool = icmp ne ptr %0, null, !dbg !5796
  br i1 %tobool, label %if.then, label %if.else, !dbg !5798

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %name.addr, align 8, !dbg !5799
  %2 = load ptr, ptr %trig, align 8, !dbg !5801
  %name1 = getelementptr inbounds %struct.led_trigger, ptr %2, i32 0, i32 0, !dbg !5802
  store ptr %1, ptr %name1, align 8, !dbg !5803
  %3 = load ptr, ptr %trig, align 8, !dbg !5804
  %call2 = call i32 @led_trigger_register(ptr noundef %3) #17, !dbg !5805
  store i32 %call2, ptr %err, align 4, !dbg !5806
  %4 = load i32, ptr %err, align 4, !dbg !5807
  %cmp = icmp slt i32 %4, 0, !dbg !5809
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5810

if.then3:                                         ; preds = %if.then
  %5 = load ptr, ptr %trig, align 8, !dbg !5811
  call void @kfree(ptr noundef %5) #17, !dbg !5813
  store ptr null, ptr %trig, align 8, !dbg !5814
  br label %do.body, !dbg !5815

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !5817

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5817

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %name.addr, align 8, !dbg !5815
  %7 = load i32, ptr %err, align 4, !dbg !5815
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %6, i32 noundef %7) #18, !dbg !5815
  store i32 %call4, ptr %tmp, align 4, !dbg !5817
  %8 = load i32, ptr %tmp, align 4, !dbg !5815
  br label %if.end, !dbg !5819

if.end:                                           ; preds = %do.end, %if.then
  br label %if.end10, !dbg !5820

if.else:                                          ; preds = %entry
  br label %do.body5, !dbg !5821

do.body5:                                         ; preds = %if.else
  br label %do.cond6, !dbg !5824

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5824

do.end7:                                          ; preds = %do.cond6
  %9 = load ptr, ptr %name.addr, align 8, !dbg !5821
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef @.str.6, ptr noundef %9) #18, !dbg !5821
  store i32 %call9, ptr %tmp8, align 4, !dbg !5824
  %10 = load i32, ptr %tmp8, align 4, !dbg !5821
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end
  %11 = load ptr, ptr %trig, align 8, !dbg !5826
  %12 = load ptr, ptr %tp.addr, align 8, !dbg !5827
  store ptr %11, ptr %12, align 8, !dbg !5828
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5829
  call void @llvm.lifetime.end.p0(i64 8, ptr %trig) #16, !dbg !5829
  ret void, !dbg !5829
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !5830 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5832, metadata !DIExpression()), !dbg !5834
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5833, metadata !DIExpression()), !dbg !5835
  %0 = load i64, ptr %size.addr, align 8, !dbg !5836
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5837
  %or = or i32 %1, 256, !dbg !5838
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #19, !dbg !5839
  ret ptr %call, !dbg !5840
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5841 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @led_trigger_unregister_simple(ptr noundef %trig) #0 align 16 !dbg !5845 {
entry:
  %trig.addr = alloca ptr, align 8
  store ptr %trig, ptr %trig.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %trig.addr, metadata !5847, metadata !DIExpression()), !dbg !5848
  %0 = load ptr, ptr %trig.addr, align 8, !dbg !5849
  %tobool = icmp ne ptr %0, null, !dbg !5849
  br i1 %tobool, label %if.then, label %if.end, !dbg !5851

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %trig.addr, align 8, !dbg !5852
  call void @led_trigger_unregister(ptr noundef %1) #17, !dbg !5853
  br label %if.end, !dbg !5853

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %trig.addr, align 8, !dbg !5854
  call void @kfree(ptr noundef %2) #17, !dbg !5855
  ret void, !dbg !5856
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @led_trigger_snprintf(ptr noundef %buf, i64 noundef %size, ptr noundef %fmt, ...) #0 align 16 !dbg !5857 {
entry:
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5861, metadata !DIExpression()), !dbg !5876
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5862, metadata !DIExpression()), !dbg !5877
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5863, metadata !DIExpression()), !dbg !5878
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #16, !dbg !5879
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5864, metadata !DIExpression()), !dbg !5880
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5881
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5875, metadata !DIExpression()), !dbg !5882
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5883
  call void @llvm.va_start(ptr %arraydecay), !dbg !5883
  %0 = load i64, ptr %size.addr, align 8, !dbg !5884
  %cmp = icmp sle i64 %0, 0, !dbg !5886
  br i1 %cmp, label %if.then, label %if.else, !dbg !5887

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fmt.addr, align 8, !dbg !5888
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5889
  %call = call i32 @vsnprintf(ptr noundef null, i64 noundef 0, ptr noundef %1, ptr noundef %arraydecay1) #17, !dbg !5890
  store i32 %call, ptr %i, align 4, !dbg !5891
  br label %if.end, !dbg !5892

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !5893
  %3 = load i64, ptr %size.addr, align 8, !dbg !5894
  %4 = load ptr, ptr %fmt.addr, align 8, !dbg !5895
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5896
  %call3 = call i32 @vscnprintf(ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %arraydecay2) #17, !dbg !5897
  store i32 %call3, ptr %i, align 4, !dbg !5898
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5899
  call void @llvm.va_end(ptr %arraydecay4), !dbg !5899
  %5 = load i32, ptr %i, align 4, !dbg !5900
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5901
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #16, !dbg !5901
  ret i32 %5, !dbg !5902
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5903 dso_local i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5907 dso_local i32 @vscnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5908 dso_local noalias ptr @kvmalloc_node(i64 noundef, i32 noundef, i32 noundef) #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5911 dso_local void @_raw_spin_lock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !5915 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5917, metadata !DIExpression()), !dbg !5918
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !5919
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !5921
  br i1 %call, label %if.end, label %if.then, !dbg !5922

if.then:                                          ; preds = %entry
  br label %return, !dbg !5923

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !5924
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5925
  %2 = load ptr, ptr %prev, align 8, !dbg !5925
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !5926
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5927
  %4 = load ptr, ptr %next, align 8, !dbg !5927
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !5928
  br label %return, !dbg !5929

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !5929
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !5930 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !5934, metadata !DIExpression()), !dbg !5935
  ret i1 true, !dbg !5936
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5937 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5939, metadata !DIExpression()), !dbg !5941
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5940, metadata !DIExpression()), !dbg !5942
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !5943
  %1 = load ptr, ptr %next.addr, align 8, !dbg !5944
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !5945
  store ptr %0, ptr %prev1, align 8, !dbg !5946
  br label %do.body, !dbg !5947

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5948

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !5950

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !5948

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5952
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !5952
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !5952
  store volatile ptr %2, ptr %next4, align 8, !dbg !5952
  br label %do.end5, !dbg !5952

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !5948

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !5954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5955 dso_local void @_raw_spin_unlock(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !5956 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !5960, metadata !DIExpression()), !dbg !5965
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !5961, metadata !DIExpression()), !dbg !5966
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !5962, metadata !DIExpression()), !dbg !5967
  %0 = load ptr, ptr %new.addr, align 8, !dbg !5968
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !5970
  %2 = load ptr, ptr %next.addr, align 8, !dbg !5971
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !5972
  br i1 %call, label %if.end, label %if.then, !dbg !5973

if.then:                                          ; preds = %entry
  br label %return, !dbg !5974

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !5975
  %4 = load ptr, ptr %new.addr, align 8, !dbg !5976
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !5977
  store ptr %3, ptr %next1, align 8, !dbg !5978
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !5979
  %6 = load ptr, ptr %new.addr, align 8, !dbg !5980
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !5981
  store ptr %5, ptr %prev2, align 8, !dbg !5982
  br label %do.body, !dbg !5983

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !5984
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !5963, metadata !DIExpression()), !dbg !5984
  %7 = load ptr, ptr %new.addr, align 8, !dbg !5984
  %8 = ptrtoint ptr %7 to i64, !dbg !5984
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !5984
  br i1 false, label %land.lhs.true, label %if.else, !dbg !5985

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !5985
  %cmp = icmp eq i64 %9, 0, !dbg !5985
  br i1 %cmp, label %if.then3, label %if.else, !dbg !5984

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !5985

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !5987

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5989

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5989

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5987

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !5991
  %11 = inttoptr i64 %10 to ptr, !dbg !5991
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !5991
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !5991
  store volatile ptr %11, ptr %next7, align 8, !dbg !5991
  br label %do.cond8, !dbg !5991

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !5991

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !5987

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !5987

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !5987

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !5985

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !5993

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !5995

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5995

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !5993

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !5997

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !5999

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5999

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !5997, !srcloc !6001
  br label %do.body20, !dbg !5997

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !6002

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !6004

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !6004

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !6002

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !6006
  %14 = inttoptr i64 %13 to ptr, !dbg !6006
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !6006
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !6006
  store volatile ptr %14, ptr %next25, align 8, !dbg !6006
  br label %do.cond26, !dbg !6006

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !6006

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !6002

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !6002

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !5997

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !5997

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !5993

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !5993

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !5983
  br label %do.end36, !dbg !5984

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !6008
  %17 = load ptr, ptr %next.addr, align 8, !dbg !6009
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !6010
  store ptr %16, ptr %prev37, align 8, !dbg !6011
  br label %return, !dbg !6012

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !6012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6013 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6017, metadata !DIExpression()), !dbg !6020
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6018, metadata !DIExpression()), !dbg !6021
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6019, metadata !DIExpression()), !dbg !6022
  ret i1 true, !dbg !6023
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !6024 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6026, metadata !DIExpression()), !dbg !6029
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6027, metadata !DIExpression()), !dbg !6030
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6028, metadata !DIExpression()), !dbg !6031
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6032
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6034
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6035
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6036
  br i1 %call, label %if.end, label %if.then, !dbg !6037

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6038

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6039
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6040
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6041
  store ptr %3, ptr %prev1, align 8, !dbg !6042
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6043
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6044
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6045
  store ptr %5, ptr %next2, align 8, !dbg !6046
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6047
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6048
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6049
  store ptr %7, ptr %prev3, align 8, !dbg !6050
  br label %do.body, !dbg !6051

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6052

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6054

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6052

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6056
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6056
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6056
  store volatile ptr %9, ptr %next6, align 8, !dbg !6056
  br label %do.end7, !dbg !6056

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6052

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_head(ptr noundef %list, ptr noundef %head) #3 align 16 !dbg !6059 {
entry:
  %list.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6063, metadata !DIExpression()), !dbg !6065
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6064, metadata !DIExpression()), !dbg !6066
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6067
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6068
  %cmp = icmp eq ptr %0, %1, !dbg !6069
  %conv = zext i1 %cmp to i32, !dbg !6069
  ret i32 %conv, !dbg !6070
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6071 dso_local void @__rcu_read_lock() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6072 dso_local void @__rcu_read_unlock() #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6073 dso_local void @led_blink_set_oneshot(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6076 dso_local void @led_blink_set_nosleep(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !6079 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6081, metadata !DIExpression()), !dbg !6086
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6082, metadata !DIExpression()), !dbg !6087
  %0 = load i64, ptr %size.addr, align 8, !dbg !6088
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6089
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6090

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6091
  %tobool = icmp ne i64 %2, 0, !dbg !6091
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6092

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6093
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6083, metadata !DIExpression()), !dbg !6094
  %3 = load i64, ptr %size.addr, align 8, !dbg !6095
  %cmp = icmp ugt i64 %3, 8192, !dbg !6097
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6098

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6099
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6100
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #19, !dbg !6101
  store ptr %call, ptr %retval, align 8, !dbg !6102
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6102

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6103
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6103
  store i32 %call2, ptr %index, align 4, !dbg !6104
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6105
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6106
  %9 = ptrtoint ptr %8 to i64, !dbg !6106
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6107
  %idxprom = zext i32 %call3 to i64, !dbg !6108
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6108
  %10 = load i32, ptr %index, align 4, !dbg !6109
  %idxprom4 = zext i32 %10 to i64, !dbg !6108
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6108
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6108
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6110
  %13 = load i64, ptr %size.addr, align 8, !dbg !6111
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6112
  store ptr %call6, ptr %retval, align 8, !dbg !6113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6113

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6114
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6115
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6116
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #19, !dbg !6117
  store ptr %call8, ptr %retval, align 8, !dbg !6118
  br label %return, !dbg !6118

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6119
  ret ptr %16, !dbg !6119
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6120 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !6121 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6125, metadata !DIExpression()), !dbg !6127
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6126, metadata !DIExpression()), !dbg !6128
  %0 = load i64, ptr %size.addr, align 8, !dbg !6129
  %tobool = icmp ne i64 %0, 0, !dbg !6129
  br i1 %tobool, label %if.end, label %if.then, !dbg !6131

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6132
  br label %return, !dbg !6132

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6133
  %cmp = icmp ule i64 %1, 8, !dbg !6135
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6136

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6137
  br label %return, !dbg !6137

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6138
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6140
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6141

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6142
  %cmp4 = icmp ule i64 %3, 96, !dbg !6143
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6144

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6145
  br label %return, !dbg !6145

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6146
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6148
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6149

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6150
  %cmp9 = icmp ule i64 %5, 192, !dbg !6151
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6152

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6153
  br label %return, !dbg !6153

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6154
  %cmp12 = icmp ule i64 %6, 8, !dbg !6156
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6157

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6158
  br label %return, !dbg !6158

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6159
  %cmp15 = icmp ule i64 %7, 16, !dbg !6161
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6162

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6163
  br label %return, !dbg !6163

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6164
  %cmp18 = icmp ule i64 %8, 32, !dbg !6166
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6167

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6168
  br label %return, !dbg !6168

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6169
  %cmp21 = icmp ule i64 %9, 64, !dbg !6171
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6172

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6173
  br label %return, !dbg !6173

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6174
  %cmp24 = icmp ule i64 %10, 128, !dbg !6176
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6177

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6178
  br label %return, !dbg !6178

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6179
  %cmp27 = icmp ule i64 %11, 256, !dbg !6181
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6182

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6183
  br label %return, !dbg !6183

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6184
  %cmp30 = icmp ule i64 %12, 512, !dbg !6186
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6187

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6188
  br label %return, !dbg !6188

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6189
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6191
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6192

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6193
  br label %return, !dbg !6193

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6194
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6196
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6197

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6198
  br label %return, !dbg !6198

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6199
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6201
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6202

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6203
  br label %return, !dbg !6203

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6204
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6206
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6207

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6208
  br label %return, !dbg !6208

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6209
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6211
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6212

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6213
  br label %return, !dbg !6213

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6214
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6216
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6217

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6218
  br label %return, !dbg !6218

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6219
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6221
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6222

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6223
  br label %return, !dbg !6223

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6224
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6226
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6227

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6228
  br label %return, !dbg !6228

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6229
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6231
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6232

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6233
  br label %return, !dbg !6233

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6234
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6236
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6237

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6238
  br label %return, !dbg !6238

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6239
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6241
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6242

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6243
  br label %return, !dbg !6243

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6244
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6246
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6247

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6248
  br label %return, !dbg !6248

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6249, !range !5157, !noundef !901
  %tobool69 = trunc i8 %25 to i1, !dbg !6249
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6251

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6252

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #21, !dbg !6253, !srcloc !6256
  unreachable, !dbg !6253

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6257

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6258

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6259

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6261

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6259

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.14, i32 480, i32 0, i64 12) #16, !dbg !6263, !srcloc !6265
  br label %do.end75, !dbg !6263

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6259

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6266
  br label %return, !dbg !6266

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6267
  ret i32 %26, !dbg !6267
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6268 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !6274 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6278, metadata !DIExpression()), !dbg !6280
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6279, metadata !DIExpression()), !dbg !6281
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6282
  %and = and i32 %0, 17, !dbg !6282
  %cmp = icmp eq i32 %and, 0, !dbg !6282
  %lnot = xor i1 %cmp, true, !dbg !6282
  %lnot1 = xor i1 %lnot, true, !dbg !6282
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6282
  %conv = sext i32 %lnot.ext to i64, !dbg !6282
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6282
  %tobool = icmp ne i64 %expval, 0, !dbg !6282
  br i1 %tobool, label %if.then, label %if.end, !dbg !6284

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6285
  br label %return, !dbg !6285

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6286
  %and2 = and i32 %1, 1, !dbg !6288
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6288
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6289

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6290
  br label %return, !dbg !6290

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6291
  br label %return, !dbg !6291

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6293
  ret i32 %2, !dbg !6293
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6294 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6295 dso_local void @__compiletime_assert_204() #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(0) }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653}
!llvm.ident = !{!4654}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "trigger_list", scope: !2, file: !3, line: 26, type: !186, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/leds/.led-triggers.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/leds/led-triggers\22 -D KBUILD_BASENAME=\22led_triggers\22 -D KBUILD_MODNAME=\22led_triggers\22 -D __KBUILD_MODNAME=kmod_led_triggers -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/leds/led-triggers.ll drivers/leds/led-triggers.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !174, globals: !4556, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/leds/led-triggers.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "346e54139354e97949d3b395551afceb")
!4 = !{!5, !14, !21, !29, !45, !52, !58, !63, !69, !74, !80, !87, !93, !100, !108, !116, !125, !130, !135, !141, !148, !153, !164}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!27 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !70, line: 65, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!73 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
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
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !88, line: 45, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!91 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!92 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !94, line: 487, baseType: !7, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!95 = !{!96, !97, !98, !99}
!96 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!97 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!98 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!99 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !101, line: 620, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!102 = !{!103, !104, !105, !106, !107}
!103 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!104 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!105 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!106 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!107 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !101, line: 597, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !{!111, !112, !113, !114, !115}
!111 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!112 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!113 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!114 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!115 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!116 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !94, line: 547, baseType: !7, size: 32, elements: !117)
!117 = !{!118, !119, !120, !121, !122, !123, !124}
!118 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!119 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!120 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!121 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!122 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!123 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!124 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !94, line: 564, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!128 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!129 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !94, line: 577, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!133 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!134 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !94, line: 503, baseType: !7, size: 32, elements: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!138 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!139 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!140 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "led_brightness", file: !142, line: 33, baseType: !7, size: 32, elements: !143)
!142 = !DIFile(filename: "./include/linux/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7523bb9fe581d1ba7d85feff7bf8fa4d")
!143 = !{!144, !145, !146, !147}
!144 = !DIEnumerator(name: "LED_OFF", value: 0)
!145 = !DIEnumerator(name: "LED_ON", value: 1)
!146 = !DIEnumerator(name: "LED_HALF", value: 127)
!147 = !DIEnumerator(name: "LED_FULL", value: 255)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !149, line: 10, baseType: !7, size: 32, elements: !150)
!149 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!150 = !{!151, !152}
!151 = !DIEnumerator(name: "false", value: 0)
!152 = !DIEnumerator(name: "true", value: 1)
!153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !154, line: 53, baseType: !7, size: 32, elements: !155)
!154 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163}
!156 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!157 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!158 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!159 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!160 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!161 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!162 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!163 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!164 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !165, line: 364, baseType: !7, size: 32, elements: !166)
!165 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!166 = !{!167, !168, !169, !170, !171, !172, !173}
!167 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!168 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!169 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!170 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!171 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!172 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!173 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!174 = !{!175, !342, !4457, !1126, !4465, !4549, !4552, !4553, !190, !4554, !4555, !320}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !94, line: 705, size: 5824, elements: !177)
!177 = !{!178, !4112, !4113, !4116, !4117, !4170, !4240, !4241, !4242, !4243, !4244, !4251, !4343, !4356, !4366, !4370, !4372, !4373, !4374, !4378, !4385, !4386, !4389, !4392, !4396, !4399, !4400, !4401, !4402, !4403, !4404, !4434, !4435, !4436, !4439, !4442, !4451, !4452, !4453, !4454, !4455, !4456}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !176, file: !94, line: 706, baseType: !179, size: 512)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !154, line: 64, size: 512, elements: !180)
!180 = !{!181, !185, !192, !194, !283, !3999, !4102, !4107, !4108, !4109, !4110, !4111}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !179, file: !154, line: 65, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !179, file: !154, line: 66, baseType: !186, size: 128, offset: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !187, line: 190, size: 128, elements: !188)
!187 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!188 = !{!189, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !186, file: !187, line: 191, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !186, file: !187, line: 191, baseType: !190, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !179, file: !154, line: 67, baseType: !193, size: 64, offset: 192)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !179, file: !154, line: 68, baseType: !195, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !154, line: 168, size: 768, elements: !197)
!197 = !{!198, !199, !242, !243}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !196, file: !154, line: 169, baseType: !186, size: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !196, file: !154, line: 170, baseType: !200, size: 32, offset: 128)
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
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !187, line: 174, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 172, size: 32, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !221, file: !187, line: 173, baseType: !109, size: 32)
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
!242 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !196, file: !154, line: 171, baseType: !179, size: 512, offset: 192)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !196, file: !154, line: 172, baseType: !244, size: 64, offset: 704)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !154, line: 133, size: 192, elements: !247)
!247 = !{!248, !255, !260}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !246, file: !154, line: 134, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!109, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !246, file: !154, line: 135, baseType: !256, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!182, !253}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !246, file: !154, line: 136, baseType: !261, size: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!109, !253, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !154, line: 125, size: 20736, elements: !267)
!267 = !{!268, !273, !277, !278, !282}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !266, file: !154, line: 126, baseType: !269, size: 192)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 192, elements: !271)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!271 = !{!272}
!272 = !DISubrange(count: 3)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !266, file: !154, line: 127, baseType: !274, size: 4096, offset: 192)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 4096, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !266, file: !154, line: 128, baseType: !109, size: 32, offset: 4288)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !266, file: !154, line: 129, baseType: !279, size: 16384, offset: 4320)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 16384, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 2048)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !266, file: !154, line: 130, baseType: !109, size: 32, offset: 20704)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !179, file: !154, line: 69, baseType: !284, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !154, line: 116, size: 384, elements: !287)
!287 = !{!288, !292, !321, !3961, !3989, !3993}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !286, file: !154, line: 117, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{null, !193}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !286, file: !154, line: 118, baseType: !293, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !296, line: 254, size: 128, elements: !297)
!296 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!297 = !{!298, !313}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !295, file: !296, line: 255, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !193, !307, !270}
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !187, line: 66, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !304, line: 73, baseType: !305)
!304 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !304, line: 15, baseType: !306)
!306 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !296, line: 30, size: 128, elements: !309)
!309 = !{!310, !311}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !296, line: 31, baseType: !182, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !308, file: !296, line: 32, baseType: !312, size: 16, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !187, line: 24, baseType: !240)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !295, file: !296, line: 256, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!302, !193, !307, !182, !317}
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 61, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !304, line: 72, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !304, line: 16, baseType: !320)
!320 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !286, file: !154, line: 119, baseType: !322, size: 64, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !296, line: 84, size: 320, elements: !326)
!326 = !{!327, !328, !332, !3957, !3959}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !325, file: !296, line: 85, baseType: !182, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !325, file: !296, line: 86, baseType: !329, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!312, !193, !307, !109}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !325, file: !296, line: 88, baseType: !333, size: 64, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!312, !193, !336, !109}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !296, line: 175, size: 512, elements: !338)
!338 = !{!339, !340, !341, !343, !3948, !3952, !3953}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !337, file: !296, line: 176, baseType: !308, size: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !337, file: !296, line: 177, baseType: !317, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !337, file: !296, line: 178, baseType: !342, size: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !337, file: !296, line: 179, baseType: !344, size: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !349)
!349 = !{!350, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3942, !3943, !3944, !3945, !3946, !3947}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !348, file: !59, line: 473, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !353)
!353 = !{!354, !355, !356, !364, !365, !372, !373, !376, !377, !3720, !3721, !3722, !3723, !3724, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3748, !3753, !3754, !3755, !3756, !3757, !3758, !3759, !3764, !3767, !3768, !3769, !3778, !3779, !3780, !3781}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !352, file: !59, line: 642, baseType: !312, size: 16)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !352, file: !59, line: 643, baseType: !240, size: 16, offset: 16)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !352, file: !59, line: 644, baseType: !357, size: 32, offset: 32)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !358, line: 23, baseType: !359)
!358 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 21, size: 32, elements: !360)
!360 = !{!361}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !359, file: !358, line: 22, baseType: !362, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !187, line: 37, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !304, line: 49, baseType: !7)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !352, file: !59, line: 645, baseType: !186, size: 128, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !352, file: !59, line: 646, baseType: !366, size: 32, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !358, line: 28, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !358, line: 26, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !367, file: !358, line: 27, baseType: !370, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !187, line: 38, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !304, line: 50, baseType: !7)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !352, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !352, file: !59, line: 650, baseType: !374, size: 64, offset: 256)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !352, file: !59, line: 651, baseType: !374, size: 64, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !352, file: !59, line: 654, baseType: !378, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !381)
!381 = !{!382, !3548, !3558, !3562, !3566, !3570, !3574, !3578, !3582, !3586, !3590, !3591, !3595, !3599, !3636, !3665, !3669, !3675, !3679, !3683, !3687, !3691, !3695, !3701, !3705}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !380, file: !59, line: 1967, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!386, !351, !386, !7}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !388, line: 82, size: 1536, elements: !389)
!388 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!389 = !{!390, !391, !401, !409, !410, !430, !431, !435, !448, !3531, !3532, !3533, !3534, !3540, !3541, !3542}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !387, file: !388, line: 84, baseType: !7, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !387, file: !388, line: 85, baseType: !392, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !393, line: 275, baseType: !394)
!393 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !393, line: 275, size: 32, elements: !395)
!395 = !{!396}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !394, file: !393, line: 275, baseType: !397, size: 32)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !393, line: 69, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !393, line: 64, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !398, file: !393, line: 65, baseType: !7, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !387, file: !388, line: 86, baseType: !402, size: 128, offset: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !403, line: 38, size: 128, elements: !404)
!403 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!404 = !{!405, !407}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !402, file: !403, line: 39, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !402, file: !403, line: 39, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !387, file: !388, line: 87, baseType: !386, size: 64, offset: 192)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !387, file: !388, line: 88, baseType: !411, size: 128, offset: 256)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !388, line: 49, size: 128, elements: !412)
!412 = !{!413, !427}
!413 = !DIDerivedType(tag: DW_TAG_member, scope: !411, file: !388, line: 50, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !411, file: !388, line: 50, size: 64, elements: !415)
!415 = !{!416, !423}
!416 = !DIDerivedType(tag: DW_TAG_member, scope: !414, file: !388, line: 51, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !414, file: !388, line: 51, size: 64, elements: !418)
!418 = !{!419, !422}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !417, file: !388, line: 52, baseType: !420, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !229, line: 21, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !231, line: 27, baseType: !7)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !417, file: !388, line: 52, baseType: !420, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !414, file: !388, line: 54, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !229, line: 23, baseType: !425)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !231, line: 31, baseType: !426)
!426 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !411, file: !388, line: 56, baseType: !428, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !387, file: !388, line: 89, baseType: !351, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !387, file: !388, line: 91, baseType: !432, size: 256, offset: 448)
!432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !433)
!433 = !{!434}
!434 = !DISubrange(count: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !387, file: !388, line: 94, baseType: !436, size: 64, offset: 704)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !437, line: 25, size: 64, elements: !438)
!437 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, scope: !436, file: !437, line: 26, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !436, file: !437, line: 26, size: 64, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !440, file: !437, line: 28, baseType: !425, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !437, line: 30, baseType: !444, size: 64)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !437, line: 30, size: 64, elements: !445)
!445 = !{!446, !447}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !444, file: !437, line: 31, baseType: !200, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !444, file: !437, line: 32, baseType: !109, size: 32, offset: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !387, file: !388, line: 95, baseType: !449, size: 64, offset: 768)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !388, line: 128, size: 1024, align: 512, elements: !452)
!452 = !{!453, !457, !458, !465, !471, !475, !479, !483, !484, !488, !492, !3521, !3525}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !451, file: !388, line: 129, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!109, !386, !7}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !451, file: !388, line: 130, baseType: !454, size: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !451, file: !388, line: 131, baseType: !459, size: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!109, !462, !464}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !451, file: !388, line: 132, baseType: !466, size: 64, offset: 192)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!109, !462, !7, !182, !469}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !411)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !451, file: !388, line: 134, baseType: !472, size: 64, offset: 256)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!109, !462}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !451, file: !388, line: 135, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!109, !386}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !451, file: !388, line: 136, baseType: !480, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !386}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !451, file: !388, line: 137, baseType: !480, size: 64, offset: 448)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !451, file: !388, line: 138, baseType: !485, size: 64, offset: 512)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{null, !386, !351}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !451, file: !388, line: 139, baseType: !489, size: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!270, !386, !270, !109}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !451, file: !388, line: 140, baseType: !493, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !3520}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !498, line: 70, size: 256, elements: !499)
!498 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!499 = !{!500, !501, !3516, !3517}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !497, file: !498, line: 71, baseType: !386, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !497, file: !498, line: 72, baseType: !502, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !504)
!504 = !{!505, !506, !509, !510, !511, !515, !995, !1135, !1175, !1265, !1269, !1270, !1271, !1272, !1273, !1282, !1283, !1284, !1285, !1290, !1294, !1295, !1298, !1301, !1304, !1307, !1308, !1309, !1350, !3449, !3450, !3451, !3452, !3453, !3454, !3457, !3459, !3466, !3467, !3468, !3469, !3470, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3492, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514, !3515}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !503, file: !59, line: 1191, baseType: !186, size: 128)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !503, file: !59, line: 1192, baseType: !507, size: 32, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !187, line: 21, baseType: !508)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !187, line: 18, baseType: !420)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !503, file: !59, line: 1193, baseType: !232, size: 8, offset: 160)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !503, file: !59, line: 1194, baseType: !320, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !503, file: !59, line: 1195, baseType: !512, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !187, line: 52, baseType: !513)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !304, line: 88, baseType: !514)
!514 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !503, file: !59, line: 1196, baseType: !516, size: 64, offset: 320)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !518)
!518 = !{!519, !520, !521, !528, !532, !536, !540, !980, !981, !985, !987, !988, !989, !991, !992, !993, !994}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !517, file: !59, line: 2367, baseType: !182, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !517, file: !59, line: 2368, baseType: !109, size: 32, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !517, file: !59, line: 2376, baseType: !522, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DISubroutineType(types: !524)
!524 = !{!109, !525}
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !527, line: 32, flags: DIFlagFwdDecl)
!527 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!528 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !517, file: !59, line: 2377, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !531)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !517, file: !59, line: 2378, baseType: !533, size: 64, offset: 256)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!386, !516, !109, !182, !342}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !517, file: !59, line: 2380, baseType: !537, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !502}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !517, file: !59, line: 2381, baseType: !541, size: 64, offset: 384)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !543)
!543 = !{!544, !545, !546, !550, !572, !598, !599, !600, !601, !605, !610, !611, !631, !687, !688, !689, !690, !691, !694, !695, !696, !704, !708, !735, !756, !757, !758, !759, !768, !791, !792, !795, !798, !799, !800, !801, !802, !803, !804, !809, !810, !938, !946, !947, !948, !950, !954, !955, !959, !960, !961, !962, !964, !965, !966, !973, !974, !975, !979}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !542, file: !15, line: 403, baseType: !14, size: 32)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !542, file: !15, line: 406, baseType: !186, size: 128, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !542, file: !15, line: 409, baseType: !547, size: 448, offset: 192)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 448, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 56)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !542, file: !15, line: 417, baseType: !551, size: 768, offset: 640)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !552)
!552 = !{!553, !554, !555, !556, !559}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !551, file: !15, line: 46, baseType: !179, size: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !551, file: !15, line: 47, baseType: !541, size: 64, offset: 512)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !551, file: !15, line: 48, baseType: !193, size: 64, offset: 576)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !551, file: !15, line: 49, baseType: !557, size: 64, offset: 640)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !551, file: !15, line: 50, baseType: !560, size: 64, offset: 704)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !562, line: 26, size: 256, elements: !563)
!562 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!563 = !{!564, !565}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !561, file: !562, line: 27, baseType: !7, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !561, file: !562, line: 28, baseType: !566, size: 192, offset: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !567, line: 43, size: 192, elements: !568)
!567 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!568 = !{!569, !571}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !566, file: !567, line: 44, baseType: !570, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !209, line: 23, baseType: !208)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !566, file: !567, line: 45, baseType: !186, size: 128, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !542, file: !15, line: 418, baseType: !573, size: 64, offset: 1408)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !575)
!575 = !{!576, !577, !582, !586, !590, !594}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !574, file: !15, line: 54, baseType: !308, size: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !574, file: !15, line: 55, baseType: !578, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!302, !573, !581, !270}
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !574, file: !15, line: 57, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!302, !573, !581, !182, !317}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !574, file: !15, line: 59, baseType: !587, size: 64, offset: 256)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !541, !182}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !574, file: !15, line: 60, baseType: !591, size: 64, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!109, !541}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !574, file: !15, line: 61, baseType: !595, size: 64, offset: 384)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !541}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !542, file: !15, line: 419, baseType: !182, size: 64, offset: 1472)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !542, file: !15, line: 420, baseType: !182, size: 64, offset: 1536)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !542, file: !15, line: 421, baseType: !193, size: 64, offset: 1600)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !542, file: !15, line: 424, baseType: !602, size: 64, offset: 1664)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !542, file: !15, line: 425, baseType: !606, size: 64, offset: 1728)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !229, line: 20, baseType: !609)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !231, line: 26, baseType: !109)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !542, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !542, file: !15, line: 435, baseType: !612, size: 256, offset: 1856)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !613, line: 66, size: 256, elements: !614)
!613 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!614 = !{!615, !624, !625, !630}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !612, file: !613, line: 67, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !617, line: 13, baseType: !618)
!617 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !187, line: 181, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !187, line: 179, size: 64, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !619, file: !187, line: 180, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !229, line: 22, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !231, line: 30, baseType: !514)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !612, file: !613, line: 68, baseType: !570, size: 32, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !612, file: !613, line: 70, baseType: !626, size: 32, offset: 96)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !627, line: 15, size: 32, elements: !628)
!627 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !626, file: !627, line: 20, baseType: !220, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !612, file: !613, line: 72, baseType: !186, size: 128, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !542, file: !15, line: 437, baseType: !632, size: 64, offset: 2112)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !634, line: 69, size: 320, elements: !635)
!634 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!635 = !{!636, !637, !638, !658, !660, !664, !665}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !634, line: 70, baseType: !182, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !633, file: !634, line: 71, baseType: !541, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !633, file: !634, line: 72, baseType: !639, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !634, line: 47, size: 256, elements: !642)
!642 = !{!643, !644, !650, !654}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !641, file: !634, line: 49, baseType: !7, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !641, file: !634, line: 51, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!109, !182, !648}
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !641, file: !634, line: 53, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!109, !270, !648}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !641, file: !634, line: 55, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{null, !342}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !633, file: !634, line: 73, baseType: !659, size: 16, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !633, file: !634, line: 74, baseType: !661, size: 8, offset: 208)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !229, line: 16, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !231, line: 20, baseType: !663)
!663 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !634, line: 75, baseType: !228, size: 8, offset: 216)
!665 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !634, line: 76, baseType: !666, size: 64, offset: 256)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !634, line: 76, size: 64, elements: !667)
!667 = !{!668, !669, !676}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !666, file: !634, line: 77, baseType: !342, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !666, file: !634, line: 78, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !634, line: 86, size: 128, elements: !673)
!673 = !{!674, !675}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !672, file: !634, line: 87, baseType: !7, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !672, file: !634, line: 88, baseType: !270, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !666, file: !634, line: 79, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !634, line: 92, size: 256, elements: !680)
!680 = !{!681, !682, !683, !685, !686}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !679, file: !634, line: 94, baseType: !7, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !679, file: !634, line: 95, baseType: !7, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !679, file: !634, line: 96, baseType: !684, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !679, file: !634, line: 97, baseType: !639, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !679, file: !634, line: 98, baseType: !342, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !542, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !542, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !542, file: !15, line: 442, baseType: !602, size: 64, offset: 2240)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !542, file: !15, line: 443, baseType: !606, size: 64, offset: 2304)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !542, file: !15, line: 444, baseType: !692, size: 8, offset: 2368)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !187, line: 35, baseType: !693)
!693 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !542, file: !15, line: 451, baseType: !692, size: 8, offset: 2376)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !542, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !542, file: !15, line: 455, baseType: !697, size: 64, offset: 2432)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !699, line: 23, size: 96, elements: !700)
!699 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!700 = !{!701, !702, !703}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !698, file: !699, line: 24, baseType: !109, size: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !698, file: !699, line: 24, baseType: !109, size: 32, offset: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !698, file: !699, line: 24, baseType: !109, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !542, file: !15, line: 458, baseType: !705, size: 64, offset: 2496)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!706 = !DISubroutineType(types: !707)
!707 = !{!109}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !542, file: !15, line: 460, baseType: !709, size: 4032, align: 512, offset: 2560)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !710, size: 4032, elements: !733)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !711)
!711 = !{!712, !713, !714}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !710, file: !15, line: 363, baseType: !342, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !710, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !710, file: !15, line: 367, baseType: !715, size: 448, offset: 128)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !715, file: !15, line: 320, baseType: !541, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !15, line: 321, baseType: !719, size: 384, offset: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !720, line: 40, size: 384, elements: !721)
!720 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !719, file: !720, line: 41, baseType: !723, size: 384, align: 64)
!723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 384, align: 64, elements: !731)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !725, line: 5, size: 192, align: 64, elements: !726)
!725 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!726 = !{!727, !728, !730}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !724, file: !725, line: 6, baseType: !320, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !724, file: !725, line: 7, baseType: !729, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !724, file: !725, line: 8, baseType: !729, size: 64, offset: 128)
!731 = !{!732}
!732 = !DISubrange(count: 2)
!733 = !{!734}
!734 = !DISubrange(count: 7)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !542, file: !15, line: 463, baseType: !736, size: 192, offset: 6592)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !737, line: 8, size: 192, elements: !738)
!737 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!738 = !{!739, !740, !742}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !736, file: !737, line: 10, baseType: !7, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !736, file: !737, line: 11, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !736, file: !737, line: 12, baseType: !743, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !745, line: 59, size: 48, elements: !746)
!745 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!746 = !{!747, !751, !752, !753, !754, !755}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !744, file: !745, line: 60, baseType: !748, size: 16)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !229, line: 18, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !231, line: 23, baseType: !750)
!750 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !744, file: !745, line: 61, baseType: !748, size: 16, offset: 16)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !744, file: !745, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !744, file: !745, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !744, file: !745, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !744, file: !745, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !542, file: !15, line: 465, baseType: !320, size: 64, offset: 6784)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !542, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !542, file: !15, line: 470, baseType: !186, size: 128, offset: 6912)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !542, file: !15, line: 471, baseType: !760, size: 64, offset: 7040)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !762, line: 33, size: 96, elements: !763)
!762 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!763 = !{!764, !765, !766, !767}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !761, file: !762, line: 37, baseType: !109, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !761, file: !762, line: 43, baseType: !109, size: 32, offset: 32)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !761, file: !762, line: 45, baseType: !240, size: 16, offset: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !761, file: !762, line: 47, baseType: !240, size: 16, offset: 80)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !542, file: !15, line: 476, baseType: !769, size: 64, offset: 7104)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !771)
!771 = !{!772, !788, !789, !790}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !770, file: !15, line: 379, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !775, line: 204, baseType: !776)
!775 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !775, line: 197, size: 192, elements: !777)
!777 = !{!778, !780, !781, !782, !784, !786}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !776, file: !775, line: 198, baseType: !779, size: 32)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !775, line: 21, baseType: !421)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !776, file: !775, line: 199, baseType: !232, size: 8, offset: 32)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !776, file: !775, line: 200, baseType: !232, size: 8, offset: 40)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !776, file: !775, line: 201, baseType: !783, size: 16, offset: 48)
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !775, line: 17, baseType: !239)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !776, file: !775, line: 202, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !775, line: 16, baseType: !425)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !776, file: !775, line: 203, baseType: !787, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !775, line: 22, baseType: !425)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !770, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !770, file: !15, line: 381, baseType: !270, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !770, file: !15, line: 382, baseType: !270, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !542, file: !15, line: 477, baseType: !770, size: 256, offset: 7168)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !542, file: !15, line: 480, baseType: !793, size: 64, offset: 7424)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !542, file: !15, line: 483, baseType: !796, size: 64, offset: 7488)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !542, file: !15, line: 488, baseType: !270, size: 64, offset: 7552)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !542, file: !15, line: 492, baseType: !342, size: 64, offset: 7616)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !542, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !542, file: !15, line: 495, baseType: !342, size: 64, offset: 7744)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !542, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !542, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !542, file: !15, line: 500, baseType: !805, size: 64, offset: 7872)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !807, line: 45, baseType: !808)
!807 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !542, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !542, file: !15, line: 504, baseType: !811, size: 64, offset: 8000)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !814, line: 96, size: 192, elements: !815)
!814 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!815 = !{!816, !817, !898, !902}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !813, file: !814, line: 97, baseType: !7, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !813, file: !814, line: 98, baseType: !818, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !819, size: 64)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !814, line: 24, size: 3072, elements: !820)
!820 = !{!821, !823, !824, !825, !826, !850, !851, !852, !853, !871, !883, !884, !895, !896, !897}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !819, file: !814, line: 26, baseType: !822, size: 128)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 128, elements: !731)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !819, file: !814, line: 27, baseType: !822, size: 128, offset: 128)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !819, file: !814, line: 28, baseType: !109, size: 32, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !819, file: !814, line: 31, baseType: !200, size: 32, align: 512, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !819, file: !814, line: 32, baseType: !827, size: 960, offset: 576)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !828, line: 206, size: 960, elements: !829)
!828 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!829 = !{!830, !839, !844, !846, !847, !849}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !827, file: !828, line: 207, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !187, line: 232, size: 128, align: 64, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !832, file: !187, line: 233, baseType: !831, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !832, file: !187, line: 234, baseType: !836, size: 64, offset: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !831}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !827, file: !828, line: 208, baseType: !840, size: 256, offset: 64)
!840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !841, size: 256, elements: !842)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!842 = !{!843}
!843 = !DISubrange(count: 4)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !827, file: !828, line: 209, baseType: !845, size: 256, offset: 320)
!845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 256, elements: !842)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !827, file: !828, line: 213, baseType: !306, size: 64, offset: 576)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !827, file: !828, line: 215, baseType: !848, size: 256, offset: 640)
!848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !306, size: 256, elements: !842)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !828, line: 216, baseType: !228, size: 8, offset: 896)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !819, file: !814, line: 33, baseType: !320, size: 64, offset: 1536)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !819, file: !814, line: 34, baseType: !320, size: 64, offset: 1600)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !819, file: !814, line: 35, baseType: !692, size: 8, offset: 1664)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !819, file: !814, line: 36, baseType: !854, size: 320, offset: 1728)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !855, line: 11, size: 320, elements: !856)
!855 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!856 = !{!857, !864, !865, !870}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !854, file: !855, line: 16, baseType: !858, size: 128)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !187, line: 198, size: 128, elements: !859)
!859 = !{!860, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !858, file: !187, line: 199, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !858, file: !187, line: 199, baseType: !863, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !854, file: !855, line: 17, baseType: !320, size: 64, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !854, file: !855, line: 18, baseType: !866, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{null, !869}
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !854, file: !855, line: 19, baseType: !420, size: 32, offset: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !819, file: !814, line: 37, baseType: !872, size: 256, offset: 2048)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !873, line: 98, size: 256, elements: !874)
!873 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!874 = !{!875, !876, !877}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !872, file: !873, line: 99, baseType: !616, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !872, file: !873, line: 100, baseType: !186, size: 128, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !872, file: !873, line: 101, baseType: !878, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !873, line: 21, baseType: !879)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{null, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !819, file: !814, line: 38, baseType: !832, size: 128, align: 64, offset: 2304)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !819, file: !814, line: 39, baseType: !885, size: 64, offset: 2432)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !814, line: 49, size: 768, elements: !887)
!887 = !{!888, !889, !890, !891, !892, !893, !894}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !886, file: !814, line: 50, baseType: !200, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !886, file: !814, line: 51, baseType: !845, size: 256, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !886, file: !814, line: 53, baseType: !845, size: 256, offset: 320)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !886, file: !814, line: 54, baseType: !320, size: 64, offset: 576)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !886, file: !814, line: 55, baseType: !885, size: 64, offset: 640)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !886, file: !814, line: 56, baseType: !109, size: 32, offset: 704)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !886, file: !814, line: 57, baseType: !109, size: 32, offset: 736)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !819, file: !814, line: 40, baseType: !320, size: 64, offset: 2496)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !819, file: !814, line: 42, baseType: !109, size: 32, offset: 2560)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !819, file: !814, line: 43, baseType: !812, size: 64, offset: 2624)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !813, file: !814, line: 99, baseType: !899, offset: 128)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !900, line: 211, elements: !901)
!900 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!901 = !{}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !813, file: !814, line: 100, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !814, line: 63, size: 3008, elements: !905)
!905 = !{!906, !907, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !937}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !904, file: !814, line: 64, baseType: !885, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !904, file: !814, line: 65, baseType: !908, size: 192, offset: 64)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 192, elements: !271)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !904, file: !814, line: 67, baseType: !109, size: 32, offset: 256)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !904, file: !814, line: 68, baseType: !612, size: 256, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !904, file: !814, line: 69, baseType: !200, size: 32, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !904, file: !814, line: 70, baseType: !612, size: 256, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !904, file: !814, line: 71, baseType: !320, size: 64, offset: 896)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !904, file: !814, line: 72, baseType: !320, size: 64, offset: 960)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !904, file: !814, line: 73, baseType: !320, size: 64, offset: 1024)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !904, file: !814, line: 74, baseType: !320, size: 64, offset: 1088)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !904, file: !814, line: 75, baseType: !320, size: 64, offset: 1152)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !904, file: !814, line: 76, baseType: !320, size: 64, offset: 1216)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !904, file: !814, line: 77, baseType: !320, size: 64, offset: 1280)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !904, file: !814, line: 78, baseType: !320, size: 64, offset: 1344)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !904, file: !814, line: 79, baseType: !692, size: 8, offset: 1408)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !904, file: !814, line: 80, baseType: !320, size: 64, offset: 1472)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !904, file: !814, line: 81, baseType: !612, size: 256, offset: 1536)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !904, file: !814, line: 82, baseType: !561, size: 256, offset: 1792)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !904, file: !814, line: 84, baseType: !220, size: 32, offset: 2048)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !904, file: !814, line: 87, baseType: !320, size: 64, offset: 2112)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !904, file: !814, line: 88, baseType: !320, size: 64, offset: 2176)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !904, file: !814, line: 89, baseType: !929, size: 704, offset: 2240)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !873, line: 111, size: 704, elements: !930)
!930 = !{!931, !932, !933, !936}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !929, file: !873, line: 112, baseType: !872, size: 256)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !929, file: !873, line: 113, baseType: !854, size: 320, offset: 256)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !929, file: !873, line: 116, baseType: !934, size: 64, offset: 576)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !873, line: 18, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !929, file: !873, line: 117, baseType: !109, size: 32, offset: 640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !904, file: !814, line: 90, baseType: !812, size: 64, offset: 2944)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !542, file: !15, line: 515, baseType: !939, size: 64, offset: 8064)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !941, line: 117, size: 128, elements: !942)
!941 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!942 = !{!943, !944, !945}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !940, file: !941, line: 118, baseType: !608, size: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !940, file: !941, line: 119, baseType: !608, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !940, file: !941, line: 120, baseType: !306, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !542, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !542, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !542, file: !15, line: 520, baseType: !949, size: 64, offset: 8192)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !542, file: !15, line: 523, baseType: !951, size: 64, offset: 8256)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !542, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !542, file: !15, line: 525, baseType: !956, size: 64, offset: 8384)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !542, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !542, file: !15, line: 533, baseType: !342, size: 64, offset: 8512)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !542, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !542, file: !15, line: 535, baseType: !963, size: 64, offset: 8640)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !542, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !542, file: !15, line: 539, baseType: !109, size: 32, offset: 8736)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !542, file: !15, line: 540, baseType: !967, size: 64, offset: 8768)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !969, line: 32, size: 64, elements: !970)
!969 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!970 = !{!971, !972}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !968, file: !969, line: 33, baseType: !608, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !968, file: !969, line: 34, baseType: !608, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !542, file: !15, line: 563, baseType: !186, size: 128, offset: 8832)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !542, file: !15, line: 565, baseType: !186, size: 128, offset: 8960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !542, file: !15, line: 568, baseType: !976, size: 64, offset: 9088)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !542, file: !15, line: 570, baseType: !220, size: 32, offset: 9152)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !59, line: 2382, baseType: !516, size: 64, offset: 448)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !517, file: !59, line: 2383, baseType: !982, size: 64, offset: 512)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !187, line: 194, size: 64, elements: !983)
!983 = !{!984}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !982, file: !187, line: 195, baseType: !861, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !517, file: !59, line: 2385, baseType: !986, offset: 576)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !900, line: 206, elements: !901)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !517, file: !59, line: 2386, baseType: !986, offset: 576)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !517, file: !59, line: 2387, baseType: !986, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !517, file: !59, line: 2388, baseType: !990, offset: 576)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, elements: !271)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !517, file: !59, line: 2390, baseType: !986, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !517, file: !59, line: 2391, baseType: !986, offset: 576)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !517, file: !59, line: 2392, baseType: !986, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !517, file: !59, line: 2393, baseType: !986, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !503, file: !59, line: 1197, baseType: !996, size: 64, offset: 384)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !999)
!999 = !{!1000, !1004, !1008, !1009, !1013, !1019, !1023, !1024, !1025, !1029, !1033, !1037, !1038, !1039, !1045, !1049, !1050, !1057, !1058, !1059, !1060, !1064, !1068, !1117, !1133, !1134}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !998, file: !59, line: 2058, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!351, !502}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !998, file: !59, line: 2059, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{null, !351}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !998, file: !59, line: 2060, baseType: !1005, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !998, file: !59, line: 2062, baseType: !1010, size: 64, offset: 192)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !351, !109}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !998, file: !59, line: 2063, baseType: !1014, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!109, !351, !1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1018, size: 64)
!1018 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !998, file: !59, line: 2064, baseType: !1020, size: 64, offset: 320)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!109, !351}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !998, file: !59, line: 2065, baseType: !1005, size: 64, offset: 384)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !998, file: !59, line: 2066, baseType: !537, size: 64, offset: 448)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !998, file: !59, line: 2067, baseType: !1026, size: 64, offset: 512)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!109, !502, !109}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !998, file: !59, line: 2068, baseType: !1030, size: 64, offset: 576)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!109, !502, !58}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !998, file: !59, line: 2069, baseType: !1034, size: 64, offset: 640)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!109, !502}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !998, file: !59, line: 2070, baseType: !1030, size: 64, offset: 704)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !998, file: !59, line: 2071, baseType: !1034, size: 64, offset: 768)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !998, file: !59, line: 2072, baseType: !1040, size: 64, offset: 832)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!109, !386, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !998, file: !59, line: 2073, baseType: !1046, size: 64, offset: 896)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DISubroutineType(types: !1048)
!1048 = !{!109, !502, !741, !270}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !998, file: !59, line: 2074, baseType: !537, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !998, file: !59, line: 2076, baseType: !1051, size: 64, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DISubroutineType(types: !1053)
!1053 = !{!109, !1054, !386}
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1056, line: 66, flags: DIFlagFwdDecl)
!1056 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !998, file: !59, line: 2077, baseType: !1051, size: 64, offset: 1088)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !998, file: !59, line: 2078, baseType: !1051, size: 64, offset: 1152)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !998, file: !59, line: 2079, baseType: !1051, size: 64, offset: 1216)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !998, file: !59, line: 2081, baseType: !1061, size: 64, offset: 1280)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!302, !502, !109, !270, !317, !512}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !998, file: !59, line: 2082, baseType: !1065, size: 64, offset: 1344)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!302, !502, !109, !182, !317, !512}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !998, file: !59, line: 2083, baseType: !1069, size: 64, offset: 1408)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!1072, !351}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !1075)
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1100, !1101, !1102}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1074, file: !64, line: 297, baseType: !858, size: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1074, file: !64, line: 298, baseType: !186, size: 128, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1074, file: !64, line: 299, baseType: !186, size: 128, offset: 256)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1074, file: !64, line: 300, baseType: !186, size: 128, offset: 384)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1074, file: !64, line: 301, baseType: !612, size: 256, offset: 512)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1074, file: !64, line: 302, baseType: !200, size: 32, offset: 768)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1074, file: !64, line: 303, baseType: !220, size: 32, offset: 800)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1074, file: !64, line: 304, baseType: !502, size: 64, offset: 832)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1074, file: !64, line: 305, baseType: !1085, size: 64, offset: 896)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !1086)
!1086 = !{!1087, !1099}
!1087 = !DIDerivedType(tag: DW_TAG_member, scope: !1085, file: !64, line: 69, baseType: !1088, size: 32)
!1088 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1085, file: !64, line: 69, size: 32, elements: !1089)
!1089 = !{!1090, !1091, !1092}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1088, file: !64, line: 70, baseType: !357, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1088, file: !64, line: 71, baseType: !366, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1088, file: !64, line: 72, baseType: !1093, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1094, line: 24, baseType: !1095)
!1094 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1094, line: 22, size: 32, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1095, file: !1094, line: 23, baseType: !1098, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1094, line: 20, baseType: !363)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1085, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1074, file: !64, line: 306, baseType: !512, size: 64, offset: 960)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1074, file: !64, line: 307, baseType: !320, size: 64, offset: 1024)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1074, file: !64, line: 308, baseType: !1103, size: 576, offset: 1088)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !1104)
!1104 = !{!1105, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1116}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1103, file: !64, line: 206, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !514)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1103, file: !64, line: 207, baseType: !1106, size: 64, offset: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1103, file: !64, line: 208, baseType: !1106, size: 64, offset: 128)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1103, file: !64, line: 209, baseType: !1106, size: 64, offset: 192)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1103, file: !64, line: 210, baseType: !1106, size: 64, offset: 256)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1103, file: !64, line: 211, baseType: !1106, size: 64, offset: 320)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1103, file: !64, line: 212, baseType: !1106, size: 64, offset: 384)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1103, file: !64, line: 213, baseType: !1114, size: 64, offset: 448)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1115, line: 8, baseType: !623)
!1115 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1103, file: !64, line: 214, baseType: !1114, size: 64, offset: 512)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !998, file: !59, line: 2085, baseType: !1118, size: 64, offset: 1472)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{!306, !502, !1121}
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1123, line: 15, size: 256, elements: !1124)
!1123 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1124 = !{!1125, !1127, !1128, !1129, !1130}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1122, file: !1123, line: 16, baseType: !1126, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !187, line: 154, baseType: !7)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1122, file: !1123, line: 19, baseType: !109, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1122, file: !1123, line: 26, baseType: !320, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1122, file: !1123, line: 33, baseType: !320, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1122, file: !1123, line: 36, baseType: !1131, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !30, line: 33, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !998, file: !59, line: 2087, baseType: !1118, size: 64, offset: 1536)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !998, file: !59, line: 2089, baseType: !537, size: 64, offset: 1600)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !503, file: !59, line: 1198, baseType: !1136, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !1139)
!1139 = !{!1140, !1144, !1148, !1152, !1153, !1154, !1155, !1156, !1161, !1166, !1170}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1138, file: !64, line: 325, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!109, !1073}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1138, file: !64, line: 326, baseType: !1145, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!1073, !502, !109}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1138, file: !64, line: 327, baseType: !1149, size: 64, offset: 128)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1073}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1138, file: !64, line: 328, baseType: !1141, size: 64, offset: 192)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1138, file: !64, line: 329, baseType: !1141, size: 64, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1138, file: !64, line: 330, baseType: !1141, size: 64, offset: 320)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1138, file: !64, line: 331, baseType: !1026, size: 64, offset: 384)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1138, file: !64, line: 334, baseType: !1157, size: 64, offset: 448)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!1160, !351}
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1138, file: !64, line: 335, baseType: !1162, size: 64, offset: 512)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!109, !351, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1138, file: !64, line: 337, baseType: !1167, size: 64, offset: 576)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!109, !351, !1160}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1138, file: !64, line: 339, baseType: !1171, size: 64, offset: 640)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!109, !502, !1174}
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !503, file: !59, line: 1199, baseType: !1176, size: 64, offset: 512)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1178)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !1179)
!1179 = !{!1180, !1191, !1192, !1196, !1197, !1198, !1213, !1236, !1240, !1241, !1264}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1178, file: !64, line: 431, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!109, !502, !109, !109, !1184}
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1187, line: 8, size: 128, elements: !1188)
!1187 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1186, file: !1187, line: 9, baseType: !496, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1186, file: !1187, line: 10, baseType: !386, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1178, file: !64, line: 432, baseType: !1026, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1178, file: !64, line: 433, baseType: !1193, size: 64, offset: 128)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!109, !502, !7}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1178, file: !64, line: 434, baseType: !1193, size: 64, offset: 192)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1178, file: !64, line: 435, baseType: !1026, size: 64, offset: 256)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1178, file: !64, line: 436, baseType: !1199, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!109, !502, !109, !1202}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !1204)
!1204 = !{!1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1203, file: !64, line: 418, baseType: !109, size: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1203, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1203, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1203, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1203, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1203, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1203, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1203, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1178, file: !64, line: 437, baseType: !1214, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{!109, !502, !1085, !1217}
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1218, file: !64, line: 346, baseType: !109, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1218, file: !64, line: 347, baseType: !424, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1218, file: !64, line: 348, baseType: !424, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1218, file: !64, line: 349, baseType: !424, size: 64, offset: 192)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1218, file: !64, line: 350, baseType: !424, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1218, file: !64, line: 351, baseType: !424, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1218, file: !64, line: 352, baseType: !424, size: 64, offset: 384)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1218, file: !64, line: 353, baseType: !622, size: 64, offset: 448)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1218, file: !64, line: 355, baseType: !622, size: 64, offset: 512)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1218, file: !64, line: 356, baseType: !109, size: 32, offset: 576)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1218, file: !64, line: 357, baseType: !109, size: 32, offset: 608)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1218, file: !64, line: 358, baseType: !424, size: 64, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1218, file: !64, line: 359, baseType: !424, size: 64, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1218, file: !64, line: 360, baseType: !424, size: 64, offset: 768)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1218, file: !64, line: 361, baseType: !622, size: 64, offset: 832)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1218, file: !64, line: 362, baseType: !109, size: 32, offset: 896)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1178, file: !64, line: 438, baseType: !1237, size: 64, offset: 448)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DISubroutineType(types: !1239)
!1239 = !{!109, !502, !1174, !1217}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1178, file: !64, line: 440, baseType: !1214, size: 64, offset: 512)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1178, file: !64, line: 441, baseType: !1242, size: 64, offset: 576)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!109, !502, !1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1246, file: !64, line: 412, baseType: !7, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1246, file: !64, line: 413, baseType: !1250, size: 1344, offset: 64)
!1250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1251, size: 1344, elements: !271)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !1252)
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1263}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1251, file: !64, line: 398, baseType: !7, size: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1251, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1251, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1251, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1251, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1251, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1251, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1251, file: !64, line: 406, baseType: !426, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1251, file: !64, line: 407, baseType: !1262, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !187, line: 132, baseType: !424)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1251, file: !64, line: 408, baseType: !1262, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1178, file: !64, line: 442, baseType: !1193, size: 64, offset: 640)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !503, file: !59, line: 1200, baseType: !1266, size: 64, offset: 576)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1268)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !503, file: !59, line: 1201, baseType: !320, size: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !503, file: !59, line: 1202, baseType: !320, size: 64, offset: 704)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !503, file: !59, line: 1203, baseType: !320, size: 64, offset: 768)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !503, file: !59, line: 1204, baseType: !386, size: 64, offset: 832)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !503, file: !59, line: 1205, baseType: !1274, size: 320, offset: 896)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1275, line: 48, size: 320, elements: !1276)
!1275 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1276 = !{!1277, !1278, !1279, !1280, !1281}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1274, file: !1275, line: 49, baseType: !616, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1274, file: !1275, line: 55, baseType: !616, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1274, file: !1275, line: 57, baseType: !626, size: 32, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1274, file: !1275, line: 59, baseType: !570, size: 32, offset: 160)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1274, file: !1275, line: 60, baseType: !186, size: 128, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !503, file: !59, line: 1206, baseType: !109, size: 32, offset: 1216)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !503, file: !59, line: 1207, baseType: !220, size: 32, offset: 1248)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !503, file: !59, line: 1209, baseType: !342, size: 64, offset: 1280)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !503, file: !59, line: 1211, baseType: !1286, size: 64, offset: 1344)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1289)
!1289 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !503, file: !59, line: 1223, baseType: !1291, size: 64, offset: 1408)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !403, line: 34, size: 64, elements: !1292)
!1292 = !{!1293}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1291, file: !403, line: 35, baseType: !406, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !503, file: !59, line: 1224, baseType: !186, size: 128, offset: 1472)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !503, file: !59, line: 1225, baseType: !1296, size: 64, offset: 1600)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1297 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !503, file: !59, line: 1226, baseType: !1299, size: 64, offset: 1664)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !503, file: !59, line: 1227, baseType: !1302, size: 64, offset: 1728)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !503, file: !59, line: 1228, baseType: !1305, size: 64, offset: 1792)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !503, file: !59, line: 1229, baseType: !858, size: 128, offset: 1856)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !503, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !503, file: !59, line: 1231, baseType: !1310, size: 2496, offset: 2048)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1316, !1348}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1310, file: !64, line: 522, baseType: !7, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1310, file: !64, line: 523, baseType: !1274, size: 320, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1310, file: !64, line: 524, baseType: !1315, size: 192, offset: 384)
!1315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !351, size: 192, elements: !271)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1310, file: !64, line: 525, baseType: !1317, size: 1728, offset: 576)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1318, size: 1728, elements: !271)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !1319)
!1319 = !{!1320, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1318, file: !64, line: 223, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !1323)
!1323 = !{!1324, !1325, !1338, !1339}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1322, file: !64, line: 446, baseType: !109, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1322, file: !64, line: 447, baseType: !1326, size: 64, offset: 64)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1328, file: !64, line: 313, baseType: !1026, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1328, file: !64, line: 314, baseType: !1026, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1328, file: !64, line: 315, baseType: !1026, size: 64, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1328, file: !64, line: 316, baseType: !1026, size: 64, offset: 192)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1328, file: !64, line: 317, baseType: !1141, size: 64, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1328, file: !64, line: 318, baseType: !1141, size: 64, offset: 320)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1328, file: !64, line: 319, baseType: !1141, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1328, file: !64, line: 320, baseType: !1171, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1322, file: !64, line: 448, baseType: !541, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1322, file: !64, line: 449, baseType: !1321, size: 64, offset: 192)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1318, file: !64, line: 224, baseType: !109, size: 32, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1318, file: !64, line: 226, baseType: !186, size: 128, offset: 128)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1318, file: !64, line: 227, baseType: !320, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1318, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1318, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1318, file: !64, line: 230, baseType: !1106, size: 64, offset: 384)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1318, file: !64, line: 231, baseType: !1106, size: 64, offset: 448)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1318, file: !64, line: 232, baseType: !342, size: 64, offset: 512)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1310, file: !64, line: 526, baseType: !1349, size: 192, offset: 2304)
!1349 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1326, size: 192, elements: !271)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !503, file: !59, line: 1233, baseType: !1351, size: 2368, offset: 4544)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !1352)
!1352 = !{!1353, !1354, !1355}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1351, file: !59, line: 1185, baseType: !240, size: 16)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1351, file: !59, line: 1186, baseType: !240, size: 16, offset: 16)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1351, file: !59, line: 1187, baseType: !1356, size: 2304, offset: 64)
!1356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1357, size: 2304, elements: !271)
!1357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1358, line: 12, size: 768, elements: !1359)
!1358 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1359 = !{!1360, !1374, !1375, !3447, !3448}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1357, file: !1358, line: 13, baseType: !1361, size: 384)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1362, line: 17, size: 384, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1363 = !{!1364, !1365, !1366, !1373}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1361, file: !1362, line: 18, baseType: !109, size: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1361, file: !1362, line: 19, baseType: !109, size: 32, offset: 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1361, file: !1362, line: 20, baseType: !1367, size: 192, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1368, line: 41, baseType: !1369)
!1368 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1368, line: 37, size: 192, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1369, file: !1368, line: 38, baseType: !200, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1369, file: !1368, line: 39, baseType: !186, size: 128, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1361, file: !1362, line: 22, baseType: !832, size: 128, align: 64, offset: 256)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1357, file: !1358, line: 14, baseType: !684, size: 64, offset: 384)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1357, file: !1358, line: 15, baseType: !1376, size: 64, offset: 448)
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1377, line: 16, size: 64, elements: !1378)
!1377 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1378 = !{!1379}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1376, file: !1377, line: 17, baseType: !1380, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1056, line: 746, size: 58368, elements: !1382)
!1382 = !{!1383, !1391, !1392, !1393, !1399, !1400, !1401, !1402, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1473, !1484, !1579, !1583, !1586, !1617, !1618, !1619, !1620, !1631, !1633, !1634, !1635, !1636, !1637, !1638, !1649, !1650, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1667, !1668, !1675, !1676, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2634, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2682, !2688, !2689, !2690, !2691, !2692, !2696, !2699, !2706, !2711, !2714, !2717, !2720, !2723, !2861, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2899, !2900, !2901, !2910, !2918, !2919, !2920, !2921, !2922, !2927, !2928, !2929, !2932, !2933, !2936, !2939, !2942, !2950, !2953, !2954, !3040, !3041, !3042, !3043, !3044, !3050, !3051, !3052, !3053, !3056, !3057, !3060, !3063, !3064, !3067, !3068, !3069, !3072, !3073, !3074, !3075, !3076, !3077, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3098, !3109, !3110, !3116, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3128, !3200, !3202, !3203, !3204, !3205, !3206, !3207, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3220, !3224, !3225, !3226}
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1381, file: !1056, line: 752, baseType: !1384, size: 192)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1385, line: 56, size: 192, elements: !1386)
!1385 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1386 = !{!1387, !1388, !1389, !1390}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !1385, line: 57, baseType: !320, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1384, file: !1385, line: 58, baseType: !320, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1384, file: !1385, line: 59, baseType: !420, size: 32, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1384, file: !1385, line: 61, baseType: !420, size: 32, offset: 160)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1381, file: !1056, line: 754, baseType: !7, size: 32, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1381, file: !1056, line: 767, baseType: !342, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1381, file: !1056, line: 768, baseType: !1394, size: 32, offset: 320)
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1395, line: 113, baseType: !1396)
!1395 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1395, line: 111, size: 32, elements: !1397)
!1397 = !{!1398}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1396, file: !1395, line: 112, baseType: !220, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1381, file: !1056, line: 770, baseType: !7, size: 32, offset: 352)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1381, file: !1056, line: 771, baseType: !7, size: 32, offset: 384)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1381, file: !1056, line: 774, baseType: !109, size: 32, offset: 416)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1381, file: !1056, line: 775, baseType: !1403, size: 128, offset: 448)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1404, line: 58, size: 128, elements: !1405)
!1404 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1405 = !{!1406, !1412, !1417, !1418}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1403, file: !1404, line: 59, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1408, line: 60, size: 64, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1409 = !{!1410}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1407, file: !1408, line: 61, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !1404, line: 60, baseType: !1413, size: 32, offset: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1403, file: !1404, line: 60, size: 32, elements: !1414)
!1414 = !{!1415, !1416}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1413, file: !1404, line: 61, baseType: !7, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1413, file: !1404, line: 62, baseType: !220, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1403, file: !1404, line: 65, baseType: !238, size: 16, offset: 96)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1403, file: !1404, line: 65, baseType: !238, size: 16, offset: 112)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1381, file: !1056, line: 776, baseType: !7, size: 32, offset: 576)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1381, file: !1056, line: 777, baseType: !320, size: 64, offset: 640)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1381, file: !1056, line: 778, baseType: !1380, size: 64, offset: 704)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1381, file: !1056, line: 787, baseType: !109, size: 32, offset: 768)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1381, file: !1056, line: 788, baseType: !109, size: 32, offset: 800)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1381, file: !1056, line: 790, baseType: !109, size: 32, offset: 832)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1381, file: !1056, line: 792, baseType: !109, size: 32, offset: 864)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1381, file: !1056, line: 793, baseType: !109, size: 32, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1381, file: !1056, line: 794, baseType: !109, size: 32, offset: 928)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1381, file: !1056, line: 795, baseType: !7, size: 32, offset: 960)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1381, file: !1056, line: 797, baseType: !1430, size: 2048, offset: 1024)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1056, line: 551, size: 2048, elements: !1431)
!1431 = !{!1432, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1452, !1455, !1456, !1457}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1430, file: !1056, line: 553, baseType: !1433, size: 128)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1056, line: 411, size: 128, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1433, file: !1056, line: 412, baseType: !320, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1433, file: !1056, line: 413, baseType: !420, size: 32, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1430, file: !1056, line: 554, baseType: !724, size: 192, align: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1430, file: !1056, line: 555, baseType: !424, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1430, file: !1056, line: 556, baseType: !424, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1430, file: !1056, line: 558, baseType: !186, size: 128, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1430, file: !1056, line: 559, baseType: !7, size: 32, offset: 576)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1430, file: !1056, line: 561, baseType: !424, size: 64, offset: 640)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1430, file: !1056, line: 562, baseType: !424, size: 64, offset: 704)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1430, file: !1056, line: 563, baseType: !424, size: 64, offset: 768)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1430, file: !1056, line: 564, baseType: !424, size: 64, offset: 832)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1430, file: !1056, line: 565, baseType: !622, size: 64, offset: 896)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1430, file: !1056, line: 566, baseType: !424, size: 64, offset: 960)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1430, file: !1056, line: 568, baseType: !424, size: 64, offset: 1024)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1430, file: !1056, line: 571, baseType: !109, size: 32, offset: 1088)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1430, file: !1056, line: 572, baseType: !1451, size: 64, offset: 1152)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1430, file: !1056, line: 574, baseType: !1453, size: 64, offset: 1216)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1056, line: 49, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1430, file: !1056, line: 576, baseType: !1453, size: 64, offset: 1280)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1430, file: !1056, line: 578, baseType: !320, size: 64, offset: 1344)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1430, file: !1056, line: 588, baseType: !1458, size: 512, align: 512, offset: 1536)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1056, line: 497, size: 512, align: 512, elements: !1459)
!1459 = !{!1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1458, file: !1056, line: 498, baseType: !424, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1458, file: !1056, line: 499, baseType: !424, size: 64, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1458, file: !1056, line: 500, baseType: !424, size: 64, offset: 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1458, file: !1056, line: 501, baseType: !420, size: 32, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1458, file: !1056, line: 502, baseType: !420, size: 32, offset: 224)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1458, file: !1056, line: 503, baseType: !320, size: 64, offset: 256)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1458, file: !1056, line: 504, baseType: !320, size: 64, offset: 320)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1458, file: !1056, line: 505, baseType: !320, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1458, file: !1056, line: 506, baseType: !1469, size: 64, align: 64, offset: 448)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1056, line: 445, size: 64, align: 64, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1469, file: !1056, line: 446, baseType: !7, size: 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1469, file: !1056, line: 447, baseType: !7, size: 32, offset: 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1381, file: !1056, line: 798, baseType: !1474, size: 384, offset: 3072)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1056, line: 592, size: 384, elements: !1475)
!1475 = !{!1476, !1477, !1478, !1479, !1480, !1481, !1482}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1474, file: !1056, line: 593, baseType: !186, size: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1474, file: !1056, line: 594, baseType: !320, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1474, file: !1056, line: 595, baseType: !320, size: 64, offset: 192)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1474, file: !1056, line: 596, baseType: !7, size: 32, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1474, file: !1056, line: 597, baseType: !240, size: 16, offset: 288)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1474, file: !1056, line: 598, baseType: !240, size: 16, offset: 304)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1474, file: !1056, line: 600, baseType: !1483, size: 64, offset: 320)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1381, file: !1056, line: 799, baseType: !1485, size: 1792, offset: 3456)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1056, line: 610, size: 1792, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1576, !1577}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1485, file: !1056, line: 611, baseType: !724, size: 192, align: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1485, file: !1056, line: 618, baseType: !424, size: 64, offset: 192)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1485, file: !1056, line: 619, baseType: !424, size: 64, offset: 256)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1485, file: !1056, line: 620, baseType: !424, size: 64, offset: 320)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1485, file: !1056, line: 621, baseType: !424, size: 64, offset: 384)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1485, file: !1056, line: 622, baseType: !424, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1485, file: !1056, line: 629, baseType: !622, size: 64, offset: 512)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1485, file: !1056, line: 630, baseType: !424, size: 64, offset: 576)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1485, file: !1056, line: 631, baseType: !7, size: 32, offset: 640)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1485, file: !1056, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1485, file: !1056, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1485, file: !1056, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1485, file: !1056, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1485, file: !1056, line: 662, baseType: !1501, size: 512, offset: 704)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !1502)
!1502 = !{!1503, !1511, !1512, !1517, !1572, !1573, !1574, !1575}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1501, file: !70, line: 119, baseType: !1504, size: 256)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1505, line: 9, size: 256, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1504, file: !1505, line: 10, baseType: !724, size: 192, align: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1504, file: !1505, line: 11, baseType: !1509, size: 64, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1510, line: 29, baseType: !622)
!1510 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1501, file: !70, line: 120, baseType: !1509, size: 64, offset: 256)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1501, file: !70, line: 121, baseType: !1513, size: 64, offset: 320)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{!69, !1516}
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1501, file: !70, line: 122, baseType: !1518, size: 64, offset: 384)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !1520)
!1520 = !{!1521, !1546, !1547, !1550, !1555, !1556, !1567, !1571}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1519, file: !70, line: 160, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1523, file: !70, line: 216, baseType: !570, size: 32)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1523, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1523, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1523, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1523, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1523, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1523, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1523, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1523, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1523, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1523, file: !70, line: 227, baseType: !240, size: 16, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1523, file: !70, line: 228, baseType: !240, size: 16, offset: 208)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1523, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1523, file: !70, line: 235, baseType: !1509, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1523, file: !70, line: 236, baseType: !1516, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1523, file: !70, line: 237, baseType: !1509, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1523, file: !70, line: 238, baseType: !1516, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1523, file: !70, line: 239, baseType: !1543, size: 4096, align: 512, offset: 512)
!1543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1519, size: 4096, align: 512, elements: !1544)
!1544 = !{!1545}
!1545 = !DISubrange(count: 8)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1519, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1519, file: !70, line: 162, baseType: !1548, size: 32, offset: 96)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !187, line: 32, baseType: !1549)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !304, line: 96, baseType: !109)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1519, file: !70, line: 163, baseType: !1551, size: 32, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !393, line: 274, baseType: !1552)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !393, line: 274, size: 32, elements: !1553)
!1553 = !{!1554}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1552, file: !393, line: 274, baseType: !397, size: 32)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1519, file: !70, line: 164, baseType: !1516, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1519, file: !70, line: 165, baseType: !1557, size: 128, offset: 256)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1505, line: 14, size: 128, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1557, file: !1505, line: 15, baseType: !1560, size: 128)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !725, line: 26, size: 128, elements: !1561)
!1561 = !{!1562, !1566}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1560, file: !725, line: 27, baseType: !1563, size: 64)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !725, line: 12, size: 64, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1563, file: !725, line: 13, baseType: !729, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1560, file: !725, line: 28, baseType: !729, size: 64, offset: 64)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1519, file: !70, line: 166, baseType: !1568, size: 64, offset: 384)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!1509}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1519, file: !70, line: 167, baseType: !1509, size: 64, offset: 448)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1501, file: !70, line: 123, baseType: !228, size: 8, offset: 448)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1501, file: !70, line: 124, baseType: !228, size: 8, offset: 456)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1501, file: !70, line: 125, baseType: !228, size: 8, offset: 464)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1501, file: !70, line: 126, baseType: !228, size: 8, offset: 472)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1485, file: !1056, line: 671, baseType: !1501, size: 512, offset: 1216)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1485, file: !1056, line: 679, baseType: !1578, size: 64, offset: 1728)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1381, file: !1056, line: 800, baseType: !1580, size: 64, offset: 5248)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1056, line: 800, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1381, file: !1056, line: 809, baseType: !1584, size: 64, offset: 5312)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1056, line: 70, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1381, file: !1056, line: 825, baseType: !1587, size: 2048, align: 512, offset: 5632)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1056, line: 509, size: 2048, align: 512, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1587, file: !1056, line: 511, baseType: !424, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1587, file: !1056, line: 512, baseType: !424, size: 64, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1587, file: !1056, line: 513, baseType: !424, size: 64, offset: 128)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1587, file: !1056, line: 514, baseType: !424, size: 64, offset: 192)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1587, file: !1056, line: 515, baseType: !424, size: 64, offset: 256)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1587, file: !1056, line: 516, baseType: !424, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1587, file: !1056, line: 518, baseType: !424, size: 64, offset: 384)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1587, file: !1056, line: 519, baseType: !424, size: 64, offset: 448)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1587, file: !1056, line: 520, baseType: !622, size: 64, offset: 512)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1587, file: !1056, line: 522, baseType: !424, size: 64, offset: 576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1587, file: !1056, line: 523, baseType: !424, size: 64, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1587, file: !1056, line: 524, baseType: !622, size: 64, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1587, file: !1056, line: 526, baseType: !622, size: 64, offset: 768)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1587, file: !1056, line: 527, baseType: !424, size: 64, offset: 832)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1587, file: !1056, line: 529, baseType: !424, size: 64, offset: 896)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1587, file: !1056, line: 530, baseType: !424, size: 64, offset: 960)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1587, file: !1056, line: 531, baseType: !424, size: 64, offset: 1024)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1587, file: !1056, line: 532, baseType: !424, size: 64, offset: 1088)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1587, file: !1056, line: 533, baseType: !424, size: 64, offset: 1152)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1587, file: !1056, line: 535, baseType: !424, size: 64, offset: 1216)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1587, file: !1056, line: 536, baseType: !424, size: 64, offset: 1280)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1587, file: !1056, line: 537, baseType: !424, size: 64, offset: 1344)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1587, file: !1056, line: 538, baseType: !424, size: 64, offset: 1408)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1587, file: !1056, line: 539, baseType: !424, size: 64, offset: 1472)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1587, file: !1056, line: 540, baseType: !424, size: 64, offset: 1536)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1587, file: !1056, line: 541, baseType: !424, size: 64, offset: 1600)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1587, file: !1056, line: 542, baseType: !424, size: 64, offset: 1664)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1587, file: !1056, line: 543, baseType: !424, size: 64, offset: 1728)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1381, file: !1056, line: 833, baseType: !7, size: 32, offset: 7680)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1381, file: !1056, line: 836, baseType: !7, size: 32, offset: 7712)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1381, file: !1056, line: 837, baseType: !109, size: 32, offset: 7744)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1381, file: !1056, line: 838, baseType: !1621, size: 64, offset: 7808)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1624, line: 19, baseType: !1625)
!1624 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1624, line: 19, size: 64, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1625, file: !1624, line: 19, baseType: !1628, size: 64)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 64, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 1)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1381, file: !1056, line: 839, baseType: !1632, size: 64, offset: 7872)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1381, file: !1056, line: 840, baseType: !1623, size: 64, offset: 7936)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1381, file: !1056, line: 841, baseType: !342, size: 64, offset: 8000)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1381, file: !1056, line: 843, baseType: !240, size: 16, offset: 8064)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1381, file: !1056, line: 845, baseType: !240, size: 16, offset: 8080)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1381, file: !1056, line: 848, baseType: !109, size: 32, offset: 8096)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1381, file: !1056, line: 849, baseType: !1639, size: 32, offset: 8128)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1056, line: 718, size: 32, elements: !1640)
!1640 = !{!1641, !1648}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1639, file: !1056, line: 724, baseType: !1642, size: 32)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !1056, line: 719, size: 32, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1642, file: !1056, line: 720, baseType: !228, size: 8)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1642, file: !1056, line: 721, baseType: !228, size: 8, offset: 8)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1642, file: !1056, line: 722, baseType: !228, size: 8, offset: 16)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1642, file: !1056, line: 723, baseType: !228, size: 8, offset: 24)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1639, file: !1056, line: 725, baseType: !420, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1381, file: !1056, line: 850, baseType: !186, size: 128, offset: 8192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1381, file: !1056, line: 851, baseType: !1651, size: 64, offset: 8320)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1056, line: 60, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1381, file: !1056, line: 855, baseType: !320, size: 64, offset: 8384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1381, file: !1056, line: 856, baseType: !228, size: 8, offset: 8448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1381, file: !1056, line: 857, baseType: !228, size: 8, offset: 8456)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1381, file: !1056, line: 858, baseType: !109, size: 32, offset: 8480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1381, file: !1056, line: 859, baseType: !186, size: 128, offset: 8512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1381, file: !1056, line: 860, baseType: !109, size: 32, offset: 8640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1381, file: !1056, line: 861, baseType: !186, size: 128, offset: 8704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1381, file: !1056, line: 873, baseType: !1661, size: 256, offset: 8832)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1056, line: 376, size: 256, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1661, file: !1056, line: 381, baseType: !320, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1661, file: !1056, line: 384, baseType: !426, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1661, file: !1056, line: 389, baseType: !426, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1661, file: !1056, line: 392, baseType: !426, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1381, file: !1056, line: 875, baseType: !186, size: 128, offset: 9088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1381, file: !1056, line: 877, baseType: !1669, size: 320, offset: 9216)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1670, line: 86, size: 320, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1669, file: !1670, line: 87, baseType: !109, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1669, file: !1670, line: 88, baseType: !186, size: 128, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1669, file: !1670, line: 89, baseType: !186, size: 128, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1381, file: !1056, line: 878, baseType: !724, size: 192, align: 64, offset: 9536)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1381, file: !1056, line: 881, baseType: !1677, size: 64, offset: 9728)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !1679)
!1679 = !{!1680, !2553}
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !30, line: 734, baseType: !1681, size: 10240)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1678, file: !30, line: 734, size: 10240, elements: !1682)
!1682 = !{!1683, !1687, !1700, !2430, !2431, !2432, !2433, !2434, !2435, !2442, !2443, !2444, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2483, !2485, !2488, !2533, !2534, !2535, !2538, !2539, !2540, !2543, !2544, !2545, !2551, !2552}
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !30, line: 739, baseType: !1684, size: 512, align: 512)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !30, line: 739, size: 512, align: 512, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1684, file: !30, line: 747, baseType: !220, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1681, file: !30, line: 750, baseType: !1688, size: 128, offset: 512)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1689, line: 218, size: 128, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1690 = !{!1691, !1698, !1699}
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !1689, line: 219, baseType: !1692, size: 32)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1688, file: !1689, line: 219, size: 32, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1692, file: !1689, line: 220, baseType: !200, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1692, file: !1689, line: 221, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1689, line: 197, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 197, elements: !901)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1688, file: !1689, line: 223, baseType: !7, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1688, file: !1689, line: 224, baseType: !342, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1681, file: !30, line: 752, baseType: !1701, size: 64, offset: 640)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!320, !1704, !320, !320, !320, !320}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !1706)
!1706 = !{!1707, !1713, !1714, !1716, !1717, !1718, !1719, !1720, !1770, !1960, !1969, !1970, !1971, !2420, !2421, !2422, !2423, !2425, !2426, !2429}
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !59, line: 995, baseType: !1708, size: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !59, line: 995, size: 128, elements: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1708, file: !59, line: 996, baseType: !1407, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1708, file: !59, line: 997, baseType: !832, size: 128, align: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1708, file: !59, line: 998, baseType: !7, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1705, file: !59, line: 1005, baseType: !200, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1705, file: !59, line: 1006, baseType: !1715, size: 32, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !187, line: 156, baseType: !7)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1705, file: !59, line: 1007, baseType: !616, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1705, file: !59, line: 1008, baseType: !612, size: 256, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1705, file: !59, line: 1009, baseType: !512, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1705, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1705, file: !59, line: 1011, baseType: !1721, size: 256, offset: 640)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !1722)
!1722 = !{!1723, !1744, !1766, !1767, !1768, !1769}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1721, file: !59, line: 949, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1725, line: 34, baseType: !1726)
!1725 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1725, line: 25, size: 64, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1726, file: !1725, line: 26, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1730, line: 27, baseType: !1731)
!1730 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1730, line: 13, size: 64, elements: !1732)
!1732 = !{!1733, !1743}
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1730, line: 14, baseType: !1734, size: 32)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1730, line: 14, size: 32, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1734, file: !1730, line: 15, baseType: !220, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !1730, line: 16, baseType: !1738, size: 32)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1734, file: !1730, line: 16, size: 32, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1738, file: !1730, line: 18, baseType: !228, size: 8)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1738, file: !1730, line: 19, baseType: !1742, size: 24, offset: 8)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 24, elements: !271)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1731, file: !1730, line: 26, baseType: !212, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1721, file: !59, line: 950, baseType: !1745, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1753, !1754, !1755, !1756}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1746, file: !6, line: 61, baseType: !1394, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1746, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1746, file: !6, line: 63, baseType: !200, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1746, file: !6, line: 65, baseType: !1752, size: 256, offset: 128)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 256, elements: !842)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1746, file: !6, line: 66, baseType: !982, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1746, file: !6, line: 68, baseType: !1367, size: 192, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1746, file: !6, line: 69, baseType: !832, size: 128, align: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1746, file: !6, line: 70, baseType: !1757, offset: 768)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, elements: !1764)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1758, file: !6, line: 55, baseType: !109, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1758, file: !6, line: 56, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!1764 = !{!1765}
!1765 = !DISubrange(count: -1)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1721, file: !59, line: 951, baseType: !5, size: 32, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1721, file: !59, line: 952, baseType: !357, size: 32, offset: 160)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1721, file: !59, line: 952, baseType: !357, size: 32, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1721, file: !59, line: 953, baseType: !109, size: 32, offset: 224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1705, file: !59, line: 1012, baseType: !1771, size: 64, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1774, line: 110, size: 1472, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1792, !1793, !1794, !1795, !1796, !1797, !1905, !1906, !1907, !1908, !1909, !1940, !1943, !1947, !1955}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1773, file: !1774, line: 111, baseType: !616, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1773, file: !1774, line: 112, baseType: !357, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1773, file: !1774, line: 113, baseType: !366, size: 32, offset: 96)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1773, file: !1774, line: 114, baseType: !357, size: 32, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1773, file: !1774, line: 115, baseType: !366, size: 32, offset: 160)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1773, file: !1774, line: 116, baseType: !357, size: 32, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1773, file: !1774, line: 117, baseType: !366, size: 32, offset: 224)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1773, file: !1774, line: 118, baseType: !357, size: 32, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1773, file: !1774, line: 119, baseType: !366, size: 32, offset: 288)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1773, file: !1774, line: 120, baseType: !7, size: 32, offset: 320)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1773, file: !1774, line: 121, baseType: !1787, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1788, line: 24, baseType: !1789)
!1788 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1788, line: 24, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1789, file: !1788, line: 24, baseType: !424, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1773, file: !1774, line: 122, baseType: !1787, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1773, file: !1774, line: 123, baseType: !1787, size: 64, offset: 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1773, file: !1774, line: 124, baseType: !1787, size: 64, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1773, file: !1774, line: 125, baseType: !1787, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1773, file: !1774, line: 127, baseType: !232, size: 8, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1773, file: !1774, line: 129, baseType: !1798, size: 64, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1800, line: 195, size: 1728, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1801 = !{!1802, !1803, !1806, !1811, !1812, !1815, !1816, !1821, !1822, !1823, !1824, !1827, !1828, !1829, !1830, !1831, !1869, !1890}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1799, file: !1800, line: 196, baseType: !1394, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1799, file: !1800, line: 197, baseType: !1804, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1800, line: 28, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !187, line: 104, baseType: !608)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 198, baseType: !1807, size: 192, offset: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 198, size: 192, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1807, file: !1800, line: 199, baseType: !186, size: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1807, file: !1800, line: 200, baseType: !724, size: 192, align: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1799, file: !1800, line: 205, baseType: !1274, size: 320, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1799, file: !1800, line: 206, baseType: !1813, size: 64, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1800, line: 206, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1799, file: !1800, line: 207, baseType: !342, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 208, baseType: !1817, size: 64, offset: 704)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 208, size: 64, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1817, file: !1800, line: 209, baseType: !1114, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1817, file: !1800, line: 210, baseType: !1114, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1799, file: !1800, line: 212, baseType: !1114, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1799, file: !1800, line: 213, baseType: !357, size: 32, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1799, file: !1800, line: 214, baseType: !366, size: 32, offset: 864)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1799, file: !1800, line: 215, baseType: !1825, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1800, line: 31, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !187, line: 110, baseType: !420)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1799, file: !1800, line: 216, baseType: !240, size: 16, offset: 928)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1799, file: !1800, line: 217, baseType: !240, size: 16, offset: 944)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1799, file: !1800, line: 221, baseType: !750, size: 16, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1800, line: 228, baseType: !320, size: 64, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 245, baseType: !1832, size: 320, offset: 1088)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 245, size: 320, elements: !1833)
!1833 = !{!1834, !1861}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1832, file: !1800, line: 246, baseType: !1835, size: 320)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1800, line: 114, size: 320, elements: !1836)
!1836 = !{!1837, !1838, !1850, !1853, !1860}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1835, file: !1800, line: 116, baseType: !320, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1800, line: 117, baseType: !1839, size: 64, offset: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1800, line: 117, size: 64, elements: !1840)
!1840 = !{!1841, !1849}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !1800, line: 118, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !1800, line: 118, size: 64, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1842, file: !1800, line: 120, baseType: !238, size: 16)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1842, file: !1800, line: 121, baseType: !1846, size: 48, offset: 16)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 48, elements: !1847)
!1847 = !{!1848}
!1848 = !DISubrange(count: 6)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1839, file: !1800, line: 127, baseType: !320, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !1800, line: 129, baseType: !1851, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1800, line: 102, flags: DIFlagFwdDecl)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1835, file: !1800, line: 130, baseType: !1854, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1800, line: 108, size: 192, elements: !1856)
!1856 = !{!1857, !1858, !1859}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1855, file: !1800, line: 109, baseType: !832, size: 128, align: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1855, file: !1800, line: 110, baseType: !1394, size: 32, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1855, file: !1800, line: 111, baseType: !692, size: 8, offset: 160)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1835, file: !1800, line: 131, baseType: !182, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !1800, line: 247, baseType: !1862, size: 320)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !1800, line: 247, size: 320, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1868}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1862, file: !1800, line: 248, baseType: !320, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1862, file: !1800, line: 249, baseType: !320, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1862, file: !1800, line: 250, baseType: !1851, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1862, file: !1800, line: 251, baseType: !1854, size: 64, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1862, file: !1800, line: 252, baseType: !270, size: 64, offset: 256)
!1869 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 260, baseType: !1870, size: 256, offset: 1408)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 260, size: 256, elements: !1871)
!1871 = !{!1872, !1878}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1870, file: !1800, line: 261, baseType: !1873, size: 256)
!1873 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1800, line: 134, size: 256, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1873, file: !1800, line: 135, baseType: !342, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1873, file: !1800, line: 136, baseType: !1877, size: 256)
!1877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !342, size: 256, elements: !842)
!1878 = !DIDerivedType(tag: DW_TAG_member, scope: !1870, file: !1800, line: 262, baseType: !1879, size: 256)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1870, file: !1800, line: 262, size: 256, elements: !1880)
!1880 = !{!1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1879, file: !1800, line: 264, baseType: !186, size: 128)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1879, file: !1800, line: 265, baseType: !1883, size: 128, offset: 128)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1884, line: 22, size: 128, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1885 = !{!1886, !1889}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1883, file: !1884, line: 23, baseType: !1887, size: 64)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1884, line: 23, flags: DIFlagFwdDecl)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1883, file: !1884, line: 24, baseType: !320, size: 64, offset: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1799, file: !1800, line: 280, baseType: !1891, size: 64, offset: 1664)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1800, line: 176, size: 192, elements: !1893)
!1893 = !{!1894, !1903, !1904}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1892, file: !1800, line: 177, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1800, line: 171, baseType: !1896)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!109, !1798, !1899, !1901, !1798}
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1852)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1892, file: !1800, line: 178, baseType: !1798, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1892, file: !1800, line: 179, baseType: !1851, size: 64, offset: 128)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1773, file: !1774, line: 130, baseType: !1798, size: 64, offset: 832)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1773, file: !1774, line: 131, baseType: !1798, size: 64, offset: 896)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1773, file: !1774, line: 132, baseType: !1798, size: 64, offset: 960)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1773, file: !1774, line: 135, baseType: !342, size: 64, offset: 1024)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1773, file: !1774, line: 137, baseType: !1910, size: 64, offset: 1088)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1912, line: 14, size: 1088, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1913 = !{!1914, !1915, !1924, !1925, !1926, !1927, !1928, !1929}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1911, file: !1912, line: 15, baseType: !1394, size: 32)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1911, file: !1912, line: 17, baseType: !1916, size: 320, offset: 64)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1917, line: 22, size: 320, elements: !1918)
!1917 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1918 = !{!1919, !1920, !1921, !1922}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1916, file: !1917, line: 23, baseType: !570, size: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1916, file: !1917, line: 24, baseType: !622, size: 64, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1916, file: !1917, line: 26, baseType: !186, size: 128, offset: 128)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1916, file: !1917, line: 28, baseType: !1923, size: 64, offset: 256)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1911, file: !1912, line: 19, baseType: !320, size: 64, offset: 384)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1911, file: !1912, line: 20, baseType: !616, size: 64, offset: 448)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1911, file: !1912, line: 23, baseType: !858, size: 128, offset: 512)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1911, file: !1912, line: 24, baseType: !357, size: 32, offset: 640)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1911, file: !1912, line: 29, baseType: !616, size: 64, offset: 704)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1911, file: !1912, line: 36, baseType: !1930, size: 320, offset: 768)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1931, line: 15, size: 320, elements: !1932)
!1931 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1932 = !{!1933, !1934, !1935, !1936, !1937, !1938, !1939}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1930, file: !1931, line: 16, baseType: !570, size: 32)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1930, file: !1931, line: 18, baseType: !109, size: 32, offset: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1930, file: !1931, line: 19, baseType: !109, size: 32, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1930, file: !1931, line: 20, baseType: !109, size: 32, offset: 96)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1930, file: !1931, line: 21, baseType: !109, size: 32, offset: 128)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1930, file: !1931, line: 22, baseType: !320, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1930, file: !1931, line: 23, baseType: !320, size: 64, offset: 256)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1773, file: !1774, line: 138, baseType: !1941, size: 64, offset: 1152)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !358, line: 18, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1773, file: !1774, line: 139, baseType: !1944, size: 64, offset: 1216)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1946, line: 16, flags: DIFlagFwdDecl)
!1946 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1773, file: !1774, line: 140, baseType: !1948, size: 64, offset: 1280)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1774, line: 25, size: 64, elements: !1950)
!1950 = !{!1951, !1952, !1953}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1949, file: !1774, line: 26, baseType: !220, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1949, file: !1774, line: 27, baseType: !109, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1949, file: !1774, line: 28, baseType: !1954, offset: 64)
!1954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, elements: !1764)
!1955 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 142, baseType: !1956, size: 128, offset: 1344)
!1956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 142, size: 128, elements: !1957)
!1957 = !{!1958, !1959}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1956, file: !1774, line: 143, baseType: !109, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1956, file: !1774, line: 144, baseType: !832, size: 128, align: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1705, file: !59, line: 1013, baseType: !1961, size: 256, offset: 960)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !1962)
!1962 = !{!1963, !1964, !1965, !1966, !1967, !1968}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1961, file: !59, line: 971, baseType: !320, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1961, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1961, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1961, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1961, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1961, file: !59, line: 976, baseType: !512, size: 64, offset: 192)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1705, file: !59, line: 1014, baseType: !1186, size: 128, offset: 1216)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1705, file: !59, line: 1015, baseType: !351, size: 64, offset: 1344)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1705, file: !59, line: 1016, baseType: !1972, size: 64, offset: 1408)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1974)
!1974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !1975)
!1975 = !{!1976, !1977, !1981, !1986, !1990, !2018, !2019, !2025, !2038, !2046, !2050, !2051, !2342, !2343, !2347, !2352, !2353, !2357, !2361, !2367, !2368, !2372, !2373, !2379, !2383, !2387, !2393, !2397, !2401, !2405, !2409, !2410, !2416}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1974, file: !59, line: 1915, baseType: !541, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1974, file: !59, line: 1916, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!512, !1704, !512, !109}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1974, file: !59, line: 1917, baseType: !1982, size: 64, offset: 128)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DISubroutineType(types: !1984)
!1984 = !{!302, !1704, !270, !317, !1985}
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1974, file: !59, line: 1918, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!302, !1704, !182, !317, !1985}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1974, file: !59, line: 1919, baseType: !1991, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!302, !1994, !2016}
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1996)
!1996 = !{!1997, !1998, !1999, !2003, !2004, !2005, !2006}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1995, file: !59, line: 374, baseType: !1704, size: 64)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1995, file: !59, line: 375, baseType: !512, size: 64, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1995, file: !59, line: 376, baseType: !2000, size: 64, offset: 128)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !1994, !306}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1995, file: !59, line: 377, baseType: !342, size: 64, offset: 192)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1995, file: !59, line: 378, baseType: !109, size: 32, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1995, file: !59, line: 379, baseType: !238, size: 16, offset: 288)
!2006 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !59, line: 380, baseType: !2007, size: 64, offset: 320)
!2007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !59, line: 380, size: 64, elements: !2008)
!2008 = !{!2009, !2012}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2007, file: !59, line: 386, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2007, file: !59, line: 395, baseType: !2013, size: 64)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!302, !342}
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !59, line: 69, flags: DIFlagFwdDecl)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1974, file: !59, line: 1920, baseType: !1991, size: 64, offset: 320)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1974, file: !59, line: 1921, baseType: !2020, size: 64, offset: 384)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!109, !1994, !2023, !7}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1974, file: !59, line: 1923, baseType: !2026, size: 64, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!109, !1704, !2029}
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !2031)
!2031 = !{!2032, !2037}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2030, file: !59, line: 1859, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !2034)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!692, !2029, !182, !109, !512, !424, !7}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2030, file: !59, line: 1860, baseType: !512, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1974, file: !59, line: 1924, baseType: !2039, size: 64, offset: 512)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DISubroutineType(types: !2041)
!2041 = !{!2042, !1704, !2044}
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2043, line: 59, baseType: !7)
!2043 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !527, line: 31, flags: DIFlagFwdDecl)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1974, file: !59, line: 1925, baseType: !2047, size: 64, offset: 576)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!306, !1704, !7, !320}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1974, file: !59, line: 1926, baseType: !2047, size: 64, offset: 640)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1974, file: !59, line: 1927, baseType: !2052, size: 64, offset: 704)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!109, !1704, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !2057)
!2057 = !{!2058, !2067, !2068, !2076, !2083, !2084, !2089, !2090, !2095, !2096, !2099, !2335, !2336, !2337, !2338, !2339, !2340}
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2056, file: !30, line: 628, baseType: !2059, size: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2056, file: !30, line: 628, size: 128, elements: !2060)
!2060 = !{!2061, !2066}
!2061 = !DIDerivedType(tag: DW_TAG_member, scope: !2059, file: !30, line: 629, baseType: !2062, size: 128)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2059, file: !30, line: 629, size: 128, elements: !2063)
!2063 = !{!2064, !2065}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2062, file: !30, line: 631, baseType: !320, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2062, file: !30, line: 632, baseType: !320, size: 64, offset: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2059, file: !30, line: 635, baseType: !832, size: 128, align: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2056, file: !30, line: 639, baseType: !1677, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2056, file: !30, line: 640, baseType: !2069, size: 64, offset: 192)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2070, line: 297, baseType: !2071)
!2070 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2070, line: 297, size: 64, elements: !2072)
!2072 = !{!2073}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2071, file: !2070, line: 297, baseType: !2074, size: 64)
!2074 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2075, line: 19, baseType: !320)
!2075 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2076 = !DIDerivedType(tag: DW_TAG_member, scope: !2056, file: !30, line: 646, baseType: !2077, size: 64, offset: 256)
!2077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2056, file: !30, line: 646, size: 64, elements: !2078)
!2078 = !{!2079, !2082}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2077, file: !30, line: 647, baseType: !2080, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2081)
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !320)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2077, file: !30, line: 648, baseType: !2081, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2056, file: !30, line: 666, baseType: !109, size: 32, offset: 320)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2056, file: !30, line: 667, baseType: !2085, size: 64, offset: 384)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !2087)
!2087 = !{!2088}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2086, file: !30, line: 580, baseType: !1274, size: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2056, file: !30, line: 670, baseType: !692, size: 8, offset: 448)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2056, file: !30, line: 681, baseType: !2091, size: 256, offset: 512)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2056, file: !30, line: 678, size: 256, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2091, file: !30, line: 679, baseType: !724, size: 192, align: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2091, file: !30, line: 680, baseType: !320, size: 64, offset: 192)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2056, file: !30, line: 689, baseType: !186, size: 128, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2056, file: !30, line: 691, baseType: !2097, size: 64, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2056, file: !30, line: 694, baseType: !2100, size: 64, offset: 960)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2102)
!2102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2103, line: 563, size: 1024, elements: !2104)
!2103 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2104 = !{!2105, !2109, !2110, !2114, !2118, !2122, !2299, !2303, !2307, !2311, !2312, !2313, !2317, !2321, !2327, !2331}
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2102, file: !2103, line: 564, baseType: !2106, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{null, !2055}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2102, file: !2103, line: 569, baseType: !2106, size: 64, offset: 64)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2102, file: !2103, line: 571, baseType: !2111, size: 64, offset: 128)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!109, !2055, !320}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2102, file: !2103, line: 572, baseType: !2115, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DISubroutineType(types: !2117)
!2117 = !{!109, !2055}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2102, file: !2103, line: 578, baseType: !2119, size: 64, offset: 256)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!109, !2055, !320, !320, !320}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2102, file: !2103, line: 580, baseType: !2123, size: 64, offset: 320)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!2126, !2127}
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2103, line: 512, size: 896, elements: !2129)
!2129 = !{!2130, !2138, !2139, !2146, !2153, !2163, !2292, !2293, !2295, !2297}
!2130 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !2103, line: 513, baseType: !2131, size: 320)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2128, file: !2103, line: 513, size: 320, elements: !2132)
!2132 = !{!2133, !2134, !2135, !2136, !2137}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2131, file: !2103, line: 514, baseType: !2055, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2131, file: !2103, line: 515, baseType: !1126, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2131, file: !2103, line: 516, baseType: !320, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2131, file: !2103, line: 517, baseType: !320, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2131, file: !2103, line: 518, baseType: !320, size: 64, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2128, file: !2103, line: 520, baseType: !29, size: 32, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2128, file: !2103, line: 522, baseType: !2140, size: 64, offset: 384)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2075, line: 22, baseType: !2142)
!2142 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2075, line: 22, size: 64, elements: !2143)
!2143 = !{!2144}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2142, file: !2075, line: 22, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2075, line: 15, baseType: !320)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2128, file: !2103, line: 524, baseType: !2147, size: 64, offset: 448)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2070, line: 372, baseType: !2149)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2070, line: 372, size: 64, elements: !2150)
!2150 = !{!2151}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2149, file: !2070, line: 372, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2075, line: 16, baseType: !320)
!2153 = !DIDerivedType(tag: DW_TAG_member, scope: !2128, file: !2103, line: 527, baseType: !2154, size: 64, offset: 512)
!2154 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2128, file: !2103, line: 527, size: 64, elements: !2155)
!2155 = !{!2156, !2162}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2154, file: !2103, line: 528, baseType: !2157, size: 64)
!2157 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2075, line: 21, baseType: !2158)
!2158 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2075, line: 21, size: 64, elements: !2159)
!2159 = !{!2160}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2158, file: !2075, line: 21, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2075, line: 14, baseType: !320)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2154, file: !2103, line: 529, baseType: !2141, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2128, file: !2103, line: 534, baseType: !2164, size: 64, offset: 576)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !2166)
!2166 = !{!2167, !2168, !2286, !2291}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2165, file: !30, line: 75, baseType: !320, size: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !30, line: 83, baseType: !2169, size: 320, offset: 64)
!2169 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !30, line: 83, size: 320, elements: !2170)
!2170 = !{!2171, !2192, !2206, !2210, !2285}
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !30, line: 84, baseType: !2172, size: 320)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !30, line: 84, size: 320, elements: !2173)
!2173 = !{!2174, !2185, !2186, !2191}
!2174 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !30, line: 90, baseType: !2175, size: 128)
!2175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2172, file: !30, line: 90, size: 128, elements: !2176)
!2176 = !{!2177, !2178, !2183, !2184}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2175, file: !30, line: 91, baseType: !186, size: 128)
!2178 = !DIDerivedType(tag: DW_TAG_member, scope: !2175, file: !30, line: 94, baseType: !2179, size: 128)
!2179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2175, file: !30, line: 94, size: 128, elements: !2180)
!2180 = !{!2181, !2182}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2179, file: !30, line: 96, baseType: !342, size: 64)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2179, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2175, file: !30, line: 102, baseType: !186, size: 128)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2175, file: !30, line: 103, baseType: !186, size: 128)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2172, file: !30, line: 106, baseType: !347, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !30, line: 107, baseType: !2187, size: 64, offset: 192)
!2187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2172, file: !30, line: 107, size: 64, elements: !2188)
!2188 = !{!2189, !2190}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2187, file: !30, line: 108, baseType: !320, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2187, file: !30, line: 109, baseType: !320, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2172, file: !30, line: 117, baseType: !320, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !30, line: 119, baseType: !2193, size: 320)
!2193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !30, line: 119, size: 320, elements: !2194)
!2194 = !{!2195, !2196, !2199, !2200, !2201}
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2193, file: !30, line: 124, baseType: !320, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2193, file: !30, line: 125, baseType: !2197, size: 64, offset: 64)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2193, file: !30, line: 126, baseType: !320, size: 64, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2193, file: !30, line: 127, baseType: !320, size: 64, offset: 192)
!2201 = !DIDerivedType(tag: DW_TAG_member, scope: !2193, file: !30, line: 128, baseType: !2202, size: 64, offset: 256)
!2202 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2193, file: !30, line: 128, size: 64, elements: !2203)
!2203 = !{!2204, !2205}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2202, file: !30, line: 133, baseType: !320, size: 64)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2202, file: !30, line: 138, baseType: !616, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !30, line: 141, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !30, line: 141, size: 64, elements: !2208)
!2208 = !{!2209}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2207, file: !30, line: 142, baseType: !320, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !30, line: 144, baseType: !2211, size: 128)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2169, file: !30, line: 144, size: 128, elements: !2212)
!2212 = !{!2213, !2284}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2211, file: !30, line: 146, baseType: !2214, size: 64)
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !2216)
!2216 = !{!2217, !2227, !2248, !2249, !2250, !2251, !2252, !2266, !2267, !2268}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2215, file: !22, line: 127, baseType: !2218, size: 384)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !2219)
!2219 = !{!2220, !2221, !2223, !2224, !2225, !2226}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2218, file: !22, line: 22, baseType: !320, size: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2218, file: !22, line: 23, baseType: !2222, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2218, file: !22, line: 24, baseType: !2222, size: 64, offset: 128)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2218, file: !22, line: 25, baseType: !320, size: 64, offset: 192)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2218, file: !22, line: 26, baseType: !320, size: 64, offset: 256)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2218, file: !22, line: 27, baseType: !320, size: 64, offset: 320)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2215, file: !22, line: 128, baseType: !2228, size: 128, offset: 384)
!2228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2229, line: 105, size: 128, elements: !2230)
!2229 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2230 = !{!2231, !2232}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2228, file: !2229, line: 110, baseType: !320, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2228, file: !2229, line: 118, baseType: !2233, size: 64, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2229, line: 95, size: 448, elements: !2235)
!2235 = !{!2236, !2237, !2243, !2244, !2245, !2246, !2247}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2234, file: !2229, line: 96, baseType: !616, size: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2234, file: !2229, line: 97, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2229, line: 60, baseType: !2240)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{null, !2242}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2234, file: !2229, line: 98, baseType: !2238, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2234, file: !2229, line: 99, baseType: !692, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2234, file: !2229, line: 100, baseType: !692, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2234, file: !2229, line: 101, baseType: !832, size: 128, align: 64, offset: 256)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2234, file: !2229, line: 102, baseType: !2242, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2215, file: !22, line: 129, baseType: !561, size: 256, offset: 512)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2215, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2215, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2215, file: !22, line: 132, baseType: !320, size: 64, offset: 832)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2215, file: !22, line: 133, baseType: !2253, size: 64, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2255)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !2256)
!2256 = !{!2257, !2261, !2262}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2255, file: !22, line: 83, baseType: !2258, size: 64)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{null, !2164}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2255, file: !22, line: 89, baseType: !2123, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2255, file: !22, line: 100, baseType: !2263, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!109, !2214, !320, !320, !109}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2215, file: !22, line: 134, baseType: !342, size: 64, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2215, file: !22, line: 135, baseType: !109, size: 32, offset: 1024)
!2268 = !DIDerivedType(tag: DW_TAG_member, scope: !2215, file: !22, line: 136, baseType: !2269, size: 128, offset: 1088)
!2269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2215, file: !22, line: 136, size: 128, elements: !2270)
!2270 = !{!2271, !2277}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2269, file: !22, line: 137, baseType: !2272, size: 128)
!2272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2273, line: 6, size: 128, elements: !2274)
!2273 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2272, file: !2273, line: 7, baseType: !424, size: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2272, file: !2273, line: 8, baseType: !424, size: 64, offset: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, scope: !2269, file: !22, line: 138, baseType: !2278)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2269, file: !22, line: 138, elements: !2279)
!2279 = !{!2280, !2282}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2278, file: !22, line: 138, baseType: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2278, file: !22, line: 138, elements: !901)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2278, file: !22, line: 138, baseType: !2283)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2272, elements: !1764)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2211, file: !30, line: 147, baseType: !342, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2169, file: !30, line: 161, baseType: !832, size: 128, align: 64)
!2286 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !30, line: 164, baseType: !2287, size: 32, offset: 384)
!2287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !30, line: 164, size: 32, elements: !2288)
!2288 = !{!2289, !2290}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2287, file: !30, line: 169, baseType: !220, size: 32)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2287, file: !30, line: 177, baseType: !7, size: 32)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2165, file: !30, line: 181, baseType: !220, size: 32, offset: 416)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2128, file: !2103, line: 535, baseType: !2164, size: 64, offset: 640)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2128, file: !2103, line: 541, baseType: !2294, size: 64, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2128, file: !2103, line: 545, baseType: !2296, size: 64, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2128, file: !2103, line: 549, baseType: !2298, size: 64, offset: 832)
!2298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2070, line: 520, baseType: !2164)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2102, file: !2103, line: 581, baseType: !2300, size: 64, offset: 384)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!2126, !2127, !7}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2102, file: !2103, line: 582, baseType: !2304, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!2126, !2127, !320, !320}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2102, file: !2103, line: 584, baseType: !2308, size: 64, offset: 512)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!320, !2055}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2102, file: !2103, line: 588, baseType: !2123, size: 64, offset: 576)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2102, file: !2103, line: 591, baseType: !2123, size: 64, offset: 640)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2102, file: !2103, line: 597, baseType: !2314, size: 64, offset: 704)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!109, !2055, !320, !342, !109, !109}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2102, file: !2103, line: 603, baseType: !2318, size: 64, offset: 768)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!182, !2055}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2102, file: !2103, line: 613, baseType: !2322, size: 64, offset: 832)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{!109, !2055, !2325}
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1056, line: 54, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2102, file: !2103, line: 625, baseType: !2328, size: 64, offset: 896)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!2325, !2055, !320}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2102, file: !2103, line: 633, baseType: !2332, size: 64, offset: 960)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!2164, !2055, !320}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2056, file: !30, line: 697, baseType: !320, size: 64, offset: 1024)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2056, file: !30, line: 699, baseType: !1704, size: 64, offset: 1088)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2056, file: !30, line: 700, baseType: !342, size: 64, offset: 1152)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2056, file: !30, line: 711, baseType: !616, size: 64, offset: 1216)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2056, file: !30, line: 717, baseType: !2325, size: 64, offset: 1280)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2056, file: !30, line: 722, baseType: !2341, offset: 1344)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !901)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1974, file: !59, line: 1928, baseType: !320, size: 64, offset: 768)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1974, file: !59, line: 1929, baseType: !2344, size: 64, offset: 832)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!109, !351, !1704}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1974, file: !59, line: 1930, baseType: !2348, size: 64, offset: 896)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!109, !1704, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !342)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1974, file: !59, line: 1931, baseType: !2344, size: 64, offset: 960)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1974, file: !59, line: 1932, baseType: !2354, size: 64, offset: 1024)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!109, !1704, !512, !512, !109}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1974, file: !59, line: 1933, baseType: !2358, size: 64, offset: 1088)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!109, !109, !1704, !109}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1974, file: !59, line: 1934, baseType: !2362, size: 64, offset: 1152)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!109, !1704, !109, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1974, file: !59, line: 1935, baseType: !1701, size: 64, offset: 1216)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1974, file: !59, line: 1936, baseType: !2369, size: 64, offset: 1280)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!109, !109}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1974, file: !59, line: 1937, baseType: !2362, size: 64, offset: 1344)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1974, file: !59, line: 1938, baseType: !2374, size: 64, offset: 1408)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!302, !2377, !1704, !1985, !317, !7}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1056, line: 59, flags: DIFlagFwdDecl)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1974, file: !59, line: 1939, baseType: !2380, size: 64, offset: 1472)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!302, !1704, !1985, !2377, !317, !7}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1974, file: !59, line: 1940, baseType: !2384, size: 64, offset: 1536)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{null, !1704}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1974, file: !59, line: 1941, baseType: !2388, size: 64, offset: 1600)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!109, !1704, !109, !2391, !2392}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1974, file: !59, line: 1942, baseType: !2394, size: 64, offset: 1664)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!306, !1704, !109, !512, !512}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1974, file: !59, line: 1944, baseType: !2398, size: 64, offset: 1728)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{null, !1054, !1704}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1974, file: !59, line: 1948, baseType: !2402, size: 64, offset: 1792)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!302, !1704, !512, !1704, !512, !317, !7}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1974, file: !59, line: 1950, baseType: !2406, size: 64, offset: 1856)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!512, !1704, !512, !1704, !512, !512, !7}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1974, file: !59, line: 1953, baseType: !2354, size: 64, offset: 1920)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1974, file: !59, line: 1954, baseType: !2411, size: 64, offset: 1984)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!109, !2414, !7}
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1974, file: !59, line: 1955, baseType: !2417, size: 64, offset: 2048)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!109, !2414, !2023, !7}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1705, file: !59, line: 1018, baseType: !424, size: 64, offset: 1472)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1705, file: !59, line: 1020, baseType: !342, size: 64, offset: 1536)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1705, file: !59, line: 1023, baseType: !342, size: 64, offset: 1600)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1705, file: !59, line: 1027, baseType: !2424, size: 64, offset: 1664)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1705, file: !59, line: 1029, baseType: !347, size: 64, offset: 1728)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1705, file: !59, line: 1030, baseType: !2427, size: 32, offset: 1792)
!2427 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2428, line: 8, baseType: !420)
!2428 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1705, file: !59, line: 1031, baseType: !2427, size: 32, offset: 1824)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1681, file: !30, line: 756, baseType: !320, size: 64, offset: 704)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1681, file: !30, line: 757, baseType: !320, size: 64, offset: 768)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1681, file: !30, line: 760, baseType: !320, size: 64, offset: 832)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1681, file: !30, line: 761, baseType: !320, size: 64, offset: 896)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1681, file: !30, line: 763, baseType: !320, size: 64, offset: 960)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1681, file: !30, line: 764, baseType: !2436, size: 64, offset: 1024)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2070, line: 299, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2070, line: 299, size: 64, elements: !2439)
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2438, file: !2070, line: 299, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2075, line: 18, baseType: !320)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1681, file: !30, line: 773, baseType: !220, size: 32, offset: 1088)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1681, file: !30, line: 785, baseType: !220, size: 32, offset: 1120)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1681, file: !30, line: 795, baseType: !2445, size: 64, offset: 1152)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !2447)
!2447 = !{!2448, !2449}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2446, file: !30, line: 727, baseType: !424, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2446, file: !30, line: 728, baseType: !109, size: 32, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1681, file: !30, line: 801, baseType: !320, size: 64, offset: 1216)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1681, file: !30, line: 804, baseType: !616, size: 64, offset: 1280)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1681, file: !30, line: 806, baseType: !109, size: 32, offset: 1344)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1681, file: !30, line: 808, baseType: !200, size: 32, offset: 1376)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1681, file: !30, line: 823, baseType: !1274, size: 320, offset: 1408)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1681, file: !30, line: 825, baseType: !186, size: 128, offset: 1728)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1681, file: !30, line: 845, baseType: !109, size: 32, offset: 1856)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1681, file: !30, line: 849, baseType: !320, size: 64, offset: 1920)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1681, file: !30, line: 850, baseType: !320, size: 64, offset: 1984)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1681, file: !30, line: 852, baseType: !320, size: 64, offset: 2048)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1681, file: !30, line: 853, baseType: !320, size: 64, offset: 2112)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1681, file: !30, line: 854, baseType: !618, size: 64, offset: 2176)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1681, file: !30, line: 855, baseType: !320, size: 64, offset: 2240)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1681, file: !30, line: 856, baseType: !320, size: 64, offset: 2304)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1681, file: !30, line: 857, baseType: !320, size: 64, offset: 2368)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1681, file: !30, line: 858, baseType: !320, size: 64, offset: 2432)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1681, file: !30, line: 865, baseType: !397, size: 32, offset: 2496)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1681, file: !30, line: 867, baseType: !200, size: 32, offset: 2528)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1681, file: !30, line: 869, baseType: !320, size: 64, offset: 2560)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1681, file: !30, line: 869, baseType: !320, size: 64, offset: 2624)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1681, file: !30, line: 869, baseType: !320, size: 64, offset: 2688)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1681, file: !30, line: 869, baseType: !320, size: 64, offset: 2752)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1681, file: !30, line: 870, baseType: !320, size: 64, offset: 2816)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1681, file: !30, line: 870, baseType: !320, size: 64, offset: 2880)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1681, file: !30, line: 870, baseType: !320, size: 64, offset: 2944)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1681, file: !30, line: 871, baseType: !320, size: 64, offset: 3008)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1681, file: !30, line: 871, baseType: !320, size: 64, offset: 3072)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1681, file: !30, line: 871, baseType: !320, size: 64, offset: 3136)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1681, file: !30, line: 871, baseType: !320, size: 64, offset: 3200)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1681, file: !30, line: 873, baseType: !2480, size: 3328, offset: 3264)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 3328, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: 52)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1681, file: !30, line: 875, baseType: !2484, size: 1280, offset: 6592)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1916, size: 1280, elements: !842)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1681, file: !30, line: 877, baseType: !2486, size: 64, offset: 7872)
!2486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2487, size: 64)
!2487 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1681, file: !30, line: 880, baseType: !2489, size: 1088, offset: 7936)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2490, line: 72, baseType: !2491)
!2490 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2490, line: 23, size: 1088, elements: !2492)
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2500, !2501, !2502, !2503, !2530, !2531, !2532}
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2491, file: !2490, line: 28, baseType: !424, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2491, file: !2490, line: 38, baseType: !618, size: 64, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2491, file: !2490, line: 40, baseType: !320, size: 64, offset: 128)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2491, file: !2490, line: 43, baseType: !1274, size: 320, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2491, file: !2490, line: 44, baseType: !2498, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2490, line: 44, flags: DIFlagFwdDecl)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2491, file: !2490, line: 48, baseType: !320, size: 64, offset: 576)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2491, file: !2490, line: 59, baseType: !612, size: 256, offset: 640)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2491, file: !2490, line: 60, baseType: !342, size: 64, offset: 896)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2491, file: !2490, line: 61, baseType: !2504, size: 64, offset: 960)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2507, line: 13, size: 1216, elements: !2508)
!2507 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2508 = !{!2509, !2510, !2511, !2512, !2513, !2514, !2515, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529}
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2506, file: !2507, line: 14, baseType: !342, size: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2506, file: !2507, line: 15, baseType: !320, size: 64, offset: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2506, file: !2507, line: 17, baseType: !320, size: 64, offset: 128)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2506, file: !2507, line: 17, baseType: !320, size: 64, offset: 192)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2506, file: !2507, line: 18, baseType: !320, size: 64, offset: 256)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2506, file: !2507, line: 18, baseType: !320, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2506, file: !2507, line: 19, baseType: !2516, size: 64, offset: 384)
!2516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2517, size: 64)
!2517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2506, file: !2507, line: 21, baseType: !306, size: 64, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2506, file: !2507, line: 23, baseType: !306, size: 64, offset: 512)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2506, file: !2507, line: 24, baseType: !306, size: 64, offset: 576)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2506, file: !2507, line: 25, baseType: !306, size: 64, offset: 640)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2506, file: !2507, line: 26, baseType: !306, size: 64, offset: 704)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2506, file: !2507, line: 27, baseType: !306, size: 64, offset: 768)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2506, file: !2507, line: 28, baseType: !306, size: 64, offset: 832)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2506, file: !2507, line: 29, baseType: !306, size: 64, offset: 896)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2506, file: !2507, line: 30, baseType: !306, size: 64, offset: 960)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2506, file: !2507, line: 31, baseType: !306, size: 64, offset: 1024)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2506, file: !2507, line: 32, baseType: !306, size: 64, offset: 1088)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2506, file: !2507, line: 33, baseType: !306, size: 64, offset: 1152)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2491, file: !2490, line: 63, baseType: !220, size: 32, offset: 1024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2491, file: !2490, line: 69, baseType: !238, size: 16, offset: 1056)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2491, file: !2490, line: 70, baseType: !748, size: 16, offset: 1072)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1681, file: !30, line: 882, baseType: !320, size: 64, offset: 9024)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1681, file: !30, line: 885, baseType: !200, size: 32, offset: 9088)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1681, file: !30, line: 886, baseType: !2536, size: 64, offset: 9152)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1681, file: !30, line: 901, baseType: !1941, size: 64, offset: 9216)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1681, file: !30, line: 904, baseType: !1704, size: 64, offset: 9280)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1681, file: !30, line: 906, baseType: !2541, size: 64, offset: 9344)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1681, file: !30, line: 930, baseType: !220, size: 32, offset: 9408)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1681, file: !30, line: 933, baseType: !220, size: 32, offset: 9440)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1681, file: !30, line: 935, baseType: !2546, size: 64, offset: 9472)
!2546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !2547)
!2547 = !{!2548}
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2546, file: !81, line: 104, baseType: !2549, size: 64)
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1681, file: !30, line: 940, baseType: !616, size: 64, offset: 9536)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1681, file: !30, line: 942, baseType: !872, size: 256, offset: 9600)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1678, file: !30, line: 986, baseType: !2554, offset: 10240)
!2554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, elements: !1764)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1381, file: !1056, line: 882, baseType: !1677, size: 64, offset: 9792)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1381, file: !1056, line: 884, baseType: !109, size: 32, offset: 9856)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1381, file: !1056, line: 885, baseType: !109, size: 32, offset: 9888)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1381, file: !1056, line: 886, baseType: !109, size: 32, offset: 9920)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1381, file: !1056, line: 888, baseType: !109, size: 32, offset: 9952)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1381, file: !1056, line: 890, baseType: !320, size: 64, offset: 9984)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1381, file: !1056, line: 893, baseType: !7, size: 32, offset: 10048)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1381, file: !1056, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1381, file: !1056, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1381, file: !1056, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1381, file: !1056, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1381, file: !1056, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1381, file: !1056, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1381, file: !1056, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1381, file: !1056, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1381, file: !1056, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1381, file: !1056, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1381, file: !1056, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1381, file: !1056, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1381, file: !1056, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1381, file: !1056, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1381, file: !1056, line: 969, baseType: !320, size: 64, offset: 10176)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1381, file: !1056, line: 971, baseType: !2578, size: 448, offset: 10240)
!2578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !2579)
!2579 = !{!2580, !2581, !2586}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2578, file: !75, line: 26, baseType: !320, size: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2578, file: !75, line: 27, baseType: !2582, size: 64, offset: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!306, !2585}
!2585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, scope: !2578, file: !75, line: 28, baseType: !2587, size: 320, offset: 128)
!2587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2578, file: !75, line: 28, size: 320, elements: !2588)
!2588 = !{!2589, !2599, !2624}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2587, file: !75, line: 37, baseType: !2590, size: 320)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !75, line: 30, size: 320, elements: !2591)
!2591 = !{!2592, !2594, !2595, !2596, !2597, !2598}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2590, file: !75, line: 31, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2590, file: !75, line: 32, baseType: !420, size: 32, offset: 64)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2590, file: !75, line: 33, baseType: !420, size: 32, offset: 96)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2590, file: !75, line: 34, baseType: !420, size: 32, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2590, file: !75, line: 35, baseType: !424, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2590, file: !75, line: 36, baseType: !2593, size: 64, offset: 256)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2587, file: !75, line: 47, baseType: !2600, size: 192)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !75, line: 39, size: 192, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2623}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2600, file: !75, line: 40, baseType: !1548, size: 32)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2600, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, scope: !2600, file: !75, line: 42, baseType: !2605, size: 64, offset: 64)
!2605 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2600, file: !75, line: 42, size: 64, elements: !2606)
!2606 = !{!2607, !2615}
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2605, file: !75, line: 43, baseType: !2608, size: 64)
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2610, line: 7, size: 128, elements: !2611)
!2610 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2611 = !{!2612, !2614}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2609, file: !2610, line: 8, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !304, line: 93, baseType: !514)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2609, file: !2610, line: 9, baseType: !514, size: 64, offset: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2605, file: !75, line: 44, baseType: !2616, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2618, line: 7, size: 64, elements: !2619)
!2618 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2619 = !{!2620, !2622}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2617, file: !2618, line: 8, baseType: !2621, size: 32)
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2618, line: 5, baseType: !608)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2617, file: !2618, line: 9, baseType: !608, size: 32, offset: 32)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2600, file: !75, line: 46, baseType: !424, size: 64, offset: 128)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2587, file: !75, line: 55, baseType: !2625, size: 256)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2587, file: !75, line: 49, size: 256, elements: !2626)
!2626 = !{!2627, !2630, !2631, !2632, !2633}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2625, file: !75, line: 50, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2625, file: !75, line: 51, baseType: !109, size: 32, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2625, file: !75, line: 52, baseType: !109, size: 32, offset: 96)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2625, file: !75, line: 53, baseType: !320, size: 64, offset: 128)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2625, file: !75, line: 54, baseType: !320, size: 64, offset: 192)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1381, file: !1056, line: 973, baseType: !2635, size: 32, offset: 10688)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !187, line: 27, baseType: !2636)
!2636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !304, line: 28, baseType: !109)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1381, file: !1056, line: 974, baseType: !2635, size: 32, offset: 10720)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1381, file: !1056, line: 978, baseType: !320, size: 64, offset: 10752)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1381, file: !1056, line: 987, baseType: !1380, size: 64, offset: 10816)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1381, file: !1056, line: 990, baseType: !1380, size: 64, offset: 10880)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1381, file: !1056, line: 995, baseType: !186, size: 128, offset: 10944)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1381, file: !1056, line: 996, baseType: !186, size: 128, offset: 11072)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1381, file: !1056, line: 997, baseType: !1380, size: 64, offset: 11200)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1381, file: !1056, line: 1005, baseType: !186, size: 128, offset: 11264)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1381, file: !1056, line: 1006, baseType: !186, size: 128, offset: 11392)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1381, file: !1056, line: 1009, baseType: !1745, size: 64, offset: 11520)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1381, file: !1056, line: 1010, baseType: !2648, size: 512, offset: 11584)
!2648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !858, size: 512, elements: !842)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1381, file: !1056, line: 1011, baseType: !186, size: 128, offset: 12096)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1381, file: !1056, line: 1012, baseType: !186, size: 128, offset: 12224)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1381, file: !1056, line: 1014, baseType: !560, size: 64, offset: 12352)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1381, file: !1056, line: 1017, baseType: !741, size: 64, offset: 12416)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1381, file: !1056, line: 1020, baseType: !741, size: 64, offset: 12480)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1381, file: !1056, line: 1023, baseType: !342, size: 64, offset: 12544)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1381, file: !1056, line: 1025, baseType: !424, size: 64, offset: 12608)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1381, file: !1056, line: 1026, baseType: !424, size: 64, offset: 12672)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1381, file: !1056, line: 1031, baseType: !424, size: 64, offset: 12736)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1381, file: !1056, line: 1032, baseType: !2659, size: 192, offset: 12800)
!2659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1056, line: 324, size: 192, elements: !2660)
!2660 = !{!2661, !2662, !2663}
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2659, file: !1056, line: 326, baseType: !424, size: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2659, file: !1056, line: 327, baseType: !424, size: 64, offset: 64)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2659, file: !1056, line: 328, baseType: !570, size: 32, offset: 128)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1381, file: !1056, line: 1041, baseType: !320, size: 64, offset: 12992)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1381, file: !1056, line: 1042, baseType: !320, size: 64, offset: 13056)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1381, file: !1056, line: 1045, baseType: !424, size: 64, offset: 13120)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1381, file: !1056, line: 1048, baseType: !424, size: 64, offset: 13184)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1381, file: !1056, line: 1051, baseType: !320, size: 64, offset: 13248)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1381, file: !1056, line: 1052, baseType: !320, size: 64, offset: 13312)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1381, file: !1056, line: 1055, baseType: !2671, size: 640, offset: 13376)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2672, line: 132, size: 640, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2673 = !{!2674, !2680, !2681}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2671, file: !2672, line: 133, baseType: !2675, size: 576)
!2675 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2676, size: 576, elements: !271)
!2676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2672, line: 117, size: 192, elements: !2677)
!2677 = !{!2678, !2679}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2676, file: !2672, line: 118, baseType: !424, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2676, file: !2672, line: 119, baseType: !1557, size: 128, offset: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2671, file: !2672, line: 134, baseType: !7, size: 32, offset: 576)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2671, file: !2672, line: 135, baseType: !7, size: 32, offset: 608)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1381, file: !1056, line: 1058, baseType: !2683, size: 448, offset: 14016)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2672, line: 144, size: 448, elements: !2684)
!2684 = !{!2685, !2686, !2687}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2683, file: !2672, line: 145, baseType: !832, size: 128, align: 64)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2683, file: !2672, line: 146, baseType: !612, size: 256, offset: 128)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2683, file: !2672, line: 147, baseType: !7, size: 32, offset: 384)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1381, file: !1056, line: 1064, baseType: !1771, size: 64, offset: 14464)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1381, file: !1056, line: 1067, baseType: !1771, size: 64, offset: 14528)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1381, file: !1056, line: 1070, baseType: !1771, size: 64, offset: 14592)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1381, file: !1056, line: 1074, baseType: !1798, size: 64, offset: 14656)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1381, file: !1056, line: 1084, baseType: !2693, size: 128, offset: 14720)
!2693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 128, elements: !2694)
!2694 = !{!2695}
!2695 = !DISubrange(count: 16)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1381, file: !1056, line: 1086, baseType: !2697, size: 64, offset: 14848)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1056, line: 55, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1381, file: !1056, line: 1089, baseType: !2700, size: 64, offset: 14912)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2701, line: 12, size: 64, elements: !2702)
!2701 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2702 = !{!2703}
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2700, file: !2701, line: 13, baseType: !2704, size: 64)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2701, line: 8, flags: DIFlagFwdDecl)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1381, file: !1056, line: 1090, baseType: !2707, size: 128, offset: 14976)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2708, line: 13, size: 128, elements: !2709)
!2708 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2709 = !{!2710}
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2707, file: !2708, line: 14, baseType: !186, size: 128)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1381, file: !1056, line: 1097, baseType: !2712, size: 64, offset: 15104)
!2712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2713 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1056, line: 50, flags: DIFlagFwdDecl)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1381, file: !1056, line: 1100, baseType: !2715, size: 64, offset: 15168)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1056, line: 1100, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1381, file: !1056, line: 1103, baseType: !2718, size: 64, offset: 15232)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1056, line: 53, flags: DIFlagFwdDecl)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1381, file: !1056, line: 1107, baseType: !2721, size: 64, offset: 15296)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1056, line: 56, flags: DIFlagFwdDecl)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1381, file: !1056, line: 1110, baseType: !2724, size: 64, offset: 15360)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2726, line: 93, size: 8768, elements: !2727)
!2726 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2727 = !{!2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2775, !2784, !2785, !2787, !2788, !2789, !2792, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2830, !2831, !2838, !2848, !2851, !2852, !2855, !2856, !2857, !2858, !2859, !2860}
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2725, file: !2726, line: 94, baseType: !1394, size: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2725, file: !2726, line: 95, baseType: !220, size: 32, offset: 32)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2725, file: !2726, line: 96, baseType: !109, size: 32, offset: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2725, file: !2726, line: 97, baseType: !109, size: 32, offset: 96)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2725, file: !2726, line: 98, baseType: !186, size: 128, offset: 128)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2725, file: !2726, line: 100, baseType: !1367, size: 192, offset: 256)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2725, file: !2726, line: 103, baseType: !1380, size: 64, offset: 448)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2725, file: !2726, line: 106, baseType: !2736, size: 192, offset: 512)
!2736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1946, line: 32, size: 192, elements: !2737)
!2737 = !{!2738, !2739}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2736, file: !1946, line: 33, baseType: !186, size: 128)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2736, file: !1946, line: 34, baseType: !2740, size: 64, offset: 128)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2741, line: 25, baseType: !2742)
!2741 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2741, line: 23, size: 64, elements: !2743)
!2743 = !{!2744}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2742, file: !2741, line: 24, baseType: !1628, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2725, file: !2726, line: 109, baseType: !982, size: 64, offset: 704)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2725, file: !2726, line: 112, baseType: !109, size: 32, offset: 768)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2725, file: !2726, line: 114, baseType: !109, size: 32, offset: 800)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2725, file: !2726, line: 115, baseType: !1380, size: 64, offset: 832)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2725, file: !2726, line: 118, baseType: !109, size: 32, offset: 896)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2725, file: !2726, line: 119, baseType: !7, size: 32, offset: 928)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2725, file: !2726, line: 121, baseType: !2752, size: 64, offset: 960)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2726, line: 80, size: 448, elements: !2754)
!2754 = !{!2755, !2756, !2762}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2753, file: !2726, line: 81, baseType: !220, size: 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2753, file: !2726, line: 82, baseType: !2757, size: 128, offset: 64)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2726, line: 75, size: 128, elements: !2758)
!2758 = !{!2759, !2760}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2757, file: !2726, line: 76, baseType: !1380, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2757, file: !2726, line: 77, baseType: !2761, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2753, file: !2726, line: 83, baseType: !561, size: 256, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2725, file: !2726, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2725, file: !2726, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2725, file: !2726, line: 138, baseType: !7, size: 32, offset: 1056)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2725, file: !2726, line: 139, baseType: !186, size: 128, offset: 1088)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2725, file: !2726, line: 142, baseType: !1501, size: 512, offset: 1216)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2725, file: !2726, line: 143, baseType: !1509, size: 64, offset: 1728)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2725, file: !2726, line: 150, baseType: !2770, size: 256, offset: 1792)
!2770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2771, size: 256, elements: !731)
!2771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2726, line: 38, size: 128, elements: !2772)
!2772 = !{!2773, !2774}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2771, file: !2726, line: 39, baseType: !424, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2771, file: !2726, line: 40, baseType: !424, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2725, file: !2726, line: 156, baseType: !2776, size: 192, offset: 2048)
!2776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2726, line: 66, size: 192, elements: !2777)
!2777 = !{!2778}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2776, file: !2726, line: 67, baseType: !2779, size: 192)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2726, line: 47, size: 192, elements: !2780)
!2780 = !{!2781, !2782, !2783}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2779, file: !2726, line: 48, baseType: !618, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2779, file: !2726, line: 49, baseType: !618, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2779, file: !2726, line: 50, baseType: !618, size: 64, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2725, file: !2726, line: 160, baseType: !2671, size: 640, offset: 2240)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2725, file: !2726, line: 163, baseType: !2786, size: 256, offset: 2880)
!2786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, size: 256, elements: !842)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2725, file: !2726, line: 169, baseType: !1745, size: 64, offset: 3136)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2725, file: !2726, line: 172, baseType: !109, size: 32, offset: 3200)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2725, file: !2726, line: 174, baseType: !2790, size: 64, offset: 3264)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2726, line: 174, flags: DIFlagFwdDecl)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2725, file: !2726, line: 185, baseType: !2793, size: 64, offset: 3328)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !393, line: 860, baseType: !2794)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !393, line: 853, size: 64, elements: !2795)
!2795 = !{!2796, !2797}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2794, file: !393, line: 858, baseType: !392, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2794, file: !393, line: 859, baseType: !200, size: 32, offset: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2725, file: !2726, line: 186, baseType: !424, size: 64, offset: 3392)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2725, file: !2726, line: 186, baseType: !424, size: 64, offset: 3456)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2725, file: !2726, line: 186, baseType: !424, size: 64, offset: 3520)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2725, file: !2726, line: 186, baseType: !424, size: 64, offset: 3584)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2725, file: !2726, line: 187, baseType: !424, size: 64, offset: 3648)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2725, file: !2726, line: 188, baseType: !424, size: 64, offset: 3712)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2725, file: !2726, line: 189, baseType: !2659, size: 192, offset: 3776)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2725, file: !2726, line: 190, baseType: !320, size: 64, offset: 3968)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2725, file: !2726, line: 190, baseType: !320, size: 64, offset: 4032)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2725, file: !2726, line: 190, baseType: !320, size: 64, offset: 4096)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2725, file: !2726, line: 190, baseType: !320, size: 64, offset: 4160)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2725, file: !2726, line: 191, baseType: !320, size: 64, offset: 4224)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2725, file: !2726, line: 191, baseType: !320, size: 64, offset: 4288)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2725, file: !2726, line: 191, baseType: !320, size: 64, offset: 4352)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2725, file: !2726, line: 191, baseType: !320, size: 64, offset: 4416)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2725, file: !2726, line: 192, baseType: !320, size: 64, offset: 4480)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2725, file: !2726, line: 192, baseType: !320, size: 64, offset: 4544)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2725, file: !2726, line: 192, baseType: !320, size: 64, offset: 4608)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2725, file: !2726, line: 192, baseType: !320, size: 64, offset: 4672)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2725, file: !2726, line: 193, baseType: !320, size: 64, offset: 4736)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2725, file: !2726, line: 193, baseType: !320, size: 64, offset: 4800)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2725, file: !2726, line: 194, baseType: !2820, size: 448, offset: 4864)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2821, line: 12, size: 448, elements: !2822)
!2821 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2822 = !{!2823, !2824, !2825, !2826, !2827, !2828, !2829}
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2820, file: !2821, line: 15, baseType: !424, size: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2820, file: !2821, line: 17, baseType: !424, size: 64, offset: 64)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2820, file: !2821, line: 19, baseType: !424, size: 64, offset: 128)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2820, file: !2821, line: 21, baseType: !424, size: 64, offset: 192)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2820, file: !2821, line: 29, baseType: !424, size: 64, offset: 256)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2820, file: !2821, line: 35, baseType: !424, size: 64, offset: 320)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2820, file: !2821, line: 44, baseType: !424, size: 64, offset: 384)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2725, file: !2726, line: 202, baseType: !426, size: 64, offset: 5312)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2725, file: !2726, line: 213, baseType: !2832, size: 2048, offset: 5376)
!2832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2833, size: 2048, elements: !2694)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2834, line: 43, size: 128, elements: !2835)
!2834 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2835 = !{!2836, !2837}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2833, file: !2834, line: 44, baseType: !319, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2833, file: !2834, line: 45, baseType: !319, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2725, file: !2726, line: 216, baseType: !2839, size: 448, offset: 7424)
!2839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2726, line: 30, size: 448, elements: !2840)
!2840 = !{!2841, !2842, !2843, !2844, !2845, !2846, !2847}
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2839, file: !2726, line: 31, baseType: !109, size: 32)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2839, file: !2726, line: 32, baseType: !306, size: 64, offset: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2839, file: !2726, line: 33, baseType: !320, size: 64, offset: 128)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2839, file: !2726, line: 34, baseType: !424, size: 64, offset: 192)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2839, file: !2726, line: 34, baseType: !424, size: 64, offset: 256)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2839, file: !2726, line: 35, baseType: !320, size: 64, offset: 320)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2839, file: !2726, line: 35, baseType: !320, size: 64, offset: 384)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2725, file: !2726, line: 219, baseType: !2849, size: 64, offset: 7872)
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2726, line: 219, flags: DIFlagFwdDecl)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2725, file: !2726, line: 222, baseType: !7, size: 32, offset: 7936)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2725, file: !2726, line: 223, baseType: !2853, size: 64, offset: 8000)
!2853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2854, size: 64)
!2854 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2726, line: 223, flags: DIFlagFwdDecl)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2725, file: !2726, line: 230, baseType: !692, size: 8, offset: 8064)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2725, file: !2726, line: 231, baseType: !750, size: 16, offset: 8080)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2725, file: !2726, line: 232, baseType: !750, size: 16, offset: 8096)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2725, file: !2726, line: 234, baseType: !1677, size: 64, offset: 8128)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2725, file: !2726, line: 237, baseType: !612, size: 256, offset: 8192)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2725, file: !2726, line: 243, baseType: !1274, size: 320, offset: 8448)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1381, file: !1056, line: 1111, baseType: !2862, size: 64, offset: 15424)
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2726, line: 20, size: 16640, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2863, file: !2726, line: 21, baseType: !200, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2863, file: !2726, line: 22, baseType: !1394, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2863, file: !2726, line: 23, baseType: !1367, size: 192, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2863, file: !2726, line: 24, baseType: !2869, size: 16384, offset: 256)
!2869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2870, size: 16384, elements: !275)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1946, line: 51, size: 256, elements: !2871)
!2871 = !{!2872}
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2870, file: !1946, line: 52, baseType: !2873, size: 256)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1946, line: 37, size: 256, elements: !2874)
!2874 = !{!2875, !2882, !2883, !2887}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2873, file: !1946, line: 39, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2877, line: 83, baseType: !2878)
!2877 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2877, line: 82, baseType: !2880)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{null, !109}
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2873, file: !1946, line: 40, baseType: !320, size: 64, offset: 64)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2873, file: !1946, line: 46, baseType: !2884, size: 64, offset: 128)
!2884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2877, line: 86, baseType: !2885)
!2885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2877, line: 85, baseType: !977)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2873, file: !1946, line: 48, baseType: !2740, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1381, file: !1056, line: 1112, baseType: !2740, size: 64, offset: 15488)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1381, file: !1056, line: 1113, baseType: !2740, size: 64, offset: 15552)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1381, file: !1056, line: 1115, baseType: !2740, size: 64, offset: 15616)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1381, file: !1056, line: 1116, baseType: !2736, size: 192, offset: 15680)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1381, file: !1056, line: 1117, baseType: !320, size: 64, offset: 15872)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1381, file: !1056, line: 1118, baseType: !317, size: 64, offset: 15936)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1381, file: !1056, line: 1119, baseType: !7, size: 32, offset: 16000)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1381, file: !1056, line: 1121, baseType: !831, size: 64, offset: 16064)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1381, file: !1056, line: 1125, baseType: !2897, size: 64, offset: 16128)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1056, line: 43, flags: DIFlagFwdDecl)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1381, file: !1056, line: 1127, baseType: !357, size: 32, offset: 16192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1381, file: !1056, line: 1128, baseType: !7, size: 32, offset: 16224)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1381, file: !1056, line: 1130, baseType: !2902, size: 128, offset: 16256)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2903, line: 37, size: 128, elements: !2904)
!2903 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2904 = !{!2905, !2906, !2907}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2902, file: !2903, line: 38, baseType: !109, size: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2902, file: !2903, line: 39, baseType: !220, size: 32, offset: 32)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2902, file: !2903, line: 40, baseType: !2908, size: 64, offset: 64)
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2909, size: 64)
!2909 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2903, line: 24, flags: DIFlagFwdDecl)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1381, file: !1056, line: 1131, baseType: !2911, size: 256, offset: 16384)
!2911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2912, line: 12, size: 256, elements: !2913)
!2912 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2913 = !{!2914, !2915, !2916, !2917}
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2911, file: !2912, line: 13, baseType: !270, size: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2911, file: !2912, line: 14, baseType: !320, size: 64, offset: 64)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2911, file: !2912, line: 15, baseType: !320, size: 64, offset: 128)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2911, file: !2912, line: 16, baseType: !692, size: 8, offset: 192)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1381, file: !1056, line: 1134, baseType: !424, size: 64, offset: 16640)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1381, file: !1056, line: 1135, baseType: !424, size: 64, offset: 16704)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1381, file: !1056, line: 1138, baseType: !200, size: 32, offset: 16768)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1381, file: !1056, line: 1141, baseType: !570, size: 32, offset: 16800)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1381, file: !1056, line: 1143, baseType: !2923, size: 64, offset: 16832)
!2923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1056, line: 735, size: 64, elements: !2924)
!2924 = !{!2925}
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2923, file: !1056, line: 736, baseType: !2926, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2923, size: 64)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1381, file: !1056, line: 1147, baseType: !1560, size: 128, offset: 16896)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1381, file: !1056, line: 1149, baseType: !1380, size: 64, offset: 17024)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1381, file: !1056, line: 1151, baseType: !2930, size: 64, offset: 17088)
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2931 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1056, line: 1151, flags: DIFlagFwdDecl)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1381, file: !1056, line: 1188, baseType: !342, size: 64, offset: 17152)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1381, file: !1056, line: 1191, baseType: !2934, size: 64, offset: 17216)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1056, line: 44, flags: DIFlagFwdDecl)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1381, file: !1056, line: 1194, baseType: !2937, size: 64, offset: 17280)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1056, line: 45, flags: DIFlagFwdDecl)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1381, file: !1056, line: 1197, baseType: !2940, size: 64, offset: 17344)
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1056, line: 61, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1381, file: !1056, line: 1199, baseType: !2943, size: 64, offset: 17408)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2945, line: 99, size: 128, elements: !2946)
!2945 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2946 = !{!2947, !2948, !2949}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2944, file: !2945, line: 100, baseType: !616, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2944, file: !2945, line: 101, baseType: !220, size: 32, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2944, file: !2945, line: 103, baseType: !240, size: 16, offset: 96)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1381, file: !1056, line: 1202, baseType: !2951, size: 64, offset: 17472)
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2952, size: 64)
!2952 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1056, line: 48, flags: DIFlagFwdDecl)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1381, file: !1056, line: 1205, baseType: !320, size: 64, offset: 17536)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1381, file: !1056, line: 1206, baseType: !2955, size: 64, offset: 17600)
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2956, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1946, line: 14, baseType: !2957)
!2957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1946, line: 12, size: 384, elements: !2958)
!2958 = !{!2959}
!2959 = !DIDerivedType(tag: DW_TAG_member, scope: !2957, file: !1946, line: 13, baseType: !2960, size: 384)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2957, file: !1946, line: 13, size: 384, elements: !2961)
!2961 = !{!2962, !2963, !2964, !2965}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2960, file: !1946, line: 13, baseType: !109, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2960, file: !1946, line: 13, baseType: !109, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2960, file: !1946, line: 13, baseType: !109, size: 32, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2960, file: !1946, line: 13, baseType: !2966, size: 256, offset: 128)
!2966 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2967, line: 37, size: 256, elements: !2968)
!2967 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2968 = !{!2969, !2974, !2987, !2993, !3002, !3029, !3034}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2966, file: !2967, line: 42, baseType: !2970, size: 64)
!2970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2967, line: 39, size: 64, elements: !2971)
!2971 = !{!2972, !2973}
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2970, file: !2967, line: 40, baseType: !2636, size: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2970, file: !2967, line: 41, baseType: !363, size: 32, offset: 32)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2966, file: !2967, line: 50, baseType: !2975, size: 192)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2967, line: 45, size: 192, elements: !2976)
!2976 = !{!2977, !2979, !2980, !2986}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2975, file: !2967, line: 46, baseType: !2978, size: 32)
!2978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !304, line: 95, baseType: !109)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2975, file: !2967, line: 47, baseType: !109, size: 32, offset: 32)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2975, file: !2967, line: 48, baseType: !2981, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2967, line: 11, baseType: !2982)
!2982 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2967, line: 8, size: 64, elements: !2983)
!2983 = !{!2984, !2985}
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2982, file: !2967, line: 9, baseType: !109, size: 32)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2982, file: !2967, line: 10, baseType: !342, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2975, file: !2967, line: 49, baseType: !109, size: 32, offset: 128)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2966, file: !2967, line: 57, baseType: !2988, size: 128)
!2988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2967, line: 53, size: 128, elements: !2989)
!2989 = !{!2990, !2991, !2992}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2988, file: !2967, line: 54, baseType: !2636, size: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2988, file: !2967, line: 55, baseType: !363, size: 32, offset: 32)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2988, file: !2967, line: 56, baseType: !2981, size: 64, offset: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2966, file: !2967, line: 66, baseType: !2994, size: 256)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2967, line: 60, size: 256, elements: !2995)
!2995 = !{!2996, !2997, !2998, !2999, !3001}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2994, file: !2967, line: 61, baseType: !2636, size: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2994, file: !2967, line: 62, baseType: !363, size: 32, offset: 32)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2994, file: !2967, line: 63, baseType: !109, size: 32, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2994, file: !2967, line: 64, baseType: !3000, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !304, line: 94, baseType: !305)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2994, file: !2967, line: 65, baseType: !3000, size: 64, offset: 192)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2966, file: !2967, line: 105, baseType: !3003, size: 256)
!3003 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2967, line: 69, size: 256, elements: !3004)
!3004 = !{!3005, !3006}
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3003, file: !2967, line: 70, baseType: !342, size: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, scope: !3003, file: !2967, line: 79, baseType: !3007, size: 192, offset: 64)
!3007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3003, file: !2967, line: 79, size: 192, elements: !3008)
!3008 = !{!3009, !3010, !3011, !3018, !3023}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3007, file: !2967, line: 81, baseType: !109, size: 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3007, file: !2967, line: 86, baseType: !750, size: 16)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3007, file: !2967, line: 92, baseType: !3012, size: 192)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3007, file: !2967, line: 88, size: 192, elements: !3013)
!3013 = !{!3014, !3016, !3017}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3012, file: !2967, line: 89, baseType: !3015, size: 64)
!3015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 64, elements: !1544)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3012, file: !2967, line: 90, baseType: !342, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3012, file: !2967, line: 91, baseType: !342, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3007, file: !2967, line: 97, baseType: !3019, size: 96)
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3007, file: !2967, line: 94, size: 96, elements: !3020)
!3020 = !{!3021, !3022}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3019, file: !2967, line: 95, baseType: !3015, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3019, file: !2967, line: 96, baseType: !421, size: 32, offset: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3007, file: !2967, line: 103, baseType: !3024, size: 128)
!3024 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3007, file: !2967, line: 99, size: 128, elements: !3025)
!3025 = !{!3026, !3027, !3028}
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3024, file: !2967, line: 100, baseType: !320, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3024, file: !2967, line: 101, baseType: !421, size: 32, offset: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3024, file: !2967, line: 102, baseType: !421, size: 32, offset: 96)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2966, file: !2967, line: 111, baseType: !3030, size: 128)
!3030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2967, line: 108, size: 128, elements: !3031)
!3031 = !{!3032, !3033}
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3030, file: !2967, line: 109, baseType: !306, size: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3030, file: !2967, line: 110, baseType: !109, size: 32, offset: 64)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2966, file: !2967, line: 118, baseType: !3035, size: 128)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2966, file: !2967, line: 114, size: 128, elements: !3036)
!3036 = !{!3037, !3038, !3039}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3035, file: !2967, line: 115, baseType: !342, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3035, file: !2967, line: 116, baseType: !109, size: 32, offset: 64)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3035, file: !2967, line: 117, baseType: !7, size: 32, offset: 96)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1381, file: !1056, line: 1208, baseType: !2820, size: 448, offset: 17664)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1381, file: !1056, line: 1215, baseType: !424, size: 64, offset: 18112)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1381, file: !1056, line: 1217, baseType: !424, size: 64, offset: 18176)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1381, file: !1056, line: 1219, baseType: !424, size: 64, offset: 18240)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1381, file: !1056, line: 1223, baseType: !3045, size: 64, offset: 18304)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3046, line: 99, baseType: !3047)
!3046 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3046, line: 99, size: 64, elements: !3048)
!3048 = !{!3049}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3047, file: !3046, line: 99, baseType: !1628, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1381, file: !1056, line: 1225, baseType: !392, size: 32, offset: 18368)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1381, file: !1056, line: 1226, baseType: !109, size: 32, offset: 18400)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1381, file: !1056, line: 1227, baseType: !109, size: 32, offset: 18432)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1381, file: !1056, line: 1231, baseType: !3054, size: 64, offset: 18496)
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1056, line: 1231, flags: DIFlagFwdDecl)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1381, file: !1056, line: 1233, baseType: !186, size: 128, offset: 18560)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1381, file: !1056, line: 1240, baseType: !3058, size: 64, offset: 18688)
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1056, line: 62, flags: DIFlagFwdDecl)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1381, file: !1056, line: 1242, baseType: !3061, size: 64, offset: 18752)
!3061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3062, size: 64)
!3062 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1056, line: 1242, flags: DIFlagFwdDecl)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1381, file: !1056, line: 1244, baseType: !186, size: 128, offset: 18816)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1381, file: !1056, line: 1245, baseType: !3065, size: 64, offset: 18944)
!3065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3066, size: 64)
!3066 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1056, line: 51, flags: DIFlagFwdDecl)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1381, file: !1056, line: 1246, baseType: !612, size: 256, offset: 19008)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1381, file: !1056, line: 1247, baseType: !7, size: 32, offset: 19264)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1381, file: !1056, line: 1250, baseType: !3070, size: 64, offset: 19328)
!3070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3071, size: 64)
!3071 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1056, line: 57, flags: DIFlagFwdDecl)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1381, file: !1056, line: 1251, baseType: !612, size: 256, offset: 19392)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1381, file: !1056, line: 1252, baseType: !186, size: 128, offset: 19648)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1381, file: !1056, line: 1259, baseType: !2325, size: 64, offset: 19776)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1381, file: !1056, line: 1260, baseType: !750, size: 16, offset: 19840)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1381, file: !1056, line: 1261, baseType: !750, size: 16, offset: 19856)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1381, file: !1056, line: 1314, baseType: !3078, size: 64, offset: 19904)
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3079, size: 64)
!3079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3080, line: 62, size: 256, align: 256, elements: !3081)
!3080 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3081 = !{!3082, !3083, !3084, !3085, !3086, !3087, !3088}
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3079, file: !3080, line: 75, baseType: !421, size: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3079, file: !3080, line: 90, baseType: !421, size: 32, offset: 32)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3079, file: !3080, line: 112, baseType: !425, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3079, file: !3080, line: 132, baseType: !421, size: 32, offset: 128)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3079, file: !3080, line: 140, baseType: !421, size: 32, offset: 160)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3079, file: !3080, line: 149, baseType: !421, size: 32, offset: 192)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3079, file: !3080, line: 154, baseType: !3089, offset: 224)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, elements: !1764)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1381, file: !1056, line: 1315, baseType: !420, size: 32, offset: 19968)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1381, file: !1056, line: 1316, baseType: !420, size: 32, offset: 20000)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1381, file: !1056, line: 1321, baseType: !320, size: 64, offset: 20032)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1381, file: !1056, line: 1325, baseType: !109, size: 32, offset: 20096)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1381, file: !1056, line: 1326, baseType: !109, size: 32, offset: 20128)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1381, file: !1056, line: 1327, baseType: !109, size: 32, offset: 20160)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1381, file: !1056, line: 1328, baseType: !109, size: 32, offset: 20192)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1381, file: !1056, line: 1329, baseType: !832, size: 128, align: 64, offset: 20224)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1381, file: !1056, line: 1332, baseType: !3099, size: 128, offset: 20352)
!3099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3100, line: 51, size: 128, elements: !3101)
!3100 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3101 = !{!3102, !3107, !3108}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3099, file: !3100, line: 60, baseType: !3103, size: 64)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3104, line: 7, size: 64, elements: !3105)
!3104 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3105 = !{!3106}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3103, file: !3104, line: 12, baseType: !1625, size: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3099, file: !3100, line: 63, baseType: !692, size: 8, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3099, file: !3100, line: 70, baseType: !692, size: 8, offset: 72)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1381, file: !1056, line: 1335, baseType: !2377, size: 64, offset: 20480)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1381, file: !1056, line: 1337, baseType: !3111, size: 128, offset: 20544)
!3111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3100, line: 39, size: 128, elements: !3112)
!3112 = !{!3113, !3114, !3115}
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3111, file: !3100, line: 40, baseType: !2164, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3111, file: !3100, line: 42, baseType: !421, size: 32, offset: 64)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3111, file: !3100, line: 43, baseType: !421, size: 32, offset: 96)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1381, file: !1056, line: 1340, baseType: !3117, size: 64, offset: 20672)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1056, line: 69, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1381, file: !1056, line: 1351, baseType: !109, size: 32, offset: 20736)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1381, file: !1056, line: 1352, baseType: !109, size: 32, offset: 20768)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1381, file: !1056, line: 1354, baseType: !320, size: 64, offset: 20800)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1381, file: !1056, line: 1364, baseType: !424, size: 64, offset: 20864)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1381, file: !1056, line: 1365, baseType: !424, size: 64, offset: 20928)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1381, file: !1056, line: 1412, baseType: !320, size: 64, offset: 20992)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1381, file: !1056, line: 1453, baseType: !3126, size: 64, offset: 21056)
!3126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3127, size: 64)
!3127 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1056, line: 1453, flags: DIFlagFwdDecl)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1381, file: !1056, line: 1457, baseType: !3129, size: 64, offset: 21120)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3131)
!3131 = !{!3132, !3133, !3152, !3155, !3156, !3189, !3199}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3130, file: !81, line: 62, baseType: !80, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, scope: !3130, file: !81, line: 64, baseType: !3134, size: 192, offset: 64)
!3134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3130, file: !81, line: 64, size: 192, elements: !3135)
!3135 = !{!3136, !3147}
!3136 = !DIDerivedType(tag: DW_TAG_member, scope: !3134, file: !81, line: 65, baseType: !3137, size: 192)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !81, line: 65, size: 192, elements: !3138)
!3138 = !{!3139, !3146}
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3137, file: !81, line: 66, baseType: !3140, size: 128)
!3140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3141, line: 50, size: 128, elements: !3142)
!3141 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3142 = !{!3143, !3144, !3145}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3140, file: !3141, line: 52, baseType: !320, size: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3140, file: !3141, line: 54, baseType: !7, size: 32, offset: 64)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3140, file: !3141, line: 55, baseType: !7, size: 32, offset: 96)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3137, file: !81, line: 67, baseType: !320, size: 64, offset: 128)
!3147 = !DIDerivedType(tag: DW_TAG_member, scope: !3134, file: !81, line: 70, baseType: !3148, size: 192)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3134, file: !81, line: 70, size: 192, elements: !3149)
!3149 = !{!3150, !3151}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3148, file: !81, line: 71, baseType: !832, size: 128, align: 64)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3148, file: !81, line: 72, baseType: !320, size: 64, offset: 128)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3130, file: !81, line: 76, baseType: !3153, size: 64, offset: 256)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3130, file: !81, line: 77, baseType: !320, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3130, file: !81, line: 79, baseType: !3157, size: 64, offset: 384)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3141, line: 25, size: 256, elements: !3159)
!3159 = !{!3160, !3166, !3170}
!3160 = !DIDerivedType(tag: DW_TAG_member, scope: !3158, file: !3141, line: 26, baseType: !3161, size: 128)
!3161 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3158, file: !3141, line: 26, size: 128, elements: !3162)
!3162 = !{!3163, !3165}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3161, file: !3141, line: 27, baseType: !3164, size: 128)
!3164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !2694)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3161, file: !3141, line: 28, baseType: !3164, size: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3158, file: !3141, line: 31, baseType: !3167, size: 64, offset: 128)
!3167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3168, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3169)
!3169 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3141, line: 23, flags: DIFlagFwdDecl)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3158, file: !3141, line: 33, baseType: !3171, size: 64, offset: 192)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3158, file: !3141, line: 33, size: 64, elements: !3172)
!3172 = !{!3173, !3179, !3184}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3171, file: !3141, line: 38, baseType: !3174, size: 64)
!3174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3171, file: !3141, line: 34, size: 64, elements: !3175)
!3175 = !{!3176, !3177, !3178}
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3174, file: !3141, line: 35, baseType: !608, size: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3174, file: !3141, line: 36, baseType: !228, size: 8, offset: 32)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3174, file: !3141, line: 37, baseType: !228, size: 8, offset: 40)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3171, file: !3141, line: 42, baseType: !3180, size: 16)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3171, file: !3141, line: 39, size: 16, elements: !3181)
!3181 = !{!3182, !3183}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3180, file: !3141, line: 40, baseType: !228, size: 8)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3180, file: !3141, line: 41, baseType: !228, size: 8, offset: 8)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3171, file: !3141, line: 46, baseType: !3185, size: 16)
!3185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3171, file: !3141, line: 43, size: 16, elements: !3186)
!3186 = !{!3187, !3188}
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3185, file: !3141, line: 44, baseType: !228, size: 8)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3185, file: !3141, line: 45, baseType: !228, size: 8, offset: 8)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3130, file: !81, line: 81, baseType: !3190, size: 64, offset: 448)
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3192)
!3192 = !{!3193, !3194, !3195, !3196, !3197, !3198}
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3191, file: !81, line: 86, baseType: !3153, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3191, file: !81, line: 87, baseType: !320, size: 64, offset: 64)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3191, file: !81, line: 88, baseType: !320, size: 64, offset: 128)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3191, file: !81, line: 89, baseType: !320, size: 64, offset: 192)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3191, file: !81, line: 90, baseType: !692, size: 8, offset: 256)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3191, file: !81, line: 92, baseType: !3190, size: 64, offset: 320)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3130, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1381, file: !1056, line: 1463, baseType: !3201, offset: 21184)
!3201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1056, line: 739, elements: !901)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1381, file: !1056, line: 1470, baseType: !832, size: 128, align: 64, offset: 21184)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1381, file: !1056, line: 1471, baseType: !1394, size: 32, offset: 21312)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1381, file: !1056, line: 1472, baseType: !109, size: 32, offset: 21344)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1381, file: !1056, line: 1474, baseType: !1380, size: 64, offset: 21376)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1381, file: !1056, line: 1475, baseType: !854, size: 320, offset: 21440)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1381, file: !1056, line: 1478, baseType: !3208, size: 64, offset: 21760)
!3208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3209, size: 64)
!3209 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1056, line: 1478, flags: DIFlagFwdDecl)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1381, file: !1056, line: 1482, baseType: !1394, size: 32, offset: 21824)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1381, file: !1056, line: 1489, baseType: !342, size: 64, offset: 21888)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1381, file: !1056, line: 1504, baseType: !342, size: 64, offset: 21952)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1381, file: !1056, line: 1505, baseType: !425, size: 64, offset: 22016)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1381, file: !1056, line: 1506, baseType: !424, size: 64, offset: 22080)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1381, file: !1056, line: 1507, baseType: !425, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1381, file: !1056, line: 1508, baseType: !425, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1381, file: !1056, line: 1509, baseType: !425, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1381, file: !1056, line: 1510, baseType: !832, size: 128, align: 64, offset: 22208)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1381, file: !1056, line: 1511, baseType: !109, size: 32, offset: 22336)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1381, file: !1056, line: 1515, baseType: !3221, size: 64, offset: 22400)
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1408, line: 56, size: 64, elements: !3222)
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3221, file: !1408, line: 57, baseType: !1411, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1381, file: !1056, line: 1518, baseType: !3221, size: 64, offset: 22464)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1381, file: !1056, line: 1528, baseType: !832, size: 128, align: 64, offset: 22528)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1381, file: !1056, line: 1552, baseType: !3227, size: 35328, offset: 23040)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3228, line: 430, size: 35328, elements: !3229)
!3228 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3229 = !{!3230, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3259, !3260, !3261, !3262, !3263, !3264, !3267, !3268, !3269, !3270}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3227, file: !3228, line: 432, baseType: !3231, size: 192)
!3231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3232, size: 192, elements: !271)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3233, line: 16, size: 64, elements: !3234)
!3233 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3234 = !{!3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3247}
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3232, file: !3233, line: 17, baseType: !238, size: 16)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3232, file: !3233, line: 18, baseType: !238, size: 16, offset: 16)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3232, file: !3233, line: 19, baseType: !238, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3232, file: !3233, line: 19, baseType: !238, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3232, file: !3233, line: 19, baseType: !238, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3232, file: !3233, line: 19, baseType: !238, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3232, file: !3233, line: 19, baseType: !238, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3232, file: !3233, line: 20, baseType: !238, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3232, file: !3233, line: 20, baseType: !238, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3232, file: !3233, line: 20, baseType: !238, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3232, file: !3233, line: 20, baseType: !238, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3232, file: !3233, line: 20, baseType: !238, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3232, file: !3233, line: 20, baseType: !238, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3227, file: !3228, line: 436, baseType: !320, size: 64, offset: 192)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3227, file: !3228, line: 440, baseType: !240, size: 16, offset: 256)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3227, file: !3228, line: 441, baseType: !240, size: 16, offset: 272)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3227, file: !3228, line: 442, baseType: !240, size: 16, offset: 288)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3227, file: !3228, line: 443, baseType: !240, size: 16, offset: 304)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3227, file: !3228, line: 447, baseType: !320, size: 64, offset: 320)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3227, file: !3228, line: 448, baseType: !320, size: 64, offset: 384)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3227, file: !3228, line: 459, baseType: !3256, size: 256, offset: 448)
!3256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3257, size: 256, elements: !842)
!3257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3258, size: 64)
!3258 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3228, line: 428, flags: DIFlagFwdDecl)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3227, file: !3228, line: 461, baseType: !320, size: 64, offset: 704)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3227, file: !3228, line: 463, baseType: !320, size: 64, offset: 768)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3227, file: !3228, line: 465, baseType: !320, size: 64, offset: 832)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3227, file: !3228, line: 466, baseType: !320, size: 64, offset: 896)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3227, file: !3228, line: 467, baseType: !320, size: 64, offset: 960)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3227, file: !3228, line: 473, baseType: !3265, size: 64, offset: 1024)
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3266, size: 64)
!3266 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3228, line: 10, flags: DIFlagFwdDecl)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3227, file: !3228, line: 480, baseType: !320, size: 64, offset: 1088)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3227, file: !3228, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3227, file: !3228, line: 491, baseType: !420, size: 32, offset: 1184)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3227, file: !3228, line: 501, baseType: !3271, size: 33792, offset: 1536)
!3271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3272, line: 448, size: 33792, elements: !3273)
!3272 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3273 = !{!3274, !3275, !3276, !3438, !3439, !3445, !3446}
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3271, file: !3272, line: 461, baseType: !7, size: 32)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3271, file: !3272, line: 468, baseType: !320, size: 64, offset: 64)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3271, file: !3272, line: 476, baseType: !3277, size: 64, offset: 128)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3272, line: 356, size: 33280, align: 512, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3278, file: !3272, line: 358, baseType: !7, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3278, file: !3272, line: 361, baseType: !7, size: 32, offset: 32)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3278, file: !3272, line: 364, baseType: !424, size: 64, offset: 64)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3278, file: !3272, line: 367, baseType: !424, size: 64, offset: 128)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3278, file: !3272, line: 370, baseType: !424, size: 64, offset: 192)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3278, file: !3272, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3278, file: !3272, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3278, file: !3272, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3278, file: !3272, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3278, file: !3272, line: 397, baseType: !3290, size: 32768, offset: 512)
!3290 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3272, line: 348, size: 32768, elements: !3291)
!3291 = !{!3292, !3307, !3344, !3421, !3434}
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3290, file: !3272, line: 349, baseType: !3293, size: 896)
!3293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3272, line: 12, size: 896, elements: !3294)
!3294 = !{!3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3306}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3293, file: !3272, line: 13, baseType: !420, size: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3293, file: !3272, line: 14, baseType: !420, size: 32, offset: 32)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3293, file: !3272, line: 15, baseType: !420, size: 32, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3293, file: !3272, line: 16, baseType: !420, size: 32, offset: 96)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3293, file: !3272, line: 17, baseType: !420, size: 32, offset: 128)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3293, file: !3272, line: 18, baseType: !420, size: 32, offset: 160)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3293, file: !3272, line: 19, baseType: !420, size: 32, offset: 192)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3293, file: !3272, line: 22, baseType: !3303, size: 640, offset: 224)
!3303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 640, elements: !3304)
!3304 = !{!3305}
!3305 = !DISubrange(count: 20)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3293, file: !3272, line: 25, baseType: !420, size: 32, offset: 864)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3290, file: !3272, line: 350, baseType: !3308, size: 4096, align: 128)
!3308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3272, line: 34, size: 4096, align: 128, elements: !3309)
!3309 = !{!3310, !3311, !3312, !3313, !3314, !3329, !3330, !3331, !3333, !3335, !3339}
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3308, file: !3272, line: 35, baseType: !238, size: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3308, file: !3272, line: 36, baseType: !238, size: 16, offset: 16)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3308, file: !3272, line: 37, baseType: !238, size: 16, offset: 32)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3308, file: !3272, line: 38, baseType: !238, size: 16, offset: 48)
!3314 = !DIDerivedType(tag: DW_TAG_member, scope: !3308, file: !3272, line: 39, baseType: !3315, size: 128, offset: 64)
!3315 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3308, file: !3272, line: 39, size: 128, elements: !3316)
!3316 = !{!3317, !3322}
!3317 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3272, line: 40, baseType: !3318, size: 128)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3315, file: !3272, line: 40, size: 128, elements: !3319)
!3319 = !{!3320, !3321}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3318, file: !3272, line: 41, baseType: !424, size: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3318, file: !3272, line: 42, baseType: !424, size: 64, offset: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3315, file: !3272, line: 44, baseType: !3323, size: 128)
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3315, file: !3272, line: 44, size: 128, elements: !3324)
!3324 = !{!3325, !3326, !3327, !3328}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3323, file: !3272, line: 45, baseType: !420, size: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3323, file: !3272, line: 46, baseType: !420, size: 32, offset: 32)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3323, file: !3272, line: 47, baseType: !420, size: 32, offset: 64)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3323, file: !3272, line: 48, baseType: !420, size: 32, offset: 96)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3308, file: !3272, line: 51, baseType: !420, size: 32, offset: 192)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3308, file: !3272, line: 52, baseType: !420, size: 32, offset: 224)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3308, file: !3272, line: 55, baseType: !3332, size: 1024, offset: 256)
!3332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 1024, elements: !433)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3308, file: !3272, line: 58, baseType: !3334, size: 2048, offset: 1280)
!3334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 2048, elements: !275)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3308, file: !3272, line: 60, baseType: !3336, size: 384, offset: 3328)
!3336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !420, size: 384, elements: !3337)
!3337 = !{!3338}
!3338 = !DISubrange(count: 12)
!3339 = !DIDerivedType(tag: DW_TAG_member, scope: !3308, file: !3272, line: 62, baseType: !3340, size: 384, offset: 3712)
!3340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3308, file: !3272, line: 62, size: 384, elements: !3341)
!3341 = !{!3342, !3343}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3340, file: !3272, line: 63, baseType: !3336, size: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3340, file: !3272, line: 64, baseType: !3336, size: 384)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3290, file: !3272, line: 351, baseType: !3345, size: 1088)
!3345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3272, line: 79, size: 1088, elements: !3346)
!3346 = !{!3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3420}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3345, file: !3272, line: 80, baseType: !420, size: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3345, file: !3272, line: 81, baseType: !420, size: 32, offset: 32)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3345, file: !3272, line: 82, baseType: !420, size: 32, offset: 64)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3345, file: !3272, line: 83, baseType: !420, size: 32, offset: 96)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3345, file: !3272, line: 84, baseType: !420, size: 32, offset: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3345, file: !3272, line: 85, baseType: !420, size: 32, offset: 160)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3345, file: !3272, line: 86, baseType: !420, size: 32, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3345, file: !3272, line: 88, baseType: !3303, size: 640, offset: 224)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3345, file: !3272, line: 89, baseType: !228, size: 8, offset: 864)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3345, file: !3272, line: 90, baseType: !228, size: 8, offset: 872)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3345, file: !3272, line: 91, baseType: !228, size: 8, offset: 880)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3345, file: !3272, line: 92, baseType: !228, size: 8, offset: 888)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3345, file: !3272, line: 93, baseType: !228, size: 8, offset: 896)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3345, file: !3272, line: 94, baseType: !228, size: 8, offset: 904)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3345, file: !3272, line: 95, baseType: !3362, size: 64, offset: 960)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3364, line: 11, size: 128, elements: !3365)
!3364 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3365 = !{!3366, !3367}
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3363, file: !3364, line: 12, baseType: !306, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3363, file: !3364, line: 13, baseType: !3368, size: 64, offset: 64)
!3368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3369, size: 64)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3370, line: 103, size: 1344, elements: !3371)
!3370 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3400, !3401, !3402}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3369, file: !3370, line: 109, baseType: !320, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3369, file: !3370, line: 110, baseType: !320, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3369, file: !3370, line: 111, baseType: !320, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3369, file: !3370, line: 112, baseType: !320, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3369, file: !3370, line: 113, baseType: !320, size: 64, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3369, file: !3370, line: 114, baseType: !320, size: 64, offset: 320)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3369, file: !3370, line: 117, baseType: !320, size: 64, offset: 384)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3369, file: !3370, line: 118, baseType: !320, size: 64, offset: 448)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3369, file: !3370, line: 119, baseType: !320, size: 64, offset: 512)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3369, file: !3370, line: 120, baseType: !320, size: 64, offset: 576)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3369, file: !3370, line: 121, baseType: !320, size: 64, offset: 640)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3369, file: !3370, line: 122, baseType: !320, size: 64, offset: 704)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3369, file: !3370, line: 123, baseType: !320, size: 64, offset: 768)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3369, file: !3370, line: 124, baseType: !320, size: 64, offset: 832)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3369, file: !3370, line: 125, baseType: !320, size: 64, offset: 896)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3369, file: !3370, line: 139, baseType: !320, size: 64, offset: 960)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3369, file: !3370, line: 142, baseType: !320, size: 64, offset: 1024)
!3389 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !3370, line: 144, baseType: !3390, size: 64, offset: 1088)
!3390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3369, file: !3370, line: 144, size: 64, elements: !3391)
!3391 = !{!3392, !3393, !3394}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3390, file: !3370, line: 146, baseType: !238, size: 16)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3390, file: !3370, line: 148, baseType: !424, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3390, file: !3370, line: 150, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3370, line: 59, size: 64, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3395, file: !3370, line: 61, baseType: !424, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3395, file: !3370, line: 63, baseType: !424, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3395, file: !3370, line: 65, baseType: !424, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3369, file: !3370, line: 153, baseType: !320, size: 64, offset: 1152)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3369, file: !3370, line: 154, baseType: !320, size: 64, offset: 1216)
!3402 = !DIDerivedType(tag: DW_TAG_member, scope: !3369, file: !3370, line: 156, baseType: !3403, size: 64, offset: 1280)
!3403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3369, file: !3370, line: 156, size: 64, elements: !3404)
!3404 = !{!3405, !3406, !3407}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3403, file: !3370, line: 158, baseType: !238, size: 16)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3403, file: !3370, line: 160, baseType: !424, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3403, file: !3370, line: 162, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3370, line: 69, size: 64, elements: !3409)
!3409 = !{!3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418, !3419}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3408, file: !3370, line: 71, baseType: !424, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3408, file: !3370, line: 73, baseType: !424, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3408, file: !3370, line: 75, baseType: !424, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3408, file: !3370, line: 77, baseType: !424, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3408, file: !3370, line: 80, baseType: !424, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3408, file: !3370, line: 83, baseType: !424, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3408, file: !3370, line: 86, baseType: !424, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3408, file: !3370, line: 88, baseType: !424, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3408, file: !3370, line: 93, baseType: !424, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3408, file: !3370, line: 100, baseType: !424, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3345, file: !3272, line: 96, baseType: !420, size: 32, offset: 1024)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3290, file: !3272, line: 352, baseType: !3422, size: 4608, align: 512)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3272, line: 333, size: 4608, align: 512, elements: !3423)
!3423 = !{!3424, !3425, !3432}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3422, file: !3272, line: 334, baseType: !3308, size: 4096, align: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3422, file: !3272, line: 335, baseType: !3426, size: 512, offset: 4096)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3272, line: 312, size: 512, elements: !3427)
!3427 = !{!3428, !3429, !3430}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3426, file: !3272, line: 313, baseType: !424, size: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3426, file: !3272, line: 314, baseType: !424, size: 64, offset: 64)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3426, file: !3272, line: 315, baseType: !3431, size: 384, offset: 128)
!3431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, elements: !1847)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3422, file: !3272, line: 336, baseType: !3433, offset: 4608)
!3433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, elements: !1764)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3290, file: !3272, line: 353, baseType: !3435, size: 32768)
!3435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 32768, elements: !3436)
!3436 = !{!3437}
!3437 = !DISubrange(count: 4096)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3271, file: !3272, line: 484, baseType: !3277, size: 64, offset: 192)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3271, file: !3272, line: 491, baseType: !3440, size: 128, offset: 256)
!3440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3272, line: 404, size: 128, elements: !3441)
!3441 = !{!3442, !3443, !3444}
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3440, file: !3272, line: 424, baseType: !424, size: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3440, file: !3272, line: 432, baseType: !7, size: 32, offset: 64)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3440, file: !3272, line: 440, baseType: !7, size: 32, offset: 96)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3271, file: !3272, line: 498, baseType: !3440, size: 128, offset: 384)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3271, file: !3272, line: 508, baseType: !3278, size: 33280, align: 512, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1357, file: !1358, line: 16, baseType: !1367, size: 192, offset: 512)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1357, file: !1358, line: 17, baseType: !220, size: 32, offset: 704)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !503, file: !59, line: 1240, baseType: !342, size: 64, offset: 6912)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !503, file: !59, line: 1243, baseType: !420, size: 32, offset: 6976)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !503, file: !59, line: 1245, baseType: !1114, size: 64, offset: 7040)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !503, file: !59, line: 1246, baseType: !1114, size: 64, offset: 7104)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !503, file: !59, line: 1248, baseType: !421, size: 32, offset: 7168)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !503, file: !59, line: 1249, baseType: !3455, size: 64, offset: 7232)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !503, file: !59, line: 1252, baseType: !3458, size: 256, offset: 7296)
!3458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 256, elements: !433)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !503, file: !59, line: 1253, baseType: !3460, size: 128, offset: 7552)
!3460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3461, line: 21, baseType: !3462)
!3461 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3461, line: 19, size: 128, elements: !3463)
!3463 = !{!3464}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3462, file: !3461, line: 20, baseType: !3465, size: 128)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 128, elements: !2694)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !503, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !503, file: !59, line: 1261, baseType: !612, size: 256, offset: 7744)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !503, file: !59, line: 1267, baseType: !182, size: 64, offset: 8000)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !503, file: !59, line: 1269, baseType: !449, size: 64, offset: 8064)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !503, file: !59, line: 1271, baseType: !3471, size: 448, offset: 8128)
!3471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1123, line: 63, size: 448, elements: !3472)
!3472 = !{!3473, !3478, !3479, !3480, !3481, !3482, !3483}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3471, file: !1123, line: 64, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3475, size: 64)
!3475 = !DISubroutineType(types: !3476)
!3476 = !{!320, !3477, !1121}
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3471, file: !1123, line: 66, baseType: !3474, size: 64, offset: 64)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3471, file: !1123, line: 69, baseType: !306, size: 64, offset: 128)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3471, file: !1123, line: 70, baseType: !109, size: 32, offset: 192)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3471, file: !1123, line: 71, baseType: !7, size: 32, offset: 224)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3471, file: !1123, line: 74, baseType: !186, size: 128, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3471, file: !1123, line: 85, baseType: !3484, size: 64, offset: 384)
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !503, file: !59, line: 1274, baseType: !616, size: 64, offset: 8576)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !503, file: !59, line: 1280, baseType: !616, size: 64, offset: 8640)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !503, file: !59, line: 1283, baseType: !109, size: 32, offset: 8704)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !503, file: !59, line: 1286, baseType: !2427, size: 32, offset: 8736)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !503, file: !59, line: 1289, baseType: !934, size: 64, offset: 8768)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !503, file: !59, line: 1290, baseType: !982, size: 64, offset: 8832)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !503, file: !59, line: 1297, baseType: !1941, size: 64, offset: 8896)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !503, file: !59, line: 1304, baseType: !3493, size: 64, offset: 8960)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3494, line: 49, size: 64, elements: !3495)
!3494 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3495 = !{!3496}
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3493, file: !3494, line: 50, baseType: !3497, size: 64)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3494, line: 41, size: 512, align: 512, elements: !3499)
!3499 = !{!3500, !3501, !3506}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3498, file: !3494, line: 43, baseType: !200, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3498, file: !3494, line: 45, baseType: !3502, size: 192, offset: 64)
!3502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3494, line: 29, size: 192, elements: !3503)
!3503 = !{!3504, !3505}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3502, file: !3494, line: 30, baseType: !186, size: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3502, file: !3494, line: 32, baseType: !306, size: 64, offset: 128)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3498, file: !3494, line: 46, baseType: !306, size: 64, offset: 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !503, file: !59, line: 1305, baseType: !3493, size: 64, offset: 9024)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !503, file: !59, line: 1306, baseType: !832, size: 128, align: 64, offset: 9088)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !503, file: !59, line: 1307, baseType: !872, size: 256, offset: 9216)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !503, file: !59, line: 1309, baseType: !612, size: 256, offset: 9472)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !503, file: !59, line: 1314, baseType: !109, size: 32, offset: 9728)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !503, file: !59, line: 1317, baseType: !200, size: 32, align: 512, offset: 10240)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !503, file: !59, line: 1318, baseType: !186, size: 128, offset: 10304)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !503, file: !59, line: 1320, baseType: !200, size: 32, offset: 10432)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !503, file: !59, line: 1321, baseType: !186, size: 128, offset: 10496)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !497, file: !498, line: 73, baseType: !109, size: 32, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !497, file: !498, line: 74, baseType: !3518, size: 64, offset: 192)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1788, line: 42, flags: DIFlagFwdDecl)
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !451, file: !388, line: 141, baseType: !3522, size: 64, offset: 704)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!109, !1184, !692}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !451, file: !388, line: 142, baseType: !3526, size: 64, offset: 768)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!386, !386, !3529}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3530, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !387, file: !388, line: 96, baseType: !502, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !387, file: !388, line: 97, baseType: !320, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !387, file: !388, line: 98, baseType: !342, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !388, line: 100, baseType: !3535, size: 128, offset: 1024)
!3535 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !388, line: 100, size: 128, elements: !3536)
!3536 = !{!3537, !3538}
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3535, file: !388, line: 101, baseType: !186, size: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3535, file: !388, line: 102, baseType: !3539, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !387, file: !388, line: 104, baseType: !186, size: 128, offset: 1152)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !387, file: !388, line: 105, baseType: !186, size: 128, offset: 1280)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !387, file: !388, line: 113, baseType: !3543, size: 128, offset: 1408)
!3543 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !387, file: !388, line: 109, size: 128, elements: !3544)
!3544 = !{!3545, !3546, !3547}
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3543, file: !388, line: 110, baseType: !858, size: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3543, file: !388, line: 111, baseType: !402, size: 128)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3543, file: !388, line: 112, baseType: !832, size: 128, align: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !380, file: !59, line: 1968, baseType: !3549, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3550, size: 64)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!182, !386, !351, !3552}
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3554, line: 10, size: 128, elements: !3555)
!3554 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3555 = !{!3556, !3557}
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3553, file: !3554, line: 11, baseType: !655, size: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3553, file: !3554, line: 12, baseType: !342, size: 64, offset: 64)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !380, file: !59, line: 1969, baseType: !3559, size: 64, offset: 128)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3560, size: 64)
!3560 = !DISubroutineType(types: !3561)
!3561 = !{!109, !3518, !351, !109}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !380, file: !59, line: 1970, baseType: !3563, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!374, !351, !109, !692}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !380, file: !59, line: 1972, baseType: !3567, size: 64, offset: 256)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!109, !386, !270, !109}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !380, file: !59, line: 1974, baseType: !3571, size: 64, offset: 320)
!3571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3572, size: 64)
!3572 = !DISubroutineType(types: !3573)
!3573 = !{!109, !3518, !351, !386, !312, !692}
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !380, file: !59, line: 1976, baseType: !3575, size: 64, offset: 384)
!3575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3576, size: 64)
!3576 = !DISubroutineType(types: !3577)
!3577 = !{!109, !386, !351, !386}
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !380, file: !59, line: 1977, baseType: !3579, size: 64, offset: 448)
!3579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3580, size: 64)
!3580 = !DISubroutineType(types: !3581)
!3581 = !{!109, !351, !386}
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !380, file: !59, line: 1978, baseType: !3583, size: 64, offset: 512)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!109, !3518, !351, !386, !182}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !380, file: !59, line: 1980, baseType: !3587, size: 64, offset: 576)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!109, !3518, !351, !386, !312}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !380, file: !59, line: 1982, baseType: !3579, size: 64, offset: 640)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !380, file: !59, line: 1983, baseType: !3592, size: 64, offset: 704)
!3592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3593, size: 64)
!3593 = !DISubroutineType(types: !3594)
!3594 = !{!109, !3518, !351, !386, !312, !507}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !380, file: !59, line: 1985, baseType: !3596, size: 64, offset: 768)
!3596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3597, size: 64)
!3597 = !DISubroutineType(types: !3598)
!3598 = !{!109, !3518, !351, !386, !351, !386, !7}
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !380, file: !59, line: 1987, baseType: !3600, size: 64, offset: 832)
!3600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3601, size: 64)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!109, !3518, !386, !3603}
!3603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3604, size: 64)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !3605)
!3605 = !{!3606, !3607, !3608, !3618, !3627, !3628, !3633, !3634, !3635}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3604, file: !59, line: 227, baseType: !7, size: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3604, file: !59, line: 228, baseType: !312, size: 16, offset: 32)
!3608 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !59, line: 241, baseType: !3609, size: 32, offset: 64)
!3609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3604, file: !59, line: 241, size: 32, elements: !3610)
!3610 = !{!3611, !3612}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3609, file: !59, line: 242, baseType: !357, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3609, file: !59, line: 243, baseType: !3613, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3614, line: 16, baseType: !3615)
!3614 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3614, line: 14, size: 32, elements: !3616)
!3616 = !{!3617}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3615, file: !3614, line: 15, baseType: !362, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, scope: !3604, file: !59, line: 245, baseType: !3619, size: 32, offset: 96)
!3619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3604, file: !59, line: 245, size: 32, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3619, file: !59, line: 246, baseType: !366, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3619, file: !59, line: 247, baseType: !3623, size: 32)
!3623 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3614, line: 20, baseType: !3624)
!3624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3614, line: 18, size: 32, elements: !3625)
!3625 = !{!3626}
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3624, file: !3614, line: 19, baseType: !370, size: 32)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3604, file: !59, line: 249, baseType: !512, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3604, file: !59, line: 250, baseType: !3629, size: 128, offset: 192)
!3629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1115, line: 13, size: 128, elements: !3630)
!3630 = !{!3631, !3632}
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3629, file: !1115, line: 14, baseType: !1114, size: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3629, file: !1115, line: 15, baseType: !306, size: 64, offset: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3604, file: !59, line: 251, baseType: !3629, size: 128, offset: 320)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3604, file: !59, line: 252, baseType: !3629, size: 128, offset: 448)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3604, file: !59, line: 259, baseType: !1704, size: 64, offset: 576)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !380, file: !59, line: 1988, baseType: !3637, size: 64, offset: 896)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3638, size: 64)
!3638 = !DISubroutineType(types: !3639)
!3639 = !{!109, !3518, !1184, !3640, !420, !7}
!3640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3641, size: 64)
!3641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3642, line: 22, size: 1280, elements: !3643)
!3642 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3643 = !{!3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3641, file: !3642, line: 23, baseType: !420, size: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3641, file: !3642, line: 24, baseType: !312, size: 16, offset: 32)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3641, file: !3642, line: 25, baseType: !7, size: 32, offset: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3641, file: !3642, line: 26, baseType: !1826, size: 32, offset: 96)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3641, file: !3642, line: 27, baseType: !424, size: 64, offset: 128)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3641, file: !3642, line: 28, baseType: !424, size: 64, offset: 192)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3641, file: !3642, line: 41, baseType: !424, size: 64, offset: 256)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3641, file: !3642, line: 42, baseType: !507, size: 32, offset: 320)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3641, file: !3642, line: 43, baseType: !507, size: 32, offset: 352)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3641, file: !3642, line: 44, baseType: !357, size: 32, offset: 384)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3641, file: !3642, line: 45, baseType: !366, size: 32, offset: 416)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3641, file: !3642, line: 46, baseType: !512, size: 64, offset: 448)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3641, file: !3642, line: 47, baseType: !3629, size: 128, offset: 512)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3641, file: !3642, line: 48, baseType: !3629, size: 128, offset: 640)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3641, file: !3642, line: 49, baseType: !3629, size: 128, offset: 768)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3641, file: !3642, line: 50, baseType: !3629, size: 128, offset: 896)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3641, file: !3642, line: 51, baseType: !424, size: 64, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3641, file: !3642, line: 52, baseType: !424, size: 64, offset: 1088)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3641, file: !3642, line: 53, baseType: !420, size: 32, offset: 1152)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3641, file: !3642, line: 54, baseType: !420, size: 32, offset: 1184)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3641, file: !3642, line: 55, baseType: !424, size: 64, offset: 1216)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !380, file: !59, line: 1990, baseType: !3666, size: 64, offset: 960)
!3666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3667, size: 64)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!302, !386, !270, !317}
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !380, file: !59, line: 1991, baseType: !3670, size: 64, offset: 1024)
!3670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3671, size: 64)
!3671 = !DISubroutineType(types: !3672)
!3672 = !{!109, !351, !3673, !424, !424}
!3673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3674, size: 64)
!3674 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !380, file: !59, line: 1993, baseType: !3676, size: 64, offset: 1088)
!3676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3677, size: 64)
!3677 = !DISubroutineType(types: !3678)
!3678 = !{!109, !351, !109}
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !380, file: !59, line: 1994, baseType: !3680, size: 64, offset: 1152)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3681, size: 64)
!3681 = !DISubroutineType(types: !3682)
!3682 = !{!109, !351, !386, !1704, !7, !312}
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !380, file: !59, line: 1997, baseType: !3684, size: 64, offset: 1216)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!109, !3518, !351, !1704, !312}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !380, file: !59, line: 1999, baseType: !3688, size: 64, offset: 1280)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!374, !3518, !386, !109}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !380, file: !59, line: 2001, baseType: !3692, size: 64, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!109, !3518, !386, !374, !109}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !380, file: !59, line: 2003, baseType: !3696, size: 64, offset: 1408)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3697, size: 64)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!109, !3518, !386, !3699}
!3699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3700, size: 64)
!3700 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !380, file: !59, line: 2005, baseType: !3702, size: 64, offset: 1472)
!3702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3703, size: 64)
!3703 = !DISubroutineType(types: !3704)
!3704 = !{!109, !386, !3699}
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !380, file: !59, line: 2006, baseType: !3706, size: 64, offset: 1536)
!3706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{!3709, !351}
!3709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3710, size: 64)
!3710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !3711)
!3711 = !{!3712, !3719}
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3710, file: !59, line: 3193, baseType: !3713, size: 128)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3714, line: 296, size: 128, elements: !3715)
!3714 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3715 = !{!3716, !3717, !3718}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3713, file: !3714, line: 297, baseType: !200, size: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3713, file: !3714, line: 299, baseType: !1126, size: 32, offset: 32)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3713, file: !3714, line: 300, baseType: !342, size: 64, offset: 64)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3710, file: !59, line: 3194, baseType: !420, size: 32, offset: 128)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !352, file: !59, line: 655, baseType: !502, size: 64, offset: 448)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !352, file: !59, line: 656, baseType: !347, size: 64, offset: 512)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !352, file: !59, line: 659, baseType: !342, size: 64, offset: 576)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !352, file: !59, line: 663, baseType: !320, size: 64, offset: 640)
!3724 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !59, line: 671, baseType: !3725, size: 32, offset: 704)
!3725 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !59, line: 671, size: 32, elements: !3726)
!3726 = !{!3727, !3729}
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3725, file: !59, line: 672, baseType: !3728, size: 32)
!3728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3725, file: !59, line: 673, baseType: !7, size: 32)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !352, file: !59, line: 675, baseType: !507, size: 32, offset: 736)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !352, file: !59, line: 676, baseType: !512, size: 64, offset: 768)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !352, file: !59, line: 677, baseType: !3629, size: 128, offset: 832)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !352, file: !59, line: 678, baseType: !3629, size: 128, offset: 960)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !352, file: !59, line: 679, baseType: !3629, size: 128, offset: 1088)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !352, file: !59, line: 680, baseType: !200, size: 32, offset: 1216)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !352, file: !59, line: 681, baseType: !240, size: 16, offset: 1248)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !352, file: !59, line: 682, baseType: !228, size: 8, offset: 1264)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !352, file: !59, line: 683, baseType: !228, size: 8, offset: 1272)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !352, file: !59, line: 684, baseType: !1262, size: 64, offset: 1280)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !352, file: !59, line: 691, baseType: !320, size: 64, offset: 1344)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !352, file: !59, line: 692, baseType: !1274, size: 320, offset: 1408)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !352, file: !59, line: 694, baseType: !320, size: 64, offset: 1728)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !352, file: !59, line: 695, baseType: !320, size: 64, offset: 1792)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !352, file: !59, line: 697, baseType: !858, size: 128, offset: 1856)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !352, file: !59, line: 698, baseType: !186, size: 128, offset: 1984)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !352, file: !59, line: 707, baseType: !186, size: 128, offset: 2112)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !352, file: !59, line: 708, baseType: !186, size: 128, offset: 2240)
!3748 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !59, line: 709, baseType: !3749, size: 128, offset: 2368)
!3749 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !59, line: 709, size: 128, elements: !3750)
!3750 = !{!3751, !3752}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3749, file: !59, line: 710, baseType: !982, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3749, file: !59, line: 711, baseType: !832, size: 128, align: 64)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !352, file: !59, line: 713, baseType: !618, size: 64, offset: 2496)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !352, file: !59, line: 714, baseType: !618, size: 64, offset: 2560)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !352, file: !59, line: 715, baseType: !220, size: 32, offset: 2624)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !352, file: !59, line: 716, baseType: !220, size: 32, offset: 2656)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !352, file: !59, line: 717, baseType: !220, size: 32, offset: 2688)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !352, file: !59, line: 719, baseType: !220, size: 32, offset: 2720)
!3759 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !59, line: 721, baseType: !3760, size: 64, offset: 2752)
!3760 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !59, line: 721, size: 64, elements: !3761)
!3761 = !{!3762, !3763}
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3760, file: !59, line: 722, baseType: !1972, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3760, file: !59, line: 723, baseType: !1005, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !352, file: !59, line: 725, baseType: !3765, size: 64, offset: 2816)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !352, file: !59, line: 726, baseType: !348, size: 1536, align: 64, offset: 2880)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !352, file: !59, line: 727, baseType: !186, size: 128, offset: 4416)
!3769 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !59, line: 728, baseType: !3770, size: 64, offset: 4544)
!3770 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !352, file: !59, line: 728, size: 64, elements: !3771)
!3771 = !{!3772, !3773, !3776, !3777}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3770, file: !59, line: 729, baseType: !2377, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3770, file: !59, line: 730, baseType: !3774, size: 64)
!3774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3775, size: 64)
!3775 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3770, file: !59, line: 731, baseType: !270, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3770, file: !59, line: 732, baseType: !7, size: 32)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !352, file: !59, line: 735, baseType: !421, size: 32, offset: 4608)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !352, file: !59, line: 738, baseType: !421, size: 32, offset: 4640)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !352, file: !59, line: 739, baseType: !3455, size: 64, offset: 4672)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !352, file: !59, line: 750, baseType: !342, size: 64, offset: 4736)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !348, file: !59, line: 474, baseType: !3713, size: 128, offset: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !348, file: !59, line: 475, baseType: !1274, size: 320, offset: 192)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !348, file: !59, line: 476, baseType: !1126, size: 32, offset: 512)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !348, file: !59, line: 477, baseType: !220, size: 32, offset: 544)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !348, file: !59, line: 482, baseType: !1560, size: 128, offset: 576)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !348, file: !59, line: 483, baseType: !320, size: 64, offset: 704)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !348, file: !59, line: 484, baseType: !320, size: 64, offset: 768)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !348, file: !59, line: 485, baseType: !3790, size: 64, offset: 832)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3792)
!3792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !3793)
!3793 = !{!3794, !3798, !3868, !3872, !3876, !3882, !3887, !3891, !3896, !3900, !3904, !3908, !3909, !3913, !3917, !3921, !3926, !3930, !3937, !3938}
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3792, file: !59, line: 405, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3796, size: 64)
!3796 = !DISubroutineType(types: !3797)
!3797 = !{!109, !2164, !1017}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3792, file: !59, line: 406, baseType: !3799, size: 64, offset: 64)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!109, !1704, !3802}
!3802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3803, size: 64)
!3803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !3804)
!3804 = !{!3805, !3835, !3849}
!3805 = !DIDerivedType(tag: DW_TAG_member, scope: !3803, file: !30, line: 295, baseType: !3806, size: 512)
!3806 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3803, file: !30, line: 295, size: 512, elements: !3807)
!3807 = !{!3808, !3834}
!3808 = !DIDerivedType(tag: DW_TAG_member, scope: !3806, file: !30, line: 296, baseType: !3809, size: 448)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3806, file: !30, line: 296, size: 448, elements: !3810)
!3810 = !{!3811, !3812, !3821, !3822, !3823, !3832, !3833}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3809, file: !30, line: 298, baseType: !320, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, scope: !3809, file: !30, line: 299, baseType: !3813, size: 128, offset: 64)
!3813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3809, file: !30, line: 299, size: 128, elements: !3814)
!3814 = !{!3815, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3813, file: !30, line: 300, baseType: !186, size: 128)
!3816 = !DIDerivedType(tag: DW_TAG_member, scope: !3813, file: !30, line: 302, baseType: !3817, size: 128)
!3817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3813, file: !30, line: 302, size: 128, elements: !3818)
!3818 = !{!3819, !3820}
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3817, file: !30, line: 303, baseType: !342, size: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3817, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3809, file: !30, line: 310, baseType: !347, size: 64, offset: 192)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3809, file: !30, line: 311, baseType: !320, size: 64, offset: 256)
!3823 = !DIDerivedType(tag: DW_TAG_member, scope: !3809, file: !30, line: 312, baseType: !3824, size: 64, offset: 320)
!3824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3809, file: !30, line: 312, size: 64, elements: !3825)
!3825 = !{!3826, !3827}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3824, file: !30, line: 313, baseType: !342, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3824, file: !30, line: 314, baseType: !3828, size: 64)
!3828 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !3829)
!3829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !3830)
!3830 = !{!3831}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3829, file: !30, line: 256, baseType: !320, size: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3809, file: !30, line: 316, baseType: !220, size: 32, offset: 384)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3809, file: !30, line: 317, baseType: !220, size: 32, offset: 416)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3806, file: !30, line: 323, baseType: !2165, size: 512, align: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, scope: !3803, file: !30, line: 325, baseType: !3836, size: 512, offset: 512)
!3836 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3803, file: !30, line: 325, size: 512, elements: !3837)
!3837 = !{!3838, !3848}
!3838 = !DIDerivedType(tag: DW_TAG_member, scope: !3836, file: !30, line: 326, baseType: !3839, size: 320)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3836, file: !30, line: 326, size: 320, elements: !3840)
!3840 = !{!3841, !3842, !3843, !3844, !3845, !3846, !3847}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3839, file: !30, line: 327, baseType: !320, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3839, file: !30, line: 328, baseType: !320, size: 64, offset: 64)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3839, file: !30, line: 329, baseType: !320, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3839, file: !30, line: 331, baseType: !220, size: 32, offset: 192)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3839, file: !30, line: 332, baseType: !220, size: 32, offset: 224)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3839, file: !30, line: 333, baseType: !220, size: 32, offset: 256)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3839, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3836, file: !30, line: 339, baseType: !2165, size: 512, align: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, scope: !3803, file: !30, line: 341, baseType: !3850, size: 512, offset: 1024)
!3850 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3803, file: !30, line: 341, size: 512, elements: !3851)
!3851 = !{!3852, !3861, !3867}
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !30, line: 342, baseType: !3853, size: 384)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !30, line: 342, size: 384, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3853, file: !30, line: 343, baseType: !320, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3853, file: !30, line: 344, baseType: !320, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3853, file: !30, line: 346, baseType: !342, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3853, file: !30, line: 347, baseType: !342, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3853, file: !30, line: 348, baseType: !342, size: 64, offset: 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3853, file: !30, line: 349, baseType: !342, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, scope: !3850, file: !30, line: 352, baseType: !3862, size: 256)
!3862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3850, file: !30, line: 352, size: 256, elements: !3863)
!3863 = !{!3864, !3865, !3866}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3862, file: !30, line: 353, baseType: !320, size: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3862, file: !30, line: 354, baseType: !320, size: 64, offset: 64)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3862, file: !30, line: 356, baseType: !186, size: 128, offset: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3850, file: !30, line: 359, baseType: !2165, size: 512, align: 128)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3792, file: !59, line: 409, baseType: !3869, size: 64, offset: 128)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3870, size: 64)
!3870 = !DISubroutineType(types: !3871)
!3871 = !{!109, !347, !1017}
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3792, file: !59, line: 412, baseType: !3873, size: 64, offset: 192)
!3873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3874, size: 64)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{!692, !347, !3802}
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3792, file: !59, line: 414, baseType: !3877, size: 64, offset: 256)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{null, !3880}
!3880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3881, size: 64)
!3881 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3792, file: !59, line: 416, baseType: !3883, size: 64, offset: 320)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!109, !1704, !347, !512, !7, !3886, !2392}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3792, file: !59, line: 419, baseType: !3888, size: 64, offset: 384)
!3888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3889, size: 64)
!3889 = !DISubroutineType(types: !3890)
!3890 = !{!109, !1704, !347, !512, !7, !7, !2164, !342}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3792, file: !59, line: 424, baseType: !3892, size: 64, offset: 448)
!3892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3893, size: 64)
!3893 = !DISubroutineType(types: !3894)
!3894 = !{!3895, !347, !3895}
!3895 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !187, line: 131, baseType: !424)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3792, file: !59, line: 425, baseType: !3897, size: 64, offset: 512)
!3897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3898, size: 64)
!3898 = !DISubroutineType(types: !3899)
!3899 = !{null, !3802, !317, !317}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3792, file: !59, line: 426, baseType: !3901, size: 64, offset: 576)
!3901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3902, size: 64)
!3902 = !DISubroutineType(types: !3903)
!3903 = !{!692, !3802, !1126}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3792, file: !59, line: 427, baseType: !3905, size: 64, offset: 640)
!3905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3906, size: 64)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{null, !3802}
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3792, file: !59, line: 428, baseType: !1991, size: 64, offset: 704)
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3792, file: !59, line: 433, baseType: !3910, size: 64, offset: 768)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!109, !347, !3802, !3802, !45}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3792, file: !59, line: 435, baseType: !3914, size: 64, offset: 832)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!109, !3802}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3792, file: !59, line: 436, baseType: !3918, size: 64, offset: 896)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3919, size: 64)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!692, !3802, !317, !317}
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3792, file: !59, line: 438, baseType: !3922, size: 64, offset: 960)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{null, !3802, !3925, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3792, file: !59, line: 439, baseType: !3927, size: 64, offset: 1024)
!3927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3928, size: 64)
!3928 = !DISubroutineType(types: !3929)
!3929 = !{!109, !347, !2164}
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3792, file: !59, line: 442, baseType: !3931, size: 64, offset: 1088)
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{!109, !3934, !1704, !3936}
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3935, size: 64)
!3935 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3792, file: !59, line: 444, baseType: !2384, size: 64, offset: 1152)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3792, file: !59, line: 445, baseType: !3939, size: 64, offset: 1216)
!3939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3940, size: 64)
!3940 = !DISubroutineType(types: !3941)
!3941 = !{!109, !1994, !2016}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !59, line: 486, baseType: !320, size: 64, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !348, file: !59, line: 487, baseType: !1274, size: 320, offset: 960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !348, file: !59, line: 488, baseType: !2427, size: 32, offset: 1280)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !348, file: !59, line: 489, baseType: !200, size: 32, offset: 1312)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !348, file: !59, line: 490, baseType: !186, size: 128, offset: 1344)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !348, file: !59, line: 491, baseType: !342, size: 64, offset: 1472)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !337, file: !296, line: 180, baseType: !3949, size: 64, offset: 320)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!302, !1704, !193, !336, !270, !512, !317}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !337, file: !296, line: 182, baseType: !3949, size: 64, offset: 384)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !337, file: !296, line: 184, baseType: !3954, size: 64, offset: 448)
!3954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3955, size: 64)
!3955 = !DISubroutineType(types: !3956)
!3956 = !{!109, !1704, !193, !336, !2055}
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !325, file: !296, line: 90, baseType: !3958, size: 64, offset: 192)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !325, file: !296, line: 91, baseType: !3960, size: 64, offset: 256)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !286, file: !154, line: 120, baseType: !3962, size: 64, offset: 192)
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!3965, !253}
!3965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3966, size: 64)
!3966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3967)
!3967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !3968)
!3968 = !{!3969, !3970, !3974, !3978, !3984, !3988}
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3967, file: !53, line: 40, baseType: !52, size: 32)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3967, file: !53, line: 41, baseType: !3971, size: 64, offset: 64)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!692}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3967, file: !53, line: 42, baseType: !3975, size: 64, offset: 128)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!342}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3967, file: !53, line: 43, baseType: !3979, size: 64, offset: 192)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!2516, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3967, file: !53, line: 44, baseType: !3985, size: 64, offset: 256)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!2516}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3967, file: !53, line: 45, baseType: !655, size: 64, offset: 320)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !286, file: !154, line: 121, baseType: !3990, size: 64, offset: 256)
!3990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3991, size: 64)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!2516, !253}
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !286, file: !154, line: 122, baseType: !3994, size: 64, offset: 320)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{null, !253, !3997, !3998}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !179, file: !154, line: 70, baseType: !4000, size: 64, offset: 384)
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4001, size: 64)
!4001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !527, line: 190, size: 1152, elements: !4002)
!4002 = !{!4003, !4004, !4005, !4006, !4007, !4008, !4009, !4010, !4094, !4095, !4096, !4097, !4098, !4101}
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4001, file: !527, line: 191, baseType: !220, size: 32)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4001, file: !527, line: 192, baseType: !220, size: 32, offset: 32)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4001, file: !527, line: 202, baseType: !4000, size: 64, offset: 64)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4001, file: !527, line: 203, baseType: !182, size: 64, offset: 128)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4001, file: !527, line: 205, baseType: !724, size: 192, align: 64, offset: 192)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4001, file: !527, line: 207, baseType: !2516, size: 64, offset: 384)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4001, file: !527, line: 208, baseType: !7, size: 32, offset: 448)
!4010 = !DIDerivedType(tag: DW_TAG_member, scope: !4001, file: !527, line: 209, baseType: !4011, size: 256, offset: 512)
!4011 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4001, file: !527, line: 209, size: 256, elements: !4012)
!4012 = !{!4013, !4022, !4026}
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4011, file: !527, line: 210, baseType: !4014, size: 256)
!4014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !527, line: 153, size: 256, elements: !4015)
!4015 = !{!4016, !4017, !4018, !4021}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4014, file: !527, line: 154, baseType: !320, size: 64)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4014, file: !527, line: 156, baseType: !1563, size: 64, offset: 64)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4014, file: !527, line: 162, baseType: !4019, size: 64, offset: 128)
!4019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4020, size: 64)
!4020 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !527, line: 162, flags: DIFlagFwdDecl)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4014, file: !527, line: 167, baseType: !320, size: 64, offset: 192)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4011, file: !527, line: 211, baseType: !4023, size: 64)
!4023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !527, line: 170, size: 64, elements: !4024)
!4024 = !{!4025}
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4023, file: !527, line: 171, baseType: !4000, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4011, file: !527, line: 212, baseType: !4027, size: 256)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !527, line: 174, size: 256, elements: !4028)
!4028 = !{!4029, !4089, !4092, !4093}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4027, file: !527, line: 175, baseType: !4030, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4031, size: 64)
!4031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4032)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !527, line: 271, size: 768, elements: !4033)
!4033 = !{!4034, !4054, !4058, !4062, !4066, !4070, !4074, !4078, !4079, !4080, !4081, !4085}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4032, file: !527, line: 276, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4036, size: 64)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!109, !4038}
!4038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4039, size: 64)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !527, line: 251, size: 1216, elements: !4040)
!4040 = !{!4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4039, file: !527, line: 253, baseType: !4000, size: 64)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4039, file: !527, line: 254, baseType: !1704, size: 64, offset: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4039, file: !527, line: 255, baseType: !1054, size: 64, offset: 128)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4039, file: !527, line: 256, baseType: !342, size: 64, offset: 192)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4039, file: !527, line: 259, baseType: !612, size: 256, offset: 256)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4039, file: !527, line: 260, baseType: !612, size: 256, offset: 512)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4039, file: !527, line: 261, baseType: !109, size: 32, offset: 768)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4039, file: !527, line: 262, baseType: !186, size: 128, offset: 832)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4039, file: !527, line: 263, baseType: !270, size: 64, offset: 960)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4039, file: !527, line: 265, baseType: !317, size: 64, offset: 1024)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4039, file: !527, line: 266, baseType: !692, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4039, file: !527, line: 267, baseType: !692, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4039, file: !527, line: 268, baseType: !2100, size: 64, offset: 1152)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4032, file: !527, line: 277, baseType: !4055, size: 64, offset: 64)
!4055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4056, size: 64)
!4056 = !DISubroutineType(types: !4057)
!4057 = !{null, !4038}
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4032, file: !527, line: 290, baseType: !4059, size: 64, offset: 128)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!109, !1054, !342}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4032, file: !527, line: 292, baseType: !4063, size: 64, offset: 192)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!342, !1054, !1985}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4032, file: !527, line: 293, baseType: !4067, size: 64, offset: 256)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!342, !1054, !342, !1985}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4032, file: !527, line: 294, baseType: !4071, size: 64, offset: 320)
!4071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4072, size: 64)
!4072 = !DISubroutineType(types: !4073)
!4073 = !{null, !1054, !342}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4032, file: !527, line: 296, baseType: !4075, size: 64, offset: 384)
!4075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4076, size: 64)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!302, !4038, !270, !317, !512}
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4032, file: !527, line: 306, baseType: !317, size: 64, offset: 448)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4032, file: !527, line: 313, baseType: !692, size: 8, offset: 512)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4032, file: !527, line: 314, baseType: !4075, size: 64, offset: 576)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4032, file: !527, line: 317, baseType: !4082, size: 64, offset: 640)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DISubroutineType(types: !4084)
!4084 = !{!2042, !4038, !2044}
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4032, file: !527, line: 320, baseType: !4086, size: 64, offset: 704)
!4086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4087, size: 64)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!109, !4038, !2055}
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4027, file: !527, line: 176, baseType: !4090, size: 64, offset: 64)
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4091, size: 64)
!4091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !527, line: 35, flags: DIFlagFwdDecl)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4027, file: !527, line: 177, baseType: !512, size: 64, offset: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4027, file: !527, line: 178, baseType: !4000, size: 64, offset: 192)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4001, file: !527, line: 215, baseType: !342, size: 64, offset: 768)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4001, file: !527, line: 221, baseType: !424, size: 64, offset: 832)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4001, file: !527, line: 223, baseType: !240, size: 16, offset: 896)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4001, file: !527, line: 224, baseType: !312, size: 16, offset: 912)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4001, file: !527, line: 225, baseType: !4099, size: 64, offset: 960)
!4099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4100, size: 64)
!4100 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !527, line: 36, flags: DIFlagFwdDecl)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4001, file: !527, line: 227, baseType: !832, size: 128, align: 64, offset: 1024)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !179, file: !154, line: 71, baseType: !4103, size: 32, offset: 448)
!4103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4104, line: 19, size: 32, elements: !4105)
!4104 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4105 = !{!4106}
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4103, file: !4104, line: 20, baseType: !1394, size: 32)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !179, file: !154, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !179, file: !154, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !179, file: !154, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !179, file: !154, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !179, file: !154, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !94, line: 707, baseType: !175, size: 64, offset: 512)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !176, file: !94, line: 709, baseType: !4114, size: 64, offset: 576)
!4114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4115, size: 64)
!4115 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !94, line: 37, flags: DIFlagFwdDecl)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !176, file: !94, line: 711, baseType: !182, size: 64, offset: 640)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !176, file: !94, line: 712, baseType: !4118, size: 64, offset: 704)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4119, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4120)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !94, line: 89, size: 384, elements: !4121)
!4121 = !{!4122, !4123, !4124, !4130, !4135, !4139}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4120, file: !94, line: 90, baseType: !182, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4120, file: !94, line: 91, baseType: !322, size: 64, offset: 64)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4120, file: !94, line: 92, baseType: !4125, size: 64, offset: 128)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = !DISubroutineType(types: !4127)
!4127 = !{!109, !4128, !265}
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4120, file: !94, line: 93, baseType: !4131, size: 64, offset: 192)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!270, !4128, !4134, !3997, !3998}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4120, file: !94, line: 95, baseType: !4136, size: 64, offset: 256)
!4136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4137, size: 64)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{null, !175}
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4120, file: !94, line: 97, baseType: !4140, size: 64, offset: 320)
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4141, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4142)
!4142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !101, line: 286, size: 1472, elements: !4143)
!4143 = !{!4144, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169}
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4142, file: !101, line: 287, baseType: !4145, size: 64)
!4145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4146, size: 64)
!4146 = !DISubroutineType(types: !4147)
!4147 = !{!109, !175}
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4142, file: !101, line: 288, baseType: !4136, size: 64, offset: 64)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4142, file: !101, line: 289, baseType: !4145, size: 64, offset: 128)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4142, file: !101, line: 290, baseType: !4145, size: 64, offset: 192)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4142, file: !101, line: 291, baseType: !4145, size: 64, offset: 256)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4142, file: !101, line: 292, baseType: !4145, size: 64, offset: 320)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4142, file: !101, line: 293, baseType: !4145, size: 64, offset: 384)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4142, file: !101, line: 294, baseType: !4145, size: 64, offset: 448)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4142, file: !101, line: 295, baseType: !4145, size: 64, offset: 512)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4142, file: !101, line: 296, baseType: !4145, size: 64, offset: 576)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4142, file: !101, line: 297, baseType: !4145, size: 64, offset: 640)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4142, file: !101, line: 298, baseType: !4145, size: 64, offset: 704)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4142, file: !101, line: 299, baseType: !4145, size: 64, offset: 768)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4142, file: !101, line: 300, baseType: !4145, size: 64, offset: 832)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4142, file: !101, line: 301, baseType: !4145, size: 64, offset: 896)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4142, file: !101, line: 302, baseType: !4145, size: 64, offset: 960)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4142, file: !101, line: 303, baseType: !4145, size: 64, offset: 1024)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4142, file: !101, line: 304, baseType: !4145, size: 64, offset: 1088)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4142, file: !101, line: 305, baseType: !4145, size: 64, offset: 1152)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4142, file: !101, line: 306, baseType: !4145, size: 64, offset: 1216)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4142, file: !101, line: 307, baseType: !4145, size: 64, offset: 1280)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4142, file: !101, line: 308, baseType: !4145, size: 64, offset: 1344)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4142, file: !101, line: 309, baseType: !4145, size: 64, offset: 1408)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !176, file: !94, line: 714, baseType: !4171, size: 64, offset: 768)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4173)
!4173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4174, line: 80, size: 1344, elements: !4175)
!4174 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4175 = !{!4176, !4177, !4178, !4179, !4180, !4181, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4231, !4232, !4233, !4234, !4235, !4239}
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4173, file: !4174, line: 81, baseType: !182, size: 64)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4173, file: !4174, line: 82, baseType: !182, size: 64, offset: 64)
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4173, file: !4174, line: 83, baseType: !322, size: 64, offset: 128)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4173, file: !4174, line: 84, baseType: !322, size: 64, offset: 192)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4173, file: !4174, line: 85, baseType: !322, size: 64, offset: 256)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4173, file: !4174, line: 87, baseType: !4182, size: 64, offset: 320)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{!109, !175, !4185}
!4185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4186, size: 64)
!4186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !88, line: 96, size: 1152, elements: !4187)
!4187 = !{!4188, !4189, !4190, !4191, !4192, !4193, !4194, !4198, !4202, !4203, !4204, !4205, !4206, !4214, !4215, !4216, !4217, !4218, !4219}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4186, file: !88, line: 97, baseType: !182, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4186, file: !88, line: 98, baseType: !4171, size: 64, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4186, file: !88, line: 100, baseType: !541, size: 64, offset: 128)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4186, file: !88, line: 101, baseType: !182, size: 64, offset: 192)
!4192 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4186, file: !88, line: 103, baseType: !692, size: 8, offset: 256)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4186, file: !88, line: 104, baseType: !87, size: 32, offset: 288)
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4186, file: !88, line: 106, baseType: !4195, size: 64, offset: 320)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4197)
!4197 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 106, flags: DIFlagFwdDecl)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4186, file: !88, line: 107, baseType: !4199, size: 64, offset: 384)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4201)
!4201 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 107, flags: DIFlagFwdDecl)
!4202 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4186, file: !88, line: 109, baseType: !4145, size: 64, offset: 448)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4186, file: !88, line: 110, baseType: !4136, size: 64, offset: 512)
!4204 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4186, file: !88, line: 111, baseType: !4145, size: 64, offset: 576)
!4205 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4186, file: !88, line: 112, baseType: !4136, size: 64, offset: 640)
!4206 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4186, file: !88, line: 113, baseType: !4207, size: 64, offset: 704)
!4207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4208, size: 64)
!4208 = !DISubroutineType(types: !4209)
!4209 = !{!109, !175, !4210}
!4210 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !101, line: 60, baseType: !4211)
!4211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !101, line: 58, size: 32, elements: !4212)
!4212 = !{!4213}
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4211, file: !101, line: 59, baseType: !109, size: 32)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4186, file: !88, line: 114, baseType: !4145, size: 64, offset: 768)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4186, file: !88, line: 115, baseType: !322, size: 64, offset: 832)
!4216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4186, file: !88, line: 116, baseType: !322, size: 64, offset: 896)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4186, file: !88, line: 118, baseType: !4140, size: 64, offset: 960)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4186, file: !88, line: 119, baseType: !4136, size: 64, offset: 1024)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4186, file: !88, line: 121, baseType: !4220, size: 64, offset: 1088)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !88, line: 121, flags: DIFlagFwdDecl)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4173, file: !4174, line: 88, baseType: !4125, size: 64, offset: 384)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4173, file: !4174, line: 89, baseType: !4145, size: 64, offset: 448)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4173, file: !4174, line: 90, baseType: !4136, size: 64, offset: 512)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4173, file: !4174, line: 91, baseType: !4136, size: 64, offset: 576)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4173, file: !4174, line: 92, baseType: !4136, size: 64, offset: 640)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4173, file: !4174, line: 94, baseType: !4145, size: 64, offset: 704)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4173, file: !4174, line: 95, baseType: !4145, size: 64, offset: 768)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4173, file: !4174, line: 97, baseType: !4207, size: 64, offset: 832)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4173, file: !4174, line: 98, baseType: !4145, size: 64, offset: 896)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4173, file: !4174, line: 100, baseType: !4145, size: 64, offset: 960)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4173, file: !4174, line: 102, baseType: !4145, size: 64, offset: 1024)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4173, file: !4174, line: 103, baseType: !4136, size: 64, offset: 1088)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4173, file: !4174, line: 105, baseType: !4140, size: 64, offset: 1152)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4173, file: !4174, line: 107, baseType: !4236, size: 64, offset: 1216)
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4238)
!4238 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4174, line: 107, flags: DIFlagFwdDecl)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4173, file: !4174, line: 109, baseType: !692, size: 8, offset: 1280)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !176, file: !94, line: 715, baseType: !4185, size: 64, offset: 832)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !176, file: !94, line: 717, baseType: !342, size: 64, offset: 896)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !176, file: !94, line: 719, baseType: !342, size: 64, offset: 960)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !176, file: !94, line: 721, baseType: !612, size: 256, offset: 1024)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !176, file: !94, line: 725, baseType: !4245, size: 448, offset: 1280)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !94, line: 517, size: 448, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4250}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4245, file: !94, line: 518, baseType: !186, size: 128)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4245, file: !94, line: 519, baseType: !186, size: 128, offset: 128)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4245, file: !94, line: 520, baseType: !186, size: 128, offset: 256)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4245, file: !94, line: 521, baseType: !93, size: 32, offset: 384)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !176, file: !94, line: 726, baseType: !4252, size: 2496, offset: 1728)
!4252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !101, line: 663, size: 2496, elements: !4253)
!4253 = !{!4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330, !4336, !4340}
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4252, file: !101, line: 664, baseType: !4210, size: 32)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4252, file: !101, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4252, file: !101, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4252, file: !101, line: 667, baseType: !692, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4252, file: !101, line: 668, baseType: !692, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4252, file: !101, line: 669, baseType: !692, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4252, file: !101, line: 670, baseType: !692, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4252, file: !101, line: 671, baseType: !692, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4252, file: !101, line: 672, baseType: !692, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4252, file: !101, line: 673, baseType: !692, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4252, file: !101, line: 674, baseType: !692, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4252, file: !101, line: 675, baseType: !420, size: 32, offset: 64)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4252, file: !101, line: 676, baseType: !200, size: 32, offset: 96)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4252, file: !101, line: 678, baseType: !186, size: 128, offset: 128)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4252, file: !101, line: 679, baseType: !561, size: 256, offset: 256)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4252, file: !101, line: 680, baseType: !4270, size: 64, offset: 512)
!4270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4271, size: 64)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4272, line: 43, size: 1536, elements: !4273)
!4272 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4273 = !{!4274, !4275, !4276, !4277, !4278, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295}
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4271, file: !4272, line: 44, baseType: !182, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4271, file: !4272, line: 45, baseType: !109, size: 32, offset: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4271, file: !4272, line: 46, baseType: !186, size: 128, offset: 128)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4271, file: !4272, line: 47, baseType: !200, size: 32, offset: 256)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4271, file: !4272, line: 48, baseType: !4279, size: 64, offset: 320)
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !101, line: 629, flags: DIFlagFwdDecl)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4271, file: !4272, line: 49, baseType: !854, size: 320, offset: 384)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4271, file: !4272, line: 50, baseType: !320, size: 64, offset: 704)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4271, file: !4272, line: 51, baseType: !1509, size: 64, offset: 768)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4271, file: !4272, line: 52, baseType: !1509, size: 64, offset: 832)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4271, file: !4272, line: 53, baseType: !1509, size: 64, offset: 896)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4271, file: !4272, line: 54, baseType: !1509, size: 64, offset: 960)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4271, file: !4272, line: 55, baseType: !1509, size: 64, offset: 1024)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4271, file: !4272, line: 56, baseType: !320, size: 64, offset: 1088)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4271, file: !4272, line: 57, baseType: !320, size: 64, offset: 1152)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4271, file: !4272, line: 58, baseType: !320, size: 64, offset: 1216)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4271, file: !4272, line: 59, baseType: !320, size: 64, offset: 1280)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4271, file: !4272, line: 60, baseType: !320, size: 64, offset: 1344)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4271, file: !4272, line: 61, baseType: !175, size: 64, offset: 1408)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4271, file: !4272, line: 62, baseType: !692, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4271, file: !4272, line: 63, baseType: !692, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4252, file: !101, line: 681, baseType: !692, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4252, file: !101, line: 682, baseType: !692, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4252, file: !101, line: 683, baseType: !692, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4252, file: !101, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4252, file: !101, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4252, file: !101, line: 690, baseType: !1501, size: 512, offset: 640)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4252, file: !101, line: 691, baseType: !424, size: 64, offset: 1152)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4252, file: !101, line: 692, baseType: !872, size: 256, offset: 1216)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4252, file: !101, line: 693, baseType: !1367, size: 192, offset: 1472)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4252, file: !101, line: 694, baseType: !4279, size: 64, offset: 1664)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4252, file: !101, line: 695, baseType: !220, size: 32, offset: 1728)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4252, file: !101, line: 696, baseType: !220, size: 32, offset: 1760)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4252, file: !101, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4252, file: !101, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4252, file: !101, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4252, file: !101, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4252, file: !101, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4252, file: !101, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4252, file: !101, line: 703, baseType: !692, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4252, file: !101, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4252, file: !101, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4252, file: !101, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4252, file: !101, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4252, file: !101, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4252, file: !101, line: 709, baseType: !7, size: 32, offset: 1824)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4252, file: !101, line: 710, baseType: !100, size: 32, offset: 1856)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4252, file: !101, line: 711, baseType: !108, size: 32, offset: 1888)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4252, file: !101, line: 712, baseType: !108, size: 32, offset: 1920)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4252, file: !101, line: 713, baseType: !109, size: 32, offset: 1952)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4252, file: !101, line: 714, baseType: !109, size: 32, offset: 1984)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4252, file: !101, line: 715, baseType: !424, size: 64, offset: 2048)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4252, file: !101, line: 716, baseType: !424, size: 64, offset: 2112)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4252, file: !101, line: 717, baseType: !424, size: 64, offset: 2176)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4252, file: !101, line: 718, baseType: !424, size: 64, offset: 2240)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4252, file: !101, line: 720, baseType: !4331, size: 64, offset: 2304)
!4331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4332, size: 64)
!4332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !101, line: 632, size: 64, elements: !4333)
!4333 = !{!4334, !4335}
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4332, file: !101, line: 633, baseType: !200, size: 32)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4332, file: !101, line: 634, baseType: !7, size: 32, offset: 32)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4252, file: !101, line: 721, baseType: !4337, size: 64, offset: 2368)
!4337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4338, size: 64)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !175, !608}
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4252, file: !101, line: 722, baseType: !4341, size: 64, offset: 2432)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4342 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !101, line: 722, flags: DIFlagFwdDecl)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !176, file: !94, line: 727, baseType: !4344, size: 64, offset: 4224)
!4344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4345, size: 64)
!4345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !101, line: 742, size: 1792, elements: !4346)
!4346 = !{!4347, !4348, !4349, !4353, !4354, !4355}
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4345, file: !101, line: 743, baseType: !4142, size: 1472)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4345, file: !101, line: 744, baseType: !4145, size: 64, offset: 1472)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4345, file: !101, line: 745, baseType: !4350, size: 64, offset: 1536)
!4350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4351, size: 64)
!4351 = !DISubroutineType(types: !4352)
!4352 = !{null, !175, !692}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4345, file: !101, line: 746, baseType: !4145, size: 64, offset: 1600)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4345, file: !101, line: 747, baseType: !4136, size: 64, offset: 1664)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4345, file: !101, line: 748, baseType: !4136, size: 64, offset: 1728)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !176, file: !94, line: 736, baseType: !4357, size: 128, offset: 4288)
!4357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !94, line: 529, size: 128, elements: !4358)
!4358 = !{!4359, !4363}
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4357, file: !94, line: 531, baseType: !4360, size: 64)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4361, size: 64)
!4361 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4362, line: 13, flags: DIFlagFwdDecl)
!4362 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4357, file: !94, line: 532, baseType: !4364, size: 64, offset: 64)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !94, line: 49, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !176, file: !94, line: 738, baseType: !4367, size: 64, offset: 4416)
!4367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4368, size: 64)
!4368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4369)
!4369 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !94, line: 738, flags: DIFlagFwdDecl)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !176, file: !94, line: 740, baseType: !4371, size: 64, offset: 4480)
!4371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !176, file: !94, line: 741, baseType: !424, size: 64, offset: 4544)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !176, file: !94, line: 746, baseType: !424, size: 64, offset: 4608)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !176, file: !94, line: 747, baseType: !4375, size: 64, offset: 4672)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4377)
!4377 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !94, line: 747, flags: DIFlagFwdDecl)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !176, file: !94, line: 749, baseType: !4379, size: 64, offset: 4736)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !94, line: 428, size: 128, elements: !4381)
!4381 = !{!4382, !4383, !4384}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4380, file: !94, line: 433, baseType: !7, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4380, file: !94, line: 434, baseType: !7, size: 32, offset: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4380, file: !94, line: 435, baseType: !320, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !176, file: !94, line: 751, baseType: !186, size: 128, offset: 4800)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !176, file: !94, line: 762, baseType: !4387, size: 64, offset: 4928)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !94, line: 762, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !176, file: !94, line: 770, baseType: !4390, offset: 4992)
!4390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4391, line: 5, elements: !901)
!4391 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4392 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !176, file: !94, line: 772, baseType: !4393, size: 64, offset: 4992)
!4393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4394, size: 64)
!4394 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4395, line: 18, flags: DIFlagFwdDecl)
!4395 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !176, file: !94, line: 773, baseType: !4397, size: 64, offset: 5056)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4174, line: 22, flags: DIFlagFwdDecl)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !176, file: !94, line: 776, baseType: !109, size: 32, offset: 5120)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !176, file: !94, line: 778, baseType: !507, size: 32, offset: 5152)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !176, file: !94, line: 779, baseType: !420, size: 32, offset: 5184)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !176, file: !94, line: 781, baseType: !200, size: 32, offset: 5216)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !176, file: !94, line: 782, baseType: !186, size: 128, offset: 5248)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !176, file: !94, line: 784, baseType: !4405, size: 64, offset: 5376)
!4405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4406, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4407)
!4407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4408, line: 52, size: 768, elements: !4409)
!4408 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4409 = !{!4410, !4411, !4412, !4413, !4414, !4418, !4422, !4423, !4424, !4425, !4429, !4433}
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4407, file: !4408, line: 53, baseType: !182, size: 64)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4407, file: !4408, line: 55, baseType: !322, size: 64, offset: 64)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4407, file: !4408, line: 56, baseType: !322, size: 64, offset: 128)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4407, file: !4408, line: 58, baseType: !4125, size: 64, offset: 192)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4407, file: !4408, line: 59, baseType: !4415, size: 64, offset: 256)
!4415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4416, size: 64)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{!270, !4128, !4134}
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4407, file: !4408, line: 61, baseType: !4419, size: 64, offset: 320)
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{null, !4405}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4407, file: !4408, line: 62, baseType: !4136, size: 64, offset: 384)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4407, file: !4408, line: 64, baseType: !4145, size: 64, offset: 448)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4407, file: !4408, line: 66, baseType: !3965, size: 64, offset: 512)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4407, file: !4408, line: 67, baseType: !4426, size: 64, offset: 576)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!2516, !4128}
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4407, file: !4408, line: 69, baseType: !4430, size: 64, offset: 640)
!4430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4431, size: 64)
!4431 = !DISubroutineType(types: !4432)
!4432 = !{null, !4128, !3997, !3998}
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4407, file: !4408, line: 71, baseType: !4140, size: 64, offset: 704)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !176, file: !94, line: 785, baseType: !322, size: 64, offset: 5440)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !176, file: !94, line: 787, baseType: !4136, size: 64, offset: 5504)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !176, file: !94, line: 788, baseType: !4437, size: 64, offset: 5568)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !94, line: 46, flags: DIFlagFwdDecl)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !176, file: !94, line: 789, baseType: !4440, size: 64, offset: 5632)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !94, line: 48, flags: DIFlagFwdDecl)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !176, file: !94, line: 791, baseType: !4443, size: 64, offset: 5696)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !94, line: 597, size: 128, elements: !4445)
!4445 = !{!4446, !4447, !4448, !4449, !4450}
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4444, file: !94, line: 598, baseType: !116, size: 32)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4444, file: !94, line: 599, baseType: !125, size: 32, offset: 32)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4444, file: !94, line: 600, baseType: !130, size: 32, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4444, file: !94, line: 601, baseType: !692, size: 8, offset: 96)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4444, file: !94, line: 602, baseType: !692, size: 8, offset: 104)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !176, file: !94, line: 793, baseType: !135, size: 32, offset: 5760)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !176, file: !94, line: 795, baseType: !692, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !176, file: !94, line: 796, baseType: !692, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !176, file: !94, line: 797, baseType: !692, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !176, file: !94, line: 798, baseType: !692, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !176, file: !94, line: 799, baseType: !692, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_trigger", file: !142, line: 471, size: 704, elements: !4459)
!4459 = !{!4460, !4461, !4542, !4543, !4544, !4545, !4546, !4547, !4548}
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4458, file: !142, line: 473, baseType: !182, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4458, file: !142, line: 474, baseType: !4462, size: 64, offset: 64)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{!109, !4465}
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_classdev", file: !142, line: 99, size: 3264, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473, !4474, !4478, !4482, !4486, !4490, !4499, !4500, !4501, !4502, !4503, !4504, !4505, !4506, !4507, !4508, !4509, !4513, !4514, !4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4527, !4528, !4532, !4533, !4537, !4541}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4466, file: !142, line: 100, baseType: !182, size: 64)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4466, file: !142, line: 101, baseType: !7, size: 32, offset: 64)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "max_brightness", scope: !4466, file: !142, line: 102, baseType: !7, size: 32, offset: 96)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !4466, file: !142, line: 103, baseType: !7, size: 32, offset: 128)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4466, file: !142, line: 104, baseType: !109, size: 32, offset: 160)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "work_flags", scope: !4466, file: !142, line: 120, baseType: !320, size: 64, offset: 192)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set", scope: !4466, file: !142, line: 137, baseType: !4475, size: 64, offset: 256)
!4475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4476, size: 64)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{null, !4465, !141}
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_set_blocking", scope: !4466, file: !142, line: 143, baseType: !4479, size: 64, offset: 320)
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = !DISubroutineType(types: !4481)
!4481 = !{!109, !4465, !141}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "brightness_get", scope: !4466, file: !142, line: 146, baseType: !4483, size: 64, offset: 384)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!141, !4465}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "blink_set", scope: !4466, file: !142, line: 160, baseType: !4487, size: 64, offset: 448)
!4487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4488, size: 64)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{!109, !4465, !963, !963}
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_set", scope: !4466, file: !142, line: 164, baseType: !4491, size: 64, offset: 512)
!4491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4492, size: 64)
!4492 = !DISubroutineType(types: !4493)
!4493 = !{!109, !4465, !4494, !420, !109}
!4494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4495, size: 64)
!4495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_pattern", file: !142, line: 713, size: 64, elements: !4496)
!4496 = !{!4497, !4498}
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !4495, file: !142, line: 714, baseType: !420, size: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4495, file: !142, line: 715, baseType: !109, size: 32, offset: 32)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "pattern_clear", scope: !4466, file: !142, line: 166, baseType: !4462, size: 64, offset: 576)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4466, file: !142, line: 168, baseType: !175, size: 64, offset: 640)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4466, file: !142, line: 169, baseType: !322, size: 64, offset: 704)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4466, file: !142, line: 171, baseType: !186, size: 128, offset: 768)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "default_trigger", scope: !4466, file: !142, line: 172, baseType: !182, size: 64, offset: 896)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_on", scope: !4466, file: !142, line: 174, baseType: !320, size: 64, offset: 960)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "blink_delay_off", scope: !4466, file: !142, line: 174, baseType: !320, size: 64, offset: 1024)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "blink_timer", scope: !4466, file: !142, line: 175, baseType: !854, size: 320, offset: 1088)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "blink_brightness", scope: !4466, file: !142, line: 176, baseType: !109, size: 32, offset: 1408)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "new_blink_brightness", scope: !4466, file: !142, line: 177, baseType: !109, size: 32, offset: 1440)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "flash_resume", scope: !4466, file: !142, line: 178, baseType: !4510, size: 64, offset: 1472)
!4510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4511, size: 64)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{null, !4465}
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "set_brightness_work", scope: !4466, file: !142, line: 180, baseType: !872, size: 256, offset: 1536)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_set_value", scope: !4466, file: !142, line: 181, baseType: !109, size: 32, offset: 1792)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_on", scope: !4466, file: !142, line: 182, baseType: !320, size: 64, offset: 1856)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delay_off", scope: !4466, file: !142, line: 183, baseType: !320, size: 64, offset: 1920)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_lock", scope: !4466, file: !142, line: 187, baseType: !1274, size: 320, offset: 1984)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !4466, file: !142, line: 189, baseType: !4457, size: 64, offset: 2304)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "trig_list", scope: !4466, file: !142, line: 190, baseType: !186, size: 128, offset: 2368)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_data", scope: !4466, file: !142, line: 191, baseType: !342, size: 64, offset: 2496)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "activated", scope: !4466, file: !142, line: 193, baseType: !692, size: 8, offset: 2560)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !4466, file: !142, line: 196, baseType: !4523, size: 64, offset: 2624)
!4523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4524, size: 64)
!4524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "led_hw_trigger_type", file: !142, line: 95, size: 32, elements: !4525)
!4525 = !{!4526}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !4524, file: !142, line: 96, baseType: !109, size: 32)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_trigger", scope: !4466, file: !142, line: 199, baseType: !182, size: 64, offset: 2688)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_is_supported", scope: !4466, file: !142, line: 209, baseType: !4529, size: 64, offset: 2752)
!4529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4530, size: 64)
!4530 = !DISubroutineType(types: !4531)
!4531 = !{!109, !4465, !320}
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_set", scope: !4466, file: !142, line: 220, baseType: !4529, size: 64, offset: 2816)
!4533 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get", scope: !4466, file: !142, line: 232, baseType: !4534, size: 64, offset: 2880)
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4535, size: 64)
!4535 = !DISubroutineType(types: !4536)
!4536 = !{!109, !4465, !963}
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "hw_control_get_device", scope: !4466, file: !142, line: 239, baseType: !4538, size: 64, offset: 2944)
!4538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4539, size: 64)
!4539 = !DISubroutineType(types: !4540)
!4540 = !{!175, !4465}
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "led_access", scope: !4466, file: !142, line: 248, baseType: !612, size: 256, offset: 3008)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !4458, file: !142, line: 475, baseType: !4510, size: 64, offset: 128)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !4458, file: !142, line: 478, baseType: !141, size: 32, offset: 192)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "trigger_type", scope: !4458, file: !142, line: 481, baseType: !4523, size: 64, offset: 256)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "leddev_list_lock", scope: !4458, file: !142, line: 484, baseType: !200, size: 32, offset: 320)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "led_cdevs", scope: !4458, file: !142, line: 485, baseType: !186, size: 128, offset: 384)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "next_trig", scope: !4458, file: !142, line: 488, baseType: !186, size: 128, offset: 512)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4458, file: !142, line: 490, baseType: !322, size: 64, offset: 640)
!4549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4550, size: 64)
!4550 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4551)
!4551 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !190)
!4552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4551, size: 64)
!4553 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !187, line: 42, baseType: !320)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!4555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4556 = !{!0, !4557, !4562, !4564, !4566, !4571, !4576, !4581, !4584, !4586, !4588, !4590, !4592, !4594, !4599, !4601, !4603, !4605, !4607, !4612, !4617, !4619, !4621, !4623, !4626, !4629, !4631, !4634, !4637, !4639, !4641}
!4557 = !DIGlobalVariableExpression(var: !4558, expr: !DIExpression())
!4558 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !4559, isLocal: true, isDefinition: true)
!4559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 40, elements: !4560)
!4560 = !{!4561}
!4561 = !DISubrange(count: 5)
!4562 = !DIGlobalVariableExpression(var: !4563, expr: !DIExpression())
!4563 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_write287", scope: !2, file: !3, line: 76, type: !342, isLocal: true, isDefinition: true)
!4564 = !DIGlobalVariableExpression(var: !4565, expr: !DIExpression())
!4565 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_read288", scope: !2, file: !3, line: 155, type: !342, isLocal: true, isDefinition: true)
!4566 = !DIGlobalVariableExpression(var: !4567, expr: !DIExpression())
!4567 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !4568, isLocal: true, isDefinition: true)
!4568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 88, elements: !4569)
!4569 = !{!4570}
!4570 = !DISubrange(count: 11)
!4571 = !DIGlobalVariableExpression(var: !4572, expr: !DIExpression())
!4572 = distinct !DIGlobalVariable(scope: null, file: !3, line: 220, type: !4573, isLocal: true, isDefinition: true)
!4573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 272, elements: !4574)
!4574 = !{!4575}
!4575 = !DISubrange(count: 34)
!4576 = !DIGlobalVariableExpression(var: !4577, expr: !DIExpression())
!4577 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !4578, isLocal: true, isDefinition: true)
!4578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 208, elements: !4579)
!4579 = !{!4580}
!4580 = !DISubrange(count: 26)
!4581 = !DIGlobalVariableExpression(var: !4582, expr: !DIExpression())
!4582 = distinct !DIGlobalVariable(scope: null, file: !3, line: 229, type: !4583, isLocal: true, isDefinition: true)
!4583 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, elements: !2694)
!4584 = !DIGlobalVariableExpression(var: !4585, expr: !DIExpression())
!4585 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_set289", scope: !2, file: !3, line: 253, type: !342, isLocal: true, isDefinition: true)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_remove290", scope: !2, file: !3, line: 261, type: !342, isLocal: true, isDefinition: true)
!4588 = !DIGlobalVariableExpression(var: !4589, expr: !DIExpression())
!4589 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_set_default291", scope: !2, file: !3, line: 283, type: !342, isLocal: true, isDefinition: true)
!4590 = !DIGlobalVariableExpression(var: !4591, expr: !DIExpression())
!4591 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_register292", scope: !2, file: !3, line: 325, type: !342, isLocal: true, isDefinition: true)
!4592 = !DIGlobalVariableExpression(var: !4593, expr: !DIExpression())
!4593 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_unregister293", scope: !2, file: !3, line: 349, type: !342, isLocal: true, isDefinition: true)
!4594 = !DIGlobalVariableExpression(var: !4595, expr: !DIExpression())
!4595 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !4596, isLocal: true, isDefinition: true)
!4596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 200, elements: !4597)
!4597 = !{!4598}
!4598 = !DISubrange(count: 25)
!4599 = !DIGlobalVariableExpression(var: !4600, expr: !DIExpression())
!4600 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_led_trigger_register294", scope: !2, file: !3, line: 377, type: !342, isLocal: true, isDefinition: true)
!4601 = !DIGlobalVariableExpression(var: !4602, expr: !DIExpression())
!4602 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_event297", scope: !2, file: !3, line: 396, type: !342, isLocal: true, isDefinition: true)
!4603 = !DIGlobalVariableExpression(var: !4604, expr: !DIExpression())
!4604 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_blink300", scope: !2, file: !3, line: 426, type: !342, isLocal: true, isDefinition: true)
!4605 = !DIGlobalVariableExpression(var: !4606, expr: !DIExpression())
!4606 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_blink_oneshot301", scope: !2, file: !3, line: 435, type: !342, isLocal: true, isDefinition: true)
!4607 = !DIGlobalVariableExpression(var: !4608, expr: !DIExpression())
!4608 = distinct !DIGlobalVariable(scope: null, file: !3, line: 450, type: !4609, isLocal: true, isDefinition: true)
!4609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 336, elements: !4610)
!4610 = !{!4611}
!4611 = !DISubrange(count: 42)
!4612 = !DIGlobalVariableExpression(var: !4613, expr: !DIExpression())
!4613 = distinct !DIGlobalVariable(scope: null, file: !3, line: 454, type: !4614, isLocal: true, isDefinition: true)
!4614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 392, elements: !4615)
!4615 = !{!4616}
!4616 = !DISubrange(count: 49)
!4617 = !DIGlobalVariableExpression(var: !4618, expr: !DIExpression())
!4618 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_register_simple302", scope: !2, file: !3, line: 459, type: !342, isLocal: true, isDefinition: true)
!4619 = !DIGlobalVariableExpression(var: !4620, expr: !DIExpression())
!4620 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_led_trigger_unregister_simple303", scope: !2, file: !3, line: 467, type: !342, isLocal: true, isDefinition: true)
!4621 = !DIGlobalVariableExpression(var: !4622, expr: !DIExpression())
!4622 = distinct !DIGlobalVariable(name: "triggers_list_lock", scope: !2, file: !3, line: 25, type: !1274, isLocal: true, isDefinition: true)
!4623 = !DIGlobalVariableExpression(var: !4624, expr: !DIExpression())
!4624 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !4625, isLocal: true, isDefinition: true)
!4625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 24, elements: !271)
!4626 = !DIGlobalVariableExpression(var: !4627, expr: !DIExpression())
!4627 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !4628, isLocal: true, isDefinition: true)
!4628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 56, elements: !733)
!4629 = !DIGlobalVariableExpression(var: !4630, expr: !DIExpression())
!4630 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !3015, isLocal: true, isDefinition: true)
!4631 = !DIGlobalVariableExpression(var: !4632, expr: !DIExpression())
!4632 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !4633, isLocal: true, isDefinition: true)
!4633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 16, elements: !731)
!4634 = !DIGlobalVariableExpression(var: !4635, expr: !DIExpression())
!4635 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !4636, isLocal: true, isDefinition: true)
!4636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 8, elements: !1629)
!4637 = !DIGlobalVariableExpression(var: !4638, expr: !DIExpression())
!4638 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !4633, isLocal: true, isDefinition: true)
!4639 = !DIGlobalVariableExpression(var: !4640, expr: !DIExpression())
!4640 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !4633, isLocal: true, isDefinition: true)
!4641 = !DIGlobalVariableExpression(var: !4642, expr: !DIExpression())
!4642 = distinct !DIGlobalVariable(scope: null, file: !165, line: 480, type: !4643, isLocal: true, isDefinition: true)
!4643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !184, size: 168, elements: !4644)
!4644 = !{!4645}
!4645 = !DISubrange(count: 21)
!4646 = !{i32 7, !"Dwarf Version", i32 5}
!4647 = !{i32 2, !"Debug Info Version", i32 3}
!4648 = !{i32 1, !"wchar_size", i32 2}
!4649 = !{i32 8, !"cf-protection-branch", i32 1}
!4650 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4651 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4652 = !{i32 1, !"Code Model", i32 2}
!4653 = !{i32 1, !"override-stack-alignment", i32 8}
!4654 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4655 = distinct !DISubprogram(name: "led_trigger_write", scope: !3, file: !3, line: 36, type: !3950, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4656)
!4656 = !{!4657, !4658, !4659, !4660, !4661, !4662, !4663, !4664, !4666, !4667, !4668, !4669, !4672, !4675}
!4657 = !DILocalVariable(name: "filp", arg: 1, scope: !4655, file: !3, line: 36, type: !1704)
!4658 = !DILocalVariable(name: "kobj", arg: 2, scope: !4655, file: !3, line: 36, type: !193)
!4659 = !DILocalVariable(name: "bin_attr", arg: 3, scope: !4655, file: !3, line: 37, type: !336)
!4660 = !DILocalVariable(name: "buf", arg: 4, scope: !4655, file: !3, line: 37, type: !270)
!4661 = !DILocalVariable(name: "pos", arg: 5, scope: !4655, file: !3, line: 38, type: !512)
!4662 = !DILocalVariable(name: "count", arg: 6, scope: !4655, file: !3, line: 38, type: !317)
!4663 = !DILocalVariable(name: "dev", scope: !4655, file: !3, line: 40, type: !175)
!4664 = !DILocalVariable(name: "__mptr", scope: !4665, file: !3, line: 40, type: !342)
!4665 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 40, column: 23)
!4666 = !DILocalVariable(name: "led_cdev", scope: !4655, file: !3, line: 41, type: !4465)
!4667 = !DILocalVariable(name: "trig", scope: !4655, file: !3, line: 42, type: !4457)
!4668 = !DILocalVariable(name: "ret", scope: !4655, file: !3, line: 43, type: !109)
!4669 = !DILocalVariable(name: "__mptr", scope: !4670, file: !3, line: 58, type: !342)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 58, column: 2)
!4671 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 58, column: 2)
!4672 = !DILocalVariable(name: "__mptr", scope: !4673, file: !3, line: 58, type: !342)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 58, column: 2)
!4674 = distinct !DILexicalBlock(scope: !4671, file: !3, line: 58, column: 2)
!4675 = !DILabel(scope: !4655, name: "unlock", file: !3, line: 72)
!4676 = !DILocation(line: 36, column: 40, scope: !4655)
!4677 = !DILocation(line: 36, column: 62, scope: !4655)
!4678 = !DILocation(line: 37, column: 28, scope: !4655)
!4679 = !DILocation(line: 37, column: 44, scope: !4655)
!4680 = !DILocation(line: 38, column: 13, scope: !4655)
!4681 = !DILocation(line: 38, column: 25, scope: !4655)
!4682 = !DILocation(line: 40, column: 2, scope: !4655)
!4683 = !DILocation(line: 40, column: 17, scope: !4655)
!4684 = !DILocation(line: 40, column: 23, scope: !4665)
!4685 = !DILocation(line: 40, column: 23, scope: !4655)
!4686 = !DILocation(line: 41, column: 2, scope: !4655)
!4687 = !DILocation(line: 41, column: 23, scope: !4655)
!4688 = !DILocation(line: 41, column: 50, scope: !4655)
!4689 = !DILocation(line: 41, column: 34, scope: !4655)
!4690 = !DILocation(line: 42, column: 2, scope: !4655)
!4691 = !DILocation(line: 42, column: 22, scope: !4655)
!4692 = !DILocation(line: 43, column: 2, scope: !4655)
!4693 = !DILocation(line: 43, column: 6, scope: !4655)
!4694 = !DILocation(line: 43, column: 12, scope: !4655)
!4695 = !DILocation(line: 45, column: 14, scope: !4655)
!4696 = !DILocation(line: 45, column: 24, scope: !4655)
!4697 = !DILocation(line: 45, column: 2, scope: !4655)
!4698 = !DILocation(line: 47, column: 28, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 47, column: 6)
!4700 = !DILocation(line: 47, column: 6, scope: !4699)
!4701 = !DILocation(line: 47, column: 6, scope: !4655)
!4702 = !DILocation(line: 48, column: 7, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4699, file: !3, line: 47, column: 39)
!4704 = !DILocation(line: 49, column: 3, scope: !4703)
!4705 = !DILocation(line: 52, column: 18, scope: !4706)
!4706 = distinct !DILexicalBlock(scope: !4655, file: !3, line: 52, column: 6)
!4707 = !DILocation(line: 52, column: 6, scope: !4706)
!4708 = !DILocation(line: 52, column: 6, scope: !4655)
!4709 = !DILocation(line: 53, column: 22, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4706, file: !3, line: 52, column: 32)
!4711 = !DILocation(line: 53, column: 3, scope: !4710)
!4712 = !DILocation(line: 54, column: 3, scope: !4710)
!4713 = !DILocation(line: 57, column: 2, scope: !4655)
!4714 = !DILocation(line: 58, column: 2, scope: !4670)
!4715 = !DILocation(line: 58, column: 2, scope: !4671)
!4716 = !DILocation(line: 58, column: 2, scope: !4674)
!4717 = !DILocation(line: 59, column: 19, scope: !4718)
!4718 = distinct !DILexicalBlock(scope: !4719, file: !3, line: 59, column: 7)
!4719 = distinct !DILexicalBlock(scope: !4674, file: !3, line: 58, column: 54)
!4720 = !DILocation(line: 59, column: 24, scope: !4718)
!4721 = !DILocation(line: 59, column: 30, scope: !4718)
!4722 = !DILocation(line: 59, column: 7, scope: !4718)
!4723 = !DILocation(line: 59, column: 36, scope: !4718)
!4724 = !DILocation(line: 59, column: 56, scope: !4718)
!4725 = !DILocation(line: 59, column: 66, scope: !4718)
!4726 = !DILocation(line: 59, column: 39, scope: !4718)
!4727 = !DILocation(line: 59, column: 7, scope: !4719)
!4728 = !DILocation(line: 60, column: 16, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4718, file: !3, line: 59, column: 73)
!4730 = !DILocation(line: 60, column: 26, scope: !4729)
!4731 = !DILocation(line: 60, column: 4, scope: !4729)
!4732 = !DILocation(line: 61, column: 20, scope: !4729)
!4733 = !DILocation(line: 61, column: 30, scope: !4729)
!4734 = !DILocation(line: 61, column: 4, scope: !4729)
!4735 = !DILocation(line: 62, column: 14, scope: !4729)
!4736 = !DILocation(line: 62, column: 24, scope: !4729)
!4737 = !DILocation(line: 62, column: 4, scope: !4729)
!4738 = !DILocation(line: 64, column: 4, scope: !4729)
!4739 = !DILocation(line: 65, column: 4, scope: !4729)
!4740 = !DILocation(line: 67, column: 2, scope: !4719)
!4741 = !DILocation(line: 58, column: 2, scope: !4673)
!4742 = distinct !{!4742, !4715, !4743, !4744, !4745}
!4743 = !DILocation(line: 67, column: 2, scope: !4671)
!4744 = !{!"llvm.loop.mustprogress"}
!4745 = !{!"llvm.loop.unroll.disable"}
!4746 = !DILocation(line: 69, column: 6, scope: !4655)
!4747 = !DILocation(line: 70, column: 2, scope: !4655)
!4748 = !DILocation(line: 72, column: 1, scope: !4655)
!4749 = !DILocation(line: 73, column: 16, scope: !4655)
!4750 = !DILocation(line: 73, column: 26, scope: !4655)
!4751 = !DILocation(line: 73, column: 2, scope: !4655)
!4752 = !DILocation(line: 74, column: 9, scope: !4655)
!4753 = !DILocation(line: 75, column: 1, scope: !4655)
!4754 = !DILocation(line: 74, column: 2, scope: !4655)
!4755 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !94, file: !94, line: 916, type: !4756, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4758)
!4756 = !DISubroutineType(types: !4757)
!4757 = !{!342, !4128}
!4758 = !{!4759}
!4759 = !DILocalVariable(name: "dev", arg: 1, scope: !4755, file: !94, line: 916, type: !4128)
!4760 = !DILocation(line: 916, column: 58, scope: !4755)
!4761 = !DILocation(line: 918, column: 9, scope: !4755)
!4762 = !DILocation(line: 918, column: 14, scope: !4755)
!4763 = !DILocation(line: 918, column: 2, scope: !4755)
!4764 = !DISubprogram(name: "mutex_lock", scope: !613, file: !613, line: 227, type: !4765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4765 = !DISubroutineType(types: !4766)
!4766 = !{null, !4767}
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!4768 = distinct !DISubprogram(name: "led_sysfs_is_disabled", scope: !142, file: !142, line: 455, type: !4769, scopeLine: 456, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4771)
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!692, !4465}
!4771 = !{!4772}
!4772 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !4768, file: !142, line: 455, type: !4465)
!4773 = !DILocation(line: 455, column: 63, scope: !4768)
!4774 = !DILocation(line: 457, column: 9, scope: !4768)
!4775 = !DILocation(line: 457, column: 19, scope: !4768)
!4776 = !DILocation(line: 457, column: 25, scope: !4768)
!4777 = !DILocation(line: 457, column: 2, scope: !4768)
!4778 = !DISubprogram(name: "sysfs_streq", scope: !4779, file: !4779, line: 226, type: !4780, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4779 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!692, !182, !182}
!4782 = distinct !DISubprogram(name: "led_trigger_remove", scope: !3, file: !3, line: 255, type: !4511, scopeLine: 256, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4783)
!4783 = !{!4784}
!4784 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !4782, file: !3, line: 255, type: !4465)
!4785 = !DILocation(line: 255, column: 46, scope: !4782)
!4786 = !DILocation(line: 257, column: 14, scope: !4782)
!4787 = !DILocation(line: 257, column: 24, scope: !4782)
!4788 = !DILocation(line: 257, column: 2, scope: !4782)
!4789 = !DILocation(line: 258, column: 18, scope: !4782)
!4790 = !DILocation(line: 258, column: 2, scope: !4782)
!4791 = !DILocation(line: 259, column: 12, scope: !4782)
!4792 = !DILocation(line: 259, column: 22, scope: !4782)
!4793 = !DILocation(line: 259, column: 2, scope: !4782)
!4794 = !DILocation(line: 260, column: 1, scope: !4782)
!4795 = !DISubprogram(name: "down_read", scope: !1275, file: !1275, line: 175, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4796 = !DISubroutineType(types: !4797)
!4797 = !{null, !4798}
!4798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!4799 = distinct !DISubprogram(name: "trigger_relevant", scope: !3, file: !3, line: 31, type: !4800, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4802)
!4800 = !DISubroutineType(types: !4801)
!4801 = !{!692, !4465, !4457}
!4802 = !{!4803, !4804}
!4803 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !4799, file: !3, line: 31, type: !4465)
!4804 = !DILocalVariable(name: "trig", arg: 2, scope: !4799, file: !3, line: 31, type: !4457)
!4805 = !DILocation(line: 31, column: 39, scope: !4799)
!4806 = !DILocation(line: 31, column: 69, scope: !4799)
!4807 = !DILocation(line: 33, column: 10, scope: !4799)
!4808 = !DILocation(line: 33, column: 16, scope: !4799)
!4809 = !DILocation(line: 33, column: 29, scope: !4799)
!4810 = !DILocation(line: 33, column: 32, scope: !4799)
!4811 = !DILocation(line: 33, column: 38, scope: !4799)
!4812 = !DILocation(line: 33, column: 54, scope: !4799)
!4813 = !DILocation(line: 33, column: 64, scope: !4799)
!4814 = !DILocation(line: 33, column: 51, scope: !4799)
!4815 = !DILocation(line: 33, column: 2, scope: !4799)
!4816 = !DISubprogram(name: "down_write", scope: !1275, file: !1275, line: 187, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4817 = distinct !DISubprogram(name: "led_trigger_set", scope: !3, file: !3, line: 158, type: !4818, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!109, !4465, !4457}
!4820 = !{!4821, !4822, !4823, !4824, !4826, !4827, !4828, !4829}
!4821 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !4817, file: !3, line: 158, type: !4465)
!4822 = !DILocalVariable(name: "trig", arg: 2, scope: !4817, file: !3, line: 158, type: !4457)
!4823 = !DILocalVariable(name: "event", scope: !4817, file: !3, line: 160, type: !270)
!4824 = !DILocalVariable(name: "envp", scope: !4817, file: !3, line: 161, type: !4825)
!4825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 128, elements: !731)
!4826 = !DILocalVariable(name: "name", scope: !4817, file: !3, line: 162, type: !182)
!4827 = !DILocalVariable(name: "ret", scope: !4817, file: !3, line: 163, type: !109)
!4828 = !DILabel(scope: !4817, name: "err_add_groups", file: !3, line: 236)
!4829 = !DILabel(scope: !4817, name: "err_activate", file: !3, line: 240)
!4830 = !DILocation(line: 158, column: 42, scope: !4817)
!4831 = !DILocation(line: 158, column: 72, scope: !4817)
!4832 = !DILocation(line: 160, column: 2, scope: !4817)
!4833 = !DILocation(line: 160, column: 8, scope: !4817)
!4834 = !DILocation(line: 161, column: 2, scope: !4817)
!4835 = !DILocation(line: 161, column: 8, scope: !4817)
!4836 = !DILocation(line: 162, column: 2, scope: !4817)
!4837 = !DILocation(line: 162, column: 14, scope: !4817)
!4838 = !DILocation(line: 163, column: 2, scope: !4817)
!4839 = !DILocation(line: 163, column: 6, scope: !4817)
!4840 = !DILocation(line: 165, column: 7, scope: !4841)
!4841 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 165, column: 6)
!4842 = !DILocation(line: 165, column: 17, scope: !4841)
!4843 = !DILocation(line: 165, column: 25, scope: !4841)
!4844 = !DILocation(line: 165, column: 29, scope: !4841)
!4845 = !DILocation(line: 165, column: 6, scope: !4817)
!4846 = !DILocation(line: 166, column: 3, scope: !4841)
!4847 = !DILocation(line: 168, column: 9, scope: !4817)
!4848 = !DILocation(line: 168, column: 16, scope: !4817)
!4849 = !DILocation(line: 168, column: 22, scope: !4817)
!4850 = !DILocation(line: 168, column: 7, scope: !4817)
!4851 = !DILocation(line: 169, column: 46, scope: !4817)
!4852 = !DILocation(line: 169, column: 10, scope: !4817)
!4853 = !DILocation(line: 169, column: 8, scope: !4817)
!4854 = !DILocation(line: 172, column: 6, scope: !4855)
!4855 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 172, column: 6)
!4856 = !DILocation(line: 172, column: 16, scope: !4855)
!4857 = !DILocation(line: 172, column: 6, scope: !4817)
!4858 = !DILocation(line: 173, column: 14, scope: !4859)
!4859 = distinct !DILexicalBlock(scope: !4855, file: !3, line: 172, column: 25)
!4860 = !DILocation(line: 173, column: 24, scope: !4859)
!4861 = !DILocation(line: 173, column: 33, scope: !4859)
!4862 = !DILocation(line: 173, column: 3, scope: !4859)
!4863 = !DILocation(line: 174, column: 17, scope: !4859)
!4864 = !DILocation(line: 174, column: 27, scope: !4859)
!4865 = !DILocation(line: 174, column: 3, scope: !4859)
!4866 = !DILocation(line: 175, column: 16, scope: !4859)
!4867 = !DILocation(line: 175, column: 26, scope: !4859)
!4868 = !DILocation(line: 175, column: 35, scope: !4859)
!4869 = !DILocation(line: 175, column: 3, scope: !4859)
!4870 = !DILocation(line: 178, column: 3, scope: !4859)
!4871 = !DILocation(line: 180, column: 21, scope: !4859)
!4872 = !DILocation(line: 180, column: 31, scope: !4859)
!4873 = !DILocation(line: 180, column: 3, scope: !4859)
!4874 = !DILocation(line: 181, column: 27, scope: !4859)
!4875 = !DILocation(line: 181, column: 3, scope: !4859)
!4876 = !DILocation(line: 182, column: 24, scope: !4859)
!4877 = !DILocation(line: 182, column: 34, scope: !4859)
!4878 = !DILocation(line: 182, column: 39, scope: !4859)
!4879 = !DILocation(line: 182, column: 49, scope: !4859)
!4880 = !DILocation(line: 182, column: 58, scope: !4859)
!4881 = !DILocation(line: 182, column: 3, scope: !4859)
!4882 = !DILocation(line: 183, column: 7, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4859, file: !3, line: 183, column: 7)
!4884 = !DILocation(line: 183, column: 17, scope: !4883)
!4885 = !DILocation(line: 183, column: 26, scope: !4883)
!4886 = !DILocation(line: 183, column: 7, scope: !4859)
!4887 = !DILocation(line: 184, column: 4, scope: !4883)
!4888 = !DILocation(line: 184, column: 14, scope: !4883)
!4889 = !DILocation(line: 184, column: 23, scope: !4883)
!4890 = !DILocation(line: 184, column: 34, scope: !4883)
!4891 = !DILocation(line: 185, column: 3, scope: !4859)
!4892 = !DILocation(line: 185, column: 13, scope: !4859)
!4893 = !DILocation(line: 185, column: 21, scope: !4859)
!4894 = !DILocation(line: 186, column: 3, scope: !4859)
!4895 = !DILocation(line: 186, column: 13, scope: !4859)
!4896 = !DILocation(line: 186, column: 26, scope: !4859)
!4897 = !DILocation(line: 187, column: 3, scope: !4859)
!4898 = !DILocation(line: 187, column: 13, scope: !4859)
!4899 = !DILocation(line: 187, column: 23, scope: !4859)
!4900 = !DILocation(line: 188, column: 3, scope: !4859)
!4901 = !DILocation(line: 188, column: 13, scope: !4859)
!4902 = !DILocation(line: 188, column: 19, scope: !4859)
!4903 = !DILocation(line: 189, column: 22, scope: !4859)
!4904 = !DILocation(line: 189, column: 3, scope: !4859)
!4905 = !DILocation(line: 190, column: 2, scope: !4859)
!4906 = !DILocation(line: 191, column: 6, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 191, column: 6)
!4908 = !DILocation(line: 191, column: 6, scope: !4817)
!4909 = !DILocation(line: 192, column: 14, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4907, file: !3, line: 191, column: 12)
!4911 = !DILocation(line: 192, column: 20, scope: !4910)
!4912 = !DILocation(line: 192, column: 3, scope: !4910)
!4913 = !DILocation(line: 193, column: 22, scope: !4910)
!4914 = !DILocation(line: 193, column: 32, scope: !4910)
!4915 = !DILocation(line: 193, column: 44, scope: !4910)
!4916 = !DILocation(line: 193, column: 50, scope: !4910)
!4917 = !DILocation(line: 193, column: 3, scope: !4910)
!4918 = !DILocation(line: 194, column: 16, scope: !4910)
!4919 = !DILocation(line: 194, column: 22, scope: !4910)
!4920 = !DILocation(line: 194, column: 3, scope: !4910)
!4921 = !DILocation(line: 195, column: 23, scope: !4910)
!4922 = !DILocation(line: 195, column: 3, scope: !4910)
!4923 = !DILocation(line: 195, column: 13, scope: !4910)
!4924 = !DILocation(line: 195, column: 21, scope: !4910)
!4925 = !DILocation(line: 202, column: 3, scope: !4910)
!4926 = !DILocation(line: 208, column: 15, scope: !4910)
!4927 = !DILocation(line: 208, column: 25, scope: !4910)
!4928 = !DILocation(line: 208, column: 3, scope: !4910)
!4929 = !DILocation(line: 210, column: 7, scope: !4910)
!4930 = !DILocation(line: 211, column: 7, scope: !4931)
!4931 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 211, column: 7)
!4932 = !DILocation(line: 211, column: 13, scope: !4931)
!4933 = !DILocation(line: 211, column: 7, scope: !4910)
!4934 = !DILocation(line: 212, column: 10, scope: !4931)
!4935 = !DILocation(line: 212, column: 16, scope: !4931)
!4936 = !DILocation(line: 212, column: 25, scope: !4931)
!4937 = !DILocation(line: 212, column: 8, scope: !4931)
!4938 = !DILocation(line: 212, column: 4, scope: !4931)
!4939 = !DILocation(line: 214, column: 23, scope: !4931)
!4940 = !DILocation(line: 214, column: 33, scope: !4931)
!4941 = !DILocation(line: 214, column: 39, scope: !4931)
!4942 = !DILocation(line: 214, column: 4, scope: !4931)
!4943 = !DILocation(line: 215, column: 7, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 215, column: 7)
!4945 = !DILocation(line: 215, column: 7, scope: !4910)
!4946 = !DILocation(line: 216, column: 4, scope: !4944)
!4947 = !DILocation(line: 218, column: 27, scope: !4910)
!4948 = !DILocation(line: 218, column: 37, scope: !4910)
!4949 = !DILocation(line: 218, column: 42, scope: !4910)
!4950 = !DILocation(line: 218, column: 48, scope: !4910)
!4951 = !DILocation(line: 218, column: 9, scope: !4910)
!4952 = !DILocation(line: 218, column: 7, scope: !4910)
!4953 = !DILocation(line: 219, column: 7, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4910, file: !3, line: 219, column: 7)
!4955 = !DILocation(line: 219, column: 7, scope: !4910)
!4956 = !DILocation(line: 220, column: 4, scope: !4957)
!4957 = distinct !DILexicalBlock(scope: !4958, file: !3, line: 220, column: 4)
!4958 = distinct !DILexicalBlock(scope: !4954, file: !3, line: 219, column: 12)
!4959 = !DILocation(line: 220, column: 4, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4957, file: !3, line: 220, column: 4)
!4961 = !DILocation(line: 221, column: 4, scope: !4958)
!4962 = !DILocation(line: 223, column: 2, scope: !4910)
!4963 = !DILocation(line: 225, column: 6, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 225, column: 6)
!4965 = !DILocation(line: 225, column: 6, scope: !4817)
!4966 = !DILocation(line: 226, column: 13, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 225, column: 13)
!4968 = !DILocation(line: 226, column: 3, scope: !4967)
!4969 = !DILocation(line: 226, column: 11, scope: !4967)
!4970 = !DILocation(line: 227, column: 3, scope: !4967)
!4971 = !DILocation(line: 227, column: 11, scope: !4967)
!4972 = !DILocation(line: 228, column: 27, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4967, file: !3, line: 228, column: 7)
!4974 = !DILocation(line: 228, column: 37, scope: !4973)
!4975 = !DILocation(line: 228, column: 42, scope: !4973)
!4976 = !DILocation(line: 228, column: 61, scope: !4973)
!4977 = !DILocation(line: 228, column: 7, scope: !4973)
!4978 = !DILocation(line: 228, column: 7, scope: !4967)
!4979 = !DILocation(line: 229, column: 4, scope: !4980)
!4980 = distinct !DILexicalBlock(scope: !4973, file: !3, line: 229, column: 4)
!4981 = !DILocation(line: 229, column: 4, scope: !4982)
!4982 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 229, column: 4)
!4983 = !DILocation(line: 229, column: 4, scope: !4973)
!4984 = !DILocation(line: 231, column: 9, scope: !4967)
!4985 = !DILocation(line: 231, column: 3, scope: !4967)
!4986 = !DILocation(line: 232, column: 2, scope: !4967)
!4987 = !DILocation(line: 234, column: 2, scope: !4817)
!4988 = !DILocation(line: 236, column: 1, scope: !4817)
!4989 = !DILocation(line: 238, column: 6, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 238, column: 6)
!4991 = !DILocation(line: 238, column: 12, scope: !4990)
!4992 = !DILocation(line: 238, column: 6, scope: !4817)
!4993 = !DILocation(line: 239, column: 3, scope: !4990)
!4994 = !DILocation(line: 239, column: 9, scope: !4990)
!4995 = !DILocation(line: 239, column: 20, scope: !4990)
!4996 = !DILocation(line: 240, column: 1, scope: !4817)
!4997 = !DILocation(line: 242, column: 13, scope: !4817)
!4998 = !DILocation(line: 242, column: 23, scope: !4817)
!4999 = !DILocation(line: 242, column: 32, scope: !4817)
!5000 = !DILocation(line: 242, column: 2, scope: !4817)
!5001 = !DILocation(line: 243, column: 16, scope: !4817)
!5002 = !DILocation(line: 243, column: 26, scope: !4817)
!5003 = !DILocation(line: 243, column: 2, scope: !4817)
!5004 = !DILocation(line: 244, column: 15, scope: !4817)
!5005 = !DILocation(line: 244, column: 25, scope: !4817)
!5006 = !DILocation(line: 244, column: 34, scope: !4817)
!5007 = !DILocation(line: 244, column: 2, scope: !4817)
!5008 = !DILocation(line: 245, column: 2, scope: !4817)
!5009 = !DILocation(line: 246, column: 2, scope: !4817)
!5010 = !DILocation(line: 246, column: 12, scope: !4817)
!5011 = !DILocation(line: 246, column: 20, scope: !4817)
!5012 = !DILocation(line: 247, column: 2, scope: !4817)
!5013 = !DILocation(line: 247, column: 12, scope: !4817)
!5014 = !DILocation(line: 247, column: 25, scope: !4817)
!5015 = !DILocation(line: 248, column: 21, scope: !4817)
!5016 = !DILocation(line: 248, column: 2, scope: !4817)
!5017 = !DILocation(line: 249, column: 8, scope: !4817)
!5018 = !DILocation(line: 249, column: 2, scope: !4817)
!5019 = !DILocation(line: 251, column: 9, scope: !4817)
!5020 = !DILocation(line: 251, column: 2, scope: !4817)
!5021 = !DILocation(line: 252, column: 1, scope: !4817)
!5022 = !DISubprogram(name: "up_write", scope: !1275, file: !1275, line: 203, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5023 = !DISubprogram(name: "up_read", scope: !1275, file: !1275, line: 198, type: !4796, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5024 = !DISubprogram(name: "mutex_unlock", scope: !613, file: !613, line: 246, type: !4765, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5025 = distinct !DISubprogram(name: "led_trigger_read", scope: !3, file: !3, line: 125, type: !3950, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5026)
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5033, !5034, !5036, !5037, !5038}
!5027 = !DILocalVariable(name: "filp", arg: 1, scope: !5025, file: !3, line: 125, type: !1704)
!5028 = !DILocalVariable(name: "kobj", arg: 2, scope: !5025, file: !3, line: 125, type: !193)
!5029 = !DILocalVariable(name: "attr", arg: 3, scope: !5025, file: !3, line: 126, type: !336)
!5030 = !DILocalVariable(name: "buf", arg: 4, scope: !5025, file: !3, line: 126, type: !270)
!5031 = !DILocalVariable(name: "pos", arg: 5, scope: !5025, file: !3, line: 127, type: !512)
!5032 = !DILocalVariable(name: "count", arg: 6, scope: !5025, file: !3, line: 127, type: !317)
!5033 = !DILocalVariable(name: "dev", scope: !5025, file: !3, line: 129, type: !175)
!5034 = !DILocalVariable(name: "__mptr", scope: !5035, file: !3, line: 129, type: !342)
!5035 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 129, column: 23)
!5036 = !DILocalVariable(name: "led_cdev", scope: !5025, file: !3, line: 130, type: !4465)
!5037 = !DILocalVariable(name: "data", scope: !5025, file: !3, line: 131, type: !342)
!5038 = !DILocalVariable(name: "len", scope: !5025, file: !3, line: 132, type: !109)
!5039 = !DILocation(line: 125, column: 39, scope: !5025)
!5040 = !DILocation(line: 125, column: 61, scope: !5025)
!5041 = !DILocation(line: 126, column: 26, scope: !5025)
!5042 = !DILocation(line: 126, column: 38, scope: !5025)
!5043 = !DILocation(line: 127, column: 11, scope: !5025)
!5044 = !DILocation(line: 127, column: 23, scope: !5025)
!5045 = !DILocation(line: 129, column: 2, scope: !5025)
!5046 = !DILocation(line: 129, column: 17, scope: !5025)
!5047 = !DILocation(line: 129, column: 23, scope: !5035)
!5048 = !DILocation(line: 129, column: 23, scope: !5025)
!5049 = !DILocation(line: 130, column: 2, scope: !5025)
!5050 = !DILocation(line: 130, column: 23, scope: !5025)
!5051 = !DILocation(line: 130, column: 50, scope: !5025)
!5052 = !DILocation(line: 130, column: 34, scope: !5025)
!5053 = !DILocation(line: 131, column: 2, scope: !5025)
!5054 = !DILocation(line: 131, column: 8, scope: !5025)
!5055 = !DILocation(line: 132, column: 2, scope: !5025)
!5056 = !DILocation(line: 132, column: 6, scope: !5025)
!5057 = !DILocation(line: 134, column: 2, scope: !5025)
!5058 = !DILocation(line: 135, column: 13, scope: !5025)
!5059 = !DILocation(line: 135, column: 23, scope: !5025)
!5060 = !DILocation(line: 135, column: 2, scope: !5025)
!5061 = !DILocation(line: 137, column: 36, scope: !5025)
!5062 = !DILocation(line: 137, column: 8, scope: !5025)
!5063 = !DILocation(line: 137, column: 6, scope: !5025)
!5064 = !DILocation(line: 138, column: 18, scope: !5025)
!5065 = !DILocation(line: 138, column: 22, scope: !5025)
!5066 = !DILocation(line: 138, column: 9, scope: !5025)
!5067 = !DILocation(line: 138, column: 7, scope: !5025)
!5068 = !DILocation(line: 139, column: 7, scope: !5069)
!5069 = distinct !DILexicalBlock(scope: !5025, file: !3, line: 139, column: 6)
!5070 = !DILocation(line: 139, column: 6, scope: !5025)
!5071 = !DILocation(line: 140, column: 12, scope: !5072)
!5072 = distinct !DILexicalBlock(scope: !5069, file: !3, line: 139, column: 13)
!5073 = !DILocation(line: 140, column: 22, scope: !5072)
!5074 = !DILocation(line: 140, column: 3, scope: !5072)
!5075 = !DILocation(line: 141, column: 3, scope: !5072)
!5076 = !DILocation(line: 142, column: 3, scope: !5072)
!5077 = !DILocation(line: 144, column: 27, scope: !5025)
!5078 = !DILocation(line: 144, column: 33, scope: !5025)
!5079 = !DILocation(line: 144, column: 37, scope: !5025)
!5080 = !DILocation(line: 144, column: 42, scope: !5025)
!5081 = !DILocation(line: 144, column: 8, scope: !5025)
!5082 = !DILocation(line: 144, column: 6, scope: !5025)
!5083 = !DILocation(line: 146, column: 11, scope: !5025)
!5084 = !DILocation(line: 146, column: 21, scope: !5025)
!5085 = !DILocation(line: 146, column: 2, scope: !5025)
!5086 = !DILocation(line: 147, column: 2, scope: !5025)
!5087 = !DILocation(line: 149, column: 32, scope: !5025)
!5088 = !DILocation(line: 149, column: 37, scope: !5025)
!5089 = !DILocation(line: 149, column: 50, scope: !5025)
!5090 = !DILocation(line: 149, column: 56, scope: !5025)
!5091 = !DILocation(line: 149, column: 8, scope: !5025)
!5092 = !DILocation(line: 149, column: 6, scope: !5025)
!5093 = !DILocation(line: 151, column: 9, scope: !5025)
!5094 = !DILocation(line: 151, column: 2, scope: !5025)
!5095 = !DILocation(line: 153, column: 9, scope: !5025)
!5096 = !DILocation(line: 153, column: 2, scope: !5025)
!5097 = !DILocation(line: 154, column: 1, scope: !5025)
!5098 = distinct !DISubprogram(name: "led_trigger_format", scope: !3, file: !3, line: 94, type: !5099, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5101)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!109, !270, !317, !4465}
!5101 = !{!5102, !5103, !5104, !5105, !5106, !5107, !5110, !5113}
!5102 = !DILocalVariable(name: "buf", arg: 1, scope: !5098, file: !3, line: 94, type: !270)
!5103 = !DILocalVariable(name: "size", arg: 2, scope: !5098, file: !3, line: 94, type: !317)
!5104 = !DILocalVariable(name: "led_cdev", arg: 3, scope: !5098, file: !3, line: 95, type: !4465)
!5105 = !DILocalVariable(name: "trig", scope: !5098, file: !3, line: 97, type: !4457)
!5106 = !DILocalVariable(name: "len", scope: !5098, file: !3, line: 98, type: !109)
!5107 = !DILocalVariable(name: "__mptr", scope: !5108, file: !3, line: 101, type: !342)
!5108 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 101, column: 2)
!5109 = distinct !DILexicalBlock(scope: !5098, file: !3, line: 101, column: 2)
!5110 = !DILocalVariable(name: "hit", scope: !5111, file: !3, line: 102, type: !692)
!5111 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 101, column: 54)
!5112 = distinct !DILexicalBlock(scope: !5109, file: !3, line: 101, column: 2)
!5113 = !DILocalVariable(name: "__mptr", scope: !5114, file: !3, line: 101, type: !342)
!5114 = distinct !DILexicalBlock(scope: !5112, file: !3, line: 101, column: 2)
!5115 = !DILocation(line: 94, column: 37, scope: !5098)
!5116 = !DILocation(line: 94, column: 49, scope: !5098)
!5117 = !DILocation(line: 95, column: 31, scope: !5098)
!5118 = !DILocation(line: 97, column: 2, scope: !5098)
!5119 = !DILocation(line: 97, column: 22, scope: !5098)
!5120 = !DILocation(line: 98, column: 2, scope: !5098)
!5121 = !DILocation(line: 98, column: 6, scope: !5098)
!5122 = !DILocation(line: 98, column: 33, scope: !5098)
!5123 = !DILocation(line: 98, column: 38, scope: !5098)
!5124 = !DILocation(line: 99, column: 12, scope: !5098)
!5125 = !DILocation(line: 99, column: 22, scope: !5098)
!5126 = !DILocation(line: 98, column: 12, scope: !5098)
!5127 = !DILocation(line: 101, column: 2, scope: !5108)
!5128 = !DILocation(line: 101, column: 2, scope: !5109)
!5129 = !DILocation(line: 101, column: 2, scope: !5112)
!5130 = !DILocation(line: 102, column: 3, scope: !5111)
!5131 = !DILocation(line: 102, column: 8, scope: !5111)
!5132 = !DILocation(line: 104, column: 25, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5111, file: !3, line: 104, column: 7)
!5134 = !DILocation(line: 104, column: 35, scope: !5133)
!5135 = !DILocation(line: 104, column: 8, scope: !5133)
!5136 = !DILocation(line: 104, column: 7, scope: !5111)
!5137 = !DILocation(line: 105, column: 4, scope: !5133)
!5138 = !DILocation(line: 107, column: 9, scope: !5111)
!5139 = !DILocation(line: 107, column: 19, scope: !5111)
!5140 = !DILocation(line: 107, column: 27, scope: !5111)
!5141 = !DILocation(line: 107, column: 38, scope: !5111)
!5142 = !DILocation(line: 107, column: 48, scope: !5111)
!5143 = !DILocation(line: 107, column: 57, scope: !5111)
!5144 = !DILocation(line: 107, column: 63, scope: !5111)
!5145 = !DILocation(line: 107, column: 69, scope: !5111)
!5146 = !DILocation(line: 107, column: 31, scope: !5111)
!5147 = !DILocation(line: 107, column: 30, scope: !5111)
!5148 = !DILocation(line: 0, scope: !5111)
!5149 = !DILocation(line: 107, column: 7, scope: !5111)
!5150 = !DILocation(line: 109, column: 31, scope: !5111)
!5151 = !DILocation(line: 109, column: 37, scope: !5111)
!5152 = !DILocation(line: 109, column: 35, scope: !5111)
!5153 = !DILocation(line: 109, column: 42, scope: !5111)
!5154 = !DILocation(line: 109, column: 49, scope: !5111)
!5155 = !DILocation(line: 109, column: 47, scope: !5111)
!5156 = !DILocation(line: 110, column: 21, scope: !5111)
!5157 = !{i8 0, i8 2}
!5158 = !DILocation(line: 111, column: 10, scope: !5111)
!5159 = !DILocation(line: 111, column: 16, scope: !5111)
!5160 = !DILocation(line: 111, column: 22, scope: !5111)
!5161 = !DILocation(line: 109, column: 10, scope: !5111)
!5162 = !DILocation(line: 109, column: 7, scope: !5111)
!5163 = !DILocation(line: 112, column: 2, scope: !5112)
!5164 = !DILocation(line: 112, column: 2, scope: !5111)
!5165 = !DILocation(line: 101, column: 2, scope: !5114)
!5166 = distinct !{!5166, !5128, !5167, !4744, !4745}
!5167 = !DILocation(line: 112, column: 2, scope: !5109)
!5168 = !DILocation(line: 114, column: 30, scope: !5098)
!5169 = !DILocation(line: 114, column: 36, scope: !5098)
!5170 = !DILocation(line: 114, column: 34, scope: !5098)
!5171 = !DILocation(line: 114, column: 41, scope: !5098)
!5172 = !DILocation(line: 114, column: 48, scope: !5098)
!5173 = !DILocation(line: 114, column: 46, scope: !5098)
!5174 = !DILocation(line: 114, column: 9, scope: !5098)
!5175 = !DILocation(line: 114, column: 6, scope: !5098)
!5176 = !DILocation(line: 116, column: 9, scope: !5098)
!5177 = !DILocation(line: 117, column: 1, scope: !5098)
!5178 = !DILocation(line: 116, column: 2, scope: !5098)
!5179 = distinct !DISubprogram(name: "kvmalloc", scope: !165, file: !165, line: 736, type: !5180, scopeLine: 737, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5182)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!342, !317, !1126}
!5182 = !{!5183, !5184}
!5183 = !DILocalVariable(name: "size", arg: 1, scope: !5179, file: !165, line: 736, type: !317)
!5184 = !DILocalVariable(name: "flags", arg: 2, scope: !5179, file: !165, line: 736, type: !1126)
!5185 = !DILocation(line: 736, column: 53, scope: !5179)
!5186 = !DILocation(line: 736, column: 65, scope: !5179)
!5187 = !DILocation(line: 738, column: 23, scope: !5179)
!5188 = !DILocation(line: 738, column: 29, scope: !5179)
!5189 = !DILocation(line: 738, column: 9, scope: !5179)
!5190 = !DILocation(line: 738, column: 2, scope: !5179)
!5191 = !DISubprogram(name: "memory_read_from_buffer", scope: !4779, file: !4779, line: 245, type: !5192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5192 = !DISubroutineType(types: !5193)
!5193 = !{!302, !342, !317, !1985, !2516, !317}
!5194 = !DISubprogram(name: "kvfree", scope: !165, file: !165, line: 766, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !2516}
!5197 = !DISubprogram(name: "kasprintf", scope: !5198, file: !5198, line: 16, type: !5199, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5198 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!270, !1126, !182, null}
!5201 = distinct !DISubprogram(name: "spin_lock", scope: !5202, file: !5202, line: 349, type: !5203, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5205)
!5202 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5203 = !DISubroutineType(types: !5204)
!5204 = !{null, !2296}
!5205 = !{!5206}
!5206 = !DILocalVariable(name: "lock", arg: 1, scope: !5201, file: !5202, line: 349, type: !2296)
!5207 = !DILocation(line: 349, column: 51, scope: !5201)
!5208 = !DILocation(line: 351, column: 2, scope: !5201)
!5209 = !DILocation(line: 352, column: 1, scope: !5201)
!5210 = distinct !DISubprogram(name: "list_del_rcu", scope: !5211, file: !5211, line: 155, type: !5212, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5214)
!5211 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!5212 = !DISubroutineType(types: !5213)
!5213 = !{null, !190}
!5214 = !{!5215}
!5215 = !DILocalVariable(name: "entry", arg: 1, scope: !5210, file: !5211, line: 155, type: !190)
!5216 = !DILocation(line: 155, column: 51, scope: !5210)
!5217 = !DILocation(line: 157, column: 19, scope: !5210)
!5218 = !DILocation(line: 157, column: 2, scope: !5210)
!5219 = !DILocation(line: 158, column: 2, scope: !5210)
!5220 = !DILocation(line: 158, column: 9, scope: !5210)
!5221 = !DILocation(line: 158, column: 14, scope: !5210)
!5222 = !DILocation(line: 159, column: 1, scope: !5210)
!5223 = distinct !DISubprogram(name: "spin_unlock", scope: !5202, file: !5202, line: 389, type: !5203, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5224)
!5224 = !{!5225}
!5225 = !DILocalVariable(name: "lock", arg: 1, scope: !5223, file: !5202, line: 389, type: !2296)
!5226 = !DILocation(line: 389, column: 53, scope: !5223)
!5227 = !DILocation(line: 391, column: 2, scope: !5223)
!5228 = !DILocation(line: 392, column: 1, scope: !5223)
!5229 = !DISubprogram(name: "synchronize_rcu", scope: !5230, file: !5230, line: 45, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5230 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!5231 = !DISubprogram(name: "cancel_work_sync", scope: !873, file: !873, line: 515, type: !5232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5232 = !DISubroutineType(types: !5233)
!5233 = !{!692, !882}
!5234 = !DISubprogram(name: "led_stop_software_blink", scope: !5235, file: !5235, line: 21, type: !4511, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5235 = !DIFile(filename: "drivers/leds/leds.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8d3b3fbc2bcfa7e8304de2e053dc4308")
!5236 = !DISubprogram(name: "device_remove_groups", scope: !94, file: !94, line: 1191, type: !5237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5237 = !DISubroutineType(types: !5238)
!5238 = !{null, !175, !322}
!5239 = !DISubprogram(name: "led_set_brightness", scope: !142, file: !142, line: 380, type: !5240, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5240 = !DISubroutineType(types: !5241)
!5241 = !{null, !4465, !7}
!5242 = distinct !DISubprogram(name: "list_add_tail_rcu", scope: !5211, file: !5211, line: 125, type: !5243, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5245)
!5243 = !DISubroutineType(types: !5244)
!5244 = !{null, !190, !190}
!5245 = !{!5246, !5247}
!5246 = !DILocalVariable(name: "new", arg: 1, scope: !5242, file: !5211, line: 125, type: !190)
!5247 = !DILocalVariable(name: "head", arg: 2, scope: !5242, file: !5211, line: 126, type: !190)
!5248 = !DILocation(line: 125, column: 56, scope: !5242)
!5249 = !DILocation(line: 126, column: 24, scope: !5242)
!5250 = !DILocation(line: 128, column: 17, scope: !5242)
!5251 = !DILocation(line: 128, column: 22, scope: !5242)
!5252 = !DILocation(line: 128, column: 28, scope: !5242)
!5253 = !DILocation(line: 128, column: 34, scope: !5242)
!5254 = !DILocation(line: 128, column: 2, scope: !5242)
!5255 = !DILocation(line: 129, column: 1, scope: !5242)
!5256 = !DISubprogram(name: "flush_work", scope: !873, file: !873, line: 513, type: !5232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5257 = !DISubprogram(name: "device_add_groups", scope: !94, file: !94, line: 1189, type: !5258, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5258 = !DISubroutineType(types: !5259)
!5259 = !{!109, !175, !322}
!5260 = !DISubprogram(name: "_dev_err", scope: !5261, file: !5261, line: 50, type: !5262, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5261 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!5262 = !DISubroutineType(types: !5263)
!5263 = !{null, !4128, !182, null}
!5264 = !DISubprogram(name: "kobject_uevent_env", scope: !154, file: !154, line: 215, type: !5265, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!109, !193, !153, !5267}
!5267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!5268 = !DISubprogram(name: "kfree", scope: !165, file: !165, line: 227, type: !5195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5269 = distinct !DISubprogram(name: "led_trigger_set_default", scope: !3, file: !3, line: 263, type: !4511, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5270)
!5270 = !{!5271, !5272, !5273, !5276}
!5271 = !DILocalVariable(name: "led_cdev", arg: 1, scope: !5269, file: !3, line: 263, type: !4465)
!5272 = !DILocalVariable(name: "trig", scope: !5269, file: !3, line: 265, type: !4457)
!5273 = !DILocalVariable(name: "__mptr", scope: !5274, file: !3, line: 272, type: !342)
!5274 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 272, column: 2)
!5275 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 272, column: 2)
!5276 = !DILocalVariable(name: "__mptr", scope: !5277, file: !3, line: 272, type: !342)
!5277 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 272, column: 2)
!5278 = distinct !DILexicalBlock(scope: !5275, file: !3, line: 272, column: 2)
!5279 = !DILocation(line: 263, column: 51, scope: !5269)
!5280 = !DILocation(line: 265, column: 2, scope: !5269)
!5281 = !DILocation(line: 265, column: 22, scope: !5269)
!5282 = !DILocation(line: 267, column: 7, scope: !5283)
!5283 = distinct !DILexicalBlock(scope: !5269, file: !3, line: 267, column: 6)
!5284 = !DILocation(line: 267, column: 17, scope: !5283)
!5285 = !DILocation(line: 267, column: 6, scope: !5269)
!5286 = !DILocation(line: 268, column: 3, scope: !5283)
!5287 = !DILocation(line: 270, column: 2, scope: !5269)
!5288 = !DILocation(line: 271, column: 14, scope: !5269)
!5289 = !DILocation(line: 271, column: 24, scope: !5269)
!5290 = !DILocation(line: 271, column: 2, scope: !5269)
!5291 = !DILocation(line: 272, column: 2, scope: !5274)
!5292 = !DILocation(line: 272, column: 2, scope: !5275)
!5293 = !DILocation(line: 272, column: 2, scope: !5278)
!5294 = !DILocation(line: 273, column: 15, scope: !5295)
!5295 = distinct !DILexicalBlock(scope: !5296, file: !3, line: 273, column: 7)
!5296 = distinct !DILexicalBlock(scope: !5278, file: !3, line: 272, column: 54)
!5297 = !DILocation(line: 273, column: 25, scope: !5295)
!5298 = !DILocation(line: 273, column: 42, scope: !5295)
!5299 = !DILocation(line: 273, column: 48, scope: !5295)
!5300 = !DILocation(line: 273, column: 8, scope: !5295)
!5301 = !DILocation(line: 273, column: 54, scope: !5295)
!5302 = !DILocation(line: 274, column: 24, scope: !5295)
!5303 = !DILocation(line: 274, column: 34, scope: !5295)
!5304 = !DILocation(line: 274, column: 7, scope: !5295)
!5305 = !DILocation(line: 273, column: 7, scope: !5296)
!5306 = !DILocation(line: 275, column: 4, scope: !5307)
!5307 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 274, column: 41)
!5308 = !DILocation(line: 275, column: 14, scope: !5307)
!5309 = !DILocation(line: 275, column: 20, scope: !5307)
!5310 = !DILocation(line: 276, column: 20, scope: !5307)
!5311 = !DILocation(line: 276, column: 30, scope: !5307)
!5312 = !DILocation(line: 276, column: 4, scope: !5307)
!5313 = !DILocation(line: 277, column: 4, scope: !5307)
!5314 = !DILocation(line: 279, column: 2, scope: !5296)
!5315 = !DILocation(line: 272, column: 2, scope: !5277)
!5316 = distinct !{!5316, !5292, !5317, !4744, !4745}
!5317 = !DILocation(line: 279, column: 2, scope: !5275)
!5318 = !DILocation(line: 280, column: 12, scope: !5269)
!5319 = !DILocation(line: 280, column: 22, scope: !5269)
!5320 = !DILocation(line: 280, column: 2, scope: !5269)
!5321 = !DILocation(line: 281, column: 2, scope: !5269)
!5322 = !DILocation(line: 282, column: 1, scope: !5269)
!5323 = !DISubprogram(name: "strcmp", scope: !4779, file: !4779, line: 88, type: !5324, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5324 = !DISubroutineType(types: !5325)
!5325 = !{!109, !182, !182}
!5326 = distinct !DISubprogram(name: "led_trigger_register", scope: !3, file: !3, line: 287, type: !5327, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5329)
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!109, !4457}
!5329 = !{!5330, !5331, !5332, !5333, !5336, !5339, !5342}
!5330 = !DILocalVariable(name: "trig", arg: 1, scope: !5326, file: !3, line: 287, type: !4457)
!5331 = !DILocalVariable(name: "led_cdev", scope: !5326, file: !3, line: 289, type: !4465)
!5332 = !DILocalVariable(name: "_trig", scope: !5326, file: !3, line: 290, type: !4457)
!5333 = !DILocalVariable(name: "__mptr", scope: !5334, file: !3, line: 297, type: !342)
!5334 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 297, column: 2)
!5335 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 297, column: 2)
!5336 = !DILocalVariable(name: "__mptr", scope: !5337, file: !3, line: 297, type: !342)
!5337 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 297, column: 2)
!5338 = distinct !DILexicalBlock(scope: !5335, file: !3, line: 297, column: 2)
!5339 = !DILocalVariable(name: "__mptr", scope: !5340, file: !3, line: 311, type: !342)
!5340 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 311, column: 2)
!5341 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 311, column: 2)
!5342 = !DILocalVariable(name: "__mptr", scope: !5343, file: !3, line: 311, type: !342)
!5343 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 311, column: 2)
!5344 = distinct !DILexicalBlock(scope: !5341, file: !3, line: 311, column: 2)
!5345 = !DILocation(line: 287, column: 46, scope: !5326)
!5346 = !DILocation(line: 289, column: 2, scope: !5326)
!5347 = !DILocation(line: 289, column: 23, scope: !5326)
!5348 = !DILocation(line: 290, column: 2, scope: !5326)
!5349 = !DILocation(line: 290, column: 22, scope: !5326)
!5350 = !DILocation(line: 292, column: 2, scope: !5326)
!5351 = !DILocation(line: 292, column: 2, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5326, file: !3, line: 292, column: 2)
!5353 = !DILocation(line: 293, column: 18, scope: !5326)
!5354 = !DILocation(line: 293, column: 24, scope: !5326)
!5355 = !DILocation(line: 293, column: 2, scope: !5326)
!5356 = !DILocation(line: 295, column: 2, scope: !5326)
!5357 = !DILocation(line: 297, column: 2, scope: !5334)
!5358 = !DILocation(line: 297, column: 2, scope: !5335)
!5359 = !DILocation(line: 297, column: 2, scope: !5338)
!5360 = !DILocation(line: 298, column: 15, scope: !5361)
!5361 = distinct !DILexicalBlock(scope: !5362, file: !3, line: 298, column: 7)
!5362 = distinct !DILexicalBlock(scope: !5338, file: !3, line: 297, column: 55)
!5363 = !DILocation(line: 298, column: 22, scope: !5361)
!5364 = !DILocation(line: 298, column: 28, scope: !5361)
!5365 = !DILocation(line: 298, column: 34, scope: !5361)
!5366 = !DILocation(line: 298, column: 8, scope: !5361)
!5367 = !DILocation(line: 298, column: 40, scope: !5361)
!5368 = !DILocation(line: 299, column: 8, scope: !5361)
!5369 = !DILocation(line: 299, column: 14, scope: !5361)
!5370 = !DILocation(line: 299, column: 30, scope: !5361)
!5371 = !DILocation(line: 299, column: 37, scope: !5361)
!5372 = !DILocation(line: 299, column: 27, scope: !5361)
!5373 = !DILocation(line: 299, column: 50, scope: !5361)
!5374 = !DILocation(line: 300, column: 9, scope: !5361)
!5375 = !DILocation(line: 300, column: 15, scope: !5361)
!5376 = !DILocation(line: 300, column: 28, scope: !5361)
!5377 = !DILocation(line: 300, column: 32, scope: !5361)
!5378 = !DILocation(line: 300, column: 39, scope: !5361)
!5379 = !DILocation(line: 298, column: 7, scope: !5362)
!5380 = !DILocation(line: 301, column: 4, scope: !5381)
!5381 = distinct !DILexicalBlock(scope: !5361, file: !3, line: 300, column: 54)
!5382 = !DILocation(line: 302, column: 4, scope: !5381)
!5383 = !DILocation(line: 304, column: 2, scope: !5362)
!5384 = !DILocation(line: 297, column: 2, scope: !5337)
!5385 = distinct !{!5385, !5358, !5386, !4744, !4745}
!5386 = !DILocation(line: 304, column: 2, scope: !5335)
!5387 = !DILocation(line: 306, column: 17, scope: !5326)
!5388 = !DILocation(line: 306, column: 23, scope: !5326)
!5389 = !DILocation(line: 306, column: 2, scope: !5326)
!5390 = !DILocation(line: 307, column: 2, scope: !5326)
!5391 = !DILocation(line: 310, column: 2, scope: !5326)
!5392 = !DILocation(line: 311, column: 2, scope: !5340)
!5393 = !DILocation(line: 311, column: 2, scope: !5341)
!5394 = !DILocation(line: 311, column: 2, scope: !5344)
!5395 = !DILocation(line: 312, column: 15, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5344, file: !3, line: 311, column: 50)
!5397 = !DILocation(line: 312, column: 25, scope: !5396)
!5398 = !DILocation(line: 312, column: 3, scope: !5396)
!5399 = !DILocation(line: 313, column: 8, scope: !5400)
!5400 = distinct !DILexicalBlock(scope: !5396, file: !3, line: 313, column: 7)
!5401 = !DILocation(line: 313, column: 18, scope: !5400)
!5402 = !DILocation(line: 313, column: 26, scope: !5400)
!5403 = !DILocation(line: 313, column: 29, scope: !5400)
!5404 = !DILocation(line: 313, column: 39, scope: !5400)
!5405 = !DILocation(line: 313, column: 55, scope: !5400)
!5406 = !DILocation(line: 314, column: 15, scope: !5400)
!5407 = !DILocation(line: 314, column: 25, scope: !5400)
!5408 = !DILocation(line: 314, column: 42, scope: !5400)
!5409 = !DILocation(line: 314, column: 48, scope: !5400)
!5410 = !DILocation(line: 314, column: 8, scope: !5400)
!5411 = !DILocation(line: 314, column: 54, scope: !5400)
!5412 = !DILocation(line: 315, column: 24, scope: !5400)
!5413 = !DILocation(line: 315, column: 34, scope: !5400)
!5414 = !DILocation(line: 315, column: 7, scope: !5400)
!5415 = !DILocation(line: 313, column: 7, scope: !5396)
!5416 = !DILocation(line: 316, column: 4, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5400, file: !3, line: 315, column: 41)
!5418 = !DILocation(line: 316, column: 14, scope: !5417)
!5419 = !DILocation(line: 316, column: 20, scope: !5417)
!5420 = !DILocation(line: 317, column: 20, scope: !5417)
!5421 = !DILocation(line: 317, column: 30, scope: !5417)
!5422 = !DILocation(line: 317, column: 4, scope: !5417)
!5423 = !DILocation(line: 318, column: 3, scope: !5417)
!5424 = !DILocation(line: 319, column: 13, scope: !5396)
!5425 = !DILocation(line: 319, column: 23, scope: !5396)
!5426 = !DILocation(line: 319, column: 3, scope: !5396)
!5427 = !DILocation(line: 320, column: 2, scope: !5396)
!5428 = !DILocation(line: 311, column: 2, scope: !5343)
!5429 = distinct !{!5429, !5393, !5430, !4744, !4745}
!5430 = !DILocation(line: 320, column: 2, scope: !5341)
!5431 = !DILocation(line: 321, column: 2, scope: !5326)
!5432 = !DILocation(line: 323, column: 2, scope: !5326)
!5433 = !DILocation(line: 324, column: 1, scope: !5326)
!5434 = distinct !DISubprogram(name: "spinlock_check", scope: !5202, file: !5202, line: 324, type: !5435, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5438)
!5435 = !DISubroutineType(types: !5436)
!5436 = !{!5437, !2296}
!5437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!5438 = !{!5439}
!5439 = !DILocalVariable(name: "lock", arg: 1, scope: !5434, file: !5202, line: 324, type: !2296)
!5440 = !DILocation(line: 324, column: 67, scope: !5434)
!5441 = !DILocation(line: 326, column: 10, scope: !5434)
!5442 = !DILocation(line: 326, column: 16, scope: !5434)
!5443 = !DILocation(line: 326, column: 2, scope: !5434)
!5444 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5445, file: !5445, line: 35, type: !5212, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5446)
!5445 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5446 = !{!5447}
!5447 = !DILocalVariable(name: "list", arg: 1, scope: !5444, file: !5445, line: 35, type: !190)
!5448 = !DILocation(line: 35, column: 53, scope: !5444)
!5449 = !DILocation(line: 37, column: 2, scope: !5444)
!5450 = !DILocation(line: 37, column: 2, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5444, file: !5445, line: 37, column: 2)
!5452 = !DILocation(line: 37, column: 2, scope: !5453)
!5453 = distinct !DILexicalBlock(scope: !5451, file: !5445, line: 37, column: 2)
!5454 = !DILocation(line: 37, column: 2, scope: !5455)
!5455 = distinct !DILexicalBlock(scope: !5451, file: !5445, line: 37, column: 2)
!5456 = !DILocation(line: 38, column: 2, scope: !5444)
!5457 = !DILocation(line: 38, column: 2, scope: !5458)
!5458 = distinct !DILexicalBlock(scope: !5444, file: !5445, line: 38, column: 2)
!5459 = !DILocation(line: 38, column: 2, scope: !5460)
!5460 = distinct !DILexicalBlock(scope: !5458, file: !5445, line: 38, column: 2)
!5461 = !DILocation(line: 38, column: 2, scope: !5462)
!5462 = distinct !DILexicalBlock(scope: !5458, file: !5445, line: 38, column: 2)
!5463 = !DILocation(line: 39, column: 1, scope: !5444)
!5464 = distinct !DISubprogram(name: "list_add_tail", scope: !5445, file: !5445, line: 181, type: !5243, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5465)
!5465 = !{!5466, !5467}
!5466 = !DILocalVariable(name: "new", arg: 1, scope: !5464, file: !5445, line: 181, type: !190)
!5467 = !DILocalVariable(name: "head", arg: 2, scope: !5464, file: !5445, line: 181, type: !190)
!5468 = !DILocation(line: 181, column: 52, scope: !5464)
!5469 = !DILocation(line: 181, column: 75, scope: !5464)
!5470 = !DILocation(line: 183, column: 13, scope: !5464)
!5471 = !DILocation(line: 183, column: 18, scope: !5464)
!5472 = !DILocation(line: 183, column: 24, scope: !5464)
!5473 = !DILocation(line: 183, column: 30, scope: !5464)
!5474 = !DILocation(line: 183, column: 2, scope: !5464)
!5475 = !DILocation(line: 184, column: 1, scope: !5464)
!5476 = distinct !DISubprogram(name: "led_trigger_unregister", scope: !3, file: !3, line: 327, type: !5477, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5479)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{null, !4457}
!5479 = !{!5480, !5481, !5482, !5485}
!5480 = !DILocalVariable(name: "trig", arg: 1, scope: !5476, file: !3, line: 327, type: !4457)
!5481 = !DILocalVariable(name: "led_cdev", scope: !5476, file: !3, line: 329, type: !4465)
!5482 = !DILocalVariable(name: "__mptr", scope: !5483, file: !3, line: 341, type: !342)
!5483 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 341, column: 2)
!5484 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 341, column: 2)
!5485 = !DILocalVariable(name: "__mptr", scope: !5486, file: !3, line: 341, type: !342)
!5486 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 341, column: 2)
!5487 = distinct !DILexicalBlock(scope: !5484, file: !3, line: 341, column: 2)
!5488 = !DILocation(line: 327, column: 49, scope: !5476)
!5489 = !DILocation(line: 329, column: 2, scope: !5476)
!5490 = !DILocation(line: 329, column: 23, scope: !5476)
!5491 = !DILocation(line: 331, column: 26, scope: !5492)
!5492 = distinct !DILexicalBlock(scope: !5476, file: !3, line: 331, column: 6)
!5493 = !DILocation(line: 331, column: 32, scope: !5492)
!5494 = !DILocation(line: 331, column: 6, scope: !5492)
!5495 = !DILocation(line: 331, column: 6, scope: !5476)
!5496 = !DILocation(line: 332, column: 3, scope: !5492)
!5497 = !DILocation(line: 335, column: 2, scope: !5476)
!5498 = !DILocation(line: 336, column: 17, scope: !5476)
!5499 = !DILocation(line: 336, column: 23, scope: !5476)
!5500 = !DILocation(line: 336, column: 2, scope: !5476)
!5501 = !DILocation(line: 337, column: 2, scope: !5476)
!5502 = !DILocation(line: 340, column: 2, scope: !5476)
!5503 = !DILocation(line: 341, column: 2, scope: !5483)
!5504 = !DILocation(line: 341, column: 2, scope: !5484)
!5505 = !DILocation(line: 341, column: 2, scope: !5487)
!5506 = !DILocation(line: 342, column: 15, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5487, file: !3, line: 341, column: 50)
!5508 = !DILocation(line: 342, column: 25, scope: !5507)
!5509 = !DILocation(line: 342, column: 3, scope: !5507)
!5510 = !DILocation(line: 343, column: 7, scope: !5511)
!5511 = distinct !DILexicalBlock(scope: !5507, file: !3, line: 343, column: 7)
!5512 = !DILocation(line: 343, column: 17, scope: !5511)
!5513 = !DILocation(line: 343, column: 28, scope: !5511)
!5514 = !DILocation(line: 343, column: 25, scope: !5511)
!5515 = !DILocation(line: 343, column: 7, scope: !5507)
!5516 = !DILocation(line: 344, column: 20, scope: !5511)
!5517 = !DILocation(line: 344, column: 4, scope: !5511)
!5518 = !DILocation(line: 345, column: 13, scope: !5507)
!5519 = !DILocation(line: 345, column: 23, scope: !5507)
!5520 = !DILocation(line: 345, column: 3, scope: !5507)
!5521 = !DILocation(line: 346, column: 2, scope: !5507)
!5522 = !DILocation(line: 341, column: 2, scope: !5486)
!5523 = distinct !{!5523, !5504, !5524, !4744, !4745}
!5524 = !DILocation(line: 346, column: 2, scope: !5484)
!5525 = !DILocation(line: 347, column: 2, scope: !5476)
!5526 = !DILocation(line: 348, column: 1, scope: !5476)
!5527 = distinct !DISubprogram(name: "list_empty_careful", scope: !5445, file: !5445, line: 407, type: !5528, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5532)
!5528 = !DISubroutineType(types: !5529)
!5529 = !{!109, !5530}
!5530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5531, size: 64)
!5531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!5532 = !{!5533, !5534, !5535}
!5533 = !DILocalVariable(name: "head", arg: 1, scope: !5527, file: !5445, line: 407, type: !5530)
!5534 = !DILocalVariable(name: "next", scope: !5527, file: !5445, line: 409, type: !190)
!5535 = !DILocalVariable(name: "___p1", scope: !5536, file: !5445, line: 409, type: !5537)
!5536 = distinct !DILexicalBlock(scope: !5527, file: !5445, line: 409, column: 27)
!5537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !190)
!5538 = !DILocation(line: 407, column: 62, scope: !5527)
!5539 = !DILocation(line: 409, column: 2, scope: !5527)
!5540 = !DILocation(line: 409, column: 20, scope: !5527)
!5541 = !DILocation(line: 409, column: 27, scope: !5536)
!5542 = !DILocation(line: 409, column: 27, scope: !5543)
!5543 = distinct !DILexicalBlock(scope: !5536, file: !5445, line: 409, column: 27)
!5544 = !DILocation(line: 409, column: 27, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5543, file: !5445, line: 409, column: 27)
!5546 = !DILocation(line: 409, column: 27, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5536, file: !5445, line: 409, column: 27)
!5548 = !{i64 2148118063}
!5549 = !DILocation(line: 409, column: 27, scope: !5527)
!5550 = !DILocation(line: 410, column: 22, scope: !5527)
!5551 = !DILocation(line: 410, column: 28, scope: !5527)
!5552 = !DILocation(line: 410, column: 9, scope: !5527)
!5553 = !DILocation(line: 410, column: 34, scope: !5527)
!5554 = !DILocation(line: 410, column: 38, scope: !5527)
!5555 = !DILocation(line: 410, column: 46, scope: !5556)
!5556 = distinct !DILexicalBlock(scope: !5527, file: !5445, line: 410, column: 46)
!5557 = !DILocation(line: 410, column: 46, scope: !5558)
!5558 = distinct !DILexicalBlock(scope: !5556, file: !5445, line: 410, column: 46)
!5559 = !DILocation(line: 410, column: 43, scope: !5527)
!5560 = !DILocation(line: 0, scope: !5527)
!5561 = !DILocation(line: 411, column: 1, scope: !5527)
!5562 = !DILocation(line: 410, column: 2, scope: !5527)
!5563 = distinct !DISubprogram(name: "list_del_init", scope: !5445, file: !5445, line: 285, type: !5212, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5564)
!5564 = !{!5565}
!5565 = !DILocalVariable(name: "entry", arg: 1, scope: !5563, file: !5445, line: 285, type: !190)
!5566 = !DILocation(line: 285, column: 52, scope: !5563)
!5567 = !DILocation(line: 287, column: 19, scope: !5563)
!5568 = !DILocation(line: 287, column: 2, scope: !5563)
!5569 = !DILocation(line: 288, column: 17, scope: !5563)
!5570 = !DILocation(line: 288, column: 2, scope: !5563)
!5571 = !DILocation(line: 289, column: 1, scope: !5563)
!5572 = distinct !DISubprogram(name: "devm_led_trigger_register", scope: !3, file: !3, line: 356, type: !5573, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5575)
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!109, !175, !4457}
!5575 = !{!5576, !5577, !5578, !5579}
!5576 = !DILocalVariable(name: "dev", arg: 1, scope: !5572, file: !3, line: 356, type: !175)
!5577 = !DILocalVariable(name: "trig", arg: 2, scope: !5572, file: !3, line: 357, type: !4457)
!5578 = !DILocalVariable(name: "dr", scope: !5572, file: !3, line: 359, type: !4555)
!5579 = !DILocalVariable(name: "rc", scope: !5572, file: !3, line: 360, type: !109)
!5580 = !DILocation(line: 356, column: 46, scope: !5572)
!5581 = !DILocation(line: 357, column: 30, scope: !5572)
!5582 = !DILocation(line: 359, column: 2, scope: !5572)
!5583 = !DILocation(line: 359, column: 23, scope: !5572)
!5584 = !DILocation(line: 360, column: 2, scope: !5572)
!5585 = !DILocation(line: 360, column: 6, scope: !5572)
!5586 = !DILocation(line: 362, column: 7, scope: !5572)
!5587 = !DILocation(line: 362, column: 5, scope: !5572)
!5588 = !DILocation(line: 364, column: 7, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 364, column: 6)
!5590 = !DILocation(line: 364, column: 6, scope: !5572)
!5591 = !DILocation(line: 365, column: 3, scope: !5589)
!5592 = !DILocation(line: 367, column: 8, scope: !5572)
!5593 = !DILocation(line: 367, column: 3, scope: !5572)
!5594 = !DILocation(line: 367, column: 6, scope: !5572)
!5595 = !DILocation(line: 369, column: 28, scope: !5572)
!5596 = !DILocation(line: 369, column: 7, scope: !5572)
!5597 = !DILocation(line: 369, column: 5, scope: !5572)
!5598 = !DILocation(line: 370, column: 6, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5572, file: !3, line: 370, column: 6)
!5600 = !DILocation(line: 370, column: 6, scope: !5572)
!5601 = !DILocation(line: 371, column: 15, scope: !5599)
!5602 = !DILocation(line: 371, column: 3, scope: !5599)
!5603 = !DILocation(line: 373, column: 14, scope: !5599)
!5604 = !DILocation(line: 373, column: 19, scope: !5599)
!5605 = !DILocation(line: 373, column: 3, scope: !5599)
!5606 = !DILocation(line: 375, column: 9, scope: !5572)
!5607 = !DILocation(line: 375, column: 2, scope: !5572)
!5608 = !DILocation(line: 376, column: 1, scope: !5572)
!5609 = !DISubprogram(name: "__devres_alloc_node", scope: !94, file: !94, line: 274, type: !5610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5610 = !DISubroutineType(types: !5611)
!5611 = !{!342, !5612, !317, !1126, !109, !182}
!5612 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !94, line: 271, baseType: !5613)
!5613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5614, size: 64)
!5614 = !DISubroutineType(types: !5615)
!5615 = !{null, !175, !342}
!5616 = distinct !DISubprogram(name: "devm_led_trigger_release", scope: !3, file: !3, line: 351, type: !5614, scopeLine: 352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5617)
!5617 = !{!5618, !5619}
!5618 = !DILocalVariable(name: "dev", arg: 1, scope: !5616, file: !3, line: 351, type: !175)
!5619 = !DILocalVariable(name: "res", arg: 2, scope: !5616, file: !3, line: 351, type: !342)
!5620 = !DILocation(line: 351, column: 53, scope: !5616)
!5621 = !DILocation(line: 351, column: 64, scope: !5616)
!5622 = !DILocation(line: 353, column: 49, scope: !5616)
!5623 = !DILocation(line: 353, column: 25, scope: !5616)
!5624 = !DILocation(line: 353, column: 2, scope: !5616)
!5625 = !DILocation(line: 354, column: 1, scope: !5616)
!5626 = !DISubprogram(name: "devres_free", scope: !94, file: !94, line: 285, type: !656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5627 = !DISubprogram(name: "devres_add", scope: !94, file: !94, line: 286, type: !5614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5628 = distinct !DISubprogram(name: "led_trigger_event", scope: !3, file: !3, line: 381, type: !5629, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5631)
!5629 = !DISubroutineType(types: !5630)
!5630 = !{null, !4457, !141}
!5631 = !{!5632, !5633, !5634, !5635, !5638}
!5632 = !DILocalVariable(name: "trig", arg: 1, scope: !5628, file: !3, line: 381, type: !4457)
!5633 = !DILocalVariable(name: "brightness", arg: 2, scope: !5628, file: !3, line: 382, type: !141)
!5634 = !DILocalVariable(name: "led_cdev", scope: !5628, file: !3, line: 384, type: !4465)
!5635 = !DILocalVariable(name: "__mptr", scope: !5636, file: !3, line: 392, type: !342)
!5636 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 392, column: 2)
!5637 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 392, column: 2)
!5638 = !DILocalVariable(name: "__mptr", scope: !5639, file: !3, line: 392, type: !342)
!5639 = distinct !DILexicalBlock(scope: !5640, file: !3, line: 392, column: 2)
!5640 = distinct !DILexicalBlock(scope: !5637, file: !3, line: 392, column: 2)
!5641 = !DILocation(line: 381, column: 44, scope: !5628)
!5642 = !DILocation(line: 382, column: 24, scope: !5628)
!5643 = !DILocation(line: 384, column: 2, scope: !5628)
!5644 = !DILocation(line: 384, column: 23, scope: !5628)
!5645 = !DILocation(line: 386, column: 7, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 386, column: 6)
!5647 = !DILocation(line: 386, column: 6, scope: !5628)
!5648 = !DILocation(line: 387, column: 3, scope: !5646)
!5649 = !DILocation(line: 389, column: 21, scope: !5628)
!5650 = !DILocation(line: 389, column: 2, scope: !5628)
!5651 = !DILocation(line: 389, column: 8, scope: !5628)
!5652 = !DILocation(line: 389, column: 19, scope: !5628)
!5653 = !DILocation(line: 391, column: 2, scope: !5628)
!5654 = !DILocation(line: 392, column: 2, scope: !5636)
!5655 = !DILocation(line: 392, column: 2, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5636, file: !3, line: 392, column: 2)
!5657 = !DILocation(line: 392, column: 2, scope: !5658)
!5658 = distinct !DILexicalBlock(scope: !5656, file: !3, line: 392, column: 2)
!5659 = !DILocation(line: 392, column: 2, scope: !5637)
!5660 = !DILocation(line: 392, column: 2, scope: !5640)
!5661 = !DILocation(line: 393, column: 22, scope: !5640)
!5662 = !DILocation(line: 393, column: 32, scope: !5640)
!5663 = !DILocation(line: 393, column: 3, scope: !5640)
!5664 = !DILocation(line: 392, column: 2, scope: !5639)
!5665 = !DILocation(line: 392, column: 2, scope: !5666)
!5666 = distinct !DILexicalBlock(scope: !5639, file: !3, line: 392, column: 2)
!5667 = !DILocation(line: 392, column: 2, scope: !5668)
!5668 = distinct !DILexicalBlock(scope: !5666, file: !3, line: 392, column: 2)
!5669 = distinct !{!5669, !5659, !5670, !4744, !4745}
!5670 = !DILocation(line: 393, column: 42, scope: !5637)
!5671 = !DILocation(line: 394, column: 2, scope: !5628)
!5672 = !DILocation(line: 395, column: 1, scope: !5628)
!5673 = distinct !DISubprogram(name: "rcu_read_lock", scope: !5230, file: !5230, line: 782, type: !977, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5674 = !DILocation(line: 784, column: 2, scope: !5673)
!5675 = !DILocation(line: 786, column: 2, scope: !5673)
!5676 = !DILocation(line: 786, column: 2, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5673, file: !5230, line: 786, column: 2)
!5678 = !DILocation(line: 787, column: 2, scope: !5673)
!5679 = !DILocation(line: 787, column: 2, scope: !5680)
!5680 = distinct !DILexicalBlock(scope: !5673, file: !5230, line: 787, column: 2)
!5681 = !DILocation(line: 789, column: 1, scope: !5673)
!5682 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !5230, file: !5230, line: 813, type: !977, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!5683 = !DILocation(line: 815, column: 2, scope: !5682)
!5684 = !DILocation(line: 815, column: 2, scope: !5685)
!5685 = distinct !DILexicalBlock(scope: !5682, file: !5230, line: 815, column: 2)
!5686 = !DILocation(line: 818, column: 2, scope: !5682)
!5687 = !DILocation(line: 819, column: 2, scope: !5682)
!5688 = !DILocation(line: 819, column: 2, scope: !5689)
!5689 = distinct !DILexicalBlock(scope: !5682, file: !5230, line: 819, column: 2)
!5690 = !DILocation(line: 820, column: 1, scope: !5682)
!5691 = distinct !DISubprogram(name: "led_trigger_blink", scope: !3, file: !3, line: 420, type: !5692, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5694)
!5692 = !DISubroutineType(types: !5693)
!5693 = !{null, !4457, !320, !320}
!5694 = !{!5695, !5696, !5697}
!5695 = !DILocalVariable(name: "trig", arg: 1, scope: !5691, file: !3, line: 420, type: !4457)
!5696 = !DILocalVariable(name: "delay_on", arg: 2, scope: !5691, file: !3, line: 421, type: !320)
!5697 = !DILocalVariable(name: "delay_off", arg: 3, scope: !5691, file: !3, line: 422, type: !320)
!5698 = !DILocation(line: 420, column: 44, scope: !5691)
!5699 = !DILocation(line: 421, column: 24, scope: !5691)
!5700 = !DILocation(line: 422, column: 24, scope: !5691)
!5701 = !DILocation(line: 424, column: 26, scope: !5691)
!5702 = !DILocation(line: 424, column: 32, scope: !5691)
!5703 = !DILocation(line: 424, column: 42, scope: !5691)
!5704 = !DILocation(line: 424, column: 2, scope: !5691)
!5705 = !DILocation(line: 425, column: 1, scope: !5691)
!5706 = distinct !DISubprogram(name: "led_trigger_blink_setup", scope: !3, file: !3, line: 398, type: !5707, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5709)
!5707 = !DISubroutineType(types: !5708)
!5708 = !{null, !4457, !320, !320, !109, !109}
!5709 = !{!5710, !5711, !5712, !5713, !5714, !5715, !5716, !5719}
!5710 = !DILocalVariable(name: "trig", arg: 1, scope: !5706, file: !3, line: 398, type: !4457)
!5711 = !DILocalVariable(name: "delay_on", arg: 2, scope: !5706, file: !3, line: 399, type: !320)
!5712 = !DILocalVariable(name: "delay_off", arg: 3, scope: !5706, file: !3, line: 400, type: !320)
!5713 = !DILocalVariable(name: "oneshot", arg: 4, scope: !5706, file: !3, line: 401, type: !109)
!5714 = !DILocalVariable(name: "invert", arg: 5, scope: !5706, file: !3, line: 402, type: !109)
!5715 = !DILocalVariable(name: "led_cdev", scope: !5706, file: !3, line: 404, type: !4465)
!5716 = !DILocalVariable(name: "__mptr", scope: !5717, file: !3, line: 410, type: !342)
!5717 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 410, column: 2)
!5718 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 410, column: 2)
!5719 = !DILocalVariable(name: "__mptr", scope: !5720, file: !3, line: 410, type: !342)
!5720 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 410, column: 2)
!5721 = distinct !DILexicalBlock(scope: !5718, file: !3, line: 410, column: 2)
!5722 = !DILocation(line: 398, column: 57, scope: !5706)
!5723 = !DILocation(line: 399, column: 23, scope: !5706)
!5724 = !DILocation(line: 400, column: 23, scope: !5706)
!5725 = !DILocation(line: 401, column: 13, scope: !5706)
!5726 = !DILocation(line: 402, column: 13, scope: !5706)
!5727 = !DILocation(line: 404, column: 2, scope: !5706)
!5728 = !DILocation(line: 404, column: 23, scope: !5706)
!5729 = !DILocation(line: 406, column: 7, scope: !5730)
!5730 = distinct !DILexicalBlock(scope: !5706, file: !3, line: 406, column: 6)
!5731 = !DILocation(line: 406, column: 6, scope: !5706)
!5732 = !DILocation(line: 407, column: 3, scope: !5730)
!5733 = !DILocation(line: 409, column: 2, scope: !5706)
!5734 = !DILocation(line: 410, column: 2, scope: !5717)
!5735 = !DILocation(line: 410, column: 2, scope: !5736)
!5736 = distinct !DILexicalBlock(scope: !5717, file: !3, line: 410, column: 2)
!5737 = !DILocation(line: 410, column: 2, scope: !5738)
!5738 = distinct !DILexicalBlock(scope: !5736, file: !3, line: 410, column: 2)
!5739 = !DILocation(line: 410, column: 2, scope: !5718)
!5740 = !DILocation(line: 410, column: 2, scope: !5721)
!5741 = !DILocation(line: 411, column: 7, scope: !5742)
!5742 = distinct !DILexicalBlock(scope: !5743, file: !3, line: 411, column: 7)
!5743 = distinct !DILexicalBlock(scope: !5721, file: !3, line: 410, column: 65)
!5744 = !DILocation(line: 411, column: 7, scope: !5743)
!5745 = !DILocation(line: 412, column: 26, scope: !5742)
!5746 = !DILocation(line: 413, column: 12, scope: !5742)
!5747 = !DILocation(line: 412, column: 4, scope: !5742)
!5748 = !DILocation(line: 415, column: 26, scope: !5742)
!5749 = !DILocation(line: 415, column: 36, scope: !5742)
!5750 = !DILocation(line: 415, column: 46, scope: !5742)
!5751 = !DILocation(line: 415, column: 4, scope: !5742)
!5752 = !DILocation(line: 416, column: 2, scope: !5743)
!5753 = !DILocation(line: 410, column: 2, scope: !5720)
!5754 = !DILocation(line: 410, column: 2, scope: !5755)
!5755 = distinct !DILexicalBlock(scope: !5720, file: !3, line: 410, column: 2)
!5756 = !DILocation(line: 410, column: 2, scope: !5757)
!5757 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 410, column: 2)
!5758 = distinct !{!5758, !5739, !5759, !4744, !4745}
!5759 = !DILocation(line: 416, column: 2, scope: !5718)
!5760 = !DILocation(line: 417, column: 2, scope: !5706)
!5761 = !DILocation(line: 418, column: 1, scope: !5706)
!5762 = distinct !DISubprogram(name: "led_trigger_blink_oneshot", scope: !3, file: !3, line: 428, type: !5763, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5765)
!5763 = !DISubroutineType(types: !5764)
!5764 = !{null, !4457, !320, !320, !109}
!5765 = !{!5766, !5767, !5768, !5769}
!5766 = !DILocalVariable(name: "trig", arg: 1, scope: !5762, file: !3, line: 428, type: !4457)
!5767 = !DILocalVariable(name: "delay_on", arg: 2, scope: !5762, file: !3, line: 429, type: !320)
!5768 = !DILocalVariable(name: "delay_off", arg: 3, scope: !5762, file: !3, line: 430, type: !320)
!5769 = !DILocalVariable(name: "invert", arg: 4, scope: !5762, file: !3, line: 431, type: !109)
!5770 = !DILocation(line: 428, column: 52, scope: !5762)
!5771 = !DILocation(line: 429, column: 25, scope: !5762)
!5772 = !DILocation(line: 430, column: 25, scope: !5762)
!5773 = !DILocation(line: 431, column: 15, scope: !5762)
!5774 = !DILocation(line: 433, column: 26, scope: !5762)
!5775 = !DILocation(line: 433, column: 32, scope: !5762)
!5776 = !DILocation(line: 433, column: 42, scope: !5762)
!5777 = !DILocation(line: 433, column: 56, scope: !5762)
!5778 = !DILocation(line: 433, column: 2, scope: !5762)
!5779 = !DILocation(line: 434, column: 1, scope: !5762)
!5780 = distinct !DISubprogram(name: "led_trigger_register_simple", scope: !3, file: !3, line: 437, type: !5781, scopeLine: 438, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5783)
!5781 = !DISubroutineType(types: !5782)
!5782 = !{null, !182, !4555}
!5783 = !{!5784, !5785, !5786, !5787}
!5784 = !DILocalVariable(name: "name", arg: 1, scope: !5780, file: !3, line: 437, type: !182)
!5785 = !DILocalVariable(name: "tp", arg: 2, scope: !5780, file: !3, line: 437, type: !4555)
!5786 = !DILocalVariable(name: "trig", scope: !5780, file: !3, line: 439, type: !4457)
!5787 = !DILocalVariable(name: "err", scope: !5780, file: !3, line: 440, type: !109)
!5788 = !DILocation(line: 437, column: 46, scope: !5780)
!5789 = !DILocation(line: 437, column: 73, scope: !5780)
!5790 = !DILocation(line: 439, column: 2, scope: !5780)
!5791 = !DILocation(line: 439, column: 22, scope: !5780)
!5792 = !DILocation(line: 440, column: 2, scope: !5780)
!5793 = !DILocation(line: 440, column: 6, scope: !5780)
!5794 = !DILocation(line: 442, column: 9, scope: !5780)
!5795 = !DILocation(line: 442, column: 7, scope: !5780)
!5796 = !DILocation(line: 444, column: 6, scope: !5797)
!5797 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 444, column: 6)
!5798 = !DILocation(line: 444, column: 6, scope: !5780)
!5799 = !DILocation(line: 445, column: 16, scope: !5800)
!5800 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 444, column: 12)
!5801 = !DILocation(line: 445, column: 3, scope: !5800)
!5802 = !DILocation(line: 445, column: 9, scope: !5800)
!5803 = !DILocation(line: 445, column: 14, scope: !5800)
!5804 = !DILocation(line: 446, column: 30, scope: !5800)
!5805 = !DILocation(line: 446, column: 9, scope: !5800)
!5806 = !DILocation(line: 446, column: 7, scope: !5800)
!5807 = !DILocation(line: 447, column: 7, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5800, file: !3, line: 447, column: 7)
!5809 = !DILocation(line: 447, column: 11, scope: !5808)
!5810 = !DILocation(line: 447, column: 7, scope: !5800)
!5811 = !DILocation(line: 448, column: 10, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5808, file: !3, line: 447, column: 16)
!5813 = !DILocation(line: 448, column: 4, scope: !5812)
!5814 = !DILocation(line: 449, column: 9, scope: !5812)
!5815 = !DILocation(line: 450, column: 4, scope: !5816)
!5816 = distinct !DILexicalBlock(scope: !5812, file: !3, line: 450, column: 4)
!5817 = !DILocation(line: 450, column: 4, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5816, file: !3, line: 450, column: 4)
!5819 = !DILocation(line: 452, column: 3, scope: !5812)
!5820 = !DILocation(line: 453, column: 2, scope: !5800)
!5821 = !DILocation(line: 454, column: 3, scope: !5822)
!5822 = distinct !DILexicalBlock(scope: !5823, file: !3, line: 454, column: 3)
!5823 = distinct !DILexicalBlock(scope: !5797, file: !3, line: 453, column: 9)
!5824 = !DILocation(line: 454, column: 3, scope: !5825)
!5825 = distinct !DILexicalBlock(scope: !5822, file: !3, line: 454, column: 3)
!5826 = !DILocation(line: 457, column: 8, scope: !5780)
!5827 = !DILocation(line: 457, column: 3, scope: !5780)
!5828 = !DILocation(line: 457, column: 6, scope: !5780)
!5829 = !DILocation(line: 458, column: 1, scope: !5780)
!5830 = distinct !DISubprogram(name: "kzalloc", scope: !165, file: !165, line: 719, type: !5180, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5831)
!5831 = !{!5832, !5833}
!5832 = !DILocalVariable(name: "size", arg: 1, scope: !5830, file: !165, line: 719, type: !317)
!5833 = !DILocalVariable(name: "flags", arg: 2, scope: !5830, file: !165, line: 719, type: !1126)
!5834 = !DILocation(line: 719, column: 52, scope: !5830)
!5835 = !DILocation(line: 719, column: 64, scope: !5830)
!5836 = !DILocation(line: 721, column: 17, scope: !5830)
!5837 = !DILocation(line: 721, column: 23, scope: !5830)
!5838 = !DILocation(line: 721, column: 29, scope: !5830)
!5839 = !DILocation(line: 721, column: 9, scope: !5830)
!5840 = !DILocation(line: 721, column: 2, scope: !5830)
!5841 = !DISubprogram(name: "_printk", scope: !5842, file: !5842, line: 153, type: !5843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5842 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5843 = !DISubroutineType(types: !5844)
!5844 = !{!109, !182, null}
!5845 = distinct !DISubprogram(name: "led_trigger_unregister_simple", scope: !3, file: !3, line: 461, type: !5477, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5846)
!5846 = !{!5847}
!5847 = !DILocalVariable(name: "trig", arg: 1, scope: !5845, file: !3, line: 461, type: !4457)
!5848 = !DILocation(line: 461, column: 56, scope: !5845)
!5849 = !DILocation(line: 463, column: 6, scope: !5850)
!5850 = distinct !DILexicalBlock(scope: !5845, file: !3, line: 463, column: 6)
!5851 = !DILocation(line: 463, column: 6, scope: !5845)
!5852 = !DILocation(line: 464, column: 26, scope: !5850)
!5853 = !DILocation(line: 464, column: 3, scope: !5850)
!5854 = !DILocation(line: 465, column: 8, scope: !5845)
!5855 = !DILocation(line: 465, column: 2, scope: !5845)
!5856 = !DILocation(line: 466, column: 1, scope: !5845)
!5857 = distinct !DISubprogram(name: "led_trigger_snprintf", scope: !3, file: !3, line: 79, type: !5858, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5860)
!5858 = !DISubroutineType(types: !5859)
!5859 = !{!109, !270, !302, !182, null}
!5860 = !{!5861, !5862, !5863, !5864, !5875}
!5861 = !DILocalVariable(name: "buf", arg: 1, scope: !5857, file: !3, line: 79, type: !270)
!5862 = !DILocalVariable(name: "size", arg: 2, scope: !5857, file: !3, line: 79, type: !302)
!5863 = !DILocalVariable(name: "fmt", arg: 3, scope: !5857, file: !3, line: 79, type: !182)
!5864 = !DILocalVariable(name: "args", scope: !5857, file: !3, line: 81, type: !5865)
!5865 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5866, line: 5, baseType: !5867)
!5866 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5868)
!5868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5869, size: 192, elements: !1629)
!5869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5870)
!5870 = !{!5871, !5872, !5873, !5874}
!5871 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5869, file: !3, line: 81, baseType: !7, size: 32)
!5872 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5869, file: !3, line: 81, baseType: !7, size: 32, offset: 32)
!5873 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5869, file: !3, line: 81, baseType: !342, size: 64, offset: 64)
!5874 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5869, file: !3, line: 81, baseType: !342, size: 64, offset: 128)
!5875 = !DILocalVariable(name: "i", scope: !5857, file: !3, line: 82, type: !109)
!5876 = !DILocation(line: 79, column: 39, scope: !5857)
!5877 = !DILocation(line: 79, column: 52, scope: !5857)
!5878 = !DILocation(line: 79, column: 70, scope: !5857)
!5879 = !DILocation(line: 81, column: 2, scope: !5857)
!5880 = !DILocation(line: 81, column: 10, scope: !5857)
!5881 = !DILocation(line: 82, column: 2, scope: !5857)
!5882 = !DILocation(line: 82, column: 6, scope: !5857)
!5883 = !DILocation(line: 84, column: 2, scope: !5857)
!5884 = !DILocation(line: 85, column: 6, scope: !5885)
!5885 = distinct !DILexicalBlock(scope: !5857, file: !3, line: 85, column: 6)
!5886 = !DILocation(line: 85, column: 11, scope: !5885)
!5887 = !DILocation(line: 85, column: 6, scope: !5857)
!5888 = !DILocation(line: 86, column: 26, scope: !5885)
!5889 = !DILocation(line: 86, column: 31, scope: !5885)
!5890 = !DILocation(line: 86, column: 7, scope: !5885)
!5891 = !DILocation(line: 86, column: 5, scope: !5885)
!5892 = !DILocation(line: 86, column: 3, scope: !5885)
!5893 = !DILocation(line: 88, column: 18, scope: !5885)
!5894 = !DILocation(line: 88, column: 23, scope: !5885)
!5895 = !DILocation(line: 88, column: 29, scope: !5885)
!5896 = !DILocation(line: 88, column: 34, scope: !5885)
!5897 = !DILocation(line: 88, column: 7, scope: !5885)
!5898 = !DILocation(line: 88, column: 5, scope: !5885)
!5899 = !DILocation(line: 89, column: 2, scope: !5857)
!5900 = !DILocation(line: 91, column: 9, scope: !5857)
!5901 = !DILocation(line: 92, column: 1, scope: !5857)
!5902 = !DILocation(line: 91, column: 2, scope: !5857)
!5903 = !DISubprogram(name: "vsnprintf", scope: !5198, file: !5198, line: 13, type: !5904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5904 = !DISubroutineType(types: !5905)
!5905 = !{!109, !270, !317, !182, !5906}
!5906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5869, size: 64)
!5907 = !DISubprogram(name: "vscnprintf", scope: !5198, file: !5198, line: 15, type: !5904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5908 = !DISubprogram(name: "kvmalloc_node", scope: !165, file: !165, line: 735, type: !5909, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5909 = !DISubroutineType(types: !5910)
!5910 = !{!342, !317, !1126, !109}
!5911 = !DISubprogram(name: "_raw_spin_lock", scope: !5912, file: !5912, line: 22, type: !5913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5912 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5913 = !DISubroutineType(types: !5914)
!5914 = !{null, !5437}
!5915 = distinct !DISubprogram(name: "__list_del_entry", scope: !5445, file: !5445, line: 213, type: !5212, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5916)
!5916 = !{!5917}
!5917 = !DILocalVariable(name: "entry", arg: 1, scope: !5915, file: !5445, line: 213, type: !190)
!5918 = !DILocation(line: 213, column: 55, scope: !5915)
!5919 = !DILocation(line: 215, column: 30, scope: !5920)
!5920 = distinct !DILexicalBlock(scope: !5915, file: !5445, line: 215, column: 6)
!5921 = !DILocation(line: 215, column: 7, scope: !5920)
!5922 = !DILocation(line: 215, column: 6, scope: !5915)
!5923 = !DILocation(line: 216, column: 3, scope: !5920)
!5924 = !DILocation(line: 218, column: 13, scope: !5915)
!5925 = !DILocation(line: 218, column: 20, scope: !5915)
!5926 = !DILocation(line: 218, column: 26, scope: !5915)
!5927 = !DILocation(line: 218, column: 33, scope: !5915)
!5928 = !DILocation(line: 218, column: 2, scope: !5915)
!5929 = !DILocation(line: 219, column: 1, scope: !5915)
!5930 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5445, file: !5445, line: 134, type: !5931, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5933)
!5931 = !DISubroutineType(types: !5932)
!5932 = !{!692, !190}
!5933 = !{!5934}
!5934 = !DILocalVariable(name: "entry", arg: 1, scope: !5930, file: !5445, line: 134, type: !190)
!5935 = !DILocation(line: 134, column: 61, scope: !5930)
!5936 = !DILocation(line: 136, column: 2, scope: !5930)
!5937 = distinct !DISubprogram(name: "__list_del", scope: !5445, file: !5445, line: 193, type: !5243, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5938)
!5938 = !{!5939, !5940}
!5939 = !DILocalVariable(name: "prev", arg: 1, scope: !5937, file: !5445, line: 193, type: !190)
!5940 = !DILocalVariable(name: "next", arg: 2, scope: !5937, file: !5445, line: 193, type: !190)
!5941 = !DILocation(line: 193, column: 50, scope: !5937)
!5942 = !DILocation(line: 193, column: 75, scope: !5937)
!5943 = !DILocation(line: 195, column: 15, scope: !5937)
!5944 = !DILocation(line: 195, column: 2, scope: !5937)
!5945 = !DILocation(line: 195, column: 8, scope: !5937)
!5946 = !DILocation(line: 195, column: 13, scope: !5937)
!5947 = !DILocation(line: 196, column: 2, scope: !5937)
!5948 = !DILocation(line: 196, column: 2, scope: !5949)
!5949 = distinct !DILexicalBlock(scope: !5937, file: !5445, line: 196, column: 2)
!5950 = !DILocation(line: 196, column: 2, scope: !5951)
!5951 = distinct !DILexicalBlock(scope: !5949, file: !5445, line: 196, column: 2)
!5952 = !DILocation(line: 196, column: 2, scope: !5953)
!5953 = distinct !DILexicalBlock(scope: !5949, file: !5445, line: 196, column: 2)
!5954 = !DILocation(line: 197, column: 1, scope: !5937)
!5955 = !DISubprogram(name: "_raw_spin_unlock", scope: !5912, file: !5912, line: 39, type: !5913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5956 = distinct !DISubprogram(name: "__list_add_rcu", scope: !5211, file: !5211, line: 76, type: !5957, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5959)
!5957 = !DISubroutineType(types: !5958)
!5958 = !{null, !190, !190, !190}
!5959 = !{!5960, !5961, !5962, !5963}
!5960 = !DILocalVariable(name: "new", arg: 1, scope: !5956, file: !5211, line: 76, type: !190)
!5961 = !DILocalVariable(name: "prev", arg: 2, scope: !5956, file: !5211, line: 77, type: !190)
!5962 = !DILocalVariable(name: "next", arg: 3, scope: !5956, file: !5211, line: 77, type: !190)
!5963 = !DILocalVariable(name: "_r_a_p__v", scope: !5964, file: !5211, line: 84, type: !4553)
!5964 = distinct !DILexicalBlock(scope: !5956, file: !5211, line: 84, column: 2)
!5965 = !DILocation(line: 76, column: 53, scope: !5956)
!5966 = !DILocation(line: 77, column: 21, scope: !5956)
!5967 = !DILocation(line: 77, column: 45, scope: !5956)
!5968 = !DILocation(line: 79, column: 24, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5956, file: !5211, line: 79, column: 6)
!5970 = !DILocation(line: 79, column: 29, scope: !5969)
!5971 = !DILocation(line: 79, column: 35, scope: !5969)
!5972 = !DILocation(line: 79, column: 7, scope: !5969)
!5973 = !DILocation(line: 79, column: 6, scope: !5956)
!5974 = !DILocation(line: 80, column: 3, scope: !5969)
!5975 = !DILocation(line: 82, column: 14, scope: !5956)
!5976 = !DILocation(line: 82, column: 2, scope: !5956)
!5977 = !DILocation(line: 82, column: 7, scope: !5956)
!5978 = !DILocation(line: 82, column: 12, scope: !5956)
!5979 = !DILocation(line: 83, column: 14, scope: !5956)
!5980 = !DILocation(line: 83, column: 2, scope: !5956)
!5981 = !DILocation(line: 83, column: 7, scope: !5956)
!5982 = !DILocation(line: 83, column: 12, scope: !5956)
!5983 = !DILocation(line: 84, column: 2, scope: !5956)
!5984 = !DILocation(line: 84, column: 2, scope: !5964)
!5985 = !DILocation(line: 84, column: 2, scope: !5986)
!5986 = distinct !DILexicalBlock(scope: !5964, file: !5211, line: 84, column: 2)
!5987 = !DILocation(line: 84, column: 2, scope: !5988)
!5988 = distinct !DILexicalBlock(scope: !5986, file: !5211, line: 84, column: 2)
!5989 = !DILocation(line: 84, column: 2, scope: !5990)
!5990 = distinct !DILexicalBlock(scope: !5988, file: !5211, line: 84, column: 2)
!5991 = !DILocation(line: 84, column: 2, scope: !5992)
!5992 = distinct !DILexicalBlock(scope: !5988, file: !5211, line: 84, column: 2)
!5993 = !DILocation(line: 84, column: 2, scope: !5994)
!5994 = distinct !DILexicalBlock(scope: !5986, file: !5211, line: 84, column: 2)
!5995 = !DILocation(line: 84, column: 2, scope: !5996)
!5996 = distinct !DILexicalBlock(scope: !5994, file: !5211, line: 84, column: 2)
!5997 = !DILocation(line: 84, column: 2, scope: !5998)
!5998 = distinct !DILexicalBlock(scope: !5994, file: !5211, line: 84, column: 2)
!5999 = !DILocation(line: 84, column: 2, scope: !6000)
!6000 = distinct !DILexicalBlock(scope: !5998, file: !5211, line: 84, column: 2)
!6001 = !{i64 2149981805}
!6002 = !DILocation(line: 84, column: 2, scope: !6003)
!6003 = distinct !DILexicalBlock(scope: !5998, file: !5211, line: 84, column: 2)
!6004 = !DILocation(line: 84, column: 2, scope: !6005)
!6005 = distinct !DILexicalBlock(scope: !6003, file: !5211, line: 84, column: 2)
!6006 = !DILocation(line: 84, column: 2, scope: !6007)
!6007 = distinct !DILexicalBlock(scope: !6003, file: !5211, line: 84, column: 2)
!6008 = !DILocation(line: 85, column: 15, scope: !5956)
!6009 = !DILocation(line: 85, column: 2, scope: !5956)
!6010 = !DILocation(line: 85, column: 8, scope: !5956)
!6011 = !DILocation(line: 85, column: 13, scope: !5956)
!6012 = !DILocation(line: 86, column: 1, scope: !5956)
!6013 = distinct !DISubprogram(name: "__list_add_valid", scope: !5445, file: !5445, line: 128, type: !6014, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6016)
!6014 = !DISubroutineType(types: !6015)
!6015 = !{!692, !190, !190, !190}
!6016 = !{!6017, !6018, !6019}
!6017 = !DILocalVariable(name: "new", arg: 1, scope: !6013, file: !5445, line: 128, type: !190)
!6018 = !DILocalVariable(name: "prev", arg: 2, scope: !6013, file: !5445, line: 129, type: !190)
!6019 = !DILocalVariable(name: "next", arg: 3, scope: !6013, file: !5445, line: 130, type: !190)
!6020 = !DILocation(line: 128, column: 55, scope: !6013)
!6021 = !DILocation(line: 129, column: 23, scope: !6013)
!6022 = !DILocation(line: 130, column: 23, scope: !6013)
!6023 = !DILocation(line: 132, column: 2, scope: !6013)
!6024 = distinct !DISubprogram(name: "__list_add", scope: !5445, file: !5445, line: 146, type: !5957, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6025)
!6025 = !{!6026, !6027, !6028}
!6026 = !DILocalVariable(name: "new", arg: 1, scope: !6024, file: !5445, line: 146, type: !190)
!6027 = !DILocalVariable(name: "prev", arg: 2, scope: !6024, file: !5445, line: 147, type: !190)
!6028 = !DILocalVariable(name: "next", arg: 3, scope: !6024, file: !5445, line: 148, type: !190)
!6029 = !DILocation(line: 146, column: 49, scope: !6024)
!6030 = !DILocation(line: 147, column: 28, scope: !6024)
!6031 = !DILocation(line: 148, column: 28, scope: !6024)
!6032 = !DILocation(line: 150, column: 24, scope: !6033)
!6033 = distinct !DILexicalBlock(scope: !6024, file: !5445, line: 150, column: 6)
!6034 = !DILocation(line: 150, column: 29, scope: !6033)
!6035 = !DILocation(line: 150, column: 35, scope: !6033)
!6036 = !DILocation(line: 150, column: 7, scope: !6033)
!6037 = !DILocation(line: 150, column: 6, scope: !6024)
!6038 = !DILocation(line: 151, column: 3, scope: !6033)
!6039 = !DILocation(line: 153, column: 15, scope: !6024)
!6040 = !DILocation(line: 153, column: 2, scope: !6024)
!6041 = !DILocation(line: 153, column: 8, scope: !6024)
!6042 = !DILocation(line: 153, column: 13, scope: !6024)
!6043 = !DILocation(line: 154, column: 14, scope: !6024)
!6044 = !DILocation(line: 154, column: 2, scope: !6024)
!6045 = !DILocation(line: 154, column: 7, scope: !6024)
!6046 = !DILocation(line: 154, column: 12, scope: !6024)
!6047 = !DILocation(line: 155, column: 14, scope: !6024)
!6048 = !DILocation(line: 155, column: 2, scope: !6024)
!6049 = !DILocation(line: 155, column: 7, scope: !6024)
!6050 = !DILocation(line: 155, column: 12, scope: !6024)
!6051 = !DILocation(line: 156, column: 2, scope: !6024)
!6052 = !DILocation(line: 156, column: 2, scope: !6053)
!6053 = distinct !DILexicalBlock(scope: !6024, file: !5445, line: 156, column: 2)
!6054 = !DILocation(line: 156, column: 2, scope: !6055)
!6055 = distinct !DILexicalBlock(scope: !6053, file: !5445, line: 156, column: 2)
!6056 = !DILocation(line: 156, column: 2, scope: !6057)
!6057 = distinct !DILexicalBlock(scope: !6053, file: !5445, line: 156, column: 2)
!6058 = !DILocation(line: 157, column: 1, scope: !6024)
!6059 = distinct !DISubprogram(name: "list_is_head", scope: !5445, file: !5445, line: 362, type: !6060, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6062)
!6060 = !DISubroutineType(types: !6061)
!6061 = !{!109, !5530, !5530}
!6062 = !{!6063, !6064}
!6063 = !DILocalVariable(name: "list", arg: 1, scope: !6059, file: !5445, line: 362, type: !5530)
!6064 = !DILocalVariable(name: "head", arg: 2, scope: !6059, file: !5445, line: 362, type: !5530)
!6065 = !DILocation(line: 362, column: 56, scope: !6059)
!6066 = !DILocation(line: 362, column: 86, scope: !6059)
!6067 = !DILocation(line: 364, column: 9, scope: !6059)
!6068 = !DILocation(line: 364, column: 17, scope: !6059)
!6069 = !DILocation(line: 364, column: 14, scope: !6059)
!6070 = !DILocation(line: 364, column: 2, scope: !6059)
!6071 = !DISubprogram(name: "__rcu_read_lock", scope: !5230, file: !5230, line: 74, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6072 = !DISubprogram(name: "__rcu_read_unlock", scope: !5230, file: !5230, line: 75, type: !977, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6073 = !DISubprogram(name: "led_blink_set_oneshot", scope: !142, file: !142, line: 368, type: !6074, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6074 = !DISubroutineType(types: !6075)
!6075 = !{null, !4465, !963, !963, !109}
!6076 = !DISubprogram(name: "led_blink_set_nosleep", scope: !142, file: !142, line: 349, type: !6077, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6077 = !DISubroutineType(types: !6078)
!6078 = !{null, !4465, !320, !320}
!6079 = distinct !DISubprogram(name: "kmalloc", scope: !165, file: !165, line: 591, type: !5180, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6080)
!6080 = !{!6081, !6082, !6083}
!6081 = !DILocalVariable(name: "size", arg: 1, scope: !6079, file: !165, line: 591, type: !317)
!6082 = !DILocalVariable(name: "flags", arg: 2, scope: !6079, file: !165, line: 591, type: !1126)
!6083 = !DILocalVariable(name: "index", scope: !6084, file: !165, line: 594, type: !7)
!6084 = distinct !DILexicalBlock(scope: !6085, file: !165, line: 593, column: 42)
!6085 = distinct !DILexicalBlock(scope: !6079, file: !165, line: 593, column: 6)
!6086 = !DILocation(line: 591, column: 61, scope: !6079)
!6087 = !DILocation(line: 591, column: 73, scope: !6079)
!6088 = !DILocation(line: 593, column: 27, scope: !6085)
!6089 = !DILocation(line: 593, column: 6, scope: !6085)
!6090 = !DILocation(line: 593, column: 33, scope: !6085)
!6091 = !DILocation(line: 593, column: 36, scope: !6085)
!6092 = !DILocation(line: 593, column: 6, scope: !6079)
!6093 = !DILocation(line: 594, column: 3, scope: !6084)
!6094 = !DILocation(line: 594, column: 16, scope: !6084)
!6095 = !DILocation(line: 596, column: 7, scope: !6096)
!6096 = distinct !DILexicalBlock(scope: !6084, file: !165, line: 596, column: 7)
!6097 = !DILocation(line: 596, column: 12, scope: !6096)
!6098 = !DILocation(line: 596, column: 7, scope: !6084)
!6099 = !DILocation(line: 597, column: 25, scope: !6096)
!6100 = !DILocation(line: 597, column: 31, scope: !6096)
!6101 = !DILocation(line: 597, column: 11, scope: !6096)
!6102 = !DILocation(line: 597, column: 4, scope: !6096)
!6103 = !DILocation(line: 599, column: 11, scope: !6084)
!6104 = !DILocation(line: 599, column: 9, scope: !6084)
!6105 = !DILocation(line: 601, column: 33, scope: !6084)
!6106 = !DILocation(line: 601, column: 40, scope: !6084)
!6107 = !DILocation(line: 601, column: 20, scope: !6084)
!6108 = !DILocation(line: 601, column: 5, scope: !6084)
!6109 = !DILocation(line: 601, column: 51, scope: !6084)
!6110 = !DILocation(line: 602, column: 5, scope: !6084)
!6111 = !DILocation(line: 602, column: 12, scope: !6084)
!6112 = !DILocation(line: 600, column: 10, scope: !6084)
!6113 = !DILocation(line: 600, column: 3, scope: !6084)
!6114 = !DILocation(line: 603, column: 2, scope: !6085)
!6115 = !DILocation(line: 604, column: 19, scope: !6079)
!6116 = !DILocation(line: 604, column: 25, scope: !6079)
!6117 = !DILocation(line: 604, column: 9, scope: !6079)
!6118 = !DILocation(line: 604, column: 2, scope: !6079)
!6119 = !DILocation(line: 605, column: 1, scope: !6079)
!6120 = !DISubprogram(name: "kmalloc_large", scope: !165, file: !165, line: 531, type: !5180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6121 = distinct !DISubprogram(name: "__kmalloc_index", scope: !165, file: !165, line: 444, type: !6122, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6124)
!6122 = !DISubroutineType(types: !6123)
!6123 = !{!7, !317, !692}
!6124 = !{!6125, !6126}
!6125 = !DILocalVariable(name: "size", arg: 1, scope: !6121, file: !165, line: 444, type: !317)
!6126 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6121, file: !165, line: 445, type: !692)
!6127 = !DILocation(line: 444, column: 60, scope: !6121)
!6128 = !DILocation(line: 445, column: 16, scope: !6121)
!6129 = !DILocation(line: 447, column: 7, scope: !6130)
!6130 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 447, column: 6)
!6131 = !DILocation(line: 447, column: 6, scope: !6121)
!6132 = !DILocation(line: 448, column: 3, scope: !6130)
!6133 = !DILocation(line: 450, column: 6, scope: !6134)
!6134 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 450, column: 6)
!6135 = !DILocation(line: 450, column: 11, scope: !6134)
!6136 = !DILocation(line: 450, column: 6, scope: !6121)
!6137 = !DILocation(line: 451, column: 3, scope: !6134)
!6138 = !DILocation(line: 453, column: 32, scope: !6139)
!6139 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 453, column: 6)
!6140 = !DILocation(line: 453, column: 37, scope: !6139)
!6141 = !DILocation(line: 453, column: 42, scope: !6139)
!6142 = !DILocation(line: 453, column: 45, scope: !6139)
!6143 = !DILocation(line: 453, column: 50, scope: !6139)
!6144 = !DILocation(line: 453, column: 6, scope: !6121)
!6145 = !DILocation(line: 454, column: 3, scope: !6139)
!6146 = !DILocation(line: 455, column: 32, scope: !6147)
!6147 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 455, column: 6)
!6148 = !DILocation(line: 455, column: 37, scope: !6147)
!6149 = !DILocation(line: 455, column: 43, scope: !6147)
!6150 = !DILocation(line: 455, column: 46, scope: !6147)
!6151 = !DILocation(line: 455, column: 51, scope: !6147)
!6152 = !DILocation(line: 455, column: 6, scope: !6121)
!6153 = !DILocation(line: 456, column: 3, scope: !6147)
!6154 = !DILocation(line: 457, column: 6, scope: !6155)
!6155 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 457, column: 6)
!6156 = !DILocation(line: 457, column: 11, scope: !6155)
!6157 = !DILocation(line: 457, column: 6, scope: !6121)
!6158 = !DILocation(line: 457, column: 26, scope: !6155)
!6159 = !DILocation(line: 458, column: 6, scope: !6160)
!6160 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 458, column: 6)
!6161 = !DILocation(line: 458, column: 11, scope: !6160)
!6162 = !DILocation(line: 458, column: 6, scope: !6121)
!6163 = !DILocation(line: 458, column: 26, scope: !6160)
!6164 = !DILocation(line: 459, column: 6, scope: !6165)
!6165 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 459, column: 6)
!6166 = !DILocation(line: 459, column: 11, scope: !6165)
!6167 = !DILocation(line: 459, column: 6, scope: !6121)
!6168 = !DILocation(line: 459, column: 26, scope: !6165)
!6169 = !DILocation(line: 460, column: 6, scope: !6170)
!6170 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 460, column: 6)
!6171 = !DILocation(line: 460, column: 11, scope: !6170)
!6172 = !DILocation(line: 460, column: 6, scope: !6121)
!6173 = !DILocation(line: 460, column: 26, scope: !6170)
!6174 = !DILocation(line: 461, column: 6, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 461, column: 6)
!6176 = !DILocation(line: 461, column: 11, scope: !6175)
!6177 = !DILocation(line: 461, column: 6, scope: !6121)
!6178 = !DILocation(line: 461, column: 26, scope: !6175)
!6179 = !DILocation(line: 462, column: 6, scope: !6180)
!6180 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 462, column: 6)
!6181 = !DILocation(line: 462, column: 11, scope: !6180)
!6182 = !DILocation(line: 462, column: 6, scope: !6121)
!6183 = !DILocation(line: 462, column: 26, scope: !6180)
!6184 = !DILocation(line: 463, column: 6, scope: !6185)
!6185 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 463, column: 6)
!6186 = !DILocation(line: 463, column: 11, scope: !6185)
!6187 = !DILocation(line: 463, column: 6, scope: !6121)
!6188 = !DILocation(line: 463, column: 26, scope: !6185)
!6189 = !DILocation(line: 464, column: 6, scope: !6190)
!6190 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 464, column: 6)
!6191 = !DILocation(line: 464, column: 11, scope: !6190)
!6192 = !DILocation(line: 464, column: 6, scope: !6121)
!6193 = !DILocation(line: 464, column: 26, scope: !6190)
!6194 = !DILocation(line: 465, column: 6, scope: !6195)
!6195 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 465, column: 6)
!6196 = !DILocation(line: 465, column: 11, scope: !6195)
!6197 = !DILocation(line: 465, column: 6, scope: !6121)
!6198 = !DILocation(line: 465, column: 26, scope: !6195)
!6199 = !DILocation(line: 466, column: 6, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 466, column: 6)
!6201 = !DILocation(line: 466, column: 11, scope: !6200)
!6202 = !DILocation(line: 466, column: 6, scope: !6121)
!6203 = !DILocation(line: 466, column: 26, scope: !6200)
!6204 = !DILocation(line: 467, column: 6, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 467, column: 6)
!6206 = !DILocation(line: 467, column: 11, scope: !6205)
!6207 = !DILocation(line: 467, column: 6, scope: !6121)
!6208 = !DILocation(line: 467, column: 26, scope: !6205)
!6209 = !DILocation(line: 468, column: 6, scope: !6210)
!6210 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 468, column: 6)
!6211 = !DILocation(line: 468, column: 11, scope: !6210)
!6212 = !DILocation(line: 468, column: 6, scope: !6121)
!6213 = !DILocation(line: 468, column: 26, scope: !6210)
!6214 = !DILocation(line: 469, column: 6, scope: !6215)
!6215 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 469, column: 6)
!6216 = !DILocation(line: 469, column: 11, scope: !6215)
!6217 = !DILocation(line: 469, column: 6, scope: !6121)
!6218 = !DILocation(line: 469, column: 26, scope: !6215)
!6219 = !DILocation(line: 470, column: 6, scope: !6220)
!6220 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 470, column: 6)
!6221 = !DILocation(line: 470, column: 11, scope: !6220)
!6222 = !DILocation(line: 470, column: 6, scope: !6121)
!6223 = !DILocation(line: 470, column: 26, scope: !6220)
!6224 = !DILocation(line: 471, column: 6, scope: !6225)
!6225 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 471, column: 6)
!6226 = !DILocation(line: 471, column: 11, scope: !6225)
!6227 = !DILocation(line: 471, column: 6, scope: !6121)
!6228 = !DILocation(line: 471, column: 26, scope: !6225)
!6229 = !DILocation(line: 472, column: 6, scope: !6230)
!6230 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 472, column: 6)
!6231 = !DILocation(line: 472, column: 11, scope: !6230)
!6232 = !DILocation(line: 472, column: 6, scope: !6121)
!6233 = !DILocation(line: 472, column: 26, scope: !6230)
!6234 = !DILocation(line: 473, column: 6, scope: !6235)
!6235 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 473, column: 6)
!6236 = !DILocation(line: 473, column: 11, scope: !6235)
!6237 = !DILocation(line: 473, column: 6, scope: !6121)
!6238 = !DILocation(line: 473, column: 26, scope: !6235)
!6239 = !DILocation(line: 474, column: 6, scope: !6240)
!6240 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 474, column: 6)
!6241 = !DILocation(line: 474, column: 11, scope: !6240)
!6242 = !DILocation(line: 474, column: 6, scope: !6121)
!6243 = !DILocation(line: 474, column: 27, scope: !6240)
!6244 = !DILocation(line: 475, column: 6, scope: !6245)
!6245 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 475, column: 6)
!6246 = !DILocation(line: 475, column: 11, scope: !6245)
!6247 = !DILocation(line: 475, column: 6, scope: !6121)
!6248 = !DILocation(line: 475, column: 32, scope: !6245)
!6249 = !DILocation(line: 477, column: 50, scope: !6250)
!6250 = distinct !DILexicalBlock(scope: !6121, file: !165, line: 477, column: 6)
!6251 = !DILocation(line: 477, column: 6, scope: !6121)
!6252 = !DILocation(line: 478, column: 3, scope: !6250)
!6253 = !DILocation(line: 478, column: 3, scope: !6254)
!6254 = distinct !DILexicalBlock(scope: !6255, file: !165, line: 478, column: 3)
!6255 = distinct !DILexicalBlock(scope: !6250, file: !165, line: 478, column: 3)
!6256 = !{i32 -2142291579}
!6257 = !DILocation(line: 478, column: 3, scope: !6255)
!6258 = !DILocation(line: 480, column: 3, scope: !6250)
!6259 = !DILocation(line: 480, column: 3, scope: !6260)
!6260 = distinct !DILexicalBlock(scope: !6250, file: !165, line: 480, column: 3)
!6261 = !DILocation(line: 480, column: 3, scope: !6262)
!6262 = distinct !DILexicalBlock(scope: !6260, file: !165, line: 480, column: 3)
!6263 = !DILocation(line: 480, column: 3, scope: !6264)
!6264 = distinct !DILexicalBlock(scope: !6260, file: !165, line: 480, column: 3)
!6265 = !{i64 2152675920, i64 2152675949, i64 2152675995, i64 2152676053, i64 2152676107, i64 2152676161, i64 2152676216, i64 2152676247}
!6266 = !DILocation(line: 483, column: 2, scope: !6121)
!6267 = !DILocation(line: 484, column: 1, scope: !6121)
!6268 = !DISubprogram(name: "kmalloc_trace", scope: !165, file: !165, line: 525, type: !6269, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6269 = !DISubroutineType(types: !6270)
!6270 = !{!342, !6271, !1126, !317}
!6271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6272, size: 64)
!6272 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6273, line: 11, flags: DIFlagFwdDecl)
!6273 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6274 = distinct !DISubprogram(name: "kmalloc_type", scope: !165, file: !165, line: 401, type: !6275, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6277)
!6275 = !DISubroutineType(types: !6276)
!6276 = !{!164, !1126, !320}
!6277 = !{!6278, !6279}
!6278 = !DILocalVariable(name: "flags", arg: 1, scope: !6274, file: !165, line: 401, type: !1126)
!6279 = !DILocalVariable(name: "caller", arg: 2, scope: !6274, file: !165, line: 401, type: !320)
!6280 = !DILocation(line: 401, column: 67, scope: !6274)
!6281 = !DILocation(line: 401, column: 88, scope: !6274)
!6282 = !DILocation(line: 407, column: 6, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6274, file: !165, line: 407, column: 6)
!6284 = !DILocation(line: 407, column: 6, scope: !6274)
!6285 = !DILocation(line: 413, column: 3, scope: !6283)
!6286 = !DILocation(line: 423, column: 38, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6274, file: !165, line: 423, column: 6)
!6288 = !DILocation(line: 423, column: 44, scope: !6287)
!6289 = !DILocation(line: 423, column: 6, scope: !6274)
!6290 = !DILocation(line: 424, column: 3, scope: !6287)
!6291 = !DILocation(line: 426, column: 3, scope: !6292)
!6292 = distinct !DILexicalBlock(scope: !6274, file: !165, line: 425, column: 6)
!6293 = !DILocation(line: 429, column: 1, scope: !6274)
!6294 = !DISubprogram(name: "__kmalloc", scope: !165, file: !165, line: 488, type: !5180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6295 = !DISubprogram(name: "__compiletime_assert_204", scope: !165, file: !165, line: 478, type: !977, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
