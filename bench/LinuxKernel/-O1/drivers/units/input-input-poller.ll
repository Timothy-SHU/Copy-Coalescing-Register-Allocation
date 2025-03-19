; ModuleID = 'drivers/input/input-poller.c'
source_filename = "drivers/input/input-poller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_setup_polling: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_setup_polling ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_set_poll_interval: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_set_poll_interval ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_set_min_poll_interval: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_set_min_poll_interval ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_set_max_poll_interval: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_set_max_poll_interval ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_input_get_poll_interval: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad input_get_poll_interval ; .previous"

%struct.lock_class_key = type {}
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.input_dev_poller = type { ptr, i32, i32, i32, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i64], [1 x i64], [12 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [1 x i64], [2 x i64], [1 x i64], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [12 x i64], [1 x i64], [1 x i64], [1 x i64], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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

@.str = private unnamed_addr constant [41 x i8] c"%s: unable to allocate poller structure\0A\00", align 1, !dbg !0
@__func__.input_setup_polling = private unnamed_addr constant [20 x i8] c"input_setup_polling\00", align 1, !dbg !7
@input_setup_polling.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !13
@__UNIQUE_ID___addressable_input_setup_polling267 = internal global ptr @input_setup_polling, section ".discard.addressable", align 8, !dbg !4584
@__UNIQUE_ID___addressable_input_set_poll_interval268 = internal global ptr @input_set_poll_interval, section ".discard.addressable", align 8, !dbg !4586
@__UNIQUE_ID___addressable_input_set_min_poll_interval269 = internal global ptr @input_set_min_poll_interval, section ".discard.addressable", align 8, !dbg !4588
@__UNIQUE_ID___addressable_input_set_max_poll_interval270 = internal global ptr @input_set_max_poll_interval, section ".discard.addressable", align 8, !dbg !4590
@__UNIQUE_ID___addressable_input_get_poll_interval271 = internal global ptr @input_get_poll_interval, section ".discard.addressable", align 8, !dbg !4592
@input_poller_attrs = internal global [4 x ptr] [ptr @dev_attr_poll, ptr @dev_attr_max, ptr @dev_attr_min, ptr null], align 16, !dbg !4606
@input_poller_attribute_group = hidden global %struct.attribute_group { ptr null, ptr @input_poller_attrs_visible, ptr null, ptr @input_poller_attrs, ptr null }, align 8, !dbg !4594
@system_freezable_wq = external dso_local global ptr, align 8
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4596
@.str.2 = private unnamed_addr constant [38 x i8] c"poller structure has not been set up\0A\00", align 1, !dbg !4601
@dev_attr_poll = internal global %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420 }, ptr @input_dev_get_poll_interval, ptr @input_dev_set_poll_interval }, align 8, !dbg !4614
@dev_attr_max = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292 }, ptr @input_dev_get_poll_max, ptr null }, align 8, !dbg !4633
@dev_attr_min = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @input_dev_get_poll_min, ptr null }, align 8, !dbg !4637
@.str.3 = private unnamed_addr constant [5 x i8] c"poll\00", align 1, !dbg !4609
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !4628
@.str.5 = private unnamed_addr constant [4 x i8] c"max\00", align 1, !dbg !4631
@.str.6 = private unnamed_addr constant [4 x i8] c"min\00", align 1, !dbg !4635
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_input_setup_polling267, ptr @__UNIQUE_ID___addressable_input_set_poll_interval268, ptr @__UNIQUE_ID___addressable_input_set_min_poll_interval269, ptr @__UNIQUE_ID___addressable_input_set_max_poll_interval270, ptr @__UNIQUE_ID___addressable_input_get_poll_interval271], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_dev_poller_finalize(ptr noundef %poller) #0 align 16 !dbg !4652 {
entry:
  %poller.addr = alloca ptr, align 8
  store ptr %poller, ptr %poller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %poller.addr, metadata !4656, metadata !DIExpression()), !dbg !4657
  %0 = load ptr, ptr %poller.addr, align 8, !dbg !4658
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 1, !dbg !4660
  %1 = load i32, ptr %poll_interval, align 8, !dbg !4660
  %tobool = icmp ne i32 %1, 0, !dbg !4658
  br i1 %tobool, label %if.end, label %if.then, !dbg !4661

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %poller.addr, align 8, !dbg !4662
  %poll_interval1 = getelementptr inbounds %struct.input_dev_poller, ptr %2, i32 0, i32 1, !dbg !4663
  store i32 500, ptr %poll_interval1, align 8, !dbg !4664
  br label %if.end, !dbg !4662

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %poller.addr, align 8, !dbg !4665
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %3, i32 0, i32 2, !dbg !4667
  %4 = load i32, ptr %poll_interval_max, align 4, !dbg !4667
  %tobool2 = icmp ne i32 %4, 0, !dbg !4665
  br i1 %tobool2, label %if.end6, label %if.then3, !dbg !4668

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %poller.addr, align 8, !dbg !4669
  %poll_interval4 = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 1, !dbg !4670
  %6 = load i32, ptr %poll_interval4, align 8, !dbg !4670
  %7 = load ptr, ptr %poller.addr, align 8, !dbg !4671
  %poll_interval_max5 = getelementptr inbounds %struct.input_dev_poller, ptr %7, i32 0, i32 2, !dbg !4672
  store i32 %6, ptr %poll_interval_max5, align 4, !dbg !4673
  br label %if.end6, !dbg !4671

if.end6:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !4674
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_dev_poller_start(ptr noundef %poller) #0 align 16 !dbg !4675 {
entry:
  %poller.addr = alloca ptr, align 8
  store ptr %poller, ptr %poller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %poller.addr, metadata !4677, metadata !DIExpression()), !dbg !4678
  %0 = load ptr, ptr %poller.addr, align 8, !dbg !4679
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 1, !dbg !4681
  %1 = load i32, ptr %poll_interval, align 8, !dbg !4681
  %cmp = icmp ugt i32 %1, 0, !dbg !4682
  br i1 %cmp, label %if.then, label %if.end, !dbg !4683

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %poller.addr, align 8, !dbg !4684
  %poll = getelementptr inbounds %struct.input_dev_poller, ptr %2, i32 0, i32 0, !dbg !4686
  %3 = load ptr, ptr %poll, align 8, !dbg !4686
  %4 = load ptr, ptr %poller.addr, align 8, !dbg !4687
  %input = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 4, !dbg !4688
  %5 = load ptr, ptr %input, align 8, !dbg !4688
  call void %3(ptr noundef %5) #15, !dbg !4684
  %6 = load ptr, ptr %poller.addr, align 8, !dbg !4689
  call void @input_dev_poller_queue_work(ptr noundef %6) #15, !dbg !4690
  br label %if.end, !dbg !4691

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4692
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_dev_poller_queue_work(ptr noundef %poller) #0 align 16 !dbg !4693 {
entry:
  %poller.addr = alloca ptr, align 8
  %delay = alloca i64, align 8
  store ptr %poller, ptr %poller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %poller.addr, metadata !4695, metadata !DIExpression()), !dbg !4697
  call void @llvm.lifetime.start.p0(i64 8, ptr %delay) #16, !dbg !4698
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !4696, metadata !DIExpression()), !dbg !4699
  %0 = load ptr, ptr %poller.addr, align 8, !dbg !4700
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 1, !dbg !4701
  %1 = load i32, ptr %poll_interval, align 8, !dbg !4701
  %call = call i64 @msecs_to_jiffies(i32 noundef %1) #15, !dbg !4702
  store i64 %call, ptr %delay, align 8, !dbg !4703
  %2 = load i64, ptr %delay, align 8, !dbg !4704
  %cmp = icmp uge i64 %2, 1000, !dbg !4706
  br i1 %cmp, label %if.then, label %if.end, !dbg !4707

if.then:                                          ; preds = %entry
  %3 = load i64, ptr %delay, align 8, !dbg !4708
  %call1 = call i64 @round_jiffies_relative(i64 noundef %3) #15, !dbg !4709
  store i64 %call1, ptr %delay, align 8, !dbg !4710
  br label %if.end, !dbg !4711

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr @system_freezable_wq, align 8, !dbg !4712
  %5 = load ptr, ptr %poller.addr, align 8, !dbg !4713
  %work = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 5, !dbg !4714
  %6 = load i64, ptr %delay, align 8, !dbg !4715
  %call2 = call zeroext i1 @queue_delayed_work(ptr noundef %4, ptr noundef %work, i64 noundef %6) #15, !dbg !4716
  call void @llvm.lifetime.end.p0(i64 8, ptr %delay) #16, !dbg !4717
  ret void, !dbg !4717
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_dev_poller_stop(ptr noundef %poller) #0 align 16 !dbg !4718 {
entry:
  %poller.addr = alloca ptr, align 8
  store ptr %poller, ptr %poller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %poller.addr, metadata !4720, metadata !DIExpression()), !dbg !4721
  %0 = load ptr, ptr %poller.addr, align 8, !dbg !4722
  %work = getelementptr inbounds %struct.input_dev_poller, ptr %0, i32 0, i32 5, !dbg !4723
  %call = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #15, !dbg !4724
  ret void, !dbg !4725
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4726 dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_setup_polling(ptr noundef %dev, ptr noundef %poll_fn) #0 align 16 !dbg !15 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %poll_fn.addr = alloca ptr, align 8
  %poller = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %.compoundliteral = alloca %struct.atomic64_t, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4640, metadata !DIExpression()), !dbg !4730
  store ptr %poll_fn, ptr %poll_fn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %poll_fn.addr, metadata !4641, metadata !DIExpression()), !dbg !4731
  call void @llvm.lifetime.start.p0(i64 8, ptr %poller) #16, !dbg !4732
  call void @llvm.dbg.declare(metadata ptr %poller, metadata !4642, metadata !DIExpression()), !dbg !4733
  %call = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #17, !dbg !4734
  store ptr %call, ptr %poller, align 8, !dbg !4735
  %0 = load ptr, ptr %poller, align 8, !dbg !4736
  %tobool = icmp ne ptr %0, null, !dbg !4736
  br i1 %tobool, label %if.end, label %if.then, !dbg !4738

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4739

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !4742

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4742

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !4739
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 40, !dbg !4739
  %parent = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 1, !dbg !4739
  %2 = load ptr, ptr %parent, align 8, !dbg !4739
  %tobool2 = icmp ne ptr %2, null, !dbg !4739
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4739

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !4739

cond.false:                                       ; preds = %do.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !4739
  %dev3 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, !dbg !4739
  br label %cond.end, !dbg !4739

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ %dev3, %cond.false ], !dbg !4739
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %cond, ptr noundef @.str, ptr noundef @__func__.input_setup_polling) #18, !dbg !4739
  store i32 -12, ptr %retval, align 4, !dbg !4744
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4744

if.end:                                           ; preds = %entry
  br label %do.body4, !dbg !4745

do.body4:                                         ; preds = %if.end
  br label %do.body5, !dbg !4746

do.body5:                                         ; preds = %do.body4
  br label %do.body6, !dbg !4748

do.body6:                                         ; preds = %do.body5
  %4 = load ptr, ptr %poller, align 8, !dbg !4750
  %work = getelementptr inbounds %struct.input_dev_poller, ptr %4, i32 0, i32 5, !dbg !4750
  %work7 = getelementptr inbounds %struct.delayed_work, ptr %work, i32 0, i32 0, !dbg !4750
  call void @__init_work(ptr noundef %work7, i32 noundef 0) #15, !dbg !4750
  %5 = load ptr, ptr %poller, align 8, !dbg !4750
  %work8 = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 5, !dbg !4750
  %work9 = getelementptr inbounds %struct.delayed_work, ptr %work8, i32 0, i32 0, !dbg !4750
  %data = getelementptr inbounds %struct.work_struct, ptr %work9, i32 0, i32 0, !dbg !4750
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !4750
  store i64 68719476704, ptr %counter, align 8, !dbg !4750
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral, i64 8, i1 false), !dbg !4750
  %6 = load ptr, ptr %poller, align 8, !dbg !4750
  %work10 = getelementptr inbounds %struct.input_dev_poller, ptr %6, i32 0, i32 5, !dbg !4750
  %work11 = getelementptr inbounds %struct.delayed_work, ptr %work10, i32 0, i32 0, !dbg !4750
  %entry12 = getelementptr inbounds %struct.work_struct, ptr %work11, i32 0, i32 1, !dbg !4750
  call void @INIT_LIST_HEAD(ptr noundef %entry12) #15, !dbg !4750
  %7 = load ptr, ptr %poller, align 8, !dbg !4750
  %work13 = getelementptr inbounds %struct.input_dev_poller, ptr %7, i32 0, i32 5, !dbg !4750
  %work14 = getelementptr inbounds %struct.delayed_work, ptr %work13, i32 0, i32 0, !dbg !4750
  %func = getelementptr inbounds %struct.work_struct, ptr %work14, i32 0, i32 2, !dbg !4750
  store ptr @input_dev_poller_work, ptr %func, align 8, !dbg !4750
  br label %do.cond15, !dbg !4750

do.cond15:                                        ; preds = %do.body6
  br label %do.end16, !dbg !4750

do.end16:                                         ; preds = %do.cond15
  br label %do.cond17, !dbg !4748

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !4748

do.end18:                                         ; preds = %do.cond17
  %8 = load ptr, ptr %poller, align 8, !dbg !4746
  %work19 = getelementptr inbounds %struct.input_dev_poller, ptr %8, i32 0, i32 5, !dbg !4746
  %timer = getelementptr inbounds %struct.delayed_work, ptr %work19, i32 0, i32 1, !dbg !4746
  call void @init_timer_key(ptr noundef %timer, ptr noundef @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #15, !dbg !4746
  br label %do.cond20, !dbg !4746

do.cond20:                                        ; preds = %do.end18
  br label %do.end21, !dbg !4746

do.end21:                                         ; preds = %do.cond20
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !4752
  %10 = load ptr, ptr %poller, align 8, !dbg !4753
  %input = getelementptr inbounds %struct.input_dev_poller, ptr %10, i32 0, i32 4, !dbg !4754
  store ptr %9, ptr %input, align 8, !dbg !4755
  %11 = load ptr, ptr %poll_fn.addr, align 8, !dbg !4756
  %12 = load ptr, ptr %poller, align 8, !dbg !4757
  %poll = getelementptr inbounds %struct.input_dev_poller, ptr %12, i32 0, i32 0, !dbg !4758
  store ptr %11, ptr %poll, align 8, !dbg !4759
  %13 = load ptr, ptr %poller, align 8, !dbg !4760
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !4761
  %poller22 = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 21, !dbg !4762
  store ptr %13, ptr %poller22, align 8, !dbg !4763
  store i32 0, ptr %retval, align 4, !dbg !4764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4764

cleanup:                                          ; preds = %do.end21, %cond.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %poller) #16, !dbg !4765
  %15 = load i32, ptr %retval, align 4, !dbg !4765
  ret i32 %15, !dbg !4765
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !4766 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4770, metadata !DIExpression()), !dbg !4772
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4771, metadata !DIExpression()), !dbg !4773
  %0 = load i64, ptr %size.addr, align 8, !dbg !4774
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4775
  %or = or i32 %1, 256, !dbg !4776
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !4777
  ret ptr %call, !dbg !4778
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4779 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #6 align 16 !dbg !4783 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4787, metadata !DIExpression()), !dbg !4789
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !4788, metadata !DIExpression()), !dbg !4790
  ret void, !dbg !4791
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #6 align 16 !dbg !4792 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !4797, metadata !DIExpression()), !dbg !4798
  br label %do.body, !dbg !4799

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4800

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4802

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4800

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !4804
  %1 = load ptr, ptr %list.addr, align 8, !dbg !4804
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4804
  store volatile ptr %0, ptr %next, align 8, !dbg !4804
  br label %do.end3, !dbg !4804

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4800

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !4806

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !4807

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !4809

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !4807

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !4811
  %3 = load ptr, ptr %list.addr, align 8, !dbg !4811
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4811
  store volatile ptr %2, ptr %prev, align 8, !dbg !4811
  br label %do.end9, !dbg !4811

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !4807

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !4813
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @input_dev_poller_work(ptr noundef %work) #0 align 16 !dbg !4814 {
entry:
  %work.addr = alloca ptr, align 8
  %poller = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !4816, metadata !DIExpression()), !dbg !4820
  call void @llvm.lifetime.start.p0(i64 8, ptr %poller) #16, !dbg !4821
  call void @llvm.dbg.declare(metadata ptr %poller, metadata !4817, metadata !DIExpression()), !dbg !4822
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4823
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4818, metadata !DIExpression()), !dbg !4823
  %0 = load ptr, ptr %work.addr, align 8, !dbg !4823
  store ptr %0, ptr %__mptr, align 8, !dbg !4823
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4823
  %add.ptr = getelementptr i8, ptr %1, i64 -32, !dbg !4823
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4823
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4824
  %2 = load ptr, ptr %tmp, align 8, !dbg !4823
  store ptr %2, ptr %poller, align 8, !dbg !4822
  %3 = load ptr, ptr %poller, align 8, !dbg !4825
  %poll = getelementptr inbounds %struct.input_dev_poller, ptr %3, i32 0, i32 0, !dbg !4826
  %4 = load ptr, ptr %poll, align 8, !dbg !4826
  %5 = load ptr, ptr %poller, align 8, !dbg !4827
  %input = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 4, !dbg !4828
  %6 = load ptr, ptr %input, align 8, !dbg !4828
  call void %4(ptr noundef %6) #15, !dbg !4825
  %7 = load ptr, ptr %poller, align 8, !dbg !4829
  call void @input_dev_poller_queue_work(ptr noundef %7) #15, !dbg !4830
  call void @llvm.lifetime.end.p0(i64 8, ptr %poller) #16, !dbg !4831
  ret void, !dbg !4831
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4832 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_set_poll_interval(ptr noundef %dev, i32 noundef %interval) #0 align 16 !dbg !4836 {
entry:
  %dev.addr = alloca ptr, align 8
  %interval.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4840, metadata !DIExpression()), !dbg !4842
  store i32 %interval, ptr %interval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interval.addr, metadata !4841, metadata !DIExpression()), !dbg !4843
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4844
  %call = call zeroext i1 @input_dev_ensure_poller(ptr noundef %0) #15, !dbg !4846
  br i1 %call, label %if.then, label %if.end, !dbg !4847

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %interval.addr, align 4, !dbg !4848
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4849
  %poller = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 21, !dbg !4850
  %3 = load ptr, ptr %poller, align 8, !dbg !4850
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %3, i32 0, i32 1, !dbg !4851
  store i32 %1, ptr %poll_interval, align 8, !dbg !4852
  br label %if.end, !dbg !4849

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4853
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @input_dev_ensure_poller(ptr noundef %dev) #0 align 16 !dbg !4854 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4858, metadata !DIExpression()), !dbg !4859
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4860
  %poller = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21, !dbg !4862
  %1 = load ptr, ptr %poller, align 8, !dbg !4862
  %tobool = icmp ne ptr %1, null, !dbg !4860
  br i1 %tobool, label %if.end, label %if.then, !dbg !4863

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4864

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4867

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4864
  %dev1 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 40, !dbg !4864
  %parent = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 1, !dbg !4864
  %3 = load ptr, ptr %parent, align 8, !dbg !4864
  %tobool2 = icmp ne ptr %3, null, !dbg !4864
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4864

cond.true:                                        ; preds = %do.end
  br label %cond.end, !dbg !4864

cond.false:                                       ; preds = %do.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !4864
  %dev3 = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 40, !dbg !4864
  br label %cond.end, !dbg !4864

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %3, %cond.true ], [ %dev3, %cond.false ], !dbg !4864
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %cond, ptr noundef @.str.2) #18, !dbg !4864
  store i1 false, ptr %retval, align 1, !dbg !4869
  br label %return, !dbg !4869

if.end:                                           ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !4870
  br label %return, !dbg !4870

return:                                           ; preds = %if.end, %cond.end
  %5 = load i1, ptr %retval, align 1, !dbg !4871
  ret i1 %5, !dbg !4871
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_set_min_poll_interval(ptr noundef %dev, i32 noundef %interval) #0 align 16 !dbg !4872 {
entry:
  %dev.addr = alloca ptr, align 8
  %interval.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4874, metadata !DIExpression()), !dbg !4876
  store i32 %interval, ptr %interval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interval.addr, metadata !4875, metadata !DIExpression()), !dbg !4877
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4878
  %call = call zeroext i1 @input_dev_ensure_poller(ptr noundef %0) #15, !dbg !4880
  br i1 %call, label %if.then, label %if.end, !dbg !4881

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %interval.addr, align 4, !dbg !4882
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4883
  %poller = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 21, !dbg !4884
  %3 = load ptr, ptr %poller, align 8, !dbg !4884
  %poll_interval_min = getelementptr inbounds %struct.input_dev_poller, ptr %3, i32 0, i32 3, !dbg !4885
  store i32 %1, ptr %poll_interval_min, align 8, !dbg !4886
  br label %if.end, !dbg !4883

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4887
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @input_set_max_poll_interval(ptr noundef %dev, i32 noundef %interval) #0 align 16 !dbg !4888 {
entry:
  %dev.addr = alloca ptr, align 8
  %interval.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4890, metadata !DIExpression()), !dbg !4892
  store i32 %interval, ptr %interval.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %interval.addr, metadata !4891, metadata !DIExpression()), !dbg !4893
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4894
  %call = call zeroext i1 @input_dev_ensure_poller(ptr noundef %0) #15, !dbg !4896
  br i1 %call, label %if.then, label %if.end, !dbg !4897

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %interval.addr, align 4, !dbg !4898
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4899
  %poller = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 21, !dbg !4900
  %3 = load ptr, ptr %poller, align 8, !dbg !4900
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %3, i32 0, i32 2, !dbg !4901
  store i32 %1, ptr %poll_interval_max, align 4, !dbg !4902
  br label %if.end, !dbg !4899

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4903
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @input_get_poll_interval(ptr noundef %dev) #0 align 16 !dbg !4904 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4906, metadata !DIExpression()), !dbg !4907
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4908
  %poller = getelementptr inbounds %struct.input_dev, ptr %0, i32 0, i32 21, !dbg !4910
  %1 = load ptr, ptr %poller, align 8, !dbg !4910
  %tobool = icmp ne ptr %1, null, !dbg !4908
  br i1 %tobool, label %if.end, label %if.then, !dbg !4911

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4912
  br label %return, !dbg !4912

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4913
  %poller1 = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 21, !dbg !4914
  %3 = load ptr, ptr %poller1, align 8, !dbg !4914
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %3, i32 0, i32 1, !dbg !4915
  %4 = load i32, ptr %poll_interval, align 8, !dbg !4915
  store i32 %4, ptr %retval, align 4, !dbg !4916
  br label %return, !dbg !4916

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !4917
  ret i32 %5, !dbg !4917
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i16 @input_poller_attrs_visible(ptr noundef %kobj, ptr noundef %attr, i32 noundef %n) #0 align 16 !dbg !4918 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %input = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4920, metadata !DIExpression()), !dbg !4929
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4921, metadata !DIExpression()), !dbg !4930
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4922, metadata !DIExpression()), !dbg !4931
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #16, !dbg !4932
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !4923, metadata !DIExpression()), !dbg !4933
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !4934
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4924, metadata !DIExpression()), !dbg !4934
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4934
  store ptr %0, ptr %__mptr, align 8, !dbg !4934
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4934
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4934
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4934
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !4935
  %2 = load ptr, ptr %tmp, align 8, !dbg !4934
  store ptr %2, ptr %dev, align 8, !dbg !4933
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #16, !dbg !4936
  call void @llvm.dbg.declare(metadata ptr %input, metadata !4926, metadata !DIExpression()), !dbg !4937
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !4938
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !4927, metadata !DIExpression()), !dbg !4938
  %3 = load ptr, ptr %dev, align 8, !dbg !4938
  store ptr %3, ptr %__mptr1, align 8, !dbg !4938
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !4938
  %add.ptr3 = getelementptr i8, ptr %4, i64 -544, !dbg !4938
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !4938
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !4939
  %5 = load ptr, ptr %tmp2, align 8, !dbg !4938
  store ptr %5, ptr %input, align 8, !dbg !4937
  %6 = load ptr, ptr %input, align 8, !dbg !4940
  %poller = getelementptr inbounds %struct.input_dev, ptr %6, i32 0, i32 21, !dbg !4941
  %7 = load ptr, ptr %poller, align 8, !dbg !4941
  %tobool = icmp ne ptr %7, null, !dbg !4940
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4940

cond.true:                                        ; preds = %entry
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !4942
  %mode = getelementptr inbounds %struct.attribute, ptr %8, i32 0, i32 1, !dbg !4943
  %9 = load i16, ptr %mode, align 8, !dbg !4943
  %conv = zext i16 %9 to i32, !dbg !4942
  br label %cond.end, !dbg !4940

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4940

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ 0, %cond.false ], !dbg !4940
  %conv4 = trunc i32 %cond to i16, !dbg !4940
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #16, !dbg !4944
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #16, !dbg !4944
  ret i16 %conv4, !dbg !4945
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #8 align 16 !dbg !4946 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4951, metadata !DIExpression()), !dbg !4952
  %0 = load i32, ptr %m.addr, align 4, !dbg !4953
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4955
  br i1 %1, label %if.then, label %if.else, !dbg !4956

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !4957
  %cmp = icmp slt i32 %2, 0, !dbg !4960
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4961

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !4962
  br label %return, !dbg !4962

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !4963
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #15, !dbg !4964
  store i64 %call, ptr %retval, align 8, !dbg !4965
  br label %return, !dbg !4965

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !4966
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #15, !dbg !4968
  store i64 %call2, ptr %retval, align 8, !dbg !4969
  br label %return, !dbg !4969

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !4970
  ret i64 %5, !dbg !4970
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4971 dso_local i64 @round_jiffies_relative(i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #6 align 16 !dbg !4974 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !4978, metadata !DIExpression()), !dbg !4981
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !4979, metadata !DIExpression()), !dbg !4982
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !4980, metadata !DIExpression()), !dbg !4983
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !4984
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !4985
  %2 = load i64, ptr %delay.addr, align 8, !dbg !4986
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #15, !dbg !4987
  ret i1 %call, !dbg !4988
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #6 align 16 !dbg !4989 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4991, metadata !DIExpression()), !dbg !4992
  %0 = load i32, ptr %m.addr, align 4, !dbg !4993
  %conv = zext i32 %0 to i64, !dbg !4993
  %add = add i64 %conv, 1, !dbg !4994
  %sub = sub i64 %add, 1, !dbg !4995
  %div = sdiv i64 %sub, 1, !dbg !4996
  ret i64 %div, !dbg !4997
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4998 dso_local i64 @__msecs_to_jiffies(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4999 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !5002 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5004, metadata !DIExpression()), !dbg !5009
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5005, metadata !DIExpression()), !dbg !5010
  %0 = load i64, ptr %size.addr, align 8, !dbg !5011
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5012
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !5013

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5014
  %tobool = icmp ne i64 %2, 0, !dbg !5014
  br i1 %tobool, label %if.then, label %if.end7, !dbg !5015

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !5016
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5006, metadata !DIExpression()), !dbg !5017
  %3 = load i64, ptr %size.addr, align 8, !dbg !5018
  %cmp = icmp ugt i64 %3, 8192, !dbg !5020
  br i1 %cmp, label %if.then1, label %if.end, !dbg !5021

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !5022
  %5 = load i32, ptr %flags.addr, align 4, !dbg !5023
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !5024
  store ptr %call, ptr %retval, align 8, !dbg !5025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5025

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5026
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !5026
  store i32 %call2, ptr %index, align 4, !dbg !5027
  %7 = load i32, ptr %flags.addr, align 4, !dbg !5028
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !5029
  %9 = ptrtoint ptr %8 to i64, !dbg !5029
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !5030
  %idxprom = zext i32 %call3 to i64, !dbg !5031
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !5031
  %10 = load i32, ptr %index, align 4, !dbg !5032
  %idxprom4 = zext i32 %10 to i64, !dbg !5031
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !5031
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !5031
  %12 = load i32, ptr %flags.addr, align 4, !dbg !5033
  %13 = load i64, ptr %size.addr, align 8, !dbg !5034
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !5035
  store ptr %call6, ptr %retval, align 8, !dbg !5036
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5036

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !5037
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !5038
  %15 = load i32, ptr %flags.addr, align 4, !dbg !5039
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !5040
  store ptr %call8, ptr %retval, align 8, !dbg !5041
  br label %return, !dbg !5041

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !5042
  ret ptr %16, !dbg !5042
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5043 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !5044 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5048, metadata !DIExpression()), !dbg !5050
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5049, metadata !DIExpression()), !dbg !5051
  %0 = load i64, ptr %size.addr, align 8, !dbg !5052
  %tobool = icmp ne i64 %0, 0, !dbg !5052
  br i1 %tobool, label %if.end, label %if.then, !dbg !5054

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5055
  br label %return, !dbg !5055

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5056
  %cmp = icmp ule i64 %1, 8, !dbg !5058
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5059

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5060
  br label %return, !dbg !5060

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5061
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5063
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5064

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5065
  %cmp4 = icmp ule i64 %3, 96, !dbg !5066
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5067

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5068
  br label %return, !dbg !5068

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5069
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5071
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5072

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5073
  %cmp9 = icmp ule i64 %5, 192, !dbg !5074
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5075

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5076
  br label %return, !dbg !5076

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5077
  %cmp12 = icmp ule i64 %6, 8, !dbg !5079
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5080

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5081
  br label %return, !dbg !5081

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5082
  %cmp15 = icmp ule i64 %7, 16, !dbg !5084
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5085

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5086
  br label %return, !dbg !5086

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5087
  %cmp18 = icmp ule i64 %8, 32, !dbg !5089
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5090

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5091
  br label %return, !dbg !5091

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5092
  %cmp21 = icmp ule i64 %9, 64, !dbg !5094
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5095

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5096
  br label %return, !dbg !5096

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5097
  %cmp24 = icmp ule i64 %10, 128, !dbg !5099
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5100

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5101
  br label %return, !dbg !5101

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5102
  %cmp27 = icmp ule i64 %11, 256, !dbg !5104
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5105

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5106
  br label %return, !dbg !5106

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5107
  %cmp30 = icmp ule i64 %12, 512, !dbg !5109
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5110

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5111
  br label %return, !dbg !5111

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5112
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5114
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5115

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5116
  br label %return, !dbg !5116

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5117
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5119
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5120

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5121
  br label %return, !dbg !5121

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5122
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5124
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5125

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5126
  br label %return, !dbg !5126

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5127
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5129
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5130

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5131
  br label %return, !dbg !5131

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5132
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5134
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5135

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5136
  br label %return, !dbg !5136

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5137
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5139
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5140

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5141
  br label %return, !dbg !5141

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5142
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5144
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5145

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5146
  br label %return, !dbg !5146

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5147
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5149
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5150

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5151
  br label %return, !dbg !5151

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5152
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5154
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5155

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5156
  br label %return, !dbg !5156

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5157
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5159
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5160

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5161
  br label %return, !dbg !5161

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5162
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5164
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5165

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5166
  br label %return, !dbg !5166

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5167
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5169
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5170

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5171
  br label %return, !dbg !5171

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5172, !range !5174, !noundef !1347
  %tobool69 = trunc i8 %25 to i1, !dbg !5172
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5175

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5176

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_263() #20, !dbg !5177, !srcloc !5180
  unreachable, !dbg !5177

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5181

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5182

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5183

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5185

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5183

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #16, !dbg !5187, !srcloc !5189
  br label %do.end75, !dbg !5187

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5183

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5190
  br label %return, !dbg !5190

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5191
  ret i32 %26, !dbg !5191
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5192 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !5198 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5202, metadata !DIExpression()), !dbg !5204
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5203, metadata !DIExpression()), !dbg !5205
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5206
  %and = and i32 %0, 17, !dbg !5206
  %cmp = icmp eq i32 %and, 0, !dbg !5206
  %lnot = xor i1 %cmp, true, !dbg !5206
  %lnot1 = xor i1 %lnot, true, !dbg !5206
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5206
  %conv = sext i32 %lnot.ext to i64, !dbg !5206
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5206
  %tobool = icmp ne i64 %expval, 0, !dbg !5206
  br i1 %tobool, label %if.then, label %if.end, !dbg !5208

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5209
  br label %return, !dbg !5209

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5210
  %and2 = and i32 %1, 1, !dbg !5212
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5212
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5213

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5214
  br label %return, !dbg !5214

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5215
  br label %return, !dbg !5215

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5217
  ret i32 %2, !dbg !5217
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5218 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5219 dso_local void @__compiletime_assert_263() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @input_dev_get_poll_interval(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5220 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %input = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5222, metadata !DIExpression()), !dbg !5228
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5223, metadata !DIExpression()), !dbg !5229
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5224, metadata !DIExpression()), !dbg !5230
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #16, !dbg !5231
  call void @llvm.dbg.declare(metadata ptr %input, metadata !5225, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5226, metadata !DIExpression()), !dbg !5233
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5233
  store ptr %0, ptr %__mptr, align 8, !dbg !5233
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5233
  %add.ptr = getelementptr i8, ptr %1, i64 -544, !dbg !5233
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5234
  %2 = load ptr, ptr %tmp, align 8, !dbg !5233
  store ptr %2, ptr %input, align 8, !dbg !5232
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5235
  %4 = load ptr, ptr %input, align 8, !dbg !5236
  %poller = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 21, !dbg !5237
  %5 = load ptr, ptr %poller, align 8, !dbg !5237
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 1, !dbg !5238
  %6 = load i32, ptr %poll_interval, align 8, !dbg !5238
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.4, i32 noundef %6) #15, !dbg !5239
  %conv = sext i32 %call to i64, !dbg !5239
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #16, !dbg !5240
  ret i64 %conv, !dbg !5241
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @input_dev_set_poll_interval(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !5242 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %input = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %poller = alloca ptr, align 8
  %interval = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5244, metadata !DIExpression()), !dbg !5254
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5245, metadata !DIExpression()), !dbg !5255
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5246, metadata !DIExpression()), !dbg !5256
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5247, metadata !DIExpression()), !dbg !5257
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #16, !dbg !5258
  call void @llvm.dbg.declare(metadata ptr %input, metadata !5248, metadata !DIExpression()), !dbg !5259
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5260
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5249, metadata !DIExpression()), !dbg !5260
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5260
  store ptr %0, ptr %__mptr, align 8, !dbg !5260
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5260
  %add.ptr = getelementptr i8, ptr %1, i64 -544, !dbg !5260
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5260
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5261
  %2 = load ptr, ptr %tmp, align 8, !dbg !5260
  store ptr %2, ptr %input, align 8, !dbg !5259
  call void @llvm.lifetime.start.p0(i64 8, ptr %poller) #16, !dbg !5262
  call void @llvm.dbg.declare(metadata ptr %poller, metadata !5251, metadata !DIExpression()), !dbg !5263
  %3 = load ptr, ptr %input, align 8, !dbg !5264
  %poller1 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 21, !dbg !5265
  %4 = load ptr, ptr %poller1, align 8, !dbg !5265
  store ptr %4, ptr %poller, align 8, !dbg !5263
  call void @llvm.lifetime.start.p0(i64 4, ptr %interval) #16, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %interval, metadata !5252, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #16, !dbg !5268
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5253, metadata !DIExpression()), !dbg !5269
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5270
  %call = call i32 @kstrtouint(ptr noundef %5, i32 noundef 0, ptr noundef %interval) #15, !dbg !5271
  store i32 %call, ptr %err, align 4, !dbg !5272
  %6 = load i32, ptr %err, align 4, !dbg !5273
  %tobool = icmp ne i32 %6, 0, !dbg !5273
  br i1 %tobool, label %if.then, label %if.end, !dbg !5275

if.then:                                          ; preds = %entry
  %7 = load i32, ptr %err, align 4, !dbg !5276
  %conv = sext i32 %7 to i64, !dbg !5276
  store i64 %conv, ptr %retval, align 8, !dbg !5277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5277

if.end:                                           ; preds = %entry
  %8 = load i32, ptr %interval, align 4, !dbg !5278
  %9 = load ptr, ptr %poller, align 8, !dbg !5280
  %poll_interval_min = getelementptr inbounds %struct.input_dev_poller, ptr %9, i32 0, i32 3, !dbg !5281
  %10 = load i32, ptr %poll_interval_min, align 8, !dbg !5281
  %cmp = icmp ult i32 %8, %10, !dbg !5282
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !5283

if.then3:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !5284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5284

if.end4:                                          ; preds = %if.end
  %11 = load i32, ptr %interval, align 4, !dbg !5285
  %12 = load ptr, ptr %poller, align 8, !dbg !5287
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %12, i32 0, i32 2, !dbg !5288
  %13 = load i32, ptr %poll_interval_max, align 4, !dbg !5288
  %cmp5 = icmp ugt i32 %11, %13, !dbg !5289
  br i1 %cmp5, label %if.then7, label %if.end8, !dbg !5290

if.then7:                                         ; preds = %if.end4
  store i64 -22, ptr %retval, align 8, !dbg !5291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5291

if.end8:                                          ; preds = %if.end4
  %14 = load ptr, ptr %input, align 8, !dbg !5292
  %mutex = getelementptr inbounds %struct.input_dev, ptr %14, i32 0, i32 37, !dbg !5293
  call void @mutex_lock(ptr noundef %mutex) #15, !dbg !5294
  %15 = load i32, ptr %interval, align 4, !dbg !5295
  %16 = load ptr, ptr %poller, align 8, !dbg !5296
  %poll_interval = getelementptr inbounds %struct.input_dev_poller, ptr %16, i32 0, i32 1, !dbg !5297
  store i32 %15, ptr %poll_interval, align 8, !dbg !5298
  %17 = load ptr, ptr %input, align 8, !dbg !5299
  %call9 = call zeroext i1 @input_device_enabled(ptr noundef %17) #15, !dbg !5301
  br i1 %call9, label %if.then10, label %if.end17, !dbg !5302

if.then10:                                        ; preds = %if.end8
  %18 = load ptr, ptr %poller, align 8, !dbg !5303
  %work = getelementptr inbounds %struct.input_dev_poller, ptr %18, i32 0, i32 5, !dbg !5305
  %call11 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #15, !dbg !5306
  %19 = load ptr, ptr %poller, align 8, !dbg !5307
  %poll_interval12 = getelementptr inbounds %struct.input_dev_poller, ptr %19, i32 0, i32 1, !dbg !5309
  %20 = load i32, ptr %poll_interval12, align 8, !dbg !5309
  %cmp13 = icmp ugt i32 %20, 0, !dbg !5310
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !5311

if.then15:                                        ; preds = %if.then10
  %21 = load ptr, ptr %poller, align 8, !dbg !5312
  call void @input_dev_poller_queue_work(ptr noundef %21) #15, !dbg !5313
  br label %if.end16, !dbg !5313

if.end16:                                         ; preds = %if.then15, %if.then10
  br label %if.end17, !dbg !5314

if.end17:                                         ; preds = %if.end16, %if.end8
  %22 = load ptr, ptr %input, align 8, !dbg !5315
  %mutex18 = getelementptr inbounds %struct.input_dev, ptr %22, i32 0, i32 37, !dbg !5316
  call void @mutex_unlock(ptr noundef %mutex18) #15, !dbg !5317
  %23 = load i64, ptr %count.addr, align 8, !dbg !5318
  store i64 %23, ptr %retval, align 8, !dbg !5319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5319

cleanup:                                          ; preds = %if.end17, %if.then7, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #16, !dbg !5320
  call void @llvm.lifetime.end.p0(i64 4, ptr %interval) #16, !dbg !5320
  call void @llvm.lifetime.end.p0(i64 8, ptr %poller) #16, !dbg !5320
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #16, !dbg !5320
  %24 = load i64, ptr %retval, align 8, !dbg !5320
  ret i64 %24, !dbg !5320
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5321 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5325 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5329 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5333 dso_local zeroext i1 @input_device_enabled(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5334 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @input_dev_get_poll_max(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5335 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %input = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5337, metadata !DIExpression()), !dbg !5343
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5338, metadata !DIExpression()), !dbg !5344
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5339, metadata !DIExpression()), !dbg !5345
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #16, !dbg !5346
  call void @llvm.dbg.declare(metadata ptr %input, metadata !5340, metadata !DIExpression()), !dbg !5347
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5348
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5341, metadata !DIExpression()), !dbg !5348
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5348
  store ptr %0, ptr %__mptr, align 8, !dbg !5348
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5348
  %add.ptr = getelementptr i8, ptr %1, i64 -544, !dbg !5348
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5348
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5349
  %2 = load ptr, ptr %tmp, align 8, !dbg !5348
  store ptr %2, ptr %input, align 8, !dbg !5347
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5350
  %4 = load ptr, ptr %input, align 8, !dbg !5351
  %poller = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 21, !dbg !5352
  %5 = load ptr, ptr %poller, align 8, !dbg !5352
  %poll_interval_max = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 2, !dbg !5353
  %6 = load i32, ptr %poll_interval_max, align 4, !dbg !5353
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.4, i32 noundef %6) #15, !dbg !5354
  %conv = sext i32 %call to i64, !dbg !5354
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #16, !dbg !5355
  ret i64 %conv, !dbg !5356
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @input_dev_get_poll_min(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5357 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %input = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5359, metadata !DIExpression()), !dbg !5365
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5360, metadata !DIExpression()), !dbg !5366
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5361, metadata !DIExpression()), !dbg !5367
  call void @llvm.lifetime.start.p0(i64 8, ptr %input) #16, !dbg !5368
  call void @llvm.dbg.declare(metadata ptr %input, metadata !5362, metadata !DIExpression()), !dbg !5369
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5370
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5363, metadata !DIExpression()), !dbg !5370
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5370
  store ptr %0, ptr %__mptr, align 8, !dbg !5370
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5370
  %add.ptr = getelementptr i8, ptr %1, i64 -544, !dbg !5370
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5371
  %2 = load ptr, ptr %tmp, align 8, !dbg !5370
  store ptr %2, ptr %input, align 8, !dbg !5369
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5372
  %4 = load ptr, ptr %input, align 8, !dbg !5373
  %poller = getelementptr inbounds %struct.input_dev, ptr %4, i32 0, i32 21, !dbg !5374
  %5 = load ptr, ptr %poller, align 8, !dbg !5374
  %poll_interval_min = getelementptr inbounds %struct.input_dev_poller, ptr %5, i32 0, i32 3, !dbg !5375
  %6 = load i32, ptr %poll_interval_min, align 8, !dbg !5375
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.4, i32 noundef %6) #15, !dbg !5376
  %conv = sext i32 %call to i64, !dbg !5376
  call void @llvm.lifetime.end.p0(i64 8, ptr %input) #16, !dbg !5377
  ret i64 %conv, !dbg !5378
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone }
attributes #16 = { nounwind }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!4538}
!llvm.module.flags = !{!4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650}
!llvm.ident = !{!4651}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/input/input-poller.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65ede6d9a54daa59cd8fe1bac0b5f52f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 20)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "__key", scope: !15, file: !2, line: 85, type: !2066, isLocal: true, isDefinition: true)
!15 = distinct !DISubprogram(name: "input_setup_polling", scope: !2, file: !2, line: 68, type: !16, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4639)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !3988}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev", file: !21, line: 137, size: 10880, elements: !22)
!21 = !DIFile(filename: "./include/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b25fc678586bfd50cf52e415a8b77c9")
!22 = !{!23, !25, !26, !27, !38, !43, !44, !48, !49, !50, !51, !52, !53, !57, !58, !60, !61, !62, !64, !84, !89, !3983, !3996, !3997, !3998, !4000, !4003, !4013, !4014, !4015, !4016, !4017, !4021, !4022, !4026, !4030, !4108, !4109, !4110, !4111, !4112, !4528, !4529, !4530, !4531, !4532, !4534, !4535, !4537}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !20, file: !21, line: 138, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !20, file: !21, line: 139, baseType: !24, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "uniq", scope: !20, file: !21, line: 140, baseType: !24, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !20, file: !21, line: 141, baseType: !28, size: 64, offset: 192)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_id", file: !29, line: 59, size: 64, elements: !30)
!29 = !DIFile(filename: "./include/uapi/linux/input.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48bb23414dcd9e3ab2349c2bc2e9cd2c")
!30 = !{!31, !35, !36, !37}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !28, file: !29, line: 60, baseType: !32, size: 16)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !34)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !28, file: !29, line: 61, baseType: !32, size: 16, offset: 16)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !28, file: !29, line: 62, baseType: !32, size: 16, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !28, file: !29, line: 63, baseType: !32, size: 16, offset: 48)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !20, file: !21, line: 143, baseType: !39, size: 64, offset: 256)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !41)
!40 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!41 = !{!42}
!42 = !DISubrange(count: 1)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !20, file: !21, line: 145, baseType: !39, size: 64, offset: 320)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !20, file: !21, line: 146, baseType: !45, size: 768, offset: 384)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 768, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 12)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !20, file: !21, line: 147, baseType: !39, size: 64, offset: 1152)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !20, file: !21, line: 148, baseType: !39, size: 64, offset: 1216)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !20, file: !21, line: 149, baseType: !39, size: 64, offset: 1280)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !20, file: !21, line: 150, baseType: !39, size: 64, offset: 1344)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !20, file: !21, line: 151, baseType: !39, size: 64, offset: 1408)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !20, file: !21, line: 152, baseType: !54, size: 128, offset: 1472)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 128, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 2)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !20, file: !21, line: 153, baseType: !39, size: 64, offset: 1600)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "hint_events_per_packet", scope: !20, file: !21, line: 155, baseType: !59, size: 32, offset: 1664)
!59 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "keycodemax", scope: !20, file: !21, line: 157, baseType: !59, size: 32, offset: 1696)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "keycodesize", scope: !20, file: !21, line: 158, baseType: !59, size: 32, offset: 1728)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !20, file: !21, line: 159, baseType: !63, size: 64, offset: 1792)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "setkeycode", scope: !20, file: !21, line: 161, baseType: !65, size: 64, offset: 1856)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{!18, !19, !68, !83}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_keymap_entry", file: !29, line: 117, size: 320, elements: !71)
!71 = !{!72, !75, !76, !77, !79}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !70, file: !29, line: 119, baseType: !73, size: 8)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !74)
!74 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !70, file: !29, line: 120, baseType: !73, size: 8, offset: 8)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !70, file: !29, line: 121, baseType: !32, size: 16, offset: 16)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "keycode", scope: !70, file: !29, line: 122, baseType: !78, size: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !59)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "scancode", scope: !70, file: !29, line: 123, baseType: !80, size: 256, offset: 64)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 32)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "getkeycode", scope: !20, file: !21, line: 164, baseType: !85, size: 64, offset: 1920)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DISubroutineType(types: !87)
!87 = !{!18, !19, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ff", scope: !20, file: !21, line: 167, baseType: !90, size: 64, offset: 1984)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_device", file: !21, line: 546, size: 960, elements: !92)
!92 = !{!93, !162, !166, !170, !176, !177, !181, !182, !183, !238, !239, !240}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "upload", scope: !91, file: !21, line: 547, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DISubroutineType(types: !96)
!96 = !{!18, !19, !97, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_effect", file: !29, line: 454, size: 384, elements: !99)
!99 = !{!100, !101, !104, !105, !110, !115}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !29, line: 455, baseType: !32, size: 16)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !98, file: !29, line: 456, baseType: !102, size: 16, offset: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !33, line: 23, baseType: !103)
!103 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "direction", scope: !98, file: !29, line: 457, baseType: !32, size: 16, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !98, file: !29, line: 458, baseType: !106, size: 32, offset: 48)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_trigger", file: !29, line: 320, size: 32, elements: !107)
!107 = !{!108, !109}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "button", scope: !106, file: !29, line: 321, baseType: !32, size: 16)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !106, file: !29, line: 322, baseType: !32, size: 16, offset: 16)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "replay", scope: !98, file: !29, line: 459, baseType: !111, size: 32, offset: 80)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_replay", file: !29, line: 310, size: 32, elements: !112)
!112 = !{!113, !114}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !111, file: !29, line: 311, baseType: !32, size: 16)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "delay", scope: !111, file: !29, line: 312, baseType: !32, size: 16, offset: 16)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !98, file: !29, line: 467, baseType: !116, size: 256, offset: 128)
!116 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !98, file: !29, line: 461, size: 256, elements: !117)
!117 = !{!118, !129, !135, !147, !157}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "constant", scope: !116, file: !29, line: 462, baseType: !119, size: 80)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_constant_effect", file: !29, line: 349, size: 80, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !119, file: !29, line: 350, baseType: !102, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !119, file: !29, line: 351, baseType: !123, size: 64, offset: 16)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_envelope", file: !29, line: 337, size: 64, elements: !124)
!124 = !{!125, !126, !127, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "attack_length", scope: !123, file: !29, line: 338, baseType: !32, size: 16)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "attack_level", scope: !123, file: !29, line: 339, baseType: !32, size: 16, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fade_length", scope: !123, file: !29, line: 340, baseType: !32, size: 16, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "fade_level", scope: !123, file: !29, line: 341, baseType: !32, size: 16, offset: 48)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ramp", scope: !116, file: !29, line: 463, baseType: !130, size: 96)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_ramp_effect", file: !29, line: 360, size: 96, elements: !131)
!131 = !{!132, !133, !134}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "start_level", scope: !130, file: !29, line: 361, baseType: !102, size: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "end_level", scope: !130, file: !29, line: 362, baseType: !102, size: 16, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !130, file: !29, line: 363, baseType: !123, size: 64, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !116, file: !29, line: 464, baseType: !136, size: 256)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_periodic_effect", file: !29, line: 405, size: 256, elements: !137)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "waveform", scope: !136, file: !29, line: 406, baseType: !32, size: 16)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !136, file: !29, line: 407, baseType: !32, size: 16, offset: 16)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "magnitude", scope: !136, file: !29, line: 408, baseType: !102, size: 16, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !136, file: !29, line: 409, baseType: !102, size: 16, offset: 48)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "phase", scope: !136, file: !29, line: 410, baseType: !32, size: 16, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "envelope", scope: !136, file: !29, line: 412, baseType: !123, size: 64, offset: 80)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "custom_len", scope: !136, file: !29, line: 414, baseType: !78, size: 32, offset: 160)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "custom_data", scope: !136, file: !29, line: 415, baseType: !146, size: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "condition", scope: !116, file: !29, line: 465, baseType: !148, size: 192)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 192, elements: !55)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_condition_effect", file: !29, line: 376, size: 96, elements: !150)
!150 = !{!151, !152, !153, !154, !155, !156}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "right_saturation", scope: !149, file: !29, line: 377, baseType: !32, size: 16)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "left_saturation", scope: !149, file: !29, line: 378, baseType: !32, size: 16, offset: 16)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "right_coeff", scope: !149, file: !29, line: 380, baseType: !102, size: 16, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "left_coeff", scope: !149, file: !29, line: 381, baseType: !102, size: 16, offset: 48)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "deadband", scope: !149, file: !29, line: 383, baseType: !32, size: 16, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "center", scope: !149, file: !29, line: 384, baseType: !102, size: 16, offset: 80)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rumble", scope: !116, file: !29, line: 466, baseType: !158, size: 32)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ff_rumble_effect", file: !29, line: 426, size: 32, elements: !159)
!159 = !{!160, !161}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "strong_magnitude", scope: !158, file: !29, line: 427, baseType: !32, size: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "weak_magnitude", scope: !158, file: !29, line: 428, baseType: !32, size: 16, offset: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !91, file: !21, line: 549, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!18, !19, !18}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "playback", scope: !91, file: !21, line: 551, baseType: !167, size: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!18, !19, !18, !18}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "set_gain", scope: !91, file: !21, line: 552, baseType: !171, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !19, !174}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !175, line: 19, baseType: !32)
!175 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!176 = !DIDerivedType(tag: DW_TAG_member, name: "set_autocenter", scope: !91, file: !21, line: 553, baseType: !171, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !91, file: !21, line: 555, baseType: !178, size: 64, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !90}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !91, file: !21, line: 557, baseType: !63, size: 64, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !91, file: !21, line: 559, baseType: !54, size: 128, offset: 448)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !91, file: !21, line: 561, baseType: !184, size: 256, offset: 576)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !185, line: 66, size: 256, elements: !186)
!185 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!186 = !{!187, !198, !227, !232}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !184, file: !185, line: 67, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !189, line: 13, baseType: !190)
!189 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !191, line: 181, baseType: !192)
!191 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 179, size: 64, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !191, line: 180, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !175, line: 22, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !33, line: 30, baseType: !197)
!197 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !184, file: !185, line: 68, baseType: !199, size: 32, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !200, line: 23, baseType: !201)
!200 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !200, line: 14, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !201, file: !200, line: 15, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !205, line: 44, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !205, line: 14, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 15, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 15, size: 32, elements: !210)
!210 = !{!211, !216, !222}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !205, line: 16, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !191, line: 174, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !191, line: 172, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !213, file: !191, line: 173, baseType: !18, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 24, baseType: !217, size: 16)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 24, size: 16, elements: !218)
!218 = !{!219, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !217, file: !205, line: 25, baseType: !220, size: 8)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !175, line: 17, baseType: !73)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !217, file: !205, line: 26, baseType: !220, size: 8, offset: 8)
!222 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 28, baseType: !223, size: 32)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 28, size: 32, elements: !224)
!224 = !{!225, !226}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !223, file: !205, line: 29, baseType: !174, size: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !223, file: !205, line: 30, baseType: !174, size: 16, offset: 16)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !184, file: !185, line: 70, baseType: !228, size: 32, offset: 96)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !229, line: 15, size: 32, elements: !230)
!229 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !228, file: !229, line: 20, baseType: !212, size: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !184, file: !185, line: 72, baseType: !233, size: 128, offset: 128)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !191, line: 190, size: 128, elements: !234)
!234 = !{!235, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !233, file: !191, line: 191, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !233, file: !191, line: 191, baseType: !236, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "max_effects", scope: !91, file: !21, line: 563, baseType: !18, size: 32, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "effects", scope: !91, file: !21, line: 564, baseType: !97, size: 64, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "effect_owners", scope: !91, file: !21, line: 565, baseType: !241, offset: 960)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !242, elements: !352)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !244, line: 994, size: 1856, align: 64, elements: !245)
!244 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!245 = !{!246, !265, !274, !276, !277, !278, !282, !283, !372, !594, !603, !3973, !3974, !3975, !3976, !3977, !3978, !3980, !3981, !3982}
!246 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !244, line: 995, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !244, line: 995, size: 128, elements: !248)
!248 = !{!249, !255, !264}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !247, file: !244, line: 996, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !251, line: 60, size: 64, elements: !252)
!251 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!252 = !{!253}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !250, file: !251, line: 61, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !247, file: !244, line: 997, baseType: !256, size: 128, align: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !191, line: 232, size: 128, align: 64, elements: !257)
!257 = !{!258, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !191, line: 233, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !256, file: !191, line: 234, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !259}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !247, file: !244, line: 998, baseType: !59, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !243, file: !244, line: 1005, baseType: !266, size: 32, offset: 128)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !267, line: 29, baseType: !268)
!267 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !267, line: 17, size: 32, elements: !269)
!269 = !{!270}
!270 = !DIDerivedType(tag: DW_TAG_member, scope: !268, file: !267, line: 18, baseType: !271, size: 32)
!271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !268, file: !267, line: 18, size: 32, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !271, file: !267, line: 19, baseType: !201, size: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !243, file: !244, line: 1006, baseType: !275, size: 32, offset: 160)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !191, line: 156, baseType: !59)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !243, file: !244, line: 1007, baseType: !188, size: 64, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !243, file: !244, line: 1008, baseType: !184, size: 256, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !243, file: !244, line: 1009, baseType: !279, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !191, line: 52, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !281, line: 88, baseType: !197)
!281 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !243, file: !244, line: 1010, baseType: !59, size: 32, offset: 576)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !243, file: !244, line: 1011, baseType: !284, size: 256, offset: 640)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !244, line: 948, size: 256, elements: !285)
!285 = !{!286, !309, !354, !362, !370, !371}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !284, file: !244, line: 949, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !288, line: 34, baseType: !289)
!288 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 25, size: 64, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !289, file: !288, line: 26, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !293, line: 27, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !293, line: 13, size: 64, elements: !295)
!295 = !{!296, !308}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !293, line: 14, baseType: !297, size: 32)
!297 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !294, file: !293, line: 14, size: 32, elements: !298)
!298 = !{!299, !300}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !297, file: !293, line: 15, baseType: !212, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !293, line: 16, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !297, file: !293, line: 16, size: 32, elements: !302)
!302 = !{!303, !304}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !301, file: !293, line: 18, baseType: !220, size: 8)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !301, file: !293, line: 19, baseType: !305, size: 24, offset: 8)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 24, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 3)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !294, file: !293, line: 26, baseType: !204, size: 32, offset: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !284, file: !244, line: 950, baseType: !310, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !312, line: 59, size: 768, elements: !313)
!312 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!313 = !{!314, !320, !321, !322, !335, !336, !343, !344}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !311, file: !312, line: 61, baseType: !315, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !316, line: 113, baseType: !317)
!316 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !316, line: 111, size: 32, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !317, file: !316, line: 112, baseType: !212, size: 32)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !311, file: !312, line: 62, baseType: !59, size: 32, offset: 32)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !311, file: !312, line: 63, baseType: !266, size: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !311, file: !312, line: 65, baseType: !323, size: 256, offset: 128)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !324, size: 256, elements: !333)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !191, line: 194, size: 64, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !324, file: !191, line: 195, baseType: !327, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !191, line: 198, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !328, file: !191, line: 199, baseType: !327, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !328, file: !191, line: 199, baseType: !332, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!333 = !{!334}
!334 = !DISubrange(count: 4)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !311, file: !312, line: 66, baseType: !324, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !311, file: !312, line: 68, baseType: !337, size: 192, offset: 448)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !338, line: 41, baseType: !339)
!338 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !338, line: 37, size: 192, elements: !340)
!340 = !{!341, !342}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !339, file: !338, line: 38, baseType: !266, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !339, file: !338, line: 39, baseType: !233, size: 128, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !311, file: !312, line: 69, baseType: !256, size: 128, align: 64, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !311, file: !312, line: 70, baseType: !345, offset: 768)
!345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !346, elements: !352)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !312, line: 54, size: 128, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !346, file: !312, line: 55, baseType: !18, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !346, file: !312, line: 56, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !312, line: 56, flags: DIFlagFwdDecl)
!352 = !{!353}
!353 = !DISubrange(count: -1)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !284, file: !244, line: 951, baseType: !355, size: 32, offset: 128)
!355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !312, line: 9, baseType: !59, size: 32, elements: !356)
!356 = !{!357, !358, !359, !360, !361}
!357 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!358 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!359 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!360 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!361 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !284, file: !244, line: 952, baseType: !363, size: 32, offset: 160)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !364, line: 23, baseType: !365)
!364 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 21, size: 32, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !365, file: !364, line: 22, baseType: !368, size: 32)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !191, line: 37, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !281, line: 49, baseType: !59)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !284, file: !244, line: 952, baseType: !363, size: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !284, file: !244, line: 953, baseType: !18, size: 32, offset: 224)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !243, file: !244, line: 1012, baseType: !373, size: 64, offset: 896)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !376, line: 110, size: 1472, elements: !377)
!376 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!377 = !{!378, !379, !380, !387, !388, !389, !390, !391, !392, !393, !394, !403, !404, !405, !406, !407, !408, !539, !540, !541, !542, !543, !574, !577, !581, !589}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !375, file: !376, line: 111, baseType: !188, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !375, file: !376, line: 112, baseType: !363, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !375, file: !376, line: 113, baseType: !381, size: 32, offset: 96)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !364, line: 28, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !364, line: 26, size: 32, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !382, file: !364, line: 27, baseType: !385, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !191, line: 38, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !281, line: 50, baseType: !59)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !375, file: !376, line: 114, baseType: !363, size: 32, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !375, file: !376, line: 115, baseType: !381, size: 32, offset: 160)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !375, file: !376, line: 116, baseType: !363, size: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !375, file: !376, line: 117, baseType: !381, size: 32, offset: 224)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !375, file: !376, line: 118, baseType: !363, size: 32, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !375, file: !376, line: 119, baseType: !381, size: 32, offset: 288)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !375, file: !376, line: 120, baseType: !59, size: 32, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !375, file: !376, line: 121, baseType: !395, size: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !396, line: 24, baseType: !397)
!396 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 24, size: 64, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !397, file: !396, line: 24, baseType: !400, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !175, line: 23, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !402)
!402 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !375, file: !376, line: 122, baseType: !395, size: 64, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !375, file: !376, line: 123, baseType: !395, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !375, file: !376, line: 124, baseType: !395, size: 64, offset: 576)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !375, file: !376, line: 125, baseType: !395, size: 64, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !375, file: !376, line: 127, baseType: !74, size: 8, offset: 704)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !375, file: !376, line: 129, baseType: !409, size: 64, offset: 768)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !411, line: 195, size: 1728, elements: !412)
!411 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!412 = !{!413, !414, !419, !431, !440, !443, !444, !451, !452, !453, !454, !458, !459, !460, !461, !462, !503, !524}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !410, file: !411, line: 196, baseType: !315, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !410, file: !411, line: 197, baseType: !415, size: 32, offset: 32)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !411, line: 28, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !191, line: 104, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !175, line: 20, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !33, line: 26, baseType: !18)
!419 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !411, line: 198, baseType: !420, size: 192, offset: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 198, size: 192, elements: !421)
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !420, file: !411, line: 199, baseType: !233, size: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !420, file: !411, line: 200, baseType: !424, size: 192, align: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !425, line: 5, size: 192, align: 64, elements: !426)
!425 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!426 = !{!427, !428, !430}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !424, file: !425, line: 6, baseType: !40, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !424, file: !425, line: 7, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !424, file: !425, line: 8, baseType: !429, size: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !410, file: !411, line: 205, baseType: !432, size: 320, offset: 256)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !433, line: 48, size: 320, elements: !434)
!433 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!434 = !{!435, !436, !437, !438, !439}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !432, file: !433, line: 49, baseType: !188, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !432, file: !433, line: 55, baseType: !188, size: 64, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !432, file: !433, line: 57, baseType: !228, size: 32, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !432, file: !433, line: 59, baseType: !199, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !432, file: !433, line: 60, baseType: !233, size: 128, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !410, file: !411, line: 206, baseType: !441, size: 64, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !411, line: 206, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !410, file: !411, line: 207, baseType: !63, size: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !411, line: 208, baseType: !445, size: 64, offset: 704)
!445 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 208, size: 64, elements: !446)
!446 = !{!447, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !445, file: !411, line: 209, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !449, line: 8, baseType: !196)
!449 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !445, file: !411, line: 210, baseType: !448, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !410, file: !411, line: 212, baseType: !448, size: 64, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !410, file: !411, line: 213, baseType: !363, size: 32, offset: 832)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !410, file: !411, line: 214, baseType: !381, size: 32, offset: 864)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !410, file: !411, line: 215, baseType: !455, size: 32, offset: 896)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !411, line: 31, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !191, line: 110, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !175, line: 21, baseType: !78)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !410, file: !411, line: 216, baseType: !34, size: 16, offset: 928)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !410, file: !411, line: 217, baseType: !34, size: 16, offset: 944)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !410, file: !411, line: 221, baseType: !103, size: 16, offset: 960)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !410, file: !411, line: 228, baseType: !40, size: 64, offset: 1024)
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !411, line: 245, baseType: !463, size: 320, offset: 1088)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 245, size: 320, elements: !464)
!464 = !{!465, !494}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !463, file: !411, line: 246, baseType: !466, size: 320)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !411, line: 114, size: 320, elements: !467)
!467 = !{!468, !469, !481, !484, !493}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !466, file: !411, line: 116, baseType: !40, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !411, line: 117, baseType: !470, size: 64, offset: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !411, line: 117, size: 64, elements: !471)
!471 = !{!472, !480}
!472 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !411, line: 118, baseType: !473, size: 64)
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !470, file: !411, line: 118, size: 64, elements: !474)
!474 = !{!475, !476}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !473, file: !411, line: 120, baseType: !174, size: 16)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !473, file: !411, line: 121, baseType: !477, size: 48, offset: 16)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 6)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !470, file: !411, line: 127, baseType: !40, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !466, file: !411, line: 129, baseType: !482, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !411, line: 102, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !466, file: !411, line: 130, baseType: !485, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !411, line: 108, size: 192, elements: !487)
!487 = !{!488, !489, !490}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !486, file: !411, line: 109, baseType: !256, size: 128, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !486, file: !411, line: 110, baseType: !315, size: 32, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !486, file: !411, line: 111, baseType: !491, size: 8, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !191, line: 35, baseType: !492)
!492 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !466, file: !411, line: 131, baseType: !24, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, scope: !463, file: !411, line: 247, baseType: !495, size: 320)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !463, file: !411, line: 247, size: 320, elements: !496)
!496 = !{!497, !498, !499, !500, !501}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !495, file: !411, line: 248, baseType: !40, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !495, file: !411, line: 249, baseType: !40, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !411, line: 250, baseType: !482, size: 64, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !495, file: !411, line: 251, baseType: !485, size: 64, offset: 192)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !495, file: !411, line: 252, baseType: !502, size: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, scope: !410, file: !411, line: 260, baseType: !504, size: 256, offset: 1408)
!504 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !410, file: !411, line: 260, size: 256, elements: !505)
!505 = !{!506, !512}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !504, file: !411, line: 261, baseType: !507, size: 256)
!507 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !411, line: 134, size: 256, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !507, file: !411, line: 135, baseType: !63, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !507, file: !411, line: 136, baseType: !511, size: 256)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !63, size: 256, elements: !333)
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !411, line: 262, baseType: !513, size: 256)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !411, line: 262, size: 256, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !513, file: !411, line: 264, baseType: !233, size: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !513, file: !411, line: 265, baseType: !517, size: 128, offset: 128)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !518, line: 22, size: 128, elements: !519)
!518 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!519 = !{!520, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !517, file: !518, line: 23, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !518, line: 23, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !517, file: !518, line: 24, baseType: !40, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !410, file: !411, line: 280, baseType: !525, size: 64, offset: 1664)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !411, line: 176, size: 192, elements: !527)
!527 = !{!528, !537, !538}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !526, file: !411, line: 177, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !411, line: 171, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!18, !409, !533, !535, !409}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !507)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !526, file: !411, line: 178, baseType: !409, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !526, file: !411, line: 179, baseType: !482, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !375, file: !376, line: 130, baseType: !409, size: 64, offset: 832)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !375, file: !376, line: 131, baseType: !409, size: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !375, file: !376, line: 132, baseType: !409, size: 64, offset: 960)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !375, file: !376, line: 135, baseType: !63, size: 64, offset: 1024)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !375, file: !376, line: 137, baseType: !544, size: 64, offset: 1088)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !546, line: 14, size: 1088, elements: !547)
!546 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!547 = !{!548, !549, !558, !559, !560, !561, !562, !563}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !545, file: !546, line: 15, baseType: !315, size: 32)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !545, file: !546, line: 17, baseType: !550, size: 320, offset: 64)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !551, line: 22, size: 320, elements: !552)
!551 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!552 = !{!553, !554, !555, !556}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !550, file: !551, line: 23, baseType: !199, size: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !550, file: !551, line: 24, baseType: !195, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !550, file: !551, line: 26, baseType: !233, size: 128, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !550, file: !551, line: 28, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !545, file: !546, line: 19, baseType: !40, size: 64, offset: 384)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !545, file: !546, line: 20, baseType: !188, size: 64, offset: 448)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !545, file: !546, line: 23, baseType: !328, size: 128, offset: 512)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !545, file: !546, line: 24, baseType: !363, size: 32, offset: 640)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !545, file: !546, line: 29, baseType: !188, size: 64, offset: 704)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !545, file: !546, line: 36, baseType: !564, size: 320, offset: 768)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !565, line: 15, size: 320, elements: !566)
!565 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!566 = !{!567, !568, !569, !570, !571, !572, !573}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !564, file: !565, line: 16, baseType: !199, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !564, file: !565, line: 18, baseType: !18, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !564, file: !565, line: 19, baseType: !18, size: 32, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !564, file: !565, line: 20, baseType: !18, size: 32, offset: 96)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !564, file: !565, line: 21, baseType: !18, size: 32, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !564, file: !565, line: 22, baseType: !40, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !565, line: 23, baseType: !40, size: 64, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !375, file: !376, line: 138, baseType: !575, size: 64, offset: 1152)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !364, line: 18, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !375, file: !376, line: 139, baseType: !578, size: 64, offset: 1216)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !580, line: 16, flags: DIFlagFwdDecl)
!580 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!581 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !375, file: !376, line: 140, baseType: !582, size: 64, offset: 1280)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !376, line: 25, size: 64, elements: !584)
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !583, file: !376, line: 26, baseType: !212, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !583, file: !376, line: 27, baseType: !18, size: 32, offset: 32)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !583, file: !376, line: 28, baseType: !588, offset: 64)
!588 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, elements: !352)
!589 = !DIDerivedType(tag: DW_TAG_member, scope: !375, file: !376, line: 142, baseType: !590, size: 128, offset: 1344)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !375, file: !376, line: 142, size: 128, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !590, file: !376, line: 143, baseType: !18, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !590, file: !376, line: 144, baseType: !256, size: 128, align: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !243, file: !244, line: 1013, baseType: !595, size: 256, offset: 960)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !244, line: 970, size: 256, elements: !596)
!596 = !{!597, !598, !599, !600, !601, !602}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !595, file: !244, line: 971, baseType: !40, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !595, file: !244, line: 972, baseType: !59, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !595, file: !244, line: 973, baseType: !59, size: 32, offset: 96)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !595, file: !244, line: 974, baseType: !59, size: 32, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !595, file: !244, line: 975, baseType: !59, size: 32, offset: 160)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !595, file: !244, line: 976, baseType: !279, size: 64, offset: 192)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !243, file: !244, line: 1014, baseType: !604, size: 128, offset: 1216)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !605, line: 8, size: 128, elements: !606)
!605 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!606 = !{!607, !3972}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !604, file: !605, line: 9, baseType: !608, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !610, line: 70, size: 256, elements: !611)
!610 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!611 = !{!612, !3969, !3970, !3971}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !609, file: !610, line: 71, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !615, line: 82, size: 1536, elements: !616)
!615 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!616 = !{!617, !618, !628, !636, !637, !652, !3936, !3938, !3951, !3952, !3953, !3954, !3955, !3961, !3962, !3963}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !614, file: !615, line: 84, baseType: !59, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !614, file: !615, line: 85, baseType: !619, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !620, line: 275, baseType: !621)
!620 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !620, line: 275, size: 32, elements: !622)
!622 = !{!623}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !621, file: !620, line: 275, baseType: !624, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !620, line: 69, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !620, line: 64, size: 32, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !625, file: !620, line: 65, baseType: !59, size: 32)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !614, file: !615, line: 86, baseType: !629, size: 128, offset: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !630, line: 38, size: 128, elements: !631)
!630 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!631 = !{!632, !634}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !629, file: !630, line: 39, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !629, file: !630, line: 39, baseType: !635, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !614, file: !615, line: 87, baseType: !613, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !614, file: !615, line: 88, baseType: !638, size: 128, offset: 256)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !615, line: 49, size: 128, elements: !639)
!639 = !{!640, !649}
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !638, file: !615, line: 50, baseType: !641, size: 64)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !638, file: !615, line: 50, size: 64, elements: !642)
!642 = !{!643, !648}
!643 = !DIDerivedType(tag: DW_TAG_member, scope: !641, file: !615, line: 51, baseType: !644, size: 64)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !641, file: !615, line: 51, size: 64, elements: !645)
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !644, file: !615, line: 52, baseType: !457, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !644, file: !615, line: 52, baseType: !457, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !641, file: !615, line: 54, baseType: !400, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !638, file: !615, line: 56, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !614, file: !615, line: 89, baseType: !653, size: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !244, line: 641, size: 4800, elements: !655)
!655 = !{!656, !658, !659, !660, !661, !662, !663, !666, !667, !865, !3752, !3753, !3754, !3755, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3918, !3921, !3922, !3923, !3932, !3933, !3934, !3935}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !654, file: !244, line: 642, baseType: !657, size: 16)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !191, line: 24, baseType: !34)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !654, file: !244, line: 643, baseType: !34, size: 16, offset: 16)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !654, file: !244, line: 644, baseType: !363, size: 32, offset: 32)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !654, file: !244, line: 645, baseType: !233, size: 128, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !654, file: !244, line: 646, baseType: !381, size: 32, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !654, file: !244, line: 647, baseType: !59, size: 32, offset: 224)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !654, file: !244, line: 650, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !244, line: 607, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !654, file: !244, line: 651, baseType: !664, size: 64, offset: 320)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !654, file: !244, line: 654, baseType: !668, size: 64, offset: 384)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !244, line: 1966, size: 2048, align: 512, elements: !671)
!671 = !{!672, !676, !689, !695, !699, !703, !707, !711, !715, !719, !723, !724, !730, !734, !772, !803, !813, !819, !823, !827, !831, !835, !839, !845, !849}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !670, file: !244, line: 1967, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!613, !653, !613, !59}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !670, file: !244, line: 1968, baseType: !677, size: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!24, !613, !653, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !682, line: 10, size: 128, elements: !683)
!682 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!683 = !{!684, !688}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !681, file: !682, line: 11, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DISubroutineType(types: !687)
!687 = !{null, !63}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !681, file: !682, line: 12, baseType: !63, size: 64, offset: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !670, file: !244, line: 1969, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!18, !693, !653, !18}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !396, line: 42, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !670, file: !244, line: 1970, baseType: !696, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!664, !653, !18, !491}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !670, file: !244, line: 1972, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!18, !613, !502, !18}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !670, file: !244, line: 1974, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!18, !693, !653, !613, !657, !491}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !670, file: !244, line: 1976, baseType: !708, size: 64, offset: 384)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!18, !613, !653, !613}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !670, file: !244, line: 1977, baseType: !712, size: 64, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!18, !653, !613}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !670, file: !244, line: 1978, baseType: !716, size: 64, offset: 512)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!18, !693, !653, !613, !24}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !670, file: !244, line: 1980, baseType: !720, size: 64, offset: 576)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!721 = !DISubroutineType(types: !722)
!722 = !{!18, !693, !653, !613, !657}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !670, file: !244, line: 1982, baseType: !712, size: 64, offset: 640)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !670, file: !244, line: 1983, baseType: !725, size: 64, offset: 704)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!18, !693, !653, !613, !657, !728}
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !191, line: 21, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !191, line: 18, baseType: !457)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !670, file: !244, line: 1985, baseType: !731, size: 64, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!18, !693, !653, !613, !653, !613, !59}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !670, file: !244, line: 1987, baseType: !735, size: 64, offset: 832)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!18, !693, !613, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !244, line: 226, size: 640, elements: !740)
!740 = !{!741, !742, !743, !753, !762, !763, !769, !770, !771}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !739, file: !244, line: 227, baseType: !59, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !739, file: !244, line: 228, baseType: !657, size: 16, offset: 32)
!743 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !244, line: 241, baseType: !744, size: 32, offset: 64)
!744 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !244, line: 241, size: 32, elements: !745)
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !744, file: !244, line: 242, baseType: !363, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !744, file: !244, line: 243, baseType: !748, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !749, line: 16, baseType: !750)
!749 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 14, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !749, line: 15, baseType: !368, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !244, line: 245, baseType: !754, size: 32, offset: 96)
!754 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !244, line: 245, size: 32, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !754, file: !244, line: 246, baseType: !381, size: 32)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !754, file: !244, line: 247, baseType: !758, size: 32)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !749, line: 20, baseType: !759)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 18, size: 32, elements: !760)
!760 = !{!761}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !759, file: !749, line: 19, baseType: !385, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !739, file: !244, line: 249, baseType: !279, size: 64, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !739, file: !244, line: 250, baseType: !764, size: 128, offset: 192)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !449, line: 13, size: 128, elements: !765)
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !764, file: !449, line: 14, baseType: !448, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !764, file: !449, line: 15, baseType: !768, size: 64, offset: 64)
!768 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !739, file: !244, line: 251, baseType: !764, size: 128, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !739, file: !244, line: 252, baseType: !764, size: 128, offset: 448)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !739, file: !244, line: 259, baseType: !242, size: 64, offset: 576)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !670, file: !244, line: 1988, baseType: !773, size: 64, offset: 896)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!18, !693, !776, !778, !457, !59}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !604)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !780, line: 22, size: 1280, elements: !781)
!780 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!781 = !{!782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !779, file: !780, line: 23, baseType: !457, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !779, file: !780, line: 24, baseType: !657, size: 16, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !779, file: !780, line: 25, baseType: !59, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !779, file: !780, line: 26, baseType: !456, size: 32, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !779, file: !780, line: 27, baseType: !400, size: 64, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !779, file: !780, line: 28, baseType: !400, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !779, file: !780, line: 41, baseType: !400, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !779, file: !780, line: 42, baseType: !728, size: 32, offset: 320)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !779, file: !780, line: 43, baseType: !728, size: 32, offset: 352)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !779, file: !780, line: 44, baseType: !363, size: 32, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !779, file: !780, line: 45, baseType: !381, size: 32, offset: 416)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !779, file: !780, line: 46, baseType: !279, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !779, file: !780, line: 47, baseType: !764, size: 128, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !779, file: !780, line: 48, baseType: !764, size: 128, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !779, file: !780, line: 49, baseType: !764, size: 128, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !779, file: !780, line: 50, baseType: !764, size: 128, offset: 896)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !779, file: !780, line: 51, baseType: !400, size: 64, offset: 1024)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !779, file: !780, line: 52, baseType: !400, size: 64, offset: 1088)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !779, file: !780, line: 53, baseType: !457, size: 32, offset: 1152)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !779, file: !780, line: 54, baseType: !457, size: 32, offset: 1184)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !779, file: !780, line: 55, baseType: !400, size: 64, offset: 1216)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !670, file: !244, line: 1990, baseType: !804, size: 64, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!807, !613, !502, !810}
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !191, line: 66, baseType: !808)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !281, line: 73, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !281, line: 15, baseType: !768)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !191, line: 61, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !281, line: 72, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !281, line: 16, baseType: !40)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !670, file: !244, line: 1991, baseType: !814, size: 64, offset: 1024)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!18, !653, !817, !400, !400}
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !244, line: 55, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !670, file: !244, line: 1993, baseType: !820, size: 64, offset: 1088)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{!18, !653, !18}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !670, file: !244, line: 1994, baseType: !824, size: 64, offset: 1152)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!18, !653, !613, !242, !59, !657}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !670, file: !244, line: 1997, baseType: !828, size: 64, offset: 1216)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!18, !693, !653, !242, !657}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !670, file: !244, line: 1999, baseType: !832, size: 64, offset: 1280)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!664, !693, !613, !18}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !670, file: !244, line: 2001, baseType: !836, size: 64, offset: 1344)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!18, !693, !613, !664, !18}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !670, file: !244, line: 2003, baseType: !840, size: 64, offset: 1408)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!18, !693, !613, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !244, line: 76, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !670, file: !244, line: 2005, baseType: !846, size: 64, offset: 1472)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!18, !613, !843}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !670, file: !244, line: 2006, baseType: !850, size: 64, offset: 1536)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!853, !653}
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !244, line: 3192, size: 192, elements: !855)
!855 = !{!856, !864}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !854, file: !244, line: 3193, baseType: !857, size: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !858, line: 296, size: 128, elements: !859)
!858 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!859 = !{!860, !861, !863}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !857, file: !858, line: 297, baseType: !266, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !857, file: !858, line: 299, baseType: !862, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !191, line: 154, baseType: !59)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !857, file: !858, line: 300, baseType: !63, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !854, file: !244, line: 3194, baseType: !457, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !654, file: !244, line: 655, baseType: !866, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !244, line: 1190, size: 10752, elements: !868)
!868 = !{!869, !870, !871, !872, !873, !874, !2075, !2217, !2257, !2340, !2344, !2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352, !2357, !2361, !2362, !2365, !2368, !2371, !2374, !2375, !2376, !2417, !3627, !3628, !3629, !3630, !3631, !3632, !3635, !3637, !3644, !3645, !3646, !3647, !3706, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3743, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3751}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !867, file: !244, line: 1191, baseType: !233, size: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !867, file: !244, line: 1192, baseType: !728, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !867, file: !244, line: 1193, baseType: !74, size: 8, offset: 160)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !867, file: !244, line: 1194, baseType: !40, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !867, file: !244, line: 1195, baseType: !279, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !867, file: !244, line: 1196, baseType: !875, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !244, line: 2366, size: 576, elements: !877)
!877 = !{!878, !879, !880, !887, !891, !895, !899, !2063, !2064, !2065, !2067, !2068, !2069, !2071, !2072, !2073, !2074}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !876, file: !244, line: 2367, baseType: !24, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !876, file: !244, line: 2368, baseType: !18, size: 32, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !876, file: !244, line: 2376, baseType: !881, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DISubroutineType(types: !883)
!883 = !{!18, !884}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !886, line: 32, flags: DIFlagFwdDecl)
!886 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!887 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !876, file: !244, line: 2377, baseType: !888, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !890)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !244, line: 75, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !876, file: !244, line: 2378, baseType: !892, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!613, !875, !18, !24, !63}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !876, file: !244, line: 2380, baseType: !896, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !866}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !876, file: !244, line: 2381, baseType: !900, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !902, line: 402, size: 9216, align: 512, elements: !903)
!902 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!903 = !{!904, !911, !912, !916, !1722, !1748, !1749, !1750, !1751, !1755, !1758, !1759, !1760, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1827, !1831, !1849, !1867, !1868, !1869, !1870, !1879, !1902, !1903, !1906, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1920, !1921, !2021, !2029, !2030, !2031, !2033, !2037, !2038, !2042, !2043, !2044, !2045, !2047, !2048, !2049, !2056, !2057, !2058, !2062}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !901, file: !902, line: 403, baseType: !905, size: 32)
!905 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !902, line: 312, baseType: !59, size: 32, elements: !906)
!906 = !{!907, !908, !909, !910}
!907 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!908 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!909 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!910 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !901, file: !902, line: 406, baseType: !233, size: 128, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !901, file: !902, line: 409, baseType: !913, size: 448, offset: 192)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 56)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !901, file: !902, line: 417, baseType: !917, size: 768, offset: 640)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !902, line: 45, size: 768, elements: !918)
!918 = !{!919, !1705, !1706, !1707, !1710}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !917, file: !902, line: 46, baseType: !920, size: 512)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !921, line: 64, size: 512, elements: !922)
!921 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!922 = !{!923, !924, !925, !927, !971, !1585, !1695, !1700, !1701, !1702, !1703, !1704}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !921, line: 65, baseType: !24, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !920, file: !921, line: 66, baseType: !233, size: 128, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !920, file: !921, line: 67, baseType: !926, size: 64, offset: 192)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !920, file: !921, line: 68, baseType: !928, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !921, line: 168, size: 768, elements: !930)
!930 = !{!931, !932, !933, !934}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !929, file: !921, line: 169, baseType: !233, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !929, file: !921, line: 170, baseType: !266, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !929, file: !921, line: 171, baseType: !920, size: 512, offset: 192)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !929, file: !921, line: 172, baseType: !935, size: 64, offset: 704)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !921, line: 133, size: 192, elements: !938)
!938 = !{!939, !946, !951}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !937, file: !921, line: 134, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!18, !944}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !937, file: !921, line: 135, baseType: !947, size: 64, offset: 64)
!947 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !948)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!24, !944}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !937, file: !921, line: 136, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!18, !944, !956}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !921, line: 125, size: 20736, elements: !958)
!958 = !{!959, !961, !965, !966, !970}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !957, file: !921, line: 126, baseType: !960, size: 192)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 192, elements: !306)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !957, file: !921, line: 127, baseType: !962, size: 4096, offset: 192)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 4096, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !957, file: !921, line: 128, baseType: !18, size: 32, offset: 4288)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !957, file: !921, line: 129, baseType: !967, size: 16384, offset: 4320)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 2048)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !957, file: !921, line: 130, baseType: !18, size: 32, offset: 20704)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !920, file: !921, line: 69, baseType: !972, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !921, line: 116, size: 384, elements: !975)
!975 = !{!976, !980, !999, !1541, !1575, !1579}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !974, file: !921, line: 117, baseType: !977, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !926}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !974, file: !921, line: 118, baseType: !981, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !983)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !984, line: 254, size: 128, elements: !985)
!984 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!985 = !{!986, !995}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !983, file: !984, line: 255, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!807, !926, !990, !502}
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !984, line: 30, size: 128, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !991, file: !984, line: 31, baseType: !24, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !991, file: !984, line: 32, baseType: !657, size: 16, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !983, file: !984, line: 256, baseType: !996, size: 64, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!807, !926, !990, !24, !810}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !974, file: !921, line: 119, baseType: !1000, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !984, line: 84, size: 320, elements: !1004)
!1004 = !{!1005, !1006, !1010, !1537, !1539}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1003, file: !984, line: 85, baseType: !24, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1003, file: !984, line: 86, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!657, !926, !990, !18}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1003, file: !984, line: 88, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!657, !926, !1014, !18}
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !984, line: 175, size: 512, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1020, !1304, !1308, !1309}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1015, file: !984, line: 176, baseType: !991, size: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1015, file: !984, line: 177, baseType: !810, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1015, file: !984, line: 178, baseType: !63, size: 64, offset: 192)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1015, file: !984, line: 179, baseType: !1021, size: 64, offset: 256)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !244, line: 472, size: 1536, align: 64, elements: !1026)
!1026 = !{!1027, !1028, !1029, !1030, !1031, !1032, !1040, !1041, !1042, !1296, !1297, !1298, !1301, !1302, !1303}
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1025, file: !244, line: 473, baseType: !653, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1025, file: !244, line: 474, baseType: !857, size: 128, offset: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1025, file: !244, line: 475, baseType: !432, size: 320, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1025, file: !244, line: 476, baseType: !862, size: 32, offset: 512)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1025, file: !244, line: 477, baseType: !212, size: 32, offset: 544)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1025, file: !244, line: 482, baseType: !1033, size: 128, offset: 576)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !425, line: 26, size: 128, elements: !1034)
!1034 = !{!1035, !1039}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1033, file: !425, line: 27, baseType: !1036, size: 64)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !425, line: 12, size: 64, elements: !1037)
!1037 = !{!1038}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1036, file: !425, line: 13, baseType: !429, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1033, file: !425, line: 28, baseType: !429, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1025, file: !244, line: 483, baseType: !40, size: 64, offset: 704)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1025, file: !244, line: 484, baseType: !40, size: 64, offset: 768)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1025, file: !244, line: 485, baseType: !1043, size: 64, offset: 832)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1045)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !244, line: 404, size: 1280, elements: !1046)
!1046 = !{!1047, !1114, !1184, !1188, !1192, !1198, !1204, !1208, !1213, !1217, !1221, !1225, !1253, !1264, !1268, !1272, !1277, !1281, !1288, !1292}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1045, file: !244, line: 405, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!18, !1051, !1112}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1053, line: 74, size: 512, align: 128, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1054 = !{!1055, !1056, !1106, !1111}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1052, file: !1053, line: 75, baseType: !40, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !1053, line: 83, baseType: !1057, size: 320, offset: 64)
!1057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !1053, line: 83, size: 320, elements: !1058)
!1058 = !{!1059, !1080, !1094, !1098, !1105}
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 84, baseType: !1060, size: 320)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 84, size: 320, elements: !1061)
!1061 = !{!1062, !1073, !1074, !1079}
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !1053, line: 90, baseType: !1063, size: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !1053, line: 90, size: 128, elements: !1064)
!1064 = !{!1065, !1066, !1071, !1072}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1063, file: !1053, line: 91, baseType: !233, size: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, scope: !1063, file: !1053, line: 94, baseType: !1067, size: 128)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1063, file: !1053, line: 94, size: 128, elements: !1068)
!1068 = !{!1069, !1070}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1067, file: !1053, line: 96, baseType: !63, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1067, file: !1053, line: 98, baseType: !59, size: 32, offset: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1063, file: !1053, line: 102, baseType: !233, size: 128)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1063, file: !1053, line: 103, baseType: !233, size: 128)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1060, file: !1053, line: 106, baseType: !1024, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !1053, line: 107, baseType: !1075, size: 64, offset: 192)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1060, file: !1053, line: 107, size: 64, elements: !1076)
!1076 = !{!1077, !1078}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1075, file: !1053, line: 108, baseType: !40, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1075, file: !1053, line: 109, baseType: !40, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1060, file: !1053, line: 117, baseType: !40, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 119, baseType: !1081, size: 320)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 119, size: 320, elements: !1082)
!1082 = !{!1083, !1084, !1087, !1088, !1089}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1081, file: !1053, line: 124, baseType: !40, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1081, file: !1053, line: 125, baseType: !1085, size: 64, offset: 64)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1053, line: 125, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1081, file: !1053, line: 126, baseType: !40, size: 64, offset: 128)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1081, file: !1053, line: 127, baseType: !40, size: 64, offset: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1053, line: 128, baseType: !1090, size: 64, offset: 256)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !1053, line: 128, size: 64, elements: !1091)
!1091 = !{!1092, !1093}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1090, file: !1053, line: 133, baseType: !40, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1090, file: !1053, line: 138, baseType: !188, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 141, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 141, size: 64, elements: !1096)
!1096 = !{!1097}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1095, file: !1053, line: 142, baseType: !40, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1057, file: !1053, line: 144, baseType: !1099, size: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1057, file: !1053, line: 144, size: 128, elements: !1100)
!1100 = !{!1101, !1104}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1099, file: !1053, line: 146, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1053, line: 146, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1099, file: !1053, line: 147, baseType: !63, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1057, file: !1053, line: 161, baseType: !256, size: 128, align: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, scope: !1052, file: !1053, line: 164, baseType: !1107, size: 32, offset: 384)
!1107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1052, file: !1053, line: 164, size: 32, elements: !1108)
!1108 = !{!1109, !1110}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1107, file: !1053, line: 169, baseType: !212, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1107, file: !1053, line: 177, baseType: !59, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1052, file: !1053, line: 181, baseType: !212, size: 32, offset: 416)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !244, line: 309, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1045, file: !244, line: 406, baseType: !1115, size: 64, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!18, !242, !1118}
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1053, line: 293, size: 1536, elements: !1120)
!1120 = !{!1121, !1151, !1165}
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !1053, line: 295, baseType: !1122, size: 512)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !1053, line: 295, size: 512, elements: !1123)
!1123 = !{!1124, !1150}
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1122, file: !1053, line: 296, baseType: !1125, size: 448)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1122, file: !1053, line: 296, size: 448, elements: !1126)
!1126 = !{!1127, !1128, !1137, !1138, !1139, !1148, !1149}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1125, file: !1053, line: 298, baseType: !40, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !1053, line: 299, baseType: !1129, size: 128, offset: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !1053, line: 299, size: 128, elements: !1130)
!1130 = !{!1131, !1132}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1129, file: !1053, line: 300, baseType: !233, size: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1129, file: !1053, line: 302, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1129, file: !1053, line: 302, size: 128, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1133, file: !1053, line: 303, baseType: !63, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1133, file: !1053, line: 305, baseType: !59, size: 32, offset: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1125, file: !1053, line: 310, baseType: !1024, size: 64, offset: 192)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1125, file: !1053, line: 311, baseType: !40, size: 64, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !1053, line: 312, baseType: !1140, size: 64, offset: 320)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !1053, line: 312, size: 64, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1140, file: !1053, line: 313, baseType: !63, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1140, file: !1053, line: 314, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1053, line: 257, baseType: !1145)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1053, line: 255, size: 64, elements: !1146)
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1145, file: !1053, line: 256, baseType: !40, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1125, file: !1053, line: 316, baseType: !212, size: 32, offset: 384)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1125, file: !1053, line: 317, baseType: !212, size: 32, offset: 416)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1122, file: !1053, line: 323, baseType: !1052, size: 512, align: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !1053, line: 325, baseType: !1152, size: 512, offset: 512)
!1152 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !1053, line: 325, size: 512, elements: !1153)
!1153 = !{!1154, !1164}
!1154 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !1053, line: 326, baseType: !1155, size: 320)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1152, file: !1053, line: 326, size: 320, elements: !1156)
!1156 = !{!1157, !1158, !1159, !1160, !1161, !1162, !1163}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1155, file: !1053, line: 327, baseType: !40, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1155, file: !1053, line: 328, baseType: !40, size: 64, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1155, file: !1053, line: 329, baseType: !40, size: 64, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1155, file: !1053, line: 331, baseType: !212, size: 32, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1155, file: !1053, line: 332, baseType: !212, size: 32, offset: 224)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1155, file: !1053, line: 333, baseType: !212, size: 32, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1155, file: !1053, line: 335, baseType: !59, size: 32, offset: 288)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1152, file: !1053, line: 339, baseType: !1052, size: 512, align: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !1053, line: 341, baseType: !1166, size: 512, offset: 1024)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !1053, line: 341, size: 512, elements: !1167)
!1167 = !{!1168, !1177, !1183}
!1168 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1053, line: 342, baseType: !1169, size: 384)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1053, line: 342, size: 384, elements: !1170)
!1170 = !{!1171, !1172, !1173, !1174, !1175, !1176}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1169, file: !1053, line: 343, baseType: !40, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1169, file: !1053, line: 344, baseType: !40, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1169, file: !1053, line: 346, baseType: !63, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1169, file: !1053, line: 347, baseType: !63, size: 64, offset: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1169, file: !1053, line: 348, baseType: !63, size: 64, offset: 256)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1169, file: !1053, line: 349, baseType: !63, size: 64, offset: 320)
!1177 = !DIDerivedType(tag: DW_TAG_member, scope: !1166, file: !1053, line: 352, baseType: !1178, size: 256)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1053, line: 352, size: 256, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1178, file: !1053, line: 353, baseType: !40, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1178, file: !1053, line: 354, baseType: !40, size: 64, offset: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1178, file: !1053, line: 356, baseType: !233, size: 128, offset: 128)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1166, file: !1053, line: 359, baseType: !1052, size: 512, align: 128)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1045, file: !244, line: 409, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!18, !1024, !1112}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1045, file: !244, line: 412, baseType: !1189, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!491, !1024, !1118}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1045, file: !244, line: 414, baseType: !1193, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{null, !1196}
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !244, line: 310, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1045, file: !244, line: 416, baseType: !1199, size: 64, offset: 320)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1200, size: 64)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!18, !242, !1024, !279, !59, !1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1045, file: !244, line: 419, baseType: !1205, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!18, !242, !1024, !279, !59, !59, !1051, !63}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1045, file: !244, line: 424, baseType: !1209, size: 64, offset: 448)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!1212, !1024, !1212}
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !191, line: 131, baseType: !400)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1045, file: !244, line: 425, baseType: !1214, size: 64, offset: 512)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1215, size: 64)
!1215 = !DISubroutineType(types: !1216)
!1216 = !{null, !1118, !810, !810}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1045, file: !244, line: 426, baseType: !1218, size: 64, offset: 576)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DISubroutineType(types: !1220)
!1220 = !{!491, !1118, !862}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1045, file: !244, line: 427, baseType: !1222, size: 64, offset: 640)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1118}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1045, file: !244, line: 428, baseType: !1226, size: 64, offset: 704)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{!807, !1229, !1251}
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !244, line: 373, size: 384, elements: !1231)
!1231 = !{!1232, !1233, !1234, !1238, !1239, !1240, !1241}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1230, file: !244, line: 374, baseType: !242, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1230, file: !244, line: 375, baseType: !279, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1230, file: !244, line: 376, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DISubroutineType(types: !1237)
!1237 = !{null, !1229, !768}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1230, file: !244, line: 377, baseType: !63, size: 64, offset: 192)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1230, file: !244, line: 378, baseType: !18, size: 32, offset: 256)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1230, file: !244, line: 379, baseType: !174, size: 16, offset: 288)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !244, line: 380, baseType: !1242, size: 64, offset: 320)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !244, line: 380, size: 64, elements: !1243)
!1243 = !{!1244, !1247}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1242, file: !244, line: 386, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !244, line: 386, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1242, file: !244, line: 395, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!807, !63}
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !244, line: 69, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1045, file: !244, line: 433, baseType: !1254, size: 64, offset: 768)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DISubroutineType(types: !1256)
!1256 = !{!18, !1024, !1118, !1118, !1257}
!1257 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !1258, line: 15, baseType: !59, size: 32, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!1259 = !{!1260, !1261, !1262, !1263}
!1260 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!1261 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!1262 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!1263 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1045, file: !244, line: 435, baseType: !1265, size: 64, offset: 832)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{!18, !1118}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1045, file: !244, line: 436, baseType: !1269, size: 64, offset: 896)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!491, !1118, !810, !810}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1045, file: !244, line: 438, baseType: !1273, size: 64, offset: 960)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DISubroutineType(types: !1275)
!1275 = !{null, !1118, !1276, !1276}
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1045, file: !244, line: 439, baseType: !1278, size: 64, offset: 1024)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!18, !1024, !1051}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1045, file: !244, line: 442, baseType: !1282, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!18, !1285, !242, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !244, line: 66, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1045, file: !244, line: 444, baseType: !1289, size: 64, offset: 1152)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{null, !242}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1045, file: !244, line: 445, baseType: !1293, size: 64, offset: 1216)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!18, !1229, !1251}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !244, line: 486, baseType: !40, size: 64, offset: 896)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1025, file: !244, line: 487, baseType: !432, size: 320, offset: 960)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1025, file: !244, line: 488, baseType: !1299, size: 32, offset: 1280)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1300, line: 8, baseType: !457)
!1300 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1025, file: !244, line: 489, baseType: !266, size: 32, offset: 1312)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1025, file: !244, line: 490, baseType: !233, size: 128, offset: 1344)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1025, file: !244, line: 491, baseType: !63, size: 64, offset: 1472)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1015, file: !984, line: 180, baseType: !1305, size: 64, offset: 320)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!807, !242, !926, !1014, !502, !279, !810}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1015, file: !984, line: 182, baseType: !1305, size: 64, offset: 384)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1015, file: !984, line: 184, baseType: !1310, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!18, !242, !926, !1014, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1053, line: 625, size: 1344, elements: !1315)
!1315 = !{!1316, !1325, !1494, !1500, !1507, !1508, !1513, !1514, !1519, !1520, !1523, !1527, !1528, !1529, !1530, !1531, !1535}
!1316 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !1053, line: 628, baseType: !1317, size: 128)
!1317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1314, file: !1053, line: 628, size: 128, elements: !1318)
!1318 = !{!1319, !1324}
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1317, file: !1053, line: 629, baseType: !1320, size: 128)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1317, file: !1053, line: 629, size: 128, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1320, file: !1053, line: 631, baseType: !40, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1320, file: !1053, line: 632, baseType: !40, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1317, file: !1053, line: 635, baseType: !256, size: 128, align: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1314, file: !1053, line: 639, baseType: !1326, size: 64, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1053, line: 733, size: 10240, elements: !1328)
!1328 = !{!1329, !1492}
!1329 = !DIDerivedType(tag: DW_TAG_member, scope: !1327, file: !1053, line: 734, baseType: !1330, size: 10240)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1327, file: !1053, line: 734, size: 10240, elements: !1331)
!1331 = !{!1332, !1336, !1350, !1354, !1355, !1356, !1357, !1358, !1359, !1368, !1369, !1370, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1409, !1411, !1414, !1460, !1461, !1462, !1465, !1466, !1467, !1470, !1471, !1472, !1479, !1480}
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1330, file: !1053, line: 739, baseType: !1333, size: 512, align: 512)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1330, file: !1053, line: 739, size: 512, align: 512, elements: !1334)
!1334 = !{!1335}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1333, file: !1053, line: 747, baseType: !212, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1330, file: !1053, line: 750, baseType: !1337, size: 128, offset: 512)
!1337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1338, line: 218, size: 128, elements: !1339)
!1338 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1339 = !{!1340, !1348, !1349}
!1340 = !DIDerivedType(tag: DW_TAG_member, scope: !1337, file: !1338, line: 219, baseType: !1341, size: 32)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1337, file: !1338, line: 219, size: 32, elements: !1342)
!1342 = !{!1343, !1344}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1341, file: !1338, line: 220, baseType: !266, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1341, file: !1338, line: 221, baseType: !1345)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1338, line: 197, baseType: !1346)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1338, line: 197, elements: !1347)
!1347 = !{}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1337, file: !1338, line: 223, baseType: !59, size: 32, offset: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1337, file: !1338, line: 224, baseType: !63, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1330, file: !1053, line: 752, baseType: !1351, size: 64, offset: 640)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!40, !242, !40, !40, !40, !40}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1330, file: !1053, line: 756, baseType: !40, size: 64, offset: 704)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1330, file: !1053, line: 757, baseType: !40, size: 64, offset: 768)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1330, file: !1053, line: 760, baseType: !40, size: 64, offset: 832)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1330, file: !1053, line: 761, baseType: !40, size: 64, offset: 896)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1330, file: !1053, line: 763, baseType: !40, size: 64, offset: 960)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1330, file: !1053, line: 764, baseType: !1360, size: 64, offset: 1024)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1362, line: 299, baseType: !1363)
!1362 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1362, line: 299, size: 64, elements: !1364)
!1364 = !{!1365}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1363, file: !1362, line: 299, baseType: !1366, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1367, line: 18, baseType: !40)
!1367 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1330, file: !1053, line: 773, baseType: !212, size: 32, offset: 1088)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1330, file: !1053, line: 785, baseType: !212, size: 32, offset: 1120)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1330, file: !1053, line: 795, baseType: !1371, size: 64, offset: 1152)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1053, line: 726, size: 128, elements: !1373)
!1373 = !{!1374, !1375}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1372, file: !1053, line: 727, baseType: !400, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1372, file: !1053, line: 728, baseType: !18, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1330, file: !1053, line: 801, baseType: !40, size: 64, offset: 1216)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1330, file: !1053, line: 804, baseType: !188, size: 64, offset: 1280)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1330, file: !1053, line: 806, baseType: !18, size: 32, offset: 1344)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1330, file: !1053, line: 808, baseType: !266, size: 32, offset: 1376)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1330, file: !1053, line: 823, baseType: !432, size: 320, offset: 1408)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1330, file: !1053, line: 825, baseType: !233, size: 128, offset: 1728)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1330, file: !1053, line: 845, baseType: !18, size: 32, offset: 1856)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1330, file: !1053, line: 849, baseType: !40, size: 64, offset: 1920)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1330, file: !1053, line: 850, baseType: !40, size: 64, offset: 1984)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1330, file: !1053, line: 852, baseType: !40, size: 64, offset: 2048)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1330, file: !1053, line: 853, baseType: !40, size: 64, offset: 2112)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1330, file: !1053, line: 854, baseType: !190, size: 64, offset: 2176)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1330, file: !1053, line: 855, baseType: !40, size: 64, offset: 2240)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1330, file: !1053, line: 856, baseType: !40, size: 64, offset: 2304)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1330, file: !1053, line: 857, baseType: !40, size: 64, offset: 2368)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1330, file: !1053, line: 858, baseType: !40, size: 64, offset: 2432)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1330, file: !1053, line: 865, baseType: !624, size: 32, offset: 2496)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1330, file: !1053, line: 867, baseType: !266, size: 32, offset: 2528)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1330, file: !1053, line: 869, baseType: !40, size: 64, offset: 2560)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1330, file: !1053, line: 869, baseType: !40, size: 64, offset: 2624)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1330, file: !1053, line: 869, baseType: !40, size: 64, offset: 2688)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1330, file: !1053, line: 869, baseType: !40, size: 64, offset: 2752)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1330, file: !1053, line: 870, baseType: !40, size: 64, offset: 2816)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1330, file: !1053, line: 870, baseType: !40, size: 64, offset: 2880)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1330, file: !1053, line: 870, baseType: !40, size: 64, offset: 2944)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1330, file: !1053, line: 871, baseType: !40, size: 64, offset: 3008)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1330, file: !1053, line: 871, baseType: !40, size: 64, offset: 3072)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1330, file: !1053, line: 871, baseType: !40, size: 64, offset: 3136)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1330, file: !1053, line: 871, baseType: !40, size: 64, offset: 3200)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1330, file: !1053, line: 873, baseType: !1406, size: 3328, offset: 3264)
!1406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 3328, elements: !1407)
!1407 = !{!1408}
!1408 = !DISubrange(count: 52)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1330, file: !1053, line: 875, baseType: !1410, size: 1280, offset: 6592)
!1410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 1280, elements: !333)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1330, file: !1053, line: 877, baseType: !1412, size: 64, offset: 7872)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1053, line: 877, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1330, file: !1053, line: 880, baseType: !1415, size: 1088, offset: 7936)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1416, line: 72, baseType: !1417)
!1416 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1416, line: 23, size: 1088, elements: !1418)
!1418 = !{!1419, !1420, !1421, !1422, !1423, !1426, !1427, !1428, !1429, !1456, !1457, !1458}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1417, file: !1416, line: 28, baseType: !400, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1417, file: !1416, line: 38, baseType: !190, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1417, file: !1416, line: 40, baseType: !40, size: 64, offset: 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1417, file: !1416, line: 43, baseType: !432, size: 320, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1417, file: !1416, line: 44, baseType: !1424, size: 64, offset: 512)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1416, line: 44, flags: DIFlagFwdDecl)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1417, file: !1416, line: 48, baseType: !40, size: 64, offset: 576)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1417, file: !1416, line: 59, baseType: !184, size: 256, offset: 640)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1417, file: !1416, line: 60, baseType: !63, size: 64, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1417, file: !1416, line: 61, baseType: !1430, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1433, line: 13, size: 1216, elements: !1434)
!1433 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1434 = !{!1435, !1436, !1437, !1438, !1439, !1440, !1441, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1432, file: !1433, line: 14, baseType: !63, size: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1432, file: !1433, line: 15, baseType: !40, size: 64, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1432, file: !1433, line: 17, baseType: !40, size: 64, offset: 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1432, file: !1433, line: 17, baseType: !40, size: 64, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1432, file: !1433, line: 18, baseType: !40, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1432, file: !1433, line: 18, baseType: !40, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1432, file: !1433, line: 19, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1432, file: !1433, line: 21, baseType: !768, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1432, file: !1433, line: 23, baseType: !768, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1432, file: !1433, line: 24, baseType: !768, size: 64, offset: 576)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1432, file: !1433, line: 25, baseType: !768, size: 64, offset: 640)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1432, file: !1433, line: 26, baseType: !768, size: 64, offset: 704)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1432, file: !1433, line: 27, baseType: !768, size: 64, offset: 768)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1432, file: !1433, line: 28, baseType: !768, size: 64, offset: 832)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1432, file: !1433, line: 29, baseType: !768, size: 64, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1432, file: !1433, line: 30, baseType: !768, size: 64, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1432, file: !1433, line: 31, baseType: !768, size: 64, offset: 1024)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1432, file: !1433, line: 32, baseType: !768, size: 64, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1432, file: !1433, line: 33, baseType: !768, size: 64, offset: 1152)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1417, file: !1416, line: 63, baseType: !212, size: 32, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1417, file: !1416, line: 69, baseType: !174, size: 16, offset: 1056)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1417, file: !1416, line: 70, baseType: !1459, size: 16, offset: 1072)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !175, line: 18, baseType: !102)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1330, file: !1053, line: 882, baseType: !40, size: 64, offset: 9024)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1330, file: !1053, line: 885, baseType: !266, size: 32, offset: 9088)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1330, file: !1053, line: 886, baseType: !1463, size: 64, offset: 9152)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1053, line: 732, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1330, file: !1053, line: 901, baseType: !575, size: 64, offset: 9216)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1330, file: !1053, line: 904, baseType: !242, size: 64, offset: 9280)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1330, file: !1053, line: 906, baseType: !1468, size: 64, offset: 9344)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1053, line: 906, flags: DIFlagFwdDecl)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1330, file: !1053, line: 930, baseType: !212, size: 32, offset: 9408)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1330, file: !1053, line: 933, baseType: !212, size: 32, offset: 9440)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1330, file: !1053, line: 935, baseType: !1473, size: 64, offset: 9472)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1474, line: 103, size: 64, elements: !1475)
!1474 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1475 = !{!1476}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1473, file: !1474, line: 104, baseType: !1477, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1474, line: 101, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1330, file: !1053, line: 940, baseType: !188, size: 64, offset: 9536)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1330, file: !1053, line: 942, baseType: !1481, size: 256, offset: 9600)
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1482, line: 98, size: 256, elements: !1483)
!1482 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1483 = !{!1484, !1485, !1486}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1481, file: !1482, line: 99, baseType: !188, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1481, file: !1482, line: 100, baseType: !233, size: 128, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1481, file: !1482, line: 101, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1482, line: 21, baseType: !1488)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{null, !1491}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1327, file: !1053, line: 986, baseType: !1493, offset: 10240)
!1493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, elements: !352)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1314, file: !1053, line: 640, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1362, line: 297, baseType: !1496)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1362, line: 297, size: 64, elements: !1497)
!1497 = !{!1498}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1496, file: !1362, line: 297, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1367, line: 19, baseType: !40)
!1500 = !DIDerivedType(tag: DW_TAG_member, scope: !1314, file: !1053, line: 646, baseType: !1501, size: 64, offset: 256)
!1501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1314, file: !1053, line: 646, size: 64, elements: !1502)
!1502 = !{!1503, !1506}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1501, file: !1053, line: 647, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1053, line: 542, baseType: !40)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1501, file: !1053, line: 648, baseType: !1505, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1314, file: !1053, line: 666, baseType: !18, size: 32, offset: 320)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1314, file: !1053, line: 667, baseType: !1509, size: 64, offset: 384)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1053, line: 579, size: 320, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !1053, line: 580, baseType: !432, size: 320)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1314, file: !1053, line: 670, baseType: !491, size: 8, offset: 448)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1314, file: !1053, line: 681, baseType: !1515, size: 256, offset: 512)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1314, file: !1053, line: 678, size: 256, elements: !1516)
!1516 = !{!1517, !1518}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1515, file: !1053, line: 679, baseType: !424, size: 192, align: 64)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1515, file: !1053, line: 680, baseType: !40, size: 64, offset: 192)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1314, file: !1053, line: 689, baseType: !233, size: 128, offset: 768)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1314, file: !1053, line: 691, baseType: !1521, size: 64, offset: 896)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1053, line: 691, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1314, file: !1053, line: 694, baseType: !1524, size: 64, offset: 960)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1526)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1053, line: 694, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1314, file: !1053, line: 697, baseType: !40, size: 64, offset: 1024)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1314, file: !1053, line: 699, baseType: !242, size: 64, offset: 1088)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1314, file: !1053, line: 700, baseType: !63, size: 64, offset: 1152)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1314, file: !1053, line: 711, baseType: !188, size: 64, offset: 1216)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1314, file: !1053, line: 717, baseType: !1532, size: 64, offset: 1280)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1534, line: 54, flags: DIFlagFwdDecl)
!1534 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1314, file: !1053, line: 722, baseType: !1536, offset: 1344)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1053, line: 570, elements: !1347)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1003, file: !984, line: 90, baseType: !1538, size: 64, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1003, file: !984, line: 91, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !974, file: !921, line: 120, baseType: !1542, size: 64, offset: 192)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{!1545, !944}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !1548, line: 39, size: 384, elements: !1549)
!1548 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!1549 = !{!1550, !1556, !1560, !1564, !1570, !1574}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1547, file: !1548, line: 40, baseType: !1551, size: 32)
!1551 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !1548, line: 26, baseType: !59, size: 32, elements: !1552)
!1552 = !{!1553, !1554, !1555}
!1553 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!1554 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!1555 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1547, file: !1548, line: 41, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!491}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1547, file: !1548, line: 42, baseType: !1561, size: 64, offset: 128)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DISubroutineType(types: !1563)
!1563 = !{!63}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1547, file: !1548, line: 43, baseType: !1565, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!1442, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !1548, line: 19, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1547, file: !1548, line: 44, baseType: !1571, size: 64, offset: 256)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1442}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1547, file: !1548, line: 45, baseType: !685, size: 64, offset: 320)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !974, file: !921, line: 121, baseType: !1576, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!1442, !944}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !974, file: !921, line: 122, baseType: !1580, size: 64, offset: 320)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{null, !944, !1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !920, file: !921, line: 70, baseType: !1586, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !886, line: 190, size: 1152, elements: !1588)
!1588 = !{!1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1687, !1688, !1689, !1690, !1691, !1694}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1587, file: !886, line: 191, baseType: !212, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1587, file: !886, line: 192, baseType: !212, size: 32, offset: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1587, file: !886, line: 202, baseType: !1586, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1587, file: !886, line: 203, baseType: !24, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1587, file: !886, line: 205, baseType: !424, size: 192, align: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1587, file: !886, line: 207, baseType: !1442, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1587, file: !886, line: 208, baseType: !59, size: 32, offset: 448)
!1596 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !886, line: 209, baseType: !1597, size: 256, offset: 512)
!1597 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1587, file: !886, line: 209, size: 256, elements: !1598)
!1598 = !{!1599, !1608, !1612}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1597, file: !886, line: 210, baseType: !1600, size: 256)
!1600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !886, line: 153, size: 256, elements: !1601)
!1601 = !{!1602, !1603, !1604, !1607}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1600, file: !886, line: 154, baseType: !40, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1600, file: !886, line: 156, baseType: !1036, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1600, file: !886, line: 162, baseType: !1605, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !886, line: 162, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1600, file: !886, line: 167, baseType: !40, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1597, file: !886, line: 211, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !886, line: 170, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1609, file: !886, line: 171, baseType: !1586, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1597, file: !886, line: 212, baseType: !1613, size: 256)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !886, line: 174, size: 256, elements: !1614)
!1614 = !{!1615, !1682, !1685, !1686}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1613, file: !886, line: 175, baseType: !1616, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1618)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !886, line: 271, size: 768, elements: !1619)
!1619 = !{!1620, !1642, !1646, !1650, !1655, !1659, !1663, !1667, !1668, !1669, !1670, !1678}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1618, file: !886, line: 276, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!18, !1624}
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !886, line: 251, size: 1216, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1625, file: !886, line: 253, baseType: !1586, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1625, file: !886, line: 254, baseType: !242, size: 64, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1625, file: !886, line: 255, baseType: !1630, size: 64, offset: 128)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1534, line: 66, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1625, file: !886, line: 256, baseType: !63, size: 64, offset: 192)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1625, file: !886, line: 259, baseType: !184, size: 256, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1625, file: !886, line: 260, baseType: !184, size: 256, offset: 512)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1625, file: !886, line: 261, baseType: !18, size: 32, offset: 768)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1625, file: !886, line: 262, baseType: !233, size: 128, offset: 832)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1625, file: !886, line: 263, baseType: !502, size: 64, offset: 960)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1625, file: !886, line: 265, baseType: !810, size: 64, offset: 1024)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1625, file: !886, line: 266, baseType: !491, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1625, file: !886, line: 267, baseType: !491, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1625, file: !886, line: 268, baseType: !1524, size: 64, offset: 1152)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1618, file: !886, line: 277, baseType: !1643, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1624}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1618, file: !886, line: 290, baseType: !1647, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!18, !1630, !63}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1618, file: !886, line: 292, baseType: !1651, size: 64, offset: 192)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!63, !1630, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1618, file: !886, line: 293, baseType: !1656, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!63, !1630, !63, !1654}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1618, file: !886, line: 294, baseType: !1660, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{null, !1630, !63}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1618, file: !886, line: 296, baseType: !1664, size: 64, offset: 384)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!807, !1624, !502, !810, !279}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1618, file: !886, line: 306, baseType: !810, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1618, file: !886, line: 313, baseType: !491, size: 8, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1618, file: !886, line: 314, baseType: !1664, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1618, file: !886, line: 317, baseType: !1671, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!1674, !1624, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1675, line: 59, baseType: !59)
!1675 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !886, line: 31, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1618, file: !886, line: 320, baseType: !1679, size: 64, offset: 704)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!18, !1624, !1313}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1613, file: !886, line: 176, baseType: !1683, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !886, line: 35, flags: DIFlagFwdDecl)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1613, file: !886, line: 177, baseType: !279, size: 64, offset: 128)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1613, file: !886, line: 178, baseType: !1586, size: 64, offset: 192)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1587, file: !886, line: 215, baseType: !63, size: 64, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1587, file: !886, line: 221, baseType: !400, size: 64, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1587, file: !886, line: 223, baseType: !34, size: 16, offset: 896)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1587, file: !886, line: 224, baseType: !657, size: 16, offset: 912)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1587, file: !886, line: 225, baseType: !1692, size: 64, offset: 960)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !886, line: 36, flags: DIFlagFwdDecl)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1587, file: !886, line: 227, baseType: !256, size: 128, align: 64, offset: 1024)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !920, file: !921, line: 71, baseType: !1696, size: 32, offset: 448)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1697, line: 19, size: 32, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1698 = !{!1699}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1696, file: !1697, line: 20, baseType: !315, size: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !920, file: !921, line: 73, baseType: !59, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !920, file: !921, line: 74, baseType: !59, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !920, file: !921, line: 75, baseType: !59, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !920, file: !921, line: 76, baseType: !59, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !920, file: !921, line: 77, baseType: !59, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !917, file: !902, line: 47, baseType: !900, size: 64, offset: 512)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !917, file: !902, line: 48, baseType: !926, size: 64, offset: 576)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !917, file: !902, line: 49, baseType: !1708, size: 64, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !902, line: 49, flags: DIFlagFwdDecl)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !917, file: !902, line: 50, baseType: !1711, size: 64, offset: 704)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1713, line: 26, size: 256, elements: !1714)
!1713 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1714 = !{!1715, !1716}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1712, file: !1713, line: 27, baseType: !59, size: 32)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1712, file: !1713, line: 28, baseType: !1717, size: 192, offset: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1718, line: 43, size: 192, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1719 = !{!1720, !1721}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1717, file: !1718, line: 44, baseType: !199, size: 32)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1717, file: !1718, line: 45, baseType: !233, size: 128, offset: 64)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !901, file: !902, line: 418, baseType: !1723, size: 64, offset: 1408)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !902, line: 53, size: 448, elements: !1725)
!1725 = !{!1726, !1727, !1732, !1736, !1740, !1744}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1724, file: !902, line: 54, baseType: !991, size: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1724, file: !902, line: 55, baseType: !1728, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!807, !1723, !1731, !502}
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1724, file: !902, line: 57, baseType: !1733, size: 64, offset: 192)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!807, !1723, !1731, !24, !810}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1724, file: !902, line: 59, baseType: !1737, size: 64, offset: 256)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !900, !24}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1724, file: !902, line: 60, baseType: !1741, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!18, !900}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1724, file: !902, line: 61, baseType: !1745, size: 64, offset: 384)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{null, !900}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !901, file: !902, line: 419, baseType: !24, size: 64, offset: 1472)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !901, file: !902, line: 420, baseType: !24, size: 64, offset: 1536)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !901, file: !902, line: 421, baseType: !926, size: 64, offset: 1600)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !901, file: !902, line: 424, baseType: !1752, size: 64, offset: 1664)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1754)
!1754 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !902, line: 424, flags: DIFlagFwdDecl)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !901, file: !902, line: 425, baseType: !1756, size: 64, offset: 1728)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !417)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !901, file: !902, line: 426, baseType: !59, size: 32, offset: 1792)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !901, file: !902, line: 435, baseType: !184, size: 256, offset: 1856)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !901, file: !902, line: 437, baseType: !1761, size: 64, offset: 2112)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1763, line: 69, size: 320, elements: !1764)
!1763 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1764 = !{!1765, !1766, !1767, !1784, !1786, !1790, !1791}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1762, file: !1763, line: 70, baseType: !24, size: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1762, file: !1763, line: 71, baseType: !900, size: 64, offset: 64)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1762, file: !1763, line: 72, baseType: !1768, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1763, line: 47, size: 256, elements: !1771)
!1771 = !{!1772, !1773, !1779, !1783}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1770, file: !1763, line: 49, baseType: !59, size: 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1770, file: !1763, line: 51, baseType: !1774, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!18, !24, !1777}
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1762)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1770, file: !1763, line: 53, baseType: !1780, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!18, !502, !1777}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1770, file: !1763, line: 55, baseType: !685, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1762, file: !1763, line: 73, baseType: !1785, size: 16, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1762, file: !1763, line: 74, baseType: !1787, size: 8, offset: 208)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !175, line: 16, baseType: !1788)
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !33, line: 20, baseType: !1789)
!1789 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1762, file: !1763, line: 75, baseType: !220, size: 8, offset: 216)
!1791 = !DIDerivedType(tag: DW_TAG_member, scope: !1762, file: !1763, line: 76, baseType: !1792, size: 64, offset: 256)
!1792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1762, file: !1763, line: 76, size: 64, elements: !1793)
!1793 = !{!1794, !1795, !1802}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1792, file: !1763, line: 77, baseType: !63, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1792, file: !1763, line: 78, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1798)
!1798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1763, line: 86, size: 128, elements: !1799)
!1799 = !{!1800, !1801}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1798, file: !1763, line: 87, baseType: !59, size: 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1798, file: !1763, line: 88, baseType: !502, size: 64, offset: 64)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1792, file: !1763, line: 79, baseType: !1803, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1763, line: 92, size: 256, elements: !1806)
!1806 = !{!1807, !1808, !1809, !1810, !1811}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1805, file: !1763, line: 94, baseType: !59, size: 32)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1805, file: !1763, line: 95, baseType: !59, size: 32, offset: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1805, file: !1763, line: 96, baseType: !83, size: 64, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1805, file: !1763, line: 97, baseType: !1768, size: 64, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1805, file: !1763, line: 98, baseType: !63, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !901, file: !902, line: 438, baseType: !59, size: 32, offset: 2176)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !901, file: !902, line: 441, baseType: !59, size: 32, offset: 2208)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !901, file: !902, line: 442, baseType: !1752, size: 64, offset: 2240)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !901, file: !902, line: 443, baseType: !1756, size: 64, offset: 2304)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !901, file: !902, line: 444, baseType: !491, size: 8, offset: 2368)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !901, file: !902, line: 451, baseType: !491, size: 8, offset: 2376)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !901, file: !902, line: 454, baseType: !59, size: 32, offset: 2400)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !901, file: !902, line: 455, baseType: !1820, size: 64, offset: 2432)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1822, line: 23, size: 96, elements: !1823)
!1822 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1823 = !{!1824, !1825, !1826}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1821, file: !1822, line: 24, baseType: !18, size: 32)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1821, file: !1822, line: 24, baseType: !18, size: 32, offset: 32)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1821, file: !1822, line: 24, baseType: !18, size: 32, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !901, file: !902, line: 458, baseType: !1828, size: 64, offset: 2496)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!18}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !901, file: !902, line: 460, baseType: !1832, size: 4032, align: 512, offset: 2560)
!1832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1833, size: 4032, elements: !1847)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !902, line: 362, size: 576, elements: !1834)
!1834 = !{!1835, !1836, !1837}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1833, file: !902, line: 363, baseType: !63, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1833, file: !902, line: 364, baseType: !59, size: 32, offset: 64)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1833, file: !902, line: 367, baseType: !1838, size: 448, offset: 128)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !902, line: 319, size: 448, elements: !1839)
!1839 = !{!1840, !1841}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1838, file: !902, line: 320, baseType: !900, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1838, file: !902, line: 321, baseType: !1842, size: 384, offset: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1843, line: 40, size: 384, elements: !1844)
!1843 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1844 = !{!1845}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1842, file: !1843, line: 41, baseType: !1846, size: 384, align: 64)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !424, size: 384, align: 64, elements: !55)
!1847 = !{!1848}
!1848 = !DISubrange(count: 7)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !901, file: !902, line: 463, baseType: !1850, size: 192, offset: 6592)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1851, line: 8, size: 192, elements: !1852)
!1851 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1852 = !{!1853, !1854, !1856}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1850, file: !1851, line: 10, baseType: !59, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1850, file: !1851, line: 11, baseType: !1855, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1850, file: !1851, line: 12, baseType: !1857, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1859, line: 59, size: 48, elements: !1860)
!1859 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1858, file: !1859, line: 60, baseType: !1459, size: 16)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1858, file: !1859, line: 61, baseType: !1459, size: 16, offset: 16)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1858, file: !1859, line: 63, baseType: !59, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1858, file: !1859, line: 64, baseType: !59, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1858, file: !1859, line: 65, baseType: !59, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1858, file: !1859, line: 66, baseType: !59, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !901, file: !902, line: 465, baseType: !40, size: 64, offset: 6784)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !901, file: !902, line: 469, baseType: !59, size: 32, offset: 6848)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !901, file: !902, line: 470, baseType: !233, size: 128, offset: 6912)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !901, file: !902, line: 471, baseType: !1871, size: 64, offset: 7040)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1873, line: 33, size: 96, elements: !1874)
!1873 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1874 = !{!1875, !1876, !1877, !1878}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1872, file: !1873, line: 37, baseType: !18, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1872, file: !1873, line: 43, baseType: !18, size: 32, offset: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1872, file: !1873, line: 45, baseType: !34, size: 16, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1872, file: !1873, line: 47, baseType: !34, size: 16, offset: 80)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !901, file: !902, line: 476, baseType: !1880, size: 64, offset: 7104)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !902, line: 378, size: 256, elements: !1882)
!1882 = !{!1883, !1899, !1900, !1901}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1881, file: !902, line: 379, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1886, line: 204, baseType: !1887)
!1886 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1886, line: 197, size: 192, elements: !1888)
!1888 = !{!1889, !1891, !1892, !1893, !1895, !1897}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1887, file: !1886, line: 198, baseType: !1890, size: 32)
!1890 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1886, line: 21, baseType: !78)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1887, file: !1886, line: 199, baseType: !74, size: 8, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1887, file: !1886, line: 200, baseType: !74, size: 8, offset: 40)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1887, file: !1886, line: 201, baseType: !1894, size: 16, offset: 48)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1886, line: 17, baseType: !32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1887, file: !1886, line: 202, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1886, line: 16, baseType: !401)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1887, file: !1886, line: 203, baseType: !1898, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1886, line: 22, baseType: !401)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1881, file: !902, line: 380, baseType: !59, size: 32, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1881, file: !902, line: 381, baseType: !502, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1881, file: !902, line: 382, baseType: !502, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !901, file: !902, line: 477, baseType: !1881, size: 256, offset: 7168)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !901, file: !902, line: 480, baseType: !1904, size: 64, offset: 7424)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !902, line: 480, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !901, file: !902, line: 483, baseType: !1907, size: 64, offset: 7488)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !902, line: 483, flags: DIFlagFwdDecl)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !901, file: !902, line: 488, baseType: !502, size: 64, offset: 7552)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !901, file: !902, line: 492, baseType: !63, size: 64, offset: 7616)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !901, file: !902, line: 493, baseType: !59, size: 32, offset: 7680)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !901, file: !902, line: 495, baseType: !63, size: 64, offset: 7744)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !901, file: !902, line: 496, baseType: !59, size: 32, offset: 7808)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !901, file: !902, line: 499, baseType: !59, size: 32, offset: 7840)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !901, file: !902, line: 500, baseType: !1916, size: 64, offset: 7872)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1918, line: 45, baseType: !1919)
!1918 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !901, file: !902, line: 503, baseType: !59, size: 32, offset: 7936)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !901, file: !902, line: 504, baseType: !1922, size: 64, offset: 8000)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1925, line: 96, size: 192, elements: !1926)
!1925 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1926 = !{!1927, !1928, !1982, !1985}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1924, file: !1925, line: 97, baseType: !59, size: 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1924, file: !1925, line: 98, baseType: !1929, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1925, line: 24, size: 3072, elements: !1931)
!1931 = !{!1932, !1934, !1935, !1936, !1937, !1951, !1952, !1953, !1954, !1966, !1967, !1968, !1979, !1980, !1981}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1930, file: !1925, line: 26, baseType: !1933, size: 128)
!1933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !55)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1930, file: !1925, line: 27, baseType: !1933, size: 128, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1930, file: !1925, line: 28, baseType: !18, size: 32, offset: 256)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1930, file: !1925, line: 31, baseType: !266, size: 32, align: 512, offset: 512)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1930, file: !1925, line: 32, baseType: !1938, size: 960, offset: 576)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1939, line: 206, size: 960, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1940 = !{!1941, !1942, !1945, !1947, !1948, !1950}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1938, file: !1939, line: 207, baseType: !259, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1938, file: !1939, line: 208, baseType: !1943, size: 256, offset: 64)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1944, size: 256, elements: !333)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1938, file: !1939, line: 209, baseType: !1946, size: 256, offset: 320)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 256, elements: !333)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1938, file: !1939, line: 213, baseType: !768, size: 64, offset: 576)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1938, file: !1939, line: 215, baseType: !1949, size: 256, offset: 640)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !768, size: 256, elements: !333)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1938, file: !1939, line: 216, baseType: !220, size: 8, offset: 896)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1930, file: !1925, line: 33, baseType: !40, size: 64, offset: 1536)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1930, file: !1925, line: 34, baseType: !40, size: 64, offset: 1600)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1930, file: !1925, line: 35, baseType: !491, size: 8, offset: 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1930, file: !1925, line: 36, baseType: !1955, size: 320, offset: 1728)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1956, line: 11, size: 320, elements: !1957)
!1956 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1957 = !{!1958, !1959, !1960, !1965}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1955, file: !1956, line: 16, baseType: !328, size: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1955, file: !1956, line: 17, baseType: !40, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1955, file: !1956, line: 18, baseType: !1961, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1964}
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1955, file: !1956, line: 19, baseType: !457, size: 32, offset: 256)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1930, file: !1925, line: 37, baseType: !1481, size: 256, offset: 2048)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1930, file: !1925, line: 38, baseType: !256, size: 128, align: 64, offset: 2304)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1930, file: !1925, line: 39, baseType: !1969, size: 64, offset: 2432)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1925, line: 49, size: 768, elements: !1971)
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1970, file: !1925, line: 50, baseType: !266, size: 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1970, file: !1925, line: 51, baseType: !1946, size: 256, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1970, file: !1925, line: 53, baseType: !1946, size: 256, offset: 320)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1970, file: !1925, line: 54, baseType: !40, size: 64, offset: 576)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1970, file: !1925, line: 55, baseType: !1969, size: 64, offset: 640)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1970, file: !1925, line: 56, baseType: !18, size: 32, offset: 704)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1970, file: !1925, line: 57, baseType: !18, size: 32, offset: 736)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1930, file: !1925, line: 40, baseType: !40, size: 64, offset: 2496)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1930, file: !1925, line: 42, baseType: !18, size: 32, offset: 2560)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1930, file: !1925, line: 43, baseType: !1923, size: 64, offset: 2624)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1924, file: !1925, line: 99, baseType: !1983, offset: 128)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1984, line: 211, elements: !1347)
!1984 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1924, file: !1925, line: 100, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1925, line: 63, size: 3008, elements: !1988)
!1988 = !{!1989, !1990, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2020}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1987, file: !1925, line: 64, baseType: !1969, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1987, file: !1925, line: 65, baseType: !1991, size: 192, offset: 64)
!1991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1969, size: 192, elements: !306)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1987, file: !1925, line: 67, baseType: !18, size: 32, offset: 256)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1987, file: !1925, line: 68, baseType: !184, size: 256, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1987, file: !1925, line: 69, baseType: !266, size: 32, offset: 576)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1987, file: !1925, line: 70, baseType: !184, size: 256, offset: 640)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1987, file: !1925, line: 71, baseType: !40, size: 64, offset: 896)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1987, file: !1925, line: 72, baseType: !40, size: 64, offset: 960)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1987, file: !1925, line: 73, baseType: !40, size: 64, offset: 1024)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1987, file: !1925, line: 74, baseType: !40, size: 64, offset: 1088)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1987, file: !1925, line: 75, baseType: !40, size: 64, offset: 1152)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1987, file: !1925, line: 76, baseType: !40, size: 64, offset: 1216)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1987, file: !1925, line: 77, baseType: !40, size: 64, offset: 1280)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1987, file: !1925, line: 78, baseType: !40, size: 64, offset: 1344)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1987, file: !1925, line: 79, baseType: !491, size: 8, offset: 1408)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1987, file: !1925, line: 80, baseType: !40, size: 64, offset: 1472)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1987, file: !1925, line: 81, baseType: !184, size: 256, offset: 1536)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1987, file: !1925, line: 82, baseType: !1712, size: 256, offset: 1792)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1987, file: !1925, line: 84, baseType: !212, size: 32, offset: 2048)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1987, file: !1925, line: 87, baseType: !40, size: 64, offset: 2112)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1987, file: !1925, line: 88, baseType: !40, size: 64, offset: 2176)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1987, file: !1925, line: 89, baseType: !2012, size: 704, offset: 2240)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1482, line: 111, size: 704, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2019}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2012, file: !1482, line: 112, baseType: !1481, size: 256)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2012, file: !1482, line: 113, baseType: !1955, size: 320, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2012, file: !1482, line: 116, baseType: !2017, size: 64, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1482, line: 18, flags: DIFlagFwdDecl)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2012, file: !1482, line: 117, baseType: !18, size: 32, offset: 640)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1987, file: !1925, line: 90, baseType: !1923, size: 64, offset: 2944)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !901, file: !902, line: 515, baseType: !2022, size: 64, offset: 8064)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2024, line: 117, size: 128, elements: !2025)
!2024 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2023, file: !2024, line: 118, baseType: !417, size: 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2023, file: !2024, line: 119, baseType: !417, size: 32, offset: 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2023, file: !2024, line: 120, baseType: !768, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !901, file: !902, line: 516, baseType: !59, size: 32, offset: 8128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !901, file: !902, line: 519, baseType: !59, size: 32, offset: 8160)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !901, file: !902, line: 520, baseType: !2032, size: 64, offset: 8192)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !901, file: !902, line: 523, baseType: !2034, size: 64, offset: 8256)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !902, line: 523, flags: DIFlagFwdDecl)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !901, file: !902, line: 524, baseType: !59, size: 32, offset: 8320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !901, file: !902, line: 525, baseType: !2039, size: 64, offset: 8384)
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !902, line: 525, flags: DIFlagFwdDecl)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !901, file: !902, line: 526, baseType: !59, size: 32, offset: 8448)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !901, file: !902, line: 533, baseType: !63, size: 64, offset: 8512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !901, file: !902, line: 534, baseType: !59, size: 32, offset: 8576)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !901, file: !902, line: 535, baseType: !2046, size: 64, offset: 8640)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !901, file: !902, line: 536, baseType: !59, size: 32, offset: 8704)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !901, file: !902, line: 539, baseType: !18, size: 32, offset: 8736)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !901, file: !902, line: 540, baseType: !2050, size: 64, offset: 8768)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2052, line: 32, size: 64, elements: !2053)
!2052 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2053 = !{!2054, !2055}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2051, file: !2052, line: 33, baseType: !417, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2051, file: !2052, line: 34, baseType: !417, size: 32, offset: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !901, file: !902, line: 563, baseType: !233, size: 128, offset: 8832)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !901, file: !902, line: 565, baseType: !233, size: 128, offset: 8960)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !901, file: !902, line: 568, baseType: !2059, size: 64, offset: 9088)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !901, file: !902, line: 570, baseType: !212, size: 32, offset: 9152)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !876, file: !244, line: 2382, baseType: !875, size: 64, offset: 448)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !876, file: !244, line: 2383, baseType: !324, size: 64, offset: 512)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !876, file: !244, line: 2385, baseType: !2066, offset: 576)
!2066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1984, line: 206, elements: !1347)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !876, file: !244, line: 2386, baseType: !2066, offset: 576)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !876, file: !244, line: 2387, baseType: !2066, offset: 576)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !876, file: !244, line: 2388, baseType: !2070, offset: 576)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2066, elements: !306)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !876, file: !244, line: 2390, baseType: !2066, offset: 576)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !876, file: !244, line: 2391, baseType: !2066, offset: 576)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !876, file: !244, line: 2392, baseType: !2066, offset: 576)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !876, file: !244, line: 2393, baseType: !2066, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !867, file: !244, line: 1197, baseType: !2076, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2078)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !244, line: 2057, size: 1664, elements: !2079)
!2079 = !{!2080, !2084, !2088, !2089, !2093, !2097, !2101, !2102, !2103, !2107, !2115, !2119, !2120, !2121, !2127, !2131, !2132, !2136, !2137, !2138, !2139, !2143, !2147, !2200, !2215, !2216}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2078, file: !244, line: 2058, baseType: !2081, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DISubroutineType(types: !2083)
!2083 = !{!653, !866}
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2078, file: !244, line: 2059, baseType: !2085, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !653}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2078, file: !244, line: 2060, baseType: !2085, size: 64, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2078, file: !244, line: 2062, baseType: !2090, size: 64, offset: 192)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !653, !18}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2078, file: !244, line: 2063, baseType: !2094, size: 64, offset: 256)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{!18, !653, !1112}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2078, file: !244, line: 2064, baseType: !2098, size: 64, offset: 320)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = !DISubroutineType(types: !2100)
!2100 = !{!18, !653}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2078, file: !244, line: 2065, baseType: !2085, size: 64, offset: 384)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2078, file: !244, line: 2066, baseType: !896, size: 64, offset: 448)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2078, file: !244, line: 2067, baseType: !2104, size: 64, offset: 512)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!18, !866, !18}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2078, file: !244, line: 2068, baseType: !2108, size: 64, offset: 576)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!18, !866, !2111}
!2111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !244, line: 2052, baseType: !59, size: 32, elements: !2112)
!2112 = !{!2113, !2114}
!2113 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!2114 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2078, file: !244, line: 2069, baseType: !2116, size: 64, offset: 640)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!18, !866}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2078, file: !244, line: 2070, baseType: !2108, size: 64, offset: 704)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2078, file: !244, line: 2071, baseType: !2116, size: 64, offset: 768)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2078, file: !244, line: 2072, baseType: !2122, size: 64, offset: 832)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DISubroutineType(types: !2124)
!2124 = !{!18, !613, !2125}
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !244, line: 62, flags: DIFlagFwdDecl)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2078, file: !244, line: 2073, baseType: !2128, size: 64, offset: 896)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!18, !866, !1855, !502}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2078, file: !244, line: 2074, baseType: !896, size: 64, offset: 960)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2078, file: !244, line: 2076, baseType: !2133, size: 64, offset: 1024)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!18, !1630, !613}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2078, file: !244, line: 2077, baseType: !2133, size: 64, offset: 1088)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2078, file: !244, line: 2078, baseType: !2133, size: 64, offset: 1152)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2078, file: !244, line: 2079, baseType: !2133, size: 64, offset: 1216)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2078, file: !244, line: 2081, baseType: !2140, size: 64, offset: 1280)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!807, !866, !18, !502, !810, !279}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2078, file: !244, line: 2082, baseType: !2144, size: 64, offset: 1344)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!807, !866, !18, !24, !810, !279}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2078, file: !244, line: 2083, baseType: !2148, size: 64, offset: 1408)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!2151, !653}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !2154, line: 296, size: 1664, elements: !2155)
!2154 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!2155 = !{!2156, !2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164, !2185, !2186, !2187}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2153, file: !2154, line: 297, baseType: !328, size: 128)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2153, file: !2154, line: 298, baseType: !233, size: 128, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2153, file: !2154, line: 299, baseType: !233, size: 128, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2153, file: !2154, line: 300, baseType: !233, size: 128, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2153, file: !2154, line: 301, baseType: !184, size: 256, offset: 512)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2153, file: !2154, line: 302, baseType: !266, size: 32, offset: 768)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2153, file: !2154, line: 303, baseType: !212, size: 32, offset: 800)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2153, file: !2154, line: 304, baseType: !866, size: 64, offset: 832)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2153, file: !2154, line: 305, baseType: !2165, size: 64, offset: 896)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !2154, line: 68, size: 64, elements: !2166)
!2166 = !{!2167, !2179}
!2167 = !DIDerivedType(tag: DW_TAG_member, scope: !2165, file: !2154, line: 69, baseType: !2168, size: 32)
!2168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2165, file: !2154, line: 69, size: 32, elements: !2169)
!2169 = !{!2170, !2171, !2172}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2168, file: !2154, line: 70, baseType: !363, size: 32)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2168, file: !2154, line: 71, baseType: !381, size: 32)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2168, file: !2154, line: 72, baseType: !2173, size: 32)
!2173 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2174, line: 24, baseType: !2175)
!2174 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2174, line: 22, size: 32, elements: !2176)
!2176 = !{!2177}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2175, file: !2174, line: 23, baseType: !2178, size: 32)
!2178 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2174, line: 20, baseType: !369)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2165, file: !2154, line: 74, baseType: !2180, size: 32, offset: 32)
!2180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !2154, line: 54, baseType: !59, size: 32, elements: !2181)
!2181 = !{!2182, !2183, !2184}
!2182 = !DIEnumerator(name: "USRQUOTA", value: 0)
!2183 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!2184 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2153, file: !2154, line: 306, baseType: !279, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2153, file: !2154, line: 307, baseType: !40, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2153, file: !2154, line: 308, baseType: !2188, size: 576, offset: 1088)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !2154, line: 205, size: 576, elements: !2189)
!2189 = !{!2190, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2188, file: !2154, line: 206, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !2154, line: 66, baseType: !197)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2188, file: !2154, line: 207, baseType: !2191, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2188, file: !2154, line: 208, baseType: !2191, size: 64, offset: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2188, file: !2154, line: 209, baseType: !2191, size: 64, offset: 192)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2188, file: !2154, line: 210, baseType: !2191, size: 64, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2188, file: !2154, line: 211, baseType: !2191, size: 64, offset: 320)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2188, file: !2154, line: 212, baseType: !2191, size: 64, offset: 384)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2188, file: !2154, line: 213, baseType: !448, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2188, file: !2154, line: 214, baseType: !448, size: 64, offset: 512)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2078, file: !244, line: 2085, baseType: !2201, size: 64, offset: 1472)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!768, !866, !2204}
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2206, line: 15, size: 256, elements: !2207)
!2206 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2207 = !{!2208, !2209, !2210, !2211, !2212}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2205, file: !2206, line: 16, baseType: !862, size: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2205, file: !2206, line: 19, baseType: !18, size: 32, offset: 32)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2205, file: !2206, line: 26, baseType: !40, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2205, file: !2206, line: 33, baseType: !40, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2205, file: !2206, line: 36, baseType: !2213, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1053, line: 33, flags: DIFlagFwdDecl)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2078, file: !244, line: 2087, baseType: !2201, size: 64, offset: 1536)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2078, file: !244, line: 2089, baseType: !896, size: 64, offset: 1600)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !867, file: !244, line: 1198, baseType: !2218, size: 64, offset: 448)
!2218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2219, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2220)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !2154, line: 324, size: 704, elements: !2221)
!2221 = !{!2222, !2226, !2230, !2234, !2235, !2236, !2237, !2238, !2243, !2248, !2252}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2220, file: !2154, line: 325, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!18, !2152}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2220, file: !2154, line: 326, baseType: !2227, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!2152, !866, !18}
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2220, file: !2154, line: 327, baseType: !2231, size: 64, offset: 128)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{null, !2152}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2220, file: !2154, line: 328, baseType: !2223, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2220, file: !2154, line: 329, baseType: !2223, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2220, file: !2154, line: 330, baseType: !2223, size: 64, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2220, file: !2154, line: 331, baseType: !2104, size: 64, offset: 384)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2220, file: !2154, line: 334, baseType: !2239, size: 64, offset: 448)
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2240, size: 64)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!2242, !653}
!2242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2220, file: !2154, line: 335, baseType: !2244, size: 64, offset: 512)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!18, !653, !2247}
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2220, file: !2154, line: 337, baseType: !2249, size: 64, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!18, !653, !2242}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2220, file: !2154, line: 339, baseType: !2253, size: 64, offset: 640)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!18, !866, !2256}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !867, file: !244, line: 1199, baseType: !2258, size: 64, offset: 512)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2260)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !2154, line: 430, size: 704, elements: !2261)
!2261 = !{!2262, !2266, !2267, !2271, !2272, !2273, !2288, !2311, !2315, !2316, !2339}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2260, file: !2154, line: 431, baseType: !2263, size: 64)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!18, !866, !18, !18, !776}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2260, file: !2154, line: 432, baseType: !2104, size: 64, offset: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2260, file: !2154, line: 433, baseType: !2268, size: 64, offset: 128)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{!18, !866, !59}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2260, file: !2154, line: 434, baseType: !2268, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2260, file: !2154, line: 435, baseType: !2104, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2260, file: !2154, line: 436, baseType: !2274, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!18, !866, !18, !2277}
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !2154, line: 417, size: 256, elements: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2278, file: !2154, line: 418, baseType: !18, size: 32)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2278, file: !2154, line: 419, baseType: !59, size: 32, offset: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2278, file: !2154, line: 420, baseType: !59, size: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2278, file: !2154, line: 422, baseType: !59, size: 32, offset: 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2278, file: !2154, line: 423, baseType: !59, size: 32, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2278, file: !2154, line: 424, baseType: !59, size: 32, offset: 160)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2278, file: !2154, line: 425, baseType: !59, size: 32, offset: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2278, file: !2154, line: 426, baseType: !59, size: 32, offset: 224)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2260, file: !2154, line: 437, baseType: !2289, size: 64, offset: 384)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = !DISubroutineType(types: !2291)
!2291 = !{!18, !866, !2165, !2292}
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !2154, line: 345, size: 960, elements: !2294)
!2294 = !{!2295, !2296, !2297, !2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2293, file: !2154, line: 346, baseType: !18, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2293, file: !2154, line: 347, baseType: !400, size: 64, offset: 64)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2293, file: !2154, line: 348, baseType: !400, size: 64, offset: 128)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2293, file: !2154, line: 349, baseType: !400, size: 64, offset: 192)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2293, file: !2154, line: 350, baseType: !400, size: 64, offset: 256)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2293, file: !2154, line: 351, baseType: !400, size: 64, offset: 320)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2293, file: !2154, line: 352, baseType: !400, size: 64, offset: 384)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2293, file: !2154, line: 353, baseType: !195, size: 64, offset: 448)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2293, file: !2154, line: 355, baseType: !195, size: 64, offset: 512)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2293, file: !2154, line: 356, baseType: !18, size: 32, offset: 576)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2293, file: !2154, line: 357, baseType: !18, size: 32, offset: 608)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2293, file: !2154, line: 358, baseType: !400, size: 64, offset: 640)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2293, file: !2154, line: 359, baseType: !400, size: 64, offset: 704)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2293, file: !2154, line: 360, baseType: !400, size: 64, offset: 768)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2293, file: !2154, line: 361, baseType: !195, size: 64, offset: 832)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2293, file: !2154, line: 362, baseType: !18, size: 32, offset: 896)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2260, file: !2154, line: 438, baseType: !2312, size: 64, offset: 448)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!18, !866, !2256, !2292}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2260, file: !2154, line: 440, baseType: !2289, size: 64, offset: 512)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2260, file: !2154, line: 441, baseType: !2317, size: 64, offset: 576)
!2317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2318, size: 64)
!2318 = !DISubroutineType(types: !2319)
!2319 = !{!18, !866, !2320}
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !2154, line: 411, size: 1408, elements: !2322)
!2322 = !{!2323, !2324}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2321, file: !2154, line: 412, baseType: !59, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2321, file: !2154, line: 413, baseType: !2325, size: 1344, offset: 64)
!2325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2326, size: 1344, elements: !306)
!2326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !2154, line: 397, size: 448, elements: !2327)
!2327 = !{!2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2338}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2326, file: !2154, line: 398, baseType: !59, size: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2326, file: !2154, line: 399, baseType: !59, size: 32, offset: 32)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2326, file: !2154, line: 401, baseType: !59, size: 32, offset: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2326, file: !2154, line: 402, baseType: !59, size: 32, offset: 96)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2326, file: !2154, line: 403, baseType: !59, size: 32, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2326, file: !2154, line: 404, baseType: !59, size: 32, offset: 160)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2326, file: !2154, line: 405, baseType: !59, size: 32, offset: 192)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2326, file: !2154, line: 406, baseType: !402, size: 64, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2326, file: !2154, line: 407, baseType: !2337, size: 64, offset: 320)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !191, line: 132, baseType: !400)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2326, file: !2154, line: 408, baseType: !2337, size: 64, offset: 384)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2260, file: !2154, line: 442, baseType: !2268, size: 64, offset: 640)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !867, file: !244, line: 1200, baseType: !2341, size: 64, offset: 576)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2343)
!2343 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !244, line: 54, flags: DIFlagFwdDecl)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !867, file: !244, line: 1201, baseType: !40, size: 64, offset: 640)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !867, file: !244, line: 1202, baseType: !40, size: 64, offset: 704)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !867, file: !244, line: 1203, baseType: !40, size: 64, offset: 768)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !867, file: !244, line: 1204, baseType: !613, size: 64, offset: 832)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !867, file: !244, line: 1205, baseType: !432, size: 320, offset: 896)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !867, file: !244, line: 1206, baseType: !18, size: 32, offset: 1216)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !867, file: !244, line: 1207, baseType: !212, size: 32, offset: 1248)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !867, file: !244, line: 1209, baseType: !63, size: 64, offset: 1280)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !867, file: !244, line: 1211, baseType: !2353, size: 64, offset: 1344)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2356 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !244, line: 1211, flags: DIFlagFwdDecl)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !867, file: !244, line: 1223, baseType: !2358, size: 64, offset: 1408)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !630, line: 34, size: 64, elements: !2359)
!2359 = !{!2360}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2358, file: !630, line: 35, baseType: !633, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !867, file: !244, line: 1224, baseType: !233, size: 128, offset: 1472)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !867, file: !244, line: 1225, baseType: !2363, size: 64, offset: 1600)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !244, line: 1225, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !867, file: !244, line: 1226, baseType: !2366, size: 64, offset: 1664)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !244, line: 1226, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !867, file: !244, line: 1227, baseType: !2369, size: 64, offset: 1728)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !244, line: 50, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !867, file: !244, line: 1228, baseType: !2372, size: 64, offset: 1792)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !244, line: 1228, flags: DIFlagFwdDecl)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !867, file: !244, line: 1229, baseType: !328, size: 128, offset: 1856)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !867, file: !244, line: 1230, baseType: !59, size: 32, offset: 1984)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !867, file: !244, line: 1231, baseType: !2377, size: 2496, offset: 2048)
!2377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !2154, line: 521, size: 2496, elements: !2378)
!2378 = !{!2379, !2380, !2381, !2383, !2415}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2377, file: !2154, line: 522, baseType: !59, size: 32)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2377, file: !2154, line: 523, baseType: !432, size: 320, offset: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2377, file: !2154, line: 524, baseType: !2382, size: 192, offset: 384)
!2382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !653, size: 192, elements: !306)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2377, file: !2154, line: 525, baseType: !2384, size: 1728, offset: 576)
!2384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2385, size: 1728, elements: !306)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !2154, line: 222, size: 576, elements: !2386)
!2386 = !{!2387, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2385, file: !2154, line: 223, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !2154, line: 445, size: 256, elements: !2390)
!2390 = !{!2391, !2392, !2405, !2406}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2389, file: !2154, line: 446, baseType: !18, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2389, file: !2154, line: 447, baseType: !2393, size: 64, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2394, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2395)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !2154, line: 312, size: 512, elements: !2396)
!2396 = !{!2397, !2398, !2399, !2400, !2401, !2402, !2403, !2404}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2395, file: !2154, line: 313, baseType: !2104, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2395, file: !2154, line: 314, baseType: !2104, size: 64, offset: 64)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2395, file: !2154, line: 315, baseType: !2104, size: 64, offset: 128)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2395, file: !2154, line: 316, baseType: !2104, size: 64, offset: 192)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2395, file: !2154, line: 317, baseType: !2223, size: 64, offset: 256)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2395, file: !2154, line: 318, baseType: !2223, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2395, file: !2154, line: 319, baseType: !2223, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2395, file: !2154, line: 320, baseType: !2253, size: 64, offset: 448)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2389, file: !2154, line: 448, baseType: !900, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2389, file: !2154, line: 449, baseType: !2388, size: 64, offset: 192)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2385, file: !2154, line: 224, baseType: !18, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2385, file: !2154, line: 226, baseType: !233, size: 128, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2385, file: !2154, line: 227, baseType: !40, size: 64, offset: 256)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2385, file: !2154, line: 228, baseType: !59, size: 32, offset: 320)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2385, file: !2154, line: 229, baseType: !59, size: 32, offset: 352)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2385, file: !2154, line: 230, baseType: !2191, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2385, file: !2154, line: 231, baseType: !2191, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2385, file: !2154, line: 232, baseType: !63, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2377, file: !2154, line: 526, baseType: !2416, size: 192, offset: 2304)
!2416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2393, size: 192, elements: !306)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !867, file: !244, line: 1233, baseType: !2418, size: 2368, offset: 4544)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !244, line: 1184, size: 2368, elements: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2418, file: !244, line: 1185, baseType: !34, size: 16)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2418, file: !244, line: 1186, baseType: !34, size: 16, offset: 16)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2418, file: !244, line: 1187, baseType: !2423, size: 2304, offset: 64)
!2423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2424, size: 2304, elements: !306)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2425, line: 12, size: 768, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2426 = !{!2427, !2435, !2436, !3625, !3626}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2424, file: !2425, line: 13, baseType: !2428, size: 384)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2429, line: 17, size: 384, elements: !2430)
!2429 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2430 = !{!2431, !2432, !2433, !2434}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2428, file: !2429, line: 18, baseType: !18, size: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2428, file: !2429, line: 19, baseType: !18, size: 32, offset: 32)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2428, file: !2429, line: 20, baseType: !337, size: 192, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2428, file: !2429, line: 22, baseType: !256, size: 128, align: 64, offset: 256)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2424, file: !2425, line: 14, baseType: !83, size: 64, offset: 384)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2424, file: !2425, line: 15, baseType: !2437, size: 64, offset: 448)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2438, line: 16, size: 64, elements: !2439)
!2438 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2439 = !{!2440}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2437, file: !2438, line: 17, baseType: !2441, size: 64)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1534, line: 746, size: 58368, elements: !2443)
!2443 = !{!2444, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2524, !2535, !2628, !2632, !2635, !2666, !2667, !2668, !2669, !2677, !2679, !2680, !2681, !2682, !2683, !2684, !2695, !2696, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2713, !2714, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2808, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2856, !2862, !2863, !2864, !2865, !2866, !2870, !2873, !2880, !2885, !2888, !2891, !2894, !2897, !3035, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3073, !3074, !3075, !3084, !3092, !3093, !3094, !3095, !3096, !3101, !3102, !3103, !3106, !3107, !3110, !3113, !3116, !3124, !3127, !3128, !3214, !3215, !3216, !3217, !3218, !3224, !3225, !3226, !3227, !3230, !3231, !3234, !3237, !3238, !3241, !3242, !3243, !3246, !3247, !3248, !3249, !3250, !3251, !3264, !3265, !3266, !3267, !3268, !3269, !3270, !3271, !3272, !3283, !3286, !3292, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3304, !3382, !3384, !3385, !3386, !3387, !3388, !3389, !3392, !3393, !3394, !3395, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3406, !3407, !3408}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2442, file: !1534, line: 752, baseType: !2445, size: 192)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2446, line: 56, size: 192, elements: !2447)
!2446 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2447 = !{!2448, !2449, !2450, !2451}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2445, file: !2446, line: 57, baseType: !40, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2445, file: !2446, line: 58, baseType: !40, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2445, file: !2446, line: 59, baseType: !457, size: 32, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2445, file: !2446, line: 61, baseType: !457, size: 32, offset: 160)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2442, file: !1534, line: 754, baseType: !59, size: 32, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2442, file: !1534, line: 767, baseType: !63, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2442, file: !1534, line: 768, baseType: !315, size: 32, offset: 320)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2442, file: !1534, line: 770, baseType: !59, size: 32, offset: 352)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2442, file: !1534, line: 771, baseType: !59, size: 32, offset: 384)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2442, file: !1534, line: 774, baseType: !18, size: 32, offset: 416)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2442, file: !1534, line: 775, baseType: !2459, size: 128, offset: 448)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2460, line: 58, size: 128, elements: !2461)
!2460 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2461 = !{!2462, !2463, !2468, !2469}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2459, file: !2460, line: 59, baseType: !250, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, scope: !2459, file: !2460, line: 60, baseType: !2464, size: 32, offset: 64)
!2464 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2459, file: !2460, line: 60, size: 32, elements: !2465)
!2465 = !{!2466, !2467}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2464, file: !2460, line: 61, baseType: !59, size: 32)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2464, file: !2460, line: 62, baseType: !212, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2459, file: !2460, line: 65, baseType: !174, size: 16, offset: 96)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2459, file: !2460, line: 65, baseType: !174, size: 16, offset: 112)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2442, file: !1534, line: 776, baseType: !59, size: 32, offset: 576)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2442, file: !1534, line: 777, baseType: !40, size: 64, offset: 640)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2442, file: !1534, line: 778, baseType: !2441, size: 64, offset: 704)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2442, file: !1534, line: 787, baseType: !18, size: 32, offset: 768)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2442, file: !1534, line: 788, baseType: !18, size: 32, offset: 800)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2442, file: !1534, line: 790, baseType: !18, size: 32, offset: 832)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2442, file: !1534, line: 792, baseType: !18, size: 32, offset: 864)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2442, file: !1534, line: 793, baseType: !18, size: 32, offset: 896)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2442, file: !1534, line: 794, baseType: !18, size: 32, offset: 928)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2442, file: !1534, line: 795, baseType: !59, size: 32, offset: 960)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2442, file: !1534, line: 797, baseType: !2481, size: 2048, offset: 1024)
!2481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1534, line: 551, size: 2048, elements: !2482)
!2482 = !{!2483, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2503, !2506, !2507, !2508}
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2481, file: !1534, line: 553, baseType: !2484, size: 128)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1534, line: 411, size: 128, elements: !2485)
!2485 = !{!2486, !2487}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2484, file: !1534, line: 412, baseType: !40, size: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2484, file: !1534, line: 413, baseType: !457, size: 32, offset: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2481, file: !1534, line: 554, baseType: !424, size: 192, align: 64, offset: 128)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2481, file: !1534, line: 555, baseType: !400, size: 64, offset: 320)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2481, file: !1534, line: 556, baseType: !400, size: 64, offset: 384)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2481, file: !1534, line: 558, baseType: !233, size: 128, offset: 448)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2481, file: !1534, line: 559, baseType: !59, size: 32, offset: 576)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2481, file: !1534, line: 561, baseType: !400, size: 64, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2481, file: !1534, line: 562, baseType: !400, size: 64, offset: 704)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2481, file: !1534, line: 563, baseType: !400, size: 64, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2481, file: !1534, line: 564, baseType: !400, size: 64, offset: 832)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2481, file: !1534, line: 565, baseType: !195, size: 64, offset: 896)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2481, file: !1534, line: 566, baseType: !400, size: 64, offset: 960)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2481, file: !1534, line: 568, baseType: !400, size: 64, offset: 1024)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2481, file: !1534, line: 571, baseType: !18, size: 32, offset: 1088)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2481, file: !1534, line: 572, baseType: !2502, size: 64, offset: 1152)
!2502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2481, file: !1534, line: 574, baseType: !2504, size: 64, offset: 1216)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1534, line: 49, flags: DIFlagFwdDecl)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2481, file: !1534, line: 576, baseType: !2504, size: 64, offset: 1280)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2481, file: !1534, line: 578, baseType: !40, size: 64, offset: 1344)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2481, file: !1534, line: 588, baseType: !2509, size: 512, align: 512, offset: 1536)
!2509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1534, line: 497, size: 512, align: 512, elements: !2510)
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2509, file: !1534, line: 498, baseType: !400, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2509, file: !1534, line: 499, baseType: !400, size: 64, offset: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2509, file: !1534, line: 500, baseType: !400, size: 64, offset: 128)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2509, file: !1534, line: 501, baseType: !457, size: 32, offset: 192)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2509, file: !1534, line: 502, baseType: !457, size: 32, offset: 224)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2509, file: !1534, line: 503, baseType: !40, size: 64, offset: 256)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2509, file: !1534, line: 504, baseType: !40, size: 64, offset: 320)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2509, file: !1534, line: 505, baseType: !40, size: 64, offset: 384)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2509, file: !1534, line: 506, baseType: !2520, size: 64, align: 64, offset: 448)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1534, line: 445, size: 64, align: 64, elements: !2521)
!2521 = !{!2522, !2523}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2520, file: !1534, line: 446, baseType: !59, size: 32)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2520, file: !1534, line: 447, baseType: !59, size: 32, offset: 32)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2442, file: !1534, line: 798, baseType: !2525, size: 384, offset: 3072)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1534, line: 592, size: 384, elements: !2526)
!2526 = !{!2527, !2528, !2529, !2530, !2531, !2532, !2533}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2525, file: !1534, line: 593, baseType: !233, size: 128)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2525, file: !1534, line: 594, baseType: !40, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2525, file: !1534, line: 595, baseType: !40, size: 64, offset: 192)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2525, file: !1534, line: 596, baseType: !59, size: 32, offset: 256)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2525, file: !1534, line: 597, baseType: !34, size: 16, offset: 288)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2525, file: !1534, line: 598, baseType: !34, size: 16, offset: 304)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2525, file: !1534, line: 600, baseType: !2534, size: 64, offset: 320)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2442, file: !1534, line: 799, baseType: !2536, size: 1792, offset: 3456)
!2536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1534, line: 610, size: 1792, elements: !2537)
!2537 = !{!2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2625, !2626}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2536, file: !1534, line: 611, baseType: !424, size: 192, align: 64)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2536, file: !1534, line: 618, baseType: !400, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2536, file: !1534, line: 619, baseType: !400, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2536, file: !1534, line: 620, baseType: !400, size: 64, offset: 320)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2536, file: !1534, line: 621, baseType: !400, size: 64, offset: 384)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2536, file: !1534, line: 622, baseType: !400, size: 64, offset: 448)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2536, file: !1534, line: 629, baseType: !195, size: 64, offset: 512)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2536, file: !1534, line: 630, baseType: !400, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2536, file: !1534, line: 631, baseType: !59, size: 32, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2536, file: !1534, line: 653, baseType: !59, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2536, file: !1534, line: 654, baseType: !59, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2536, file: !1534, line: 655, baseType: !59, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2536, file: !1534, line: 656, baseType: !59, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2536, file: !1534, line: 662, baseType: !2552, size: 512, offset: 704)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2553, line: 118, size: 512, elements: !2554)
!2553 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2554 = !{!2555, !2563, !2564, !2573, !2621, !2622, !2623, !2624}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2552, file: !2553, line: 119, baseType: !2556, size: 256)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2557, line: 9, size: 256, elements: !2558)
!2557 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2558 = !{!2559, !2560}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2556, file: !2557, line: 10, baseType: !424, size: 192, align: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2556, file: !2557, line: 11, baseType: !2561, size: 64, offset: 192)
!2561 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2562, line: 29, baseType: !195)
!2562 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2552, file: !2553, line: 120, baseType: !2561, size: 64, offset: 256)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2552, file: !2553, line: 121, baseType: !2565, size: 64, offset: 320)
!2565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2566, size: 64)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!2568, !2572}
!2568 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2553, line: 65, baseType: !59, size: 32, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2571 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2552, file: !2553, line: 122, baseType: !2574, size: 64, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2553, line: 159, size: 512, align: 512, elements: !2576)
!2576 = !{!2577, !2602, !2603, !2606, !2611, !2612, !2616, !2620}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2575, file: !2553, line: 160, baseType: !2578, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2579, size: 64)
!2579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2553, line: 215, size: 4608, align: 512, elements: !2580)
!2580 = !{!2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598}
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2579, file: !2553, line: 216, baseType: !199, size: 32)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2579, file: !2553, line: 217, baseType: !59, size: 32, offset: 32)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2579, file: !2553, line: 218, baseType: !59, size: 32, offset: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2579, file: !2553, line: 219, baseType: !59, size: 32, offset: 96)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2579, file: !2553, line: 220, baseType: !59, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2579, file: !2553, line: 221, baseType: !59, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2579, file: !2553, line: 222, baseType: !59, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2579, file: !2553, line: 223, baseType: !59, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2579, file: !2553, line: 224, baseType: !59, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2579, file: !2553, line: 226, baseType: !59, size: 32, offset: 160)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2579, file: !2553, line: 227, baseType: !34, size: 16, offset: 192)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2579, file: !2553, line: 228, baseType: !34, size: 16, offset: 208)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2579, file: !2553, line: 229, baseType: !59, size: 32, offset: 224)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2579, file: !2553, line: 235, baseType: !2561, size: 64, offset: 256)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2579, file: !2553, line: 236, baseType: !2572, size: 64, offset: 320)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2579, file: !2553, line: 237, baseType: !2561, size: 64, offset: 384)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2579, file: !2553, line: 238, baseType: !2572, size: 64, offset: 448)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2579, file: !2553, line: 239, baseType: !2599, size: 4096, align: 512, offset: 512)
!2599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2575, size: 4096, align: 512, elements: !2600)
!2600 = !{!2601}
!2601 = !DISubrange(count: 8)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2575, file: !2553, line: 161, baseType: !59, size: 32, offset: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2575, file: !2553, line: 162, baseType: !2604, size: 32, offset: 96)
!2604 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !191, line: 32, baseType: !2605)
!2605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !281, line: 96, baseType: !18)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2575, file: !2553, line: 163, baseType: !2607, size: 32, offset: 128)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !620, line: 274, baseType: !2608)
!2608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !620, line: 274, size: 32, elements: !2609)
!2609 = !{!2610}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2608, file: !620, line: 274, baseType: !624, size: 32)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2575, file: !2553, line: 164, baseType: !2572, size: 64, offset: 192)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2575, file: !2553, line: 165, baseType: !2613, size: 128, offset: 256)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2557, line: 14, size: 128, elements: !2614)
!2614 = !{!2615}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2613, file: !2557, line: 15, baseType: !1033, size: 128)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2575, file: !2553, line: 166, baseType: !2617, size: 64, offset: 384)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{!2561}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2575, file: !2553, line: 167, baseType: !2561, size: 64, offset: 448)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2552, file: !2553, line: 123, baseType: !220, size: 8, offset: 448)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2552, file: !2553, line: 124, baseType: !220, size: 8, offset: 456)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2552, file: !2553, line: 125, baseType: !220, size: 8, offset: 464)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2552, file: !2553, line: 126, baseType: !220, size: 8, offset: 472)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2536, file: !1534, line: 671, baseType: !2552, size: 512, offset: 1216)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2536, file: !1534, line: 679, baseType: !2627, size: 64, offset: 1728)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2536, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2442, file: !1534, line: 800, baseType: !2629, size: 64, offset: 5248)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2631)
!2631 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1534, line: 800, flags: DIFlagFwdDecl)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2442, file: !1534, line: 809, baseType: !2633, size: 64, offset: 5312)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1534, line: 70, flags: DIFlagFwdDecl)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2442, file: !1534, line: 825, baseType: !2636, size: 2048, align: 512, offset: 5632)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1534, line: 509, size: 2048, align: 512, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2636, file: !1534, line: 511, baseType: !400, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2636, file: !1534, line: 512, baseType: !400, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2636, file: !1534, line: 513, baseType: !400, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2636, file: !1534, line: 514, baseType: !400, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2636, file: !1534, line: 515, baseType: !400, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2636, file: !1534, line: 516, baseType: !400, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2636, file: !1534, line: 518, baseType: !400, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2636, file: !1534, line: 519, baseType: !400, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2636, file: !1534, line: 520, baseType: !195, size: 64, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2636, file: !1534, line: 522, baseType: !400, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2636, file: !1534, line: 523, baseType: !400, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2636, file: !1534, line: 524, baseType: !195, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2636, file: !1534, line: 526, baseType: !195, size: 64, offset: 768)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2636, file: !1534, line: 527, baseType: !400, size: 64, offset: 832)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2636, file: !1534, line: 529, baseType: !400, size: 64, offset: 896)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2636, file: !1534, line: 530, baseType: !400, size: 64, offset: 960)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2636, file: !1534, line: 531, baseType: !400, size: 64, offset: 1024)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2636, file: !1534, line: 532, baseType: !400, size: 64, offset: 1088)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2636, file: !1534, line: 533, baseType: !400, size: 64, offset: 1152)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2636, file: !1534, line: 535, baseType: !400, size: 64, offset: 1216)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2636, file: !1534, line: 536, baseType: !400, size: 64, offset: 1280)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2636, file: !1534, line: 537, baseType: !400, size: 64, offset: 1344)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2636, file: !1534, line: 538, baseType: !400, size: 64, offset: 1408)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2636, file: !1534, line: 539, baseType: !400, size: 64, offset: 1472)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2636, file: !1534, line: 540, baseType: !400, size: 64, offset: 1536)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2636, file: !1534, line: 541, baseType: !400, size: 64, offset: 1600)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2636, file: !1534, line: 542, baseType: !400, size: 64, offset: 1664)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2636, file: !1534, line: 543, baseType: !400, size: 64, offset: 1728)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2442, file: !1534, line: 833, baseType: !59, size: 32, offset: 7680)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2442, file: !1534, line: 836, baseType: !59, size: 32, offset: 7712)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2442, file: !1534, line: 837, baseType: !18, size: 32, offset: 7744)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2442, file: !1534, line: 838, baseType: !2670, size: 64, offset: 7808)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2673, line: 19, baseType: !2674)
!2673 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2673, line: 19, size: 64, elements: !2675)
!2675 = !{!2676}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2674, file: !2673, line: 19, baseType: !39, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2442, file: !1534, line: 839, baseType: !2678, size: 64, offset: 7872)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2442, file: !1534, line: 840, baseType: !2672, size: 64, offset: 7936)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2442, file: !1534, line: 841, baseType: !63, size: 64, offset: 8000)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2442, file: !1534, line: 843, baseType: !34, size: 16, offset: 8064)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2442, file: !1534, line: 845, baseType: !34, size: 16, offset: 8080)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2442, file: !1534, line: 848, baseType: !18, size: 32, offset: 8096)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2442, file: !1534, line: 849, baseType: !2685, size: 32, offset: 8128)
!2685 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1534, line: 718, size: 32, elements: !2686)
!2686 = !{!2687, !2694}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2685, file: !1534, line: 724, baseType: !2688, size: 32)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2685, file: !1534, line: 719, size: 32, elements: !2689)
!2689 = !{!2690, !2691, !2692, !2693}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2688, file: !1534, line: 720, baseType: !220, size: 8)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2688, file: !1534, line: 721, baseType: !220, size: 8, offset: 8)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2688, file: !1534, line: 722, baseType: !220, size: 8, offset: 16)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2688, file: !1534, line: 723, baseType: !220, size: 8, offset: 24)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2685, file: !1534, line: 725, baseType: !457, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2442, file: !1534, line: 850, baseType: !233, size: 128, offset: 8192)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2442, file: !1534, line: 851, baseType: !2697, size: 64, offset: 8320)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1534, line: 60, flags: DIFlagFwdDecl)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2442, file: !1534, line: 855, baseType: !40, size: 64, offset: 8384)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2442, file: !1534, line: 856, baseType: !220, size: 8, offset: 8448)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2442, file: !1534, line: 857, baseType: !220, size: 8, offset: 8456)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2442, file: !1534, line: 858, baseType: !18, size: 32, offset: 8480)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2442, file: !1534, line: 859, baseType: !233, size: 128, offset: 8512)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2442, file: !1534, line: 860, baseType: !18, size: 32, offset: 8640)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2442, file: !1534, line: 861, baseType: !233, size: 128, offset: 8704)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2442, file: !1534, line: 873, baseType: !2707, size: 256, offset: 8832)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1534, line: 376, size: 256, elements: !2708)
!2708 = !{!2709, !2710, !2711, !2712}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2707, file: !1534, line: 381, baseType: !40, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2707, file: !1534, line: 384, baseType: !402, size: 64, offset: 64)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2707, file: !1534, line: 389, baseType: !402, size: 64, offset: 128)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2707, file: !1534, line: 392, baseType: !402, size: 64, offset: 192)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2442, file: !1534, line: 875, baseType: !233, size: 128, offset: 9088)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2442, file: !1534, line: 877, baseType: !2715, size: 320, offset: 9216)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2716, line: 86, size: 320, elements: !2717)
!2716 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2717 = !{!2718, !2719, !2720}
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2715, file: !2716, line: 87, baseType: !18, size: 32)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2715, file: !2716, line: 88, baseType: !233, size: 128, offset: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2715, file: !2716, line: 89, baseType: !233, size: 128, offset: 192)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2442, file: !1534, line: 878, baseType: !424, size: 192, align: 64, offset: 9536)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2442, file: !1534, line: 881, baseType: !1326, size: 64, offset: 9728)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2442, file: !1534, line: 882, baseType: !1326, size: 64, offset: 9792)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2442, file: !1534, line: 884, baseType: !18, size: 32, offset: 9856)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2442, file: !1534, line: 885, baseType: !18, size: 32, offset: 9888)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2442, file: !1534, line: 886, baseType: !18, size: 32, offset: 9920)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2442, file: !1534, line: 888, baseType: !18, size: 32, offset: 9952)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2442, file: !1534, line: 890, baseType: !40, size: 64, offset: 9984)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2442, file: !1534, line: 893, baseType: !59, size: 32, offset: 10048)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2442, file: !1534, line: 896, baseType: !59, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2442, file: !1534, line: 897, baseType: !59, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2442, file: !1534, line: 898, baseType: !59, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2442, file: !1534, line: 899, baseType: !59, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2442, file: !1534, line: 919, baseType: !59, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2442, file: !1534, line: 922, baseType: !59, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2442, file: !1534, line: 923, baseType: !59, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2442, file: !1534, line: 925, baseType: !59, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2442, file: !1534, line: 939, baseType: !59, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2442, file: !1534, line: 941, baseType: !59, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2442, file: !1534, line: 944, baseType: !59, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2442, file: !1534, line: 956, baseType: !59, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2442, file: !1534, line: 962, baseType: !59, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2442, file: !1534, line: 966, baseType: !59, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2442, file: !1534, line: 969, baseType: !40, size: 64, offset: 10176)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2442, file: !1534, line: 971, baseType: !2746, size: 448, offset: 10240)
!2746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2747, line: 25, size: 448, elements: !2748)
!2747 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2748 = !{!2749, !2750, !2755}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2746, file: !2747, line: 26, baseType: !40, size: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2746, file: !2747, line: 27, baseType: !2751, size: 64, offset: 64)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DISubroutineType(types: !2753)
!2753 = !{!768, !2754}
!2754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2746, size: 64)
!2755 = !DIDerivedType(tag: DW_TAG_member, scope: !2746, file: !2747, line: 28, baseType: !2756, size: 320, offset: 128)
!2756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2746, file: !2747, line: 28, size: 320, elements: !2757)
!2757 = !{!2758, !2768, !2798}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2756, file: !2747, line: 37, baseType: !2759, size: 320)
!2759 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2747, line: 30, size: 320, elements: !2760)
!2760 = !{!2761, !2763, !2764, !2765, !2766, !2767}
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2759, file: !2747, line: 31, baseType: !2762, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2759, file: !2747, line: 32, baseType: !457, size: 32, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2759, file: !2747, line: 33, baseType: !457, size: 32, offset: 96)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2759, file: !2747, line: 34, baseType: !457, size: 32, offset: 128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2759, file: !2747, line: 35, baseType: !400, size: 64, offset: 192)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2759, file: !2747, line: 36, baseType: !2762, size: 64, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2756, file: !2747, line: 47, baseType: !2769, size: 192)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2747, line: 39, size: 192, elements: !2770)
!2770 = !{!2771, !2772, !2778, !2797}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2769, file: !2747, line: 40, baseType: !2604, size: 32)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2769, file: !2747, line: 41, baseType: !2773, size: 32, offset: 32)
!2773 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2747, line: 16, baseType: !59, size: 32, elements: !2774)
!2774 = !{!2775, !2776, !2777}
!2775 = !DIEnumerator(name: "TT_NONE", value: 0)
!2776 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2777 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2778 = !DIDerivedType(tag: DW_TAG_member, scope: !2769, file: !2747, line: 42, baseType: !2779, size: 64, offset: 64)
!2779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2769, file: !2747, line: 42, size: 64, elements: !2780)
!2780 = !{!2781, !2789}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2779, file: !2747, line: 43, baseType: !2782, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2784, line: 7, size: 128, elements: !2785)
!2784 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2785 = !{!2786, !2788}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2783, file: !2784, line: 8, baseType: !2787, size: 64)
!2787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !281, line: 93, baseType: !197)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2783, file: !2784, line: 9, baseType: !197, size: 64, offset: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2779, file: !2747, line: 44, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2792, line: 7, size: 64, elements: !2793)
!2792 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2793 = !{!2794, !2796}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2791, file: !2792, line: 8, baseType: !2795, size: 32)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2792, line: 5, baseType: !417)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2791, file: !2792, line: 9, baseType: !417, size: 32, offset: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2769, file: !2747, line: 46, baseType: !400, size: 64, offset: 128)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2756, file: !2747, line: 55, baseType: !2799, size: 256)
!2799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2756, file: !2747, line: 49, size: 256, elements: !2800)
!2800 = !{!2801, !2804, !2805, !2806, !2807}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2799, file: !2747, line: 50, baseType: !2802, size: 64)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2747, line: 14, flags: DIFlagFwdDecl)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2799, file: !2747, line: 51, baseType: !18, size: 32, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2799, file: !2747, line: 52, baseType: !18, size: 32, offset: 96)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2799, file: !2747, line: 53, baseType: !40, size: 64, offset: 128)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2799, file: !2747, line: 54, baseType: !40, size: 64, offset: 192)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2442, file: !1534, line: 973, baseType: !2809, size: 32, offset: 10688)
!2809 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !191, line: 27, baseType: !2810)
!2810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !281, line: 28, baseType: !18)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2442, file: !1534, line: 974, baseType: !2809, size: 32, offset: 10720)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2442, file: !1534, line: 978, baseType: !40, size: 64, offset: 10752)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2442, file: !1534, line: 987, baseType: !2441, size: 64, offset: 10816)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2442, file: !1534, line: 990, baseType: !2441, size: 64, offset: 10880)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2442, file: !1534, line: 995, baseType: !233, size: 128, offset: 10944)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2442, file: !1534, line: 996, baseType: !233, size: 128, offset: 11072)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2442, file: !1534, line: 997, baseType: !2441, size: 64, offset: 11200)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2442, file: !1534, line: 1005, baseType: !233, size: 128, offset: 11264)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2442, file: !1534, line: 1006, baseType: !233, size: 128, offset: 11392)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2442, file: !1534, line: 1009, baseType: !310, size: 64, offset: 11520)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2442, file: !1534, line: 1010, baseType: !2822, size: 512, offset: 11584)
!2822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 512, elements: !333)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2442, file: !1534, line: 1011, baseType: !233, size: 128, offset: 12096)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2442, file: !1534, line: 1012, baseType: !233, size: 128, offset: 12224)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2442, file: !1534, line: 1014, baseType: !1711, size: 64, offset: 12352)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2442, file: !1534, line: 1017, baseType: !1855, size: 64, offset: 12416)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2442, file: !1534, line: 1020, baseType: !1855, size: 64, offset: 12480)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2442, file: !1534, line: 1023, baseType: !63, size: 64, offset: 12544)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2442, file: !1534, line: 1025, baseType: !400, size: 64, offset: 12608)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2442, file: !1534, line: 1026, baseType: !400, size: 64, offset: 12672)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2442, file: !1534, line: 1031, baseType: !400, size: 64, offset: 12736)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2442, file: !1534, line: 1032, baseType: !2833, size: 192, offset: 12800)
!2833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1534, line: 324, size: 192, elements: !2834)
!2834 = !{!2835, !2836, !2837}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2833, file: !1534, line: 326, baseType: !400, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2833, file: !1534, line: 327, baseType: !400, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2833, file: !1534, line: 328, baseType: !199, size: 32, offset: 128)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2442, file: !1534, line: 1041, baseType: !40, size: 64, offset: 12992)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2442, file: !1534, line: 1042, baseType: !40, size: 64, offset: 13056)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2442, file: !1534, line: 1045, baseType: !400, size: 64, offset: 13120)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2442, file: !1534, line: 1048, baseType: !400, size: 64, offset: 13184)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2442, file: !1534, line: 1051, baseType: !40, size: 64, offset: 13248)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2442, file: !1534, line: 1052, baseType: !40, size: 64, offset: 13312)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2442, file: !1534, line: 1055, baseType: !2845, size: 640, offset: 13376)
!2845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2846, line: 132, size: 640, elements: !2847)
!2846 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2847 = !{!2848, !2854, !2855}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2845, file: !2846, line: 133, baseType: !2849, size: 576)
!2849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2850, size: 576, elements: !306)
!2850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2846, line: 117, size: 192, elements: !2851)
!2851 = !{!2852, !2853}
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2850, file: !2846, line: 118, baseType: !400, size: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2850, file: !2846, line: 119, baseType: !2613, size: 128, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2845, file: !2846, line: 134, baseType: !59, size: 32, offset: 576)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2845, file: !2846, line: 135, baseType: !59, size: 32, offset: 608)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2442, file: !1534, line: 1058, baseType: !2857, size: 448, offset: 14016)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2846, line: 144, size: 448, elements: !2858)
!2858 = !{!2859, !2860, !2861}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2857, file: !2846, line: 145, baseType: !256, size: 128, align: 64)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2857, file: !2846, line: 146, baseType: !184, size: 256, offset: 128)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2857, file: !2846, line: 147, baseType: !59, size: 32, offset: 384)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2442, file: !1534, line: 1064, baseType: !373, size: 64, offset: 14464)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2442, file: !1534, line: 1067, baseType: !373, size: 64, offset: 14528)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2442, file: !1534, line: 1070, baseType: !373, size: 64, offset: 14592)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2442, file: !1534, line: 1074, baseType: !409, size: 64, offset: 14656)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2442, file: !1534, line: 1084, baseType: !2867, size: 128, offset: 14720)
!2867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2868)
!2868 = !{!2869}
!2869 = !DISubrange(count: 16)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2442, file: !1534, line: 1086, baseType: !2871, size: 64, offset: 14848)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1534, line: 55, flags: DIFlagFwdDecl)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2442, file: !1534, line: 1089, baseType: !2874, size: 64, offset: 14912)
!2874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2875, line: 12, size: 64, elements: !2876)
!2875 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2876 = !{!2877}
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2874, file: !2875, line: 13, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2879, size: 64)
!2879 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2875, line: 8, flags: DIFlagFwdDecl)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2442, file: !1534, line: 1090, baseType: !2881, size: 128, offset: 14976)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2882, line: 13, size: 128, elements: !2883)
!2882 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2883 = !{!2884}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2881, file: !2882, line: 14, baseType: !233, size: 128)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2442, file: !1534, line: 1097, baseType: !2886, size: 64, offset: 15104)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1534, line: 50, flags: DIFlagFwdDecl)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2442, file: !1534, line: 1100, baseType: !2889, size: 64, offset: 15168)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2890, size: 64)
!2890 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1534, line: 1100, flags: DIFlagFwdDecl)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2442, file: !1534, line: 1103, baseType: !2892, size: 64, offset: 15232)
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1534, line: 53, flags: DIFlagFwdDecl)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2442, file: !1534, line: 1107, baseType: !2895, size: 64, offset: 15296)
!2895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2896, size: 64)
!2896 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1534, line: 56, flags: DIFlagFwdDecl)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2442, file: !1534, line: 1110, baseType: !2898, size: 64, offset: 15360)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2900, line: 93, size: 8768, elements: !2901)
!2900 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2901 = !{!2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2949, !2958, !2959, !2961, !2962, !2963, !2966, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991, !2992, !2993, !3004, !3005, !3012, !3022, !3025, !3026, !3029, !3030, !3031, !3032, !3033, !3034}
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2899, file: !2900, line: 94, baseType: !315, size: 32)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2899, file: !2900, line: 95, baseType: !212, size: 32, offset: 32)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2899, file: !2900, line: 96, baseType: !18, size: 32, offset: 64)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2899, file: !2900, line: 97, baseType: !18, size: 32, offset: 96)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2899, file: !2900, line: 98, baseType: !233, size: 128, offset: 128)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2899, file: !2900, line: 100, baseType: !337, size: 192, offset: 256)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2899, file: !2900, line: 103, baseType: !2441, size: 64, offset: 448)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2899, file: !2900, line: 106, baseType: !2910, size: 192, offset: 512)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !580, line: 32, size: 192, elements: !2911)
!2911 = !{!2912, !2913}
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2910, file: !580, line: 33, baseType: !233, size: 128)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2910, file: !580, line: 34, baseType: !2914, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2915, line: 25, baseType: !2916)
!2915 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2915, line: 23, size: 64, elements: !2917)
!2917 = !{!2918}
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2916, file: !2915, line: 24, baseType: !39, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2899, file: !2900, line: 109, baseType: !324, size: 64, offset: 704)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2899, file: !2900, line: 112, baseType: !18, size: 32, offset: 768)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2899, file: !2900, line: 114, baseType: !18, size: 32, offset: 800)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2899, file: !2900, line: 115, baseType: !2441, size: 64, offset: 832)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2899, file: !2900, line: 118, baseType: !18, size: 32, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2899, file: !2900, line: 119, baseType: !59, size: 32, offset: 928)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2899, file: !2900, line: 121, baseType: !2926, size: 64, offset: 960)
!2926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2927, size: 64)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2900, line: 80, size: 448, elements: !2928)
!2928 = !{!2929, !2930, !2936}
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2927, file: !2900, line: 81, baseType: !212, size: 32)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2927, file: !2900, line: 82, baseType: !2931, size: 128, offset: 64)
!2931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2900, line: 75, size: 128, elements: !2932)
!2932 = !{!2933, !2934}
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2931, file: !2900, line: 76, baseType: !2441, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2931, file: !2900, line: 77, baseType: !2935, size: 64, offset: 64)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2931, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2927, file: !2900, line: 83, baseType: !1712, size: 256, offset: 192)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2899, file: !2900, line: 132, baseType: !59, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2899, file: !2900, line: 133, baseType: !59, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2899, file: !2900, line: 138, baseType: !59, size: 32, offset: 1056)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2899, file: !2900, line: 139, baseType: !233, size: 128, offset: 1088)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2899, file: !2900, line: 142, baseType: !2552, size: 512, offset: 1216)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2899, file: !2900, line: 143, baseType: !2561, size: 64, offset: 1728)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2899, file: !2900, line: 150, baseType: !2944, size: 256, offset: 1792)
!2944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2945, size: 256, elements: !55)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2900, line: 38, size: 128, elements: !2946)
!2946 = !{!2947, !2948}
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2945, file: !2900, line: 39, baseType: !400, size: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2945, file: !2900, line: 40, baseType: !400, size: 64, offset: 64)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2899, file: !2900, line: 156, baseType: !2950, size: 192, offset: 2048)
!2950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2900, line: 66, size: 192, elements: !2951)
!2951 = !{!2952}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2950, file: !2900, line: 67, baseType: !2953, size: 192)
!2953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2900, line: 47, size: 192, elements: !2954)
!2954 = !{!2955, !2956, !2957}
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2953, file: !2900, line: 48, baseType: !190, size: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2953, file: !2900, line: 49, baseType: !190, size: 64, offset: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2953, file: !2900, line: 50, baseType: !190, size: 64, offset: 128)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2899, file: !2900, line: 160, baseType: !2845, size: 640, offset: 2240)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2899, file: !2900, line: 163, baseType: !2960, size: 256, offset: 2880)
!2960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !333)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2899, file: !2900, line: 169, baseType: !310, size: 64, offset: 3136)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2899, file: !2900, line: 172, baseType: !18, size: 32, offset: 3200)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2899, file: !2900, line: 174, baseType: !2964, size: 64, offset: 3264)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2900, line: 174, flags: DIFlagFwdDecl)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2899, file: !2900, line: 185, baseType: !2967, size: 64, offset: 3328)
!2967 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !620, line: 860, baseType: !2968)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !620, line: 853, size: 64, elements: !2969)
!2969 = !{!2970, !2971}
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2968, file: !620, line: 858, baseType: !619, size: 32)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2968, file: !620, line: 859, baseType: !266, size: 32, offset: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2899, file: !2900, line: 186, baseType: !400, size: 64, offset: 3392)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2899, file: !2900, line: 186, baseType: !400, size: 64, offset: 3456)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2899, file: !2900, line: 186, baseType: !400, size: 64, offset: 3520)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2899, file: !2900, line: 186, baseType: !400, size: 64, offset: 3584)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2899, file: !2900, line: 187, baseType: !400, size: 64, offset: 3648)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2899, file: !2900, line: 188, baseType: !400, size: 64, offset: 3712)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2899, file: !2900, line: 189, baseType: !2833, size: 192, offset: 3776)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2899, file: !2900, line: 190, baseType: !40, size: 64, offset: 3968)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2899, file: !2900, line: 190, baseType: !40, size: 64, offset: 4032)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2899, file: !2900, line: 190, baseType: !40, size: 64, offset: 4096)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2899, file: !2900, line: 190, baseType: !40, size: 64, offset: 4160)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2899, file: !2900, line: 191, baseType: !40, size: 64, offset: 4224)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2899, file: !2900, line: 191, baseType: !40, size: 64, offset: 4288)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2899, file: !2900, line: 191, baseType: !40, size: 64, offset: 4352)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2899, file: !2900, line: 191, baseType: !40, size: 64, offset: 4416)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2899, file: !2900, line: 192, baseType: !40, size: 64, offset: 4480)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2899, file: !2900, line: 192, baseType: !40, size: 64, offset: 4544)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2899, file: !2900, line: 192, baseType: !40, size: 64, offset: 4608)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2899, file: !2900, line: 192, baseType: !40, size: 64, offset: 4672)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2899, file: !2900, line: 193, baseType: !40, size: 64, offset: 4736)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2899, file: !2900, line: 193, baseType: !40, size: 64, offset: 4800)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2899, file: !2900, line: 194, baseType: !2994, size: 448, offset: 4864)
!2994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2995, line: 12, size: 448, elements: !2996)
!2995 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2996 = !{!2997, !2998, !2999, !3000, !3001, !3002, !3003}
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2994, file: !2995, line: 15, baseType: !400, size: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2994, file: !2995, line: 17, baseType: !400, size: 64, offset: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2994, file: !2995, line: 19, baseType: !400, size: 64, offset: 128)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2994, file: !2995, line: 21, baseType: !400, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2994, file: !2995, line: 29, baseType: !400, size: 64, offset: 256)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2994, file: !2995, line: 35, baseType: !400, size: 64, offset: 320)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2994, file: !2995, line: 44, baseType: !400, size: 64, offset: 384)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2899, file: !2900, line: 202, baseType: !402, size: 64, offset: 5312)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2899, file: !2900, line: 213, baseType: !3006, size: 2048, offset: 5376)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3007, size: 2048, elements: !2868)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3008, line: 43, size: 128, elements: !3009)
!3008 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3009 = !{!3010, !3011}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3007, file: !3008, line: 44, baseType: !812, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3007, file: !3008, line: 45, baseType: !812, size: 64, offset: 64)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2899, file: !2900, line: 216, baseType: !3013, size: 448, offset: 7424)
!3013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2900, line: 30, size: 448, elements: !3014)
!3014 = !{!3015, !3016, !3017, !3018, !3019, !3020, !3021}
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3013, file: !2900, line: 31, baseType: !18, size: 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3013, file: !2900, line: 32, baseType: !768, size: 64, offset: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3013, file: !2900, line: 33, baseType: !40, size: 64, offset: 128)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3013, file: !2900, line: 34, baseType: !400, size: 64, offset: 192)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3013, file: !2900, line: 34, baseType: !400, size: 64, offset: 256)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3013, file: !2900, line: 35, baseType: !40, size: 64, offset: 320)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3013, file: !2900, line: 35, baseType: !40, size: 64, offset: 384)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2899, file: !2900, line: 219, baseType: !3023, size: 64, offset: 7872)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2900, line: 219, flags: DIFlagFwdDecl)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2899, file: !2900, line: 222, baseType: !59, size: 32, offset: 7936)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2899, file: !2900, line: 223, baseType: !3027, size: 64, offset: 8000)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2900, line: 223, flags: DIFlagFwdDecl)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2899, file: !2900, line: 230, baseType: !491, size: 8, offset: 8064)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2899, file: !2900, line: 231, baseType: !103, size: 16, offset: 8080)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2899, file: !2900, line: 232, baseType: !103, size: 16, offset: 8096)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2899, file: !2900, line: 234, baseType: !1326, size: 64, offset: 8128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2899, file: !2900, line: 237, baseType: !184, size: 256, offset: 8192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2899, file: !2900, line: 243, baseType: !432, size: 320, offset: 8448)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2442, file: !1534, line: 1111, baseType: !3036, size: 64, offset: 15424)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2900, line: 20, size: 16640, elements: !3038)
!3038 = !{!3039, !3040, !3041, !3042}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3037, file: !2900, line: 21, baseType: !266, size: 32)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3037, file: !2900, line: 22, baseType: !315, size: 32, offset: 32)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3037, file: !2900, line: 23, baseType: !337, size: 192, offset: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3037, file: !2900, line: 24, baseType: !3043, size: 16384, offset: 256)
!3043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3044, size: 16384, elements: !963)
!3044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !580, line: 51, size: 256, elements: !3045)
!3045 = !{!3046}
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3044, file: !580, line: 52, baseType: !3047, size: 256)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !580, line: 37, size: 256, elements: !3048)
!3048 = !{!3049, !3056, !3057, !3061}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3047, file: !580, line: 39, baseType: !3050, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3051, line: 83, baseType: !3052)
!3051 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3051, line: 82, baseType: !3054)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{null, !18}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3047, file: !580, line: 40, baseType: !40, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3047, file: !580, line: 46, baseType: !3058, size: 64, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3051, line: 86, baseType: !3059)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3051, line: 85, baseType: !2060)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3047, file: !580, line: 48, baseType: !2914, size: 64, offset: 192)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2442, file: !1534, line: 1112, baseType: !2914, size: 64, offset: 15488)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2442, file: !1534, line: 1113, baseType: !2914, size: 64, offset: 15552)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2442, file: !1534, line: 1115, baseType: !2914, size: 64, offset: 15616)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2442, file: !1534, line: 1116, baseType: !2910, size: 192, offset: 15680)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2442, file: !1534, line: 1117, baseType: !40, size: 64, offset: 15872)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2442, file: !1534, line: 1118, baseType: !810, size: 64, offset: 15936)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2442, file: !1534, line: 1119, baseType: !59, size: 32, offset: 16000)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2442, file: !1534, line: 1121, baseType: !259, size: 64, offset: 16064)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2442, file: !1534, line: 1125, baseType: !3071, size: 64, offset: 16128)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1534, line: 43, flags: DIFlagFwdDecl)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2442, file: !1534, line: 1127, baseType: !363, size: 32, offset: 16192)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2442, file: !1534, line: 1128, baseType: !59, size: 32, offset: 16224)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2442, file: !1534, line: 1130, baseType: !3076, size: 128, offset: 16256)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3077, line: 37, size: 128, elements: !3078)
!3077 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3078 = !{!3079, !3080, !3081}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3076, file: !3077, line: 38, baseType: !18, size: 32)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3076, file: !3077, line: 39, baseType: !212, size: 32, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3076, file: !3077, line: 40, baseType: !3082, size: 64, offset: 64)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3077, line: 24, flags: DIFlagFwdDecl)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2442, file: !1534, line: 1131, baseType: !3085, size: 256, offset: 16384)
!3085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3086, line: 12, size: 256, elements: !3087)
!3086 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3087 = !{!3088, !3089, !3090, !3091}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3085, file: !3086, line: 13, baseType: !502, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3085, file: !3086, line: 14, baseType: !40, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3085, file: !3086, line: 15, baseType: !40, size: 64, offset: 128)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3085, file: !3086, line: 16, baseType: !491, size: 8, offset: 192)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2442, file: !1534, line: 1134, baseType: !400, size: 64, offset: 16640)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2442, file: !1534, line: 1135, baseType: !400, size: 64, offset: 16704)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2442, file: !1534, line: 1138, baseType: !266, size: 32, offset: 16768)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2442, file: !1534, line: 1141, baseType: !199, size: 32, offset: 16800)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2442, file: !1534, line: 1143, baseType: !3097, size: 64, offset: 16832)
!3097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1534, line: 735, size: 64, elements: !3098)
!3098 = !{!3099}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3097, file: !1534, line: 736, baseType: !3100, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2442, file: !1534, line: 1147, baseType: !1033, size: 128, offset: 16896)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2442, file: !1534, line: 1149, baseType: !2441, size: 64, offset: 17024)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2442, file: !1534, line: 1151, baseType: !3104, size: 64, offset: 17088)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1534, line: 1151, flags: DIFlagFwdDecl)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2442, file: !1534, line: 1188, baseType: !63, size: 64, offset: 17152)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2442, file: !1534, line: 1191, baseType: !3108, size: 64, offset: 17216)
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1534, line: 44, flags: DIFlagFwdDecl)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2442, file: !1534, line: 1194, baseType: !3111, size: 64, offset: 17280)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1534, line: 45, flags: DIFlagFwdDecl)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2442, file: !1534, line: 1197, baseType: !3114, size: 64, offset: 17344)
!3114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3115 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1534, line: 61, flags: DIFlagFwdDecl)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2442, file: !1534, line: 1199, baseType: !3117, size: 64, offset: 17408)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3119, line: 99, size: 128, elements: !3120)
!3119 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3118, file: !3119, line: 100, baseType: !188, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3118, file: !3119, line: 101, baseType: !212, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3118, file: !3119, line: 103, baseType: !34, size: 16, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2442, file: !1534, line: 1202, baseType: !3125, size: 64, offset: 17472)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1534, line: 48, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2442, file: !1534, line: 1205, baseType: !40, size: 64, offset: 17536)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2442, file: !1534, line: 1206, baseType: !3129, size: 64, offset: 17600)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !580, line: 14, baseType: !3131)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !580, line: 12, size: 384, elements: !3132)
!3132 = !{!3133}
!3133 = !DIDerivedType(tag: DW_TAG_member, scope: !3131, file: !580, line: 13, baseType: !3134, size: 384)
!3134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3131, file: !580, line: 13, size: 384, elements: !3135)
!3135 = !{!3136, !3137, !3138, !3139}
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3134, file: !580, line: 13, baseType: !18, size: 32)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3134, file: !580, line: 13, baseType: !18, size: 32, offset: 32)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3134, file: !580, line: 13, baseType: !18, size: 32, offset: 64)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3134, file: !580, line: 13, baseType: !3140, size: 256, offset: 128)
!3140 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3141, line: 37, size: 256, elements: !3142)
!3141 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3142 = !{!3143, !3148, !3161, !3167, !3176, !3203, !3208}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3140, file: !3141, line: 42, baseType: !3144, size: 64)
!3144 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3141, line: 39, size: 64, elements: !3145)
!3145 = !{!3146, !3147}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3144, file: !3141, line: 40, baseType: !2810, size: 32)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3144, file: !3141, line: 41, baseType: !369, size: 32, offset: 32)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3140, file: !3141, line: 50, baseType: !3149, size: 192)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3141, line: 45, size: 192, elements: !3150)
!3150 = !{!3151, !3153, !3154, !3160}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3149, file: !3141, line: 46, baseType: !3152, size: 32)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !281, line: 95, baseType: !18)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3149, file: !3141, line: 47, baseType: !18, size: 32, offset: 32)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3149, file: !3141, line: 48, baseType: !3155, size: 64, offset: 64)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3141, line: 11, baseType: !3156)
!3156 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3141, line: 8, size: 64, elements: !3157)
!3157 = !{!3158, !3159}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3156, file: !3141, line: 9, baseType: !18, size: 32)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3156, file: !3141, line: 10, baseType: !63, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3149, file: !3141, line: 49, baseType: !18, size: 32, offset: 128)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3140, file: !3141, line: 57, baseType: !3162, size: 128)
!3162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3141, line: 53, size: 128, elements: !3163)
!3163 = !{!3164, !3165, !3166}
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3162, file: !3141, line: 54, baseType: !2810, size: 32)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3162, file: !3141, line: 55, baseType: !369, size: 32, offset: 32)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3162, file: !3141, line: 56, baseType: !3155, size: 64, offset: 64)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3140, file: !3141, line: 66, baseType: !3168, size: 256)
!3168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3141, line: 60, size: 256, elements: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3175}
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3168, file: !3141, line: 61, baseType: !2810, size: 32)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3168, file: !3141, line: 62, baseType: !369, size: 32, offset: 32)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3168, file: !3141, line: 63, baseType: !18, size: 32, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3168, file: !3141, line: 64, baseType: !3174, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !281, line: 94, baseType: !809)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3168, file: !3141, line: 65, baseType: !3174, size: 64, offset: 192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3140, file: !3141, line: 105, baseType: !3177, size: 256)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3141, line: 69, size: 256, elements: !3178)
!3178 = !{!3179, !3180}
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3177, file: !3141, line: 70, baseType: !63, size: 64)
!3180 = !DIDerivedType(tag: DW_TAG_member, scope: !3177, file: !3141, line: 79, baseType: !3181, size: 192, offset: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3177, file: !3141, line: 79, size: 192, elements: !3182)
!3182 = !{!3183, !3184, !3185, !3192, !3197}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3181, file: !3141, line: 81, baseType: !18, size: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3181, file: !3141, line: 86, baseType: !103, size: 16)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3181, file: !3141, line: 92, baseType: !3186, size: 192)
!3186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !3141, line: 88, size: 192, elements: !3187)
!3187 = !{!3188, !3190, !3191}
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3186, file: !3141, line: 89, baseType: !3189, size: 64)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !2600)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3186, file: !3141, line: 90, baseType: !63, size: 64, offset: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3186, file: !3141, line: 91, baseType: !63, size: 64, offset: 128)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3181, file: !3141, line: 97, baseType: !3193, size: 96)
!3193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !3141, line: 94, size: 96, elements: !3194)
!3194 = !{!3195, !3196}
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3193, file: !3141, line: 95, baseType: !3189, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3193, file: !3141, line: 96, baseType: !78, size: 32, offset: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3181, file: !3141, line: 103, baseType: !3198, size: 128)
!3198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3181, file: !3141, line: 99, size: 128, elements: !3199)
!3199 = !{!3200, !3201, !3202}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3198, file: !3141, line: 100, baseType: !40, size: 64)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3198, file: !3141, line: 101, baseType: !78, size: 32, offset: 64)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3198, file: !3141, line: 102, baseType: !78, size: 32, offset: 96)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3140, file: !3141, line: 111, baseType: !3204, size: 128)
!3204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3141, line: 108, size: 128, elements: !3205)
!3205 = !{!3206, !3207}
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3204, file: !3141, line: 109, baseType: !768, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3204, file: !3141, line: 110, baseType: !18, size: 32, offset: 64)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3140, file: !3141, line: 118, baseType: !3209, size: 128)
!3209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3140, file: !3141, line: 114, size: 128, elements: !3210)
!3210 = !{!3211, !3212, !3213}
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3209, file: !3141, line: 115, baseType: !63, size: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3209, file: !3141, line: 116, baseType: !18, size: 32, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3209, file: !3141, line: 117, baseType: !59, size: 32, offset: 96)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2442, file: !1534, line: 1208, baseType: !2994, size: 448, offset: 17664)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2442, file: !1534, line: 1215, baseType: !400, size: 64, offset: 18112)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2442, file: !1534, line: 1217, baseType: !400, size: 64, offset: 18176)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2442, file: !1534, line: 1219, baseType: !400, size: 64, offset: 18240)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2442, file: !1534, line: 1223, baseType: !3219, size: 64, offset: 18304)
!3219 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3220, line: 99, baseType: !3221)
!3220 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3220, line: 99, size: 64, elements: !3222)
!3222 = !{!3223}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3221, file: !3220, line: 99, baseType: !39, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2442, file: !1534, line: 1225, baseType: !619, size: 32, offset: 18368)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2442, file: !1534, line: 1226, baseType: !18, size: 32, offset: 18400)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2442, file: !1534, line: 1227, baseType: !18, size: 32, offset: 18432)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2442, file: !1534, line: 1231, baseType: !3228, size: 64, offset: 18496)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3229, size: 64)
!3229 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1534, line: 1231, flags: DIFlagFwdDecl)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2442, file: !1534, line: 1233, baseType: !233, size: 128, offset: 18560)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2442, file: !1534, line: 1240, baseType: !3232, size: 64, offset: 18688)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1534, line: 62, flags: DIFlagFwdDecl)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2442, file: !1534, line: 1242, baseType: !3235, size: 64, offset: 18752)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1534, line: 1242, flags: DIFlagFwdDecl)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2442, file: !1534, line: 1244, baseType: !233, size: 128, offset: 18816)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2442, file: !1534, line: 1245, baseType: !3239, size: 64, offset: 18944)
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1534, line: 51, flags: DIFlagFwdDecl)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2442, file: !1534, line: 1246, baseType: !184, size: 256, offset: 19008)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2442, file: !1534, line: 1247, baseType: !59, size: 32, offset: 19264)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2442, file: !1534, line: 1250, baseType: !3244, size: 64, offset: 19328)
!3244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3245, size: 64)
!3245 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1534, line: 57, flags: DIFlagFwdDecl)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2442, file: !1534, line: 1251, baseType: !184, size: 256, offset: 19392)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2442, file: !1534, line: 1252, baseType: !233, size: 128, offset: 19648)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2442, file: !1534, line: 1259, baseType: !1532, size: 64, offset: 19776)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2442, file: !1534, line: 1260, baseType: !103, size: 16, offset: 19840)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2442, file: !1534, line: 1261, baseType: !103, size: 16, offset: 19856)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2442, file: !1534, line: 1314, baseType: !3252, size: 64, offset: 19904)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3254, line: 62, size: 256, align: 256, elements: !3255)
!3254 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3255 = !{!3256, !3257, !3258, !3259, !3260, !3261, !3262}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3253, file: !3254, line: 75, baseType: !78, size: 32)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3253, file: !3254, line: 90, baseType: !78, size: 32, offset: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3253, file: !3254, line: 112, baseType: !401, size: 64, offset: 64)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3253, file: !3254, line: 132, baseType: !78, size: 32, offset: 128)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3253, file: !3254, line: 140, baseType: !78, size: 32, offset: 160)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3253, file: !3254, line: 149, baseType: !78, size: 32, offset: 192)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3253, file: !3254, line: 154, baseType: !3263, offset: 224)
!3263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !352)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2442, file: !1534, line: 1315, baseType: !457, size: 32, offset: 19968)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2442, file: !1534, line: 1316, baseType: !457, size: 32, offset: 20000)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2442, file: !1534, line: 1321, baseType: !40, size: 64, offset: 20032)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2442, file: !1534, line: 1325, baseType: !18, size: 32, offset: 20096)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2442, file: !1534, line: 1326, baseType: !18, size: 32, offset: 20128)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2442, file: !1534, line: 1327, baseType: !18, size: 32, offset: 20160)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2442, file: !1534, line: 1328, baseType: !18, size: 32, offset: 20192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2442, file: !1534, line: 1329, baseType: !256, size: 128, align: 64, offset: 20224)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2442, file: !1534, line: 1332, baseType: !3273, size: 128, offset: 20352)
!3273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3274, line: 51, size: 128, elements: !3275)
!3274 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3275 = !{!3276, !3281, !3282}
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3273, file: !3274, line: 60, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3278, line: 7, size: 64, elements: !3279)
!3278 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3279 = !{!3280}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3277, file: !3278, line: 12, baseType: !2674, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3273, file: !3274, line: 63, baseType: !491, size: 8, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3273, file: !3274, line: 70, baseType: !491, size: 8, offset: 72)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2442, file: !1534, line: 1335, baseType: !3284, size: 64, offset: 20480)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1534, line: 59, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2442, file: !1534, line: 1337, baseType: !3287, size: 128, offset: 20544)
!3287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3274, line: 39, size: 128, elements: !3288)
!3288 = !{!3289, !3290, !3291}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3287, file: !3274, line: 40, baseType: !1051, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3287, file: !3274, line: 42, baseType: !78, size: 32, offset: 64)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3287, file: !3274, line: 43, baseType: !78, size: 32, offset: 96)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2442, file: !1534, line: 1340, baseType: !3293, size: 64, offset: 20672)
!3293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3294, size: 64)
!3294 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1534, line: 69, flags: DIFlagFwdDecl)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2442, file: !1534, line: 1351, baseType: !18, size: 32, offset: 20736)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2442, file: !1534, line: 1352, baseType: !18, size: 32, offset: 20768)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2442, file: !1534, line: 1354, baseType: !40, size: 64, offset: 20800)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2442, file: !1534, line: 1364, baseType: !400, size: 64, offset: 20864)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2442, file: !1534, line: 1365, baseType: !400, size: 64, offset: 20928)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2442, file: !1534, line: 1412, baseType: !40, size: 64, offset: 20992)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2442, file: !1534, line: 1453, baseType: !3302, size: 64, offset: 21056)
!3302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3303, size: 64)
!3303 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1534, line: 1453, flags: DIFlagFwdDecl)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2442, file: !1534, line: 1457, baseType: !3305, size: 64, offset: 21120)
!3305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3306, size: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1474, line: 61, size: 576, elements: !3307)
!3307 = !{!3308, !3315, !3334, !3337, !3338, !3371, !3381}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3306, file: !1474, line: 62, baseType: !3309, size: 32)
!3309 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1474, line: 51, baseType: !59, size: 32, elements: !3310)
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3312 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3313 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3314 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3315 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !1474, line: 64, baseType: !3316, size: 192, offset: 64)
!3316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3306, file: !1474, line: 64, size: 192, elements: !3317)
!3317 = !{!3318, !3329}
!3318 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !1474, line: 65, baseType: !3319, size: 192)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3316, file: !1474, line: 65, size: 192, elements: !3320)
!3320 = !{!3321, !3328}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3319, file: !1474, line: 66, baseType: !3322, size: 128)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3323, line: 50, size: 128, elements: !3324)
!3323 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3324 = !{!3325, !3326, !3327}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3322, file: !3323, line: 52, baseType: !40, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3322, file: !3323, line: 54, baseType: !59, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3322, file: !3323, line: 55, baseType: !59, size: 32, offset: 96)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3319, file: !1474, line: 67, baseType: !40, size: 64, offset: 128)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3316, file: !1474, line: 70, baseType: !3330, size: 192)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3316, file: !1474, line: 70, size: 192, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3330, file: !1474, line: 71, baseType: !256, size: 128, align: 64)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3330, file: !1474, line: 72, baseType: !40, size: 64, offset: 128)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3306, file: !1474, line: 76, baseType: !3335, size: 64, offset: 256)
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1474, line: 76, flags: DIFlagFwdDecl)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3306, file: !1474, line: 77, baseType: !40, size: 64, offset: 320)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3306, file: !1474, line: 79, baseType: !3339, size: 64, offset: 384)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3323, line: 25, size: 256, elements: !3341)
!3341 = !{!3342, !3348, !3352}
!3342 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3323, line: 26, baseType: !3343, size: 128)
!3343 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !3323, line: 26, size: 128, elements: !3344)
!3344 = !{!3345, !3347}
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3343, file: !3323, line: 27, baseType: !3346, size: 128)
!3346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 128, elements: !2868)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3343, file: !3323, line: 28, baseType: !3346, size: 128)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3340, file: !3323, line: 31, baseType: !3349, size: 64, offset: 128)
!3349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3351)
!3351 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3323, line: 23, flags: DIFlagFwdDecl)
!3352 = !DIDerivedType(tag: DW_TAG_member, scope: !3340, file: !3323, line: 33, baseType: !3353, size: 64, offset: 192)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3340, file: !3323, line: 33, size: 64, elements: !3354)
!3354 = !{!3355, !3361, !3366}
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3353, file: !3323, line: 38, baseType: !3356, size: 64)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3353, file: !3323, line: 34, size: 64, elements: !3357)
!3357 = !{!3358, !3359, !3360}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3356, file: !3323, line: 35, baseType: !417, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3356, file: !3323, line: 36, baseType: !220, size: 8, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3356, file: !3323, line: 37, baseType: !220, size: 8, offset: 40)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3353, file: !3323, line: 42, baseType: !3362, size: 16)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3353, file: !3323, line: 39, size: 16, elements: !3363)
!3363 = !{!3364, !3365}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3362, file: !3323, line: 40, baseType: !220, size: 8)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3362, file: !3323, line: 41, baseType: !220, size: 8, offset: 8)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3353, file: !3323, line: 46, baseType: !3367, size: 16)
!3367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3353, file: !3323, line: 43, size: 16, elements: !3368)
!3368 = !{!3369, !3370}
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3367, file: !3323, line: 44, baseType: !220, size: 8)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3367, file: !3323, line: 45, baseType: !220, size: 8, offset: 8)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3306, file: !1474, line: 81, baseType: !3372, size: 64, offset: 448)
!3372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3373, size: 64)
!3373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1474, line: 85, size: 384, elements: !3374)
!3374 = !{!3375, !3376, !3377, !3378, !3379, !3380}
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3373, file: !1474, line: 86, baseType: !3335, size: 64)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3373, file: !1474, line: 87, baseType: !40, size: 64, offset: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3373, file: !1474, line: 88, baseType: !40, size: 64, offset: 128)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3373, file: !1474, line: 89, baseType: !40, size: 64, offset: 192)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3373, file: !1474, line: 90, baseType: !491, size: 8, offset: 256)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3373, file: !1474, line: 92, baseType: !3372, size: 64, offset: 320)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3306, file: !1474, line: 82, baseType: !59, size: 32, offset: 512)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2442, file: !1534, line: 1463, baseType: !3383, offset: 21184)
!3383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1534, line: 739, elements: !1347)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2442, file: !1534, line: 1470, baseType: !256, size: 128, align: 64, offset: 21184)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2442, file: !1534, line: 1471, baseType: !315, size: 32, offset: 21312)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2442, file: !1534, line: 1472, baseType: !18, size: 32, offset: 21344)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2442, file: !1534, line: 1474, baseType: !2441, size: 64, offset: 21376)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2442, file: !1534, line: 1475, baseType: !1955, size: 320, offset: 21440)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2442, file: !1534, line: 1478, baseType: !3390, size: 64, offset: 21760)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1534, line: 1478, flags: DIFlagFwdDecl)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2442, file: !1534, line: 1482, baseType: !315, size: 32, offset: 21824)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2442, file: !1534, line: 1489, baseType: !63, size: 64, offset: 21888)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2442, file: !1534, line: 1504, baseType: !63, size: 64, offset: 21952)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2442, file: !1534, line: 1505, baseType: !401, size: 64, offset: 22016)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2442, file: !1534, line: 1506, baseType: !400, size: 64, offset: 22080)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2442, file: !1534, line: 1507, baseType: !401, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2442, file: !1534, line: 1508, baseType: !401, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2442, file: !1534, line: 1509, baseType: !401, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2442, file: !1534, line: 1510, baseType: !256, size: 128, align: 64, offset: 22208)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2442, file: !1534, line: 1511, baseType: !18, size: 32, offset: 22336)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2442, file: !1534, line: 1515, baseType: !3403, size: 64, offset: 22400)
!3403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !251, line: 56, size: 64, elements: !3404)
!3404 = !{!3405}
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3403, file: !251, line: 57, baseType: !254, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2442, file: !1534, line: 1518, baseType: !3403, size: 64, offset: 22464)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2442, file: !1534, line: 1528, baseType: !256, size: 128, align: 64, offset: 22528)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2442, file: !1534, line: 1552, baseType: !3409, size: 35328, offset: 23040)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3410, line: 430, size: 35328, elements: !3411)
!3410 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3411 = !{!3412, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3441, !3442, !3443, !3444, !3445, !3446, !3449, !3450, !3451, !3452}
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3409, file: !3410, line: 432, baseType: !3413, size: 192)
!3413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3414, size: 192, elements: !306)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3415, line: 16, size: 64, elements: !3416)
!3415 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3416 = !{!3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3414, file: !3415, line: 17, baseType: !174, size: 16)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3414, file: !3415, line: 18, baseType: !174, size: 16, offset: 16)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3414, file: !3415, line: 19, baseType: !174, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3414, file: !3415, line: 19, baseType: !174, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3414, file: !3415, line: 19, baseType: !174, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3414, file: !3415, line: 19, baseType: !174, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3414, file: !3415, line: 19, baseType: !174, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3414, file: !3415, line: 20, baseType: !174, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3414, file: !3415, line: 20, baseType: !174, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3414, file: !3415, line: 20, baseType: !174, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3414, file: !3415, line: 20, baseType: !174, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3414, file: !3415, line: 20, baseType: !174, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3414, file: !3415, line: 20, baseType: !174, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3409, file: !3410, line: 436, baseType: !40, size: 64, offset: 192)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3409, file: !3410, line: 440, baseType: !34, size: 16, offset: 256)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3409, file: !3410, line: 441, baseType: !34, size: 16, offset: 272)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3409, file: !3410, line: 442, baseType: !34, size: 16, offset: 288)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3409, file: !3410, line: 443, baseType: !34, size: 16, offset: 304)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3409, file: !3410, line: 447, baseType: !40, size: 64, offset: 320)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3409, file: !3410, line: 448, baseType: !40, size: 64, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3409, file: !3410, line: 459, baseType: !3438, size: 256, offset: 448)
!3438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3439, size: 256, elements: !333)
!3439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3440, size: 64)
!3440 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3410, line: 428, flags: DIFlagFwdDecl)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3409, file: !3410, line: 461, baseType: !40, size: 64, offset: 704)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3409, file: !3410, line: 463, baseType: !40, size: 64, offset: 768)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3409, file: !3410, line: 465, baseType: !40, size: 64, offset: 832)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3409, file: !3410, line: 466, baseType: !40, size: 64, offset: 896)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3409, file: !3410, line: 467, baseType: !40, size: 64, offset: 960)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3409, file: !3410, line: 473, baseType: !3447, size: 64, offset: 1024)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3410, line: 10, flags: DIFlagFwdDecl)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3409, file: !3410, line: 480, baseType: !40, size: 64, offset: 1088)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3409, file: !3410, line: 482, baseType: !59, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3409, file: !3410, line: 491, baseType: !457, size: 32, offset: 1184)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3409, file: !3410, line: 501, baseType: !3453, size: 33792, offset: 1536)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3454, line: 448, size: 33792, elements: !3455)
!3454 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3455 = !{!3456, !3457, !3458, !3616, !3617, !3623, !3624}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3453, file: !3454, line: 461, baseType: !59, size: 32)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3453, file: !3454, line: 468, baseType: !40, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3453, file: !3454, line: 476, baseType: !3459, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3460, size: 64)
!3460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3454, line: 356, size: 33280, align: 512, elements: !3461)
!3461 = !{!3462, !3463, !3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3460, file: !3454, line: 358, baseType: !59, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3460, file: !3454, line: 361, baseType: !59, size: 32, offset: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3460, file: !3454, line: 364, baseType: !400, size: 64, offset: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3460, file: !3454, line: 367, baseType: !400, size: 64, offset: 128)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3460, file: !3454, line: 370, baseType: !400, size: 64, offset: 192)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3460, file: !3454, line: 373, baseType: !59, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3460, file: !3454, line: 376, baseType: !59, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3460, file: !3454, line: 391, baseType: !59, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3460, file: !3454, line: 394, baseType: !59, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3460, file: !3454, line: 397, baseType: !3472, size: 32768, offset: 512)
!3472 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3454, line: 348, size: 32768, elements: !3473)
!3473 = !{!3474, !3487, !3522, !3599, !3612}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3472, file: !3454, line: 349, baseType: !3475, size: 896)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3454, line: 12, size: 896, elements: !3476)
!3476 = !{!3477, !3478, !3479, !3480, !3481, !3482, !3483, !3484, !3486}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3475, file: !3454, line: 13, baseType: !457, size: 32)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3475, file: !3454, line: 14, baseType: !457, size: 32, offset: 32)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3475, file: !3454, line: 15, baseType: !457, size: 32, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3475, file: !3454, line: 16, baseType: !457, size: 32, offset: 96)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3475, file: !3454, line: 17, baseType: !457, size: 32, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3475, file: !3454, line: 18, baseType: !457, size: 32, offset: 160)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3475, file: !3454, line: 19, baseType: !457, size: 32, offset: 192)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3475, file: !3454, line: 22, baseType: !3485, size: 640, offset: 224)
!3485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 640, elements: !11)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3475, file: !3454, line: 25, baseType: !457, size: 32, offset: 864)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3472, file: !3454, line: 350, baseType: !3488, size: 4096, align: 128)
!3488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3454, line: 34, size: 4096, align: 128, elements: !3489)
!3489 = !{!3490, !3491, !3492, !3493, !3494, !3509, !3510, !3511, !3513, !3515, !3517}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3488, file: !3454, line: 35, baseType: !174, size: 16)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3488, file: !3454, line: 36, baseType: !174, size: 16, offset: 16)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3488, file: !3454, line: 37, baseType: !174, size: 16, offset: 32)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3488, file: !3454, line: 38, baseType: !174, size: 16, offset: 48)
!3494 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !3454, line: 39, baseType: !3495, size: 128, offset: 64)
!3495 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3488, file: !3454, line: 39, size: 128, elements: !3496)
!3496 = !{!3497, !3502}
!3497 = !DIDerivedType(tag: DW_TAG_member, scope: !3495, file: !3454, line: 40, baseType: !3498, size: 128)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !3454, line: 40, size: 128, elements: !3499)
!3499 = !{!3500, !3501}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3498, file: !3454, line: 41, baseType: !400, size: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3498, file: !3454, line: 42, baseType: !400, size: 64, offset: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, scope: !3495, file: !3454, line: 44, baseType: !3503, size: 128)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3495, file: !3454, line: 44, size: 128, elements: !3504)
!3504 = !{!3505, !3506, !3507, !3508}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3503, file: !3454, line: 45, baseType: !457, size: 32)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3503, file: !3454, line: 46, baseType: !457, size: 32, offset: 32)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3503, file: !3454, line: 47, baseType: !457, size: 32, offset: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3503, file: !3454, line: 48, baseType: !457, size: 32, offset: 96)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3488, file: !3454, line: 51, baseType: !457, size: 32, offset: 192)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3488, file: !3454, line: 52, baseType: !457, size: 32, offset: 224)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3488, file: !3454, line: 55, baseType: !3512, size: 1024, offset: 256)
!3512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 1024, elements: !81)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3488, file: !3454, line: 58, baseType: !3514, size: 2048, offset: 1280)
!3514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 2048, elements: !963)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3488, file: !3454, line: 60, baseType: !3516, size: 384, offset: 3328)
!3516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 384, elements: !46)
!3517 = !DIDerivedType(tag: DW_TAG_member, scope: !3488, file: !3454, line: 62, baseType: !3518, size: 384, offset: 3712)
!3518 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3488, file: !3454, line: 62, size: 384, elements: !3519)
!3519 = !{!3520, !3521}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3518, file: !3454, line: 63, baseType: !3516, size: 384)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3518, file: !3454, line: 64, baseType: !3516, size: 384)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3472, file: !3454, line: 351, baseType: !3523, size: 1088)
!3523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3454, line: 79, size: 1088, elements: !3524)
!3524 = !{!3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3598}
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3523, file: !3454, line: 80, baseType: !457, size: 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3523, file: !3454, line: 81, baseType: !457, size: 32, offset: 32)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3523, file: !3454, line: 82, baseType: !457, size: 32, offset: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3523, file: !3454, line: 83, baseType: !457, size: 32, offset: 96)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3523, file: !3454, line: 84, baseType: !457, size: 32, offset: 128)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3523, file: !3454, line: 85, baseType: !457, size: 32, offset: 160)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3523, file: !3454, line: 86, baseType: !457, size: 32, offset: 192)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3523, file: !3454, line: 88, baseType: !3485, size: 640, offset: 224)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3523, file: !3454, line: 89, baseType: !220, size: 8, offset: 864)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3523, file: !3454, line: 90, baseType: !220, size: 8, offset: 872)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3523, file: !3454, line: 91, baseType: !220, size: 8, offset: 880)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3523, file: !3454, line: 92, baseType: !220, size: 8, offset: 888)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3523, file: !3454, line: 93, baseType: !220, size: 8, offset: 896)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3523, file: !3454, line: 94, baseType: !220, size: 8, offset: 904)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3523, file: !3454, line: 95, baseType: !3540, size: 64, offset: 960)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3542, line: 11, size: 128, elements: !3543)
!3542 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3543 = !{!3544, !3545}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3541, file: !3542, line: 12, baseType: !768, size: 64)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3541, file: !3542, line: 13, baseType: !3546, size: 64, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3547, size: 64)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3548, line: 103, size: 1344, elements: !3549)
!3548 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3549 = !{!3550, !3551, !3552, !3553, !3554, !3555, !3556, !3557, !3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3578, !3579, !3580}
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3547, file: !3548, line: 109, baseType: !40, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3547, file: !3548, line: 110, baseType: !40, size: 64, offset: 64)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3547, file: !3548, line: 111, baseType: !40, size: 64, offset: 128)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3547, file: !3548, line: 112, baseType: !40, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3547, file: !3548, line: 113, baseType: !40, size: 64, offset: 256)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3547, file: !3548, line: 114, baseType: !40, size: 64, offset: 320)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3547, file: !3548, line: 117, baseType: !40, size: 64, offset: 384)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3547, file: !3548, line: 118, baseType: !40, size: 64, offset: 448)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3547, file: !3548, line: 119, baseType: !40, size: 64, offset: 512)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3547, file: !3548, line: 120, baseType: !40, size: 64, offset: 576)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3547, file: !3548, line: 121, baseType: !40, size: 64, offset: 640)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3547, file: !3548, line: 122, baseType: !40, size: 64, offset: 704)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3547, file: !3548, line: 123, baseType: !40, size: 64, offset: 768)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3547, file: !3548, line: 124, baseType: !40, size: 64, offset: 832)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3547, file: !3548, line: 125, baseType: !40, size: 64, offset: 896)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3547, file: !3548, line: 139, baseType: !40, size: 64, offset: 960)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3547, file: !3548, line: 142, baseType: !40, size: 64, offset: 1024)
!3567 = !DIDerivedType(tag: DW_TAG_member, scope: !3547, file: !3548, line: 144, baseType: !3568, size: 64, offset: 1088)
!3568 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3547, file: !3548, line: 144, size: 64, elements: !3569)
!3569 = !{!3570, !3571, !3572}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3568, file: !3548, line: 146, baseType: !174, size: 16)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3568, file: !3548, line: 148, baseType: !400, size: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3568, file: !3548, line: 150, baseType: !3573, size: 64)
!3573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3548, line: 59, size: 64, elements: !3574)
!3574 = !{!3575, !3576, !3577}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3573, file: !3548, line: 61, baseType: !400, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3573, file: !3548, line: 63, baseType: !400, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3573, file: !3548, line: 65, baseType: !400, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3547, file: !3548, line: 153, baseType: !40, size: 64, offset: 1152)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3547, file: !3548, line: 154, baseType: !40, size: 64, offset: 1216)
!3580 = !DIDerivedType(tag: DW_TAG_member, scope: !3547, file: !3548, line: 156, baseType: !3581, size: 64, offset: 1280)
!3581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3547, file: !3548, line: 156, size: 64, elements: !3582)
!3582 = !{!3583, !3584, !3585}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3581, file: !3548, line: 158, baseType: !174, size: 16)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3581, file: !3548, line: 160, baseType: !400, size: 64)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3581, file: !3548, line: 162, baseType: !3586, size: 64)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3548, line: 69, size: 64, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3586, file: !3548, line: 71, baseType: !400, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3586, file: !3548, line: 73, baseType: !400, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3586, file: !3548, line: 75, baseType: !400, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3586, file: !3548, line: 77, baseType: !400, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3586, file: !3548, line: 80, baseType: !400, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3586, file: !3548, line: 83, baseType: !400, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3586, file: !3548, line: 86, baseType: !400, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3586, file: !3548, line: 88, baseType: !400, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3586, file: !3548, line: 93, baseType: !400, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3586, file: !3548, line: 100, baseType: !400, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3523, file: !3454, line: 96, baseType: !457, size: 32, offset: 1024)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3472, file: !3454, line: 352, baseType: !3600, size: 4608, align: 512)
!3600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3454, line: 333, size: 4608, align: 512, elements: !3601)
!3601 = !{!3602, !3603, !3610}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3600, file: !3454, line: 334, baseType: !3488, size: 4096, align: 128)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3600, file: !3454, line: 335, baseType: !3604, size: 512, offset: 4096)
!3604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3454, line: 312, size: 512, elements: !3605)
!3605 = !{!3606, !3607, !3608}
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3604, file: !3454, line: 313, baseType: !400, size: 64)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3604, file: !3454, line: 314, baseType: !400, size: 64, offset: 64)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3604, file: !3454, line: 315, baseType: !3609, size: 384, offset: 128)
!3609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !400, size: 384, elements: !478)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3600, file: !3454, line: 336, baseType: !3611, offset: 4608)
!3611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, elements: !352)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3472, file: !3454, line: 353, baseType: !3613, size: 32768)
!3613 = !DICompositeType(tag: DW_TAG_array_type, baseType: !220, size: 32768, elements: !3614)
!3614 = !{!3615}
!3615 = !DISubrange(count: 4096)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3453, file: !3454, line: 484, baseType: !3459, size: 64, offset: 192)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3453, file: !3454, line: 491, baseType: !3618, size: 128, offset: 256)
!3618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3454, line: 404, size: 128, elements: !3619)
!3619 = !{!3620, !3621, !3622}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3618, file: !3454, line: 424, baseType: !400, size: 64)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3618, file: !3454, line: 432, baseType: !59, size: 32, offset: 64)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3618, file: !3454, line: 440, baseType: !59, size: 32, offset: 96)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3453, file: !3454, line: 498, baseType: !3618, size: 128, offset: 384)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3453, file: !3454, line: 508, baseType: !3460, size: 33280, align: 512, offset: 512)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2424, file: !2425, line: 16, baseType: !337, size: 192, offset: 512)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2424, file: !2425, line: 17, baseType: !212, size: 32, offset: 704)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !867, file: !244, line: 1240, baseType: !63, size: 64, offset: 6912)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !867, file: !244, line: 1243, baseType: !457, size: 32, offset: 6976)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !867, file: !244, line: 1245, baseType: !448, size: 64, offset: 7040)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !867, file: !244, line: 1246, baseType: !448, size: 64, offset: 7104)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !867, file: !244, line: 1248, baseType: !78, size: 32, offset: 7168)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !867, file: !244, line: 1249, baseType: !3633, size: 64, offset: 7232)
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3634, size: 64)
!3634 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !244, line: 634, flags: DIFlagFwdDecl)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !867, file: !244, line: 1252, baseType: !3636, size: 256, offset: 7296)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !81)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !867, file: !244, line: 1253, baseType: !3638, size: 128, offset: 7552)
!3638 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3639, line: 21, baseType: !3640)
!3639 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3639, line: 19, size: 128, elements: !3641)
!3641 = !{!3642}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3640, file: !3639, line: 20, baseType: !3643, size: 128)
!3643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !2868)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !867, file: !244, line: 1255, baseType: !59, size: 32, offset: 7680)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !867, file: !244, line: 1261, baseType: !184, size: 256, offset: 7744)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !867, file: !244, line: 1267, baseType: !24, size: 64, offset: 8000)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !867, file: !244, line: 1269, baseType: !3648, size: 64, offset: 8064)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3650)
!3650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !615, line: 128, size: 1024, align: 512, elements: !3651)
!3651 = !{!3652, !3656, !3657, !3664, !3670, !3674, !3678, !3682, !3683, !3687, !3691, !3696, !3700}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3650, file: !615, line: 129, baseType: !3653, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!18, !613, !59}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3650, file: !615, line: 130, baseType: !3653, size: 64, offset: 64)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3650, file: !615, line: 131, baseType: !3658, size: 64, offset: 128)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DISubroutineType(types: !3660)
!3660 = !{!18, !3661, !3663}
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !614)
!3663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3650, file: !615, line: 132, baseType: !3665, size: 64, offset: 192)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!18, !3661, !59, !24, !3668}
!3668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3669, size: 64)
!3669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3650, file: !615, line: 134, baseType: !3671, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!18, !3661}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3650, file: !615, line: 135, baseType: !3675, size: 64, offset: 320)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!18, !613}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3650, file: !615, line: 136, baseType: !3679, size: 64, offset: 384)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{null, !613}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3650, file: !615, line: 137, baseType: !3679, size: 64, offset: 448)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3650, file: !615, line: 138, baseType: !3684, size: 64, offset: 512)
!3684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3685, size: 64)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !613, !653}
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3650, file: !615, line: 139, baseType: !3688, size: 64, offset: 576)
!3688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3689, size: 64)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{!502, !613, !502, !18}
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3650, file: !615, line: 140, baseType: !3692, size: 64, offset: 640)
!3692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3693, size: 64)
!3693 = !DISubroutineType(types: !3694)
!3694 = !{!608, !3695}
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3650, file: !615, line: 141, baseType: !3697, size: 64, offset: 704)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!18, !776, !491}
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3650, file: !615, line: 142, baseType: !3701, size: 64, offset: 768)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!613, !613, !3704}
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !654)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !867, file: !244, line: 1271, baseType: !3707, size: 448, offset: 8128)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2206, line: 63, size: 448, elements: !3708)
!3708 = !{!3709, !3714, !3715, !3716, !3717, !3718, !3719}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3707, file: !2206, line: 64, baseType: !3710, size: 64)
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!40, !3713, !2204}
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3707, size: 64)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3707, file: !2206, line: 66, baseType: !3710, size: 64, offset: 64)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3707, file: !2206, line: 69, baseType: !768, size: 64, offset: 128)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3707, file: !2206, line: 70, baseType: !18, size: 32, offset: 192)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3707, file: !2206, line: 71, baseType: !59, size: 32, offset: 224)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3707, file: !2206, line: 74, baseType: !233, size: 128, offset: 256)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3707, file: !2206, line: 85, baseType: !3720, size: 64, offset: 384)
!3720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !867, file: !244, line: 1274, baseType: !188, size: 64, offset: 8576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !867, file: !244, line: 1280, baseType: !188, size: 64, offset: 8640)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !867, file: !244, line: 1283, baseType: !18, size: 32, offset: 8704)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !867, file: !244, line: 1286, baseType: !1299, size: 32, offset: 8736)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !867, file: !244, line: 1289, baseType: !2017, size: 64, offset: 8768)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !867, file: !244, line: 1290, baseType: !324, size: 64, offset: 8832)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !867, file: !244, line: 1297, baseType: !575, size: 64, offset: 8896)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !867, file: !244, line: 1304, baseType: !3729, size: 64, offset: 8960)
!3729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3730, line: 49, size: 64, elements: !3731)
!3730 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3731 = !{!3732}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3729, file: !3730, line: 50, baseType: !3733, size: 64)
!3733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3734, size: 64)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3730, line: 41, size: 512, align: 512, elements: !3735)
!3735 = !{!3736, !3737, !3742}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3734, file: !3730, line: 43, baseType: !266, size: 32)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3734, file: !3730, line: 45, baseType: !3738, size: 192, offset: 64)
!3738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3730, line: 29, size: 192, elements: !3739)
!3739 = !{!3740, !3741}
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3738, file: !3730, line: 30, baseType: !233, size: 128)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3738, file: !3730, line: 32, baseType: !768, size: 64, offset: 128)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3734, file: !3730, line: 46, baseType: !768, size: 64, offset: 256)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !867, file: !244, line: 1305, baseType: !3729, size: 64, offset: 9024)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !867, file: !244, line: 1306, baseType: !256, size: 128, align: 64, offset: 9088)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !867, file: !244, line: 1307, baseType: !1481, size: 256, offset: 9216)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !867, file: !244, line: 1309, baseType: !184, size: 256, offset: 9472)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !867, file: !244, line: 1314, baseType: !18, size: 32, offset: 9728)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !867, file: !244, line: 1317, baseType: !266, size: 32, align: 512, offset: 10240)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !867, file: !244, line: 1318, baseType: !233, size: 128, offset: 10304)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !867, file: !244, line: 1320, baseType: !266, size: 32, offset: 10432)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !867, file: !244, line: 1321, baseType: !233, size: 128, offset: 10496)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !654, file: !244, line: 656, baseType: !1024, size: 64, offset: 512)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !654, file: !244, line: 659, baseType: !63, size: 64, offset: 576)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !654, file: !244, line: 663, baseType: !40, size: 64, offset: 640)
!3755 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !244, line: 671, baseType: !3756, size: 32, offset: 704)
!3756 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !244, line: 671, size: 32, elements: !3757)
!3757 = !{!3758, !3760}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3756, file: !244, line: 672, baseType: !3759, size: 32)
!3759 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3756, file: !244, line: 673, baseType: !59, size: 32)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !654, file: !244, line: 675, baseType: !728, size: 32, offset: 736)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !654, file: !244, line: 676, baseType: !279, size: 64, offset: 768)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !654, file: !244, line: 677, baseType: !764, size: 128, offset: 832)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !654, file: !244, line: 678, baseType: !764, size: 128, offset: 960)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !654, file: !244, line: 679, baseType: !764, size: 128, offset: 1088)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !654, file: !244, line: 680, baseType: !266, size: 32, offset: 1216)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !654, file: !244, line: 681, baseType: !34, size: 16, offset: 1248)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !654, file: !244, line: 682, baseType: !220, size: 8, offset: 1264)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !654, file: !244, line: 683, baseType: !220, size: 8, offset: 1272)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !654, file: !244, line: 684, baseType: !2337, size: 64, offset: 1280)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !654, file: !244, line: 691, baseType: !40, size: 64, offset: 1344)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !654, file: !244, line: 692, baseType: !432, size: 320, offset: 1408)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !654, file: !244, line: 694, baseType: !40, size: 64, offset: 1728)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !654, file: !244, line: 695, baseType: !40, size: 64, offset: 1792)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !654, file: !244, line: 697, baseType: !328, size: 128, offset: 1856)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !654, file: !244, line: 698, baseType: !233, size: 128, offset: 1984)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !654, file: !244, line: 707, baseType: !233, size: 128, offset: 2112)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !654, file: !244, line: 708, baseType: !233, size: 128, offset: 2240)
!3779 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !244, line: 709, baseType: !3780, size: 128, offset: 2368)
!3780 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !244, line: 709, size: 128, elements: !3781)
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3780, file: !244, line: 710, baseType: !324, size: 64)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3780, file: !244, line: 711, baseType: !256, size: 128, align: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !654, file: !244, line: 713, baseType: !190, size: 64, offset: 2496)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !654, file: !244, line: 714, baseType: !190, size: 64, offset: 2560)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !654, file: !244, line: 715, baseType: !212, size: 32, offset: 2624)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !654, file: !244, line: 716, baseType: !212, size: 32, offset: 2656)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !654, file: !244, line: 717, baseType: !212, size: 32, offset: 2688)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !654, file: !244, line: 719, baseType: !212, size: 32, offset: 2720)
!3790 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !244, line: 721, baseType: !3791, size: 64, offset: 2752)
!3791 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !244, line: 721, size: 64, elements: !3792)
!3792 = !{!3793, !3917}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3791, file: !244, line: 722, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3796)
!3796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !244, line: 1914, size: 2112, elements: !3797)
!3797 = !{!3798, !3799, !3803, !3807, !3811, !3812, !3813, !3819, !3832, !3836, !3840, !3841, !3845, !3846, !3850, !3855, !3856, !3860, !3864, !3870, !3871, !3875, !3876, !3880, !3884, !3885, !3890, !3894, !3898, !3902, !3906, !3907, !3913}
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3796, file: !244, line: 1915, baseType: !900, size: 64)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3796, file: !244, line: 1916, baseType: !3800, size: 64, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!279, !242, !279, !18}
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3796, file: !244, line: 1917, baseType: !3804, size: 64, offset: 128)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DISubroutineType(types: !3806)
!3806 = !{!807, !242, !502, !810, !1654}
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3796, file: !244, line: 1918, baseType: !3808, size: 64, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{!807, !242, !24, !810, !1654}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3796, file: !244, line: 1919, baseType: !1226, size: 64, offset: 256)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3796, file: !244, line: 1920, baseType: !1226, size: 64, offset: 320)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3796, file: !244, line: 1921, baseType: !3814, size: 64, offset: 384)
!3814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3815, size: 64)
!3815 = !DISubroutineType(types: !3816)
!3816 = !{!18, !1229, !3817, !59}
!3817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3818, size: 64)
!3818 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !244, line: 53, flags: DIFlagFwdDecl)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3796, file: !244, line: 1923, baseType: !3820, size: 64, offset: 448)
!3820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3821, size: 64)
!3821 = !DISubroutineType(types: !3822)
!3822 = !{!18, !242, !3823}
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !244, line: 1858, size: 128, elements: !3825)
!3825 = !{!3826, !3831}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3824, file: !244, line: 1859, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !244, line: 1855, baseType: !3828)
!3828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3829, size: 64)
!3829 = !DISubroutineType(types: !3830)
!3830 = !{!491, !3823, !24, !18, !279, !400, !59}
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3824, file: !244, line: 1860, baseType: !279, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3796, file: !244, line: 1924, baseType: !3833, size: 64, offset: 512)
!3833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3834, size: 64)
!3834 = !DISubroutineType(types: !3835)
!3835 = !{!1674, !242, !1676}
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3796, file: !244, line: 1925, baseType: !3837, size: 64, offset: 576)
!3837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3838, size: 64)
!3838 = !DISubroutineType(types: !3839)
!3839 = !{!768, !242, !59, !40}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3796, file: !244, line: 1926, baseType: !3837, size: 64, offset: 640)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3796, file: !244, line: 1927, baseType: !3842, size: 64, offset: 704)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!18, !242, !1313}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3796, file: !244, line: 1928, baseType: !40, size: 64, offset: 768)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3796, file: !244, line: 1929, baseType: !3847, size: 64, offset: 832)
!3847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3848, size: 64)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!18, !653, !242}
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3796, file: !244, line: 1930, baseType: !3851, size: 64, offset: 896)
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DISubroutineType(types: !3853)
!3853 = !{!18, !242, !3854}
!3854 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !244, line: 1061, baseType: !63)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3796, file: !244, line: 1931, baseType: !3847, size: 64, offset: 960)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3796, file: !244, line: 1932, baseType: !3857, size: 64, offset: 1024)
!3857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3858, size: 64)
!3858 = !DISubroutineType(types: !3859)
!3859 = !{!18, !242, !279, !279, !18}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3796, file: !244, line: 1933, baseType: !3861, size: 64, offset: 1088)
!3861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3862, size: 64)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{!18, !18, !242, !18}
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3796, file: !244, line: 1934, baseType: !3865, size: 64, offset: 1152)
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = !DISubroutineType(types: !3867)
!3867 = !{!18, !242, !18, !3868}
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !244, line: 1063, flags: DIFlagFwdDecl)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3796, file: !244, line: 1935, baseType: !1351, size: 64, offset: 1216)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3796, file: !244, line: 1936, baseType: !3872, size: 64, offset: 1280)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!18, !18}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3796, file: !244, line: 1937, baseType: !3865, size: 64, offset: 1344)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3796, file: !244, line: 1938, baseType: !3877, size: 64, offset: 1408)
!3877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3878, size: 64)
!3878 = !DISubroutineType(types: !3879)
!3879 = !{!807, !3284, !242, !1654, !810, !59}
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3796, file: !244, line: 1939, baseType: !3881, size: 64, offset: 1472)
!3881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3882, size: 64)
!3882 = !DISubroutineType(types: !3883)
!3883 = !{!807, !242, !1654, !3284, !810, !59}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3796, file: !244, line: 1940, baseType: !1289, size: 64, offset: 1536)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3796, file: !244, line: 1941, baseType: !3886, size: 64, offset: 1600)
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{!18, !242, !18, !3889, !1203}
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3868, size: 64)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3796, file: !244, line: 1942, baseType: !3891, size: 64, offset: 1664)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!768, !242, !18, !279, !279}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3796, file: !244, line: 1944, baseType: !3895, size: 64, offset: 1728)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !1630, !242}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3796, file: !244, line: 1948, baseType: !3899, size: 64, offset: 1792)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!807, !242, !279, !242, !279, !810, !59}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3796, file: !244, line: 1950, baseType: !3903, size: 64, offset: 1856)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!279, !242, !279, !242, !279, !279, !59}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3796, file: !244, line: 1953, baseType: !3857, size: 64, offset: 1920)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3796, file: !244, line: 1954, baseType: !3908, size: 64, offset: 1984)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = !DISubroutineType(types: !3910)
!3910 = !{!18, !3911, !59}
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !244, line: 1911, flags: DIFlagFwdDecl)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3796, file: !244, line: 1955, baseType: !3914, size: 64, offset: 2048)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!18, !3911, !3817, !59}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3791, file: !244, line: 723, baseType: !2085, size: 64)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !654, file: !244, line: 725, baseType: !3919, size: 64, offset: 2816)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !244, line: 725, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !654, file: !244, line: 726, baseType: !1025, size: 1536, align: 64, offset: 2880)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !654, file: !244, line: 727, baseType: !233, size: 128, offset: 4416)
!3923 = !DIDerivedType(tag: DW_TAG_member, scope: !654, file: !244, line: 728, baseType: !3924, size: 64, offset: 4544)
!3924 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !654, file: !244, line: 728, size: 64, elements: !3925)
!3925 = !{!3926, !3927, !3930, !3931}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3924, file: !244, line: 729, baseType: !3284, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3924, file: !244, line: 730, baseType: !3928, size: 64)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !244, line: 730, flags: DIFlagFwdDecl)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3924, file: !244, line: 731, baseType: !502, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3924, file: !244, line: 732, baseType: !59, size: 32)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !654, file: !244, line: 735, baseType: !78, size: 32, offset: 4608)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !654, file: !244, line: 738, baseType: !78, size: 32, offset: 4640)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !654, file: !244, line: 739, baseType: !3633, size: 64, offset: 4672)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !654, file: !244, line: 750, baseType: !63, size: 64, offset: 4736)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !614, file: !615, line: 91, baseType: !3937, size: 256, offset: 448)
!3937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 256, elements: !81)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !614, file: !615, line: 94, baseType: !3939, size: 64, offset: 704)
!3939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3940, line: 25, size: 64, elements: !3941)
!3940 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3941 = !{!3942}
!3942 = !DIDerivedType(tag: DW_TAG_member, scope: !3939, file: !3940, line: 26, baseType: !3943, size: 64)
!3943 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3939, file: !3940, line: 26, size: 64, elements: !3944)
!3944 = !{!3945, !3946}
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3943, file: !3940, line: 28, baseType: !401, size: 64, align: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, scope: !3943, file: !3940, line: 30, baseType: !3947, size: 64)
!3947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3943, file: !3940, line: 30, size: 64, elements: !3948)
!3948 = !{!3949, !3950}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3947, file: !3940, line: 31, baseType: !266, size: 32)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3947, file: !3940, line: 32, baseType: !18, size: 32, offset: 32)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !614, file: !615, line: 95, baseType: !3648, size: 64, offset: 768)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !614, file: !615, line: 96, baseType: !866, size: 64, offset: 832)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !614, file: !615, line: 97, baseType: !40, size: 64, offset: 896)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !614, file: !615, line: 98, baseType: !63, size: 64, offset: 960)
!3955 = !DIDerivedType(tag: DW_TAG_member, scope: !614, file: !615, line: 100, baseType: !3956, size: 128, offset: 1024)
!3956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !615, line: 100, size: 128, elements: !3957)
!3957 = !{!3958, !3959}
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3956, file: !615, line: 101, baseType: !233, size: 128)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3956, file: !615, line: 102, baseType: !3960, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !614, file: !615, line: 104, baseType: !233, size: 128, offset: 1152)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !614, file: !615, line: 105, baseType: !233, size: 128, offset: 1280)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !614, file: !615, line: 113, baseType: !3964, size: 128, offset: 1408)
!3964 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !614, file: !615, line: 109, size: 128, elements: !3965)
!3965 = !{!3966, !3967, !3968}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3964, file: !615, line: 110, baseType: !328, size: 128)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3964, file: !615, line: 111, baseType: !629, size: 128)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3964, file: !615, line: 112, baseType: !256, size: 128, align: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !609, file: !610, line: 72, baseType: !866, size: 64, offset: 64)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !609, file: !610, line: 73, baseType: !18, size: 32, offset: 128)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !609, file: !610, line: 74, baseType: !693, size: 64, offset: 192)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !604, file: !605, line: 10, baseType: !613, size: 64, offset: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !243, file: !244, line: 1015, baseType: !653, size: 64, offset: 1344)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !243, file: !244, line: 1016, baseType: !3794, size: 64, offset: 1408)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !243, file: !244, line: 1018, baseType: !400, size: 64, offset: 1472)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !243, file: !244, line: 1020, baseType: !63, size: 64, offset: 1536)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !243, file: !244, line: 1023, baseType: !63, size: 64, offset: 1600)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !243, file: !244, line: 1027, baseType: !3979, size: 64, offset: 1664)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !243, file: !244, line: 1029, baseType: !1024, size: 64, offset: 1728)
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !243, file: !244, line: 1030, baseType: !1299, size: 32, offset: 1792)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !243, file: !244, line: 1031, baseType: !1299, size: 32, offset: 1824)
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !20, file: !21, line: 169, baseType: !3984, size: 64, offset: 2048)
!3984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_dev_poller", file: !2, line: 15, size: 960, elements: !3986)
!3986 = !{!3987, !3991, !3992, !3993, !3994, !3995}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3985, file: !2, line: 16, baseType: !3988, size: 64)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{null, !19}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "poll_interval", scope: !3985, file: !2, line: 18, baseType: !59, size: 32, offset: 64)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "poll_interval_max", scope: !3985, file: !2, line: 19, baseType: !59, size: 32, offset: 96)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "poll_interval_min", scope: !3985, file: !2, line: 20, baseType: !59, size: 32, offset: 128)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !3985, file: !2, line: 22, baseType: !19, size: 64, offset: 192)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3985, file: !2, line: 23, baseType: !2012, size: 704, offset: 256)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "repeat_key", scope: !20, file: !21, line: 171, baseType: !59, size: 32, offset: 2112)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !20, file: !21, line: 172, baseType: !1955, size: 320, offset: 2176)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "rep", scope: !20, file: !21, line: 174, baseType: !3999, size: 64, offset: 2496)
!3999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 64, elements: !55)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "mt", scope: !20, file: !21, line: 176, baseType: !4001, size: 64, offset: 2560)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DICompositeType(tag: DW_TAG_structure_type, name: "input_mt", file: !21, line: 176, flags: DIFlagFwdDecl)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "absinfo", scope: !20, file: !21, line: 178, baseType: !4004, size: 64, offset: 2624)
!4004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4005, size: 64)
!4005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_absinfo", file: !29, line: 93, size: 192, elements: !4006)
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4005, file: !29, line: 94, baseType: !418, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !4005, file: !29, line: 95, baseType: !418, size: 32, offset: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !4005, file: !29, line: 96, baseType: !418, size: 32, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !4005, file: !29, line: 97, baseType: !418, size: 32, offset: 96)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "flat", scope: !4005, file: !29, line: 98, baseType: !418, size: 32, offset: 128)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "resolution", scope: !4005, file: !29, line: 99, baseType: !418, size: 32, offset: 160)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !20, file: !21, line: 180, baseType: !45, size: 768, offset: 2688)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "led", scope: !20, file: !21, line: 181, baseType: !39, size: 64, offset: 3456)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "snd", scope: !20, file: !21, line: 182, baseType: !39, size: 64, offset: 3520)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "sw", scope: !20, file: !21, line: 183, baseType: !39, size: 64, offset: 3584)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !20, file: !21, line: 185, baseType: !4018, size: 64, offset: 3648)
!4018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4019, size: 64)
!4019 = !DISubroutineType(types: !4020)
!4020 = !{!18, !19}
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !20, file: !21, line: 186, baseType: !3988, size: 64, offset: 3712)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !20, file: !21, line: 187, baseType: !4023, size: 64, offset: 3776)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!18, !19, !242}
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !20, file: !21, line: 188, baseType: !4027, size: 64, offset: 3840)
!4027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4028, size: 64)
!4028 = !DISubroutineType(types: !4029)
!4029 = !{!18, !19, !59, !59, !18}
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "grab", scope: !20, file: !21, line: 190, baseType: !4031, size: 64, offset: 3904)
!4031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4032, size: 64)
!4032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handle", file: !21, line: 345, size: 576, elements: !4033)
!4033 = !{!4034, !4035, !4036, !4037, !4038, !4106, !4107}
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4032, file: !21, line: 347, baseType: !63, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4032, file: !21, line: 349, baseType: !18, size: 32, offset: 64)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4032, file: !21, line: 350, baseType: !24, size: 64, offset: 128)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4032, file: !21, line: 352, baseType: !19, size: 64, offset: 192)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !4032, file: !21, line: 353, baseType: !4039, size: 64, offset: 256)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_handler", file: !21, line: 310, size: 960, elements: !4041)
!4041 = !{!4042, !4043, !4047, !4058, !4062, !4066, !4095, !4099, !4100, !4101, !4102, !4103, !4104, !4105}
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4040, file: !21, line: 312, baseType: !63, size: 64)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4040, file: !21, line: 314, baseType: !4044, size: 64, offset: 64)
!4044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4045, size: 64)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{null, !4031, !59, !59, !18}
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !4040, file: !21, line: 315, baseType: !4048, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4049, size: 64)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{null, !4031, !4051, !59}
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4053)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_value", file: !21, line: 32, size: 64, elements: !4054)
!4054 = !{!4055, !4056, !4057}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4053, file: !21, line: 33, baseType: !32, size: 16)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !4053, file: !21, line: 34, baseType: !32, size: 16, offset: 16)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !4053, file: !21, line: 35, baseType: !418, size: 32, offset: 32)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !4040, file: !21, line: 317, baseType: !4059, size: 64, offset: 192)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{!491, !4031, !59, !59, !18}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4040, file: !21, line: 318, baseType: !4063, size: 64, offset: 256)
!4063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4064, size: 64)
!4064 = !DISubroutineType(types: !4065)
!4065 = !{!491, !4039, !19}
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !4040, file: !21, line: 319, baseType: !4067, size: 64, offset: 320)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!18, !4039, !19, !4070}
!4070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4071, size: 64)
!4071 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4072)
!4072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "input_device_id", file: !4073, line: 362, size: 1600, elements: !4074)
!4073 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!4074 = !{!4075, !4077, !4078, !4079, !4080, !4081, !4083, !4085, !4086, !4087, !4088, !4089, !4090, !4092, !4093, !4094}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4072, file: !4073, line: 364, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !4073, line: 15, baseType: !40)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "bustype", scope: !4072, file: !4073, line: 366, baseType: !32, size: 16, offset: 64)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !4072, file: !4073, line: 367, baseType: !32, size: 16, offset: 80)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !4072, file: !4073, line: 368, baseType: !32, size: 16, offset: 96)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !4072, file: !4073, line: 369, baseType: !32, size: 16, offset: 112)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "evbit", scope: !4072, file: !4073, line: 371, baseType: !4082, size: 64, offset: 128)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4076, size: 64, elements: !41)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "keybit", scope: !4072, file: !4073, line: 372, baseType: !4084, size: 768, offset: 192)
!4084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4076, size: 768, elements: !46)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "relbit", scope: !4072, file: !4073, line: 373, baseType: !4082, size: 64, offset: 960)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "absbit", scope: !4072, file: !4073, line: 374, baseType: !4082, size: 64, offset: 1024)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "mscbit", scope: !4072, file: !4073, line: 375, baseType: !4082, size: 64, offset: 1088)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "ledbit", scope: !4072, file: !4073, line: 376, baseType: !4082, size: 64, offset: 1152)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "sndbit", scope: !4072, file: !4073, line: 377, baseType: !4082, size: 64, offset: 1216)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "ffbit", scope: !4072, file: !4073, line: 378, baseType: !4091, size: 128, offset: 1280)
!4091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4076, size: 128, elements: !55)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "swbit", scope: !4072, file: !4073, line: 379, baseType: !4082, size: 64, offset: 1408)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "propbit", scope: !4072, file: !4073, line: 380, baseType: !4082, size: 64, offset: 1472)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "driver_info", scope: !4072, file: !4073, line: 382, baseType: !4076, size: 64, offset: 1536)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !4040, file: !21, line: 320, baseType: !4096, size: 64, offset: 384)
!4096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4097, size: 64)
!4097 = !DISubroutineType(types: !4098)
!4098 = !{null, !4031}
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4040, file: !21, line: 321, baseType: !4096, size: 64, offset: 448)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_minors", scope: !4040, file: !21, line: 323, baseType: !491, size: 8, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4040, file: !21, line: 324, baseType: !18, size: 32, offset: 544)
!4102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4040, file: !21, line: 325, baseType: !24, size: 64, offset: 576)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !4040, file: !21, line: 327, baseType: !4070, size: 64, offset: 640)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !4040, file: !21, line: 329, baseType: !233, size: 128, offset: 704)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4040, file: !21, line: 330, baseType: !233, size: 128, offset: 832)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "d_node", scope: !4032, file: !21, line: 355, baseType: !233, size: 128, offset: 320)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "h_node", scope: !4032, file: !21, line: 356, baseType: !233, size: 128, offset: 448)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !20, file: !21, line: 192, baseType: !266, size: 32, offset: 3968)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !20, file: !21, line: 193, baseType: !184, size: 256, offset: 4032)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !20, file: !21, line: 195, baseType: !59, size: 32, offset: 4288)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "going_away", scope: !20, file: !21, line: 196, baseType: !491, size: 8, offset: 4320)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !20, file: !21, line: 198, baseType: !4113, size: 5824, offset: 4352)
!4113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !4114, line: 705, size: 5824, elements: !4115)
!4114 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!4115 = !{!4116, !4117, !4119, !4122, !4123, !4177, !4266, !4267, !4268, !4269, !4270, !4283, !4389, !4402, !4412, !4416, !4418, !4419, !4420, !4424, !4431, !4432, !4435, !4438, !4442, !4445, !4446, !4447, !4448, !4449, !4450, !4480, !4481, !4482, !4485, !4488, !4516, !4523, !4524, !4525, !4526, !4527}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4113, file: !4114, line: 706, baseType: !920, size: 512)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4113, file: !4114, line: 707, baseType: !4118, size: 64, offset: 512)
!4118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4113, file: !4114, line: 709, baseType: !4120, size: 64, offset: 576)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !4114, line: 37, flags: DIFlagFwdDecl)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4113, file: !4114, line: 711, baseType: !24, size: 64, offset: 640)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4113, file: !4114, line: 712, baseType: !4124, size: 64, offset: 704)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4126)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !4114, line: 89, size: 384, elements: !4127)
!4127 = !{!4128, !4129, !4130, !4136, !4141, !4145}
!4128 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4126, file: !4114, line: 90, baseType: !24, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4126, file: !4114, line: 91, baseType: !1000, size: 64, offset: 64)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4126, file: !4114, line: 92, baseType: !4131, size: 64, offset: 128)
!4131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4132, size: 64)
!4132 = !DISubroutineType(types: !4133)
!4133 = !{!18, !4134, !956}
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4113)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4126, file: !4114, line: 93, baseType: !4137, size: 64, offset: 192)
!4137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4138, size: 64)
!4138 = !DISubroutineType(types: !4139)
!4139 = !{!502, !4134, !4140, !1583, !1584}
!4140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4126, file: !4114, line: 95, baseType: !4142, size: 64, offset: 256)
!4142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4143, size: 64)
!4143 = !DISubroutineType(types: !4144)
!4144 = !{null, !4118}
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4126, file: !4114, line: 97, baseType: !4146, size: 64, offset: 320)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4148)
!4148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !4149, line: 286, size: 1472, elements: !4150)
!4149 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!4150 = !{!4151, !4155, !4156, !4157, !4158, !4159, !4160, !4161, !4162, !4163, !4164, !4165, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4174, !4175, !4176}
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4148, file: !4149, line: 287, baseType: !4152, size: 64)
!4152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4153, size: 64)
!4153 = !DISubroutineType(types: !4154)
!4154 = !{!18, !4118}
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4148, file: !4149, line: 288, baseType: !4142, size: 64, offset: 64)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4148, file: !4149, line: 289, baseType: !4152, size: 64, offset: 128)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4148, file: !4149, line: 290, baseType: !4152, size: 64, offset: 192)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4148, file: !4149, line: 291, baseType: !4152, size: 64, offset: 256)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4148, file: !4149, line: 292, baseType: !4152, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4148, file: !4149, line: 293, baseType: !4152, size: 64, offset: 384)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4148, file: !4149, line: 294, baseType: !4152, size: 64, offset: 448)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4148, file: !4149, line: 295, baseType: !4152, size: 64, offset: 512)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4148, file: !4149, line: 296, baseType: !4152, size: 64, offset: 576)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4148, file: !4149, line: 297, baseType: !4152, size: 64, offset: 640)
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4148, file: !4149, line: 298, baseType: !4152, size: 64, offset: 704)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4148, file: !4149, line: 299, baseType: !4152, size: 64, offset: 768)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4148, file: !4149, line: 300, baseType: !4152, size: 64, offset: 832)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4148, file: !4149, line: 301, baseType: !4152, size: 64, offset: 896)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4148, file: !4149, line: 302, baseType: !4152, size: 64, offset: 960)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4148, file: !4149, line: 303, baseType: !4152, size: 64, offset: 1024)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4148, file: !4149, line: 304, baseType: !4152, size: 64, offset: 1088)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4148, file: !4149, line: 305, baseType: !4152, size: 64, offset: 1152)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4148, file: !4149, line: 306, baseType: !4152, size: 64, offset: 1216)
!4174 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4148, file: !4149, line: 307, baseType: !4152, size: 64, offset: 1280)
!4175 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4148, file: !4149, line: 308, baseType: !4152, size: 64, offset: 1344)
!4176 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4148, file: !4149, line: 309, baseType: !4152, size: 64, offset: 1408)
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4113, file: !4114, line: 714, baseType: !4178, size: 64, offset: 768)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4180)
!4180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4181, line: 80, size: 1344, elements: !4182)
!4181 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4182 = !{!4183, !4184, !4185, !4186, !4187, !4188, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4261, !4265}
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4180, file: !4181, line: 81, baseType: !24, size: 64)
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4180, file: !4181, line: 82, baseType: !24, size: 64, offset: 64)
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4180, file: !4181, line: 83, baseType: !1000, size: 64, offset: 128)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4180, file: !4181, line: 84, baseType: !1000, size: 64, offset: 192)
!4187 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4180, file: !4181, line: 85, baseType: !1000, size: 64, offset: 256)
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4180, file: !4181, line: 87, baseType: !4189, size: 64, offset: 320)
!4189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4190, size: 64)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!18, !4118, !4192}
!4192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4193, size: 64)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !4194, line: 96, size: 1152, elements: !4195)
!4194 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!4195 = !{!4196, !4197, !4198, !4199, !4200, !4201, !4207, !4219, !4228, !4229, !4230, !4231, !4232, !4240, !4241, !4242, !4243, !4244, !4245}
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4193, file: !4194, line: 97, baseType: !24, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4193, file: !4194, line: 98, baseType: !4178, size: 64, offset: 64)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4193, file: !4194, line: 100, baseType: !900, size: 64, offset: 128)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4193, file: !4194, line: 101, baseType: !24, size: 64, offset: 192)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4193, file: !4194, line: 103, baseType: !491, size: 8, offset: 256)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4193, file: !4194, line: 104, baseType: !4202, size: 32, offset: 288)
!4202 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !4194, line: 45, baseType: !59, size: 32, elements: !4203)
!4203 = !{!4204, !4205, !4206}
!4204 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!4205 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!4206 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4193, file: !4194, line: 106, baseType: !4208, size: 64, offset: 320)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4210)
!4210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4073, line: 282, size: 1600, elements: !4211)
!4211 = !{!4212, !4213, !4214, !4218}
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4210, file: !4073, line: 283, baseType: !3636, size: 256)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4210, file: !4073, line: 284, baseType: !3636, size: 256, offset: 256)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !4210, file: !4073, line: 285, baseType: !4215, size: 1024, offset: 512)
!4215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !4216)
!4216 = !{!4217}
!4217 = !DISubrange(count: 128)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4210, file: !4073, line: 286, baseType: !1442, size: 64, offset: 1536)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4193, file: !4194, line: 107, baseType: !4220, size: 64, offset: 384)
!4220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4221, size: 64)
!4221 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4222)
!4222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4073, line: 217, size: 256, elements: !4223)
!4223 = !{!4224, !4225, !4226, !4227}
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4222, file: !4073, line: 218, baseType: !3643, size: 128)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4222, file: !4073, line: 219, baseType: !4076, size: 64, offset: 128)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !4222, file: !4073, line: 220, baseType: !78, size: 32, offset: 192)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !4222, file: !4073, line: 221, baseType: !78, size: 32, offset: 224)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4193, file: !4194, line: 109, baseType: !4152, size: 64, offset: 448)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4193, file: !4194, line: 110, baseType: !4142, size: 64, offset: 512)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4193, file: !4194, line: 111, baseType: !4152, size: 64, offset: 576)
!4231 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4193, file: !4194, line: 112, baseType: !4142, size: 64, offset: 640)
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4193, file: !4194, line: 113, baseType: !4233, size: 64, offset: 704)
!4233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4234, size: 64)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!18, !4118, !4236}
!4236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !4149, line: 60, baseType: !4237)
!4237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !4149, line: 58, size: 32, elements: !4238)
!4238 = !{!4239}
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4237, file: !4149, line: 59, baseType: !18, size: 32)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4193, file: !4194, line: 114, baseType: !4152, size: 64, offset: 768)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4193, file: !4194, line: 115, baseType: !1000, size: 64, offset: 832)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4193, file: !4194, line: 116, baseType: !1000, size: 64, offset: 896)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4193, file: !4194, line: 118, baseType: !4146, size: 64, offset: 960)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4193, file: !4194, line: 119, baseType: !4142, size: 64, offset: 1024)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4193, file: !4194, line: 121, baseType: !4246, size: 64, offset: 1088)
!4246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4247, size: 64)
!4247 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !4194, line: 121, flags: DIFlagFwdDecl)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4180, file: !4181, line: 88, baseType: !4131, size: 64, offset: 384)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4180, file: !4181, line: 89, baseType: !4152, size: 64, offset: 448)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4180, file: !4181, line: 90, baseType: !4142, size: 64, offset: 512)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4180, file: !4181, line: 91, baseType: !4142, size: 64, offset: 576)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4180, file: !4181, line: 92, baseType: !4142, size: 64, offset: 640)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4180, file: !4181, line: 94, baseType: !4152, size: 64, offset: 704)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4180, file: !4181, line: 95, baseType: !4152, size: 64, offset: 768)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4180, file: !4181, line: 97, baseType: !4233, size: 64, offset: 832)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4180, file: !4181, line: 98, baseType: !4152, size: 64, offset: 896)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4180, file: !4181, line: 100, baseType: !4152, size: 64, offset: 960)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4180, file: !4181, line: 102, baseType: !4152, size: 64, offset: 1024)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4180, file: !4181, line: 103, baseType: !4142, size: 64, offset: 1088)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4180, file: !4181, line: 105, baseType: !4146, size: 64, offset: 1152)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4180, file: !4181, line: 107, baseType: !4262, size: 64, offset: 1216)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4264)
!4264 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4181, line: 107, flags: DIFlagFwdDecl)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4180, file: !4181, line: 109, baseType: !491, size: 8, offset: 1280)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4113, file: !4114, line: 715, baseType: !4192, size: 64, offset: 832)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4113, file: !4114, line: 717, baseType: !63, size: 64, offset: 896)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4113, file: !4114, line: 719, baseType: !63, size: 64, offset: 960)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4113, file: !4114, line: 721, baseType: !184, size: 256, offset: 1024)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4113, file: !4114, line: 725, baseType: !4271, size: 448, offset: 1280)
!4271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !4114, line: 517, size: 448, elements: !4272)
!4272 = !{!4273, !4274, !4275, !4276}
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4271, file: !4114, line: 518, baseType: !233, size: 128)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4271, file: !4114, line: 519, baseType: !233, size: 128, offset: 128)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4271, file: !4114, line: 520, baseType: !233, size: 128, offset: 256)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4271, file: !4114, line: 521, baseType: !4277, size: 32, offset: 384)
!4277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !4114, line: 487, baseType: !59, size: 32, elements: !4278)
!4278 = !{!4279, !4280, !4281, !4282}
!4279 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!4280 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!4281 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!4282 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4113, file: !4114, line: 726, baseType: !4284, size: 2496, offset: 1728)
!4284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !4149, line: 663, size: 2496, elements: !4285)
!4285 = !{!4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4328, !4329, !4330, !4331, !4332, !4333, !4334, !4335, !4336, !4337, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4361, !4369, !4370, !4371, !4372, !4373, !4374, !4375, !4376, !4382, !4386}
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4284, file: !4149, line: 664, baseType: !4236, size: 32)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4284, file: !4149, line: 665, baseType: !59, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4284, file: !4149, line: 666, baseType: !59, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4284, file: !4149, line: 667, baseType: !491, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4284, file: !4149, line: 668, baseType: !491, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4284, file: !4149, line: 669, baseType: !491, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4284, file: !4149, line: 670, baseType: !491, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4284, file: !4149, line: 671, baseType: !491, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4284, file: !4149, line: 672, baseType: !491, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4284, file: !4149, line: 673, baseType: !491, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4284, file: !4149, line: 674, baseType: !491, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4284, file: !4149, line: 675, baseType: !457, size: 32, offset: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4284, file: !4149, line: 676, baseType: !266, size: 32, offset: 96)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4284, file: !4149, line: 678, baseType: !233, size: 128, offset: 128)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4284, file: !4149, line: 679, baseType: !1712, size: 256, offset: 256)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4284, file: !4149, line: 680, baseType: !4302, size: 64, offset: 512)
!4302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4303, size: 64)
!4303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4304, line: 43, size: 1536, elements: !4305)
!4304 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4305 = !{!4306, !4307, !4308, !4309, !4310, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4303, file: !4304, line: 44, baseType: !24, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4303, file: !4304, line: 45, baseType: !18, size: 32, offset: 64)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4303, file: !4304, line: 46, baseType: !233, size: 128, offset: 128)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4303, file: !4304, line: 47, baseType: !266, size: 32, offset: 256)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4303, file: !4304, line: 48, baseType: !4311, size: 64, offset: 320)
!4311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4312, size: 64)
!4312 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !4149, line: 629, flags: DIFlagFwdDecl)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4303, file: !4304, line: 49, baseType: !1955, size: 320, offset: 384)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4303, file: !4304, line: 50, baseType: !40, size: 64, offset: 704)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4303, file: !4304, line: 51, baseType: !2561, size: 64, offset: 768)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4303, file: !4304, line: 52, baseType: !2561, size: 64, offset: 832)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4303, file: !4304, line: 53, baseType: !2561, size: 64, offset: 896)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4303, file: !4304, line: 54, baseType: !2561, size: 64, offset: 960)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4303, file: !4304, line: 55, baseType: !2561, size: 64, offset: 1024)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4303, file: !4304, line: 56, baseType: !40, size: 64, offset: 1088)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4303, file: !4304, line: 57, baseType: !40, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4303, file: !4304, line: 58, baseType: !40, size: 64, offset: 1216)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4303, file: !4304, line: 59, baseType: !40, size: 64, offset: 1280)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4303, file: !4304, line: 60, baseType: !40, size: 64, offset: 1344)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4303, file: !4304, line: 61, baseType: !4118, size: 64, offset: 1408)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4303, file: !4304, line: 62, baseType: !491, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4303, file: !4304, line: 63, baseType: !491, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4284, file: !4149, line: 681, baseType: !491, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4284, file: !4149, line: 682, baseType: !491, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4284, file: !4149, line: 683, baseType: !491, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4284, file: !4149, line: 684, baseType: !59, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4284, file: !4149, line: 685, baseType: !59, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4284, file: !4149, line: 690, baseType: !2552, size: 512, offset: 640)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4284, file: !4149, line: 691, baseType: !400, size: 64, offset: 1152)
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4284, file: !4149, line: 692, baseType: !1481, size: 256, offset: 1216)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4284, file: !4149, line: 693, baseType: !337, size: 192, offset: 1472)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4284, file: !4149, line: 694, baseType: !4311, size: 64, offset: 1664)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4284, file: !4149, line: 695, baseType: !212, size: 32, offset: 1728)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4284, file: !4149, line: 696, baseType: !212, size: 32, offset: 1760)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4284, file: !4149, line: 697, baseType: !59, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4284, file: !4149, line: 698, baseType: !59, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4284, file: !4149, line: 699, baseType: !59, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4284, file: !4149, line: 700, baseType: !59, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4284, file: !4149, line: 701, baseType: !59, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4284, file: !4149, line: 702, baseType: !59, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4284, file: !4149, line: 703, baseType: !491, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4284, file: !4149, line: 704, baseType: !59, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4284, file: !4149, line: 705, baseType: !59, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4284, file: !4149, line: 706, baseType: !59, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4284, file: !4149, line: 707, baseType: !59, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4284, file: !4149, line: 708, baseType: !59, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4284, file: !4149, line: 709, baseType: !59, size: 32, offset: 1824)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4284, file: !4149, line: 710, baseType: !4354, size: 32, offset: 1856)
!4354 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !4149, line: 620, baseType: !59, size: 32, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4359, !4360}
!4356 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!4357 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!4358 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!4359 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!4360 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4284, file: !4149, line: 711, baseType: !4362, size: 32, offset: 1888)
!4362 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !4149, line: 597, baseType: !18, size: 32, elements: !4363)
!4363 = !{!4364, !4365, !4366, !4367, !4368}
!4364 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!4365 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!4366 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!4367 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!4368 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4284, file: !4149, line: 712, baseType: !4362, size: 32, offset: 1920)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4284, file: !4149, line: 713, baseType: !18, size: 32, offset: 1952)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4284, file: !4149, line: 714, baseType: !18, size: 32, offset: 1984)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4284, file: !4149, line: 715, baseType: !400, size: 64, offset: 2048)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4284, file: !4149, line: 716, baseType: !400, size: 64, offset: 2112)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4284, file: !4149, line: 717, baseType: !400, size: 64, offset: 2176)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4284, file: !4149, line: 718, baseType: !400, size: 64, offset: 2240)
!4376 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4284, file: !4149, line: 720, baseType: !4377, size: 64, offset: 2304)
!4377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4378, size: 64)
!4378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !4149, line: 632, size: 64, elements: !4379)
!4379 = !{!4380, !4381}
!4380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4378, file: !4149, line: 633, baseType: !266, size: 32)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4378, file: !4149, line: 634, baseType: !59, size: 32, offset: 32)
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4284, file: !4149, line: 721, baseType: !4383, size: 64, offset: 2368)
!4383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4384, size: 64)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4118, !417}
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4284, file: !4149, line: 722, baseType: !4387, size: 64, offset: 2432)
!4387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4388, size: 64)
!4388 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !4149, line: 722, flags: DIFlagFwdDecl)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4113, file: !4114, line: 727, baseType: !4390, size: 64, offset: 4224)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !4149, line: 742, size: 1792, elements: !4392)
!4392 = !{!4393, !4394, !4395, !4399, !4400, !4401}
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4391, file: !4149, line: 743, baseType: !4148, size: 1472)
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4391, file: !4149, line: 744, baseType: !4152, size: 64, offset: 1472)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4391, file: !4149, line: 745, baseType: !4396, size: 64, offset: 1536)
!4396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4397, size: 64)
!4397 = !DISubroutineType(types: !4398)
!4398 = !{null, !4118, !491}
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4391, file: !4149, line: 746, baseType: !4152, size: 64, offset: 1600)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4391, file: !4149, line: 747, baseType: !4142, size: 64, offset: 1664)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4391, file: !4149, line: 748, baseType: !4142, size: 64, offset: 1728)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4113, file: !4114, line: 736, baseType: !4403, size: 128, offset: 4288)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !4114, line: 529, size: 128, elements: !4404)
!4404 = !{!4405, !4409}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4403, file: !4114, line: 531, baseType: !4406, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4408, line: 13, flags: DIFlagFwdDecl)
!4408 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4403, file: !4114, line: 532, baseType: !4410, size: 64, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4411, size: 64)
!4411 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !4114, line: 49, flags: DIFlagFwdDecl)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4113, file: !4114, line: 738, baseType: !4413, size: 64, offset: 4416)
!4413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4414, size: 64)
!4414 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4415)
!4415 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !4114, line: 738, flags: DIFlagFwdDecl)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4113, file: !4114, line: 740, baseType: !4417, size: 64, offset: 4480)
!4417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4113, file: !4114, line: 741, baseType: !400, size: 64, offset: 4544)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4113, file: !4114, line: 746, baseType: !400, size: 64, offset: 4608)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4113, file: !4114, line: 747, baseType: !4421, size: 64, offset: 4672)
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4423)
!4423 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !4114, line: 747, flags: DIFlagFwdDecl)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4113, file: !4114, line: 749, baseType: !4425, size: 64, offset: 4736)
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !4114, line: 428, size: 128, elements: !4427)
!4427 = !{!4428, !4429, !4430}
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4426, file: !4114, line: 433, baseType: !59, size: 32)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4426, file: !4114, line: 434, baseType: !59, size: 32, offset: 32)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4426, file: !4114, line: 435, baseType: !40, size: 64, offset: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4113, file: !4114, line: 751, baseType: !233, size: 128, offset: 4800)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4113, file: !4114, line: 762, baseType: !4433, size: 64, offset: 4928)
!4433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4434, size: 64)
!4434 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !4114, line: 762, flags: DIFlagFwdDecl)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4113, file: !4114, line: 770, baseType: !4436, offset: 4992)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4437, line: 5, elements: !1347)
!4437 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4113, file: !4114, line: 772, baseType: !4439, size: 64, offset: 4992)
!4439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4440, size: 64)
!4440 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4441, line: 18, flags: DIFlagFwdDecl)
!4441 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4113, file: !4114, line: 773, baseType: !4443, size: 64, offset: 5056)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4181, line: 22, flags: DIFlagFwdDecl)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4113, file: !4114, line: 776, baseType: !18, size: 32, offset: 5120)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4113, file: !4114, line: 778, baseType: !728, size: 32, offset: 5152)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4113, file: !4114, line: 779, baseType: !457, size: 32, offset: 5184)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4113, file: !4114, line: 781, baseType: !266, size: 32, offset: 5216)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4113, file: !4114, line: 782, baseType: !233, size: 128, offset: 5248)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4113, file: !4114, line: 784, baseType: !4451, size: 64, offset: 5376)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4453)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4454, line: 52, size: 768, elements: !4455)
!4454 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4455 = !{!4456, !4457, !4458, !4459, !4460, !4464, !4468, !4469, !4470, !4471, !4475, !4479}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4453, file: !4454, line: 53, baseType: !24, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4453, file: !4454, line: 55, baseType: !1000, size: 64, offset: 64)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4453, file: !4454, line: 56, baseType: !1000, size: 64, offset: 128)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4453, file: !4454, line: 58, baseType: !4131, size: 64, offset: 192)
!4460 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4453, file: !4454, line: 59, baseType: !4461, size: 64, offset: 256)
!4461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4462, size: 64)
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!502, !4134, !4140}
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4453, file: !4454, line: 61, baseType: !4465, size: 64, offset: 320)
!4465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4466, size: 64)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !4451}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4453, file: !4454, line: 62, baseType: !4142, size: 64, offset: 384)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4453, file: !4454, line: 64, baseType: !4152, size: 64, offset: 448)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4453, file: !4454, line: 66, baseType: !1545, size: 64, offset: 512)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4453, file: !4454, line: 67, baseType: !4472, size: 64, offset: 576)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!1442, !4134}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4453, file: !4454, line: 69, baseType: !4476, size: 64, offset: 640)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{null, !4134, !1583, !1584}
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4453, file: !4454, line: 71, baseType: !4146, size: 64, offset: 704)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4113, file: !4114, line: 785, baseType: !1000, size: 64, offset: 5440)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4113, file: !4114, line: 787, baseType: !4142, size: 64, offset: 5504)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4113, file: !4114, line: 788, baseType: !4483, size: 64, offset: 5568)
!4483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4484, size: 64)
!4484 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !4114, line: 46, flags: DIFlagFwdDecl)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4113, file: !4114, line: 789, baseType: !4486, size: 64, offset: 5632)
!4486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4487, size: 64)
!4487 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !4114, line: 48, flags: DIFlagFwdDecl)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4113, file: !4114, line: 791, baseType: !4489, size: 64, offset: 5696)
!4489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4490, size: 64)
!4490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !4114, line: 597, size: 128, elements: !4491)
!4491 = !{!4492, !4502, !4508, !4514, !4515}
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4490, file: !4114, line: 598, baseType: !4493, size: 32)
!4493 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !4114, line: 547, baseType: !59, size: 32, elements: !4494)
!4494 = !{!4495, !4496, !4497, !4498, !4499, !4500, !4501}
!4495 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!4496 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!4497 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!4498 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!4499 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!4500 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!4501 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4490, file: !4114, line: 599, baseType: !4503, size: 32, offset: 32)
!4503 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !4114, line: 564, baseType: !59, size: 32, elements: !4504)
!4504 = !{!4505, !4506, !4507}
!4505 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!4506 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!4507 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4490, file: !4114, line: 600, baseType: !4509, size: 32, offset: 64)
!4509 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !4114, line: 577, baseType: !59, size: 32, elements: !4510)
!4510 = !{!4511, !4512, !4513}
!4511 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!4512 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!4513 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4490, file: !4114, line: 601, baseType: !491, size: 8, offset: 96)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4490, file: !4114, line: 602, baseType: !491, size: 8, offset: 104)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4113, file: !4114, line: 793, baseType: !4517, size: 32, offset: 5760)
!4517 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !4114, line: 503, baseType: !59, size: 32, elements: !4518)
!4518 = !{!4519, !4520, !4521, !4522}
!4519 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!4520 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!4521 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!4522 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4113, file: !4114, line: 795, baseType: !491, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4113, file: !4114, line: 796, baseType: !491, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4113, file: !4114, line: 797, baseType: !491, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4113, file: !4114, line: 798, baseType: !491, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4113, file: !4114, line: 799, baseType: !491, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "h_list", scope: !20, file: !21, line: 200, baseType: !233, size: 128, offset: 10176)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !20, file: !21, line: 201, baseType: !233, size: 128, offset: 10304)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "num_vals", scope: !20, file: !21, line: 203, baseType: !59, size: 32, offset: 10432)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "max_vals", scope: !20, file: !21, line: 204, baseType: !59, size: 32, offset: 10464)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "vals", scope: !20, file: !21, line: 205, baseType: !4533, size: 64, offset: 10496)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "devres_managed", scope: !20, file: !21, line: 207, baseType: !491, size: 8, offset: 10560)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !20, file: !21, line: 209, baseType: !4536, size: 192, offset: 10624)
!4536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2561, size: 192, elements: !306)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "inhibited", scope: !20, file: !21, line: 211, baseType: !491, size: 8, offset: 10816)
!4538 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/input/.input-poller.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/input/input-core\22 -D KBUILD_BASENAME=\22input_poller\22 -D KBUILD_MODNAME=\22input_core\22 -D __KBUILD_MODNAME=kmod_input_core -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/input/input-poller.ll drivers/input/input-poller.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4539, retainedTypes: !4580, globals: !4583, splitDebugInlining: false, nameTableKind: None)
!4539 = !{!355, !905, !1257, !1551, !2111, !2180, !2568, !2773, !3309, !4202, !4277, !4354, !4362, !4493, !4503, !4509, !4517, !4540, !4565, !4570}
!4540 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1482, line: 30, baseType: !59, size: 32, elements: !4541)
!4541 = !{!4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564}
!4542 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!4543 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!4544 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!4545 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!4546 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!4547 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!4548 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!4549 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!4550 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!4551 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!4552 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!4553 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!4554 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!4555 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!4556 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!4557 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!4558 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!4559 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!4560 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!4561 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!4562 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!4563 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!4564 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!4565 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4566, line: 10, baseType: !59, size: 32, elements: !4567)
!4566 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!4567 = !{!4568, !4569}
!4568 = !DIEnumerator(name: "false", value: 0)
!4569 = !DIEnumerator(name: "true", value: 1)
!4570 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !4571, line: 364, baseType: !59, size: 32, elements: !4572)
!4571 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!4572 = !{!4573, !4574, !4575, !4576, !4577, !4578, !4579}
!4573 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!4574 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!4575 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!4576 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!4577 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!4578 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!4579 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!4580 = !{!862, !40, !63, !18, !768, !4581, !3984, !4118, !19}
!4581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4582, size: 64)
!4582 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !236)
!4583 = !{!0, !7, !13, !4584, !4586, !4588, !4590, !4592, !4594, !4596, !4601, !4606, !4609, !4614, !4628, !4631, !4633, !4635, !4637}
!4584 = !DIGlobalVariableExpression(var: !4585, expr: !DIExpression())
!4585 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_setup_polling267", scope: !4538, file: !2, line: 92, type: !63, isLocal: true, isDefinition: true)
!4586 = !DIGlobalVariableExpression(var: !4587, expr: !DIExpression())
!4587 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_set_poll_interval268", scope: !4538, file: !2, line: 110, type: !63, isLocal: true, isDefinition: true)
!4588 = !DIGlobalVariableExpression(var: !4589, expr: !DIExpression())
!4589 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_set_min_poll_interval269", scope: !4538, file: !2, line: 117, type: !63, isLocal: true, isDefinition: true)
!4590 = !DIGlobalVariableExpression(var: !4591, expr: !DIExpression())
!4591 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_set_max_poll_interval270", scope: !4538, file: !2, line: 124, type: !63, isLocal: true, isDefinition: true)
!4592 = !DIGlobalVariableExpression(var: !4593, expr: !DIExpression())
!4593 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_input_get_poll_interval271", scope: !4538, file: !2, line: 133, type: !63, isLocal: true, isDefinition: true)
!4594 = !DIGlobalVariableExpression(var: !4595, expr: !DIExpression())
!4595 = distinct !DIGlobalVariable(name: "input_poller_attribute_group", scope: !4538, file: !2, line: 219, type: !1003, isLocal: false, isDefinition: true)
!4596 = !DIGlobalVariableExpression(var: !4597, expr: !DIExpression())
!4597 = distinct !DIGlobalVariable(scope: null, file: !4571, line: 480, type: !4598, isLocal: true, isDefinition: true)
!4598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4599)
!4599 = !{!4600}
!4600 = !DISubrange(count: 21)
!4601 = !DIGlobalVariableExpression(var: !4602, expr: !DIExpression())
!4602 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !4603, isLocal: true, isDefinition: true)
!4603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !4604)
!4604 = !{!4605}
!4605 = !DISubrange(count: 38)
!4606 = !DIGlobalVariableExpression(var: !4607, expr: !DIExpression())
!4607 = distinct !DIGlobalVariable(name: "input_poller_attrs", scope: !4538, file: !2, line: 212, type: !4608, isLocal: true, isDefinition: true)
!4608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !990, size: 256, elements: !333)
!4609 = !DIGlobalVariableExpression(var: !4610, expr: !DIExpression())
!4610 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !4611, isLocal: true, isDefinition: true)
!4611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4612)
!4612 = !{!4613}
!4613 = !DISubrange(count: 5)
!4614 = !DIGlobalVariableExpression(var: !4615, expr: !DIExpression())
!4615 = distinct !DIGlobalVariable(name: "dev_attr_poll", scope: !4538, file: !2, line: 180, type: !4616, isLocal: true, isDefinition: true)
!4616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !4114, line: 106, size: 256, elements: !4617)
!4617 = !{!4618, !4619, !4624}
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4616, file: !4114, line: 107, baseType: !991, size: 128)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !4616, file: !4114, line: 108, baseType: !4620, size: 64, offset: 128)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!807, !4118, !4623, !502}
!4623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !4616, file: !4114, line: 110, baseType: !4625, size: 64, offset: 192)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!807, !4118, !4623, !24, !810}
!4628 = !DIGlobalVariableExpression(var: !4629, expr: !DIExpression())
!4629 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !4630, isLocal: true, isDefinition: true)
!4630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !333)
!4631 = !DIGlobalVariableExpression(var: !4632, expr: !DIExpression())
!4632 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !4630, isLocal: true, isDefinition: true)
!4633 = !DIGlobalVariableExpression(var: !4634, expr: !DIExpression())
!4634 = distinct !DIGlobalVariable(name: "dev_attr_max", scope: !4538, file: !2, line: 191, type: !4616, isLocal: true, isDefinition: true)
!4635 = !DIGlobalVariableExpression(var: !4636, expr: !DIExpression())
!4636 = distinct !DIGlobalVariable(scope: null, file: !2, line: 201, type: !4630, isLocal: true, isDefinition: true)
!4637 = !DIGlobalVariableExpression(var: !4638, expr: !DIExpression())
!4638 = distinct !DIGlobalVariable(name: "dev_attr_min", scope: !4538, file: !2, line: 201, type: !4616, isLocal: true, isDefinition: true)
!4639 = !{!4640, !4641, !4642}
!4640 = !DILocalVariable(name: "dev", arg: 1, scope: !15, file: !2, line: 68, type: !19)
!4641 = !DILocalVariable(name: "poll_fn", arg: 2, scope: !15, file: !2, line: 69, type: !3988)
!4642 = !DILocalVariable(name: "poller", scope: !15, file: !2, line: 71, type: !3984)
!4643 = !{i32 7, !"Dwarf Version", i32 5}
!4644 = !{i32 2, !"Debug Info Version", i32 3}
!4645 = !{i32 1, !"wchar_size", i32 2}
!4646 = !{i32 8, !"cf-protection-branch", i32 1}
!4647 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4648 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4649 = !{i32 1, !"Code Model", i32 2}
!4650 = !{i32 1, !"override-stack-alignment", i32 8}
!4651 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4652 = distinct !DISubprogram(name: "input_dev_poller_finalize", scope: !2, file: !2, line: 46, type: !4653, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4655)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{null, !3984}
!4655 = !{!4656}
!4656 = !DILocalVariable(name: "poller", arg: 1, scope: !4652, file: !2, line: 46, type: !3984)
!4657 = !DILocation(line: 46, column: 57, scope: !4652)
!4658 = !DILocation(line: 48, column: 7, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4652, file: !2, line: 48, column: 6)
!4660 = !DILocation(line: 48, column: 15, scope: !4659)
!4661 = !DILocation(line: 48, column: 6, scope: !4652)
!4662 = !DILocation(line: 49, column: 3, scope: !4659)
!4663 = !DILocation(line: 49, column: 11, scope: !4659)
!4664 = !DILocation(line: 49, column: 25, scope: !4659)
!4665 = !DILocation(line: 50, column: 7, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4652, file: !2, line: 50, column: 6)
!4667 = !DILocation(line: 50, column: 15, scope: !4666)
!4668 = !DILocation(line: 50, column: 6, scope: !4652)
!4669 = !DILocation(line: 51, column: 31, scope: !4666)
!4670 = !DILocation(line: 51, column: 39, scope: !4666)
!4671 = !DILocation(line: 51, column: 3, scope: !4666)
!4672 = !DILocation(line: 51, column: 11, scope: !4666)
!4673 = !DILocation(line: 51, column: 29, scope: !4666)
!4674 = !DILocation(line: 52, column: 1, scope: !4652)
!4675 = distinct !DISubprogram(name: "input_dev_poller_start", scope: !2, file: !2, line: 54, type: !4653, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4676)
!4676 = !{!4677}
!4677 = !DILocalVariable(name: "poller", arg: 1, scope: !4675, file: !2, line: 54, type: !3984)
!4678 = !DILocation(line: 54, column: 54, scope: !4675)
!4679 = !DILocation(line: 57, column: 6, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4675, file: !2, line: 57, column: 6)
!4681 = !DILocation(line: 57, column: 14, scope: !4680)
!4682 = !DILocation(line: 57, column: 28, scope: !4680)
!4683 = !DILocation(line: 57, column: 6, scope: !4675)
!4684 = !DILocation(line: 58, column: 3, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4680, file: !2, line: 57, column: 33)
!4686 = !DILocation(line: 58, column: 11, scope: !4685)
!4687 = !DILocation(line: 58, column: 16, scope: !4685)
!4688 = !DILocation(line: 58, column: 24, scope: !4685)
!4689 = !DILocation(line: 59, column: 31, scope: !4685)
!4690 = !DILocation(line: 59, column: 3, scope: !4685)
!4691 = !DILocation(line: 60, column: 2, scope: !4685)
!4692 = !DILocation(line: 61, column: 1, scope: !4675)
!4693 = distinct !DISubprogram(name: "input_dev_poller_queue_work", scope: !2, file: !2, line: 26, type: !4653, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4694)
!4694 = !{!4695, !4696}
!4695 = !DILocalVariable(name: "poller", arg: 1, scope: !4693, file: !2, line: 26, type: !3984)
!4696 = !DILocalVariable(name: "delay", scope: !4693, file: !2, line: 28, type: !40)
!4697 = !DILocation(line: 26, column: 66, scope: !4693)
!4698 = !DILocation(line: 28, column: 2, scope: !4693)
!4699 = !DILocation(line: 28, column: 16, scope: !4693)
!4700 = !DILocation(line: 30, column: 27, scope: !4693)
!4701 = !DILocation(line: 30, column: 35, scope: !4693)
!4702 = !DILocation(line: 30, column: 10, scope: !4693)
!4703 = !DILocation(line: 30, column: 8, scope: !4693)
!4704 = !DILocation(line: 31, column: 6, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4693, file: !2, line: 31, column: 6)
!4706 = !DILocation(line: 31, column: 12, scope: !4705)
!4707 = !DILocation(line: 31, column: 6, scope: !4693)
!4708 = !DILocation(line: 32, column: 34, scope: !4705)
!4709 = !DILocation(line: 32, column: 11, scope: !4705)
!4710 = !DILocation(line: 32, column: 9, scope: !4705)
!4711 = !DILocation(line: 32, column: 3, scope: !4705)
!4712 = !DILocation(line: 34, column: 21, scope: !4693)
!4713 = !DILocation(line: 34, column: 43, scope: !4693)
!4714 = !DILocation(line: 34, column: 51, scope: !4693)
!4715 = !DILocation(line: 34, column: 57, scope: !4693)
!4716 = !DILocation(line: 34, column: 2, scope: !4693)
!4717 = !DILocation(line: 35, column: 1, scope: !4693)
!4718 = distinct !DISubprogram(name: "input_dev_poller_stop", scope: !2, file: !2, line: 63, type: !4653, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4719)
!4719 = !{!4720}
!4720 = !DILocalVariable(name: "poller", arg: 1, scope: !4718, file: !2, line: 63, type: !3984)
!4721 = !DILocation(line: 63, column: 53, scope: !4718)
!4722 = !DILocation(line: 65, column: 28, scope: !4718)
!4723 = !DILocation(line: 65, column: 36, scope: !4718)
!4724 = !DILocation(line: 65, column: 2, scope: !4718)
!4725 = !DILocation(line: 66, column: 1, scope: !4718)
!4726 = !DISubprogram(name: "cancel_delayed_work_sync", scope: !1482, file: !1482, line: 519, type: !4727, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!491, !4729}
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!4730 = !DILocation(line: 68, column: 43, scope: !15)
!4731 = !DILocation(line: 69, column: 11, scope: !15)
!4732 = !DILocation(line: 71, column: 2, scope: !15)
!4733 = !DILocation(line: 71, column: 27, scope: !15)
!4734 = !DILocation(line: 73, column: 11, scope: !15)
!4735 = !DILocation(line: 73, column: 9, scope: !15)
!4736 = !DILocation(line: 74, column: 7, scope: !4737)
!4737 = distinct !DILexicalBlock(scope: !15, file: !2, line: 74, column: 6)
!4738 = !DILocation(line: 74, column: 6, scope: !15)
!4739 = !DILocation(line: 80, column: 3, scope: !4740)
!4740 = distinct !DILexicalBlock(scope: !4741, file: !2, line: 80, column: 3)
!4741 = distinct !DILexicalBlock(scope: !4737, file: !2, line: 74, column: 15)
!4742 = !DILocation(line: 80, column: 3, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4740, file: !2, line: 80, column: 3)
!4744 = !DILocation(line: 82, column: 3, scope: !4741)
!4745 = !DILocation(line: 85, column: 2, scope: !15)
!4746 = !DILocation(line: 85, column: 2, scope: !4747)
!4747 = distinct !DILexicalBlock(scope: !15, file: !2, line: 85, column: 2)
!4748 = !DILocation(line: 85, column: 2, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4747, file: !2, line: 85, column: 2)
!4750 = !DILocation(line: 85, column: 2, scope: !4751)
!4751 = distinct !DILexicalBlock(scope: !4749, file: !2, line: 85, column: 2)
!4752 = !DILocation(line: 86, column: 18, scope: !15)
!4753 = !DILocation(line: 86, column: 2, scope: !15)
!4754 = !DILocation(line: 86, column: 10, scope: !15)
!4755 = !DILocation(line: 86, column: 16, scope: !15)
!4756 = !DILocation(line: 87, column: 17, scope: !15)
!4757 = !DILocation(line: 87, column: 2, scope: !15)
!4758 = !DILocation(line: 87, column: 10, scope: !15)
!4759 = !DILocation(line: 87, column: 15, scope: !15)
!4760 = !DILocation(line: 89, column: 16, scope: !15)
!4761 = !DILocation(line: 89, column: 2, scope: !15)
!4762 = !DILocation(line: 89, column: 7, scope: !15)
!4763 = !DILocation(line: 89, column: 14, scope: !15)
!4764 = !DILocation(line: 90, column: 2, scope: !15)
!4765 = !DILocation(line: 91, column: 1, scope: !15)
!4766 = distinct !DISubprogram(name: "kzalloc", scope: !4571, file: !4571, line: 719, type: !4767, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4769)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!63, !810, !862}
!4769 = !{!4770, !4771}
!4770 = !DILocalVariable(name: "size", arg: 1, scope: !4766, file: !4571, line: 719, type: !810)
!4771 = !DILocalVariable(name: "flags", arg: 2, scope: !4766, file: !4571, line: 719, type: !862)
!4772 = !DILocation(line: 719, column: 52, scope: !4766)
!4773 = !DILocation(line: 719, column: 64, scope: !4766)
!4774 = !DILocation(line: 721, column: 17, scope: !4766)
!4775 = !DILocation(line: 721, column: 23, scope: !4766)
!4776 = !DILocation(line: 721, column: 29, scope: !4766)
!4777 = !DILocation(line: 721, column: 9, scope: !4766)
!4778 = !DILocation(line: 721, column: 2, scope: !4766)
!4779 = !DISubprogram(name: "_dev_err", scope: !4780, file: !4780, line: 50, type: !4781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4780 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!4781 = !DISubroutineType(types: !4782)
!4782 = !{null, !4134, !24, null}
!4783 = distinct !DISubprogram(name: "__init_work", scope: !1482, file: !1482, line: 263, type: !4784, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4786)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{null, !1491, !18}
!4786 = !{!4787, !4788}
!4787 = !DILocalVariable(name: "work", arg: 1, scope: !4783, file: !1482, line: 263, type: !1491)
!4788 = !DILocalVariable(name: "onstack", arg: 2, scope: !4783, file: !1482, line: 263, type: !18)
!4789 = !DILocation(line: 263, column: 52, scope: !4783)
!4790 = !DILocation(line: 263, column: 62, scope: !4783)
!4791 = !DILocation(line: 263, column: 73, scope: !4783)
!4792 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !4793, file: !4793, line: 35, type: !4794, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4796)
!4793 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !236}
!4796 = !{!4797}
!4797 = !DILocalVariable(name: "list", arg: 1, scope: !4792, file: !4793, line: 35, type: !236)
!4798 = !DILocation(line: 35, column: 53, scope: !4792)
!4799 = !DILocation(line: 37, column: 2, scope: !4792)
!4800 = !DILocation(line: 37, column: 2, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4792, file: !4793, line: 37, column: 2)
!4802 = !DILocation(line: 37, column: 2, scope: !4803)
!4803 = distinct !DILexicalBlock(scope: !4801, file: !4793, line: 37, column: 2)
!4804 = !DILocation(line: 37, column: 2, scope: !4805)
!4805 = distinct !DILexicalBlock(scope: !4801, file: !4793, line: 37, column: 2)
!4806 = !DILocation(line: 38, column: 2, scope: !4792)
!4807 = !DILocation(line: 38, column: 2, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4792, file: !4793, line: 38, column: 2)
!4809 = !DILocation(line: 38, column: 2, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4808, file: !4793, line: 38, column: 2)
!4811 = !DILocation(line: 38, column: 2, scope: !4812)
!4812 = distinct !DILexicalBlock(scope: !4808, file: !4793, line: 38, column: 2)
!4813 = !DILocation(line: 39, column: 1, scope: !4792)
!4814 = distinct !DISubprogram(name: "input_dev_poller_work", scope: !2, file: !2, line: 37, type: !1489, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4815)
!4815 = !{!4816, !4817, !4818}
!4816 = !DILocalVariable(name: "work", arg: 1, scope: !4814, file: !2, line: 37, type: !1491)
!4817 = !DILocalVariable(name: "poller", scope: !4814, file: !2, line: 39, type: !3984)
!4818 = !DILocalVariable(name: "__mptr", scope: !4819, file: !2, line: 40, type: !63)
!4819 = distinct !DILexicalBlock(scope: !4814, file: !2, line: 40, column: 3)
!4820 = !DILocation(line: 37, column: 55, scope: !4814)
!4821 = !DILocation(line: 39, column: 2, scope: !4814)
!4822 = !DILocation(line: 39, column: 27, scope: !4814)
!4823 = !DILocation(line: 40, column: 3, scope: !4819)
!4824 = !DILocation(line: 40, column: 3, scope: !4814)
!4825 = !DILocation(line: 42, column: 2, scope: !4814)
!4826 = !DILocation(line: 42, column: 10, scope: !4814)
!4827 = !DILocation(line: 42, column: 15, scope: !4814)
!4828 = !DILocation(line: 42, column: 23, scope: !4814)
!4829 = !DILocation(line: 43, column: 30, scope: !4814)
!4830 = !DILocation(line: 43, column: 2, scope: !4814)
!4831 = !DILocation(line: 44, column: 1, scope: !4814)
!4832 = !DISubprogram(name: "init_timer_key", scope: !1956, file: !1956, line: 91, type: !4833, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4833 = !DISubroutineType(types: !4834)
!4834 = !{null, !1964, !1961, !59, !24, !4835}
!4835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!4836 = distinct !DISubprogram(name: "input_set_poll_interval", scope: !2, file: !2, line: 105, type: !4837, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4839)
!4837 = !DISubroutineType(types: !4838)
!4838 = !{null, !19, !59}
!4839 = !{!4840, !4841}
!4840 = !DILocalVariable(name: "dev", arg: 1, scope: !4836, file: !2, line: 105, type: !19)
!4841 = !DILocalVariable(name: "interval", arg: 2, scope: !4836, file: !2, line: 105, type: !59)
!4842 = !DILocation(line: 105, column: 48, scope: !4836)
!4843 = !DILocation(line: 105, column: 66, scope: !4836)
!4844 = !DILocation(line: 107, column: 30, scope: !4845)
!4845 = distinct !DILexicalBlock(scope: !4836, file: !2, line: 107, column: 6)
!4846 = !DILocation(line: 107, column: 6, scope: !4845)
!4847 = !DILocation(line: 107, column: 6, scope: !4836)
!4848 = !DILocation(line: 108, column: 32, scope: !4845)
!4849 = !DILocation(line: 108, column: 3, scope: !4845)
!4850 = !DILocation(line: 108, column: 8, scope: !4845)
!4851 = !DILocation(line: 108, column: 16, scope: !4845)
!4852 = !DILocation(line: 108, column: 30, scope: !4845)
!4853 = !DILocation(line: 109, column: 1, scope: !4836)
!4854 = distinct !DISubprogram(name: "input_dev_ensure_poller", scope: !2, file: !2, line: 94, type: !4855, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4857)
!4855 = !DISubroutineType(types: !4856)
!4856 = !{!491, !19}
!4857 = !{!4858}
!4858 = !DILocalVariable(name: "dev", arg: 1, scope: !4854, file: !2, line: 94, type: !19)
!4859 = !DILocation(line: 94, column: 55, scope: !4854)
!4860 = !DILocation(line: 96, column: 7, scope: !4861)
!4861 = distinct !DILexicalBlock(scope: !4854, file: !2, line: 96, column: 6)
!4862 = !DILocation(line: 96, column: 12, scope: !4861)
!4863 = !DILocation(line: 96, column: 6, scope: !4854)
!4864 = !DILocation(line: 97, column: 3, scope: !4865)
!4865 = distinct !DILexicalBlock(scope: !4866, file: !2, line: 97, column: 3)
!4866 = distinct !DILexicalBlock(scope: !4861, file: !2, line: 96, column: 20)
!4867 = !DILocation(line: 97, column: 3, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4865, file: !2, line: 97, column: 3)
!4869 = !DILocation(line: 99, column: 3, scope: !4866)
!4870 = !DILocation(line: 102, column: 2, scope: !4854)
!4871 = !DILocation(line: 103, column: 1, scope: !4854)
!4872 = distinct !DISubprogram(name: "input_set_min_poll_interval", scope: !2, file: !2, line: 112, type: !4837, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4873)
!4873 = !{!4874, !4875}
!4874 = !DILocalVariable(name: "dev", arg: 1, scope: !4872, file: !2, line: 112, type: !19)
!4875 = !DILocalVariable(name: "interval", arg: 2, scope: !4872, file: !2, line: 112, type: !59)
!4876 = !DILocation(line: 112, column: 52, scope: !4872)
!4877 = !DILocation(line: 112, column: 70, scope: !4872)
!4878 = !DILocation(line: 114, column: 30, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4872, file: !2, line: 114, column: 6)
!4880 = !DILocation(line: 114, column: 6, scope: !4879)
!4881 = !DILocation(line: 114, column: 6, scope: !4872)
!4882 = !DILocation(line: 115, column: 36, scope: !4879)
!4883 = !DILocation(line: 115, column: 3, scope: !4879)
!4884 = !DILocation(line: 115, column: 8, scope: !4879)
!4885 = !DILocation(line: 115, column: 16, scope: !4879)
!4886 = !DILocation(line: 115, column: 34, scope: !4879)
!4887 = !DILocation(line: 116, column: 1, scope: !4872)
!4888 = distinct !DISubprogram(name: "input_set_max_poll_interval", scope: !2, file: !2, line: 119, type: !4837, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4889)
!4889 = !{!4890, !4891}
!4890 = !DILocalVariable(name: "dev", arg: 1, scope: !4888, file: !2, line: 119, type: !19)
!4891 = !DILocalVariable(name: "interval", arg: 2, scope: !4888, file: !2, line: 119, type: !59)
!4892 = !DILocation(line: 119, column: 52, scope: !4888)
!4893 = !DILocation(line: 119, column: 70, scope: !4888)
!4894 = !DILocation(line: 121, column: 30, scope: !4895)
!4895 = distinct !DILexicalBlock(scope: !4888, file: !2, line: 121, column: 6)
!4896 = !DILocation(line: 121, column: 6, scope: !4895)
!4897 = !DILocation(line: 121, column: 6, scope: !4888)
!4898 = !DILocation(line: 122, column: 36, scope: !4895)
!4899 = !DILocation(line: 122, column: 3, scope: !4895)
!4900 = !DILocation(line: 122, column: 8, scope: !4895)
!4901 = !DILocation(line: 122, column: 16, scope: !4895)
!4902 = !DILocation(line: 122, column: 34, scope: !4895)
!4903 = !DILocation(line: 123, column: 1, scope: !4888)
!4904 = distinct !DISubprogram(name: "input_get_poll_interval", scope: !2, file: !2, line: 126, type: !4019, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4905)
!4905 = !{!4906}
!4906 = !DILocalVariable(name: "dev", arg: 1, scope: !4904, file: !2, line: 126, type: !19)
!4907 = !DILocation(line: 126, column: 47, scope: !4904)
!4908 = !DILocation(line: 128, column: 7, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4904, file: !2, line: 128, column: 6)
!4910 = !DILocation(line: 128, column: 12, scope: !4909)
!4911 = !DILocation(line: 128, column: 6, scope: !4904)
!4912 = !DILocation(line: 129, column: 3, scope: !4909)
!4913 = !DILocation(line: 131, column: 9, scope: !4904)
!4914 = !DILocation(line: 131, column: 14, scope: !4904)
!4915 = !DILocation(line: 131, column: 22, scope: !4904)
!4916 = !DILocation(line: 131, column: 2, scope: !4904)
!4917 = !DILocation(line: 132, column: 1, scope: !4904)
!4918 = distinct !DISubprogram(name: "input_poller_attrs_visible", scope: !2, file: !2, line: 203, type: !1008, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4919)
!4919 = !{!4920, !4921, !4922, !4923, !4924, !4926, !4927}
!4920 = !DILocalVariable(name: "kobj", arg: 1, scope: !4918, file: !2, line: 203, type: !926)
!4921 = !DILocalVariable(name: "attr", arg: 2, scope: !4918, file: !2, line: 204, type: !990)
!4922 = !DILocalVariable(name: "n", arg: 3, scope: !4918, file: !2, line: 204, type: !18)
!4923 = !DILocalVariable(name: "dev", scope: !4918, file: !2, line: 206, type: !4118)
!4924 = !DILocalVariable(name: "__mptr", scope: !4925, file: !2, line: 206, type: !63)
!4925 = distinct !DILexicalBlock(scope: !4918, file: !2, line: 206, column: 23)
!4926 = !DILocalVariable(name: "input", scope: !4918, file: !2, line: 207, type: !19)
!4927 = !DILocalVariable(name: "__mptr", scope: !4928, file: !2, line: 207, type: !63)
!4928 = distinct !DILexicalBlock(scope: !4918, file: !2, line: 207, column: 28)
!4929 = !DILocation(line: 203, column: 59, scope: !4918)
!4930 = !DILocation(line: 204, column: 26, scope: !4918)
!4931 = !DILocation(line: 204, column: 36, scope: !4918)
!4932 = !DILocation(line: 206, column: 2, scope: !4918)
!4933 = !DILocation(line: 206, column: 17, scope: !4918)
!4934 = !DILocation(line: 206, column: 23, scope: !4925)
!4935 = !DILocation(line: 206, column: 23, scope: !4918)
!4936 = !DILocation(line: 207, column: 2, scope: !4918)
!4937 = !DILocation(line: 207, column: 20, scope: !4918)
!4938 = !DILocation(line: 207, column: 28, scope: !4928)
!4939 = !DILocation(line: 207, column: 28, scope: !4918)
!4940 = !DILocation(line: 209, column: 9, scope: !4918)
!4941 = !DILocation(line: 209, column: 16, scope: !4918)
!4942 = !DILocation(line: 209, column: 25, scope: !4918)
!4943 = !DILocation(line: 209, column: 31, scope: !4918)
!4944 = !DILocation(line: 210, column: 1, scope: !4918)
!4945 = !DILocation(line: 209, column: 2, scope: !4918)
!4946 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !4947, file: !4947, line: 515, type: !4948, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4950)
!4947 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!4948 = !DISubroutineType(types: !4949)
!4949 = !{!40, !3759}
!4950 = !{!4951}
!4951 = !DILocalVariable(name: "m", arg: 1, scope: !4946, file: !4947, line: 515, type: !3759)
!4952 = !DILocation(line: 515, column: 74, scope: !4946)
!4953 = !DILocation(line: 517, column: 27, scope: !4954)
!4954 = distinct !DILexicalBlock(scope: !4946, file: !4947, line: 517, column: 6)
!4955 = !DILocation(line: 517, column: 6, scope: !4954)
!4956 = !DILocation(line: 517, column: 6, scope: !4946)
!4957 = !DILocation(line: 518, column: 12, scope: !4958)
!4958 = distinct !DILexicalBlock(scope: !4959, file: !4947, line: 518, column: 7)
!4959 = distinct !DILexicalBlock(scope: !4954, file: !4947, line: 517, column: 31)
!4960 = !DILocation(line: 518, column: 14, scope: !4958)
!4961 = !DILocation(line: 518, column: 7, scope: !4959)
!4962 = !DILocation(line: 519, column: 4, scope: !4958)
!4963 = !DILocation(line: 520, column: 28, scope: !4959)
!4964 = !DILocation(line: 520, column: 10, scope: !4959)
!4965 = !DILocation(line: 520, column: 3, scope: !4959)
!4966 = !DILocation(line: 522, column: 29, scope: !4967)
!4967 = distinct !DILexicalBlock(scope: !4954, file: !4947, line: 521, column: 9)
!4968 = !DILocation(line: 522, column: 10, scope: !4967)
!4969 = !DILocation(line: 522, column: 3, scope: !4967)
!4970 = !DILocation(line: 524, column: 1, scope: !4946)
!4971 = !DISubprogram(name: "round_jiffies_relative", scope: !1956, file: !1956, line: 223, type: !4972, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{!40, !40}
!4974 = distinct !DISubprogram(name: "queue_delayed_work", scope: !1482, file: !1482, line: 573, type: !4975, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4977)
!4975 = !DISubroutineType(types: !4976)
!4976 = !{!491, !2017, !4729, !40}
!4977 = !{!4978, !4979, !4980}
!4978 = !DILocalVariable(name: "wq", arg: 1, scope: !4974, file: !1482, line: 573, type: !2017)
!4979 = !DILocalVariable(name: "dwork", arg: 2, scope: !4974, file: !1482, line: 574, type: !4729)
!4980 = !DILocalVariable(name: "delay", arg: 3, scope: !4974, file: !1482, line: 575, type: !40)
!4981 = !DILocation(line: 573, column: 64, scope: !4974)
!4982 = !DILocation(line: 574, column: 32, scope: !4974)
!4983 = !DILocation(line: 575, column: 25, scope: !4974)
!4984 = !DILocation(line: 577, column: 49, scope: !4974)
!4985 = !DILocation(line: 577, column: 53, scope: !4974)
!4986 = !DILocation(line: 577, column: 60, scope: !4974)
!4987 = !DILocation(line: 577, column: 9, scope: !4974)
!4988 = !DILocation(line: 577, column: 2, scope: !4974)
!4989 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !4947, file: !4947, line: 458, type: !4948, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !4990)
!4990 = !{!4991}
!4991 = !DILocalVariable(name: "m", arg: 1, scope: !4989, file: !4947, line: 458, type: !3759)
!4992 = !DILocation(line: 458, column: 66, scope: !4989)
!4993 = !DILocation(line: 460, column: 10, scope: !4989)
!4994 = !DILocation(line: 460, column: 12, scope: !4989)
!4995 = !DILocation(line: 460, column: 34, scope: !4989)
!4996 = !DILocation(line: 460, column: 39, scope: !4989)
!4997 = !DILocation(line: 460, column: 2, scope: !4989)
!4998 = !DISubprogram(name: "__msecs_to_jiffies", scope: !4947, file: !4947, line: 451, type: !4948, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4999 = !DISubprogram(name: "queue_delayed_work_on", scope: !1482, file: !1482, line: 500, type: !5000, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5000 = !DISubroutineType(types: !5001)
!5001 = !{!491, !18, !2017, !4729, !40}
!5002 = distinct !DISubprogram(name: "kmalloc", scope: !4571, file: !4571, line: 591, type: !4767, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !5003)
!5003 = !{!5004, !5005, !5006}
!5004 = !DILocalVariable(name: "size", arg: 1, scope: !5002, file: !4571, line: 591, type: !810)
!5005 = !DILocalVariable(name: "flags", arg: 2, scope: !5002, file: !4571, line: 591, type: !862)
!5006 = !DILocalVariable(name: "index", scope: !5007, file: !4571, line: 594, type: !59)
!5007 = distinct !DILexicalBlock(scope: !5008, file: !4571, line: 593, column: 42)
!5008 = distinct !DILexicalBlock(scope: !5002, file: !4571, line: 593, column: 6)
!5009 = !DILocation(line: 591, column: 61, scope: !5002)
!5010 = !DILocation(line: 591, column: 73, scope: !5002)
!5011 = !DILocation(line: 593, column: 27, scope: !5008)
!5012 = !DILocation(line: 593, column: 6, scope: !5008)
!5013 = !DILocation(line: 593, column: 33, scope: !5008)
!5014 = !DILocation(line: 593, column: 36, scope: !5008)
!5015 = !DILocation(line: 593, column: 6, scope: !5002)
!5016 = !DILocation(line: 594, column: 3, scope: !5007)
!5017 = !DILocation(line: 594, column: 16, scope: !5007)
!5018 = !DILocation(line: 596, column: 7, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5007, file: !4571, line: 596, column: 7)
!5020 = !DILocation(line: 596, column: 12, scope: !5019)
!5021 = !DILocation(line: 596, column: 7, scope: !5007)
!5022 = !DILocation(line: 597, column: 25, scope: !5019)
!5023 = !DILocation(line: 597, column: 31, scope: !5019)
!5024 = !DILocation(line: 597, column: 11, scope: !5019)
!5025 = !DILocation(line: 597, column: 4, scope: !5019)
!5026 = !DILocation(line: 599, column: 11, scope: !5007)
!5027 = !DILocation(line: 599, column: 9, scope: !5007)
!5028 = !DILocation(line: 601, column: 33, scope: !5007)
!5029 = !DILocation(line: 601, column: 40, scope: !5007)
!5030 = !DILocation(line: 601, column: 20, scope: !5007)
!5031 = !DILocation(line: 601, column: 5, scope: !5007)
!5032 = !DILocation(line: 601, column: 51, scope: !5007)
!5033 = !DILocation(line: 602, column: 5, scope: !5007)
!5034 = !DILocation(line: 602, column: 12, scope: !5007)
!5035 = !DILocation(line: 600, column: 10, scope: !5007)
!5036 = !DILocation(line: 600, column: 3, scope: !5007)
!5037 = !DILocation(line: 603, column: 2, scope: !5008)
!5038 = !DILocation(line: 604, column: 19, scope: !5002)
!5039 = !DILocation(line: 604, column: 25, scope: !5002)
!5040 = !DILocation(line: 604, column: 9, scope: !5002)
!5041 = !DILocation(line: 604, column: 2, scope: !5002)
!5042 = !DILocation(line: 605, column: 1, scope: !5002)
!5043 = !DISubprogram(name: "kmalloc_large", scope: !4571, file: !4571, line: 531, type: !4767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5044 = distinct !DISubprogram(name: "__kmalloc_index", scope: !4571, file: !4571, line: 444, type: !5045, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !5047)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!59, !810, !491}
!5047 = !{!5048, !5049}
!5048 = !DILocalVariable(name: "size", arg: 1, scope: !5044, file: !4571, line: 444, type: !810)
!5049 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5044, file: !4571, line: 445, type: !491)
!5050 = !DILocation(line: 444, column: 60, scope: !5044)
!5051 = !DILocation(line: 445, column: 16, scope: !5044)
!5052 = !DILocation(line: 447, column: 7, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 447, column: 6)
!5054 = !DILocation(line: 447, column: 6, scope: !5044)
!5055 = !DILocation(line: 448, column: 3, scope: !5053)
!5056 = !DILocation(line: 450, column: 6, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 450, column: 6)
!5058 = !DILocation(line: 450, column: 11, scope: !5057)
!5059 = !DILocation(line: 450, column: 6, scope: !5044)
!5060 = !DILocation(line: 451, column: 3, scope: !5057)
!5061 = !DILocation(line: 453, column: 32, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 453, column: 6)
!5063 = !DILocation(line: 453, column: 37, scope: !5062)
!5064 = !DILocation(line: 453, column: 42, scope: !5062)
!5065 = !DILocation(line: 453, column: 45, scope: !5062)
!5066 = !DILocation(line: 453, column: 50, scope: !5062)
!5067 = !DILocation(line: 453, column: 6, scope: !5044)
!5068 = !DILocation(line: 454, column: 3, scope: !5062)
!5069 = !DILocation(line: 455, column: 32, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 455, column: 6)
!5071 = !DILocation(line: 455, column: 37, scope: !5070)
!5072 = !DILocation(line: 455, column: 43, scope: !5070)
!5073 = !DILocation(line: 455, column: 46, scope: !5070)
!5074 = !DILocation(line: 455, column: 51, scope: !5070)
!5075 = !DILocation(line: 455, column: 6, scope: !5044)
!5076 = !DILocation(line: 456, column: 3, scope: !5070)
!5077 = !DILocation(line: 457, column: 6, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 457, column: 6)
!5079 = !DILocation(line: 457, column: 11, scope: !5078)
!5080 = !DILocation(line: 457, column: 6, scope: !5044)
!5081 = !DILocation(line: 457, column: 26, scope: !5078)
!5082 = !DILocation(line: 458, column: 6, scope: !5083)
!5083 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 458, column: 6)
!5084 = !DILocation(line: 458, column: 11, scope: !5083)
!5085 = !DILocation(line: 458, column: 6, scope: !5044)
!5086 = !DILocation(line: 458, column: 26, scope: !5083)
!5087 = !DILocation(line: 459, column: 6, scope: !5088)
!5088 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 459, column: 6)
!5089 = !DILocation(line: 459, column: 11, scope: !5088)
!5090 = !DILocation(line: 459, column: 6, scope: !5044)
!5091 = !DILocation(line: 459, column: 26, scope: !5088)
!5092 = !DILocation(line: 460, column: 6, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 460, column: 6)
!5094 = !DILocation(line: 460, column: 11, scope: !5093)
!5095 = !DILocation(line: 460, column: 6, scope: !5044)
!5096 = !DILocation(line: 460, column: 26, scope: !5093)
!5097 = !DILocation(line: 461, column: 6, scope: !5098)
!5098 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 461, column: 6)
!5099 = !DILocation(line: 461, column: 11, scope: !5098)
!5100 = !DILocation(line: 461, column: 6, scope: !5044)
!5101 = !DILocation(line: 461, column: 26, scope: !5098)
!5102 = !DILocation(line: 462, column: 6, scope: !5103)
!5103 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 462, column: 6)
!5104 = !DILocation(line: 462, column: 11, scope: !5103)
!5105 = !DILocation(line: 462, column: 6, scope: !5044)
!5106 = !DILocation(line: 462, column: 26, scope: !5103)
!5107 = !DILocation(line: 463, column: 6, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 463, column: 6)
!5109 = !DILocation(line: 463, column: 11, scope: !5108)
!5110 = !DILocation(line: 463, column: 6, scope: !5044)
!5111 = !DILocation(line: 463, column: 26, scope: !5108)
!5112 = !DILocation(line: 464, column: 6, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 464, column: 6)
!5114 = !DILocation(line: 464, column: 11, scope: !5113)
!5115 = !DILocation(line: 464, column: 6, scope: !5044)
!5116 = !DILocation(line: 464, column: 26, scope: !5113)
!5117 = !DILocation(line: 465, column: 6, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 465, column: 6)
!5119 = !DILocation(line: 465, column: 11, scope: !5118)
!5120 = !DILocation(line: 465, column: 6, scope: !5044)
!5121 = !DILocation(line: 465, column: 26, scope: !5118)
!5122 = !DILocation(line: 466, column: 6, scope: !5123)
!5123 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 466, column: 6)
!5124 = !DILocation(line: 466, column: 11, scope: !5123)
!5125 = !DILocation(line: 466, column: 6, scope: !5044)
!5126 = !DILocation(line: 466, column: 26, scope: !5123)
!5127 = !DILocation(line: 467, column: 6, scope: !5128)
!5128 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 467, column: 6)
!5129 = !DILocation(line: 467, column: 11, scope: !5128)
!5130 = !DILocation(line: 467, column: 6, scope: !5044)
!5131 = !DILocation(line: 467, column: 26, scope: !5128)
!5132 = !DILocation(line: 468, column: 6, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 468, column: 6)
!5134 = !DILocation(line: 468, column: 11, scope: !5133)
!5135 = !DILocation(line: 468, column: 6, scope: !5044)
!5136 = !DILocation(line: 468, column: 26, scope: !5133)
!5137 = !DILocation(line: 469, column: 6, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 469, column: 6)
!5139 = !DILocation(line: 469, column: 11, scope: !5138)
!5140 = !DILocation(line: 469, column: 6, scope: !5044)
!5141 = !DILocation(line: 469, column: 26, scope: !5138)
!5142 = !DILocation(line: 470, column: 6, scope: !5143)
!5143 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 470, column: 6)
!5144 = !DILocation(line: 470, column: 11, scope: !5143)
!5145 = !DILocation(line: 470, column: 6, scope: !5044)
!5146 = !DILocation(line: 470, column: 26, scope: !5143)
!5147 = !DILocation(line: 471, column: 6, scope: !5148)
!5148 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 471, column: 6)
!5149 = !DILocation(line: 471, column: 11, scope: !5148)
!5150 = !DILocation(line: 471, column: 6, scope: !5044)
!5151 = !DILocation(line: 471, column: 26, scope: !5148)
!5152 = !DILocation(line: 472, column: 6, scope: !5153)
!5153 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 472, column: 6)
!5154 = !DILocation(line: 472, column: 11, scope: !5153)
!5155 = !DILocation(line: 472, column: 6, scope: !5044)
!5156 = !DILocation(line: 472, column: 26, scope: !5153)
!5157 = !DILocation(line: 473, column: 6, scope: !5158)
!5158 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 473, column: 6)
!5159 = !DILocation(line: 473, column: 11, scope: !5158)
!5160 = !DILocation(line: 473, column: 6, scope: !5044)
!5161 = !DILocation(line: 473, column: 26, scope: !5158)
!5162 = !DILocation(line: 474, column: 6, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 474, column: 6)
!5164 = !DILocation(line: 474, column: 11, scope: !5163)
!5165 = !DILocation(line: 474, column: 6, scope: !5044)
!5166 = !DILocation(line: 474, column: 27, scope: !5163)
!5167 = !DILocation(line: 475, column: 6, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 475, column: 6)
!5169 = !DILocation(line: 475, column: 11, scope: !5168)
!5170 = !DILocation(line: 475, column: 6, scope: !5044)
!5171 = !DILocation(line: 475, column: 32, scope: !5168)
!5172 = !DILocation(line: 477, column: 50, scope: !5173)
!5173 = distinct !DILexicalBlock(scope: !5044, file: !4571, line: 477, column: 6)
!5174 = !{i8 0, i8 2}
!5175 = !DILocation(line: 477, column: 6, scope: !5044)
!5176 = !DILocation(line: 478, column: 3, scope: !5173)
!5177 = !DILocation(line: 478, column: 3, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !4571, line: 478, column: 3)
!5179 = distinct !DILexicalBlock(scope: !5173, file: !4571, line: 478, column: 3)
!5180 = !{i32 -2141135749}
!5181 = !DILocation(line: 478, column: 3, scope: !5179)
!5182 = !DILocation(line: 480, column: 3, scope: !5173)
!5183 = !DILocation(line: 480, column: 3, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5173, file: !4571, line: 480, column: 3)
!5185 = !DILocation(line: 480, column: 3, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5184, file: !4571, line: 480, column: 3)
!5187 = !DILocation(line: 480, column: 3, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5184, file: !4571, line: 480, column: 3)
!5189 = !{i64 2153831750, i64 2153831779, i64 2153831825, i64 2153831883, i64 2153831937, i64 2153831991, i64 2153832046, i64 2153832077}
!5190 = !DILocation(line: 483, column: 2, scope: !5044)
!5191 = !DILocation(line: 484, column: 1, scope: !5044)
!5192 = !DISubprogram(name: "kmalloc_trace", scope: !4571, file: !4571, line: 525, type: !5193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!63, !5195, !862, !810}
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5197, line: 325, flags: DIFlagFwdDecl)
!5197 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5198 = distinct !DISubprogram(name: "kmalloc_type", scope: !4571, file: !4571, line: 401, type: !5199, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !5201)
!5199 = !DISubroutineType(types: !5200)
!5200 = !{!4570, !862, !40}
!5201 = !{!5202, !5203}
!5202 = !DILocalVariable(name: "flags", arg: 1, scope: !5198, file: !4571, line: 401, type: !862)
!5203 = !DILocalVariable(name: "caller", arg: 2, scope: !5198, file: !4571, line: 401, type: !40)
!5204 = !DILocation(line: 401, column: 67, scope: !5198)
!5205 = !DILocation(line: 401, column: 88, scope: !5198)
!5206 = !DILocation(line: 407, column: 6, scope: !5207)
!5207 = distinct !DILexicalBlock(scope: !5198, file: !4571, line: 407, column: 6)
!5208 = !DILocation(line: 407, column: 6, scope: !5198)
!5209 = !DILocation(line: 413, column: 3, scope: !5207)
!5210 = !DILocation(line: 423, column: 38, scope: !5211)
!5211 = distinct !DILexicalBlock(scope: !5198, file: !4571, line: 423, column: 6)
!5212 = !DILocation(line: 423, column: 44, scope: !5211)
!5213 = !DILocation(line: 423, column: 6, scope: !5198)
!5214 = !DILocation(line: 424, column: 3, scope: !5211)
!5215 = !DILocation(line: 426, column: 3, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5198, file: !4571, line: 425, column: 6)
!5217 = !DILocation(line: 429, column: 1, scope: !5198)
!5218 = !DISubprogram(name: "__kmalloc", scope: !4571, file: !4571, line: 488, type: !4767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5219 = !DISubprogram(name: "__compiletime_assert_263", scope: !4571, file: !4571, line: 478, type: !2060, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5220 = distinct !DISubprogram(name: "input_dev_get_poll_interval", scope: !2, file: !2, line: 137, type: !4621, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !5221)
!5221 = !{!5222, !5223, !5224, !5225, !5226}
!5222 = !DILocalVariable(name: "dev", arg: 1, scope: !5220, file: !2, line: 137, type: !4118)
!5223 = !DILocalVariable(name: "attr", arg: 2, scope: !5220, file: !2, line: 138, type: !4623)
!5224 = !DILocalVariable(name: "buf", arg: 3, scope: !5220, file: !2, line: 139, type: !502)
!5225 = !DILocalVariable(name: "input", scope: !5220, file: !2, line: 141, type: !19)
!5226 = !DILocalVariable(name: "__mptr", scope: !5227, file: !2, line: 141, type: !63)
!5227 = distinct !DILexicalBlock(scope: !5220, file: !2, line: 141, column: 28)
!5228 = !DILocation(line: 137, column: 59, scope: !5220)
!5229 = !DILocation(line: 138, column: 34, scope: !5220)
!5230 = !DILocation(line: 139, column: 15, scope: !5220)
!5231 = !DILocation(line: 141, column: 2, scope: !5220)
!5232 = !DILocation(line: 141, column: 20, scope: !5220)
!5233 = !DILocation(line: 141, column: 28, scope: !5227)
!5234 = !DILocation(line: 141, column: 28, scope: !5220)
!5235 = !DILocation(line: 143, column: 17, scope: !5220)
!5236 = !DILocation(line: 143, column: 30, scope: !5220)
!5237 = !DILocation(line: 143, column: 37, scope: !5220)
!5238 = !DILocation(line: 143, column: 45, scope: !5220)
!5239 = !DILocation(line: 143, column: 9, scope: !5220)
!5240 = !DILocation(line: 144, column: 1, scope: !5220)
!5241 = !DILocation(line: 143, column: 2, scope: !5220)
!5242 = distinct !DISubprogram(name: "input_dev_set_poll_interval", scope: !2, file: !2, line: 146, type: !4626, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !5243)
!5243 = !{!5244, !5245, !5246, !5247, !5248, !5249, !5251, !5252, !5253}
!5244 = !DILocalVariable(name: "dev", arg: 1, scope: !5242, file: !2, line: 146, type: !4118)
!5245 = !DILocalVariable(name: "attr", arg: 2, scope: !5242, file: !2, line: 147, type: !4623)
!5246 = !DILocalVariable(name: "buf", arg: 3, scope: !5242, file: !2, line: 148, type: !24)
!5247 = !DILocalVariable(name: "count", arg: 4, scope: !5242, file: !2, line: 148, type: !810)
!5248 = !DILocalVariable(name: "input", scope: !5242, file: !2, line: 150, type: !19)
!5249 = !DILocalVariable(name: "__mptr", scope: !5250, file: !2, line: 150, type: !63)
!5250 = distinct !DILexicalBlock(scope: !5242, file: !2, line: 150, column: 28)
!5251 = !DILocalVariable(name: "poller", scope: !5242, file: !2, line: 151, type: !3984)
!5252 = !DILocalVariable(name: "interval", scope: !5242, file: !2, line: 152, type: !59)
!5253 = !DILocalVariable(name: "err", scope: !5242, file: !2, line: 153, type: !18)
!5254 = !DILocation(line: 146, column: 59, scope: !5242)
!5255 = !DILocation(line: 147, column: 34, scope: !5242)
!5256 = !DILocation(line: 148, column: 21, scope: !5242)
!5257 = !DILocation(line: 148, column: 33, scope: !5242)
!5258 = !DILocation(line: 150, column: 2, scope: !5242)
!5259 = !DILocation(line: 150, column: 20, scope: !5242)
!5260 = !DILocation(line: 150, column: 28, scope: !5250)
!5261 = !DILocation(line: 150, column: 28, scope: !5242)
!5262 = !DILocation(line: 151, column: 2, scope: !5242)
!5263 = !DILocation(line: 151, column: 27, scope: !5242)
!5264 = !DILocation(line: 151, column: 36, scope: !5242)
!5265 = !DILocation(line: 151, column: 43, scope: !5242)
!5266 = !DILocation(line: 152, column: 2, scope: !5242)
!5267 = !DILocation(line: 152, column: 15, scope: !5242)
!5268 = !DILocation(line: 153, column: 2, scope: !5242)
!5269 = !DILocation(line: 153, column: 6, scope: !5242)
!5270 = !DILocation(line: 155, column: 19, scope: !5242)
!5271 = !DILocation(line: 155, column: 8, scope: !5242)
!5272 = !DILocation(line: 155, column: 6, scope: !5242)
!5273 = !DILocation(line: 156, column: 6, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5242, file: !2, line: 156, column: 6)
!5275 = !DILocation(line: 156, column: 6, scope: !5242)
!5276 = !DILocation(line: 157, column: 10, scope: !5274)
!5277 = !DILocation(line: 157, column: 3, scope: !5274)
!5278 = !DILocation(line: 159, column: 6, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !5242, file: !2, line: 159, column: 6)
!5280 = !DILocation(line: 159, column: 17, scope: !5279)
!5281 = !DILocation(line: 159, column: 25, scope: !5279)
!5282 = !DILocation(line: 159, column: 15, scope: !5279)
!5283 = !DILocation(line: 159, column: 6, scope: !5242)
!5284 = !DILocation(line: 160, column: 3, scope: !5279)
!5285 = !DILocation(line: 162, column: 6, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5242, file: !2, line: 162, column: 6)
!5287 = !DILocation(line: 162, column: 17, scope: !5286)
!5288 = !DILocation(line: 162, column: 25, scope: !5286)
!5289 = !DILocation(line: 162, column: 15, scope: !5286)
!5290 = !DILocation(line: 162, column: 6, scope: !5242)
!5291 = !DILocation(line: 163, column: 3, scope: !5286)
!5292 = !DILocation(line: 165, column: 14, scope: !5242)
!5293 = !DILocation(line: 165, column: 21, scope: !5242)
!5294 = !DILocation(line: 165, column: 2, scope: !5242)
!5295 = !DILocation(line: 167, column: 26, scope: !5242)
!5296 = !DILocation(line: 167, column: 2, scope: !5242)
!5297 = !DILocation(line: 167, column: 10, scope: !5242)
!5298 = !DILocation(line: 167, column: 24, scope: !5242)
!5299 = !DILocation(line: 169, column: 27, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5242, file: !2, line: 169, column: 6)
!5301 = !DILocation(line: 169, column: 6, scope: !5300)
!5302 = !DILocation(line: 169, column: 6, scope: !5242)
!5303 = !DILocation(line: 170, column: 29, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !2, line: 169, column: 35)
!5305 = !DILocation(line: 170, column: 37, scope: !5304)
!5306 = !DILocation(line: 170, column: 3, scope: !5304)
!5307 = !DILocation(line: 171, column: 7, scope: !5308)
!5308 = distinct !DILexicalBlock(scope: !5304, file: !2, line: 171, column: 7)
!5309 = !DILocation(line: 171, column: 15, scope: !5308)
!5310 = !DILocation(line: 171, column: 29, scope: !5308)
!5311 = !DILocation(line: 171, column: 7, scope: !5304)
!5312 = !DILocation(line: 172, column: 32, scope: !5308)
!5313 = !DILocation(line: 172, column: 4, scope: !5308)
!5314 = !DILocation(line: 173, column: 2, scope: !5304)
!5315 = !DILocation(line: 175, column: 16, scope: !5242)
!5316 = !DILocation(line: 175, column: 23, scope: !5242)
!5317 = !DILocation(line: 175, column: 2, scope: !5242)
!5318 = !DILocation(line: 177, column: 9, scope: !5242)
!5319 = !DILocation(line: 177, column: 2, scope: !5242)
!5320 = !DILocation(line: 178, column: 1, scope: !5242)
!5321 = !DISubprogram(name: "sprintf", scope: !5322, file: !5322, line: 10, type: !5323, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5322 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!18, !502, !24, null}
!5325 = !DISubprogram(name: "kstrtouint", scope: !5326, file: !5326, line: 71, type: !5327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5326 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!5327 = !DISubroutineType(types: !5328)
!5328 = !{!18, !24, !59, !83}
!5329 = !DISubprogram(name: "mutex_lock", scope: !185, file: !185, line: 227, type: !5330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5330 = !DISubroutineType(types: !5331)
!5331 = !{null, !5332}
!5332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!5333 = !DISubprogram(name: "input_device_enabled", scope: !21, file: !21, line: 515, type: !4855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5334 = !DISubprogram(name: "mutex_unlock", scope: !185, file: !185, line: 246, type: !5330, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5335 = distinct !DISubprogram(name: "input_dev_get_poll_max", scope: !2, file: !2, line: 183, type: !4621, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !5336)
!5336 = !{!5337, !5338, !5339, !5340, !5341}
!5337 = !DILocalVariable(name: "dev", arg: 1, scope: !5335, file: !2, line: 183, type: !4118)
!5338 = !DILocalVariable(name: "attr", arg: 2, scope: !5335, file: !2, line: 184, type: !4623)
!5339 = !DILocalVariable(name: "buf", arg: 3, scope: !5335, file: !2, line: 184, type: !502)
!5340 = !DILocalVariable(name: "input", scope: !5335, file: !2, line: 186, type: !19)
!5341 = !DILocalVariable(name: "__mptr", scope: !5342, file: !2, line: 186, type: !63)
!5342 = distinct !DILexicalBlock(scope: !5335, file: !2, line: 186, column: 28)
!5343 = !DILocation(line: 183, column: 54, scope: !5335)
!5344 = !DILocation(line: 184, column: 36, scope: !5335)
!5345 = !DILocation(line: 184, column: 48, scope: !5335)
!5346 = !DILocation(line: 186, column: 2, scope: !5335)
!5347 = !DILocation(line: 186, column: 20, scope: !5335)
!5348 = !DILocation(line: 186, column: 28, scope: !5342)
!5349 = !DILocation(line: 186, column: 28, scope: !5335)
!5350 = !DILocation(line: 188, column: 17, scope: !5335)
!5351 = !DILocation(line: 188, column: 30, scope: !5335)
!5352 = !DILocation(line: 188, column: 37, scope: !5335)
!5353 = !DILocation(line: 188, column: 45, scope: !5335)
!5354 = !DILocation(line: 188, column: 9, scope: !5335)
!5355 = !DILocation(line: 189, column: 1, scope: !5335)
!5356 = !DILocation(line: 188, column: 2, scope: !5335)
!5357 = distinct !DISubprogram(name: "input_dev_get_poll_min", scope: !2, file: !2, line: 193, type: !4621, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !4538, retainedNodes: !5358)
!5358 = !{!5359, !5360, !5361, !5362, !5363}
!5359 = !DILocalVariable(name: "dev", arg: 1, scope: !5357, file: !2, line: 193, type: !4118)
!5360 = !DILocalVariable(name: "attr", arg: 2, scope: !5357, file: !2, line: 194, type: !4623)
!5361 = !DILocalVariable(name: "buf", arg: 3, scope: !5357, file: !2, line: 194, type: !502)
!5362 = !DILocalVariable(name: "input", scope: !5357, file: !2, line: 196, type: !19)
!5363 = !DILocalVariable(name: "__mptr", scope: !5364, file: !2, line: 196, type: !63)
!5364 = distinct !DILexicalBlock(scope: !5357, file: !2, line: 196, column: 28)
!5365 = !DILocation(line: 193, column: 54, scope: !5357)
!5366 = !DILocation(line: 194, column: 35, scope: !5357)
!5367 = !DILocation(line: 194, column: 47, scope: !5357)
!5368 = !DILocation(line: 196, column: 2, scope: !5357)
!5369 = !DILocation(line: 196, column: 20, scope: !5357)
!5370 = !DILocation(line: 196, column: 28, scope: !5364)
!5371 = !DILocation(line: 196, column: 28, scope: !5357)
!5372 = !DILocation(line: 198, column: 17, scope: !5357)
!5373 = !DILocation(line: 198, column: 30, scope: !5357)
!5374 = !DILocation(line: 198, column: 37, scope: !5357)
!5375 = !DILocation(line: 198, column: 45, scope: !5357)
!5376 = !DILocation(line: 198, column: 9, scope: !5357)
!5377 = !DILocation(line: 199, column: 1, scope: !5357)
!5378 = !DILocation(line: 198, column: 2, scope: !5357)
