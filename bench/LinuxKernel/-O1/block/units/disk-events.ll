; ModuleID = 'block/disk-events.c'
source_filename = "block/disk-events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_disk_check_media_change: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad disk_check_media_change ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_disk_force_media_change: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad disk_force_media_change ; .previous"

%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.lock_class_key = type {}
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, %struct.bio_set, i32, i64, %struct.mutex, i32, ptr, %struct.kobject, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, ptr, i32, ptr, %struct.lockdep_map, i64, i32, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_list = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.lockdep_map = type {}
%struct.disk_events = type { %struct.list_head, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i64, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.block_device = type { i64, i64, ptr, ptr, ptr, i64, i8, i8, i8, i8, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, ptr, %struct.mutex, ptr, ptr, i8, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.block_device_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@system_freezable_power_efficient_wq = external dso_local global ptr, align 8
@__UNIQUE_ID___addressable_disk_check_media_change348 = internal global ptr @disk_check_media_change, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_disk_force_media_change349 = internal global ptr @disk_force_media_change, section ".discard.addressable", align 8, !dbg !5388
@.str = private unnamed_addr constant [7 x i8] c"events\00", align 1, !dbg !5390
@dev_attr_events = hidden global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @disk_events_show, ptr null }, align 8, !dbg !5393
@.str.1 = private unnamed_addr constant [13 x i8] c"events_async\00", align 1, !dbg !5407
@dev_attr_events_async = hidden global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @disk_events_async_show, ptr null }, align 8, !dbg !5412
@.str.2 = private unnamed_addr constant [18 x i8] c"events_poll_msecs\00", align 1, !dbg !5414
@dev_attr_events_poll_msecs = hidden global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420 }, ptr @disk_events_poll_msecs_show, ptr @disk_events_poll_msecs_store }, align 8, !dbg !5419
@__param_str_events_dfl_poll_msecs = internal constant [28 x i8] c"block.events_dfl_poll_msecs\00", align 16, !dbg !5488
@disk_events_dfl_poll_msecs_param_ops = internal constant %struct.kernel_param_ops { i32 0, ptr @disk_events_set_dfl_poll_msecs, ptr @param_get_ulong, ptr null }, align 8, !dbg !5493
@disk_events_dfl_poll_msecs = internal global i64 0, align 8, !dbg !5446
@__param_events_dfl_poll_msecs = internal constant %struct.kernel_param { ptr @__param_str_events_dfl_poll_msecs, ptr null, ptr @disk_events_dfl_poll_msecs_param_ops, i16 420, i8 -1, i8 0, %union.anon.13 { ptr @disk_events_dfl_poll_msecs } }, section "__param", align 8, !dbg !5421
@.str.3 = private unnamed_addr constant [35 x i8] c"\014%s: failed to initialize events\0A\00", align 1, !dbg !5423
@disk_alloc_events.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5428
@.str.4 = private unnamed_addr constant [17 x i8] c"&ev->block_mutex\00", align 1, !dbg !5436
@disk_alloc_events.__key.5 = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !5441
@disk_events_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @disk_events_mutex, i64 16), ptr getelementptr (i8, ptr @disk_events_mutex, i64 16) } }, align 8, !dbg !5497
@disk_events = internal global %struct.list_head { ptr @disk_events, ptr @disk_events }, align 8, !dbg !5499
@.str.6 = private unnamed_addr constant [20 x i8] c"block/disk-events.c\00", align 1, !dbg !5443
@disk_uevents = internal global [2 x ptr] [ptr @.str.7, ptr @.str.8], align 16, !dbg !5455
@.str.7 = private unnamed_addr constant [20 x i8] c"DISK_MEDIA_CHANGE=1\00", align 1, !dbg !5448
@.str.8 = private unnamed_addr constant [21 x i8] c"DISK_EJECT_REQUEST=1\00", align 1, !dbg !5450
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !5458
@.str.10 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !5461
@disk_events_strs = internal global [2 x ptr] [ptr @.str.13, ptr @.str.14], align 16, !dbg !5478
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !5466
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !5469
@.str.13 = private unnamed_addr constant [13 x i8] c"media_change\00", align 1, !dbg !5471
@.str.14 = private unnamed_addr constant [14 x i8] c"eject_request\00", align 1, !dbg !5473
@.str.15 = private unnamed_addr constant [4 x i8] c"-1\0A\00", align 1, !dbg !5481
@.str.16 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1, !dbg !5484
@.str.17 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1, !dbg !5486
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5495
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID___addressable_disk_check_media_change348, ptr @__UNIQUE_ID___addressable_disk_force_media_change349, ptr @__param_events_dfl_poll_msecs], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_block_events(ptr noundef %disk) #0 align 16 !dbg !5510 {
entry:
  %disk.addr = alloca ptr, align 8
  %ev = alloca ptr, align 8
  %flags = alloca i64, align 8
  %cancel = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5512, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !5513, metadata !DIExpression()), !dbg !5523
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5524
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !5525
  %1 = load ptr, ptr %ev1, align 8, !dbg !5525
  store ptr %1, ptr %ev, align 8, !dbg !5523
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5514, metadata !DIExpression()), !dbg !5527
  call void @llvm.lifetime.start.p0(i64 1, ptr %cancel) #16, !dbg !5528
  call void @llvm.dbg.declare(metadata ptr %cancel, metadata !5515, metadata !DIExpression()), !dbg !5529
  %2 = load ptr, ptr %ev, align 8, !dbg !5530
  %tobool = icmp ne ptr %2, null, !dbg !5530
  br i1 %tobool, label %if.end, label %if.then, !dbg !5532

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5533

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ev, align 8, !dbg !5534
  %block_mutex = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 3, !dbg !5535
  call void @mutex_lock(ptr noundef %block_mutex) #17, !dbg !5536
  br label %do.body, !dbg !5537

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !5538

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5516, metadata !DIExpression()), !dbg !5539
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5539
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5520, metadata !DIExpression()), !dbg !5539
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5539
  %conv = zext i1 %cmp to i32, !dbg !5539
  store i32 1, ptr %tmp, align 4, !dbg !5539
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5540
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5540
  %4 = load i32, ptr %tmp, align 4, !dbg !5539
  %5 = load ptr, ptr %ev, align 8, !dbg !5540
  %lock = getelementptr inbounds %struct.disk_events, ptr %5, i32 0, i32 2, !dbg !5540
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !5540
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !5540
  store i64 %call3, ptr %flags, align 8, !dbg !5540
  br label %do.cond, !dbg !5540

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5540

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5538

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5538

do.end5:                                          ; preds = %do.cond4
  %6 = load ptr, ptr %ev, align 8, !dbg !5541
  %block = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 4, !dbg !5542
  %7 = load i32, ptr %block, align 8, !dbg !5543
  %inc = add i32 %7, 1, !dbg !5543
  store i32 %inc, ptr %block, align 8, !dbg !5543
  %tobool6 = icmp ne i32 %7, 0, !dbg !5544
  %lnot = xor i1 %tobool6, true, !dbg !5544
  %frombool = zext i1 %lnot to i8, !dbg !5545
  store i8 %frombool, ptr %cancel, align 1, !dbg !5545
  %8 = load ptr, ptr %ev, align 8, !dbg !5546
  %lock7 = getelementptr inbounds %struct.disk_events, ptr %8, i32 0, i32 2, !dbg !5547
  %9 = load i64, ptr %flags, align 8, !dbg !5548
  call void @spin_unlock_irqrestore(ptr noundef %lock7, i64 noundef %9) #17, !dbg !5549
  %10 = load i8, ptr %cancel, align 1, !dbg !5550, !range !5552, !noundef !620
  %tobool8 = trunc i8 %10 to i1, !dbg !5550
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !5553

if.then9:                                         ; preds = %do.end5
  %11 = load ptr, ptr %disk.addr, align 8, !dbg !5554
  %ev10 = getelementptr inbounds %struct.gendisk, ptr %11, i32 0, i32 22, !dbg !5555
  %12 = load ptr, ptr %ev10, align 8, !dbg !5555
  %dwork = getelementptr inbounds %struct.disk_events, ptr %12, i32 0, i32 8, !dbg !5556
  %call11 = call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dwork) #17, !dbg !5557
  br label %if.end12, !dbg !5557

if.end12:                                         ; preds = %if.then9, %do.end5
  %13 = load ptr, ptr %ev, align 8, !dbg !5558
  %block_mutex13 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 3, !dbg !5559
  call void @mutex_unlock(ptr noundef %block_mutex13) #17, !dbg !5560
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5561
  br label %cleanup, !dbg !5561

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %cancel) #16, !dbg !5561
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5561
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !5561
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5561

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5562 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5566 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #4 align 16 !dbg !5571 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5576, metadata !DIExpression()), !dbg !5577
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5578
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5579
  ret ptr %1, !dbg !5580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #4 align 16 !dbg !5581 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5585, metadata !DIExpression()), !dbg !5591
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5586, metadata !DIExpression()), !dbg !5592
  br label %do.body, !dbg !5593

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5587, metadata !DIExpression()), !dbg !5594
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5594
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5590, metadata !DIExpression()), !dbg !5594
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5594
  %conv = zext i1 %cmp to i32, !dbg !5594
  store i32 1, ptr %tmp, align 4, !dbg !5594
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5595
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5595
  %0 = load i32, ptr %tmp, align 4, !dbg !5594
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !5595
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !5595
  %3 = load i64, ptr %flags.addr, align 8, !dbg !5595
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #17, !dbg !5595
  br label %do.end, !dbg !5595

do.end:                                           ; preds = %do.body
  ret void, !dbg !5596
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5597 dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5600 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_unblock_events(ptr noundef %disk) #0 align 16 !dbg !5601 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5603, metadata !DIExpression()), !dbg !5604
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5605
  %ev = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !5607
  %1 = load ptr, ptr %ev, align 8, !dbg !5607
  %tobool = icmp ne ptr %1, null, !dbg !5605
  br i1 %tobool, label %if.then, label %if.end, !dbg !5608

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !5609
  call void @__disk_unblock_events(ptr noundef %2, i1 noundef zeroext false) #17, !dbg !5610
  br label %if.end, !dbg !5610

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5611
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__disk_unblock_events(ptr noundef %disk, i1 noundef zeroext %check_now) #0 align 16 !dbg !5612 {
entry:
  %disk.addr = alloca ptr, align 8
  %check_now.addr = alloca i8, align 1
  %ev = alloca ptr, align 8
  %intv = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp27 = alloca i64, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5616, metadata !DIExpression()), !dbg !5633
  %frombool = zext i1 %check_now to i8
  store i8 %frombool, ptr %check_now.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %check_now.addr, metadata !5617, metadata !DIExpression()), !dbg !5634
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !5635
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !5618, metadata !DIExpression()), !dbg !5636
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5637
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !5638
  %1 = load ptr, ptr %ev1, align 8, !dbg !5638
  store ptr %1, ptr %ev, align 8, !dbg !5636
  call void @llvm.lifetime.start.p0(i64 8, ptr %intv) #16, !dbg !5639
  call void @llvm.dbg.declare(metadata ptr %intv, metadata !5619, metadata !DIExpression()), !dbg !5640
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #16, !dbg !5641
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5620, metadata !DIExpression()), !dbg !5642
  br label %do.body, !dbg !5643

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !5644

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #16, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !5621, metadata !DIExpression()), !dbg !5645
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #16, !dbg !5645
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !5625, metadata !DIExpression()), !dbg !5645
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !5645
  %conv = zext i1 %cmp to i32, !dbg !5645
  store i32 1, ptr %tmp, align 4, !dbg !5645
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #16, !dbg !5646
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #16, !dbg !5646
  %2 = load i32, ptr %tmp, align 4, !dbg !5645
  %3 = load ptr, ptr %ev, align 8, !dbg !5646
  %lock = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 2, !dbg !5646
  %call = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !5646
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #17, !dbg !5646
  store i64 %call3, ptr %flags, align 8, !dbg !5646
  br label %do.cond, !dbg !5646

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !5646

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !5644

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !5644

do.end5:                                          ; preds = %do.cond4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5647
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5626, metadata !DIExpression()), !dbg !5647
  %4 = load ptr, ptr %ev, align 8, !dbg !5647
  %block = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 4, !dbg !5647
  %5 = load i32, ptr %block, align 8, !dbg !5647
  %cmp6 = icmp sle i32 %5, 0, !dbg !5647
  %lnot = xor i1 %cmp6, true, !dbg !5647
  %lnot8 = xor i1 %lnot, true, !dbg !5647
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !5647
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5647
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5648
  %tobool = icmp ne i32 %6, 0, !dbg !5648
  %lnot9 = xor i1 %tobool, true, !dbg !5648
  %lnot11 = xor i1 %lnot9, true, !dbg !5648
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !5648
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !5648
  %expval = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !5648
  %tobool14 = icmp ne i64 %expval, 0, !dbg !5648
  br i1 %tobool14, label %if.then, label %if.end, !dbg !5647

if.then:                                          ; preds = %do.end5
  br label %do.body15, !dbg !5648

do.body15:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5649
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5629, metadata !DIExpression()), !dbg !5649
  store i32 2307, ptr %__flags, align 4, !dbg !5649
  br label %do.body16, !dbg !5649

do.body16:                                        ; preds = %do.body15
  br label %do.cond17, !dbg !5650

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !5650

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !5649

do.body19:                                        ; preds = %do.end18
  %7 = load i32, ptr %__flags, align 4, !dbg !5652
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 106, i32 %7, i64 12) #16, !dbg !5652, !srcloc !5654
  br label %do.cond20, !dbg !5652

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !5652

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5649

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !5655

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5655

do.end24:                                         ; preds = %do.cond23
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5648
  br label %do.cond25, !dbg !5649

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !5649

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !5649

if.end:                                           ; preds = %do.end26, %do.end5
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !5647
  %tobool28 = icmp ne i32 %8, 0, !dbg !5647
  %lnot29 = xor i1 %tobool28, true, !dbg !5647
  %lnot31 = xor i1 %lnot29, true, !dbg !5647
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !5647
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !5647
  %expval34 = call i64 @llvm.expect.i64(i64 %conv33, i64 0), !dbg !5647
  store i64 %expval34, ptr %tmp27, align 8, !dbg !5648
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5657
  %9 = load i64, ptr %tmp27, align 8, !dbg !5647
  %tobool35 = icmp ne i64 %9, 0, !dbg !5657
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !5658

if.then36:                                        ; preds = %if.end
  br label %out_unlock, !dbg !5659

if.end37:                                         ; preds = %if.end
  %10 = load ptr, ptr %ev, align 8, !dbg !5660
  %block38 = getelementptr inbounds %struct.disk_events, ptr %10, i32 0, i32 4, !dbg !5662
  %11 = load i32, ptr %block38, align 8, !dbg !5663
  %dec = add i32 %11, -1, !dbg !5663
  store i32 %dec, ptr %block38, align 8, !dbg !5663
  %tobool39 = icmp ne i32 %dec, 0, !dbg !5663
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !5664

if.then40:                                        ; preds = %if.end37
  br label %out_unlock, !dbg !5665

if.end41:                                         ; preds = %if.end37
  %12 = load ptr, ptr %disk.addr, align 8, !dbg !5666
  %call42 = call i64 @disk_events_poll_jiffies(ptr noundef %12) #17, !dbg !5667
  store i64 %call42, ptr %intv, align 8, !dbg !5668
  %13 = load i8, ptr %check_now.addr, align 1, !dbg !5669, !range !5552, !noundef !620
  %tobool43 = trunc i8 %13 to i1, !dbg !5669
  br i1 %tobool43, label %if.then44, label %if.else, !dbg !5671

if.then44:                                        ; preds = %if.end41
  %14 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !5672
  %15 = load ptr, ptr %ev, align 8, !dbg !5673
  %dwork = getelementptr inbounds %struct.disk_events, ptr %15, i32 0, i32 8, !dbg !5674
  %call45 = call zeroext i1 @queue_delayed_work(ptr noundef %14, ptr noundef %dwork, i64 noundef 0) #17, !dbg !5675
  br label %if.end51, !dbg !5675

if.else:                                          ; preds = %if.end41
  %16 = load i64, ptr %intv, align 8, !dbg !5676
  %tobool46 = icmp ne i64 %16, 0, !dbg !5676
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !5678

if.then47:                                        ; preds = %if.else
  %17 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !5679
  %18 = load ptr, ptr %ev, align 8, !dbg !5680
  %dwork48 = getelementptr inbounds %struct.disk_events, ptr %18, i32 0, i32 8, !dbg !5681
  %19 = load i64, ptr %intv, align 8, !dbg !5682
  %call49 = call zeroext i1 @queue_delayed_work(ptr noundef %17, ptr noundef %dwork48, i64 noundef %19) #17, !dbg !5683
  br label %if.end50, !dbg !5683

if.end50:                                         ; preds = %if.then47, %if.else
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then44
  br label %out_unlock, !dbg !5669

out_unlock:                                       ; preds = %if.end51, %if.then40, %if.then36
  call void @llvm.dbg.label(metadata !5632), !dbg !5684
  %20 = load ptr, ptr %ev, align 8, !dbg !5685
  %lock52 = getelementptr inbounds %struct.disk_events, ptr %20, i32 0, i32 2, !dbg !5686
  %21 = load i64, ptr %flags, align 8, !dbg !5687
  call void @spin_unlock_irqrestore(ptr noundef %lock52, i64 noundef %21) #17, !dbg !5688
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #16, !dbg !5689
  call void @llvm.lifetime.end.p0(i64 8, ptr %intv) #16, !dbg !5689
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !5689
  ret void, !dbg !5689
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_flush_events(ptr noundef %disk, i32 noundef %mask) #0 align 16 !dbg !5690 {
entry:
  %disk.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %ev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5694, metadata !DIExpression()), !dbg !5697
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5695, metadata !DIExpression()), !dbg !5698
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !5699
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !5696, metadata !DIExpression()), !dbg !5700
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5701
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !5702
  %1 = load ptr, ptr %ev1, align 8, !dbg !5702
  store ptr %1, ptr %ev, align 8, !dbg !5700
  %2 = load ptr, ptr %ev, align 8, !dbg !5703
  %tobool = icmp ne ptr %2, null, !dbg !5703
  br i1 %tobool, label %if.end, label %if.then, !dbg !5705

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5706

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %ev, align 8, !dbg !5707
  %lock = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 2, !dbg !5708
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !5709
  %4 = load i32, ptr %mask.addr, align 4, !dbg !5710
  %5 = load ptr, ptr %ev, align 8, !dbg !5711
  %clearing = getelementptr inbounds %struct.disk_events, ptr %5, i32 0, i32 6, !dbg !5712
  %6 = load i32, ptr %clearing, align 8, !dbg !5713
  %or = or i32 %6, %4, !dbg !5713
  store i32 %or, ptr %clearing, align 8, !dbg !5713
  %7 = load ptr, ptr %ev, align 8, !dbg !5714
  %block = getelementptr inbounds %struct.disk_events, ptr %7, i32 0, i32 4, !dbg !5716
  %8 = load i32, ptr %block, align 8, !dbg !5716
  %tobool2 = icmp ne i32 %8, 0, !dbg !5714
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5717

if.then3:                                         ; preds = %if.end
  %9 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !5718
  %10 = load ptr, ptr %ev, align 8, !dbg !5719
  %dwork = getelementptr inbounds %struct.disk_events, ptr %10, i32 0, i32 8, !dbg !5720
  %call = call zeroext i1 @mod_delayed_work(ptr noundef %9, ptr noundef %dwork, i64 noundef 0) #17, !dbg !5721
  br label %if.end4, !dbg !5721

if.end4:                                          ; preds = %if.then3, %if.end
  %11 = load ptr, ptr %ev, align 8, !dbg !5722
  %lock5 = getelementptr inbounds %struct.disk_events, ptr %11, i32 0, i32 2, !dbg !5723
  call void @spin_unlock_irq(ptr noundef %lock5) #17, !dbg !5724
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5725
  br label %cleanup, !dbg !5725

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !5725
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5725

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #4 align 16 !dbg !5726 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5730, metadata !DIExpression()), !dbg !5731
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5732
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5732
  call void @_raw_spin_lock_irq(ptr noundef %1) #17, !dbg !5732
  ret void, !dbg !5733
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @mod_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #5 align 16 !dbg !5734 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !5738, metadata !DIExpression()), !dbg !5741
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !5739, metadata !DIExpression()), !dbg !5742
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !5740, metadata !DIExpression()), !dbg !5743
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !5744
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !5745
  %2 = load i64, ptr %delay.addr, align 8, !dbg !5746
  %call = call zeroext i1 @mod_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #17, !dbg !5747
  ret i1 %call, !dbg !5748
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #4 align 16 !dbg !5749 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5751, metadata !DIExpression()), !dbg !5752
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5753
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5753
  call void @_raw_spin_unlock_irq(ptr noundef %1) #17, !dbg !5753
  ret void, !dbg !5754
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @disk_check_media_change(ptr noundef %disk) #0 align 16 !dbg !5755 {
entry:
  %retval = alloca i1, align 1
  %disk.addr = alloca ptr, align 8
  %events = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5759, metadata !DIExpression()), !dbg !5761
  call void @llvm.lifetime.start.p0(i64 4, ptr %events) #16, !dbg !5762
  call void @llvm.dbg.declare(metadata ptr %events, metadata !5760, metadata !DIExpression()), !dbg !5763
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5764
  %call = call i32 @disk_clear_events(ptr noundef %0, i32 noundef 3) #17, !dbg !5765
  store i32 %call, ptr %events, align 4, !dbg !5766
  %1 = load i32, ptr %events, align 4, !dbg !5767
  %and = and i32 %1, 1, !dbg !5769
  %tobool = icmp ne i32 %and, 0, !dbg !5769
  br i1 %tobool, label %if.end, label %if.then, !dbg !5770

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !5771
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5771

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !5772
  %part0 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 7, !dbg !5773
  %3 = load ptr, ptr %part0, align 8, !dbg !5773
  call void @bdev_mark_dead(ptr noundef %3, i1 noundef zeroext true) #17, !dbg !5774
  %4 = load ptr, ptr %disk.addr, align 8, !dbg !5775
  %state = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 13, !dbg !5776
  call void @set_bit(i64 noundef 0, ptr noundef %state) #17, !dbg !5777
  store i1 true, ptr %retval, align 1, !dbg !5778
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5778

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %events) #16, !dbg !5779
  %5 = load i1, ptr %retval, align 1, !dbg !5779
  ret i1 %5, !dbg !5779
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @disk_clear_events(ptr noundef %disk, i32 noundef %mask) #0 align 16 !dbg !5780 {
entry:
  %retval = alloca i32, align 4
  %disk.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %ev = alloca ptr, align 8
  %pending = alloca i32, align 4
  %clearing = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5782, metadata !DIExpression()), !dbg !5792
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !5783, metadata !DIExpression()), !dbg !5793
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !5794
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !5784, metadata !DIExpression()), !dbg !5795
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5796
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !5797
  %1 = load ptr, ptr %ev1, align 8, !dbg !5797
  store ptr %1, ptr %ev, align 8, !dbg !5795
  call void @llvm.lifetime.start.p0(i64 4, ptr %pending) #16, !dbg !5798
  call void @llvm.dbg.declare(metadata ptr %pending, metadata !5785, metadata !DIExpression()), !dbg !5799
  call void @llvm.lifetime.start.p0(i64 4, ptr %clearing) #16, !dbg !5800
  call void @llvm.dbg.declare(metadata ptr %clearing, metadata !5786, metadata !DIExpression()), !dbg !5801
  %2 = load i32, ptr %mask.addr, align 4, !dbg !5802
  store i32 %2, ptr %clearing, align 4, !dbg !5801
  %3 = load ptr, ptr %ev, align 8, !dbg !5803
  %tobool = icmp ne ptr %3, null, !dbg !5803
  br i1 %tobool, label %if.end, label %if.then, !dbg !5805

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5806

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %disk.addr, align 8, !dbg !5807
  call void @disk_block_events(ptr noundef %4) #17, !dbg !5808
  %5 = load ptr, ptr %ev, align 8, !dbg !5809
  %lock = getelementptr inbounds %struct.disk_events, ptr %5, i32 0, i32 2, !dbg !5810
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !5811
  %6 = load ptr, ptr %ev, align 8, !dbg !5812
  %clearing2 = getelementptr inbounds %struct.disk_events, ptr %6, i32 0, i32 6, !dbg !5813
  %7 = load i32, ptr %clearing2, align 8, !dbg !5813
  %8 = load i32, ptr %clearing, align 4, !dbg !5814
  %or = or i32 %8, %7, !dbg !5814
  store i32 %or, ptr %clearing, align 4, !dbg !5814
  %9 = load ptr, ptr %ev, align 8, !dbg !5815
  %clearing3 = getelementptr inbounds %struct.disk_events, ptr %9, i32 0, i32 6, !dbg !5816
  store i32 0, ptr %clearing3, align 8, !dbg !5817
  %10 = load ptr, ptr %ev, align 8, !dbg !5818
  %lock4 = getelementptr inbounds %struct.disk_events, ptr %10, i32 0, i32 2, !dbg !5819
  call void @spin_unlock_irq(ptr noundef %lock4) #17, !dbg !5820
  %11 = load ptr, ptr %ev, align 8, !dbg !5821
  call void @disk_check_events(ptr noundef %11, ptr noundef %clearing) #17, !dbg !5822
  %12 = load ptr, ptr %disk.addr, align 8, !dbg !5823
  %13 = load ptr, ptr %ev, align 8, !dbg !5824
  %clearing5 = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 6, !dbg !5825
  %14 = load i32, ptr %clearing5, align 8, !dbg !5825
  %tobool6 = icmp ne i32 %14, 0, !dbg !5824
  %15 = zext i1 %tobool6 to i64, !dbg !5824
  %cond = select i1 %tobool6, i32 1, i32 0, !dbg !5824
  %tobool7 = icmp ne i32 %cond, 0, !dbg !5824
  call void @__disk_unblock_events(ptr noundef %12, i1 noundef zeroext %tobool7) #17, !dbg !5826
  %16 = load ptr, ptr %ev, align 8, !dbg !5827
  %lock8 = getelementptr inbounds %struct.disk_events, ptr %16, i32 0, i32 2, !dbg !5828
  call void @spin_lock_irq(ptr noundef %lock8) #17, !dbg !5829
  %17 = load ptr, ptr %ev, align 8, !dbg !5830
  %pending9 = getelementptr inbounds %struct.disk_events, ptr %17, i32 0, i32 5, !dbg !5831
  %18 = load i32, ptr %pending9, align 4, !dbg !5831
  %19 = load i32, ptr %mask.addr, align 4, !dbg !5832
  %and = and i32 %18, %19, !dbg !5833
  store i32 %and, ptr %pending, align 4, !dbg !5834
  %20 = load i32, ptr %mask.addr, align 4, !dbg !5835
  %not = xor i32 %20, -1, !dbg !5836
  %21 = load ptr, ptr %ev, align 8, !dbg !5837
  %pending10 = getelementptr inbounds %struct.disk_events, ptr %21, i32 0, i32 5, !dbg !5838
  %22 = load i32, ptr %pending10, align 4, !dbg !5839
  %and11 = and i32 %22, %not, !dbg !5839
  store i32 %and11, ptr %pending10, align 4, !dbg !5839
  %23 = load ptr, ptr %ev, align 8, !dbg !5840
  %lock12 = getelementptr inbounds %struct.disk_events, ptr %23, i32 0, i32 2, !dbg !5841
  call void @spin_unlock_irq(ptr noundef %lock12) #17, !dbg !5842
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5843
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5787, metadata !DIExpression()), !dbg !5843
  %24 = load i32, ptr %clearing, align 4, !dbg !5843
  %25 = load i32, ptr %mask.addr, align 4, !dbg !5843
  %and13 = and i32 %24, %25, !dbg !5843
  %tobool14 = icmp ne i32 %and13, 0, !dbg !5843
  %lnot = xor i1 %tobool14, true, !dbg !5843
  %lnot15 = xor i1 %lnot, true, !dbg !5843
  %lnot.ext = zext i1 %lnot15 to i32, !dbg !5843
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5843
  %26 = load i32, ptr %__ret_warn_on, align 4, !dbg !5844
  %tobool16 = icmp ne i32 %26, 0, !dbg !5844
  %lnot17 = xor i1 %tobool16, true, !dbg !5844
  %lnot19 = xor i1 %lnot17, true, !dbg !5844
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !5844
  %conv = sext i32 %lnot.ext20 to i64, !dbg !5844
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5844
  %tobool21 = icmp ne i64 %expval, 0, !dbg !5844
  br i1 %tobool21, label %if.then22, label %if.end32, !dbg !5843

if.then22:                                        ; preds = %if.end
  br label %do.body, !dbg !5844

do.body:                                          ; preds = %if.then22
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !5845
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5789, metadata !DIExpression()), !dbg !5845
  store i32 2307, ptr %__flags, align 4, !dbg !5845
  br label %do.body23, !dbg !5845

do.body23:                                        ; preds = %do.body
  br label %do.cond, !dbg !5846

do.cond:                                          ; preds = %do.body23
  br label %do.end, !dbg !5846

do.end:                                           ; preds = %do.cond
  br label %do.body24, !dbg !5845

do.body24:                                        ; preds = %do.end
  %27 = load i32, ptr %__flags, align 4, !dbg !5848
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 260, i32 %27, i64 12) #16, !dbg !5848, !srcloc !5850
  br label %do.cond25, !dbg !5848

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !5848

do.end26:                                         ; preds = %do.cond25
  br label %do.body27, !dbg !5845

do.body27:                                        ; preds = %do.end26
  br label %do.cond28, !dbg !5851

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !5851

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !5844
  br label %do.cond30, !dbg !5845

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !5845

do.end31:                                         ; preds = %do.cond30
  br label %if.end32, !dbg !5845

if.end32:                                         ; preds = %do.end31, %if.end
  %28 = load i32, ptr %__ret_warn_on, align 4, !dbg !5843
  %tobool33 = icmp ne i32 %28, 0, !dbg !5843
  %lnot34 = xor i1 %tobool33, true, !dbg !5843
  %lnot36 = xor i1 %lnot34, true, !dbg !5843
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !5843
  %conv38 = sext i32 %lnot.ext37 to i64, !dbg !5843
  %expval39 = call i64 @llvm.expect.i64(i64 %conv38, i64 0), !dbg !5843
  store i64 %expval39, ptr %tmp, align 8, !dbg !5844
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !5853
  %29 = load i64, ptr %tmp, align 8, !dbg !5843
  %30 = load i32, ptr %pending, align 4, !dbg !5854
  store i32 %30, ptr %retval, align 4, !dbg !5855
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5855

cleanup:                                          ; preds = %if.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %clearing) #16, !dbg !5856
  call void @llvm.lifetime.end.p0(i64 4, ptr %pending) #16, !dbg !5856
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !5856
  %31 = load i32, ptr %retval, align 4, !dbg !5856
  ret i32 %31, !dbg !5856
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5857 dso_local void @bdev_mark_dead(ptr noundef, i1 noundef zeroext) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !5858 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !5865, metadata !DIExpression()), !dbg !5867
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5866, metadata !DIExpression()), !dbg !5868
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5869
  %1 = load i64, ptr %nr.addr, align 8, !dbg !5870
  %div = sdiv i64 %1, 64, !dbg !5870
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !5871
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #17, !dbg !5872
  %2 = load i64, ptr %nr.addr, align 8, !dbg !5873
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !5874
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #17, !dbg !5875
  ret void, !dbg !5876
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_force_media_change(ptr noundef %disk) #0 align 16 !dbg !5877 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5879, metadata !DIExpression()), !dbg !5880
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !5881
  call void @disk_event_uevent(ptr noundef %0, i32 noundef 1) #17, !dbg !5882
  %1 = load ptr, ptr %disk.addr, align 8, !dbg !5883
  call void @inc_diskseq(ptr noundef %1) #17, !dbg !5884
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !5885
  %part0 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 7, !dbg !5886
  %3 = load ptr, ptr %part0, align 8, !dbg !5886
  call void @bdev_mark_dead(ptr noundef %3, i1 noundef zeroext true) #17, !dbg !5887
  %4 = load ptr, ptr %disk.addr, align 8, !dbg !5888
  %state = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 13, !dbg !5889
  call void @set_bit(i64 noundef 0, ptr noundef %state) #17, !dbg !5890
  ret void, !dbg !5891
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disk_event_uevent(ptr noundef %disk, i32 noundef %events) #0 align 16 !dbg !5892 {
entry:
  %disk.addr = alloca ptr, align 8
  %events.addr = alloca i32, align 4
  %envp = alloca [3 x ptr], align 16
  %nr_events = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5894, metadata !DIExpression()), !dbg !5899
  store i32 %events, ptr %events.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %events.addr, metadata !5895, metadata !DIExpression()), !dbg !5900
  call void @llvm.lifetime.start.p0(i64 24, ptr %envp) #16, !dbg !5901
  call void @llvm.dbg.declare(metadata ptr %envp, metadata !5896, metadata !DIExpression()), !dbg !5902
  call void @llvm.memset.p0.i64(ptr align 16 %envp, i8 0, i64 24, i1 false), !dbg !5902
  call void @llvm.lifetime.start.p0(i64 4, ptr %nr_events) #16, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %nr_events, metadata !5897, metadata !DIExpression()), !dbg !5904
  store i32 0, ptr %nr_events, align 4, !dbg !5904
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !5903
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5898, metadata !DIExpression()), !dbg !5905
  store i32 0, ptr %i, align 4, !dbg !5906
  br label %for.cond, !dbg !5908

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5909
  %conv = sext i32 %0 to i64, !dbg !5909
  %cmp = icmp ult i64 %conv, 2, !dbg !5911
  br i1 %cmp, label %for.body, label %for.end, !dbg !5912

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %events.addr, align 4, !dbg !5913
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !5915
  %events2 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 4, !dbg !5916
  %3 = load i16, ptr %events2, align 4, !dbg !5916
  %conv3 = zext i16 %3 to i32, !dbg !5915
  %and = and i32 %1, %conv3, !dbg !5917
  %4 = load i32, ptr %i, align 4, !dbg !5918
  %shl = shl i32 1, %4, !dbg !5919
  %and4 = and i32 %and, %shl, !dbg !5920
  %tobool = icmp ne i32 %and4, 0, !dbg !5920
  br i1 %tobool, label %if.then, label %if.end, !dbg !5921

if.then:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !5922
  %idxprom = sext i32 %5 to i64, !dbg !5923
  %arrayidx = getelementptr [2 x ptr], ptr @disk_uevents, i64 0, i64 %idxprom, !dbg !5923
  %6 = load ptr, ptr %arrayidx, align 8, !dbg !5923
  %7 = load i32, ptr %nr_events, align 4, !dbg !5924
  %inc = add i32 %7, 1, !dbg !5924
  store i32 %inc, ptr %nr_events, align 4, !dbg !5924
  %idxprom5 = sext i32 %7 to i64, !dbg !5925
  %arrayidx6 = getelementptr [3 x ptr], ptr %envp, i64 0, i64 %idxprom5, !dbg !5925
  store ptr %6, ptr %arrayidx6, align 8, !dbg !5926
  br label %if.end, !dbg !5925

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5927

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4, !dbg !5928
  %inc7 = add i32 %8, 1, !dbg !5928
  store i32 %inc7, ptr %i, align 4, !dbg !5928
  br label %for.cond, !dbg !5929, !llvm.loop !5930

for.end:                                          ; preds = %for.cond
  %9 = load i32, ptr %nr_events, align 4, !dbg !5934
  %tobool8 = icmp ne i32 %9, 0, !dbg !5934
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !5936

if.then9:                                         ; preds = %for.end
  %10 = load ptr, ptr %disk.addr, align 8, !dbg !5937
  %part0 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 7, !dbg !5937
  %11 = load ptr, ptr %part0, align 8, !dbg !5937
  %bd_device = getelementptr inbounds %struct.block_device, ptr %11, i32 0, i32 25, !dbg !5937
  %kobj = getelementptr inbounds %struct.device, ptr %bd_device, i32 0, i32 0, !dbg !5938
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %envp, i64 0, i64 0, !dbg !5939
  %call = call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef 2, ptr noundef %arraydecay) #17, !dbg !5940
  br label %if.end10, !dbg !5940

if.end10:                                         ; preds = %if.then9, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !5941
  call void @llvm.lifetime.end.p0(i64 4, ptr %nr_events) #16, !dbg !5941
  call void @llvm.lifetime.end.p0(i64 24, ptr %envp) #16, !dbg !5941
  ret void, !dbg !5941
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5942 dso_local void @inc_diskseq(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @disk_events_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5943 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %disk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5945, metadata !DIExpression()), !dbg !5951
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5946, metadata !DIExpression()), !dbg !5952
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5947, metadata !DIExpression()), !dbg !5953
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #16, !dbg !5954
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !5948, metadata !DIExpression()), !dbg !5955
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5956
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5949, metadata !DIExpression()), !dbg !5956
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5956
  store ptr %0, ptr %__mptr, align 8, !dbg !5956
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5956
  %add.ptr = getelementptr i8, ptr %1, i64 -200, !dbg !5956
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5956
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5957
  %2 = load ptr, ptr %tmp, align 8, !dbg !5956
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 2, !dbg !5957
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !5957
  store ptr %3, ptr %disk, align 8, !dbg !5955
  %4 = load ptr, ptr %disk, align 8, !dbg !5958
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 5, !dbg !5960
  %5 = load i16, ptr %event_flags, align 2, !dbg !5960
  %conv = zext i16 %5 to i32, !dbg !5958
  %and = and i32 %conv, 2, !dbg !5961
  %tobool = icmp ne i32 %and, 0, !dbg !5961
  br i1 %tobool, label %if.end, label %if.then, !dbg !5962

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5963
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5963

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %disk, align 8, !dbg !5964
  %events = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 4, !dbg !5965
  %7 = load i16, ptr %events, align 4, !dbg !5965
  %conv1 = zext i16 %7 to i32, !dbg !5964
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !5966
  %call = call i64 @__disk_events_show(i32 noundef %conv1, ptr noundef %8) #17, !dbg !5967
  store i64 %call, ptr %retval, align 8, !dbg !5968
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5968

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #16, !dbg !5969
  %9 = load i64, ptr %retval, align 8, !dbg !5969
  ret i64 %9, !dbg !5969
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @disk_events_async_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5970 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5972, metadata !DIExpression()), !dbg !5975
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5973, metadata !DIExpression()), !dbg !5976
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5974, metadata !DIExpression()), !dbg !5977
  ret i64 0, !dbg !5978
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @disk_events_poll_msecs_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !5979 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %disk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5981, metadata !DIExpression()), !dbg !5987
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5982, metadata !DIExpression()), !dbg !5988
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5983, metadata !DIExpression()), !dbg !5989
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #16, !dbg !5990
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !5984, metadata !DIExpression()), !dbg !5991
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !5992
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5985, metadata !DIExpression()), !dbg !5992
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !5992
  store ptr %0, ptr %__mptr, align 8, !dbg !5992
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5992
  %add.ptr = getelementptr i8, ptr %1, i64 -200, !dbg !5992
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5992
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !5993
  %2 = load ptr, ptr %tmp, align 8, !dbg !5992
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 2, !dbg !5993
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !5993
  store ptr %3, ptr %disk, align 8, !dbg !5991
  %4 = load ptr, ptr %disk, align 8, !dbg !5994
  %ev = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 22, !dbg !5996
  %5 = load ptr, ptr %ev, align 8, !dbg !5996
  %tobool = icmp ne ptr %5, null, !dbg !5994
  br i1 %tobool, label %if.end, label %if.then, !dbg !5997

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5998
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.15) #17, !dbg !5999
  %conv = sext i32 %call to i64, !dbg !5999
  store i64 %conv, ptr %retval, align 8, !dbg !6000
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6000

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !6001
  %8 = load ptr, ptr %disk, align 8, !dbg !6002
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 22, !dbg !6003
  %9 = load ptr, ptr %ev1, align 8, !dbg !6003
  %poll_msecs = getelementptr inbounds %struct.disk_events, ptr %9, i32 0, i32 7, !dbg !6004
  %10 = load i64, ptr %poll_msecs, align 8, !dbg !6004
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %7, ptr noundef @.str.16, i64 noundef %10) #17, !dbg !6005
  %conv3 = sext i32 %call2 to i64, !dbg !6005
  store i64 %conv3, ptr %retval, align 8, !dbg !6006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6006

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #16, !dbg !6007
  %11 = load i64, ptr %retval, align 8, !dbg !6007
  ret i64 %11, !dbg !6007
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @disk_events_poll_msecs_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !6008 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %disk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %intv = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6010, metadata !DIExpression()), !dbg !6018
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6011, metadata !DIExpression()), !dbg !6019
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6012, metadata !DIExpression()), !dbg !6020
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !6013, metadata !DIExpression()), !dbg !6021
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #16, !dbg !6022
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !6014, metadata !DIExpression()), !dbg !6023
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6024
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6015, metadata !DIExpression()), !dbg !6024
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !6024
  store ptr %0, ptr %__mptr, align 8, !dbg !6024
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6024
  %add.ptr = getelementptr i8, ptr %1, i64 -200, !dbg !6024
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6024
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6025
  %2 = load ptr, ptr %tmp, align 8, !dbg !6024
  %bd_disk = getelementptr inbounds %struct.block_device, ptr %2, i32 0, i32 2, !dbg !6025
  %3 = load ptr, ptr %bd_disk, align 8, !dbg !6025
  store ptr %3, ptr %disk, align 8, !dbg !6023
  call void @llvm.lifetime.start.p0(i64 8, ptr %intv) #16, !dbg !6026
  call void @llvm.dbg.declare(metadata ptr %intv, metadata !6017, metadata !DIExpression()), !dbg !6027
  %4 = load i64, ptr %count.addr, align 8, !dbg !6028
  %tobool = icmp ne i64 %4, 0, !dbg !6028
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6030

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !6031
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %5, ptr noundef @.str.17, ptr noundef %intv) #17, !dbg !6032
  %tobool1 = icmp ne i32 %call, 0, !dbg !6032
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6033

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i64 -22, ptr %retval, align 8, !dbg !6034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6034

if.end:                                           ; preds = %lor.lhs.false
  %6 = load i64, ptr %intv, align 8, !dbg !6035
  %cmp = icmp slt i64 %6, 0, !dbg !6037
  br i1 %cmp, label %land.lhs.true, label %if.end4, !dbg !6038

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %intv, align 8, !dbg !6039
  %cmp2 = icmp ne i64 %7, -1, !dbg !6040
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !6041

if.then3:                                         ; preds = %land.lhs.true
  store i64 -22, ptr %retval, align 8, !dbg !6042
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6042

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %8 = load ptr, ptr %disk, align 8, !dbg !6043
  %ev = getelementptr inbounds %struct.gendisk, ptr %8, i32 0, i32 22, !dbg !6045
  %9 = load ptr, ptr %ev, align 8, !dbg !6045
  %tobool5 = icmp ne ptr %9, null, !dbg !6043
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6046

if.then6:                                         ; preds = %if.end4
  store i64 -19, ptr %retval, align 8, !dbg !6047
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6047

if.end7:                                          ; preds = %if.end4
  %10 = load ptr, ptr %disk, align 8, !dbg !6048
  call void @disk_block_events(ptr noundef %10) #17, !dbg !6049
  %11 = load i64, ptr %intv, align 8, !dbg !6050
  %12 = load ptr, ptr %disk, align 8, !dbg !6051
  %ev8 = getelementptr inbounds %struct.gendisk, ptr %12, i32 0, i32 22, !dbg !6052
  %13 = load ptr, ptr %ev8, align 8, !dbg !6052
  %poll_msecs = getelementptr inbounds %struct.disk_events, ptr %13, i32 0, i32 7, !dbg !6053
  store i64 %11, ptr %poll_msecs, align 8, !dbg !6054
  %14 = load ptr, ptr %disk, align 8, !dbg !6055
  call void @__disk_unblock_events(ptr noundef %14, i1 noundef zeroext true) #17, !dbg !6056
  %15 = load i64, ptr %count.addr, align 8, !dbg !6057
  store i64 %15, ptr %retval, align 8, !dbg !6058
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6058

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %intv) #16, !dbg !6059
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #16, !dbg !6059
  %16 = load i64, ptr %retval, align 8, !dbg !6059
  ret i64 %16, !dbg !6059
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @disk_alloc_events(ptr noundef %disk) #0 align 16 !dbg !5430 {
entry:
  %retval = alloca i32, align 4
  %disk.addr = alloca ptr, align 8
  %ev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %.compoundliteral20 = alloca %struct.atomic64_t, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !5434, metadata !DIExpression()), !dbg !6060
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !6061
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !5435, metadata !DIExpression()), !dbg !6062
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6063
  %fops = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 8, !dbg !6065
  %1 = load ptr, ptr %fops, align 8, !dbg !6065
  %check_events = getelementptr inbounds %struct.block_device_operations, ptr %1, i32 0, i32 6, !dbg !6066
  %2 = load ptr, ptr %check_events, align 8, !dbg !6066
  %tobool = icmp ne ptr %2, null, !dbg !6063
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !6067

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %disk.addr, align 8, !dbg !6068
  %events = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 4, !dbg !6069
  %4 = load i16, ptr %events, align 4, !dbg !6069
  %tobool1 = icmp ne i16 %4, 0, !dbg !6068
  br i1 %tobool1, label %if.end, label %if.then, !dbg !6070

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !6071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6071

if.end:                                           ; preds = %lor.lhs.false
  %call = call noalias ptr @kzalloc(i64 noundef 176, i32 noundef 3264) #18, !dbg !6072
  store ptr %call, ptr %ev, align 8, !dbg !6073
  %5 = load ptr, ptr %ev, align 8, !dbg !6074
  %tobool2 = icmp ne ptr %5, null, !dbg !6074
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !6076

if.then3:                                         ; preds = %if.end
  br label %do.body, !dbg !6077

do.body:                                          ; preds = %if.then3
  br label %do.cond, !dbg !6080

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !6080

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %disk.addr, align 8, !dbg !6077
  %disk_name = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 3, !dbg !6077
  %arraydecay = getelementptr inbounds [32 x i8], ptr %disk_name, i64 0, i64 0, !dbg !6077
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %arraydecay) #19, !dbg !6077
  store i32 %call4, ptr %tmp, align 4, !dbg !6080
  %7 = load i32, ptr %tmp, align 4, !dbg !6077
  store i32 -12, ptr %retval, align 4, !dbg !6082
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6082

if.end5:                                          ; preds = %if.end
  %8 = load ptr, ptr %ev, align 8, !dbg !6083
  %node = getelementptr inbounds %struct.disk_events, ptr %8, i32 0, i32 0, !dbg !6084
  call void @INIT_LIST_HEAD(ptr noundef %node) #17, !dbg !6085
  %9 = load ptr, ptr %disk.addr, align 8, !dbg !6086
  %10 = load ptr, ptr %ev, align 8, !dbg !6087
  %disk6 = getelementptr inbounds %struct.disk_events, ptr %10, i32 0, i32 1, !dbg !6088
  store ptr %9, ptr %disk6, align 8, !dbg !6089
  br label %do.body7, !dbg !6090

do.body7:                                         ; preds = %if.end5
  %11 = load ptr, ptr %ev, align 8, !dbg !6091
  %lock = getelementptr inbounds %struct.disk_events, ptr %11, i32 0, i32 2, !dbg !6091
  %call8 = call ptr @spinlock_check(ptr noundef %lock) #17, !dbg !6091
  %12 = load ptr, ptr %ev, align 8, !dbg !6091
  %lock9 = getelementptr inbounds %struct.disk_events, ptr %12, i32 0, i32 2, !dbg !6091
  %13 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !6091
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %13, i32 0, i32 0, !dbg !6091
  %14 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !6091
  %counter = getelementptr inbounds %struct.atomic_t, ptr %14, i32 0, i32 0, !dbg !6091
  store i32 0, ptr %counter, align 4, !dbg !6091
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %lock9, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !6091
  br label %do.cond10, !dbg !6091

do.cond10:                                        ; preds = %do.body7
  br label %do.end11, !dbg !6091

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !6093

do.body12:                                        ; preds = %do.end11
  %15 = load ptr, ptr %ev, align 8, !dbg !6094
  %block_mutex = getelementptr inbounds %struct.disk_events, ptr %15, i32 0, i32 3, !dbg !6094
  call void @__mutex_init(ptr noundef %block_mutex, ptr noundef @.str.4, ptr noundef @disk_alloc_events.__key) #17, !dbg !6094
  br label %do.cond13, !dbg !6094

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6094

do.end14:                                         ; preds = %do.cond13
  %16 = load ptr, ptr %ev, align 8, !dbg !6096
  %block = getelementptr inbounds %struct.disk_events, ptr %16, i32 0, i32 4, !dbg !6097
  store i32 1, ptr %block, align 8, !dbg !6098
  %17 = load ptr, ptr %ev, align 8, !dbg !6099
  %poll_msecs = getelementptr inbounds %struct.disk_events, ptr %17, i32 0, i32 7, !dbg !6100
  store i64 -1, ptr %poll_msecs, align 8, !dbg !6101
  br label %do.body15, !dbg !6102

do.body15:                                        ; preds = %do.end14
  br label %do.body16, !dbg !6103

do.body16:                                        ; preds = %do.body15
  br label %do.body17, !dbg !6105

do.body17:                                        ; preds = %do.body16
  %18 = load ptr, ptr %ev, align 8, !dbg !6107
  %dwork = getelementptr inbounds %struct.disk_events, ptr %18, i32 0, i32 8, !dbg !6107
  %work = getelementptr inbounds %struct.delayed_work, ptr %dwork, i32 0, i32 0, !dbg !6107
  call void @__init_work(ptr noundef %work, i32 noundef 0) #17, !dbg !6107
  %19 = load ptr, ptr %ev, align 8, !dbg !6107
  %dwork18 = getelementptr inbounds %struct.disk_events, ptr %19, i32 0, i32 8, !dbg !6107
  %work19 = getelementptr inbounds %struct.delayed_work, ptr %dwork18, i32 0, i32 0, !dbg !6107
  %data = getelementptr inbounds %struct.work_struct, ptr %work19, i32 0, i32 0, !dbg !6107
  %counter21 = getelementptr inbounds %struct.atomic64_t, ptr %.compoundliteral20, i32 0, i32 0, !dbg !6107
  store i64 68719476704, ptr %counter21, align 8, !dbg !6107
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %data, ptr align 8 %.compoundliteral20, i64 8, i1 false), !dbg !6107
  %20 = load ptr, ptr %ev, align 8, !dbg !6107
  %dwork22 = getelementptr inbounds %struct.disk_events, ptr %20, i32 0, i32 8, !dbg !6107
  %work23 = getelementptr inbounds %struct.delayed_work, ptr %dwork22, i32 0, i32 0, !dbg !6107
  %entry24 = getelementptr inbounds %struct.work_struct, ptr %work23, i32 0, i32 1, !dbg !6107
  call void @INIT_LIST_HEAD(ptr noundef %entry24) #17, !dbg !6107
  %21 = load ptr, ptr %ev, align 8, !dbg !6107
  %dwork25 = getelementptr inbounds %struct.disk_events, ptr %21, i32 0, i32 8, !dbg !6107
  %work26 = getelementptr inbounds %struct.delayed_work, ptr %dwork25, i32 0, i32 0, !dbg !6107
  %func = getelementptr inbounds %struct.work_struct, ptr %work26, i32 0, i32 2, !dbg !6107
  store ptr @disk_events_workfn, ptr %func, align 8, !dbg !6107
  br label %do.cond27, !dbg !6107

do.cond27:                                        ; preds = %do.body17
  br label %do.end28, !dbg !6107

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !6105

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !6105

do.end30:                                         ; preds = %do.cond29
  %22 = load ptr, ptr %ev, align 8, !dbg !6103
  %dwork31 = getelementptr inbounds %struct.disk_events, ptr %22, i32 0, i32 8, !dbg !6103
  %timer = getelementptr inbounds %struct.delayed_work, ptr %dwork31, i32 0, i32 1, !dbg !6103
  call void @init_timer_key(ptr noundef %timer, ptr noundef @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #17, !dbg !6103
  br label %do.cond32, !dbg !6103

do.cond32:                                        ; preds = %do.end30
  br label %do.end33, !dbg !6103

do.end33:                                         ; preds = %do.cond32
  %23 = load ptr, ptr %ev, align 8, !dbg !6109
  %24 = load ptr, ptr %disk.addr, align 8, !dbg !6110
  %ev34 = getelementptr inbounds %struct.gendisk, ptr %24, i32 0, i32 22, !dbg !6111
  store ptr %23, ptr %ev34, align 8, !dbg !6112
  store i32 0, ptr %retval, align 4, !dbg !6113
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6113

cleanup:                                          ; preds = %do.end33, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !6114
  %25 = load i32, ptr %retval, align 4, !dbg !6114
  ret i32 %25, !dbg !6114
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !6115 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6119, metadata !DIExpression()), !dbg !6121
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6120, metadata !DIExpression()), !dbg !6122
  %0 = load i64, ptr %size.addr, align 8, !dbg !6123
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6124
  %or = or i32 %1, 256, !dbg !6125
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !6126
  ret ptr %call, !dbg !6127
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !6128 dso_local i32 @_printk(ptr noundef, ...) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !6132 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !6137, metadata !DIExpression()), !dbg !6138
  br label %do.body, !dbg !6139

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !6140

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !6142

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !6140

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !6144
  %1 = load ptr, ptr %list.addr, align 8, !dbg !6144
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6144
  store volatile ptr %0, ptr %next, align 8, !dbg !6144
  br label %do.end3, !dbg !6144

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !6140

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !6146

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !6147

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !6149

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !6147

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !6151
  %3 = load ptr, ptr %list.addr, align 8, !dbg !6151
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !6151
  store volatile ptr %2, ptr %prev, align 8, !dbg !6151
  br label %do.end9, !dbg !6151

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !6147

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !6153
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6154 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__init_work(ptr noundef %work, i32 noundef %onstack) #5 align 16 !dbg !6158 {
entry:
  %work.addr = alloca ptr, align 8
  %onstack.addr = alloca i32, align 4
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6162, metadata !DIExpression()), !dbg !6164
  store i32 %onstack, ptr %onstack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %onstack.addr, metadata !6163, metadata !DIExpression()), !dbg !6165
  ret void, !dbg !6166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disk_events_workfn(ptr noundef %work) #0 align 16 !dbg !6167 {
entry:
  %work.addr = alloca ptr, align 8
  %dwork = alloca ptr, align 8
  %ev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6169, metadata !DIExpression()), !dbg !6174
  call void @llvm.lifetime.start.p0(i64 8, ptr %dwork) #16, !dbg !6175
  call void @llvm.dbg.declare(metadata ptr %dwork, metadata !6170, metadata !DIExpression()), !dbg !6176
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6177
  %call = call ptr @to_delayed_work(ptr noundef %0) #17, !dbg !6178
  store ptr %call, ptr %dwork, align 8, !dbg !6176
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !6179
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !6171, metadata !DIExpression()), !dbg !6180
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6181
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6172, metadata !DIExpression()), !dbg !6181
  %1 = load ptr, ptr %dwork, align 8, !dbg !6181
  store ptr %1, ptr %__mptr, align 8, !dbg !6181
  %2 = load ptr, ptr %__mptr, align 8, !dbg !6181
  %add.ptr = getelementptr i8, ptr %2, i64 -88, !dbg !6181
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6181
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6182
  %3 = load ptr, ptr %tmp, align 8, !dbg !6181
  store ptr %3, ptr %ev, align 8, !dbg !6180
  %4 = load ptr, ptr %ev, align 8, !dbg !6183
  %5 = load ptr, ptr %ev, align 8, !dbg !6184
  %clearing = getelementptr inbounds %struct.disk_events, ptr %5, i32 0, i32 6, !dbg !6185
  call void @disk_check_events(ptr noundef %4, ptr noundef %clearing) #17, !dbg !6186
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !6187
  call void @llvm.lifetime.end.p0(i64 8, ptr %dwork) #16, !dbg !6187
  ret void, !dbg !6187
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6188 dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_add_events(ptr noundef %disk) #0 align 16 !dbg !6191 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6193, metadata !DIExpression()), !dbg !6194
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6195
  %ev = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !6197
  %1 = load ptr, ptr %ev, align 8, !dbg !6197
  %tobool = icmp ne ptr %1, null, !dbg !6195
  br i1 %tobool, label %if.end, label %if.then, !dbg !6198

if.then:                                          ; preds = %entry
  br label %return, !dbg !6199

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @disk_events_mutex) #17, !dbg !6200
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !6201
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 22, !dbg !6202
  %3 = load ptr, ptr %ev1, align 8, !dbg !6202
  %node = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 0, !dbg !6203
  call void @list_add_tail(ptr noundef %node, ptr noundef @disk_events) #17, !dbg !6204
  call void @mutex_unlock(ptr noundef @disk_events_mutex) #17, !dbg !6205
  %4 = load ptr, ptr %disk.addr, align 8, !dbg !6206
  call void @__disk_unblock_events(ptr noundef %4, i1 noundef zeroext true) #17, !dbg !6207
  br label %return, !dbg !6208

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6208
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !6209 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6213, metadata !DIExpression()), !dbg !6215
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6214, metadata !DIExpression()), !dbg !6216
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6217
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6218
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6219
  %2 = load ptr, ptr %prev, align 8, !dbg !6219
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6220
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #17, !dbg !6221
  ret void, !dbg !6222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_del_events(ptr noundef %disk) #0 align 16 !dbg !6223 {
entry:
  %disk.addr = alloca ptr, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6225, metadata !DIExpression()), !dbg !6226
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6227
  %ev = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !6229
  %1 = load ptr, ptr %ev, align 8, !dbg !6229
  %tobool = icmp ne ptr %1, null, !dbg !6227
  br i1 %tobool, label %if.then, label %if.end, !dbg !6230

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !6231
  call void @disk_block_events(ptr noundef %2) #17, !dbg !6233
  call void @mutex_lock(ptr noundef @disk_events_mutex) #17, !dbg !6234
  %3 = load ptr, ptr %disk.addr, align 8, !dbg !6235
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 22, !dbg !6236
  %4 = load ptr, ptr %ev1, align 8, !dbg !6236
  %node = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 0, !dbg !6237
  call void @list_del_init(ptr noundef %node) #17, !dbg !6238
  call void @mutex_unlock(ptr noundef @disk_events_mutex) #17, !dbg !6239
  br label %if.end, !dbg !6240

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6241
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_init(ptr noundef %entry1) #5 align 16 !dbg !6242 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6244, metadata !DIExpression()), !dbg !6245
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6246
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !6247
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6248
  call void @INIT_LIST_HEAD(ptr noundef %1) #17, !dbg !6249
  ret void, !dbg !6250
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @disk_release_events(ptr noundef %disk) #0 align 16 !dbg !6251 {
entry:
  %disk.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6253, metadata !DIExpression()), !dbg !6259
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6260
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6254, metadata !DIExpression()), !dbg !6260
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6260
  %ev = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !6260
  %1 = load ptr, ptr %ev, align 8, !dbg !6260
  %tobool = icmp ne ptr %1, null, !dbg !6260
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !6260

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr %disk.addr, align 8, !dbg !6260
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %2, i32 0, i32 22, !dbg !6260
  %3 = load ptr, ptr %ev1, align 8, !dbg !6260
  %block = getelementptr inbounds %struct.disk_events, ptr %3, i32 0, i32 4, !dbg !6260
  %4 = load i32, ptr %block, align 8, !dbg !6260
  %cmp = icmp ne i32 %4, 1, !dbg !6260
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !6261
  %lnot = xor i1 %5, true, !dbg !6260
  %lnot2 = xor i1 %lnot, true, !dbg !6260
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6260
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6260
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6262
  %tobool3 = icmp ne i32 %6, 0, !dbg !6262
  %lnot4 = xor i1 %tobool3, true, !dbg !6262
  %lnot6 = xor i1 %lnot4, true, !dbg !6262
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !6262
  %conv = sext i32 %lnot.ext7 to i64, !dbg !6262
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6262
  %tobool8 = icmp ne i64 %expval, 0, !dbg !6262
  br i1 %tobool8, label %if.then, label %if.end, !dbg !6260

if.then:                                          ; preds = %land.end
  br label %do.body, !dbg !6262

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #16, !dbg !6263
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6256, metadata !DIExpression()), !dbg !6263
  store i32 2307, ptr %__flags, align 4, !dbg !6263
  br label %do.body9, !dbg !6263

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !6264

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !6264

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !6263

do.body10:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !6266
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.6, i32 491, i32 %7, i64 12) #16, !dbg !6266, !srcloc !6268
  br label %do.cond11, !dbg !6266

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !6266

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !6263

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !6269

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6269

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #16, !dbg !6262
  br label %do.cond16, !dbg !6263

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !6263

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !6263

if.end:                                           ; preds = %do.end17, %land.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6260
  %tobool18 = icmp ne i32 %8, 0, !dbg !6260
  %lnot19 = xor i1 %tobool18, true, !dbg !6260
  %lnot21 = xor i1 %lnot19, true, !dbg !6260
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !6260
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !6260
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !6260
  store i64 %expval24, ptr %tmp, align 8, !dbg !6262
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #16, !dbg !6271
  %9 = load i64, ptr %tmp, align 8, !dbg !6260
  %10 = load ptr, ptr %disk.addr, align 8, !dbg !6272
  %ev25 = getelementptr inbounds %struct.gendisk, ptr %10, i32 0, i32 22, !dbg !6273
  %11 = load ptr, ptr %ev25, align 8, !dbg !6273
  call void @kfree(ptr noundef %11) #17, !dbg !6274
  ret void, !dbg !6275
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6276 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6279 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @disk_events_poll_jiffies(ptr noundef %disk) #0 align 16 !dbg !6282 {
entry:
  %disk.addr = alloca ptr, align 8
  %ev = alloca ptr, align 8
  %intv_msecs = alloca i64, align 8
  store ptr %disk, ptr %disk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %disk.addr, metadata !6286, metadata !DIExpression()), !dbg !6289
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !6290
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !6287, metadata !DIExpression()), !dbg !6291
  %0 = load ptr, ptr %disk.addr, align 8, !dbg !6292
  %ev1 = getelementptr inbounds %struct.gendisk, ptr %0, i32 0, i32 22, !dbg !6293
  %1 = load ptr, ptr %ev1, align 8, !dbg !6293
  store ptr %1, ptr %ev, align 8, !dbg !6291
  call void @llvm.lifetime.start.p0(i64 8, ptr %intv_msecs) #16, !dbg !6294
  call void @llvm.dbg.declare(metadata ptr %intv_msecs, metadata !6288, metadata !DIExpression()), !dbg !6295
  store i64 0, ptr %intv_msecs, align 8, !dbg !6295
  %2 = load ptr, ptr %ev, align 8, !dbg !6296
  %poll_msecs = getelementptr inbounds %struct.disk_events, ptr %2, i32 0, i32 7, !dbg !6298
  %3 = load i64, ptr %poll_msecs, align 8, !dbg !6298
  %cmp = icmp sge i64 %3, 0, !dbg !6299
  br i1 %cmp, label %if.then, label %if.else, !dbg !6300

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %ev, align 8, !dbg !6301
  %poll_msecs2 = getelementptr inbounds %struct.disk_events, ptr %4, i32 0, i32 7, !dbg !6302
  %5 = load i64, ptr %poll_msecs2, align 8, !dbg !6302
  store i64 %5, ptr %intv_msecs, align 8, !dbg !6303
  br label %if.end4, !dbg !6304

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %disk.addr, align 8, !dbg !6305
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 5, !dbg !6307
  %7 = load i16, ptr %event_flags, align 2, !dbg !6307
  %conv = zext i16 %7 to i32, !dbg !6305
  %and = and i32 %conv, 1, !dbg !6308
  %tobool = icmp ne i32 %and, 0, !dbg !6308
  br i1 %tobool, label %if.then3, label %if.end, !dbg !6309

if.then3:                                         ; preds = %if.else
  %8 = load i64, ptr @disk_events_dfl_poll_msecs, align 8, !dbg !6310
  store i64 %8, ptr %intv_msecs, align 8, !dbg !6311
  br label %if.end, !dbg !6312

if.end:                                           ; preds = %if.then3, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %9 = load i64, ptr %intv_msecs, align 8, !dbg !6313
  %conv5 = trunc i64 %9 to i32, !dbg !6313
  %call = call i64 @msecs_to_jiffies(i32 noundef %conv5) #17, !dbg !6314
  call void @llvm.lifetime.end.p0(i64 8, ptr %intv_msecs) #16, !dbg !6315
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !6315
  ret i64 %call, !dbg !6316
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @queue_delayed_work(ptr noundef %wq, ptr noundef %dwork, i64 noundef %delay) #5 align 16 !dbg !6317 {
entry:
  %wq.addr = alloca ptr, align 8
  %dwork.addr = alloca ptr, align 8
  %delay.addr = alloca i64, align 8
  store ptr %wq, ptr %wq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %wq.addr, metadata !6319, metadata !DIExpression()), !dbg !6322
  store ptr %dwork, ptr %dwork.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dwork.addr, metadata !6320, metadata !DIExpression()), !dbg !6323
  store i64 %delay, ptr %delay.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %delay.addr, metadata !6321, metadata !DIExpression()), !dbg !6324
  %0 = load ptr, ptr %wq.addr, align 8, !dbg !6325
  %1 = load ptr, ptr %dwork.addr, align 8, !dbg !6326
  %2 = load i64, ptr %delay.addr, align 8, !dbg !6327
  %call = call zeroext i1 @queue_delayed_work_on(i32 noundef 64, ptr noundef %0, ptr noundef %1, i64 noundef %2) #17, !dbg !6328
  ret i1 %call, !dbg !6329
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @msecs_to_jiffies(i32 noundef %m) #4 align 16 !dbg !6330 {
entry:
  %retval = alloca i64, align 8
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6335, metadata !DIExpression()), !dbg !6336
  %0 = load i32, ptr %m.addr, align 4, !dbg !6337
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !6339
  br i1 %1, label %if.then, label %if.else, !dbg !6340

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %m.addr, align 4, !dbg !6341
  %cmp = icmp slt i32 %2, 0, !dbg !6344
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6345

if.then1:                                         ; preds = %if.then
  store i64 4611686018427387902, ptr %retval, align 8, !dbg !6346
  br label %return, !dbg !6346

if.end:                                           ; preds = %if.then
  %3 = load i32, ptr %m.addr, align 4, !dbg !6347
  %call = call i64 @_msecs_to_jiffies(i32 noundef %3) #17, !dbg !6348
  store i64 %call, ptr %retval, align 8, !dbg !6349
  br label %return, !dbg !6349

if.else:                                          ; preds = %entry
  %4 = load i32, ptr %m.addr, align 4, !dbg !6350
  %call2 = call i64 @__msecs_to_jiffies(i32 noundef %4) #17, !dbg !6352
  store i64 %call2, ptr %retval, align 8, !dbg !6353
  br label %return, !dbg !6353

return:                                           ; preds = %if.else, %if.end, %if.then1
  %5 = load i64, ptr %retval, align 8, !dbg !6354
  ret i64 %5, !dbg !6354
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @_msecs_to_jiffies(i32 noundef %m) #5 align 16 !dbg !6355 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !6357, metadata !DIExpression()), !dbg !6358
  %0 = load i32, ptr %m.addr, align 4, !dbg !6359
  %conv = zext i32 %0 to i64, !dbg !6359
  %add = add i64 %conv, 1, !dbg !6360
  %sub = sub i64 %add, 1, !dbg !6361
  %div = sdiv i64 %sub, 1, !dbg !6362
  ret i64 %div, !dbg !6363
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6364 dso_local i64 @__msecs_to_jiffies(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6365 dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6368 dso_local void @_raw_spin_lock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6371 dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6372 dso_local void @_raw_spin_unlock_irq(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @disk_check_events(ptr noundef %ev, ptr noundef %clearing_ptr) #0 align 16 !dbg !6373 {
entry:
  %ev.addr = alloca ptr, align 8
  %clearing_ptr.addr = alloca ptr, align 8
  %disk = alloca ptr, align 8
  %clearing = alloca i32, align 4
  %events = alloca i32, align 4
  %intv = alloca i64, align 8
  store ptr %ev, ptr %ev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ev.addr, metadata !6377, metadata !DIExpression()), !dbg !6383
  store ptr %clearing_ptr, ptr %clearing_ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clearing_ptr.addr, metadata !6378, metadata !DIExpression()), !dbg !6384
  call void @llvm.lifetime.start.p0(i64 8, ptr %disk) #16, !dbg !6385
  call void @llvm.dbg.declare(metadata ptr %disk, metadata !6379, metadata !DIExpression()), !dbg !6386
  %0 = load ptr, ptr %ev.addr, align 8, !dbg !6387
  %disk1 = getelementptr inbounds %struct.disk_events, ptr %0, i32 0, i32 1, !dbg !6388
  %1 = load ptr, ptr %disk1, align 8, !dbg !6388
  store ptr %1, ptr %disk, align 8, !dbg !6386
  call void @llvm.lifetime.start.p0(i64 4, ptr %clearing) #16, !dbg !6389
  call void @llvm.dbg.declare(metadata ptr %clearing, metadata !6380, metadata !DIExpression()), !dbg !6390
  %2 = load ptr, ptr %clearing_ptr.addr, align 8, !dbg !6391
  %3 = load i32, ptr %2, align 4, !dbg !6392
  store i32 %3, ptr %clearing, align 4, !dbg !6390
  call void @llvm.lifetime.start.p0(i64 4, ptr %events) #16, !dbg !6393
  call void @llvm.dbg.declare(metadata ptr %events, metadata !6381, metadata !DIExpression()), !dbg !6394
  call void @llvm.lifetime.start.p0(i64 8, ptr %intv) #16, !dbg !6395
  call void @llvm.dbg.declare(metadata ptr %intv, metadata !6382, metadata !DIExpression()), !dbg !6396
  %4 = load ptr, ptr %disk, align 8, !dbg !6397
  %fops = getelementptr inbounds %struct.gendisk, ptr %4, i32 0, i32 8, !dbg !6398
  %5 = load ptr, ptr %fops, align 8, !dbg !6398
  %check_events = getelementptr inbounds %struct.block_device_operations, ptr %5, i32 0, i32 6, !dbg !6399
  %6 = load ptr, ptr %check_events, align 8, !dbg !6399
  %7 = load ptr, ptr %disk, align 8, !dbg !6400
  %8 = load i32, ptr %clearing, align 4, !dbg !6401
  %call = call i32 %6(ptr noundef %7, i32 noundef %8) #17, !dbg !6397
  store i32 %call, ptr %events, align 4, !dbg !6402
  %9 = load ptr, ptr %ev.addr, align 8, !dbg !6403
  %lock = getelementptr inbounds %struct.disk_events, ptr %9, i32 0, i32 2, !dbg !6404
  call void @spin_lock_irq(ptr noundef %lock) #17, !dbg !6405
  %10 = load ptr, ptr %ev.addr, align 8, !dbg !6406
  %pending = getelementptr inbounds %struct.disk_events, ptr %10, i32 0, i32 5, !dbg !6407
  %11 = load i32, ptr %pending, align 4, !dbg !6407
  %not = xor i32 %11, -1, !dbg !6408
  %12 = load i32, ptr %events, align 4, !dbg !6409
  %and = and i32 %12, %not, !dbg !6409
  store i32 %and, ptr %events, align 4, !dbg !6409
  %13 = load i32, ptr %events, align 4, !dbg !6410
  %14 = load ptr, ptr %ev.addr, align 8, !dbg !6411
  %pending2 = getelementptr inbounds %struct.disk_events, ptr %14, i32 0, i32 5, !dbg !6412
  %15 = load i32, ptr %pending2, align 4, !dbg !6413
  %or = or i32 %15, %13, !dbg !6413
  store i32 %or, ptr %pending2, align 4, !dbg !6413
  %16 = load i32, ptr %clearing, align 4, !dbg !6414
  %not3 = xor i32 %16, -1, !dbg !6415
  %17 = load ptr, ptr %clearing_ptr.addr, align 8, !dbg !6416
  %18 = load i32, ptr %17, align 4, !dbg !6417
  %and4 = and i32 %18, %not3, !dbg !6417
  store i32 %and4, ptr %17, align 4, !dbg !6417
  %19 = load ptr, ptr %disk, align 8, !dbg !6418
  %call5 = call i64 @disk_events_poll_jiffies(ptr noundef %19) #17, !dbg !6419
  store i64 %call5, ptr %intv, align 8, !dbg !6420
  %20 = load ptr, ptr %ev.addr, align 8, !dbg !6421
  %block = getelementptr inbounds %struct.disk_events, ptr %20, i32 0, i32 4, !dbg !6423
  %21 = load i32, ptr %block, align 8, !dbg !6423
  %tobool = icmp ne i32 %21, 0, !dbg !6421
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6424

land.lhs.true:                                    ; preds = %entry
  %22 = load i64, ptr %intv, align 8, !dbg !6425
  %tobool6 = icmp ne i64 %22, 0, !dbg !6425
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6426

if.then:                                          ; preds = %land.lhs.true
  %23 = load ptr, ptr @system_freezable_power_efficient_wq, align 8, !dbg !6427
  %24 = load ptr, ptr %ev.addr, align 8, !dbg !6428
  %dwork = getelementptr inbounds %struct.disk_events, ptr %24, i32 0, i32 8, !dbg !6429
  %25 = load i64, ptr %intv, align 8, !dbg !6430
  %call7 = call zeroext i1 @queue_delayed_work(ptr noundef %23, ptr noundef %dwork, i64 noundef %25) #17, !dbg !6431
  br label %if.end, !dbg !6431

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %26 = load ptr, ptr %ev.addr, align 8, !dbg !6432
  %lock8 = getelementptr inbounds %struct.disk_events, ptr %26, i32 0, i32 2, !dbg !6433
  call void @spin_unlock_irq(ptr noundef %lock8) #17, !dbg !6434
  %27 = load i32, ptr %events, align 4, !dbg !6435
  %and9 = and i32 %27, 1, !dbg !6437
  %tobool10 = icmp ne i32 %and9, 0, !dbg !6437
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !6438

if.then11:                                        ; preds = %if.end
  %28 = load ptr, ptr %disk, align 8, !dbg !6439
  call void @inc_diskseq(ptr noundef %28) #17, !dbg !6440
  br label %if.end12, !dbg !6440

if.end12:                                         ; preds = %if.then11, %if.end
  %29 = load ptr, ptr %disk, align 8, !dbg !6441
  %event_flags = getelementptr inbounds %struct.gendisk, ptr %29, i32 0, i32 5, !dbg !6443
  %30 = load i16, ptr %event_flags, align 2, !dbg !6443
  %conv = zext i16 %30 to i32, !dbg !6441
  %and13 = and i32 %conv, 2, !dbg !6444
  %tobool14 = icmp ne i32 %and13, 0, !dbg !6444
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !6445

if.then15:                                        ; preds = %if.end12
  %31 = load ptr, ptr %disk, align 8, !dbg !6446
  %32 = load i32, ptr %events, align 4, !dbg !6447
  call void @disk_event_uevent(ptr noundef %31, i32 noundef %32) #17, !dbg !6448
  br label %if.end16, !dbg !6448

if.end16:                                         ; preds = %if.then15, %if.end12
  call void @llvm.lifetime.end.p0(i64 8, ptr %intv) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 4, ptr %events) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 4, ptr %clearing) #16, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %disk) #16, !dbg !6449
  ret void, !dbg !6449
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !6450 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !6458, metadata !DIExpression()), !dbg !6460
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6459, metadata !DIExpression()), !dbg !6461
  %0 = load ptr, ptr %v.addr, align 8, !dbg !6462
  %1 = load i64, ptr %size.addr, align 8, !dbg !6463
  %conv = trunc i64 %1 to i32, !dbg !6463
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #17, !dbg !6464
  %2 = load ptr, ptr %v.addr, align 8, !dbg !6465
  %3 = load i64, ptr %size.addr, align 8, !dbg !6465
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #17, !dbg !6465
  ret void, !dbg !6466
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !6467 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !6470, metadata !DIExpression()), !dbg !6472
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !6471, metadata !DIExpression()), !dbg !6473
  %0 = load i64, ptr %nr.addr, align 8, !dbg !6474
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6476
  br i1 %1, label %if.then, label %if.else, !dbg !6477

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !6478
  %3 = load i64, ptr %nr.addr, align 8, !dbg !6478
  %shr = ashr i64 %3, 3, !dbg !6478
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !6478
  %4 = load i64, ptr %nr.addr, align 8, !dbg !6480
  %and = and i64 %4, 7, !dbg !6480
  %sh_prom = trunc i64 %and to i32, !dbg !6480
  %shl = shl i32 1, %sh_prom, !dbg !6480
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #16, !dbg !6481, !srcloc !6482
  br label %if.end, !dbg !6483

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !6484
  %6 = load i64, ptr %nr.addr, align 8, !dbg !6486
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #16, !dbg !6487, !srcloc !6488
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !6489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !6490 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !6495, metadata !DIExpression()), !dbg !6497
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6496, metadata !DIExpression()), !dbg !6498
  ret i1 true, !dbg !6499
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !6500 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6505, metadata !DIExpression()), !dbg !6508
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6506, metadata !DIExpression()), !dbg !6509
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !6507, metadata !DIExpression()), !dbg !6510
  ret void, !dbg !6511
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6512 dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__disk_events_show(i32 noundef %events, ptr noundef %buf) #0 align 16 !dbg !6516 {
entry:
  %events.addr = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %delim = alloca ptr, align 8
  %pos = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 %events, ptr %events.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %events.addr, metadata !6520, metadata !DIExpression()), !dbg !6525
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6521, metadata !DIExpression()), !dbg !6526
  call void @llvm.lifetime.start.p0(i64 8, ptr %delim) #16, !dbg !6527
  call void @llvm.dbg.declare(metadata ptr %delim, metadata !6522, metadata !DIExpression()), !dbg !6528
  store ptr @.str.9, ptr %delim, align 8, !dbg !6528
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #16, !dbg !6529
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !6523, metadata !DIExpression()), !dbg !6530
  store i64 0, ptr %pos, align 8, !dbg !6530
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #16, !dbg !6531
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6524, metadata !DIExpression()), !dbg !6532
  store i32 0, ptr %i, align 4, !dbg !6533
  br label %for.cond, !dbg !6535

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6536
  %conv = sext i32 %0 to i64, !dbg !6536
  %cmp = icmp ult i64 %conv, 2, !dbg !6538
  br i1 %cmp, label %for.body, label %for.end, !dbg !6539

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %events.addr, align 4, !dbg !6540
  %2 = load i32, ptr %i, align 4, !dbg !6542
  %shl = shl i32 1, %2, !dbg !6543
  %and = and i32 %1, %shl, !dbg !6544
  %tobool = icmp ne i32 %and, 0, !dbg !6544
  br i1 %tobool, label %if.then, label %if.end, !dbg !6545

if.then:                                          ; preds = %for.body
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !6546
  %4 = load i64, ptr %pos, align 8, !dbg !6548
  %add.ptr = getelementptr i8, ptr %3, i64 %4, !dbg !6549
  %5 = load ptr, ptr %delim, align 8, !dbg !6550
  %6 = load i32, ptr %i, align 4, !dbg !6551
  %idxprom = sext i32 %6 to i64, !dbg !6552
  %arrayidx = getelementptr [2 x ptr], ptr @disk_events_strs, i64 0, i64 %idxprom, !dbg !6552
  %7 = load ptr, ptr %arrayidx, align 8, !dbg !6552
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef @.str.10, ptr noundef %5, ptr noundef %7) #17, !dbg !6553
  %conv2 = sext i32 %call to i64, !dbg !6553
  %8 = load i64, ptr %pos, align 8, !dbg !6554
  %add = add i64 %8, %conv2, !dbg !6554
  store i64 %add, ptr %pos, align 8, !dbg !6554
  store ptr @.str.11, ptr %delim, align 8, !dbg !6555
  br label %if.end, !dbg !6556

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !6557

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4, !dbg !6558
  %inc = add i32 %9, 1, !dbg !6558
  store i32 %inc, ptr %i, align 4, !dbg !6558
  br label %for.cond, !dbg !6559, !llvm.loop !6560

for.end:                                          ; preds = %for.cond
  %10 = load i64, ptr %pos, align 8, !dbg !6562
  %tobool3 = icmp ne i64 %10, 0, !dbg !6562
  br i1 %tobool3, label %if.then4, label %if.end9, !dbg !6564

if.then4:                                         ; preds = %for.end
  %11 = load ptr, ptr %buf.addr, align 8, !dbg !6565
  %12 = load i64, ptr %pos, align 8, !dbg !6566
  %add.ptr5 = getelementptr i8, ptr %11, i64 %12, !dbg !6567
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr5, ptr noundef @.str.12) #17, !dbg !6568
  %conv7 = sext i32 %call6 to i64, !dbg !6568
  %13 = load i64, ptr %pos, align 8, !dbg !6569
  %add8 = add i64 %13, %conv7, !dbg !6569
  store i64 %add8, ptr %pos, align 8, !dbg !6569
  br label %if.end9, !dbg !6570

if.end9:                                          ; preds = %if.then4, %for.end
  %14 = load i64, ptr %pos, align 8, !dbg !6571
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #16, !dbg !6572
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #16, !dbg !6572
  call void @llvm.lifetime.end.p0(i64 8, ptr %delim) #16, !dbg !6572
  ret i64 %14, !dbg !6573
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6574 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6578 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @disk_events_set_dfl_poll_msecs(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !6581 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %ev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6583, metadata !DIExpression()), !dbg !6593
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !6584, metadata !DIExpression()), !dbg !6594
  call void @llvm.lifetime.start.p0(i64 8, ptr %ev) #16, !dbg !6595
  call void @llvm.dbg.declare(metadata ptr %ev, metadata !6585, metadata !DIExpression()), !dbg !6596
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !6597
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6586, metadata !DIExpression()), !dbg !6598
  %0 = load ptr, ptr %val.addr, align 8, !dbg !6599
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !6600
  %call = call i32 @param_set_ulong(ptr noundef %0, ptr noundef %1) #17, !dbg !6601
  store i32 %call, ptr %ret, align 4, !dbg !6602
  %2 = load i32, ptr %ret, align 4, !dbg !6603
  %cmp = icmp slt i32 %2, 0, !dbg !6605
  br i1 %cmp, label %if.then, label %if.end, !dbg !6606

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %ret, align 4, !dbg !6607
  store i32 %3, ptr %retval, align 4, !dbg !6608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6608

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @disk_events_mutex) #17, !dbg !6609
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6587, metadata !DIExpression()), !dbg !6610
  %4 = load ptr, ptr @disk_events, align 8, !dbg !6610
  store ptr %4, ptr %__mptr, align 8, !dbg !6610
  %5 = load ptr, ptr %__mptr, align 8, !dbg !6610
  %add.ptr = getelementptr i8, ptr %5, i64 0, !dbg !6610
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6610
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6611
  %6 = load ptr, ptr %tmp, align 8, !dbg !6610
  store ptr %6, ptr %ev, align 8, !dbg !6611
  br label %for.cond, !dbg !6611

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load ptr, ptr %ev, align 8, !dbg !6612
  %node = getelementptr inbounds %struct.disk_events, ptr %7, i32 0, i32 0, !dbg !6612
  %cmp1 = icmp eq ptr %node, @disk_events, !dbg !6612
  %lnot = xor i1 %cmp1, true, !dbg !6612
  br i1 %lnot, label %for.body, label %for.end, !dbg !6611

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %ev, align 8, !dbg !6613
  %disk = getelementptr inbounds %struct.disk_events, ptr %8, i32 0, i32 1, !dbg !6614
  %9 = load ptr, ptr %disk, align 8, !dbg !6614
  call void @disk_flush_events(ptr noundef %9, i32 noundef 0) #17, !dbg !6615
  br label %for.inc, !dbg !6615

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #16, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !6590, metadata !DIExpression()), !dbg !6616
  %10 = load ptr, ptr %ev, align 8, !dbg !6616
  %node3 = getelementptr inbounds %struct.disk_events, ptr %10, i32 0, i32 0, !dbg !6616
  %next = getelementptr inbounds %struct.list_head, ptr %node3, i32 0, i32 0, !dbg !6616
  %11 = load ptr, ptr %next, align 8, !dbg !6616
  store ptr %11, ptr %__mptr2, align 8, !dbg !6616
  %12 = load ptr, ptr %__mptr2, align 8, !dbg !6616
  %add.ptr5 = getelementptr i8, ptr %12, i64 0, !dbg !6616
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #16, !dbg !6612
  %13 = load ptr, ptr %tmp4, align 8, !dbg !6616
  store ptr %13, ptr %ev, align 8, !dbg !6612
  br label %for.cond, !dbg !6612, !llvm.loop !6617

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @disk_events_mutex) #17, !dbg !6619
  store i32 0, ptr %retval, align 4, !dbg !6620
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6620

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !6621
  call void @llvm.lifetime.end.p0(i64 8, ptr %ev) #16, !dbg !6621
  %14 = load i32, ptr %retval, align 4, !dbg !6621
  ret i32 %14, !dbg !6621
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @param_get_ulong(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6622 dso_local i32 @param_set_ulong(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !6623 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6625, metadata !DIExpression()), !dbg !6630
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6626, metadata !DIExpression()), !dbg !6631
  %0 = load i64, ptr %size.addr, align 8, !dbg !6632
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6633
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6634

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6635
  %tobool = icmp ne i64 %2, 0, !dbg !6635
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6636

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !6637
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6627, metadata !DIExpression()), !dbg !6638
  %3 = load i64, ptr %size.addr, align 8, !dbg !6639
  %cmp = icmp ugt i64 %3, 8192, !dbg !6641
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6642

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6643
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6644
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6645
  store ptr %call, ptr %retval, align 8, !dbg !6646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6646

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6647
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !6647
  store i32 %call2, ptr %index, align 4, !dbg !6648
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6649
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6650
  %9 = ptrtoint ptr %8 to i64, !dbg !6650
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !6651
  %idxprom = zext i32 %call3 to i64, !dbg !6652
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6652
  %10 = load i32, ptr %index, align 4, !dbg !6653
  %idxprom4 = zext i32 %10 to i64, !dbg !6652
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6652
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6652
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6654
  %13 = load i64, ptr %size.addr, align 8, !dbg !6655
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !6656
  store ptr %call6, ptr %retval, align 8, !dbg !6657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6657

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !6658
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6659
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6660
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6661
  store ptr %call8, ptr %retval, align 8, !dbg !6662
  br label %return, !dbg !6662

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6663
  ret ptr %16, !dbg !6663
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6664 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6665 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6669, metadata !DIExpression()), !dbg !6671
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6670, metadata !DIExpression()), !dbg !6672
  %0 = load i64, ptr %size.addr, align 8, !dbg !6673
  %tobool = icmp ne i64 %0, 0, !dbg !6673
  br i1 %tobool, label %if.end, label %if.then, !dbg !6675

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6676
  br label %return, !dbg !6676

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6677
  %cmp = icmp ule i64 %1, 8, !dbg !6679
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6680

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6681
  br label %return, !dbg !6681

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6682
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6684
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6685

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6686
  %cmp4 = icmp ule i64 %3, 96, !dbg !6687
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6688

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6689
  br label %return, !dbg !6689

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6690
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6692
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6693

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6694
  %cmp9 = icmp ule i64 %5, 192, !dbg !6695
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6696

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6697
  br label %return, !dbg !6697

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6698
  %cmp12 = icmp ule i64 %6, 8, !dbg !6700
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6701

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6702
  br label %return, !dbg !6702

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6703
  %cmp15 = icmp ule i64 %7, 16, !dbg !6705
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6706

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6707
  br label %return, !dbg !6707

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6708
  %cmp18 = icmp ule i64 %8, 32, !dbg !6710
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6711

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6712
  br label %return, !dbg !6712

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6713
  %cmp21 = icmp ule i64 %9, 64, !dbg !6715
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6716

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6717
  br label %return, !dbg !6717

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6718
  %cmp24 = icmp ule i64 %10, 128, !dbg !6720
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6721

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6722
  br label %return, !dbg !6722

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6723
  %cmp27 = icmp ule i64 %11, 256, !dbg !6725
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6726

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6727
  br label %return, !dbg !6727

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6728
  %cmp30 = icmp ule i64 %12, 512, !dbg !6730
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6731

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6732
  br label %return, !dbg !6732

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6733
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6735
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6736

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6737
  br label %return, !dbg !6737

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6738
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6740
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6741

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6742
  br label %return, !dbg !6742

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6743
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6745
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6746

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6747
  br label %return, !dbg !6747

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6748
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6750
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6751

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6752
  br label %return, !dbg !6752

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6753
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6755
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6756

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6757
  br label %return, !dbg !6757

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6758
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6760
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6761

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6762
  br label %return, !dbg !6762

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6763
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6765
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6766

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6767
  br label %return, !dbg !6767

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6768
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6770
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6771

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6772
  br label %return, !dbg !6772

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6773
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6775
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6776

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6777
  br label %return, !dbg !6777

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6778
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6780
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6781

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6782
  br label %return, !dbg !6782

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6783
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6785
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6786

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6787
  br label %return, !dbg !6787

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6788
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6790
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6791

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6792
  br label %return, !dbg !6792

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6793, !range !5552, !noundef !620
  %tobool69 = trunc i8 %25 to i1, !dbg !6793
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6795

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6796

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #21, !dbg !6797, !srcloc !6800
  unreachable, !dbg !6797

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6801

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6802

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6803

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6805

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6803

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 480, i32 0, i64 12) #16, !dbg !6807, !srcloc !6809
  br label %do.end75, !dbg !6807

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6803

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6810
  br label %return, !dbg !6810

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6811
  ret i32 %26, !dbg !6811
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6812 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6815 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6819, metadata !DIExpression()), !dbg !6821
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6820, metadata !DIExpression()), !dbg !6822
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6823
  %and = and i32 %0, 17, !dbg !6823
  %cmp = icmp eq i32 %and, 0, !dbg !6823
  %lnot = xor i1 %cmp, true, !dbg !6823
  %lnot1 = xor i1 %lnot, true, !dbg !6823
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6823
  %conv = sext i32 %lnot.ext to i64, !dbg !6823
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6823
  %tobool = icmp ne i64 %expval, 0, !dbg !6823
  br i1 %tobool, label %if.then, label %if.end, !dbg !6825

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6826
  br label %return, !dbg !6826

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6827
  %and2 = and i32 %1, 1, !dbg !6829
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6829
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6830

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6831
  br label %return, !dbg !6831

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6832
  br label %return, !dbg !6832

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6834
  ret i32 %2, !dbg !6834
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6835 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6836 dso_local void @__compiletime_assert_245() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_delayed_work(ptr noundef %work) #5 align 16 !dbg !6837 {
entry:
  %work.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %work, ptr %work.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %work.addr, metadata !6841, metadata !DIExpression()), !dbg !6844
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !6845
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6842, metadata !DIExpression()), !dbg !6845
  %0 = load ptr, ptr %work.addr, align 8, !dbg !6845
  store ptr %0, ptr %__mptr, align 8, !dbg !6845
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6845
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6845
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6845
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !6846
  %2 = load ptr, ptr %tmp, align 8, !dbg !6845
  ret ptr %2, !dbg !6847
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6848 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6852, metadata !DIExpression()), !dbg !6855
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6853, metadata !DIExpression()), !dbg !6856
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6854, metadata !DIExpression()), !dbg !6857
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6858
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6860
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6861
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !6862
  br i1 %call, label %if.end, label %if.then, !dbg !6863

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6864

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6865
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6866
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6867
  store ptr %3, ptr %prev1, align 8, !dbg !6868
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6869
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6870
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6871
  store ptr %5, ptr %next2, align 8, !dbg !6872
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6873
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6874
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6875
  store ptr %7, ptr %prev3, align 8, !dbg !6876
  br label %do.body, !dbg !6877

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6878

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6880

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6878

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6882
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6882
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6882
  store volatile ptr %9, ptr %next6, align 8, !dbg !6882
  br label %do.end7, !dbg !6882

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6878

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6885 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6889, metadata !DIExpression()), !dbg !6892
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6890, metadata !DIExpression()), !dbg !6893
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6891, metadata !DIExpression()), !dbg !6894
  ret i1 true, !dbg !6895
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !6896 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6898, metadata !DIExpression()), !dbg !6899
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6900
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !6902
  br i1 %call, label %if.end, label %if.then, !dbg !6903

if.then:                                          ; preds = %entry
  br label %return, !dbg !6904

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6905
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6906
  %2 = load ptr, ptr %prev, align 8, !dbg !6906
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6907
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6908
  %4 = load ptr, ptr %next, align 8, !dbg !6908
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !6909
  br label %return, !dbg !6910

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6910
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !6911 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6915, metadata !DIExpression()), !dbg !6916
  ret i1 true, !dbg !6917
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !6918 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6920, metadata !DIExpression()), !dbg !6922
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6921, metadata !DIExpression()), !dbg !6923
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6924
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6925
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6926
  store ptr %0, ptr %prev1, align 8, !dbg !6927
  br label %do.body, !dbg !6928

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6929

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6931

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6929

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6933
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6933
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6933
  store volatile ptr %2, ptr %next4, align 8, !dbg !6933
  br label %do.end5, !dbg !6933

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6929

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6935
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!5501, !5502, !5503, !5504, !5505, !5506, !5507, !5508}
!llvm.ident = !{!5509}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_disk_check_media_change348", scope: !2, file: !3, line: 288, type: !232, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.disk-events.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/disk-events\22 -D KBUILD_BASENAME=\22disk_events\22 -D KBUILD_MODNAME=\22disk_events\22 -D __KBUILD_MODNAME=kmod_disk_events -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/disk-events.ll block/disk-events.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !231, globals: !5387, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "block/disk-events.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bb7a026ee79b4d50066cf3142ea28674")
!4 = !{!5, !13, !18, !24, !29, !37, !45, !61, !67, !74, !81, !87, !93, !97, !101, !107, !114, !122, !130, !139, !144, !149, !155, !160, !165, !170, !175, !179, !205, !210, !221}
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
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !38, line: 68, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!39 = !{!40, !41, !42, !43, !44}
!40 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!43 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!44 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !46, line: 1325, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!48 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!49 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!50 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!51 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!52 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!53 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!54 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!55 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!56 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!57 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!58 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!59 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!60 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mq_rq_state", file: !88, line: 68, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/blk-mq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "62cf1706db3683ee75df9cf32a2cf47d")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "MQ_RQ_IDLE", value: 0)
!91 = !DIEnumerator(name: "MQ_RQ_IN_FLIGHT", value: 1)
!92 = !DIEnumerator(name: "MQ_RQ_COMPLETE", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rq_end_io_ret", file: !88, line: 18, baseType: !7, size: 32, elements: !94)
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "RQ_END_IO_NONE", value: 0)
!96 = !DIEnumerator(name: "RQ_END_IO_FREE", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_eh_timer_return", file: !88, line: 276, baseType: !7, size: 32, elements: !98)
!98 = !{!99, !100}
!99 = !DIEnumerator(name: "BLK_EH_DONE", value: 0)
!100 = !DIEnumerator(name: "BLK_EH_RESET_TIMER", value: 1)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !102, line: 45, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!105 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!106 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !108, line: 487, baseType: !7, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!109 = !{!110, !111, !112, !113}
!110 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!111 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!112 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!113 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !115, line: 620, baseType: !7, size: 32, elements: !116)
!115 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!118 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!119 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!120 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!121 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !115, line: 597, baseType: !123, size: 32, elements: !124)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!126 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!127 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!128 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!129 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !108, line: 547, baseType: !7, size: 32, elements: !131)
!131 = !{!132, !133, !134, !135, !136, !137, !138}
!132 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!133 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!134 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!135 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!136 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!137 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!138 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!139 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !108, line: 564, baseType: !7, size: 32, elements: !140)
!140 = !{!141, !142, !143}
!141 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!142 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!143 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!144 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !108, line: 577, baseType: !7, size: 32, elements: !145)
!145 = !{!146, !147, !148}
!146 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!147 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!148 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!149 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !108, line: 503, baseType: !7, size: 32, elements: !150)
!150 = !{!151, !152, !153, !154}
!151 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!152 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!153 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!154 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!155 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_bounce", file: !156, line: 295, baseType: !7, size: 32, elements: !157)
!156 = !DIFile(filename: "./include/linux/blkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "802ed60c7d9aff392515db0b7890881d")
!157 = !{!158, !159}
!158 = !DIEnumerator(name: "BLK_BOUNCE_NONE", value: 0)
!159 = !DIEnumerator(name: "BLK_BOUNCE_HIGH", value: 1)
!160 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_zoned_model", file: !156, line: 285, baseType: !7, size: 32, elements: !161)
!161 = !{!162, !163, !164}
!162 = !DIEnumerator(name: "BLK_ZONED_NONE", value: 0)
!163 = !DIEnumerator(name: "BLK_ZONED_HA", value: 1)
!164 = !DIEnumerator(name: "BLK_ZONED_HM", value: 2)
!165 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "blk_unique_id", file: !156, line: 1381, baseType: !7, size: 32, elements: !166)
!166 = !{!167, !168, !169}
!167 = !DIEnumerator(name: "BLK_UID_T10", value: 1)
!168 = !DIEnumerator(name: "BLK_UID_EUI64", value: 2)
!169 = !DIEnumerator(name: "BLK_UID_NAA", value: 3)
!170 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !171, line: 10, baseType: !7, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!172 = !{!173, !174}
!173 = !DIEnumerator(name: "false", value: 0)
!174 = !DIEnumerator(name: "true", value: 1)
!175 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 90, baseType: !7, size: 32, elements: !176)
!176 = !{!177, !178}
!177 = !DIEnumerator(name: "DISK_EVENT_MEDIA_CHANGE", value: 1)
!178 = !DIEnumerator(name: "DISK_EVENT_EJECT_REQUEST", value: 2)
!179 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !180, line: 30, baseType: !7, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!181 = !{!182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204}
!182 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!183 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE_BIT", value: 1)
!184 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!185 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!186 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!187 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!188 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!189 = !DIEnumerator(name: "WORK_STRUCT_INACTIVE", value: 2)
!190 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!191 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!192 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!193 = !DIEnumerator(name: "WORK_NR_COLORS", value: 16)
!194 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 64)
!195 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!196 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!197 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!198 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!199 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!200 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!201 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!202 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!203 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!204 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 32)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !156, line: 95, baseType: !7, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "DISK_EVENT_FLAG_POLL", value: 1)
!208 = !DIEnumerator(name: "DISK_EVENT_FLAG_UEVENT", value: 2)
!209 = !DIEnumerator(name: "DISK_EVENT_FLAG_BLOCK_ON_EXCL_WRITE", value: 4)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !211, line: 53, baseType: !7, size: 32, elements: !212)
!211 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!212 = !{!213, !214, !215, !216, !217, !218, !219, !220}
!213 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!214 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!215 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!216 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!217 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!218 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!219 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!220 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!221 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !222, line: 364, baseType: !7, size: 32, elements: !223)
!222 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!223 = !{!224, !225, !226, !227, !228, !229, !230}
!224 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!225 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!226 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!227 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!228 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!229 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!230 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!231 = !{!232, !233, !781, !387, !123, !373, !5380, !5382, !951, !3235, !5384, !5386}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !235)
!235 = !{!236, !237, !244, !249, !5141, !5167, !5168, !5169, !5170, !5174, !5177, !5178, !5179, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5238, !5246, !5250, !5268, !5285, !5286, !5287, !5288, !5297, !5320, !5321, !5324, !5327, !5328, !5329, !5330, !5331, !5332, !5333, !5338, !5339, !5341, !5349, !5350, !5351, !5352, !5356, !5357, !5361, !5362, !5363, !5364, !5366, !5367, !5368, !5375, !5376, !5377, !5379}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !234, file: !6, line: 403, baseType: !5, size: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !234, file: !6, line: 406, baseType: !238, size: 128, offset: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !239, line: 190, size: 128, elements: !240)
!239 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!240 = !{!241, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !238, file: !239, line: 191, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !238, file: !239, line: 191, baseType: !242, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !234, file: !6, line: 409, baseType: !245, size: 448, offset: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 448, elements: !247)
!246 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!247 = !{!248}
!248 = !DISubrange(count: 56)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !234, file: !6, line: 417, baseType: !250, size: 768, offset: 640)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !251)
!251 = !{!252, !5135, !5136, !5137, !5140}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !250, file: !6, line: 46, baseType: !253, size: 512)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !211, line: 64, size: 512, elements: !254)
!254 = !{!255, !258, !259, !261, !350, !5021, !5125, !5130, !5131, !5132, !5133, !5134}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !253, file: !211, line: 65, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !253, file: !211, line: 66, baseType: !238, size: 128, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !253, file: !211, line: 67, baseType: !260, size: 64, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !253, file: !211, line: 68, baseType: !262, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !211, line: 168, size: 768, elements: !264)
!264 = !{!265, !266, !309, !310}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !263, file: !211, line: 169, baseType: !238, size: 128)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !263, file: !211, line: 170, baseType: !267, size: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !268, line: 29, baseType: !269)
!268 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !268, line: 17, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, scope: !269, file: !268, line: 18, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !269, file: !268, line: 18, size: 32, elements: !273)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !272, file: !268, line: 19, baseType: !275, size: 32)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !276, line: 14, size: 32, elements: !277)
!276 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !275, file: !276, line: 15, baseType: !279, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !280, line: 44, baseType: !281)
!280 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !280, line: 14, size: 32, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !280, line: 15, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !281, file: !280, line: 15, size: 32, elements: !285)
!285 = !{!286, !291, !301}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !284, file: !280, line: 16, baseType: !287, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !239, line: 174, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 172, size: 32, elements: !289)
!289 = !{!290}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !288, file: !239, line: 173, baseType: !123, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !280, line: 24, baseType: !292, size: 16)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !280, line: 24, size: 16, elements: !293)
!293 = !{!294, !300}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !292, file: !280, line: 25, baseType: !295, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !296, line: 17, baseType: !297)
!296 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !298, line: 21, baseType: !299)
!298 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!299 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !292, file: !280, line: 26, baseType: !295, size: 8, offset: 8)
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !284, file: !280, line: 28, baseType: !302, size: 32)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !284, file: !280, line: 28, size: 32, elements: !303)
!303 = !{!304, !308}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !302, file: !280, line: 29, baseType: !305, size: 16)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !296, line: 19, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !298, line: 24, baseType: !307)
!307 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !302, file: !280, line: 30, baseType: !305, size: 16, offset: 16)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !263, file: !211, line: 171, baseType: !253, size: 512, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !263, file: !211, line: 172, baseType: !311, size: 64, offset: 704)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !211, line: 133, size: 192, elements: !314)
!314 = !{!315, !322, !327}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !313, file: !211, line: 134, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!123, !320}
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !313, file: !211, line: 135, baseType: !323, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!256, !320}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !313, file: !211, line: 136, baseType: !328, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!123, !320, !332}
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !211, line: 125, size: 20736, elements: !334)
!334 = !{!335, !340, !344, !345, !349}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !333, file: !211, line: 126, baseType: !336, size: 192)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 192, elements: !338)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!338 = !{!339}
!339 = !DISubrange(count: 3)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !333, file: !211, line: 127, baseType: !341, size: 4096, offset: 192)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 4096, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !333, file: !211, line: 128, baseType: !123, size: 32, offset: 4288)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !333, file: !211, line: 129, baseType: !346, size: 16384, offset: 4320)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 16384, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 2048)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !333, file: !211, line: 130, baseType: !123, size: 32, offset: 20704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !253, file: !211, line: 69, baseType: !351, size: 64, offset: 320)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !211, line: 116, size: 384, elements: !354)
!354 = !{!355, !359, !388, !5009, !5013, !5017}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !353, file: !211, line: 117, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !260}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !353, file: !211, line: 118, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !363, line: 254, size: 128, elements: !364)
!363 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!364 = !{!365, !380}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !362, file: !363, line: 255, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!369, !260, !374, !337}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !239, line: 66, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !371, line: 73, baseType: !372)
!371 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !371, line: 15, baseType: !373)
!373 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !363, line: 30, size: 128, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !363, line: 31, baseType: !256, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !375, file: !363, line: 32, baseType: !379, size: 16, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !239, line: 24, baseType: !307)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !362, file: !363, line: 256, baseType: !381, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!369, !260, !374, !256, !384}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !239, line: 61, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !371, line: 72, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !371, line: 16, baseType: !387)
!387 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !353, file: !211, line: 119, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !363, line: 84, size: 320, elements: !393)
!393 = !{!394, !395, !399, !5005, !5007}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !363, line: 85, baseType: !256, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !392, file: !363, line: 86, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!379, !260, !374, !123}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !392, file: !363, line: 88, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!379, !260, !403, !123}
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !363, line: 175, size: 512, elements: !405)
!405 = !{!406, !407, !408, !409, !4996, !5000, !5001}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !404, file: !363, line: 176, baseType: !375, size: 128)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !404, file: !363, line: 177, baseType: !384, size: 64, offset: 128)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !404, file: !363, line: 178, baseType: !232, size: 64, offset: 192)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !404, file: !363, line: 179, baseType: !410, size: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !415)
!415 = !{!416, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !4840, !4990, !4991, !4992, !4993, !4994, !4995}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !414, file: !14, line: 473, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !419)
!419 = !{!420, !421, !422, !430, !431, !438, !439, !442, !443, !4771, !4772, !4773, !4774, !4775, !4781, !4782, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4790, !4791, !4792, !4793, !4794, !4795, !4796, !4797, !4798, !4799, !4804, !4805, !4806, !4807, !4808, !4809, !4810, !4815, !4818, !4819, !4820, !4829, !4830, !4831, !4832}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !418, file: !14, line: 642, baseType: !379, size: 16)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !418, file: !14, line: 643, baseType: !307, size: 16, offset: 16)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !418, file: !14, line: 644, baseType: !423, size: 32, offset: 32)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !424, line: 23, baseType: !425)
!424 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 21, size: 32, elements: !426)
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !425, file: !424, line: 22, baseType: !428, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !239, line: 37, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !371, line: 49, baseType: !7)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !418, file: !14, line: 645, baseType: !238, size: 128, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !418, file: !14, line: 646, baseType: !432, size: 32, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !424, line: 28, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !424, line: 26, size: 32, elements: !434)
!434 = !{!435}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !433, file: !424, line: 27, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !239, line: 38, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !371, line: 50, baseType: !7)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !418, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !418, file: !14, line: 650, baseType: !440, size: 64, offset: 256)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !418, file: !14, line: 651, baseType: !440, size: 64, offset: 320)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !418, file: !14, line: 654, baseType: !444, size: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !447)
!447 = !{!448, !4605, !4615, !4619, !4623, !4627, !4631, !4635, !4639, !4643, !4647, !4648, !4652, !4656, !4693, !4722, !4726, !4732, !4736, !4740, !4744, !4748, !4752, !4758, !4762}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !446, file: !14, line: 1967, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!452, !417, !452, !7}
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !454, line: 82, size: 1536, elements: !455)
!454 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!455 = !{!456, !457, !467, !475, !476, !496, !497, !501, !514, !4588, !4589, !4590, !4591, !4597, !4598, !4599}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !453, file: !454, line: 84, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !453, file: !454, line: 85, baseType: !458, size: 32, offset: 32)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !459, line: 275, baseType: !460)
!459 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !459, line: 275, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !460, file: !459, line: 275, baseType: !463, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !459, line: 69, baseType: !464)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !459, line: 64, size: 32, elements: !465)
!465 = !{!466}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !464, file: !459, line: 65, baseType: !7, size: 32)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !453, file: !454, line: 86, baseType: !468, size: 128, offset: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !469, line: 38, size: 128, elements: !470)
!469 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!470 = !{!471, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !468, file: !469, line: 39, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !468, file: !469, line: 39, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !453, file: !454, line: 87, baseType: !452, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !453, file: !454, line: 88, baseType: !477, size: 128, offset: 256)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !454, line: 49, size: 128, elements: !478)
!478 = !{!479, !493}
!479 = !DIDerivedType(tag: DW_TAG_member, scope: !477, file: !454, line: 50, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !477, file: !454, line: 50, size: 64, elements: !481)
!481 = !{!482, !489}
!482 = !DIDerivedType(tag: DW_TAG_member, scope: !480, file: !454, line: 51, baseType: !483, size: 64)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !480, file: !454, line: 51, size: 64, elements: !484)
!484 = !{!485, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !483, file: !454, line: 52, baseType: !486, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !296, line: 21, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !298, line: 27, baseType: !7)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !483, file: !454, line: 52, baseType: !486, size: 32, offset: 32)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !480, file: !454, line: 54, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !296, line: 23, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !298, line: 31, baseType: !492)
!492 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !477, file: !454, line: 56, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !453, file: !454, line: 89, baseType: !417, size: 64, offset: 384)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !453, file: !454, line: 91, baseType: !498, size: 256, offset: 448)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 256, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !453, file: !454, line: 94, baseType: !502, size: 64, offset: 704)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !503, line: 25, size: 64, elements: !504)
!503 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !503, line: 26, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !502, file: !503, line: 26, size: 64, elements: !507)
!507 = !{!508, !509}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !506, file: !503, line: 28, baseType: !491, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !503, line: 30, baseType: !510, size: 64)
!510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !503, line: 30, size: 64, elements: !511)
!511 = !{!512, !513}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !510, file: !503, line: 31, baseType: !267, size: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !510, file: !503, line: 32, baseType: !123, size: 32, offset: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !453, file: !454, line: 95, baseType: !515, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !454, line: 128, size: 1024, align: 512, elements: !518)
!518 = !{!519, !523, !524, !531, !537, !541, !545, !549, !550, !554, !558, !4578, !4582}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !517, file: !454, line: 129, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!123, !452, !7}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !517, file: !454, line: 130, baseType: !520, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !517, file: !454, line: 131, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!123, !528, !530}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !517, file: !454, line: 132, baseType: !532, size: 64, offset: 192)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!123, !528, !7, !256, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !517, file: !454, line: 134, baseType: !538, size: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!123, !528}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !517, file: !454, line: 135, baseType: !542, size: 64, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!123, !452}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !517, file: !454, line: 136, baseType: !546, size: 64, offset: 384)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !452}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !517, file: !454, line: 137, baseType: !546, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !517, file: !454, line: 138, baseType: !551, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DISubroutineType(types: !553)
!553 = !{null, !452, !417}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !517, file: !454, line: 139, baseType: !555, size: 64, offset: 576)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!337, !452, !337, !123}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !517, file: !454, line: 140, baseType: !559, size: 64, offset: 640)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!562, !4577}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !564, line: 70, size: 256, elements: !565)
!564 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!565 = !{!566, !567, !4573, !4574}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !563, file: !564, line: 71, baseType: !452, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !563, file: !564, line: 72, baseType: !568, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !570)
!570 = !{!571, !572, !575, !576, !577, !581, !629, !790, !830, !920, !924, !925, !926, !927, !928, !937, !938, !939, !940, !945, !949, !950, !3317, !3323, !3324, !3327, !3328, !3329, !3370, !4507, !4508, !4509, !4510, !4511, !4512, !4515, !4516, !4523, !4524, !4525, !4526, !4527, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !569, file: !14, line: 1191, baseType: !238, size: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !569, file: !14, line: 1192, baseType: !573, size: 32, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !239, line: 21, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !239, line: 18, baseType: !486)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !569, file: !14, line: 1193, baseType: !299, size: 8, offset: 160)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !569, file: !14, line: 1194, baseType: !387, size: 64, offset: 192)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !569, file: !14, line: 1195, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !239, line: 52, baseType: !579)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !371, line: 88, baseType: !580)
!580 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !569, file: !14, line: 1196, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !584)
!584 = !{!585, !586, !587, !593, !597, !601, !605, !606, !607, !617, !621, !622, !623, !625, !626, !627, !628}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !583, file: !14, line: 2367, baseType: !256, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !583, file: !14, line: 2368, baseType: !123, size: 32, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !583, file: !14, line: 2376, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DISubroutineType(types: !590)
!590 = !{!123, !591}
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !564, line: 21, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !583, file: !14, line: 2377, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !596)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !583, file: !14, line: 2378, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{!452, !582, !123, !256, !232}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !583, file: !14, line: 2380, baseType: !602, size: 64, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !568}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !583, file: !14, line: 2381, baseType: !233, size: 64, offset: 384)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !583, file: !14, line: 2382, baseType: !582, size: 64, offset: 448)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !583, file: !14, line: 2383, baseType: !608, size: 64, offset: 512)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !239, line: 194, size: 64, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !608, file: !239, line: 195, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !239, line: 198, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !612, file: !239, line: 199, baseType: !611, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !612, file: !239, line: 199, baseType: !616, size: 64, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !583, file: !14, line: 2385, baseType: !618, offset: 576)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !619, line: 206, elements: !620)
!619 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!620 = !{}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !583, file: !14, line: 2386, baseType: !618, offset: 576)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !583, file: !14, line: 2387, baseType: !618, offset: 576)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !583, file: !14, line: 2388, baseType: !624, offset: 576)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, elements: !338)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !583, file: !14, line: 2390, baseType: !618, offset: 576)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !583, file: !14, line: 2391, baseType: !618, offset: 576)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !583, file: !14, line: 2392, baseType: !618, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !583, file: !14, line: 2393, baseType: !618, offset: 576)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !569, file: !14, line: 1197, baseType: !630, size: 64, offset: 384)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !633)
!633 = !{!634, !638, !642, !643, !647, !653, !657, !658, !659, !663, !667, !671, !672, !673, !679, !684, !685, !692, !693, !694, !695, !699, !703, !772, !788, !789}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !632, file: !14, line: 2058, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!417, !568}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !632, file: !14, line: 2059, baseType: !639, size: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !417}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !632, file: !14, line: 2060, baseType: !639, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !632, file: !14, line: 2062, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !417, !123}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !632, file: !14, line: 2063, baseType: !648, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!123, !417, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !632, file: !14, line: 2064, baseType: !654, size: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!123, !417}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !632, file: !14, line: 2065, baseType: !639, size: 64, offset: 384)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !632, file: !14, line: 2066, baseType: !602, size: 64, offset: 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !632, file: !14, line: 2067, baseType: !660, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{!123, !568, !123}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !632, file: !14, line: 2068, baseType: !664, size: 64, offset: 576)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!123, !568, !13}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !632, file: !14, line: 2069, baseType: !668, size: 64, offset: 640)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{!123, !568}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !632, file: !14, line: 2070, baseType: !664, size: 64, offset: 704)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !632, file: !14, line: 2071, baseType: !668, size: 64, offset: 768)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !632, file: !14, line: 2072, baseType: !674, size: 64, offset: 832)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!123, !452, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !632, file: !14, line: 2073, baseType: !680, size: 64, offset: 896)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!123, !568, !683, !337}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !632, file: !14, line: 2074, baseType: !602, size: 64, offset: 960)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !632, file: !14, line: 2076, baseType: !686, size: 64, offset: 1024)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!123, !689, !452}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !691, line: 66, flags: DIFlagFwdDecl)
!691 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!692 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !632, file: !14, line: 2077, baseType: !686, size: 64, offset: 1088)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !632, file: !14, line: 2078, baseType: !686, size: 64, offset: 1152)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !632, file: !14, line: 2079, baseType: !686, size: 64, offset: 1216)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !632, file: !14, line: 2081, baseType: !696, size: 64, offset: 1280)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = !DISubroutineType(types: !698)
!698 = !{!369, !568, !123, !337, !384, !578}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !632, file: !14, line: 2082, baseType: !700, size: 64, offset: 1344)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!369, !568, !123, !256, !384, !578}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !632, file: !14, line: 2083, baseType: !704, size: 64, offset: 1408)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!707, !417}
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !19, line: 296, size: 1664, elements: !710)
!710 = !{!711, !712, !713, !714, !715, !736, !737, !738, !739, !755, !756, !757}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !709, file: !19, line: 297, baseType: !612, size: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !709, file: !19, line: 298, baseType: !238, size: 128, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !709, file: !19, line: 299, baseType: !238, size: 128, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !709, file: !19, line: 300, baseType: !238, size: 128, offset: 384)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !709, file: !19, line: 301, baseType: !716, size: 256, offset: 512)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !717, line: 66, size: 256, elements: !718)
!717 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!718 = !{!719, !728, !730, !735}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !716, file: !717, line: 67, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !721, line: 13, baseType: !722)
!721 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !239, line: 181, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 179, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !723, file: !239, line: 180, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !296, line: 22, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !298, line: 30, baseType: !580)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !716, file: !717, line: 68, baseType: !729, size: 32, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !276, line: 23, baseType: !275)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !716, file: !717, line: 70, baseType: !731, size: 32, offset: 96)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !732, line: 15, size: 32, elements: !733)
!732 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !731, file: !732, line: 20, baseType: !287, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !716, file: !717, line: 72, baseType: !238, size: 128, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !709, file: !19, line: 302, baseType: !267, size: 32, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !709, file: !19, line: 303, baseType: !287, size: 32, offset: 800)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !709, file: !19, line: 304, baseType: !568, size: 64, offset: 832)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !709, file: !19, line: 305, baseType: !740, size: 64, offset: 896)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !19, line: 68, size: 64, elements: !741)
!741 = !{!742, !754}
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !740, file: !19, line: 69, baseType: !743, size: 32)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !740, file: !19, line: 69, size: 32, elements: !744)
!744 = !{!745, !746, !747}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !743, file: !19, line: 70, baseType: !423, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !743, file: !19, line: 71, baseType: !432, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !743, file: !19, line: 72, baseType: !748, size: 32)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !749, line: 24, baseType: !750)
!749 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !749, line: 22, size: 32, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !750, file: !749, line: 23, baseType: !753, size: 32)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !749, line: 20, baseType: !429)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !740, file: !19, line: 74, baseType: !18, size: 32, offset: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !709, file: !19, line: 306, baseType: !578, size: 64, offset: 960)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !709, file: !19, line: 307, baseType: !387, size: 64, offset: 1024)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !709, file: !19, line: 308, baseType: !758, size: 576, offset: 1088)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !19, line: 205, size: 576, elements: !759)
!759 = !{!760, !762, !763, !764, !765, !766, !767, !768, !771}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !758, file: !19, line: 206, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !19, line: 66, baseType: !580)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !758, file: !19, line: 207, baseType: !761, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !758, file: !19, line: 208, baseType: !761, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !758, file: !19, line: 209, baseType: !761, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !758, file: !19, line: 210, baseType: !761, size: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !758, file: !19, line: 211, baseType: !761, size: 64, offset: 320)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !758, file: !19, line: 212, baseType: !761, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !758, file: !19, line: 213, baseType: !769, size: 64, offset: 448)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !770, line: 8, baseType: !727)
!770 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!771 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !758, file: !19, line: 214, baseType: !769, size: 64, offset: 512)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !632, file: !14, line: 2085, baseType: !773, size: 64, offset: 1472)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!373, !568, !776}
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !778, line: 15, size: 256, elements: !779)
!778 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!779 = !{!780, !782, !783, !784, !785}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !777, file: !778, line: 16, baseType: !781, size: 32)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !239, line: 154, baseType: !7)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !777, file: !778, line: 19, baseType: !123, size: 32, offset: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !777, file: !778, line: 26, baseType: !387, size: 64, offset: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !777, file: !778, line: 33, baseType: !387, size: 64, offset: 128)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !777, file: !778, line: 36, baseType: !786, size: 64, offset: 192)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !778, line: 36, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !632, file: !14, line: 2087, baseType: !773, size: 64, offset: 1536)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !632, file: !14, line: 2089, baseType: !602, size: 64, offset: 1600)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !569, file: !14, line: 1198, baseType: !791, size: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !19, line: 324, size: 704, elements: !794)
!794 = !{!795, !799, !803, !807, !808, !809, !810, !811, !816, !821, !825}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !793, file: !19, line: 325, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!123, !708}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !793, file: !19, line: 326, baseType: !800, size: 64, offset: 64)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!708, !568, !123}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !793, file: !19, line: 327, baseType: !804, size: 64, offset: 128)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !708}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !793, file: !19, line: 328, baseType: !796, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !793, file: !19, line: 329, baseType: !796, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !793, file: !19, line: 330, baseType: !796, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !793, file: !19, line: 331, baseType: !660, size: 64, offset: 384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !793, file: !19, line: 334, baseType: !812, size: 64, offset: 448)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!815, !417}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !793, file: !19, line: 335, baseType: !817, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!123, !417, !820}
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !793, file: !19, line: 337, baseType: !822, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!123, !417, !815}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !793, file: !19, line: 339, baseType: !826, size: 64, offset: 640)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DISubroutineType(types: !828)
!828 = !{!123, !568, !829}
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !569, file: !14, line: 1199, baseType: !831, size: 64, offset: 512)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !833)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !19, line: 430, size: 704, elements: !834)
!834 = !{!835, !846, !847, !851, !852, !853, !868, !891, !895, !896, !919}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !833, file: !19, line: 431, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!123, !568, !123, !123, !839}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !842, line: 8, size: 128, elements: !843)
!842 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!843 = !{!844, !845}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !841, file: !842, line: 9, baseType: !562, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !841, file: !842, line: 10, baseType: !452, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !833, file: !19, line: 432, baseType: !660, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !833, file: !19, line: 433, baseType: !848, size: 64, offset: 128)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{!123, !568, !7}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !833, file: !19, line: 434, baseType: !848, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !833, file: !19, line: 435, baseType: !660, size: 64, offset: 256)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !833, file: !19, line: 436, baseType: !854, size: 64, offset: 320)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{!123, !568, !123, !857}
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !19, line: 417, size: 256, elements: !859)
!859 = !{!860, !861, !862, !863, !864, !865, !866, !867}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !858, file: !19, line: 418, baseType: !123, size: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !858, file: !19, line: 419, baseType: !7, size: 32, offset: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !858, file: !19, line: 420, baseType: !7, size: 32, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !858, file: !19, line: 422, baseType: !7, size: 32, offset: 96)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !858, file: !19, line: 423, baseType: !7, size: 32, offset: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !858, file: !19, line: 424, baseType: !7, size: 32, offset: 160)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !858, file: !19, line: 425, baseType: !7, size: 32, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !858, file: !19, line: 426, baseType: !7, size: 32, offset: 224)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !833, file: !19, line: 437, baseType: !869, size: 64, offset: 384)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DISubroutineType(types: !871)
!871 = !{!123, !568, !740, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !19, line: 345, size: 960, elements: !874)
!874 = !{!875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !873, file: !19, line: 346, baseType: !123, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !873, file: !19, line: 347, baseType: !490, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !873, file: !19, line: 348, baseType: !490, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !873, file: !19, line: 349, baseType: !490, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !873, file: !19, line: 350, baseType: !490, size: 64, offset: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !873, file: !19, line: 351, baseType: !490, size: 64, offset: 320)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !873, file: !19, line: 352, baseType: !490, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !873, file: !19, line: 353, baseType: !726, size: 64, offset: 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !873, file: !19, line: 355, baseType: !726, size: 64, offset: 512)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !873, file: !19, line: 356, baseType: !123, size: 32, offset: 576)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !873, file: !19, line: 357, baseType: !123, size: 32, offset: 608)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !873, file: !19, line: 358, baseType: !490, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !873, file: !19, line: 359, baseType: !490, size: 64, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !873, file: !19, line: 360, baseType: !490, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !873, file: !19, line: 361, baseType: !726, size: 64, offset: 832)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !873, file: !19, line: 362, baseType: !123, size: 32, offset: 896)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !833, file: !19, line: 438, baseType: !892, size: 64, offset: 448)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!123, !568, !829, !872}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !833, file: !19, line: 440, baseType: !869, size: 64, offset: 512)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !833, file: !19, line: 441, baseType: !897, size: 64, offset: 576)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!123, !568, !900}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !19, line: 411, size: 1408, elements: !902)
!902 = !{!903, !904}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !901, file: !19, line: 412, baseType: !7, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !901, file: !19, line: 413, baseType: !905, size: 1344, offset: 64)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 1344, elements: !338)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !19, line: 397, size: 448, elements: !907)
!907 = !{!908, !909, !910, !911, !912, !913, !914, !915, !916, !918}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !906, file: !19, line: 398, baseType: !7, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !906, file: !19, line: 399, baseType: !7, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !906, file: !19, line: 401, baseType: !7, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !906, file: !19, line: 402, baseType: !7, size: 32, offset: 96)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !906, file: !19, line: 403, baseType: !7, size: 32, offset: 128)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !906, file: !19, line: 404, baseType: !7, size: 32, offset: 160)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !906, file: !19, line: 405, baseType: !7, size: 32, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !906, file: !19, line: 406, baseType: !492, size: 64, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !906, file: !19, line: 407, baseType: !917, size: 64, offset: 320)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !239, line: 132, baseType: !490)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !906, file: !19, line: 408, baseType: !917, size: 64, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !833, file: !19, line: 442, baseType: !848, size: 64, offset: 640)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !569, file: !14, line: 1200, baseType: !921, size: 64, offset: 576)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !923)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !569, file: !14, line: 1201, baseType: !387, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !569, file: !14, line: 1202, baseType: !387, size: 64, offset: 704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !569, file: !14, line: 1203, baseType: !387, size: 64, offset: 768)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !569, file: !14, line: 1204, baseType: !452, size: 64, offset: 832)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !569, file: !14, line: 1205, baseType: !929, size: 320, offset: 896)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !930, line: 48, size: 320, elements: !931)
!930 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!931 = !{!932, !933, !934, !935, !936}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !929, file: !930, line: 49, baseType: !720, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !929, file: !930, line: 55, baseType: !720, size: 64, offset: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !929, file: !930, line: 57, baseType: !731, size: 32, offset: 128)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !929, file: !930, line: 59, baseType: !729, size: 32, offset: 160)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !929, file: !930, line: 60, baseType: !238, size: 128, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !569, file: !14, line: 1206, baseType: !123, size: 32, offset: 1216)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !569, file: !14, line: 1207, baseType: !287, size: 32, offset: 1248)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !569, file: !14, line: 1209, baseType: !232, size: 64, offset: 1280)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !569, file: !14, line: 1211, baseType: !941, size: 64, offset: 1344)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !569, file: !14, line: 1223, baseType: !946, size: 64, offset: 1408)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !469, line: 34, size: 64, elements: !947)
!947 = !{!948}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !946, file: !469, line: 35, baseType: !472, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !569, file: !14, line: 1224, baseType: !238, size: 128, offset: 1472)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !569, file: !14, line: 1225, baseType: !951, size: 64, offset: 1600)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !953, line: 40, size: 7424, elements: !954)
!953 = !DIFile(filename: "./include/linux/blk_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b57ddd3a65e6bb0d967309f2bec65a56")
!954 = !{!955, !957, !958, !3271, !3272, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3315, !3316}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bd_start_sect", scope: !952, file: !953, line: 41, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !239, line: 131, baseType: !490)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "bd_nr_sectors", scope: !952, file: !953, line: 42, baseType: !956, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bd_disk", scope: !952, file: !953, line: 43, baseType: !959, size: 64, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !156, line: 128, size: 4544, elements: !961)
!961 = !{!962, !963, !964, !965, !967, !968, !969, !976, !977, !3217, !3218, !3219, !3220, !3221, !3222, !3223, !3224, !3227, !3228, !3229, !3230, !3233, !3234, !3247, !3250, !3251, !3254, !3255, !3256, !3257}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !960, file: !156, line: 133, baseType: !123, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "first_minor", scope: !960, file: !156, line: 134, baseType: !123, size: 32, offset: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "minors", scope: !960, file: !156, line: 135, baseType: !123, size: 32, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "disk_name", scope: !960, file: !156, line: 137, baseType: !966, size: 256, offset: 96)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 256, elements: !499)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !960, file: !156, line: 139, baseType: !307, size: 16, offset: 352)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "event_flags", scope: !960, file: !156, line: 140, baseType: !307, size: 16, offset: 368)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "part_tbl", scope: !960, file: !156, line: 142, baseType: !970, size: 128, offset: 384)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !971, line: 296, size: 128, elements: !972)
!971 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !970, file: !971, line: 297, baseType: !267, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !970, file: !971, line: 299, baseType: !781, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !970, file: !971, line: 300, baseType: !232, size: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "part0", scope: !960, file: !156, line: 143, baseType: !951, size: 64, offset: 512)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !960, file: !156, line: 145, baseType: !978, size: 64, offset: 576)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_device_operations", file: !156, line: 1388, size: 1152, elements: !981)
!981 = !{!982, !3134, !3138, !3143, !3147, !3151, !3152, !3156, !3157, !3163, !3167, !3168, !3172, !3198, !3202, !3207, !3208, !3212}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "submit_bio", scope: !980, file: !156, line: 1389, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio", file: !953, line: 265, size: 960, elements: !988)
!988 = !{!989, !990, !991, !993, !994, !995, !997, !998, !1006, !1008, !1011, !1012, !1015, !1019, !1020, !1022, !1023, !1024, !1025, !3090, !3132}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "bi_next", scope: !987, file: !953, line: 266, baseType: !986, size: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bdev", scope: !987, file: !953, line: 267, baseType: !951, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "bi_opf", scope: !987, file: !953, line: 268, baseType: !992, size: 32, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_opf_t", file: !953, line: 256, baseType: !487)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "bi_flags", scope: !987, file: !953, line: 271, baseType: !307, size: 16, offset: 160)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "bi_ioprio", scope: !987, file: !953, line: 272, baseType: !307, size: 16, offset: 176)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "bi_status", scope: !987, file: !953, line: 273, baseType: !996, size: 8, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_status_t", file: !953, line: 97, baseType: !295)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_remaining", scope: !987, file: !953, line: 274, baseType: !287, size: 32, offset: 224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iter", scope: !987, file: !953, line: 276, baseType: !999, size: 160, align: 32, offset: 256)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bvec_iter", file: !1000, line: 77, size: 160, align: 32, elements: !1001)
!1000 = !DIFile(filename: "./include/linux/bvec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b9bd326f7e1a9ed4bc3baca0011068cc")
!1001 = !{!1002, !1003, !1004, !1005}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "bi_sector", scope: !999, file: !1000, line: 78, baseType: !956, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "bi_size", scope: !999, file: !1000, line: 80, baseType: !7, size: 32, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "bi_idx", scope: !999, file: !1000, line: 82, baseType: !7, size: 32, offset: 96)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "bi_bvec_done", scope: !999, file: !1000, line: 84, baseType: !7, size: 32, offset: 128)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "bi_cookie", scope: !987, file: !953, line: 278, baseType: !1007, size: 32, offset: 416)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_qc_t", file: !953, line: 258, baseType: !7)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "bi_end_io", scope: !987, file: !953, line: 279, baseType: !1009, size: 64, offset: 448)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "bio_end_io_t", file: !953, line: 20, baseType: !984)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "bi_private", scope: !987, file: !953, line: 280, baseType: !232, size: 64, offset: 512)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "bi_blkg", scope: !987, file: !953, line: 288, baseType: !1013, size: 64, offset: 576)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "blkcg_gq", file: !953, line: 288, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bi_issue", scope: !987, file: !953, line: 289, baseType: !1016, size: 64, offset: 640)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_issue", file: !953, line: 228, size: 64, elements: !1017)
!1017 = !{!1018}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1016, file: !953, line: 229, baseType: !490, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "bi_iocost_cost", scope: !987, file: !953, line: 291, baseType: !490, size: 64, offset: 704)
!1020 = !DIDerivedType(tag: DW_TAG_member, scope: !987, file: !953, line: 299, baseType: !1021, offset: 768)
!1021 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !987, file: !953, line: 299, elements: !620)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "bi_vcnt", scope: !987, file: !953, line: 305, baseType: !307, size: 16, offset: 768)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "bi_max_vecs", scope: !987, file: !953, line: 311, baseType: !307, size: 16, offset: 784)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "__bi_cnt", scope: !987, file: !953, line: 313, baseType: !287, size: 32, offset: 800)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bi_io_vec", scope: !987, file: !953, line: 315, baseType: !1026, size: 64, offset: 832)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !1000, line: 31, size: 128, elements: !1028)
!1028 = !{!1029, !3088, !3089}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "bv_page", scope: !1027, file: !1000, line: 32, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !46, line: 74, size: 512, align: 128, elements: !1032)
!1032 = !{!1033, !1034, !3082, !3087}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !46, line: 75, baseType: !387, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !46, line: 83, baseType: !1035, size: 320, offset: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !46, line: 83, size: 320, elements: !1036)
!1036 = !{!1037, !1058, !1072, !1076, !3081}
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !46, line: 84, baseType: !1038, size: 320)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !46, line: 84, size: 320, elements: !1039)
!1039 = !{!1040, !1051, !1052, !1057}
!1040 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !46, line: 90, baseType: !1041, size: 128)
!1041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !46, line: 90, size: 128, elements: !1042)
!1042 = !{!1043, !1044, !1049, !1050}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1041, file: !46, line: 91, baseType: !238, size: 128)
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1041, file: !46, line: 94, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1041, file: !46, line: 94, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1045, file: !46, line: 96, baseType: !232, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1045, file: !46, line: 98, baseType: !7, size: 32, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1041, file: !46, line: 102, baseType: !238, size: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1041, file: !46, line: 103, baseType: !238, size: 128)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1038, file: !46, line: 106, baseType: !413, size: 64, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !46, line: 107, baseType: !1053, size: 64, offset: 192)
!1053 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !46, line: 107, size: 64, elements: !1054)
!1054 = !{!1055, !1056}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1053, file: !46, line: 108, baseType: !387, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1053, file: !46, line: 109, baseType: !387, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1038, file: !46, line: 117, baseType: !387, size: 64, offset: 256)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !46, line: 119, baseType: !1059, size: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !46, line: 119, size: 320, elements: !1060)
!1060 = !{!1061, !1062, !1065, !1066, !1067}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1059, file: !46, line: 124, baseType: !387, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1059, file: !46, line: 125, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !46, line: 125, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1059, file: !46, line: 126, baseType: !387, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1059, file: !46, line: 127, baseType: !387, size: 64, offset: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !46, line: 128, baseType: !1068, size: 64, offset: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !46, line: 128, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1068, file: !46, line: 133, baseType: !387, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1068, file: !46, line: 138, baseType: !720, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !46, line: 141, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !46, line: 141, size: 64, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1073, file: !46, line: 142, baseType: !387, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1035, file: !46, line: 144, baseType: !1077, size: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1035, file: !46, line: 144, size: 128, elements: !1078)
!1078 = !{!1079, !3080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1077, file: !46, line: 146, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !38, line: 126, size: 1216, elements: !1082)
!1082 = !{!1083, !1093, !1124, !1135, !1136, !1137, !1138, !3062, !3063, !3064}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1081, file: !38, line: 127, baseType: !1084, size: 384)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !38, line: 21, size: 384, elements: !1085)
!1085 = !{!1086, !1087, !1089, !1090, !1091, !1092}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1084, file: !38, line: 22, baseType: !387, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1084, file: !38, line: 23, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1084, file: !38, line: 24, baseType: !1088, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1084, file: !38, line: 25, baseType: !387, size: 64, offset: 192)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1084, file: !38, line: 26, baseType: !387, size: 64, offset: 256)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1084, file: !38, line: 27, baseType: !387, size: 64, offset: 320)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1081, file: !38, line: 128, baseType: !1094, size: 128, offset: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1095, line: 105, size: 128, elements: !1096)
!1095 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1094, file: !1095, line: 110, baseType: !387, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1094, file: !1095, line: 118, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1095, line: 95, size: 448, elements: !1101)
!1101 = !{!1102, !1103, !1109, !1110, !1113, !1114, !1123}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1100, file: !1095, line: 96, baseType: !720, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1100, file: !1095, line: 97, baseType: !1104, size: 64, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1095, line: 60, baseType: !1106)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{null, !1108}
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1100, file: !1095, line: 98, baseType: !1104, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1100, file: !1095, line: 99, baseType: !1111, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !239, line: 35, baseType: !1112)
!1112 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1100, file: !1095, line: 100, baseType: !1111, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1100, file: !1095, line: 101, baseType: !1115, size: 128, align: 64, offset: 256)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !239, line: 232, size: 128, align: 64, elements: !1116)
!1116 = !{!1117, !1119}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1115, file: !239, line: 233, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1115, file: !239, line: 234, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1118}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1100, file: !1095, line: 102, baseType: !1108, size: 64, offset: 384)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1081, file: !38, line: 129, baseType: !1125, size: 256, offset: 512)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1126, line: 26, size: 256, elements: !1127)
!1126 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1125, file: !1126, line: 27, baseType: !7, size: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1125, file: !1126, line: 28, baseType: !1130, size: 192, offset: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1131, line: 43, size: 192, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1130, file: !1131, line: 44, baseType: !729, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1130, file: !1131, line: 45, baseType: !238, size: 128, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1081, file: !38, line: 130, baseType: !37, size: 32, offset: 768)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1081, file: !38, line: 131, baseType: !7, size: 32, offset: 800)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1081, file: !38, line: 132, baseType: !387, size: 64, offset: 832)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1081, file: !38, line: 133, baseType: !1139, size: 64, offset: 896)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !38, line: 77, size: 192, elements: !1142)
!1142 = !{!1143, !1147, !3058}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1141, file: !38, line: 83, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DISubroutineType(types: !1146)
!1146 = !{null, !1030}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1141, file: !38, line: 89, baseType: !1148, size: 64, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !46, line: 1184, baseType: !7)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1154, line: 512, size: 896, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1155 = !{!1156, !3025, !3026, !3033, !3040, !3050, !3051, !3052, !3054, !3056}
!1156 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1154, line: 513, baseType: !1157, size: 320)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1153, file: !1154, line: 513, size: 320, elements: !1158)
!1158 = !{!1159, !3021, !3022, !3023, !3024}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1157, file: !1154, line: 514, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !46, line: 625, size: 1344, elements: !1162)
!1162 = !{!1163, !1172, !2926, !2932, !2939, !2940, !2945, !2946, !2951, !2952, !2955, !3014, !3015, !3016, !3017, !3018, !3019}
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !46, line: 628, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !46, line: 628, size: 128, elements: !1165)
!1165 = !{!1166, !1171}
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1164, file: !46, line: 629, baseType: !1167, size: 128)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1164, file: !46, line: 629, size: 128, elements: !1168)
!1168 = !{!1169, !1170}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1167, file: !46, line: 631, baseType: !387, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1167, file: !46, line: 632, baseType: !387, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1164, file: !46, line: 635, baseType: !1115, size: 128, align: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1161, file: !46, line: 639, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !46, line: 733, size: 10240, elements: !1175)
!1175 = !{!1176, !2924}
!1176 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !46, line: 734, baseType: !1177, size: 10240)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1174, file: !46, line: 734, size: 10240, elements: !1178)
!1178 = !{!1179, !1183, !1196, !2799, !2800, !2801, !2802, !2803, !2804, !2813, !2814, !2815, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2854, !2856, !2859, !2904, !2905, !2906, !2909, !2910, !2911, !2914, !2915, !2916, !2922, !2923}
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1177, file: !46, line: 739, baseType: !1180, size: 512, align: 512)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1177, file: !46, line: 739, size: 512, align: 512, elements: !1181)
!1181 = !{!1182}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1180, file: !46, line: 747, baseType: !287, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1177, file: !46, line: 750, baseType: !1184, size: 128, offset: 512)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1185, line: 218, size: 128, elements: !1186)
!1185 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1186 = !{!1187, !1194, !1195}
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1185, line: 219, baseType: !1188, size: 32)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !1185, line: 219, size: 32, elements: !1189)
!1189 = !{!1190, !1191}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1188, file: !1185, line: 220, baseType: !267, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1188, file: !1185, line: 221, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1185, line: 197, baseType: !1193)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1185, line: 197, elements: !620)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1184, file: !1185, line: 223, baseType: !7, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1184, file: !1185, line: 224, baseType: !232, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1177, file: !46, line: 752, baseType: !1197, size: 64, offset: 640)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{!387, !1200, !387, !387, !387, !387}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !1202)
!1202 = !{!1203, !1214, !1215, !1217, !1218, !1219, !1220, !1221, !1284, !1484, !1493, !1494, !1495, !2789, !2790, !2791, !2792, !2794, !2795, !2798}
!1203 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !14, line: 995, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1201, file: !14, line: 995, size: 128, elements: !1205)
!1205 = !{!1206, !1212, !1213}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1204, file: !14, line: 996, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1208, line: 60, size: 64, elements: !1209)
!1208 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1207, file: !1208, line: 61, baseType: !1211, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1204, file: !14, line: 997, baseType: !1115, size: 128, align: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1204, file: !14, line: 998, baseType: !7, size: 32)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1201, file: !14, line: 1005, baseType: !267, size: 32, offset: 128)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1201, file: !14, line: 1006, baseType: !1216, size: 32, offset: 160)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !239, line: 156, baseType: !7)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1201, file: !14, line: 1007, baseType: !720, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1201, file: !14, line: 1008, baseType: !716, size: 256, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1201, file: !14, line: 1009, baseType: !578, size: 64, offset: 512)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1201, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1201, file: !14, line: 1011, baseType: !1222, size: 256, offset: 640)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !1223)
!1223 = !{!1224, !1245, !1280, !1281, !1282, !1283}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1222, file: !14, line: 949, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1226, line: 34, baseType: !1227)
!1226 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1226, line: 25, size: 64, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1227, file: !1226, line: 26, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1231, line: 27, baseType: !1232)
!1231 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1231, line: 13, size: 64, elements: !1233)
!1233 = !{!1234, !1244}
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !1231, line: 14, baseType: !1235, size: 32)
!1235 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !1231, line: 14, size: 32, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1235, file: !1231, line: 15, baseType: !287, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !1231, line: 16, baseType: !1239, size: 32)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1235, file: !1231, line: 16, size: 32, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1239, file: !1231, line: 18, baseType: !295, size: 8)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1239, file: !1231, line: 19, baseType: !1243, size: 24, offset: 8)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 24, elements: !338)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1232, file: !1231, line: 26, baseType: !279, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1222, file: !14, line: 950, baseType: !1246, size: 64, offset: 64)
!1246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1247, size: 64)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !30, line: 59, size: 768, elements: !1248)
!1248 = !{!1249, !1255, !1256, !1257, !1261, !1262, !1269, !1270}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1247, file: !30, line: 61, baseType: !1250, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1251, line: 113, baseType: !1252)
!1251 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1251, line: 111, size: 32, elements: !1253)
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1252, file: !1251, line: 112, baseType: !287, size: 32)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1247, file: !30, line: 62, baseType: !7, size: 32, offset: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1247, file: !30, line: 63, baseType: !267, size: 32, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1247, file: !30, line: 65, baseType: !1258, size: 256, offset: 128)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !608, size: 256, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 4)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1247, file: !30, line: 66, baseType: !608, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1247, file: !30, line: 68, baseType: !1263, size: 192, offset: 448)
!1263 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1264, line: 41, baseType: !1265)
!1264 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1264, line: 37, size: 192, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1265, file: !1264, line: 38, baseType: !267, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1265, file: !1264, line: 39, baseType: !238, size: 128, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1247, file: !30, line: 69, baseType: !1115, size: 128, align: 64, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1247, file: !30, line: 70, baseType: !1271, offset: 768)
!1271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1272, elements: !1278)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !30, line: 54, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1272, file: !30, line: 55, baseType: !123, size: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1272, file: !30, line: 56, baseType: !1276, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !30, line: 56, flags: DIFlagFwdDecl)
!1278 = !{!1279}
!1279 = !DISubrange(count: -1)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1222, file: !14, line: 951, baseType: !29, size: 32, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1222, file: !14, line: 952, baseType: !423, size: 32, offset: 160)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1222, file: !14, line: 952, baseType: !423, size: 32, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1222, file: !14, line: 953, baseType: !123, size: 32, offset: 224)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1201, file: !14, line: 1012, baseType: !1285, size: 64, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1287)
!1287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1288, line: 110, size: 1472, elements: !1289)
!1288 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1289 = !{!1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1306, !1307, !1308, !1309, !1310, !1311, !1429, !1430, !1431, !1432, !1433, !1464, !1467, !1471, !1479}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1287, file: !1288, line: 111, baseType: !720, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1287, file: !1288, line: 112, baseType: !423, size: 32, offset: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1287, file: !1288, line: 113, baseType: !432, size: 32, offset: 96)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1287, file: !1288, line: 114, baseType: !423, size: 32, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1287, file: !1288, line: 115, baseType: !432, size: 32, offset: 160)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1287, file: !1288, line: 116, baseType: !423, size: 32, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1287, file: !1288, line: 117, baseType: !432, size: 32, offset: 224)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1287, file: !1288, line: 118, baseType: !423, size: 32, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1287, file: !1288, line: 119, baseType: !432, size: 32, offset: 288)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1287, file: !1288, line: 120, baseType: !7, size: 32, offset: 320)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1287, file: !1288, line: 121, baseType: !1301, size: 64, offset: 384)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1302, line: 24, baseType: !1303)
!1302 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1302, line: 24, size: 64, elements: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1303, file: !1302, line: 24, baseType: !490, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1287, file: !1288, line: 122, baseType: !1301, size: 64, offset: 448)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1287, file: !1288, line: 123, baseType: !1301, size: 64, offset: 512)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1287, file: !1288, line: 124, baseType: !1301, size: 64, offset: 576)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1287, file: !1288, line: 125, baseType: !1301, size: 64, offset: 640)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1287, file: !1288, line: 127, baseType: !299, size: 8, offset: 704)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1287, file: !1288, line: 129, baseType: !1312, size: 64, offset: 768)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1314, line: 195, size: 1728, elements: !1315)
!1314 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1315 = !{!1316, !1317, !1322, !1334, !1335, !1338, !1339, !1344, !1345, !1346, !1347, !1350, !1351, !1352, !1354, !1355, !1393, !1414}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1313, file: !1314, line: 196, baseType: !1250, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1313, file: !1314, line: 197, baseType: !1318, size: 32, offset: 32)
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1314, line: 28, baseType: !1319)
!1319 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !239, line: 104, baseType: !1320)
!1320 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !296, line: 20, baseType: !1321)
!1321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !298, line: 26, baseType: !123)
!1322 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1314, line: 198, baseType: !1323, size: 192, offset: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1314, line: 198, size: 192, elements: !1324)
!1324 = !{!1325, !1326}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1323, file: !1314, line: 199, baseType: !238, size: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1323, file: !1314, line: 200, baseType: !1327, size: 192, align: 64)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !1328, line: 5, size: 192, align: 64, elements: !1329)
!1328 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!1329 = !{!1330, !1331, !1333}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !1327, file: !1328, line: 6, baseType: !387, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !1327, file: !1328, line: 7, baseType: !1332, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !1327, file: !1328, line: 8, baseType: !1332, size: 64, offset: 128)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1313, file: !1314, line: 205, baseType: !929, size: 320, offset: 256)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1313, file: !1314, line: 206, baseType: !1336, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1314, line: 206, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1313, file: !1314, line: 207, baseType: !232, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1314, line: 208, baseType: !1340, size: 64, offset: 704)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1314, line: 208, size: 64, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1340, file: !1314, line: 209, baseType: !769, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1340, file: !1314, line: 210, baseType: !769, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1313, file: !1314, line: 212, baseType: !769, size: 64, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1313, file: !1314, line: 213, baseType: !423, size: 32, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1313, file: !1314, line: 214, baseType: !432, size: 32, offset: 864)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1313, file: !1314, line: 215, baseType: !1348, size: 32, offset: 896)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1314, line: 31, baseType: !1349)
!1349 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !239, line: 110, baseType: !486)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1313, file: !1314, line: 216, baseType: !307, size: 16, offset: 928)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1313, file: !1314, line: 217, baseType: !307, size: 16, offset: 944)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1313, file: !1314, line: 221, baseType: !1353, size: 16, offset: 960)
!1353 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1313, file: !1314, line: 228, baseType: !387, size: 64, offset: 1024)
!1355 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1314, line: 245, baseType: !1356, size: 320, offset: 1088)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1314, line: 245, size: 320, elements: !1357)
!1357 = !{!1358, !1385}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1356, file: !1314, line: 246, baseType: !1359, size: 320)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1314, line: 114, size: 320, elements: !1360)
!1360 = !{!1361, !1362, !1374, !1377, !1384}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1359, file: !1314, line: 116, baseType: !387, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1314, line: 117, baseType: !1363, size: 64, offset: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1314, line: 117, size: 64, elements: !1364)
!1364 = !{!1365, !1373}
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1363, file: !1314, line: 118, baseType: !1366, size: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1363, file: !1314, line: 118, size: 64, elements: !1367)
!1367 = !{!1368, !1369}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1366, file: !1314, line: 120, baseType: !305, size: 16)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1366, file: !1314, line: 121, baseType: !1370, size: 48, offset: 16)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 48, elements: !1371)
!1371 = !{!1372}
!1372 = !DISubrange(count: 6)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1363, file: !1314, line: 127, baseType: !387, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1359, file: !1314, line: 129, baseType: !1375, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1314, line: 102, flags: DIFlagFwdDecl)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1359, file: !1314, line: 130, baseType: !1378, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1314, line: 108, size: 192, elements: !1380)
!1380 = !{!1381, !1382, !1383}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1379, file: !1314, line: 109, baseType: !1115, size: 128, align: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1379, file: !1314, line: 110, baseType: !1250, size: 32, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1379, file: !1314, line: 111, baseType: !1111, size: 8, offset: 160)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1359, file: !1314, line: 131, baseType: !256, size: 64, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1356, file: !1314, line: 247, baseType: !1386, size: 320)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1356, file: !1314, line: 247, size: 320, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1386, file: !1314, line: 248, baseType: !387, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1386, file: !1314, line: 249, baseType: !387, size: 64, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1386, file: !1314, line: 250, baseType: !1375, size: 64, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1386, file: !1314, line: 251, baseType: !1378, size: 64, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1386, file: !1314, line: 252, baseType: !337, size: 64, offset: 256)
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1314, line: 260, baseType: !1394, size: 256, offset: 1408)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1314, line: 260, size: 256, elements: !1395)
!1395 = !{!1396, !1402}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1394, file: !1314, line: 261, baseType: !1397, size: 256)
!1397 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1314, line: 134, size: 256, elements: !1398)
!1398 = !{!1399, !1400}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1397, file: !1314, line: 135, baseType: !232, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1397, file: !1314, line: 136, baseType: !1401, size: 256)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 256, elements: !1259)
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1394, file: !1314, line: 262, baseType: !1403, size: 256)
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1394, file: !1314, line: 262, size: 256, elements: !1404)
!1404 = !{!1405, !1406}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1403, file: !1314, line: 264, baseType: !238, size: 128)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1403, file: !1314, line: 265, baseType: !1407, size: 128, offset: 128)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1408, line: 22, size: 128, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1409 = !{!1410, !1413}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1407, file: !1408, line: 23, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1408, line: 23, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1407, file: !1408, line: 24, baseType: !387, size: 64, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1313, file: !1314, line: 280, baseType: !1415, size: 64, offset: 1664)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1314, line: 176, size: 192, elements: !1417)
!1417 = !{!1418, !1427, !1428}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1416, file: !1314, line: 177, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1314, line: 171, baseType: !1420)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!123, !1312, !1423, !1425, !1312}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1376)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1416, file: !1314, line: 178, baseType: !1312, size: 64, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1416, file: !1314, line: 179, baseType: !1375, size: 64, offset: 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1287, file: !1288, line: 130, baseType: !1312, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1287, file: !1288, line: 131, baseType: !1312, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1287, file: !1288, line: 132, baseType: !1312, size: 64, offset: 960)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1287, file: !1288, line: 135, baseType: !232, size: 64, offset: 1024)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1287, file: !1288, line: 137, baseType: !1434, size: 64, offset: 1088)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1436, line: 14, size: 1088, elements: !1437)
!1436 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1437 = !{!1438, !1439, !1448, !1449, !1450, !1451, !1452, !1453}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1435, file: !1436, line: 15, baseType: !1250, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1435, file: !1436, line: 17, baseType: !1440, size: 320, offset: 64)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1441, line: 22, size: 320, elements: !1442)
!1441 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1442 = !{!1443, !1444, !1445, !1446}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !1441, line: 23, baseType: !729, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1440, file: !1441, line: 24, baseType: !726, size: 64, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1440, file: !1441, line: 26, baseType: !238, size: 128, offset: 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1440, file: !1441, line: 28, baseType: !1447, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1435, file: !1436, line: 19, baseType: !387, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1435, file: !1436, line: 20, baseType: !720, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1435, file: !1436, line: 23, baseType: !612, size: 128, offset: 512)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1435, file: !1436, line: 24, baseType: !423, size: 32, offset: 640)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1435, file: !1436, line: 29, baseType: !720, size: 64, offset: 704)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1435, file: !1436, line: 36, baseType: !1454, size: 320, offset: 768)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1455, line: 15, size: 320, elements: !1456)
!1455 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !1455, line: 16, baseType: !729, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1454, file: !1455, line: 18, baseType: !123, size: 32, offset: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1454, file: !1455, line: 19, baseType: !123, size: 32, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1454, file: !1455, line: 20, baseType: !123, size: 32, offset: 96)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1454, file: !1455, line: 21, baseType: !123, size: 32, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1454, file: !1455, line: 22, baseType: !387, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1454, file: !1455, line: 23, baseType: !387, size: 64, offset: 256)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1287, file: !1288, line: 138, baseType: !1465, size: 64, offset: 1152)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !424, line: 18, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1287, file: !1288, line: 139, baseType: !1468, size: 64, offset: 1216)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1470, line: 16, flags: DIFlagFwdDecl)
!1470 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1287, file: !1288, line: 140, baseType: !1472, size: 64, offset: 1280)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1288, line: 25, size: 64, elements: !1474)
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1473, file: !1288, line: 26, baseType: !287, size: 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1473, file: !1288, line: 27, baseType: !123, size: 32, offset: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1473, file: !1288, line: 28, baseType: !1478, offset: 64)
!1478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, elements: !1278)
!1479 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !1288, line: 142, baseType: !1480, size: 128, offset: 1344)
!1480 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1287, file: !1288, line: 142, size: 128, elements: !1481)
!1481 = !{!1482, !1483}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1480, file: !1288, line: 143, baseType: !123, size: 32)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1480, file: !1288, line: 144, baseType: !1115, size: 128, align: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1201, file: !14, line: 1013, baseType: !1485, size: 256, offset: 960)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !1486)
!1486 = !{!1487, !1488, !1489, !1490, !1491, !1492}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1485, file: !14, line: 971, baseType: !387, size: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1485, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1485, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1485, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1485, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1485, file: !14, line: 976, baseType: !578, size: 64, offset: 192)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1201, file: !14, line: 1014, baseType: !841, size: 128, offset: 1216)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1201, file: !14, line: 1015, baseType: !417, size: 64, offset: 1344)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1201, file: !14, line: 1016, baseType: !1496, size: 64, offset: 1408)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !1499)
!1499 = !{!1500, !1501, !1505, !1510, !1514, !1591, !1592, !2681, !2694, !2702, !2706, !2707, !2711, !2712, !2716, !2721, !2722, !2726, !2730, !2736, !2737, !2741, !2742, !2748, !2752, !2756, !2762, !2766, !2770, !2774, !2778, !2779, !2785}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1498, file: !14, line: 1915, baseType: !233, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1498, file: !14, line: 1916, baseType: !1502, size: 64, offset: 64)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{!578, !1200, !578, !123}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1498, file: !14, line: 1917, baseType: !1506, size: 64, offset: 128)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!369, !1200, !337, !384, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1498, file: !14, line: 1918, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{!369, !1200, !256, !384, !1509}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1498, file: !14, line: 1919, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!369, !1518, !1540}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1527, !1528, !1529, !1530}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1519, file: !14, line: 374, baseType: !1200, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1519, file: !14, line: 375, baseType: !578, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1519, file: !14, line: 376, baseType: !1524, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{null, !1518, !373}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1519, file: !14, line: 377, baseType: !232, size: 64, offset: 192)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1519, file: !14, line: 378, baseType: !123, size: 32, offset: 256)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1519, file: !14, line: 379, baseType: !305, size: 16, offset: 288)
!1530 = !DIDerivedType(tag: DW_TAG_member, scope: !1519, file: !14, line: 380, baseType: !1531, size: 64, offset: 320)
!1531 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1519, file: !14, line: 380, size: 64, elements: !1532)
!1532 = !{!1533, !1536}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1531, file: !14, line: 386, baseType: !1534, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1531, file: !14, line: 395, baseType: !1537, size: 64)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{!369, !232}
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1542, line: 41, size: 320, elements: !1543)
!1542 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!1543 = !{!1544, !1545, !1546, !1547, !1548, !1549, !1554, !1586}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !1541, file: !1542, line: 42, baseType: !295, size: 8)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !1541, file: !1542, line: 43, baseType: !1111, size: 8, offset: 8)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !1541, file: !1542, line: 44, baseType: !1111, size: 8, offset: 16)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !1541, file: !1542, line: 45, baseType: !1111, size: 8, offset: 24)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !1541, file: !1542, line: 46, baseType: !1111, size: 8, offset: 32)
!1549 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 47, baseType: !1550, size: 64, offset: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1542, line: 47, size: 64, elements: !1551)
!1551 = !{!1552, !1553}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !1550, file: !1542, line: 48, baseType: !384, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !1550, file: !1542, line: 49, baseType: !123, size: 32)
!1554 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 61, baseType: !1555, size: 128, offset: 128)
!1555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1542, line: 61, size: 128, elements: !1556)
!1556 = !{!1557, !1563}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !1555, file: !1542, line: 67, baseType: !1558, size: 128)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1559, line: 17, size: 128, elements: !1560)
!1559 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1558, file: !1559, line: 19, baseType: !232, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1558, file: !1559, line: 20, baseType: !385, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1555, file: !1542, line: 68, baseType: !1564, size: 128)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1555, file: !1542, line: 68, size: 128, elements: !1565)
!1565 = !{!1566, !1585}
!1566 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !1542, line: 69, baseType: !1567, size: 64)
!1567 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1564, file: !1542, line: 69, size: 64, elements: !1568)
!1568 = !{!1569, !1572, !1579, !1582, !1584}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !1567, file: !1542, line: 71, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1558)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !1567, file: !1542, line: 72, baseType: !1573, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1542, line: 17, size: 128, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1575, file: !1542, line: 18, baseType: !232, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1575, file: !1542, line: 19, baseType: !384, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !1567, file: !1542, line: 73, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1027)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !1567, file: !1542, line: 74, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !1567, file: !1542, line: 75, baseType: !232, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1564, file: !1542, line: 77, baseType: !384, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1541, file: !1542, line: 80, baseType: !1587, size: 64, offset: 256)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1541, file: !1542, line: 80, size: 64, elements: !1588)
!1588 = !{!1589, !1590}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !1587, file: !1542, line: 81, baseType: !387, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !1587, file: !1542, line: 82, baseType: !578, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1498, file: !14, line: 1920, baseType: !1515, size: 64, offset: 320)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1498, file: !14, line: 1921, baseType: !1593, size: 64, offset: 384)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!123, !1518, !1596, !7}
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !156, line: 1559, size: 192, elements: !1598)
!1598 = !{!1599, !2676, !2677}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "req_list", scope: !1597, file: !156, line: 1560, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request", file: !88, line: 80, size: 1984, elements: !1602)
!1602 = !{!1603, !2595, !2596, !2597, !2598, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2627, !2632, !2664, !2673, !2674, !2675}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !1601, file: !88, line: 81, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "request_queue", file: !156, line: 391, size: 7296, elements: !1606)
!1606 = !{!1607, !1608, !1611, !1612, !1615, !1618, !1619, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2569, !2570, !2571, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "last_merge", scope: !1605, file: !156, line: 392, baseType: !1600, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "elevator", scope: !1605, file: !156, line: 393, baseType: !1609, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "elevator_queue", file: !156, line: 30, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "q_usage_counter", scope: !1605, file: !156, line: 395, baseType: !1094, size: 128, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1605, file: !156, line: 397, baseType: !1613, size: 64, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_queue_stats", file: !156, line: 39, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos", scope: !1605, file: !156, line: 398, baseType: !1616, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "rq_qos", file: !156, line: 38, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rq_qos_mutex", scope: !1605, file: !156, line: 399, baseType: !716, size: 256, offset: 384)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ops", scope: !1605, file: !156, line: 401, baseType: !1620, size: 64, offset: 640)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ops", file: !88, line: 537, size: 1152, elements: !1623)
!1623 = !{!1624, !1784, !1788, !1792, !1796, !1800, !1804, !1808, !1812, !1816, !1820, !1824, !1828, !1936, !1940, !1941, !1945, !1949}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rq", scope: !1622, file: !88, line: 541, baseType: !1625, size: 64)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!996, !1628, !1778}
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_hw_ctx", file: !88, line: 288, size: 4096, elements: !1630)
!1630 = !{!1631, !1637, !1667, !1677, !1678, !1679, !1680, !1681, !1682, !1698, !1699, !1716, !1719, !1720, !1721, !1722, !1724, !1725, !1738, !1739, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777}
!1631 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !88, line: 289, baseType: !1632, size: 512, align: 512)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1629, file: !88, line: 289, size: 512, align: 512, elements: !1633)
!1633 = !{!1634, !1635, !1636}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1632, file: !88, line: 291, baseType: !267, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !1632, file: !88, line: 299, baseType: !238, size: 128, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1632, file: !88, line: 304, baseType: !387, size: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "run_work", scope: !1629, file: !88, line: 310, baseType: !1638, size: 704, offset: 512)
!1638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !180, line: 111, size: 704, elements: !1639)
!1639 = !{!1640, !1651, !1663, !1666}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1638, file: !180, line: 112, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !180, line: 98, size: 256, elements: !1642)
!1642 = !{!1643, !1644, !1645}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1641, file: !180, line: 99, baseType: !720, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1641, file: !180, line: 100, baseType: !238, size: 128, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1641, file: !180, line: 101, baseType: !1646, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !180, line: 21, baseType: !1647)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1638, file: !180, line: 113, baseType: !1652, size: 320, offset: 256)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1653, line: 11, size: 320, elements: !1654)
!1653 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1654 = !{!1655, !1656, !1657, !1662}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1652, file: !1653, line: 16, baseType: !612, size: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1652, file: !1653, line: 17, baseType: !387, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1652, file: !1653, line: 18, baseType: !1658, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1661}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1652, file: !1653, line: 19, baseType: !486, size: 32, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1638, file: !180, line: 116, baseType: !1664, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !180, line: 18, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1638, file: !180, line: 117, baseType: !123, size: 32, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1629, file: !88, line: 312, baseType: !1668, size: 64, offset: 1216)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !1669, line: 913, baseType: !1670)
!1669 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1671, size: 64, elements: !1675)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1669, line: 19, size: 64, elements: !1672)
!1672 = !{!1673}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1671, file: !1669, line: 19, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 64, elements: !1675)
!1675 = !{!1676}
!1676 = !DISubrange(count: 1)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu", scope: !1629, file: !88, line: 317, baseType: !123, size: 32, offset: 1280)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "next_cpu_batch", scope: !1629, file: !88, line: 322, baseType: !123, size: 32, offset: 1312)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1629, file: !88, line: 325, baseType: !387, size: 64, offset: 1344)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "sched_data", scope: !1629, file: !88, line: 331, baseType: !232, size: 64, offset: 1408)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !1629, file: !88, line: 335, baseType: !1604, size: 64, offset: 1472)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1629, file: !88, line: 337, baseType: !1683, size: 64, offset: 1536)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_flush_queue", file: !1685, line: 17, size: 512, elements: !1686)
!1685 = !DIFile(filename: "block/blk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "08e4a891c7a7b1c380cd6f0c6d03b93a")
!1686 = !{!1687, !1688, !1689, !1690, !1691, !1692, !1696, !1697}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mq_flush_lock", scope: !1684, file: !1685, line: 18, baseType: !267, size: 32)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_idx", scope: !1684, file: !1685, line: 19, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flush_running_idx", scope: !1684, file: !1685, line: 20, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rq_status", scope: !1684, file: !1685, line: 21, baseType: !996, size: 8, offset: 40)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_since", scope: !1684, file: !1685, line: 22, baseType: !387, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flush_queue", scope: !1684, file: !1685, line: 23, baseType: !1693, size: 256, offset: 128)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 256, elements: !1694)
!1694 = !{!1695}
!1695 = !DISubrange(count: 2)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flush_data_in_flight", scope: !1684, file: !1685, line: 24, baseType: !387, size: 64, offset: 384)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flush_rq", scope: !1684, file: !1685, line: 25, baseType: !1600, size: 64, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1629, file: !88, line: 343, baseType: !232, size: 64, offset: 1600)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_map", scope: !1629, file: !88, line: 349, baseType: !1700, size: 256, offset: 1664)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap", file: !1701, line: 52, size: 256, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/sbitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c1a10e3a5ba3f1b25200b1abce63f43a")
!1702 = !{!1703, !1704, !1705, !1706, !1707, !1714}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1700, file: !1701, line: 56, baseType: !7, size: 32)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !1700, file: !1701, line: 61, baseType: !7, size: 32, offset: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "map_nr", scope: !1700, file: !1701, line: 66, baseType: !7, size: 32, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "round_robin", scope: !1700, file: !1701, line: 71, baseType: !1111, size: 8, offset: 96)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1700, file: !1701, line: 76, baseType: !1708, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_word", file: !1701, line: 29, size: 1024, align: 512, elements: !1710)
!1710 = !{!1711, !1712, !1713}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1709, file: !1701, line: 33, baseType: !387, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "cleared", scope: !1709, file: !1701, line: 38, baseType: !387, size: 64, align: 512, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "swap_lock", scope: !1709, file: !1701, line: 43, baseType: !729, size: 32, offset: 576)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_hint", scope: !1700, file: !1701, line: 84, baseType: !1715, size: 64, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_from", scope: !1629, file: !88, line: 355, baseType: !1717, size: 64, offset: 1920)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_ctx", file: !156, line: 404, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_busy", scope: !1629, file: !88, line: 361, baseType: !7, size: 32, offset: 1984)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1629, file: !88, line: 364, baseType: !307, size: 16, offset: 2016)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ctx", scope: !1629, file: !88, line: 366, baseType: !307, size: 16, offset: 2032)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "ctxs", scope: !1629, file: !88, line: 368, baseType: !1723, size: 64, offset: 2048)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait_lock", scope: !1629, file: !88, line: 371, baseType: !267, size: 32, offset: 2112)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch_wait", scope: !1629, file: !88, line: 376, baseType: !1726, size: 320, offset: 2176)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_entry_t", file: !1264, line: 14, baseType: !1727)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_entry", file: !1264, line: 30, size: 320, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1737}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1727, file: !1264, line: 31, baseType: !7, size: 32)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1727, file: !1264, line: 32, baseType: !232, size: 64, offset: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1727, file: !1264, line: 33, baseType: !1732, size: 64, offset: 128)
!1732 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_func_t", file: !1264, line: 16, baseType: !1733)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!123, !1736, !7, !123, !232}
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1727, file: !1264, line: 34, baseType: !238, size: 128, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "wait_index", scope: !1629, file: !88, line: 382, baseType: !287, size: 32, offset: 2496)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1629, file: !88, line: 388, baseType: !1740, size: 64, offset: 2560)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tags", file: !88, line: 735, size: 1472, elements: !1742)
!1742 = !{!1743, !1744, !1745, !1746, !1761, !1762, !1764, !1765, !1766}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "nr_tags", scope: !1741, file: !88, line: 736, baseType: !7, size: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "nr_reserved_tags", scope: !1741, file: !88, line: 737, baseType: !7, size: 32, offset: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "active_queues", scope: !1741, file: !88, line: 738, baseType: !7, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "bitmap_tags", scope: !1741, file: !88, line: 740, baseType: !1747, size: 512, offset: 128)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbitmap_queue", file: !1701, line: 109, size: 512, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1757, !1758, !1759, !1760}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "sb", scope: !1747, file: !1701, line: 113, baseType: !1700, size: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "wake_batch", scope: !1747, file: !1701, line: 119, baseType: !7, size: 32, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wake_index", scope: !1747, file: !1701, line: 124, baseType: !287, size: 32, offset: 288)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1747, file: !1701, line: 129, baseType: !1753, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sbq_wait_state", file: !1701, line: 93, size: 512, align: 512, elements: !1755)
!1755 = !{!1756}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1754, file: !1701, line: 97, baseType: !1263, size: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "ws_active", scope: !1747, file: !1701, line: 134, baseType: !287, size: 32, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "min_shallow_depth", scope: !1747, file: !1701, line: 140, baseType: !7, size: 32, offset: 416)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "completion_cnt", scope: !1747, file: !1701, line: 146, baseType: !287, size: 32, offset: 448)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_cnt", scope: !1747, file: !1701, line: 151, baseType: !287, size: 32, offset: 480)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "breserved_tags", scope: !1741, file: !88, line: 741, baseType: !1747, size: 512, offset: 640)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "rqs", scope: !1741, file: !88, line: 743, baseType: !1763, size: 64, offset: 1152)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "static_rqs", scope: !1741, file: !88, line: 744, baseType: !1763, size: 64, offset: 1216)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "page_list", scope: !1741, file: !88, line: 745, baseType: !238, size: 128, offset: 1280)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1741, file: !88, line: 751, baseType: !267, size: 32, offset: 1408)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "sched_tags", scope: !1629, file: !88, line: 394, baseType: !1740, size: 64, offset: 2624)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "run", scope: !1629, file: !88, line: 397, baseType: !387, size: 64, offset: 2688)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1629, file: !88, line: 400, baseType: !7, size: 32, offset: 2752)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "queue_num", scope: !1629, file: !88, line: 402, baseType: !7, size: 32, offset: 2784)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active", scope: !1629, file: !88, line: 408, baseType: !287, size: 32, offset: 2816)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_online", scope: !1629, file: !88, line: 411, baseType: !612, size: 128, offset: 2880)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !1629, file: !88, line: 413, baseType: !612, size: 128, offset: 3008)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1629, file: !88, line: 415, baseType: !253, size: 512, offset: 3136)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1629, file: !88, line: 422, baseType: !452, size: 64, offset: 3648)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1629, file: !88, line: 424, baseType: !452, size: 64, offset: 3712)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_list", scope: !1629, file: !88, line: 431, baseType: !238, size: 128, offset: 3776)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_data", file: !88, line: 526, size: 128, elements: !1781)
!1781 = !{!1782, !1783}
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "rq", scope: !1780, file: !88, line: 527, baseType: !1600, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !1780, file: !88, line: 528, baseType: !1111, size: 8, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "commit_rqs", scope: !1622, file: !88, line: 551, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{null, !1628}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "queue_rqs", scope: !1622, file: !88, line: 559, baseType: !1789, size: 64, offset: 128)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{null, !1763}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "get_budget", scope: !1622, file: !88, line: 567, baseType: !1793, size: 64, offset: 192)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!123, !1604}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "put_budget", scope: !1622, file: !88, line: 572, baseType: !1797, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !1604, !123}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "set_rq_budget_token", scope: !1622, file: !88, line: 577, baseType: !1801, size: 64, offset: 320)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{null, !1600, !123}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "get_rq_budget_token", scope: !1622, file: !88, line: 581, baseType: !1805, size: 64, offset: 384)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!123, !1600}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1622, file: !88, line: 586, baseType: !1809, size: 64, offset: 448)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!97, !1600}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1622, file: !88, line: 591, baseType: !1813, size: 64, offset: 512)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!123, !1628, !1596}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1622, file: !88, line: 596, baseType: !1817, size: 64, offset: 576)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{null, !1600}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "init_hctx", scope: !1622, file: !88, line: 603, baseType: !1821, size: 64, offset: 640)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!123, !1628, !232, !7}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "exit_hctx", scope: !1622, file: !88, line: 607, baseType: !1825, size: 64, offset: 704)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{null, !1628, !7}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "init_request", scope: !1622, file: !88, line: 616, baseType: !1829, size: 64, offset: 768)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!123, !1832, !1600, !7, !7}
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_tag_set", file: !88, line: 498, size: 1344, elements: !1834)
!1834 = !{!1835, !1836, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1854, !1855, !1856, !1857}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1833, file: !88, line: 499, baseType: !1620, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1833, file: !88, line: 500, baseType: !1837, size: 384, offset: 64)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1838, size: 384, elements: !338)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_mq_queue_map", file: !88, line: 444, size: 128, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "mq_map", scope: !1838, file: !88, line: 445, baseType: !1715, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "nr_queues", scope: !1838, file: !88, line: 446, baseType: !7, size: 32, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "queue_offset", scope: !1838, file: !88, line: 447, baseType: !7, size: 32, offset: 96)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_maps", scope: !1833, file: !88, line: 501, baseType: !7, size: 32, offset: 448)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1833, file: !88, line: 502, baseType: !7, size: 32, offset: 480)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1833, file: !88, line: 503, baseType: !7, size: 32, offset: 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tags", scope: !1833, file: !88, line: 504, baseType: !7, size: 32, offset: 544)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_size", scope: !1833, file: !88, line: 505, baseType: !7, size: 32, offset: 576)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1833, file: !88, line: 506, baseType: !123, size: 32, offset: 608)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1833, file: !88, line: 507, baseType: !7, size: 32, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1833, file: !88, line: 508, baseType: !7, size: 32, offset: 672)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1833, file: !88, line: 509, baseType: !232, size: 64, offset: 704)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tags", scope: !1833, file: !88, line: 511, baseType: !1853, size: 64, offset: 768)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "shared_tags", scope: !1833, file: !88, line: 513, baseType: !1740, size: 64, offset: 832)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list_lock", scope: !1833, file: !88, line: 515, baseType: !716, size: 256, offset: 896)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "tag_list", scope: !1833, file: !88, line: 516, baseType: !238, size: 128, offset: 1152)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "srcu", scope: !1833, file: !88, line: 517, baseType: !1858, size: 64, offset: 1280)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1860, line: 96, size: 192, elements: !1861)
!1860 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1861 = !{!1862, !1863, !1906, !1908}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1859, file: !1860, line: 97, baseType: !7, size: 32)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1859, file: !1860, line: 98, baseType: !1864, size: 64, offset: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1860, line: 24, size: 3072, elements: !1866)
!1866 = !{!1867, !1869, !1870, !1871, !1872, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1903, !1904, !1905}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1865, file: !1860, line: 26, baseType: !1868, size: 128)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 128, elements: !1694)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1865, file: !1860, line: 27, baseType: !1868, size: 128, offset: 128)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1865, file: !1860, line: 28, baseType: !123, size: 32, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1865, file: !1860, line: 31, baseType: !267, size: 32, align: 512, offset: 512)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1865, file: !1860, line: 32, baseType: !1873, size: 960, offset: 576)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1874, line: 206, size: 960, elements: !1875)
!1874 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1875 = !{!1876, !1877, !1880, !1882, !1883, !1885}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1873, file: !1874, line: 207, baseType: !1118, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1873, file: !1874, line: 208, baseType: !1878, size: 256, offset: 64)
!1878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1879, size: 256, elements: !1259)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1873, file: !1874, line: 209, baseType: !1881, size: 256, offset: 320)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !1259)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1873, file: !1874, line: 213, baseType: !373, size: 64, offset: 576)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1873, file: !1874, line: 215, baseType: !1884, size: 256, offset: 640)
!1884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !373, size: 256, elements: !1259)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !1874, line: 216, baseType: !295, size: 8, offset: 896)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1865, file: !1860, line: 33, baseType: !387, size: 64, offset: 1536)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1865, file: !1860, line: 34, baseType: !387, size: 64, offset: 1600)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1865, file: !1860, line: 35, baseType: !1111, size: 8, offset: 1664)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1865, file: !1860, line: 36, baseType: !1652, size: 320, offset: 1728)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1865, file: !1860, line: 37, baseType: !1641, size: 256, offset: 2048)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1865, file: !1860, line: 38, baseType: !1115, size: 128, align: 64, offset: 2304)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1865, file: !1860, line: 39, baseType: !1893, size: 64, offset: 2432)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1860, line: 49, size: 768, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1894, file: !1860, line: 50, baseType: !267, size: 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1894, file: !1860, line: 51, baseType: !1881, size: 256, offset: 64)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1894, file: !1860, line: 53, baseType: !1881, size: 256, offset: 320)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1894, file: !1860, line: 54, baseType: !387, size: 64, offset: 576)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1894, file: !1860, line: 55, baseType: !1893, size: 64, offset: 640)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1894, file: !1860, line: 56, baseType: !123, size: 32, offset: 704)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1894, file: !1860, line: 57, baseType: !123, size: 32, offset: 736)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1865, file: !1860, line: 40, baseType: !387, size: 64, offset: 2496)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1865, file: !1860, line: 42, baseType: !123, size: 32, offset: 2560)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1865, file: !1860, line: 43, baseType: !1858, size: 64, offset: 2624)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1859, file: !1860, line: 99, baseType: !1907, offset: 128)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !619, line: 211, elements: !620)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1859, file: !1860, line: 100, baseType: !1909, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1860, line: 63, size: 3008, elements: !1911)
!1911 = !{!1912, !1913, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1910, file: !1860, line: 64, baseType: !1893, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1910, file: !1860, line: 65, baseType: !1914, size: 192, offset: 64)
!1914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1893, size: 192, elements: !338)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1910, file: !1860, line: 67, baseType: !123, size: 32, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1910, file: !1860, line: 68, baseType: !716, size: 256, offset: 320)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1910, file: !1860, line: 69, baseType: !267, size: 32, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1910, file: !1860, line: 70, baseType: !716, size: 256, offset: 640)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1910, file: !1860, line: 71, baseType: !387, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1910, file: !1860, line: 72, baseType: !387, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1910, file: !1860, line: 73, baseType: !387, size: 64, offset: 1024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1910, file: !1860, line: 74, baseType: !387, size: 64, offset: 1088)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1910, file: !1860, line: 75, baseType: !387, size: 64, offset: 1152)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1910, file: !1860, line: 76, baseType: !387, size: 64, offset: 1216)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1910, file: !1860, line: 77, baseType: !387, size: 64, offset: 1280)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1910, file: !1860, line: 78, baseType: !387, size: 64, offset: 1344)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1910, file: !1860, line: 79, baseType: !1111, size: 8, offset: 1408)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1910, file: !1860, line: 80, baseType: !387, size: 64, offset: 1472)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1910, file: !1860, line: 81, baseType: !716, size: 256, offset: 1536)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1910, file: !1860, line: 82, baseType: !1125, size: 256, offset: 1792)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1910, file: !1860, line: 84, baseType: !287, size: 32, offset: 2048)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1910, file: !1860, line: 87, baseType: !387, size: 64, offset: 2112)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1910, file: !1860, line: 88, baseType: !387, size: 64, offset: 2176)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1910, file: !1860, line: 89, baseType: !1638, size: 704, offset: 2240)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1910, file: !1860, line: 90, baseType: !1858, size: 64, offset: 2944)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "exit_request", scope: !1622, file: !88, line: 621, baseType: !1937, size: 64, offset: 832)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{null, !1832, !1600, !7}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_rq", scope: !1622, file: !88, line: 628, baseType: !1817, size: 64, offset: 896)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "busy", scope: !1622, file: !88, line: 633, baseType: !1942, size: 64, offset: 960)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!1111, !1604}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "map_queues", scope: !1622, file: !88, line: 639, baseType: !1946, size: 64, offset: 1024)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{null, !1832}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "show_rq", scope: !1622, file: !88, line: 646, baseType: !1950, size: 64, offset: 1088)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DISubroutineType(types: !1952)
!1952 = !{null, !689, !1600}
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "queue_ctx", scope: !1605, file: !156, line: 404, baseType: !1717, size: 64, offset: 704)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "queue_depth", scope: !1605, file: !156, line: 406, baseType: !7, size: 32, offset: 768)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "hctx_table", scope: !1605, file: !156, line: 409, baseType: !970, size: 128, offset: 832)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hw_queues", scope: !1605, file: !156, line: 410, baseType: !7, size: 32, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "queuedata", scope: !1605, file: !156, line: 416, baseType: !232, size: 64, offset: 1024)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "queue_flags", scope: !1605, file: !156, line: 421, baseType: !387, size: 64, offset: 1088)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pm_only", scope: !1605, file: !156, line: 426, baseType: !287, size: 32, offset: 1152)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1605, file: !156, line: 432, baseType: !123, size: 32, offset: 1184)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "queue_lock", scope: !1605, file: !156, line: 434, baseType: !267, size: 32, offset: 1216)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !1605, file: !156, line: 436, baseType: !959, size: 64, offset: 1280)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1605, file: !156, line: 438, baseType: !1250, size: 32, offset: 1344)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mq_kobj", scope: !1605, file: !156, line: 443, baseType: !260, size: 64, offset: 1408)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1605, file: !156, line: 450, baseType: !1966, size: 64, offset: 1472)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !108, line: 705, size: 5824, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1974, !1975, !2030, !2100, !2101, !2102, !2103, !2104, !2111, !2278, !2291, !2301, !2305, !2307, !2308, !2309, !2313, !2320, !2321, !2324, !2327, !2331, !2438, !2439, !2440, !2441, !2442, !2443, !2500, !2501, !2502, !2505, !2508, !2517, !2518, !2519, !2520, !2521, !2522}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1967, file: !108, line: 706, baseType: !253, size: 512)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1967, file: !108, line: 707, baseType: !1966, size: 64, offset: 512)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1967, file: !108, line: 709, baseType: !1972, size: 64, offset: 576)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !108, line: 37, flags: DIFlagFwdDecl)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1967, file: !108, line: 711, baseType: !256, size: 64, offset: 640)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1967, file: !108, line: 712, baseType: !1976, size: 64, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1978)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !108, line: 89, size: 384, elements: !1979)
!1979 = !{!1980, !1981, !1982, !1988, !1995, !1999}
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1978, file: !108, line: 90, baseType: !256, size: 64)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1978, file: !108, line: 91, baseType: !389, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1978, file: !108, line: 92, baseType: !1983, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!123, !1986, !332}
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1967)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1978, file: !108, line: 93, baseType: !1989, size: 64, offset: 192)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DISubroutineType(types: !1991)
!1991 = !{!337, !1986, !1992, !1993, !1994}
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1978, file: !108, line: 95, baseType: !1996, size: 64, offset: 256)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{null, !1966}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1978, file: !108, line: 97, baseType: !2000, size: 64, offset: 320)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2002)
!2002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !115, line: 286, size: 1472, elements: !2003)
!2003 = !{!2004, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !2002, file: !115, line: 287, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!123, !1966}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !2002, file: !115, line: 288, baseType: !1996, size: 64, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2002, file: !115, line: 289, baseType: !2005, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2002, file: !115, line: 290, baseType: !2005, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !2002, file: !115, line: 291, baseType: !2005, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !2002, file: !115, line: 292, baseType: !2005, size: 64, offset: 320)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !2002, file: !115, line: 293, baseType: !2005, size: 64, offset: 384)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !2002, file: !115, line: 294, baseType: !2005, size: 64, offset: 448)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !2002, file: !115, line: 295, baseType: !2005, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !2002, file: !115, line: 296, baseType: !2005, size: 64, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !2002, file: !115, line: 297, baseType: !2005, size: 64, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !2002, file: !115, line: 298, baseType: !2005, size: 64, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !2002, file: !115, line: 299, baseType: !2005, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !2002, file: !115, line: 300, baseType: !2005, size: 64, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !2002, file: !115, line: 301, baseType: !2005, size: 64, offset: 896)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !2002, file: !115, line: 302, baseType: !2005, size: 64, offset: 960)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !2002, file: !115, line: 303, baseType: !2005, size: 64, offset: 1024)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !2002, file: !115, line: 304, baseType: !2005, size: 64, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !2002, file: !115, line: 305, baseType: !2005, size: 64, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !2002, file: !115, line: 306, baseType: !2005, size: 64, offset: 1216)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !2002, file: !115, line: 307, baseType: !2005, size: 64, offset: 1280)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !2002, file: !115, line: 308, baseType: !2005, size: 64, offset: 1344)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !2002, file: !115, line: 309, baseType: !2005, size: 64, offset: 1408)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1967, file: !108, line: 714, baseType: !2031, size: 64, offset: 768)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2033)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !2034, line: 80, size: 1344, elements: !2035)
!2034 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!2035 = !{!2036, !2037, !2038, !2039, !2040, !2041, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2099}
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2033, file: !2034, line: 81, baseType: !256, size: 64)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !2033, file: !2034, line: 82, baseType: !256, size: 64, offset: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !2033, file: !2034, line: 83, baseType: !389, size: 64, offset: 128)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2033, file: !2034, line: 84, baseType: !389, size: 64, offset: 192)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !2033, file: !2034, line: 85, baseType: !389, size: 64, offset: 256)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2033, file: !2034, line: 87, baseType: !2042, size: 64, offset: 320)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DISubroutineType(types: !2044)
!2044 = !{!123, !1966, !2045}
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !102, line: 96, size: 1152, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054, !2058, !2062, !2063, !2064, !2065, !2066, !2074, !2075, !2076, !2077, !2078, !2079}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2046, file: !102, line: 97, baseType: !256, size: 64)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !2046, file: !102, line: 98, baseType: !2031, size: 64, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2046, file: !102, line: 100, baseType: !233, size: 64, offset: 128)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !2046, file: !102, line: 101, baseType: !256, size: 64, offset: 192)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !2046, file: !102, line: 103, baseType: !1111, size: 8, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !2046, file: !102, line: 104, baseType: !101, size: 32, offset: 288)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2046, file: !102, line: 106, baseType: !2055, size: 64, offset: 320)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2057)
!2057 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !102, line: 106, flags: DIFlagFwdDecl)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !2046, file: !102, line: 107, baseType: !2059, size: 64, offset: 384)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2061)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !102, line: 107, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2046, file: !102, line: 109, baseType: !2005, size: 64, offset: 448)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2046, file: !102, line: 110, baseType: !1996, size: 64, offset: 512)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2046, file: !102, line: 111, baseType: !2005, size: 64, offset: 576)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2046, file: !102, line: 112, baseType: !1996, size: 64, offset: 640)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2046, file: !102, line: 113, baseType: !2067, size: 64, offset: 704)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!123, !1966, !2070}
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !115, line: 60, baseType: !2071)
!2071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !115, line: 58, size: 32, elements: !2072)
!2072 = !{!2073}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !2071, file: !115, line: 59, baseType: !123, size: 32)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2046, file: !102, line: 114, baseType: !2005, size: 64, offset: 768)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !2046, file: !102, line: 115, baseType: !389, size: 64, offset: 832)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2046, file: !102, line: 116, baseType: !389, size: 64, offset: 896)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2046, file: !102, line: 118, baseType: !2000, size: 64, offset: 960)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !2046, file: !102, line: 119, baseType: !1996, size: 64, offset: 1024)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2046, file: !102, line: 121, baseType: !2080, size: 64, offset: 1088)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !102, line: 121, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2033, file: !2034, line: 88, baseType: !1983, size: 64, offset: 384)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2033, file: !2034, line: 89, baseType: !2005, size: 64, offset: 448)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !2033, file: !2034, line: 90, baseType: !1996, size: 64, offset: 512)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2033, file: !2034, line: 91, baseType: !1996, size: 64, offset: 576)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2033, file: !2034, line: 92, baseType: !1996, size: 64, offset: 640)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2033, file: !2034, line: 94, baseType: !2005, size: 64, offset: 704)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !2033, file: !2034, line: 95, baseType: !2005, size: 64, offset: 768)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2033, file: !2034, line: 97, baseType: !2067, size: 64, offset: 832)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2033, file: !2034, line: 98, baseType: !2005, size: 64, offset: 896)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !2033, file: !2034, line: 100, baseType: !2005, size: 64, offset: 960)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !2033, file: !2034, line: 102, baseType: !2005, size: 64, offset: 1024)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !2033, file: !2034, line: 103, baseType: !1996, size: 64, offset: 1088)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2033, file: !2034, line: 105, baseType: !2000, size: 64, offset: 1152)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !2033, file: !2034, line: 107, baseType: !2096, size: 64, offset: 1216)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2098)
!2098 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !2034, line: 107, flags: DIFlagFwdDecl)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !2033, file: !2034, line: 109, baseType: !1111, size: 8, offset: 1280)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1967, file: !108, line: 715, baseType: !2045, size: 64, offset: 832)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1967, file: !108, line: 717, baseType: !232, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1967, file: !108, line: 719, baseType: !232, size: 64, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1967, file: !108, line: 721, baseType: !716, size: 256, offset: 1024)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1967, file: !108, line: 725, baseType: !2105, size: 448, offset: 1280)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !108, line: 517, size: 448, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2105, file: !108, line: 518, baseType: !238, size: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2105, file: !108, line: 519, baseType: !238, size: 128, offset: 128)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !2105, file: !108, line: 520, baseType: !238, size: 128, offset: 256)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2105, file: !108, line: 521, baseType: !107, size: 32, offset: 384)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1967, file: !108, line: 726, baseType: !2112, size: 2496, offset: 1728)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !115, line: 663, size: 2496, elements: !2113)
!2113 = !{!2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2158, !2159, !2160, !2161, !2162, !2163, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2271, !2275}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2112, file: !115, line: 664, baseType: !2070, size: 32)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2112, file: !115, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2112, file: !115, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2112, file: !115, line: 667, baseType: !1111, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2112, file: !115, line: 668, baseType: !1111, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2112, file: !115, line: 669, baseType: !1111, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2112, file: !115, line: 670, baseType: !1111, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2112, file: !115, line: 671, baseType: !1111, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2112, file: !115, line: 672, baseType: !1111, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2112, file: !115, line: 673, baseType: !1111, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2112, file: !115, line: 674, baseType: !1111, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2112, file: !115, line: 675, baseType: !486, size: 32, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2112, file: !115, line: 676, baseType: !267, size: 32, offset: 96)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2112, file: !115, line: 678, baseType: !238, size: 128, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2112, file: !115, line: 679, baseType: !1125, size: 256, offset: 256)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2112, file: !115, line: 680, baseType: !2130, size: 64, offset: 512)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2132, line: 43, size: 1536, elements: !2133)
!2132 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!2133 = !{!2134, !2135, !2136, !2137, !2138, !2141, !2142, !2143, !2146, !2147, !2148, !2149, !2150, !2151, !2152, !2153, !2154, !2155, !2156, !2157}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2131, file: !2132, line: 44, baseType: !256, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2131, file: !2132, line: 45, baseType: !123, size: 32, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2131, file: !2132, line: 46, baseType: !238, size: 128, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2131, file: !2132, line: 47, baseType: !267, size: 32, offset: 256)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2131, file: !2132, line: 48, baseType: !2139, size: 64, offset: 320)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !115, line: 629, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2131, file: !2132, line: 49, baseType: !1652, size: 320, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2131, file: !2132, line: 50, baseType: !387, size: 64, offset: 704)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2131, file: !2132, line: 51, baseType: !2144, size: 64, offset: 768)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2145, line: 29, baseType: !726)
!2145 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2131, file: !2132, line: 52, baseType: !2144, size: 64, offset: 832)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2131, file: !2132, line: 53, baseType: !2144, size: 64, offset: 896)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2131, file: !2132, line: 54, baseType: !2144, size: 64, offset: 960)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2131, file: !2132, line: 55, baseType: !2144, size: 64, offset: 1024)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2131, file: !2132, line: 56, baseType: !387, size: 64, offset: 1088)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2131, file: !2132, line: 57, baseType: !387, size: 64, offset: 1152)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2131, file: !2132, line: 58, baseType: !387, size: 64, offset: 1216)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2131, file: !2132, line: 59, baseType: !387, size: 64, offset: 1280)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2131, file: !2132, line: 60, baseType: !387, size: 64, offset: 1344)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2131, file: !2132, line: 61, baseType: !1966, size: 64, offset: 1408)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2131, file: !2132, line: 62, baseType: !1111, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2131, file: !2132, line: 63, baseType: !1111, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2112, file: !115, line: 681, baseType: !1111, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2112, file: !115, line: 682, baseType: !1111, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2112, file: !115, line: 683, baseType: !1111, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2112, file: !115, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2112, file: !115, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2112, file: !115, line: 690, baseType: !2164, size: 512, offset: 640)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !2165)
!2165 = !{!2166, !2172, !2173, !2178, !2233, !2234, !2235, !2236}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2164, file: !25, line: 119, baseType: !2167, size: 256)
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2168, line: 9, size: 256, elements: !2169)
!2168 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2169 = !{!2170, !2171}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2167, file: !2168, line: 10, baseType: !1327, size: 192, align: 64)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2167, file: !2168, line: 11, baseType: !2144, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2164, file: !25, line: 120, baseType: !2144, size: 64, offset: 256)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2164, file: !25, line: 121, baseType: !2174, size: 64, offset: 320)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!24, !2177}
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2164, file: !25, line: 122, baseType: !2179, size: 64, offset: 384)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !2181)
!2181 = !{!2182, !2207, !2208, !2211, !2216, !2217, !2228, !2232}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2180, file: !25, line: 160, baseType: !2183, size: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !2185)
!2185 = !{!2186, !2187, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2184, file: !25, line: 216, baseType: !729, size: 32)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2184, file: !25, line: 217, baseType: !7, size: 32, offset: 32)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2184, file: !25, line: 218, baseType: !7, size: 32, offset: 64)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2184, file: !25, line: 219, baseType: !7, size: 32, offset: 96)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2184, file: !25, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2184, file: !25, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2184, file: !25, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2184, file: !25, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2184, file: !25, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2184, file: !25, line: 226, baseType: !7, size: 32, offset: 160)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2184, file: !25, line: 227, baseType: !307, size: 16, offset: 192)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2184, file: !25, line: 228, baseType: !307, size: 16, offset: 208)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2184, file: !25, line: 229, baseType: !7, size: 32, offset: 224)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2184, file: !25, line: 235, baseType: !2144, size: 64, offset: 256)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2184, file: !25, line: 236, baseType: !2177, size: 64, offset: 320)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2184, file: !25, line: 237, baseType: !2144, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2184, file: !25, line: 238, baseType: !2177, size: 64, offset: 448)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2184, file: !25, line: 239, baseType: !2204, size: 4096, align: 512, offset: 512)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2180, size: 4096, align: 512, elements: !2205)
!2205 = !{!2206}
!2206 = !DISubrange(count: 8)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2180, file: !25, line: 161, baseType: !7, size: 32, offset: 64)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2180, file: !25, line: 162, baseType: !2209, size: 32, offset: 96)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !239, line: 32, baseType: !2210)
!2210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !371, line: 96, baseType: !123)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2180, file: !25, line: 163, baseType: !2212, size: 32, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !459, line: 274, baseType: !2213)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !459, line: 274, size: 32, elements: !2214)
!2214 = !{!2215}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2213, file: !459, line: 274, baseType: !463, size: 32)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2180, file: !25, line: 164, baseType: !2177, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2180, file: !25, line: 165, baseType: !2218, size: 128, offset: 256)
!2218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2168, line: 14, size: 128, elements: !2219)
!2219 = !{!2220}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2218, file: !2168, line: 15, baseType: !2221, size: 128)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !1328, line: 26, size: 128, elements: !2222)
!2222 = !{!2223, !2227}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2221, file: !1328, line: 27, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !1328, line: 12, size: 64, elements: !2225)
!2225 = !{!2226}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2224, file: !1328, line: 13, baseType: !1332, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2221, file: !1328, line: 28, baseType: !1332, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2180, file: !25, line: 166, baseType: !2229, size: 64, offset: 384)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!2144}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2180, file: !25, line: 167, baseType: !2144, size: 64, offset: 448)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2164, file: !25, line: 123, baseType: !295, size: 8, offset: 448)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2164, file: !25, line: 124, baseType: !295, size: 8, offset: 456)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2164, file: !25, line: 125, baseType: !295, size: 8, offset: 464)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2164, file: !25, line: 126, baseType: !295, size: 8, offset: 472)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2112, file: !115, line: 691, baseType: !490, size: 64, offset: 1152)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2112, file: !115, line: 692, baseType: !1641, size: 256, offset: 1216)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2112, file: !115, line: 693, baseType: !1263, size: 192, offset: 1472)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2112, file: !115, line: 694, baseType: !2139, size: 64, offset: 1664)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2112, file: !115, line: 695, baseType: !287, size: 32, offset: 1728)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2112, file: !115, line: 696, baseType: !287, size: 32, offset: 1760)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2112, file: !115, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2112, file: !115, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2112, file: !115, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2112, file: !115, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !2112, file: !115, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2112, file: !115, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2112, file: !115, line: 703, baseType: !1111, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2112, file: !115, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2112, file: !115, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2112, file: !115, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2112, file: !115, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2112, file: !115, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2112, file: !115, line: 709, baseType: !7, size: 32, offset: 1824)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2112, file: !115, line: 710, baseType: !114, size: 32, offset: 1856)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2112, file: !115, line: 711, baseType: !122, size: 32, offset: 1888)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !2112, file: !115, line: 712, baseType: !122, size: 32, offset: 1920)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2112, file: !115, line: 713, baseType: !123, size: 32, offset: 1952)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2112, file: !115, line: 714, baseType: !123, size: 32, offset: 1984)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2112, file: !115, line: 715, baseType: !490, size: 64, offset: 2048)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2112, file: !115, line: 716, baseType: !490, size: 64, offset: 2112)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2112, file: !115, line: 717, baseType: !490, size: 64, offset: 2176)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2112, file: !115, line: 718, baseType: !490, size: 64, offset: 2240)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2112, file: !115, line: 720, baseType: !2266, size: 64, offset: 2304)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !115, line: 632, size: 64, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2267, file: !115, line: 633, baseType: !267, size: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2267, file: !115, line: 634, baseType: !7, size: 32, offset: 32)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2112, file: !115, line: 721, baseType: !2272, size: 64, offset: 2368)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DISubroutineType(types: !2274)
!2274 = !{null, !1966, !1320}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2112, file: !115, line: 722, baseType: !2276, size: 64, offset: 2432)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !115, line: 722, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1967, file: !108, line: 727, baseType: !2279, size: 64, offset: 4224)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2280, size: 64)
!2280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !115, line: 742, size: 1792, elements: !2281)
!2281 = !{!2282, !2283, !2284, !2288, !2289, !2290}
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2280, file: !115, line: 743, baseType: !2002, size: 1472)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2280, file: !115, line: 744, baseType: !2005, size: 64, offset: 1472)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2280, file: !115, line: 745, baseType: !2285, size: 64, offset: 1536)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !1966, !1111}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2280, file: !115, line: 746, baseType: !2005, size: 64, offset: 1600)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2280, file: !115, line: 747, baseType: !1996, size: 64, offset: 1664)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2280, file: !115, line: 748, baseType: !1996, size: 64, offset: 1728)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1967, file: !108, line: 736, baseType: !2292, size: 128, offset: 4288)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !108, line: 529, size: 128, elements: !2293)
!2293 = !{!2294, !2298}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !2292, file: !108, line: 531, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2296 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !2297, line: 13, flags: DIFlagFwdDecl)
!2297 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2292, file: !108, line: 532, baseType: !2299, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !108, line: 49, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1967, file: !108, line: 738, baseType: !2302, size: 64, offset: 4416)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2304)
!2304 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !108, line: 738, flags: DIFlagFwdDecl)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1967, file: !108, line: 740, baseType: !2306, size: 64, offset: 4480)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1967, file: !108, line: 741, baseType: !490, size: 64, offset: 4544)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1967, file: !108, line: 746, baseType: !490, size: 64, offset: 4608)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1967, file: !108, line: 747, baseType: !2310, size: 64, offset: 4672)
!2310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2311, size: 64)
!2311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2312)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !108, line: 747, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1967, file: !108, line: 749, baseType: !2314, size: 64, offset: 4736)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !108, line: 428, size: 128, elements: !2316)
!2316 = !{!2317, !2318, !2319}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2315, file: !108, line: 433, baseType: !7, size: 32)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !2315, file: !108, line: 434, baseType: !7, size: 32, offset: 32)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2315, file: !108, line: 435, baseType: !387, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1967, file: !108, line: 751, baseType: !238, size: 128, offset: 4800)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1967, file: !108, line: 762, baseType: !2322, size: 64, offset: 4928)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !108, line: 762, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1967, file: !108, line: 770, baseType: !2325, offset: 4992)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2326, line: 5, elements: !620)
!2326 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1967, file: !108, line: 772, baseType: !2328, size: 64, offset: 4992)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2330, line: 18, flags: DIFlagFwdDecl)
!2330 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1967, file: !108, line: 773, baseType: !2332, size: 64, offset: 5056)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2334, line: 41, size: 512, elements: !2335)
!2334 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!2335 = !{!2336, !2337, !2434, !2435, !2436, !2437}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2333, file: !2334, line: 42, baseType: !2332, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2333, file: !2334, line: 43, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2340)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2334, line: 125, size: 1408, elements: !2341)
!2341 = !{!2342, !2346, !2350, !2356, !2362, !2363, !2368, !2372, !2376, !2381, !2385, !2386, !2390, !2394, !2398, !2409, !2410, !2411, !2412, !2422, !2426, !2430}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2340, file: !2334, line: 126, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!2332, !2332}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2340, file: !2334, line: 127, baseType: !2347, size: 64, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{null, !2332}
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2340, file: !2334, line: 128, baseType: !2351, size: 64, offset: 128)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!1111, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2333)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2340, file: !2334, line: 129, baseType: !2357, size: 64, offset: 192)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!2360, !2354, !1986}
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !2340, file: !2334, line: 131, baseType: !2351, size: 64, offset: 256)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !2340, file: !2334, line: 133, baseType: !2364, size: 64, offset: 320)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!2367, !2354}
!2367 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !2334, line: 132, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2340, file: !2334, line: 134, baseType: !2369, size: 64, offset: 384)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!1111, !2354, !256}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2340, file: !2334, line: 136, baseType: !2373, size: 64, offset: 448)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!123, !2354, !256, !7, !232, !384}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2340, file: !2334, line: 141, baseType: !2377, size: 64, offset: 512)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!123, !2354, !256, !2380, !384}
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2340, file: !2334, line: 144, baseType: !2382, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!256, !2354}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2340, file: !2334, line: 145, baseType: !2382, size: 64, offset: 640)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2340, file: !2334, line: 146, baseType: !2387, size: 64, offset: 704)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!2332, !2354}
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2340, file: !2334, line: 148, baseType: !2391, size: 64, offset: 768)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!2332, !2354, !2332}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2340, file: !2334, line: 151, baseType: !2395, size: 64, offset: 832)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!2332, !2354, !256}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2340, file: !2334, line: 153, baseType: !2399, size: 64, offset: 896)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!123, !2354, !256, !256, !7, !7, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2334, line: 94, size: 640, elements: !2404)
!2404 = !{!2405, !2406, !2407}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2403, file: !2334, line: 95, baseType: !2332, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2403, file: !2334, line: 96, baseType: !7, size: 32, offset: 64)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2403, file: !2334, line: 97, baseType: !2408, size: 512, offset: 128)
!2408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 512, elements: !2205)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2340, file: !2334, line: 158, baseType: !2391, size: 64, offset: 960)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2340, file: !2334, line: 161, baseType: !2387, size: 64, offset: 1024)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2340, file: !2334, line: 163, baseType: !2343, size: 64, offset: 1088)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2340, file: !2334, line: 164, baseType: !2413, size: 64, offset: 1152)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!123, !2354, !2416}
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2334, line: 73, size: 128, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2417, file: !2334, line: 74, baseType: !7, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2417, file: !2334, line: 75, baseType: !7, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2417, file: !2334, line: 76, baseType: !2354, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !2340, file: !2334, line: 166, baseType: !2423, size: 64, offset: 1216)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!232, !2332, !123}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !2340, file: !2334, line: 167, baseType: !2427, size: 64, offset: 1280)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DISubroutineType(types: !2429)
!2429 = !{!123, !2354, !7}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2340, file: !2334, line: 168, baseType: !2431, size: 64, offset: 1344)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DISubroutineType(types: !2433)
!2433 = !{!123, !2332}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2333, file: !2334, line: 44, baseType: !1966, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2333, file: !2334, line: 45, baseType: !238, size: 128, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2333, file: !2334, line: 46, baseType: !238, size: 128, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2333, file: !2334, line: 47, baseType: !295, size: 8, offset: 448)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1967, file: !108, line: 776, baseType: !123, size: 32, offset: 5120)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1967, file: !108, line: 778, baseType: !573, size: 32, offset: 5152)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1967, file: !108, line: 779, baseType: !486, size: 32, offset: 5184)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1967, file: !108, line: 781, baseType: !267, size: 32, offset: 5216)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1967, file: !108, line: 782, baseType: !238, size: 128, offset: 5248)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1967, file: !108, line: 784, baseType: !2444, size: 64, offset: 5376)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2446)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2447, line: 52, size: 768, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2457, !2461, !2462, !2463, !2491, !2495, !2499}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2446, file: !2447, line: 53, baseType: !256, size: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2446, file: !2447, line: 55, baseType: !389, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2446, file: !2447, line: 56, baseType: !389, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2446, file: !2447, line: 58, baseType: !1983, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2446, file: !2447, line: 59, baseType: !2454, size: 64, offset: 256)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!337, !1986, !1992}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2446, file: !2447, line: 61, baseType: !2458, size: 64, offset: 320)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{null, !2444}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2446, file: !2447, line: 62, baseType: !1996, size: 64, offset: 384)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2446, file: !2447, line: 64, baseType: !2005, size: 64, offset: 448)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2446, file: !2447, line: 66, baseType: !2464, size: 64, offset: 512)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2466)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !2467)
!2467 = !{!2468, !2469, !2473, !2477, !2483, !2487}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2466, file: !82, line: 40, baseType: !81, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !2466, file: !82, line: 41, baseType: !2470, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!1111}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !2466, file: !82, line: 42, baseType: !2474, size: 64, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DISubroutineType(types: !2476)
!2476 = !{!232}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !2466, file: !82, line: 43, baseType: !2478, size: 64, offset: 192)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{!2360, !2481}
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !2466, file: !82, line: 44, baseType: !2484, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!2360}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !2466, file: !82, line: 45, baseType: !2488, size: 64, offset: 320)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DISubroutineType(types: !2490)
!2490 = !{null, !232}
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2446, file: !2447, line: 67, baseType: !2492, size: 64, offset: 576)
!2492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2493, size: 64)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{!2360, !1986}
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2446, file: !2447, line: 69, baseType: !2496, size: 64, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2497, size: 64)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{null, !1986, !1993, !1994}
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2446, file: !2447, line: 71, baseType: !2000, size: 64, offset: 704)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1967, file: !108, line: 785, baseType: !389, size: 64, offset: 5440)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1967, file: !108, line: 787, baseType: !1996, size: 64, offset: 5504)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1967, file: !108, line: 788, baseType: !2503, size: 64, offset: 5568)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !108, line: 46, flags: DIFlagFwdDecl)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1967, file: !108, line: 789, baseType: !2506, size: 64, offset: 5632)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !108, line: 48, flags: DIFlagFwdDecl)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1967, file: !108, line: 791, baseType: !2509, size: 64, offset: 5696)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !108, line: 597, size: 128, elements: !2511)
!2511 = !{!2512, !2513, !2514, !2515, !2516}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2510, file: !108, line: 598, baseType: !130, size: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2510, file: !108, line: 599, baseType: !139, size: 32, offset: 32)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2510, file: !108, line: 600, baseType: !144, size: 32, offset: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2510, file: !108, line: 601, baseType: !1111, size: 8, offset: 96)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2510, file: !108, line: 602, baseType: !1111, size: 8, offset: 104)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1967, file: !108, line: 793, baseType: !149, size: 32, offset: 5760)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1967, file: !108, line: 795, baseType: !1111, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1967, file: !108, line: 796, baseType: !1111, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1967, file: !108, line: 797, baseType: !1111, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1967, file: !108, line: 798, baseType: !1111, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1967, file: !108, line: 799, baseType: !1111, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "rpm_status", scope: !1605, file: !156, line: 451, baseType: !122, size: 32, offset: 1536)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "nr_requests", scope: !1605, file: !156, line: 457, baseType: !387, size: 64, offset: 1600)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pad_mask", scope: !1605, file: !156, line: 459, baseType: !7, size: 32, offset: 1664)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "rq_timeout", scope: !1605, file: !156, line: 466, baseType: !7, size: 32, offset: 1696)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1605, file: !156, line: 468, baseType: !1652, size: 320, offset: 1728)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_work", scope: !1605, file: !156, line: 469, baseType: !1641, size: 256, offset: 2048)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "nr_active_requests_shared_tags", scope: !1605, file: !156, line: 471, baseType: !287, size: 32, offset: 2304)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sched_shared_tags", scope: !1605, file: !156, line: 473, baseType: !1740, size: 64, offset: 2368)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "icq_list", scope: !1605, file: !156, line: 475, baseType: !238, size: 128, offset: 2432)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_pols", scope: !1605, file: !156, line: 477, baseType: !1674, size: 64, offset: 2560)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "root_blkg", scope: !1605, file: !156, line: 478, baseType: !1013, size: 64, offset: 2624)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "blkg_list", scope: !1605, file: !156, line: 479, baseType: !238, size: 128, offset: 2688)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "blkcg_mutex", scope: !1605, file: !156, line: 480, baseType: !716, size: 256, offset: 2816)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "limits", scope: !1605, file: !156, line: 483, baseType: !2537, size: 960, offset: 3072)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "queue_limits", file: !156, line: 300, size: 960, elements: !2538)
!2538 = !{!2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "bounce", scope: !2537, file: !156, line: 301, baseType: !155, size: 32)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "seg_boundary_mask", scope: !2537, file: !156, line: 302, baseType: !387, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "virt_boundary_mask", scope: !2537, file: !156, line: 303, baseType: !387, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_sectors", scope: !2537, file: !156, line: 305, baseType: !7, size: 32, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "max_dev_sectors", scope: !2537, file: !156, line: 306, baseType: !7, size: 32, offset: 224)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_sectors", scope: !2537, file: !156, line: 307, baseType: !7, size: 32, offset: 256)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "max_sectors", scope: !2537, file: !156, line: 308, baseType: !7, size: 32, offset: 288)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "max_user_sectors", scope: !2537, file: !156, line: 309, baseType: !7, size: 32, offset: 320)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2537, file: !156, line: 310, baseType: !7, size: 32, offset: 352)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "physical_block_size", scope: !2537, file: !156, line: 311, baseType: !7, size: 32, offset: 384)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "logical_block_size", scope: !2537, file: !156, line: 312, baseType: !7, size: 32, offset: 416)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_offset", scope: !2537, file: !156, line: 313, baseType: !7, size: 32, offset: 448)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "io_min", scope: !2537, file: !156, line: 314, baseType: !7, size: 32, offset: 480)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "io_opt", scope: !2537, file: !156, line: 315, baseType: !7, size: 32, offset: 512)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_sectors", scope: !2537, file: !156, line: 316, baseType: !7, size: 32, offset: 544)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "max_hw_discard_sectors", scope: !2537, file: !156, line: 317, baseType: !7, size: 32, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "max_secure_erase_sectors", scope: !2537, file: !156, line: 318, baseType: !7, size: 32, offset: 608)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_zeroes_sectors", scope: !2537, file: !156, line: 319, baseType: !7, size: 32, offset: 640)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "max_zone_append_sectors", scope: !2537, file: !156, line: 320, baseType: !7, size: 32, offset: 672)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "discard_granularity", scope: !2537, file: !156, line: 321, baseType: !7, size: 32, offset: 704)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "discard_alignment", scope: !2537, file: !156, line: 322, baseType: !7, size: 32, offset: 736)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "zone_write_granularity", scope: !2537, file: !156, line: 323, baseType: !7, size: 32, offset: 768)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "max_segments", scope: !2537, file: !156, line: 325, baseType: !307, size: 16, offset: 800)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "max_integrity_segments", scope: !2537, file: !156, line: 326, baseType: !307, size: 16, offset: 816)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "max_discard_segments", scope: !2537, file: !156, line: 327, baseType: !307, size: 16, offset: 832)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "misaligned", scope: !2537, file: !156, line: 329, baseType: !299, size: 8, offset: 848)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "discard_misaligned", scope: !2537, file: !156, line: 330, baseType: !299, size: 8, offset: 856)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "raid_partial_stripes_expensive", scope: !2537, file: !156, line: 331, baseType: !299, size: 8, offset: 864)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "zoned", scope: !2537, file: !156, line: 332, baseType: !160, size: 32, offset: 896)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "dma_alignment", scope: !2537, file: !156, line: 339, baseType: !7, size: 32, offset: 928)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "required_elevator_features", scope: !1605, file: !156, line: 485, baseType: !7, size: 32, offset: 4032)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1605, file: !156, line: 487, baseType: !123, size: 32, offset: 4064)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "blk_trace", scope: !1605, file: !156, line: 489, baseType: !2572, size: 64, offset: 4096)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_trace", file: !156, line: 31, flags: DIFlagFwdDecl)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "fq", scope: !1605, file: !156, line: 494, baseType: !1683, size: 64, offset: 4160)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "flush_list", scope: !1605, file: !156, line: 495, baseType: !238, size: 128, offset: 4224)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_list", scope: !1605, file: !156, line: 497, baseType: !238, size: 128, offset: 4352)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_lock", scope: !1605, file: !156, line: 498, baseType: !267, size: 32, offset: 4480)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "requeue_work", scope: !1605, file: !156, line: 499, baseType: !1638, size: 704, offset: 4544)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_lock", scope: !1605, file: !156, line: 501, baseType: !716, size: 256, offset: 5248)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_dir_lock", scope: !1605, file: !156, line: 502, baseType: !716, size: 256, offset: 5504)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_list", scope: !1605, file: !156, line: 508, baseType: !238, size: 128, offset: 5760)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "unused_hctx_lock", scope: !1605, file: !156, line: 509, baseType: !267, size: 32, offset: 5888)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_depth", scope: !1605, file: !156, line: 511, baseType: !123, size: 32, offset: 5920)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1605, file: !156, line: 517, baseType: !1115, size: 128, align: 64, offset: 5952)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_wq", scope: !1605, file: !156, line: 518, baseType: !1263, size: 192, offset: 6080)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "mq_freeze_lock", scope: !1605, file: !156, line: 523, baseType: !716, size: 256, offset: 6272)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "quiesce_depth", scope: !1605, file: !156, line: 525, baseType: !123, size: 32, offset: 6528)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set", scope: !1605, file: !156, line: 527, baseType: !1832, size: 64, offset: 6592)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "tag_set_list", scope: !1605, file: !156, line: 528, baseType: !238, size: 128, offset: 6656)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_dir", scope: !1605, file: !156, line: 530, baseType: !452, size: 64, offset: 6784)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "sched_debugfs_dir", scope: !1605, file: !156, line: 531, baseType: !452, size: 64, offset: 6848)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "rqos_debugfs_dir", scope: !1605, file: !156, line: 532, baseType: !452, size: 64, offset: 6912)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !1605, file: !156, line: 536, baseType: !716, size: 256, offset: 6976)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "mq_sysfs_init_done", scope: !1605, file: !156, line: 538, baseType: !1111, size: 8, offset: 7232)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "mq_ctx", scope: !1601, file: !88, line: 82, baseType: !1717, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "mq_hctx", scope: !1601, file: !88, line: 83, baseType: !1628, size: 64, offset: 128)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_flags", scope: !1601, file: !88, line: 85, baseType: !992, size: 32, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "rq_flags", scope: !1601, file: !88, line: 86, baseType: !2599, size: 32, offset: 224)
!2599 = !DIDerivedType(tag: DW_TAG_typedef, name: "req_flags_t", file: !88, line: 27, baseType: !487)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1601, file: !88, line: 88, baseType: !123, size: 32, offset: 256)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "internal_tag", scope: !1601, file: !88, line: 89, baseType: !123, size: 32, offset: 288)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1601, file: !88, line: 91, baseType: !7, size: 32, offset: 320)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "__data_len", scope: !1601, file: !88, line: 94, baseType: !7, size: 32, offset: 352)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "__sector", scope: !1601, file: !88, line: 95, baseType: !956, size: 64, offset: 384)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "bio", scope: !1601, file: !88, line: 97, baseType: !986, size: 64, offset: 448)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "biotail", scope: !1601, file: !88, line: 98, baseType: !986, size: 64, offset: 512)
!2607 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !88, line: 100, baseType: !2608, size: 128, offset: 576)
!2608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !88, line: 100, size: 128, elements: !2609)
!2609 = !{!2610, !2611}
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "queuelist", scope: !2608, file: !88, line: 101, baseType: !238, size: 128)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "rq_next", scope: !2608, file: !88, line: 102, baseType: !1600, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !1601, file: !88, line: 105, baseType: !951, size: 64, offset: 704)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_time_ns", scope: !1601, file: !88, line: 108, baseType: !490, size: 64, offset: 768)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "start_time_ns", scope: !1601, file: !88, line: 111, baseType: !490, size: 64, offset: 832)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "io_start_time_ns", scope: !1601, file: !88, line: 113, baseType: !490, size: 64, offset: 896)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "stats_sectors", scope: !1601, file: !88, line: 123, baseType: !307, size: 16, offset: 960)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_phys_segments", scope: !1601, file: !88, line: 129, baseType: !307, size: 16, offset: 976)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !1601, file: !88, line: 140, baseType: !307, size: 16, offset: 992)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1601, file: !88, line: 142, baseType: !87, size: 32, offset: 1024)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1601, file: !88, line: 143, baseType: !287, size: 32, offset: 1056)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1601, file: !88, line: 145, baseType: !387, size: 64, offset: 1088)
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !88, line: 154, baseType: !2623, size: 128, offset: 1152)
!2623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !88, line: 154, size: 128, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2623, file: !88, line: 155, baseType: !612, size: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "ipi_list", scope: !2623, file: !88, line: 156, baseType: !1207, size: 64)
!2627 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !88, line: 165, baseType: !2628, size: 192, offset: 1280)
!2628 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1601, file: !88, line: 165, size: 192, elements: !2629)
!2629 = !{!2630, !2631}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2628, file: !88, line: 166, baseType: !1327, size: 192, align: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "special_vec", scope: !2628, file: !88, line: 167, baseType: !1027, size: 128)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "elv", scope: !1601, file: !88, line: 177, baseType: !2633, size: 192, offset: 1472)
!2633 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !88, line: 174, size: 192, elements: !2634)
!2634 = !{!2635, !2662}
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "icq", scope: !2633, file: !88, line: 175, baseType: !2636, size: 64)
!2636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_cq", file: !2638, line: 73, size: 448, elements: !2639)
!2638 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2639 = !{!2640, !2641, !2648, !2656, !2661}
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !2637, file: !2638, line: 74, baseType: !1604, size: 64)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ioc", scope: !2637, file: !2638, line: 75, baseType: !2642, size: 64, offset: 64)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2638, line: 99, size: 128, elements: !2644)
!2644 = !{!2645, !2646, !2647}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2643, file: !2638, line: 100, baseType: !720, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2643, file: !2638, line: 101, baseType: !287, size: 32, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2643, file: !2638, line: 103, baseType: !307, size: 16, offset: 96)
!2648 = !DIDerivedType(tag: DW_TAG_member, scope: !2637, file: !2638, line: 83, baseType: !2649, size: 128, offset: 128)
!2649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2637, file: !2638, line: 83, size: 128, elements: !2650)
!2650 = !{!2651, !2652}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "q_node", scope: !2649, file: !2638, line: 84, baseType: !238, size: 128)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_icq_cache", scope: !2649, file: !2638, line: 85, baseType: !2653, size: 64)
!2653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2654, size: 64)
!2654 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2655, line: 325, flags: DIFlagFwdDecl)
!2655 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!2656 = !DIDerivedType(tag: DW_TAG_member, scope: !2637, file: !2638, line: 87, baseType: !2657, size: 128, offset: 256)
!2657 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2637, file: !2638, line: 87, size: 128, elements: !2658)
!2658 = !{!2659, !2660}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ioc_node", scope: !2657, file: !2638, line: 88, baseType: !612, size: 128)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__rcu_head", scope: !2657, file: !2638, line: 89, baseType: !1115, size: 128, align: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2637, file: !2638, line: 92, baseType: !7, size: 32, offset: 384)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2633, file: !88, line: 176, baseType: !2663, size: 128, offset: 64)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !232, size: 128, elements: !1694)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1601, file: !88, line: 182, baseType: !2665, size: 128, offset: 1664)
!2665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !88, line: 179, size: 128, elements: !2666)
!2666 = !{!2667, !2668}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2665, file: !88, line: 180, baseType: !7, size: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "saved_end_io", scope: !2665, file: !88, line: 181, baseType: !2669, size: 64, offset: 64)
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "rq_end_io_fn", file: !88, line: 23, baseType: !2671)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!93, !1600, !996}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "fifo_time", scope: !1601, file: !88, line: 184, baseType: !490, size: 64, offset: 1792)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "end_io", scope: !1601, file: !88, line: 189, baseType: !2669, size: 64, offset: 1856)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "end_io_data", scope: !1601, file: !88, line: 190, baseType: !232, size: 64, offset: 1920)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "need_ts", scope: !1597, file: !156, line: 1561, baseType: !1111, size: 8, offset: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1597, file: !156, line: 1562, baseType: !2678, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2679, size: 64)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !1596}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1498, file: !14, line: 1923, baseType: !2682, size: 64, offset: 448)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!123, !1200, !2685}
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !2687)
!2687 = !{!2688, !2693}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2686, file: !14, line: 1859, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !2690)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DISubroutineType(types: !2692)
!2692 = !{!1111, !2685, !256, !123, !578, !490, !7}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2686, file: !14, line: 1860, baseType: !578, size: 64, offset: 64)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1498, file: !14, line: 1924, baseType: !2695, size: 64, offset: 512)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!2698, !1200, !2700}
!2698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2699, line: 59, baseType: !7)
!2699 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1498, file: !14, line: 1925, baseType: !2703, size: 64, offset: 576)
!2703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2704, size: 64)
!2704 = !DISubroutineType(types: !2705)
!2705 = !{!373, !1200, !7, !387}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1498, file: !14, line: 1926, baseType: !2703, size: 64, offset: 640)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1498, file: !14, line: 1927, baseType: !2708, size: 64, offset: 704)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!123, !1200, !1160}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1498, file: !14, line: 1928, baseType: !387, size: 64, offset: 768)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1498, file: !14, line: 1929, baseType: !2713, size: 64, offset: 832)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!123, !417, !1200}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1498, file: !14, line: 1930, baseType: !2717, size: 64, offset: 896)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!123, !1200, !2720}
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !232)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1498, file: !14, line: 1931, baseType: !2713, size: 64, offset: 960)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1498, file: !14, line: 1932, baseType: !2723, size: 64, offset: 1024)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!123, !1200, !578, !578, !123}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1498, file: !14, line: 1933, baseType: !2727, size: 64, offset: 1088)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!123, !123, !1200, !123}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1498, file: !14, line: 1934, baseType: !2731, size: 64, offset: 1152)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!123, !1200, !123, !2734}
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2735, size: 64)
!2735 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1498, file: !14, line: 1935, baseType: !1197, size: 64, offset: 1216)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1498, file: !14, line: 1936, baseType: !2738, size: 64, offset: 1280)
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!123, !123}
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1498, file: !14, line: 1937, baseType: !2731, size: 64, offset: 1344)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1498, file: !14, line: 1938, baseType: !2743, size: 64, offset: 1408)
!2743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2744, size: 64)
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!369, !2746, !1200, !1509, !384, !7}
!2746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2747, size: 64)
!2747 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !691, line: 59, flags: DIFlagFwdDecl)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1498, file: !14, line: 1939, baseType: !2749, size: 64, offset: 1472)
!2749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2750, size: 64)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!369, !1200, !1509, !2746, !384, !7}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1498, file: !14, line: 1940, baseType: !2753, size: 64, offset: 1536)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DISubroutineType(types: !2755)
!2755 = !{null, !1200}
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1498, file: !14, line: 1941, baseType: !2757, size: 64, offset: 1600)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!123, !1200, !123, !2760, !2761}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2734, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1498, file: !14, line: 1942, baseType: !2763, size: 64, offset: 1664)
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DISubroutineType(types: !2765)
!2765 = !{!373, !1200, !123, !578, !578}
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1498, file: !14, line: 1944, baseType: !2767, size: 64, offset: 1728)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2768, size: 64)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{null, !689, !1200}
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1498, file: !14, line: 1948, baseType: !2771, size: 64, offset: 1792)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2772, size: 64)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{!369, !1200, !578, !1200, !578, !384, !7}
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1498, file: !14, line: 1950, baseType: !2775, size: 64, offset: 1856)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!578, !1200, !578, !1200, !578, !578, !7}
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1498, file: !14, line: 1953, baseType: !2723, size: 64, offset: 1920)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1498, file: !14, line: 1954, baseType: !2780, size: 64, offset: 1984)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DISubroutineType(types: !2782)
!2782 = !{!123, !2783, !7}
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1498, file: !14, line: 1955, baseType: !2786, size: 64, offset: 2048)
!2786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2787, size: 64)
!2787 = !DISubroutineType(types: !2788)
!2788 = !{!123, !2783, !1596, !7}
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1201, file: !14, line: 1018, baseType: !490, size: 64, offset: 1472)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1201, file: !14, line: 1020, baseType: !232, size: 64, offset: 1536)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1201, file: !14, line: 1023, baseType: !232, size: 64, offset: 1600)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1201, file: !14, line: 1027, baseType: !2793, size: 64, offset: 1664)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1201, file: !14, line: 1029, baseType: !413, size: 64, offset: 1728)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1201, file: !14, line: 1030, baseType: !2796, size: 32, offset: 1792)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2797, line: 8, baseType: !486)
!2797 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1201, file: !14, line: 1031, baseType: !2796, size: 32, offset: 1824)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1177, file: !46, line: 756, baseType: !387, size: 64, offset: 704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1177, file: !46, line: 757, baseType: !387, size: 64, offset: 768)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1177, file: !46, line: 760, baseType: !387, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1177, file: !46, line: 761, baseType: !387, size: 64, offset: 896)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1177, file: !46, line: 763, baseType: !387, size: 64, offset: 960)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1177, file: !46, line: 764, baseType: !2805, size: 64, offset: 1024)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2807, line: 299, baseType: !2808)
!2807 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2808 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2807, line: 299, size: 64, elements: !2809)
!2809 = !{!2810}
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2808, file: !2807, line: 299, baseType: !2811, size: 64)
!2811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2812, line: 18, baseType: !387)
!2812 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1177, file: !46, line: 773, baseType: !287, size: 32, offset: 1088)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1177, file: !46, line: 785, baseType: !287, size: 32, offset: 1120)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1177, file: !46, line: 795, baseType: !2816, size: 64, offset: 1152)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2817, size: 64)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !46, line: 726, size: 128, elements: !2818)
!2818 = !{!2819, !2820}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2817, file: !46, line: 727, baseType: !490, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2817, file: !46, line: 728, baseType: !123, size: 32, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1177, file: !46, line: 801, baseType: !387, size: 64, offset: 1216)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1177, file: !46, line: 804, baseType: !720, size: 64, offset: 1280)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1177, file: !46, line: 806, baseType: !123, size: 32, offset: 1344)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1177, file: !46, line: 808, baseType: !267, size: 32, offset: 1376)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1177, file: !46, line: 823, baseType: !929, size: 320, offset: 1408)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1177, file: !46, line: 825, baseType: !238, size: 128, offset: 1728)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1177, file: !46, line: 845, baseType: !123, size: 32, offset: 1856)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1177, file: !46, line: 849, baseType: !387, size: 64, offset: 1920)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1177, file: !46, line: 850, baseType: !387, size: 64, offset: 1984)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1177, file: !46, line: 852, baseType: !387, size: 64, offset: 2048)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1177, file: !46, line: 853, baseType: !387, size: 64, offset: 2112)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1177, file: !46, line: 854, baseType: !722, size: 64, offset: 2176)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1177, file: !46, line: 855, baseType: !387, size: 64, offset: 2240)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1177, file: !46, line: 856, baseType: !387, size: 64, offset: 2304)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1177, file: !46, line: 857, baseType: !387, size: 64, offset: 2368)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1177, file: !46, line: 858, baseType: !387, size: 64, offset: 2432)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1177, file: !46, line: 865, baseType: !463, size: 32, offset: 2496)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1177, file: !46, line: 867, baseType: !267, size: 32, offset: 2528)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1177, file: !46, line: 869, baseType: !387, size: 64, offset: 2560)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1177, file: !46, line: 869, baseType: !387, size: 64, offset: 2624)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1177, file: !46, line: 869, baseType: !387, size: 64, offset: 2688)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1177, file: !46, line: 869, baseType: !387, size: 64, offset: 2752)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1177, file: !46, line: 870, baseType: !387, size: 64, offset: 2816)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1177, file: !46, line: 870, baseType: !387, size: 64, offset: 2880)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1177, file: !46, line: 870, baseType: !387, size: 64, offset: 2944)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1177, file: !46, line: 871, baseType: !387, size: 64, offset: 3008)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1177, file: !46, line: 871, baseType: !387, size: 64, offset: 3072)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1177, file: !46, line: 871, baseType: !387, size: 64, offset: 3136)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1177, file: !46, line: 871, baseType: !387, size: 64, offset: 3200)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1177, file: !46, line: 873, baseType: !2851, size: 3328, offset: 3264)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 3328, elements: !2852)
!2852 = !{!2853}
!2853 = !DISubrange(count: 52)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1177, file: !46, line: 875, baseType: !2855, size: 1280, offset: 6592)
!2855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1440, size: 1280, elements: !1259)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1177, file: !46, line: 877, baseType: !2857, size: 64, offset: 7872)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !46, line: 877, flags: DIFlagFwdDecl)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1177, file: !46, line: 880, baseType: !2860, size: 1088, offset: 7936)
!2860 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2861, line: 72, baseType: !2862)
!2861 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2861, line: 23, size: 1088, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2867, !2868, !2871, !2872, !2873, !2874, !2899, !2900, !2901}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2862, file: !2861, line: 28, baseType: !490, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2862, file: !2861, line: 38, baseType: !722, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2862, file: !2861, line: 40, baseType: !387, size: 64, offset: 128)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2862, file: !2861, line: 43, baseType: !929, size: 320, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2862, file: !2861, line: 44, baseType: !2869, size: 64, offset: 512)
!2869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2870, size: 64)
!2870 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2861, line: 44, flags: DIFlagFwdDecl)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2862, file: !2861, line: 48, baseType: !387, size: 64, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2862, file: !2861, line: 59, baseType: !716, size: 256, offset: 640)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2862, file: !2861, line: 60, baseType: !232, size: 64, offset: 896)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2862, file: !2861, line: 61, baseType: !2875, size: 64, offset: 960)
!2875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2876, size: 64)
!2876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2877)
!2877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2878, line: 13, size: 1216, elements: !2879)
!2878 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2879 = !{!2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2877, file: !2878, line: 14, baseType: !232, size: 64)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2877, file: !2878, line: 15, baseType: !387, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2877, file: !2878, line: 17, baseType: !387, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2877, file: !2878, line: 17, baseType: !387, size: 64, offset: 192)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2877, file: !2878, line: 18, baseType: !387, size: 64, offset: 256)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2877, file: !2878, line: 18, baseType: !387, size: 64, offset: 320)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2877, file: !2878, line: 19, baseType: !2360, size: 64, offset: 384)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2877, file: !2878, line: 21, baseType: !373, size: 64, offset: 448)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2877, file: !2878, line: 23, baseType: !373, size: 64, offset: 512)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2877, file: !2878, line: 24, baseType: !373, size: 64, offset: 576)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2877, file: !2878, line: 25, baseType: !373, size: 64, offset: 640)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2877, file: !2878, line: 26, baseType: !373, size: 64, offset: 704)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2877, file: !2878, line: 27, baseType: !373, size: 64, offset: 768)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2877, file: !2878, line: 28, baseType: !373, size: 64, offset: 832)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2877, file: !2878, line: 29, baseType: !373, size: 64, offset: 896)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2877, file: !2878, line: 30, baseType: !373, size: 64, offset: 960)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2877, file: !2878, line: 31, baseType: !373, size: 64, offset: 1024)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2877, file: !2878, line: 32, baseType: !373, size: 64, offset: 1088)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2877, file: !2878, line: 33, baseType: !373, size: 64, offset: 1152)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2862, file: !2861, line: 63, baseType: !287, size: 32, offset: 1024)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2862, file: !2861, line: 69, baseType: !305, size: 16, offset: 1056)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2862, file: !2861, line: 70, baseType: !2902, size: 16, offset: 1072)
!2902 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !296, line: 18, baseType: !2903)
!2903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !298, line: 23, baseType: !1353)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1177, file: !46, line: 882, baseType: !387, size: 64, offset: 9024)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1177, file: !46, line: 885, baseType: !267, size: 32, offset: 9088)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1177, file: !46, line: 886, baseType: !2907, size: 64, offset: 9152)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !46, line: 732, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1177, file: !46, line: 901, baseType: !1465, size: 64, offset: 9216)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1177, file: !46, line: 904, baseType: !1200, size: 64, offset: 9280)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1177, file: !46, line: 906, baseType: !2912, size: 64, offset: 9344)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !46, line: 906, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1177, file: !46, line: 930, baseType: !287, size: 32, offset: 9408)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1177, file: !46, line: 933, baseType: !287, size: 32, offset: 9440)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1177, file: !46, line: 935, baseType: !2917, size: 64, offset: 9472)
!2917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !2918)
!2918 = !{!2919}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2917, file: !68, line: 104, baseType: !2920, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1177, file: !46, line: 940, baseType: !720, size: 64, offset: 9536)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1177, file: !46, line: 942, baseType: !1641, size: 256, offset: 9600)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1174, file: !46, line: 986, baseType: !2925, offset: 10240)
!2925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, elements: !1278)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1161, file: !46, line: 640, baseType: !2927, size: 64, offset: 192)
!2927 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2807, line: 297, baseType: !2928)
!2928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2807, line: 297, size: 64, elements: !2929)
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2928, file: !2807, line: 297, baseType: !2931, size: 64)
!2931 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2812, line: 19, baseType: !387)
!2932 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !46, line: 646, baseType: !2933, size: 64, offset: 256)
!2933 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1161, file: !46, line: 646, size: 64, elements: !2934)
!2934 = !{!2935, !2938}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2933, file: !46, line: 647, baseType: !2936, size: 64)
!2936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2937)
!2937 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !46, line: 542, baseType: !387)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2933, file: !46, line: 648, baseType: !2937, size: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1161, file: !46, line: 666, baseType: !123, size: 32, offset: 320)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1161, file: !46, line: 667, baseType: !2941, size: 64, offset: 384)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !46, line: 579, size: 320, elements: !2943)
!2943 = !{!2944}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2942, file: !46, line: 580, baseType: !929, size: 320)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1161, file: !46, line: 670, baseType: !1111, size: 8, offset: 448)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1161, file: !46, line: 681, baseType: !2947, size: 256, offset: 512)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !46, line: 678, size: 256, elements: !2948)
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2947, file: !46, line: 679, baseType: !1327, size: 192, align: 64)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2947, file: !46, line: 680, baseType: !387, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1161, file: !46, line: 689, baseType: !238, size: 128, offset: 768)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1161, file: !46, line: 691, baseType: !2953, size: 64, offset: 896)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !46, line: 691, flags: DIFlagFwdDecl)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1161, file: !46, line: 694, baseType: !2956, size: 64, offset: 960)
!2956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2957, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2958)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1154, line: 563, size: 1024, elements: !2959)
!2959 = !{!2960, !2964, !2965, !2969, !2973, !2977, !2978, !2982, !2986, !2990, !2991, !2992, !2996, !3000, !3006, !3010}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2958, file: !1154, line: 564, baseType: !2961, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{null, !1160}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2958, file: !1154, line: 569, baseType: !2961, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2958, file: !1154, line: 571, baseType: !2966, size: 64, offset: 128)
!2966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2967, size: 64)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!123, !1160, !387}
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2958, file: !1154, line: 572, baseType: !2970, size: 64, offset: 192)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!123, !1160}
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2958, file: !1154, line: 578, baseType: !2974, size: 64, offset: 256)
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!123, !1160, !387, !387, !387}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2958, file: !1154, line: 580, baseType: !1148, size: 64, offset: 320)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2958, file: !1154, line: 581, baseType: !2979, size: 64, offset: 384)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!1151, !1152, !7}
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2958, file: !1154, line: 582, baseType: !2983, size: 64, offset: 448)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{!1151, !1152, !387, !387}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2958, file: !1154, line: 584, baseType: !2987, size: 64, offset: 512)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DISubroutineType(types: !2989)
!2989 = !{!387, !1160}
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2958, file: !1154, line: 588, baseType: !1148, size: 64, offset: 576)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2958, file: !1154, line: 591, baseType: !1148, size: 64, offset: 640)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2958, file: !1154, line: 597, baseType: !2993, size: 64, offset: 704)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!123, !1160, !387, !232, !123, !123}
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2958, file: !1154, line: 603, baseType: !2997, size: 64, offset: 768)
!2997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2998, size: 64)
!2998 = !DISubroutineType(types: !2999)
!2999 = !{!256, !1160}
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2958, file: !1154, line: 613, baseType: !3001, size: 64, offset: 832)
!3001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3002, size: 64)
!3002 = !DISubroutineType(types: !3003)
!3003 = !{!123, !1160, !3004}
!3004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3005, size: 64)
!3005 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !46, line: 717, flags: DIFlagFwdDecl)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2958, file: !1154, line: 625, baseType: !3007, size: 64, offset: 896)
!3007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3008, size: 64)
!3008 = !DISubroutineType(types: !3009)
!3009 = !{!3004, !1160, !387}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2958, file: !1154, line: 633, baseType: !3011, size: 64, offset: 960)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = !DISubroutineType(types: !3013)
!3013 = !{!1030, !1160, !387}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1161, file: !46, line: 697, baseType: !387, size: 64, offset: 1024)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1161, file: !46, line: 699, baseType: !1200, size: 64, offset: 1088)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1161, file: !46, line: 700, baseType: !232, size: 64, offset: 1152)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1161, file: !46, line: 711, baseType: !720, size: 64, offset: 1216)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1161, file: !46, line: 717, baseType: !3004, size: 64, offset: 1280)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1161, file: !46, line: 722, baseType: !3020, offset: 1344)
!3020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !46, line: 570, elements: !620)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1157, file: !1154, line: 515, baseType: !781, size: 32, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1157, file: !1154, line: 516, baseType: !387, size: 64, offset: 128)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1157, file: !1154, line: 517, baseType: !387, size: 64, offset: 192)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1157, file: !1154, line: 518, baseType: !387, size: 64, offset: 256)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1154, line: 520, baseType: !45, size: 32, offset: 320)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1153, file: !1154, line: 522, baseType: !3027, size: 64, offset: 384)
!3027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3028, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2812, line: 22, baseType: !3029)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2812, line: 22, size: 64, elements: !3030)
!3030 = !{!3031}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !3029, file: !2812, line: 22, baseType: !3032, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2812, line: 15, baseType: !387)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1153, file: !1154, line: 524, baseType: !3034, size: 64, offset: 448)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3035, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2807, line: 372, baseType: !3036)
!3036 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2807, line: 372, size: 64, elements: !3037)
!3037 = !{!3038}
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !3036, file: !2807, line: 372, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2812, line: 16, baseType: !387)
!3040 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1154, line: 527, baseType: !3041, size: 64, offset: 512)
!3041 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1154, line: 527, size: 64, elements: !3042)
!3042 = !{!3043, !3049}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !3041, file: !1154, line: 528, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2812, line: 21, baseType: !3045)
!3045 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2812, line: 21, size: 64, elements: !3046)
!3046 = !{!3047}
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !3045, file: !2812, line: 21, baseType: !3048, size: 64)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2812, line: 14, baseType: !387)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !3041, file: !1154, line: 529, baseType: !3028, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1153, file: !1154, line: 534, baseType: !1030, size: 64, offset: 576)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1153, file: !1154, line: 535, baseType: !1030, size: 64, offset: 640)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1153, file: !1154, line: 541, baseType: !3053, size: 64, offset: 704)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1153, file: !1154, line: 545, baseType: !3055, size: 64, offset: 768)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1153, file: !1154, line: 549, baseType: !3057, size: 64, offset: 832)
!3057 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2807, line: 520, baseType: !1030)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1141, file: !38, line: 100, baseType: !3059, size: 64, offset: 128)
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!123, !1080, !387, !387, !123}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1081, file: !38, line: 134, baseType: !232, size: 64, offset: 960)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1081, file: !38, line: 135, baseType: !123, size: 32, offset: 1024)
!3064 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !38, line: 136, baseType: !3065, size: 128, offset: 1088)
!3065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1081, file: !38, line: 136, size: 128, elements: !3066)
!3066 = !{!3067, !3073}
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !3065, file: !38, line: 137, baseType: !3068, size: 128)
!3068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !3069, line: 6, size: 128, elements: !3070)
!3069 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!3070 = !{!3071, !3072}
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3068, file: !3069, line: 7, baseType: !490, size: 64)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3068, file: !3069, line: 8, baseType: !490, size: 64, offset: 64)
!3073 = !DIDerivedType(tag: DW_TAG_member, scope: !3065, file: !38, line: 138, baseType: !3074)
!3074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3065, file: !38, line: 138, elements: !3075)
!3075 = !{!3076, !3078}
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !3074, file: !38, line: 138, baseType: !3077)
!3077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3074, file: !38, line: 138, elements: !620)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !3074, file: !38, line: 138, baseType: !3079)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3068, elements: !1278)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1077, file: !46, line: 147, baseType: !232, size: 64, offset: 64)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1035, file: !46, line: 161, baseType: !1115, size: 128, align: 64)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !1031, file: !46, line: 164, baseType: !3083, size: 32, offset: 384)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1031, file: !46, line: 164, size: 32, elements: !3084)
!3084 = !{!3085, !3086}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3083, file: !46, line: 169, baseType: !287, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !3083, file: !46, line: 177, baseType: !7, size: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1031, file: !46, line: 181, baseType: !287, size: 32, offset: 416)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "bv_len", scope: !1027, file: !1000, line: 33, baseType: !7, size: 32, offset: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "bv_offset", scope: !1027, file: !1000, line: 34, baseType: !7, size: 32, offset: 96)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "bi_pool", scope: !987, file: !953, line: 317, baseType: !3091, size: 64, offset: 896)
!3091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3092, size: 64)
!3092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_set", file: !3093, line: 678, size: 1984, elements: !3094)
!3093 = !DIFile(filename: "./include/linux/bio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "48d164cf34dda85459af1fe5d2b8d08f")
!3094 = !{!3095, !3096, !3097, !3100, !3121, !3122, !3123, !3124, !3129, !3130, !3131}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "bio_slab", scope: !3092, file: !3093, line: 679, baseType: !2653, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "front_pad", scope: !3092, file: !3093, line: 680, baseType: !7, size: 32, offset: 64)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !3092, file: !3093, line: 685, baseType: !3098, size: 64, offset: 128)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_alloc_cache", file: !3093, line: 685, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "bio_pool", scope: !3092, file: !3093, line: 687, baseType: !3101, size: 576, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_t", file: !3102, line: 26, baseType: !3103)
!3102 = !DIFile(filename: "./include/linux/mempool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ef8a210e9c9e696cc7d6e9be9316611")
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mempool_s", file: !3102, line: 16, size: 576, elements: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3115, !3120}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3103, file: !3102, line: 17, baseType: !267, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "min_nr", scope: !3103, file: !3102, line: 18, baseType: !123, size: 32, offset: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "curr_nr", scope: !3103, file: !3102, line: 19, baseType: !123, size: 32, offset: 64)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !3103, file: !3102, line: 20, baseType: !2761, size: 64, offset: 128)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "pool_data", scope: !3103, file: !3102, line: 22, baseType: !232, size: 64, offset: 192)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3103, file: !3102, line: 23, baseType: !3111, size: 64, offset: 256)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_alloc_t", file: !3102, line: 13, baseType: !3113)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!232, !781, !232}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3103, file: !3102, line: 24, baseType: !3116, size: 64, offset: 320)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DIDerivedType(tag: DW_TAG_typedef, name: "mempool_free_t", file: !3102, line: 14, baseType: !3118)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{null, !232, !232}
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !3103, file: !3102, line: 25, baseType: !1263, size: 192, offset: 384)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "bvec_pool", scope: !3092, file: !3093, line: 688, baseType: !3101, size: 576, offset: 768)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "back_pad", scope: !3092, file: !3093, line: 694, baseType: !7, size: 32, offset: 1344)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_lock", scope: !3092, file: !3093, line: 699, baseType: !267, size: 32, offset: 1376)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_list", scope: !3092, file: !3093, line: 700, baseType: !3125, size: 128, offset: 1408)
!3125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !3093, line: 550, size: 128, elements: !3126)
!3126 = !{!3127, !3128}
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3125, file: !3093, line: 551, baseType: !986, size: 64)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !3125, file: !3093, line: 552, baseType: !986, size: 64, offset: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_work", scope: !3092, file: !3093, line: 701, baseType: !1641, size: 256, offset: 1536)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "rescue_workqueue", scope: !3092, file: !3093, line: 702, baseType: !1664, size: 64, offset: 1792)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "cpuhp_dead", scope: !3092, file: !3093, line: 707, baseType: !612, size: 128, offset: 1856)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "bi_inline_vecs", scope: !987, file: !953, line: 324, baseType: !3133, offset: 960)
!3133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, elements: !1278)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "poll_bio", scope: !980, file: !156, line: 1390, baseType: !3135, size: 64, offset: 64)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = !DISubroutineType(types: !3137)
!3137 = !{!123, !986, !1596, !7}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !980, file: !156, line: 1392, baseType: !3139, size: 64, offset: 128)
!3139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3140, size: 64)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!123, !959, !3142}
!3142 = !DIDerivedType(tag: DW_TAG_typedef, name: "blk_mode_t", file: !156, line: 115, baseType: !7)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !980, file: !156, line: 1393, baseType: !3144, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3145, size: 64)
!3145 = !DISubroutineType(types: !3146)
!3146 = !{null, !959}
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "ioctl", scope: !980, file: !156, line: 1394, baseType: !3148, size: 64, offset: 256)
!3148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3149, size: 64)
!3149 = !DISubroutineType(types: !3150)
!3150 = !{!123, !951, !3142, !7, !387}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !980, file: !156, line: 1396, baseType: !3148, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "check_events", scope: !980, file: !156, line: 1398, baseType: !3153, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3154, size: 64)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!7, !959, !7}
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_native_capacity", scope: !980, file: !156, line: 1400, baseType: !3144, size: 64, offset: 448)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "getgeo", scope: !980, file: !156, line: 1401, baseType: !3158, size: 64, offset: 512)
!3158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3159, size: 64)
!3159 = !DISubroutineType(types: !3160)
!3160 = !{!123, !951, !3161}
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DICompositeType(tag: DW_TAG_structure_type, name: "hd_geometry", file: !14, line: 56, flags: DIFlagFwdDecl)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "set_read_only", scope: !980, file: !156, line: 1402, baseType: !3164, size: 64, offset: 576)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DISubroutineType(types: !3166)
!3166 = !{!123, !951, !1111}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "free_disk", scope: !980, file: !156, line: 1403, baseType: !3144, size: 64, offset: 640)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "swap_slot_free_notify", scope: !980, file: !156, line: 1405, baseType: !3169, size: 64, offset: 704)
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DISubroutineType(types: !3171)
!3171 = !{null, !951, !387}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "report_zones", scope: !980, file: !156, line: 1406, baseType: !3173, size: 64, offset: 768)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DISubroutineType(types: !3175)
!3175 = !{!123, !959, !956, !7, !3176, !232}
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "report_zones_cb", file: !156, line: 342, baseType: !3177)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!123, !3180, !7, !232}
!3180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3181, size: 64)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_zone", file: !3182, line: 106, size: 512, elements: !3183)
!3182 = !DIFile(filename: "./include/uapi/linux/blkzoned.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3d5e7016ed7b437a9c2a308f55db1257")
!3183 = !{!3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3193, !3194}
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3181, file: !3182, line: 107, baseType: !491, size: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3181, file: !3182, line: 108, baseType: !491, size: 64, offset: 64)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "wp", scope: !3181, file: !3182, line: 109, baseType: !491, size: 64, offset: 128)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3181, file: !3182, line: 110, baseType: !297, size: 8, offset: 192)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !3181, file: !3182, line: 111, baseType: !297, size: 8, offset: 200)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "non_seq", scope: !3181, file: !3182, line: 112, baseType: !297, size: 8, offset: 208)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !3181, file: !3182, line: 113, baseType: !297, size: 8, offset: 216)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !3181, file: !3182, line: 114, baseType: !3192, size: 32, offset: 224)
!3192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 32, elements: !1259)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !3181, file: !3182, line: 115, baseType: !491, size: 64, offset: 256)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3181, file: !3182, line: 116, baseType: !3195, size: 192, offset: 320)
!3195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 192, elements: !3196)
!3196 = !{!3197}
!3197 = !DISubrange(count: 24)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !980, file: !156, line: 1408, baseType: !3199, size: 64, offset: 832)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!337, !959, !1992}
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "get_unique_id", scope: !980, file: !156, line: 1410, baseType: !3203, size: 64, offset: 896)
!3203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3204, size: 64)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!123, !959, !3206, !165}
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !980, file: !156, line: 1412, baseType: !233, size: 64, offset: 960)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "pr_ops", scope: !980, file: !156, line: 1413, baseType: !3209, size: 64, offset: 1024)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3211)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "pr_ops", file: !156, line: 37, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "alternative_gpt_sector", scope: !980, file: !156, line: 1420, baseType: !3213, size: 64, offset: 1088)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!123, !959, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !960, file: !156, line: 146, baseType: !1604, size: 64, offset: 640)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !960, file: !156, line: 147, baseType: !232, size: 64, offset: 704)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "bio_split", scope: !960, file: !156, line: 149, baseType: !3092, size: 1984, offset: 768)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !960, file: !156, line: 151, baseType: !123, size: 32, offset: 2752)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !960, file: !156, line: 152, baseType: !387, size: 64, offset: 2816)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "open_mutex", scope: !960, file: !156, line: 161, baseType: !716, size: 256, offset: 2880)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "open_partitions", scope: !960, file: !156, line: 162, baseType: !7, size: 32, offset: 3136)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "bdi", scope: !960, file: !156, line: 164, baseType: !3225, size: 64, offset: 3200)
!3225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3226, size: 64)
!3226 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "queue_kobj", scope: !960, file: !156, line: 165, baseType: !253, size: 512, offset: 3264)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "slave_dir", scope: !960, file: !156, line: 166, baseType: !260, size: 64, offset: 3776)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "slave_bdevs", scope: !960, file: !156, line: 168, baseType: !238, size: 128, offset: 3840)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "random", scope: !960, file: !156, line: 170, baseType: !3231, size: 64, offset: 3968)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DICompositeType(tag: DW_TAG_structure_type, name: "timer_rand_state", file: !156, line: 170, flags: DIFlagFwdDecl)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "sync_io", scope: !960, file: !156, line: 171, baseType: !287, size: 32, offset: 4032)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "ev", scope: !960, file: !156, line: 172, baseType: !3235, size: 64, offset: 4096)
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3236, size: 64)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "disk_events", file: !3, line: 10, size: 1408, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3236, file: !3, line: 11, baseType: !238, size: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "disk", scope: !3236, file: !3, line: 12, baseType: !959, size: 64, offset: 128)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3236, file: !3, line: 13, baseType: !267, size: 32, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "block_mutex", scope: !3236, file: !3, line: 15, baseType: !716, size: 256, offset: 256)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3236, file: !3, line: 16, baseType: !123, size: 32, offset: 512)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3236, file: !3, line: 17, baseType: !7, size: 32, offset: 544)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "clearing", scope: !3236, file: !3, line: 18, baseType: !7, size: 32, offset: 576)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "poll_msecs", scope: !3236, file: !3, line: 20, baseType: !373, size: 64, offset: 640)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "dwork", scope: !3236, file: !3, line: 21, baseType: !1638, size: 704, offset: 704)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "cdi", scope: !960, file: !156, line: 197, baseType: !3248, size: 64, offset: 4160)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdrom_device_info", file: !156, line: 197, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !960, file: !156, line: 199, baseType: !123, size: 32, offset: 4224)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !960, file: !156, line: 200, baseType: !3252, size: 64, offset: 4288)
!3252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3253 = !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !156, line: 105, flags: DIFlagFwdDecl)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "lockdep_map", scope: !960, file: !156, line: 201, baseType: !1907, offset: 4352)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "diskseq", scope: !960, file: !156, line: 202, baseType: !490, size: 64, offset: 4352)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !960, file: !156, line: 203, baseType: !3142, size: 32, offset: 4416)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ranges", scope: !960, file: !156, line: 209, baseType: !3258, size: 64, offset: 4480)
!3258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3259, size: 64)
!3259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_ranges", file: !156, line: 384, size: 576, elements: !3260)
!3260 = !{!3261, !3262, !3263, !3264}
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3259, file: !156, line: 385, baseType: !253, size: 512)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_registered", scope: !3259, file: !156, line: 386, baseType: !1111, size: 8, offset: 512)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ia_ranges", scope: !3259, file: !156, line: 387, baseType: !7, size: 32, offset: 544)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "ia_range", scope: !3259, file: !156, line: 388, baseType: !3265, offset: 576)
!3265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3266, elements: !1278)
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_independent_access_range", file: !156, line: 378, size: 640, elements: !3267)
!3267 = !{!3268, !3269, !3270}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !3266, file: !156, line: 379, baseType: !253, size: 512)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !3266, file: !156, line: 380, baseType: !956, size: 64, offset: 512)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "nr_sectors", scope: !3266, file: !156, line: 381, baseType: !956, size: 64, offset: 576)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "bd_queue", scope: !952, file: !953, line: 44, baseType: !1604, size: 64, offset: 192)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stats", scope: !952, file: !953, line: 45, baseType: !3273, size: 64, offset: 256)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "disk_stats", file: !953, line: 45, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "bd_stamp", scope: !952, file: !953, line: 46, baseType: !387, size: 64, offset: 320)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "bd_read_only", scope: !952, file: !953, line: 47, baseType: !1111, size: 8, offset: 384)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "bd_partno", scope: !952, file: !953, line: 48, baseType: !295, size: 8, offset: 392)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "bd_write_holder", scope: !952, file: !953, line: 49, baseType: !1111, size: 8, offset: 400)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "bd_has_submit_bio", scope: !952, file: !953, line: 50, baseType: !1111, size: 8, offset: 408)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "bd_dev", scope: !952, file: !953, line: 51, baseType: !573, size: 32, offset: 416)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "bd_openers", scope: !952, file: !953, line: 52, baseType: !287, size: 32, offset: 448)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "bd_size_lock", scope: !952, file: !953, line: 53, baseType: !267, size: 32, offset: 480)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "bd_inode", scope: !952, file: !953, line: 54, baseType: !417, size: 64, offset: 512)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "bd_claiming", scope: !952, file: !953, line: 55, baseType: !232, size: 64, offset: 576)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder", scope: !952, file: !953, line: 56, baseType: !232, size: 64, offset: 640)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_ops", scope: !952, file: !953, line: 57, baseType: !3287, size: 64, offset: 704)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3289)
!3289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_holder_ops", file: !156, line: 1477, size: 128, elements: !3290)
!3290 = !{!3291, !3295}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dead", scope: !3289, file: !156, line: 1478, baseType: !3292, size: 64)
!3292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3293, size: 64)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !951, !1111}
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !3289, file: !156, line: 1483, baseType: !3296, size: 64, offset: 64)
!3296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3297, size: 64)
!3297 = !DISubroutineType(types: !3298)
!3298 = !{null, !951}
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_lock", scope: !952, file: !953, line: 58, baseType: !716, size: 256, offset: 768)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_count", scope: !952, file: !953, line: 60, baseType: !123, size: 32, offset: 1024)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holders", scope: !952, file: !953, line: 61, baseType: !123, size: 32, offset: 1056)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "bd_holder_dir", scope: !952, file: !953, line: 62, baseType: !260, size: 64, offset: 1088)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_mutex", scope: !952, file: !953, line: 65, baseType: !716, size: 256, offset: 1152)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fsfreeze_sb", scope: !952, file: !953, line: 66, baseType: !568, size: 64, offset: 1408)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "bd_meta_info", scope: !952, file: !953, line: 68, baseType: !3306, size: 64, offset: 1472)
!3306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3307, size: 64)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_meta_info", file: !156, line: 63, size: 808, elements: !3308)
!3308 = !{!3309, !3313}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !3307, file: !156, line: 64, baseType: !3310, size: 296)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 296, elements: !3311)
!3311 = !{!3312}
!3312 = !DISubrange(count: 37)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "volname", scope: !3307, file: !156, line: 65, baseType: !3314, size: 512, offset: 296)
!3314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 512, elements: !342)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "bd_ro_warned", scope: !952, file: !953, line: 72, baseType: !1111, size: 8, offset: 1536)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "bd_device", scope: !952, file: !953, line: 77, baseType: !1967, size: 5824, offset: 1600)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !569, file: !14, line: 1226, baseType: !3318, size: 64, offset: 1664)
!3318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3319, size: 64)
!3319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !156, line: 1495, size: 128, elements: !3320)
!3320 = !{!3321, !3322}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !3319, file: !156, line: 1496, baseType: !951, size: 64)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "holder", scope: !3319, file: !156, line: 1497, baseType: !232, size: 64, offset: 64)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !569, file: !14, line: 1227, baseType: !3225, size: 64, offset: 1728)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !569, file: !14, line: 1228, baseType: !3325, size: 64, offset: 1792)
!3325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3326, size: 64)
!3326 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !569, file: !14, line: 1229, baseType: !612, size: 128, offset: 1856)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !569, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !569, file: !14, line: 1231, baseType: !3330, size: 2496, offset: 2048)
!3330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !19, line: 521, size: 2496, elements: !3331)
!3331 = !{!3332, !3333, !3334, !3336, !3368}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3330, file: !19, line: 522, baseType: !7, size: 32)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3330, file: !19, line: 523, baseType: !929, size: 320, offset: 64)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3330, file: !19, line: 524, baseType: !3335, size: 192, offset: 384)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 192, elements: !338)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3330, file: !19, line: 525, baseType: !3337, size: 1728, offset: 576)
!3337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3338, size: 1728, elements: !338)
!3338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !19, line: 222, size: 576, elements: !3339)
!3339 = !{!3340, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367}
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3338, file: !19, line: 223, baseType: !3341, size: 64)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !19, line: 445, size: 256, elements: !3343)
!3343 = !{!3344, !3345, !3358, !3359}
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3342, file: !19, line: 446, baseType: !123, size: 32)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3342, file: !19, line: 447, baseType: !3346, size: 64, offset: 64)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3348)
!3348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !19, line: 312, size: 512, elements: !3349)
!3349 = !{!3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357}
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3348, file: !19, line: 313, baseType: !660, size: 64)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3348, file: !19, line: 314, baseType: !660, size: 64, offset: 64)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3348, file: !19, line: 315, baseType: !660, size: 64, offset: 128)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3348, file: !19, line: 316, baseType: !660, size: 64, offset: 192)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3348, file: !19, line: 317, baseType: !796, size: 64, offset: 256)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3348, file: !19, line: 318, baseType: !796, size: 64, offset: 320)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3348, file: !19, line: 319, baseType: !796, size: 64, offset: 384)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3348, file: !19, line: 320, baseType: !826, size: 64, offset: 448)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3342, file: !19, line: 448, baseType: !233, size: 64, offset: 128)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3342, file: !19, line: 449, baseType: !3341, size: 64, offset: 192)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3338, file: !19, line: 224, baseType: !123, size: 32, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3338, file: !19, line: 226, baseType: !238, size: 128, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3338, file: !19, line: 227, baseType: !387, size: 64, offset: 256)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3338, file: !19, line: 228, baseType: !7, size: 32, offset: 320)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3338, file: !19, line: 229, baseType: !7, size: 32, offset: 352)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3338, file: !19, line: 230, baseType: !761, size: 64, offset: 384)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3338, file: !19, line: 231, baseType: !761, size: 64, offset: 448)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3338, file: !19, line: 232, baseType: !232, size: 64, offset: 512)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3330, file: !19, line: 526, baseType: !3369, size: 192, offset: 2304)
!3369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3346, size: 192, elements: !338)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !569, file: !14, line: 1233, baseType: !3371, size: 2368, offset: 4544)
!3371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !3372)
!3372 = !{!3373, !3374, !3375}
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3371, file: !14, line: 1185, baseType: !307, size: 16)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3371, file: !14, line: 1186, baseType: !307, size: 16, offset: 16)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3371, file: !14, line: 1187, baseType: !3376, size: 2304, offset: 64)
!3376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3377, size: 2304, elements: !338)
!3377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3378, line: 12, size: 768, elements: !3379)
!3378 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3379 = !{!3380, !3388, !3389, !4505, !4506}
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3377, file: !3378, line: 13, baseType: !3381, size: 384)
!3381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3382, line: 17, size: 384, elements: !3383)
!3382 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3383 = !{!3384, !3385, !3386, !3387}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3381, file: !3382, line: 18, baseType: !123, size: 32)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3381, file: !3382, line: 19, baseType: !123, size: 32, offset: 32)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3381, file: !3382, line: 20, baseType: !1263, size: 192, offset: 64)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3381, file: !3382, line: 22, baseType: !1115, size: 128, align: 64, offset: 256)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3377, file: !3378, line: 14, baseType: !1715, size: 64, offset: 384)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3377, file: !3378, line: 15, baseType: !3390, size: 64, offset: 448)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3391, line: 16, size: 64, elements: !3392)
!3391 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3392 = !{!3393}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3390, file: !3391, line: 17, baseType: !3394, size: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !691, line: 746, size: 58368, elements: !3396)
!3396 = !{!3397, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3477, !3488, !3508, !3512, !3515, !3546, !3547, !3548, !3549, !3553, !3555, !3556, !3557, !3558, !3559, !3560, !3571, !3572, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3589, !3590, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3610, !3611, !3612, !3613, !3614, !3615, !3616, !3617, !3618, !3619, !3620, !3621, !3678, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3693, !3694, !3695, !3697, !3698, !3699, !3700, !3701, !3702, !3703, !3709, !3710, !3711, !3712, !3713, !3714, !3715, !3727, !3733, !3734, !3735, !3736, !3737, !3741, !3744, !3751, !3756, !3759, !3762, !3765, !3768, !3906, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3946, !3947, !3948, !3957, !3965, !3966, !3967, !3968, !3969, !3974, !3975, !3976, !3979, !3980, !3982, !3993, !3996, !3997, !4000, !4001, !4087, !4088, !4089, !4090, !4091, !4097, !4098, !4099, !4100, !4103, !4104, !4107, !4110, !4111, !4114, !4115, !4116, !4119, !4120, !4121, !4122, !4123, !4124, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4156, !4157, !4163, !4166, !4167, !4168, !4169, !4170, !4171, !4172, !4173, !4245, !4247, !4248, !4249, !4250, !4251, !4252, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4282, !4283, !4284}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !3395, file: !691, line: 752, baseType: !3398, size: 192)
!3398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !3399, line: 56, size: 192, elements: !3400)
!3399 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!3400 = !{!3401, !3402, !3403, !3404}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3398, file: !3399, line: 57, baseType: !387, size: 64)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !3398, file: !3399, line: 58, baseType: !387, size: 64, offset: 64)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3398, file: !3399, line: 59, baseType: !486, size: 32, offset: 128)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3398, file: !3399, line: 61, baseType: !486, size: 32, offset: 160)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !3395, file: !691, line: 754, baseType: !7, size: 32, offset: 192)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3395, file: !691, line: 767, baseType: !232, size: 64, offset: 256)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !3395, file: !691, line: 768, baseType: !1250, size: 32, offset: 320)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3395, file: !691, line: 770, baseType: !7, size: 32, offset: 352)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !3395, file: !691, line: 771, baseType: !7, size: 32, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !3395, file: !691, line: 774, baseType: !123, size: 32, offset: 416)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !3395, file: !691, line: 775, baseType: !3412, size: 128, offset: 448)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !3413, line: 58, size: 128, elements: !3414)
!3413 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!3414 = !{!3415, !3416, !3421, !3422}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !3412, file: !3413, line: 59, baseType: !1207, size: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !3413, line: 60, baseType: !3417, size: 32, offset: 64)
!3417 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3412, file: !3413, line: 60, size: 32, elements: !3418)
!3418 = !{!3419, !3420}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !3417, file: !3413, line: 61, baseType: !7, size: 32)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !3417, file: !3413, line: 62, baseType: !287, size: 32)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !3412, file: !3413, line: 65, baseType: !305, size: 16, offset: 96)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !3412, file: !3413, line: 65, baseType: !305, size: 16, offset: 112)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !3395, file: !691, line: 776, baseType: !7, size: 32, offset: 576)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !3395, file: !691, line: 777, baseType: !387, size: 64, offset: 640)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !3395, file: !691, line: 778, baseType: !3394, size: 64, offset: 704)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !3395, file: !691, line: 787, baseType: !123, size: 32, offset: 768)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !3395, file: !691, line: 788, baseType: !123, size: 32, offset: 800)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3395, file: !691, line: 790, baseType: !123, size: 32, offset: 832)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3395, file: !691, line: 792, baseType: !123, size: 32, offset: 864)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !3395, file: !691, line: 793, baseType: !123, size: 32, offset: 896)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !3395, file: !691, line: 794, baseType: !123, size: 32, offset: 928)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !3395, file: !691, line: 795, baseType: !7, size: 32, offset: 960)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !3395, file: !691, line: 797, baseType: !3434, size: 2048, offset: 1024)
!3434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !691, line: 551, size: 2048, elements: !3435)
!3435 = !{!3436, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3456, !3459, !3460, !3461}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !3434, file: !691, line: 553, baseType: !3437, size: 128)
!3437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !691, line: 411, size: 128, elements: !3438)
!3438 = !{!3439, !3440}
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !3437, file: !691, line: 412, baseType: !387, size: 64)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !3437, file: !691, line: 413, baseType: !486, size: 32, offset: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !3434, file: !691, line: 554, baseType: !1327, size: 192, align: 64, offset: 128)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3434, file: !691, line: 555, baseType: !490, size: 64, offset: 320)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !3434, file: !691, line: 556, baseType: !490, size: 64, offset: 384)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !3434, file: !691, line: 558, baseType: !238, size: 128, offset: 448)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3434, file: !691, line: 559, baseType: !7, size: 32, offset: 576)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !3434, file: !691, line: 561, baseType: !490, size: 64, offset: 640)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3434, file: !691, line: 562, baseType: !490, size: 64, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !3434, file: !691, line: 563, baseType: !490, size: 64, offset: 768)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !3434, file: !691, line: 564, baseType: !490, size: 64, offset: 832)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !3434, file: !691, line: 565, baseType: !726, size: 64, offset: 896)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !3434, file: !691, line: 566, baseType: !490, size: 64, offset: 960)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !3434, file: !691, line: 568, baseType: !490, size: 64, offset: 1024)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3434, file: !691, line: 571, baseType: !123, size: 32, offset: 1088)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3434, file: !691, line: 572, baseType: !3455, size: 64, offset: 1152)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !3434, file: !691, line: 574, baseType: !3457, size: 64, offset: 1216)
!3457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3458, size: 64)
!3458 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !691, line: 49, flags: DIFlagFwdDecl)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !3434, file: !691, line: 576, baseType: !3457, size: 64, offset: 1280)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !3434, file: !691, line: 578, baseType: !387, size: 64, offset: 1344)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !3434, file: !691, line: 588, baseType: !3462, size: 512, align: 512, offset: 1536)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !691, line: 497, size: 512, align: 512, elements: !3463)
!3463 = !{!3464, !3465, !3466, !3467, !3468, !3469, !3470, !3471, !3472}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !3462, file: !691, line: 498, baseType: !490, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !3462, file: !691, line: 499, baseType: !490, size: 64, offset: 64)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !3462, file: !691, line: 500, baseType: !490, size: 64, offset: 128)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !3462, file: !691, line: 501, baseType: !486, size: 32, offset: 192)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !3462, file: !691, line: 502, baseType: !486, size: 32, offset: 224)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !3462, file: !691, line: 503, baseType: !387, size: 64, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !3462, file: !691, line: 504, baseType: !387, size: 64, offset: 320)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !3462, file: !691, line: 505, baseType: !387, size: 64, offset: 384)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !3462, file: !691, line: 506, baseType: !3473, size: 64, align: 64, offset: 448)
!3473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !691, line: 445, size: 64, align: 64, elements: !3474)
!3474 = !{!3475, !3476}
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !3473, file: !691, line: 446, baseType: !7, size: 32)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !3473, file: !691, line: 447, baseType: !7, size: 32, offset: 32)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !3395, file: !691, line: 798, baseType: !3478, size: 384, offset: 3072)
!3478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !691, line: 592, size: 384, elements: !3479)
!3479 = !{!3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !3478, file: !691, line: 593, baseType: !238, size: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !3478, file: !691, line: 594, baseType: !387, size: 64, offset: 128)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !3478, file: !691, line: 595, baseType: !387, size: 64, offset: 192)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !3478, file: !691, line: 596, baseType: !7, size: 32, offset: 256)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !3478, file: !691, line: 597, baseType: !307, size: 16, offset: 288)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !3478, file: !691, line: 598, baseType: !307, size: 16, offset: 304)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !3478, file: !691, line: 600, baseType: !3487, size: 64, offset: 320)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !3395, file: !691, line: 799, baseType: !3489, size: 1792, offset: 3456)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !691, line: 610, size: 1792, elements: !3490)
!3490 = !{!3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !3489, file: !691, line: 611, baseType: !1327, size: 192, align: 64)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !3489, file: !691, line: 618, baseType: !490, size: 64, offset: 192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !3489, file: !691, line: 619, baseType: !490, size: 64, offset: 256)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !3489, file: !691, line: 620, baseType: !490, size: 64, offset: 320)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !3489, file: !691, line: 621, baseType: !490, size: 64, offset: 384)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !3489, file: !691, line: 622, baseType: !490, size: 64, offset: 448)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !3489, file: !691, line: 629, baseType: !726, size: 64, offset: 512)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !3489, file: !691, line: 630, baseType: !490, size: 64, offset: 576)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3489, file: !691, line: 631, baseType: !7, size: 32, offset: 640)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !3489, file: !691, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !3489, file: !691, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !3489, file: !691, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !3489, file: !691, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !3489, file: !691, line: 662, baseType: !2164, size: 512, offset: 704)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !3489, file: !691, line: 671, baseType: !2164, size: 512, offset: 1216)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !3489, file: !691, line: 679, baseType: !3507, size: 64, offset: 1728)
!3507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !3395, file: !691, line: 800, baseType: !3509, size: 64, offset: 5248)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3511)
!3511 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !691, line: 800, flags: DIFlagFwdDecl)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !3395, file: !691, line: 809, baseType: !3513, size: 64, offset: 5312)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !691, line: 70, flags: DIFlagFwdDecl)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3395, file: !691, line: 825, baseType: !3516, size: 2048, align: 512, offset: 5632)
!3516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !691, line: 509, size: 2048, align: 512, elements: !3517)
!3517 = !{!3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542, !3543, !3544, !3545}
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !3516, file: !691, line: 511, baseType: !490, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !3516, file: !691, line: 512, baseType: !490, size: 64, offset: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !3516, file: !691, line: 513, baseType: !490, size: 64, offset: 128)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !3516, file: !691, line: 514, baseType: !490, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !3516, file: !691, line: 515, baseType: !490, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !3516, file: !691, line: 516, baseType: !490, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !3516, file: !691, line: 518, baseType: !490, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !3516, file: !691, line: 519, baseType: !490, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !3516, file: !691, line: 520, baseType: !726, size: 64, offset: 512)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !3516, file: !691, line: 522, baseType: !490, size: 64, offset: 576)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !3516, file: !691, line: 523, baseType: !490, size: 64, offset: 640)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !3516, file: !691, line: 524, baseType: !726, size: 64, offset: 704)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !3516, file: !691, line: 526, baseType: !726, size: 64, offset: 768)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !3516, file: !691, line: 527, baseType: !490, size: 64, offset: 832)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !3516, file: !691, line: 529, baseType: !490, size: 64, offset: 896)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !3516, file: !691, line: 530, baseType: !490, size: 64, offset: 960)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !3516, file: !691, line: 531, baseType: !490, size: 64, offset: 1024)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !3516, file: !691, line: 532, baseType: !490, size: 64, offset: 1088)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !3516, file: !691, line: 533, baseType: !490, size: 64, offset: 1152)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !3516, file: !691, line: 535, baseType: !490, size: 64, offset: 1216)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !3516, file: !691, line: 536, baseType: !490, size: 64, offset: 1280)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !3516, file: !691, line: 537, baseType: !490, size: 64, offset: 1344)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !3516, file: !691, line: 538, baseType: !490, size: 64, offset: 1408)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !3516, file: !691, line: 539, baseType: !490, size: 64, offset: 1472)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !3516, file: !691, line: 540, baseType: !490, size: 64, offset: 1536)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !3516, file: !691, line: 541, baseType: !490, size: 64, offset: 1600)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !3516, file: !691, line: 542, baseType: !490, size: 64, offset: 1664)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !3516, file: !691, line: 543, baseType: !490, size: 64, offset: 1728)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !3395, file: !691, line: 833, baseType: !7, size: 32, offset: 7680)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !3395, file: !691, line: 836, baseType: !7, size: 32, offset: 7712)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !3395, file: !691, line: 837, baseType: !123, size: 32, offset: 7744)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !3395, file: !691, line: 838, baseType: !3550, size: 64, offset: 7808)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3552)
!3552 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1669, line: 19, baseType: !1671)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !3395, file: !691, line: 839, baseType: !3554, size: 64, offset: 7872)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !3395, file: !691, line: 840, baseType: !3552, size: 64, offset: 7936)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !3395, file: !691, line: 841, baseType: !232, size: 64, offset: 8000)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !3395, file: !691, line: 843, baseType: !307, size: 16, offset: 8064)
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !3395, file: !691, line: 845, baseType: !307, size: 16, offset: 8080)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !3395, file: !691, line: 848, baseType: !123, size: 32, offset: 8096)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !3395, file: !691, line: 849, baseType: !3561, size: 32, offset: 8128)
!3561 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !691, line: 718, size: 32, elements: !3562)
!3562 = !{!3563, !3570}
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3561, file: !691, line: 724, baseType: !3564, size: 32)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3561, file: !691, line: 719, size: 32, elements: !3565)
!3565 = !{!3566, !3567, !3568, !3569}
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3564, file: !691, line: 720, baseType: !295, size: 8)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !3564, file: !691, line: 721, baseType: !295, size: 8, offset: 8)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !3564, file: !691, line: 722, baseType: !295, size: 8, offset: 16)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !3564, file: !691, line: 723, baseType: !295, size: 8, offset: 24)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3561, file: !691, line: 725, baseType: !486, size: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !3395, file: !691, line: 850, baseType: !238, size: 128, offset: 8192)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !3395, file: !691, line: 851, baseType: !3573, size: 64, offset: 8320)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !691, line: 60, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !3395, file: !691, line: 855, baseType: !387, size: 64, offset: 8384)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !3395, file: !691, line: 856, baseType: !295, size: 8, offset: 8448)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !3395, file: !691, line: 857, baseType: !295, size: 8, offset: 8456)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !3395, file: !691, line: 858, baseType: !123, size: 32, offset: 8480)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !3395, file: !691, line: 859, baseType: !238, size: 128, offset: 8512)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !3395, file: !691, line: 860, baseType: !123, size: 32, offset: 8640)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !3395, file: !691, line: 861, baseType: !238, size: 128, offset: 8704)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !3395, file: !691, line: 873, baseType: !3583, size: 256, offset: 8832)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !691, line: 376, size: 256, elements: !3584)
!3584 = !{!3585, !3586, !3587, !3588}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !3583, file: !691, line: 381, baseType: !387, size: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !3583, file: !691, line: 384, baseType: !492, size: 64, offset: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !3583, file: !691, line: 389, baseType: !492, size: 64, offset: 128)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !3583, file: !691, line: 392, baseType: !492, size: 64, offset: 192)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !3395, file: !691, line: 875, baseType: !238, size: 128, offset: 9088)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !3395, file: !691, line: 877, baseType: !3591, size: 320, offset: 9216)
!3591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !3592, line: 86, size: 320, elements: !3593)
!3592 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!3593 = !{!3594, !3595, !3596}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !3591, file: !3592, line: 87, baseType: !123, size: 32)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !3591, file: !3592, line: 88, baseType: !238, size: 128, offset: 64)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !3591, file: !3592, line: 89, baseType: !238, size: 128, offset: 192)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !3395, file: !691, line: 878, baseType: !1327, size: 192, align: 64, offset: 9536)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !3395, file: !691, line: 881, baseType: !1173, size: 64, offset: 9728)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !3395, file: !691, line: 882, baseType: !1173, size: 64, offset: 9792)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !3395, file: !691, line: 884, baseType: !123, size: 32, offset: 9856)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !3395, file: !691, line: 885, baseType: !123, size: 32, offset: 9888)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !3395, file: !691, line: 886, baseType: !123, size: 32, offset: 9920)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !3395, file: !691, line: 888, baseType: !123, size: 32, offset: 9952)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !3395, file: !691, line: 890, baseType: !387, size: 64, offset: 9984)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !3395, file: !691, line: 893, baseType: !7, size: 32, offset: 10048)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !3395, file: !691, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !3395, file: !691, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !3395, file: !691, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !3395, file: !691, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !3395, file: !691, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !3395, file: !691, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !3395, file: !691, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !3395, file: !691, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !3395, file: !691, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3395, file: !691, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !3395, file: !691, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !3395, file: !691, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !3395, file: !691, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !3395, file: !691, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !3395, file: !691, line: 969, baseType: !387, size: 64, offset: 10176)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !3395, file: !691, line: 971, baseType: !3622, size: 448, offset: 10240)
!3622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !3623)
!3623 = !{!3624, !3625, !3630}
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3622, file: !62, line: 26, baseType: !387, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3622, file: !62, line: 27, baseType: !3626, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3627, size: 64)
!3627 = !DISubroutineType(types: !3628)
!3628 = !{!373, !3629}
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, scope: !3622, file: !62, line: 28, baseType: !3631, size: 320, offset: 128)
!3631 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3622, file: !62, line: 28, size: 320, elements: !3632)
!3632 = !{!3633, !3643, !3668}
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3631, file: !62, line: 37, baseType: !3634, size: 320)
!3634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3631, file: !62, line: 30, size: 320, elements: !3635)
!3635 = !{!3636, !3638, !3639, !3640, !3641, !3642}
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3634, file: !62, line: 31, baseType: !3637, size: 64)
!3637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3634, file: !62, line: 32, baseType: !486, size: 32, offset: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3634, file: !62, line: 33, baseType: !486, size: 32, offset: 96)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3634, file: !62, line: 34, baseType: !486, size: 32, offset: 128)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3634, file: !62, line: 35, baseType: !490, size: 64, offset: 192)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3634, file: !62, line: 36, baseType: !3637, size: 64, offset: 256)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3631, file: !62, line: 47, baseType: !3644, size: 192)
!3644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3631, file: !62, line: 39, size: 192, elements: !3645)
!3645 = !{!3646, !3647, !3648, !3667}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3644, file: !62, line: 40, baseType: !2209, size: 32)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3644, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!3648 = !DIDerivedType(tag: DW_TAG_member, scope: !3644, file: !62, line: 42, baseType: !3649, size: 64, offset: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3644, file: !62, line: 42, size: 64, elements: !3650)
!3650 = !{!3651, !3659}
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3649, file: !62, line: 43, baseType: !3652, size: 64)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3654, line: 7, size: 128, elements: !3655)
!3654 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3655 = !{!3656, !3658}
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3653, file: !3654, line: 8, baseType: !3657, size: 64)
!3657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !371, line: 93, baseType: !580)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3653, file: !3654, line: 9, baseType: !580, size: 64, offset: 64)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3649, file: !62, line: 44, baseType: !3660, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3661, size: 64)
!3661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3662, line: 7, size: 64, elements: !3663)
!3662 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3663 = !{!3664, !3666}
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3661, file: !3662, line: 8, baseType: !3665, size: 32)
!3665 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3662, line: 5, baseType: !1320)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3661, file: !3662, line: 9, baseType: !1320, size: 32, offset: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3644, file: !62, line: 46, baseType: !490, size: 64, offset: 128)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3631, file: !62, line: 55, baseType: !3669, size: 256)
!3669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3631, file: !62, line: 49, size: 256, elements: !3670)
!3670 = !{!3671, !3674, !3675, !3676, !3677}
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3669, file: !62, line: 50, baseType: !3672, size: 64)
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3669, file: !62, line: 51, baseType: !123, size: 32, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3669, file: !62, line: 52, baseType: !123, size: 32, offset: 96)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3669, file: !62, line: 53, baseType: !387, size: 64, offset: 128)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3669, file: !62, line: 54, baseType: !387, size: 64, offset: 192)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !3395, file: !691, line: 973, baseType: !3679, size: 32, offset: 10688)
!3679 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !239, line: 27, baseType: !3680)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !371, line: 28, baseType: !123)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !3395, file: !691, line: 974, baseType: !3679, size: 32, offset: 10720)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !3395, file: !691, line: 978, baseType: !387, size: 64, offset: 10752)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !3395, file: !691, line: 987, baseType: !3394, size: 64, offset: 10816)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3395, file: !691, line: 990, baseType: !3394, size: 64, offset: 10880)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3395, file: !691, line: 995, baseType: !238, size: 128, offset: 10944)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !3395, file: !691, line: 996, baseType: !238, size: 128, offset: 11072)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !3395, file: !691, line: 997, baseType: !3394, size: 64, offset: 11200)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !3395, file: !691, line: 1005, baseType: !238, size: 128, offset: 11264)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !3395, file: !691, line: 1006, baseType: !238, size: 128, offset: 11392)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !3395, file: !691, line: 1009, baseType: !1246, size: 64, offset: 11520)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !3395, file: !691, line: 1010, baseType: !3692, size: 512, offset: 11584)
!3692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 512, elements: !1259)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !3395, file: !691, line: 1011, baseType: !238, size: 128, offset: 12096)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !3395, file: !691, line: 1012, baseType: !238, size: 128, offset: 12224)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !3395, file: !691, line: 1014, baseType: !3696, size: 64, offset: 12352)
!3696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !3395, file: !691, line: 1017, baseType: !683, size: 64, offset: 12416)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !3395, file: !691, line: 1020, baseType: !683, size: 64, offset: 12480)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !3395, file: !691, line: 1023, baseType: !232, size: 64, offset: 12544)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3395, file: !691, line: 1025, baseType: !490, size: 64, offset: 12608)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3395, file: !691, line: 1026, baseType: !490, size: 64, offset: 12672)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3395, file: !691, line: 1031, baseType: !490, size: 64, offset: 12736)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3395, file: !691, line: 1032, baseType: !3704, size: 192, offset: 12800)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !691, line: 324, size: 192, elements: !3705)
!3705 = !{!3706, !3707, !3708}
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3704, file: !691, line: 326, baseType: !490, size: 64)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3704, file: !691, line: 327, baseType: !490, size: 64, offset: 64)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3704, file: !691, line: 328, baseType: !729, size: 32, offset: 128)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3395, file: !691, line: 1041, baseType: !387, size: 64, offset: 12992)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3395, file: !691, line: 1042, baseType: !387, size: 64, offset: 13056)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !3395, file: !691, line: 1045, baseType: !490, size: 64, offset: 13120)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !3395, file: !691, line: 1048, baseType: !490, size: 64, offset: 13184)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3395, file: !691, line: 1051, baseType: !387, size: 64, offset: 13248)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3395, file: !691, line: 1052, baseType: !387, size: 64, offset: 13312)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3395, file: !691, line: 1055, baseType: !3716, size: 640, offset: 13376)
!3716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3717, line: 132, size: 640, elements: !3718)
!3717 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3718 = !{!3719, !3725, !3726}
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3716, file: !3717, line: 133, baseType: !3720, size: 576)
!3720 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3721, size: 576, elements: !338)
!3721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3717, line: 117, size: 192, elements: !3722)
!3722 = !{!3723, !3724}
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3721, file: !3717, line: 118, baseType: !490, size: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3721, file: !3717, line: 119, baseType: !2218, size: 128, offset: 64)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3716, file: !3717, line: 134, baseType: !7, size: 32, offset: 576)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3716, file: !3717, line: 135, baseType: !7, size: 32, offset: 608)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !3395, file: !691, line: 1058, baseType: !3728, size: 448, offset: 14016)
!3728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3717, line: 144, size: 448, elements: !3729)
!3729 = !{!3730, !3731, !3732}
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3728, file: !3717, line: 145, baseType: !1115, size: 128, align: 64)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3728, file: !3717, line: 146, baseType: !716, size: 256, offset: 128)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3728, file: !3717, line: 147, baseType: !7, size: 32, offset: 384)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !3395, file: !691, line: 1064, baseType: !1285, size: 64, offset: 14464)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !3395, file: !691, line: 1067, baseType: !1285, size: 64, offset: 14528)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !3395, file: !691, line: 1070, baseType: !1285, size: 64, offset: 14592)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !3395, file: !691, line: 1074, baseType: !1312, size: 64, offset: 14656)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !3395, file: !691, line: 1084, baseType: !3738, size: 128, offset: 14720)
!3738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !3739)
!3739 = !{!3740}
!3740 = !DISubrange(count: 16)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !3395, file: !691, line: 1086, baseType: !3742, size: 64, offset: 14848)
!3742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3743, size: 64)
!3743 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !691, line: 55, flags: DIFlagFwdDecl)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !3395, file: !691, line: 1089, baseType: !3745, size: 64, offset: 14912)
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3746, line: 12, size: 64, elements: !3747)
!3746 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3747 = !{!3748}
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3745, file: !3746, line: 13, baseType: !3749, size: 64)
!3749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3750, size: 64)
!3750 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3746, line: 8, flags: DIFlagFwdDecl)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !3395, file: !691, line: 1090, baseType: !3752, size: 128, offset: 14976)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3753, line: 13, size: 128, elements: !3754)
!3753 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3754 = !{!3755}
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3752, file: !3753, line: 14, baseType: !238, size: 128)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !3395, file: !691, line: 1097, baseType: !3757, size: 64, offset: 15104)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !691, line: 50, flags: DIFlagFwdDecl)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3395, file: !691, line: 1100, baseType: !3760, size: 64, offset: 15168)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !691, line: 1100, flags: DIFlagFwdDecl)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !3395, file: !691, line: 1103, baseType: !3763, size: 64, offset: 15232)
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !691, line: 53, flags: DIFlagFwdDecl)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !3395, file: !691, line: 1107, baseType: !3766, size: 64, offset: 15296)
!3766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3767, size: 64)
!3767 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !691, line: 56, flags: DIFlagFwdDecl)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3395, file: !691, line: 1110, baseType: !3769, size: 64, offset: 15360)
!3769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3770, size: 64)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3771, line: 93, size: 8768, elements: !3772)
!3771 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3772 = !{!3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3820, !3829, !3830, !3832, !3833, !3834, !3837, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3875, !3876, !3883, !3893, !3896, !3897, !3900, !3901, !3902, !3903, !3904, !3905}
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3770, file: !3771, line: 94, baseType: !1250, size: 32)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3770, file: !3771, line: 95, baseType: !287, size: 32, offset: 32)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3770, file: !3771, line: 96, baseType: !123, size: 32, offset: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3770, file: !3771, line: 97, baseType: !123, size: 32, offset: 96)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3770, file: !3771, line: 98, baseType: !238, size: 128, offset: 128)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3770, file: !3771, line: 100, baseType: !1263, size: 192, offset: 256)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3770, file: !3771, line: 103, baseType: !3394, size: 64, offset: 448)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3770, file: !3771, line: 106, baseType: !3781, size: 192, offset: 512)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1470, line: 32, size: 192, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3781, file: !1470, line: 33, baseType: !238, size: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3781, file: !1470, line: 34, baseType: !3785, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3786, line: 25, baseType: !3787)
!3786 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3786, line: 23, size: 64, elements: !3788)
!3788 = !{!3789}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3787, file: !3786, line: 24, baseType: !1674, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3770, file: !3771, line: 109, baseType: !608, size: 64, offset: 704)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3770, file: !3771, line: 112, baseType: !123, size: 32, offset: 768)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3770, file: !3771, line: 114, baseType: !123, size: 32, offset: 800)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3770, file: !3771, line: 115, baseType: !3394, size: 64, offset: 832)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3770, file: !3771, line: 118, baseType: !123, size: 32, offset: 896)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3770, file: !3771, line: 119, baseType: !7, size: 32, offset: 928)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3770, file: !3771, line: 121, baseType: !3797, size: 64, offset: 960)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3798, size: 64)
!3798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3771, line: 80, size: 448, elements: !3799)
!3799 = !{!3800, !3801, !3807}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3798, file: !3771, line: 81, baseType: !287, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3798, file: !3771, line: 82, baseType: !3802, size: 128, offset: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3771, line: 75, size: 128, elements: !3803)
!3803 = !{!3804, !3805}
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3802, file: !3771, line: 76, baseType: !3394, size: 64)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3802, file: !3771, line: 77, baseType: !3806, size: 64, offset: 64)
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3798, file: !3771, line: 83, baseType: !1125, size: 256, offset: 192)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3770, file: !3771, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3770, file: !3771, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3770, file: !3771, line: 138, baseType: !7, size: 32, offset: 1056)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3770, file: !3771, line: 139, baseType: !238, size: 128, offset: 1088)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3770, file: !3771, line: 142, baseType: !2164, size: 512, offset: 1216)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3770, file: !3771, line: 143, baseType: !2144, size: 64, offset: 1728)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3770, file: !3771, line: 150, baseType: !3815, size: 256, offset: 1792)
!3815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3816, size: 256, elements: !1694)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3771, line: 38, size: 128, elements: !3817)
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3816, file: !3771, line: 39, baseType: !490, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3816, file: !3771, line: 40, baseType: !490, size: 64, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3770, file: !3771, line: 156, baseType: !3821, size: 192, offset: 2048)
!3821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3771, line: 66, size: 192, elements: !3822)
!3822 = !{!3823}
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3821, file: !3771, line: 67, baseType: !3824, size: 192)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3771, line: 47, size: 192, elements: !3825)
!3825 = !{!3826, !3827, !3828}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3824, file: !3771, line: 48, baseType: !722, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3824, file: !3771, line: 49, baseType: !722, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3824, file: !3771, line: 50, baseType: !722, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3770, file: !3771, line: 160, baseType: !3716, size: 640, offset: 2240)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3770, file: !3771, line: 163, baseType: !3831, size: 256, offset: 2880)
!3831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1246, size: 256, elements: !1259)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3770, file: !3771, line: 169, baseType: !1246, size: 64, offset: 3136)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3770, file: !3771, line: 172, baseType: !123, size: 32, offset: 3200)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3770, file: !3771, line: 174, baseType: !3835, size: 64, offset: 3264)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3771, line: 174, flags: DIFlagFwdDecl)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3770, file: !3771, line: 185, baseType: !3838, size: 64, offset: 3328)
!3838 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !459, line: 860, baseType: !3839)
!3839 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 853, size: 64, elements: !3840)
!3840 = !{!3841, !3842}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3839, file: !459, line: 858, baseType: !458, size: 32)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3839, file: !459, line: 859, baseType: !267, size: 32, offset: 32)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3770, file: !3771, line: 186, baseType: !490, size: 64, offset: 3392)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3770, file: !3771, line: 186, baseType: !490, size: 64, offset: 3456)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3770, file: !3771, line: 186, baseType: !490, size: 64, offset: 3520)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3770, file: !3771, line: 186, baseType: !490, size: 64, offset: 3584)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3770, file: !3771, line: 187, baseType: !490, size: 64, offset: 3648)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3770, file: !3771, line: 188, baseType: !490, size: 64, offset: 3712)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3770, file: !3771, line: 189, baseType: !3704, size: 192, offset: 3776)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3770, file: !3771, line: 190, baseType: !387, size: 64, offset: 3968)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3770, file: !3771, line: 190, baseType: !387, size: 64, offset: 4032)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3770, file: !3771, line: 190, baseType: !387, size: 64, offset: 4096)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3770, file: !3771, line: 190, baseType: !387, size: 64, offset: 4160)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3770, file: !3771, line: 191, baseType: !387, size: 64, offset: 4224)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3770, file: !3771, line: 191, baseType: !387, size: 64, offset: 4288)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3770, file: !3771, line: 191, baseType: !387, size: 64, offset: 4352)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3770, file: !3771, line: 191, baseType: !387, size: 64, offset: 4416)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3770, file: !3771, line: 192, baseType: !387, size: 64, offset: 4480)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3770, file: !3771, line: 192, baseType: !387, size: 64, offset: 4544)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3770, file: !3771, line: 192, baseType: !387, size: 64, offset: 4608)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3770, file: !3771, line: 192, baseType: !387, size: 64, offset: 4672)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3770, file: !3771, line: 193, baseType: !387, size: 64, offset: 4736)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3770, file: !3771, line: 193, baseType: !387, size: 64, offset: 4800)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3770, file: !3771, line: 194, baseType: !3865, size: 448, offset: 4864)
!3865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3866, line: 12, size: 448, elements: !3867)
!3866 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3867 = !{!3868, !3869, !3870, !3871, !3872, !3873, !3874}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3865, file: !3866, line: 15, baseType: !490, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3865, file: !3866, line: 17, baseType: !490, size: 64, offset: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3865, file: !3866, line: 19, baseType: !490, size: 64, offset: 128)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3865, file: !3866, line: 21, baseType: !490, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3865, file: !3866, line: 29, baseType: !490, size: 64, offset: 256)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3865, file: !3866, line: 35, baseType: !490, size: 64, offset: 320)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3865, file: !3866, line: 44, baseType: !490, size: 64, offset: 384)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3770, file: !3771, line: 202, baseType: !492, size: 64, offset: 5312)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3770, file: !3771, line: 213, baseType: !3877, size: 2048, offset: 5376)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3878, size: 2048, elements: !3739)
!3878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3879, line: 43, size: 128, elements: !3880)
!3879 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3880 = !{!3881, !3882}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3878, file: !3879, line: 44, baseType: !386, size: 64)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3878, file: !3879, line: 45, baseType: !386, size: 64, offset: 64)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3770, file: !3771, line: 216, baseType: !3884, size: 448, offset: 7424)
!3884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3771, line: 30, size: 448, elements: !3885)
!3885 = !{!3886, !3887, !3888, !3889, !3890, !3891, !3892}
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3884, file: !3771, line: 31, baseType: !123, size: 32)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3884, file: !3771, line: 32, baseType: !373, size: 64, offset: 64)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3884, file: !3771, line: 33, baseType: !387, size: 64, offset: 128)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3884, file: !3771, line: 34, baseType: !490, size: 64, offset: 192)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3884, file: !3771, line: 34, baseType: !490, size: 64, offset: 256)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3884, file: !3771, line: 35, baseType: !387, size: 64, offset: 320)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3884, file: !3771, line: 35, baseType: !387, size: 64, offset: 384)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3770, file: !3771, line: 219, baseType: !3894, size: 64, offset: 7872)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3771, line: 219, flags: DIFlagFwdDecl)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3770, file: !3771, line: 222, baseType: !7, size: 32, offset: 7936)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3770, file: !3771, line: 223, baseType: !3898, size: 64, offset: 8000)
!3898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3899, size: 64)
!3899 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3771, line: 223, flags: DIFlagFwdDecl)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3770, file: !3771, line: 230, baseType: !1111, size: 8, offset: 8064)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3770, file: !3771, line: 231, baseType: !1353, size: 16, offset: 8080)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3770, file: !3771, line: 232, baseType: !1353, size: 16, offset: 8096)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3770, file: !3771, line: 234, baseType: !1173, size: 64, offset: 8128)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3770, file: !3771, line: 237, baseType: !716, size: 256, offset: 8192)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3770, file: !3771, line: 243, baseType: !929, size: 320, offset: 8448)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !3395, file: !691, line: 1111, baseType: !3907, size: 64, offset: 15424)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3771, line: 20, size: 16640, elements: !3909)
!3909 = !{!3910, !3911, !3912, !3913}
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3908, file: !3771, line: 21, baseType: !267, size: 32)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3908, file: !3771, line: 22, baseType: !1250, size: 32, offset: 32)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3908, file: !3771, line: 23, baseType: !1263, size: 192, offset: 64)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3908, file: !3771, line: 24, baseType: !3914, size: 16384, offset: 256)
!3914 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3915, size: 16384, elements: !342)
!3915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1470, line: 51, size: 256, elements: !3916)
!3916 = !{!3917}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3915, file: !1470, line: 52, baseType: !3918, size: 256)
!3918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1470, line: 37, size: 256, elements: !3919)
!3919 = !{!3920, !3927, !3928, !3934}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3918, file: !1470, line: 39, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3922, line: 83, baseType: !3923)
!3922 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3922, line: 82, baseType: !3925)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{null, !123}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3918, file: !1470, line: 40, baseType: !387, size: 64, offset: 64)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3918, file: !1470, line: 46, baseType: !3929, size: 64, offset: 128)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3922, line: 86, baseType: !3930)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3922, line: 85, baseType: !3932)
!3932 = !DISubroutineType(types: !3933)
!3933 = !{null}
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3918, file: !1470, line: 48, baseType: !3785, size: 64, offset: 192)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !3395, file: !691, line: 1112, baseType: !3785, size: 64, offset: 15488)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !3395, file: !691, line: 1113, baseType: !3785, size: 64, offset: 15552)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !3395, file: !691, line: 1115, baseType: !3785, size: 64, offset: 15616)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !3395, file: !691, line: 1116, baseType: !3781, size: 192, offset: 15680)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !3395, file: !691, line: 1117, baseType: !387, size: 64, offset: 15872)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !3395, file: !691, line: 1118, baseType: !384, size: 64, offset: 15936)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !3395, file: !691, line: 1119, baseType: !7, size: 32, offset: 16000)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !3395, file: !691, line: 1121, baseType: !1118, size: 64, offset: 16064)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !3395, file: !691, line: 1125, baseType: !3944, size: 64, offset: 16128)
!3944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3945, size: 64)
!3945 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !691, line: 43, flags: DIFlagFwdDecl)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !3395, file: !691, line: 1127, baseType: !423, size: 32, offset: 16192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !3395, file: !691, line: 1128, baseType: !7, size: 32, offset: 16224)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !3395, file: !691, line: 1130, baseType: !3949, size: 128, offset: 16256)
!3949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3950, line: 37, size: 128, elements: !3951)
!3950 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3951 = !{!3952, !3953, !3954}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3949, file: !3950, line: 38, baseType: !123, size: 32)
!3953 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3949, file: !3950, line: 39, baseType: !287, size: 32, offset: 32)
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3949, file: !3950, line: 40, baseType: !3955, size: 64, offset: 64)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3956, size: 64)
!3956 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3950, line: 24, flags: DIFlagFwdDecl)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !3395, file: !691, line: 1131, baseType: !3958, size: 256, offset: 16384)
!3958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3959, line: 12, size: 256, elements: !3960)
!3959 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3960 = !{!3961, !3962, !3963, !3964}
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3958, file: !3959, line: 13, baseType: !337, size: 64)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3958, file: !3959, line: 14, baseType: !387, size: 64, offset: 64)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3958, file: !3959, line: 15, baseType: !387, size: 64, offset: 128)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3958, file: !3959, line: 16, baseType: !1111, size: 8, offset: 192)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !3395, file: !691, line: 1134, baseType: !490, size: 64, offset: 16640)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !3395, file: !691, line: 1135, baseType: !490, size: 64, offset: 16704)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !3395, file: !691, line: 1138, baseType: !267, size: 32, offset: 16768)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !3395, file: !691, line: 1141, baseType: !729, size: 32, offset: 16800)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !3395, file: !691, line: 1143, baseType: !3970, size: 64, offset: 16832)
!3970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !691, line: 735, size: 64, elements: !3971)
!3971 = !{!3972}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3970, file: !691, line: 736, baseType: !3973, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !3395, file: !691, line: 1147, baseType: !2221, size: 128, offset: 16896)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !3395, file: !691, line: 1149, baseType: !3394, size: 64, offset: 17024)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !3395, file: !691, line: 1151, baseType: !3977, size: 64, offset: 17088)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !691, line: 1151, flags: DIFlagFwdDecl)
!3979 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !3395, file: !691, line: 1188, baseType: !232, size: 64, offset: 17152)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !3395, file: !691, line: 1191, baseType: !3981, size: 64, offset: 17216)
!3981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3125, size: 64)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !3395, file: !691, line: 1194, baseType: !3983, size: 64, offset: 17280)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !156, line: 976, size: 320, elements: !3985)
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "mq_list", scope: !3984, file: !156, line: 977, baseType: !1600, size: 64)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "cached_rq", scope: !3984, file: !156, line: 980, baseType: !1600, size: 64, offset: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "nr_ios", scope: !3984, file: !156, line: 981, baseType: !307, size: 16, offset: 128)
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "rq_count", scope: !3984, file: !156, line: 983, baseType: !307, size: 16, offset: 144)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "multiple_queues", scope: !3984, file: !156, line: 985, baseType: !1111, size: 8, offset: 160)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "has_elevator", scope: !3984, file: !156, line: 986, baseType: !1111, size: 8, offset: 168)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !3984, file: !156, line: 988, baseType: !238, size: 128, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !3395, file: !691, line: 1197, baseType: !3994, size: 64, offset: 17344)
!3994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3995, size: 64)
!3995 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !691, line: 61, flags: DIFlagFwdDecl)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !3395, file: !691, line: 1199, baseType: !2642, size: 64, offset: 17408)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !3395, file: !691, line: 1202, baseType: !3998, size: 64, offset: 17472)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !691, line: 48, flags: DIFlagFwdDecl)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !3395, file: !691, line: 1205, baseType: !387, size: 64, offset: 17536)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !3395, file: !691, line: 1206, baseType: !4002, size: 64, offset: 17600)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4003, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1470, line: 14, baseType: !4004)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1470, line: 12, size: 384, elements: !4005)
!4005 = !{!4006}
!4006 = !DIDerivedType(tag: DW_TAG_member, scope: !4004, file: !1470, line: 13, baseType: !4007, size: 384)
!4007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4004, file: !1470, line: 13, size: 384, elements: !4008)
!4008 = !{!4009, !4010, !4011, !4012}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !4007, file: !1470, line: 13, baseType: !123, size: 32)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !4007, file: !1470, line: 13, baseType: !123, size: 32, offset: 32)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !4007, file: !1470, line: 13, baseType: !123, size: 32, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !4007, file: !1470, line: 13, baseType: !4013, size: 256, offset: 128)
!4013 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !4014, line: 37, size: 256, elements: !4015)
!4014 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!4015 = !{!4016, !4021, !4034, !4040, !4049, !4076, !4081}
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !4013, file: !4014, line: 42, baseType: !4017, size: 64)
!4017 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 39, size: 64, elements: !4018)
!4018 = !{!4019, !4020}
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4017, file: !4014, line: 40, baseType: !3680, size: 32)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4017, file: !4014, line: 41, baseType: !429, size: 32, offset: 32)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !4013, file: !4014, line: 50, baseType: !4022, size: 192)
!4022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 45, size: 192, elements: !4023)
!4023 = !{!4024, !4026, !4027, !4033}
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !4022, file: !4014, line: 46, baseType: !4025, size: 32)
!4025 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !371, line: 95, baseType: !123)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !4022, file: !4014, line: 47, baseType: !123, size: 32, offset: 32)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4022, file: !4014, line: 48, baseType: !4028, size: 64, offset: 64)
!4028 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !4014, line: 11, baseType: !4029)
!4029 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !4014, line: 8, size: 64, elements: !4030)
!4030 = !{!4031, !4032}
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !4029, file: !4014, line: 9, baseType: !123, size: 32)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !4029, file: !4014, line: 10, baseType: !232, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !4022, file: !4014, line: 49, baseType: !123, size: 32, offset: 128)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !4013, file: !4014, line: 57, baseType: !4035, size: 128)
!4035 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 53, size: 128, elements: !4036)
!4036 = !{!4037, !4038, !4039}
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4035, file: !4014, line: 54, baseType: !3680, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4035, file: !4014, line: 55, baseType: !429, size: 32, offset: 32)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !4035, file: !4014, line: 56, baseType: !4028, size: 64, offset: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !4013, file: !4014, line: 66, baseType: !4041, size: 256)
!4041 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 60, size: 256, elements: !4042)
!4042 = !{!4043, !4044, !4045, !4046, !4048}
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !4041, file: !4014, line: 61, baseType: !3680, size: 32)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !4041, file: !4014, line: 62, baseType: !429, size: 32, offset: 32)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !4041, file: !4014, line: 63, baseType: !123, size: 32, offset: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !4041, file: !4014, line: 64, baseType: !4047, size: 64, offset: 128)
!4047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !371, line: 94, baseType: !372)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !4041, file: !4014, line: 65, baseType: !4047, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !4013, file: !4014, line: 105, baseType: !4050, size: 256)
!4050 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 69, size: 256, elements: !4051)
!4051 = !{!4052, !4053}
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !4050, file: !4014, line: 70, baseType: !232, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_member, scope: !4050, file: !4014, line: 79, baseType: !4054, size: 192, offset: 64)
!4054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4050, file: !4014, line: 79, size: 192, elements: !4055)
!4055 = !{!4056, !4057, !4058, !4065, !4070}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !4054, file: !4014, line: 81, baseType: !123, size: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !4054, file: !4014, line: 86, baseType: !1353, size: 16)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !4054, file: !4014, line: 92, baseType: !4059, size: 192)
!4059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !4014, line: 88, size: 192, elements: !4060)
!4060 = !{!4061, !4063, !4064}
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !4059, file: !4014, line: 89, baseType: !4062, size: 64)
!4062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 64, elements: !2205)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !4059, file: !4014, line: 90, baseType: !232, size: 64, offset: 64)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !4059, file: !4014, line: 91, baseType: !232, size: 64, offset: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !4054, file: !4014, line: 97, baseType: !4066, size: 96)
!4066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !4014, line: 94, size: 96, elements: !4067)
!4067 = !{!4068, !4069}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !4066, file: !4014, line: 95, baseType: !4062, size: 64)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !4066, file: !4014, line: 96, baseType: !487, size: 32, offset: 64)
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !4054, file: !4014, line: 103, baseType: !4071, size: 128)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4054, file: !4014, line: 99, size: 128, elements: !4072)
!4072 = !{!4073, !4074, !4075}
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !4071, file: !4014, line: 100, baseType: !387, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !4071, file: !4014, line: 101, baseType: !487, size: 32, offset: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4071, file: !4014, line: 102, baseType: !487, size: 32, offset: 96)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !4013, file: !4014, line: 111, baseType: !4077, size: 128)
!4077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 108, size: 128, elements: !4078)
!4078 = !{!4079, !4080}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !4077, file: !4014, line: 109, baseType: !373, size: 64)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !4077, file: !4014, line: 110, baseType: !123, size: 32, offset: 64)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !4013, file: !4014, line: 118, baseType: !4082, size: 128)
!4082 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4013, file: !4014, line: 114, size: 128, elements: !4083)
!4083 = !{!4084, !4085, !4086}
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !4082, file: !4014, line: 115, baseType: !232, size: 64)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !4082, file: !4014, line: 116, baseType: !123, size: 32, offset: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !4082, file: !4014, line: 117, baseType: !7, size: 32, offset: 96)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3395, file: !691, line: 1208, baseType: !3865, size: 448, offset: 17664)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !3395, file: !691, line: 1215, baseType: !490, size: 64, offset: 18112)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !3395, file: !691, line: 1217, baseType: !490, size: 64, offset: 18176)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !3395, file: !691, line: 1219, baseType: !490, size: 64, offset: 18240)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !3395, file: !691, line: 1223, baseType: !4092, size: 64, offset: 18304)
!4092 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !4093, line: 99, baseType: !4094)
!4093 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4093, line: 99, size: 64, elements: !4095)
!4095 = !{!4096}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !4094, file: !4093, line: 99, baseType: !1674, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !3395, file: !691, line: 1225, baseType: !458, size: 32, offset: 18368)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !3395, file: !691, line: 1226, baseType: !123, size: 32, offset: 18400)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !3395, file: !691, line: 1227, baseType: !123, size: 32, offset: 18432)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !3395, file: !691, line: 1231, baseType: !4101, size: 64, offset: 18496)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !691, line: 1231, flags: DIFlagFwdDecl)
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !3395, file: !691, line: 1233, baseType: !238, size: 128, offset: 18560)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !3395, file: !691, line: 1240, baseType: !4105, size: 64, offset: 18688)
!4105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4106, size: 64)
!4106 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !691, line: 62, flags: DIFlagFwdDecl)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !3395, file: !691, line: 1242, baseType: !4108, size: 64, offset: 18752)
!4108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4109, size: 64)
!4109 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !691, line: 1242, flags: DIFlagFwdDecl)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !3395, file: !691, line: 1244, baseType: !238, size: 128, offset: 18816)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !3395, file: !691, line: 1245, baseType: !4112, size: 64, offset: 18944)
!4112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4113, size: 64)
!4113 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !691, line: 51, flags: DIFlagFwdDecl)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !3395, file: !691, line: 1246, baseType: !716, size: 256, offset: 19008)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !3395, file: !691, line: 1247, baseType: !7, size: 32, offset: 19264)
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !3395, file: !691, line: 1250, baseType: !4117, size: 64, offset: 19328)
!4117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4118, size: 64)
!4118 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !691, line: 57, flags: DIFlagFwdDecl)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !3395, file: !691, line: 1251, baseType: !716, size: 256, offset: 19392)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !3395, file: !691, line: 1252, baseType: !238, size: 128, offset: 19648)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !3395, file: !691, line: 1259, baseType: !3004, size: 64, offset: 19776)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !3395, file: !691, line: 1260, baseType: !1353, size: 16, offset: 19840)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !3395, file: !691, line: 1261, baseType: !1353, size: 16, offset: 19856)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !3395, file: !691, line: 1314, baseType: !4125, size: 64, offset: 19904)
!4125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4126, size: 64)
!4126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !4127, line: 62, size: 256, align: 256, elements: !4128)
!4127 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!4128 = !{!4129, !4130, !4131, !4132, !4133, !4134, !4135}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !4126, file: !4127, line: 75, baseType: !487, size: 32)
!4130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !4126, file: !4127, line: 90, baseType: !487, size: 32, offset: 32)
!4131 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !4126, file: !4127, line: 112, baseType: !491, size: 64, offset: 64)
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4126, file: !4127, line: 132, baseType: !487, size: 32, offset: 128)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !4126, file: !4127, line: 140, baseType: !487, size: 32, offset: 160)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !4126, file: !4127, line: 149, baseType: !487, size: 32, offset: 192)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !4126, file: !4127, line: 154, baseType: !4136, offset: 224)
!4136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, elements: !1278)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !3395, file: !691, line: 1315, baseType: !486, size: 32, offset: 19968)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !3395, file: !691, line: 1316, baseType: !486, size: 32, offset: 20000)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !3395, file: !691, line: 1321, baseType: !387, size: 64, offset: 20032)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3395, file: !691, line: 1325, baseType: !123, size: 32, offset: 20096)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !3395, file: !691, line: 1326, baseType: !123, size: 32, offset: 20128)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !3395, file: !691, line: 1327, baseType: !123, size: 32, offset: 20160)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !3395, file: !691, line: 1328, baseType: !123, size: 32, offset: 20192)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !3395, file: !691, line: 1329, baseType: !1115, size: 128, align: 64, offset: 20224)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !3395, file: !691, line: 1332, baseType: !4146, size: 128, offset: 20352)
!4146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !4147, line: 51, size: 128, elements: !4148)
!4147 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!4148 = !{!4149, !4154, !4155}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !4146, file: !4147, line: 60, baseType: !4150, size: 64)
!4150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !4151, line: 7, size: 64, elements: !4152)
!4151 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!4152 = !{!4153}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !4150, file: !4151, line: 12, baseType: !1671, size: 64)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !4146, file: !4147, line: 63, baseType: !1111, size: 8, offset: 64)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !4146, file: !4147, line: 70, baseType: !1111, size: 8, offset: 72)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !3395, file: !691, line: 1335, baseType: !2746, size: 64, offset: 20480)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !3395, file: !691, line: 1337, baseType: !4158, size: 128, offset: 20544)
!4158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !4147, line: 39, size: 128, elements: !4159)
!4159 = !{!4160, !4161, !4162}
!4160 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4158, file: !4147, line: 40, baseType: !1030, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4158, file: !4147, line: 42, baseType: !487, size: 32, offset: 64)
!4162 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4158, file: !4147, line: 43, baseType: !487, size: 32, offset: 96)
!4163 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !3395, file: !691, line: 1340, baseType: !4164, size: 64, offset: 20672)
!4164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4165, size: 64)
!4165 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !691, line: 69, flags: DIFlagFwdDecl)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !3395, file: !691, line: 1351, baseType: !123, size: 32, offset: 20736)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !3395, file: !691, line: 1352, baseType: !123, size: 32, offset: 20768)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !3395, file: !691, line: 1354, baseType: !387, size: 64, offset: 20800)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !3395, file: !691, line: 1364, baseType: !490, size: 64, offset: 20864)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !3395, file: !691, line: 1365, baseType: !490, size: 64, offset: 20928)
!4171 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !3395, file: !691, line: 1412, baseType: !387, size: 64, offset: 20992)
!4172 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !3395, file: !691, line: 1453, baseType: !959, size: 64, offset: 21056)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !3395, file: !691, line: 1457, baseType: !4174, size: 64, offset: 21120)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !4176)
!4176 = !{!4177, !4178, !4197, !4200, !4201, !4234, !4244}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4175, file: !68, line: 62, baseType: !67, size: 32)
!4178 = !DIDerivedType(tag: DW_TAG_member, scope: !4175, file: !68, line: 64, baseType: !4179, size: 192, offset: 64)
!4179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4175, file: !68, line: 64, size: 192, elements: !4180)
!4180 = !{!4181, !4192}
!4181 = !DIDerivedType(tag: DW_TAG_member, scope: !4179, file: !68, line: 65, baseType: !4182, size: 192)
!4182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4179, file: !68, line: 65, size: 192, elements: !4183)
!4183 = !{!4184, !4191}
!4184 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !4182, file: !68, line: 66, baseType: !4185, size: 128)
!4185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !4186, line: 50, size: 128, elements: !4187)
!4186 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!4187 = !{!4188, !4189, !4190}
!4188 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !4185, file: !4186, line: 52, baseType: !387, size: 64)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !4185, file: !4186, line: 54, baseType: !7, size: 32, offset: 64)
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !4185, file: !4186, line: 55, baseType: !7, size: 32, offset: 96)
!4191 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !4182, file: !68, line: 67, baseType: !387, size: 64, offset: 128)
!4192 = !DIDerivedType(tag: DW_TAG_member, scope: !4179, file: !68, line: 70, baseType: !4193, size: 192)
!4193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4179, file: !68, line: 70, size: 192, elements: !4194)
!4194 = !{!4195, !4196}
!4195 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !4193, file: !68, line: 71, baseType: !1115, size: 128, align: 64)
!4196 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !4193, file: !68, line: 72, baseType: !387, size: 64, offset: 128)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !4175, file: !68, line: 76, baseType: !4198, size: 64, offset: 256)
!4198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4199, size: 64)
!4199 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !4175, file: !68, line: 77, baseType: !387, size: 64, offset: 320)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !4175, file: !68, line: 79, baseType: !4202, size: 64, offset: 384)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !4186, line: 25, size: 256, elements: !4204)
!4204 = !{!4205, !4211, !4215}
!4205 = !DIDerivedType(tag: DW_TAG_member, scope: !4203, file: !4186, line: 26, baseType: !4206, size: 128)
!4206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4203, file: !4186, line: 26, size: 128, elements: !4207)
!4207 = !{!4208, !4210}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !4206, file: !4186, line: 27, baseType: !4209, size: 128)
!4209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 128, elements: !3739)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !4206, file: !4186, line: 28, baseType: !4209, size: 128)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4203, file: !4186, line: 31, baseType: !4212, size: 64, offset: 128)
!4212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4213, size: 64)
!4213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4214)
!4214 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !4186, line: 23, flags: DIFlagFwdDecl)
!4215 = !DIDerivedType(tag: DW_TAG_member, scope: !4203, file: !4186, line: 33, baseType: !4216, size: 64, offset: 192)
!4216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4203, file: !4186, line: 33, size: 64, elements: !4217)
!4217 = !{!4218, !4224, !4229}
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !4216, file: !4186, line: 38, baseType: !4219, size: 64)
!4219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4216, file: !4186, line: 34, size: 64, elements: !4220)
!4220 = !{!4221, !4222, !4223}
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !4219, file: !4186, line: 35, baseType: !1320, size: 32)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4219, file: !4186, line: 36, baseType: !295, size: 8, offset: 32)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !4219, file: !4186, line: 37, baseType: !295, size: 8, offset: 40)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !4216, file: !4186, line: 42, baseType: !4225, size: 16)
!4225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4216, file: !4186, line: 39, size: 16, elements: !4226)
!4226 = !{!4227, !4228}
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !4225, file: !4186, line: 40, baseType: !295, size: 8)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4225, file: !4186, line: 41, baseType: !295, size: 8, offset: 8)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !4216, file: !4186, line: 46, baseType: !4230, size: 16)
!4230 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4216, file: !4186, line: 43, size: 16, elements: !4231)
!4231 = !{!4232, !4233}
!4232 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !4230, file: !4186, line: 44, baseType: !295, size: 8)
!4233 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !4230, file: !4186, line: 45, baseType: !295, size: 8, offset: 8)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !4175, file: !68, line: 81, baseType: !4235, size: 64, offset: 448)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4236, size: 64)
!4236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !4237)
!4237 = !{!4238, !4239, !4240, !4241, !4242, !4243}
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !4236, file: !68, line: 86, baseType: !4198, size: 64)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !4236, file: !68, line: 87, baseType: !387, size: 64, offset: 64)
!4240 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !4236, file: !68, line: 88, baseType: !387, size: 64, offset: 128)
!4241 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !4236, file: !68, line: 89, baseType: !387, size: 64, offset: 192)
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !4236, file: !68, line: 90, baseType: !1111, size: 8, offset: 256)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4236, file: !68, line: 92, baseType: !4235, size: 64, offset: 320)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !4175, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !3395, file: !691, line: 1463, baseType: !4246, offset: 21184)
!4246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !691, line: 739, elements: !620)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3395, file: !691, line: 1470, baseType: !1115, size: 128, align: 64, offset: 21184)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !3395, file: !691, line: 1471, baseType: !1250, size: 32, offset: 21312)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !3395, file: !691, line: 1472, baseType: !123, size: 32, offset: 21344)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !3395, file: !691, line: 1474, baseType: !3394, size: 64, offset: 21376)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !3395, file: !691, line: 1475, baseType: !1652, size: 320, offset: 21440)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !3395, file: !691, line: 1478, baseType: !4253, size: 64, offset: 21760)
!4253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4254, size: 64)
!4254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !4255, line: 49, size: 512, elements: !4256)
!4255 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!4256 = !{!4257, !4258, !4259, !4260, !4261, !4263, !4264, !4265, !4267}
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !4254, file: !4255, line: 50, baseType: !4253, size: 64)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !4254, file: !4255, line: 51, baseType: !232, size: 64, offset: 64)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4254, file: !4255, line: 52, baseType: !387, size: 64, offset: 128)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4254, file: !4255, line: 53, baseType: !387, size: 64, offset: 192)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !4254, file: !4255, line: 54, baseType: !4262, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !4254, file: !4255, line: 56, baseType: !7, size: 32, offset: 320)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !4254, file: !4255, line: 58, baseType: !7, size: 32, offset: 352)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !4254, file: !4255, line: 59, baseType: !4266, size: 64, offset: 384)
!4266 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !239, line: 159, baseType: !490)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !4254, file: !4255, line: 60, baseType: !2360, size: 64, offset: 448)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !3395, file: !691, line: 1482, baseType: !1250, size: 32, offset: 21824)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !3395, file: !691, line: 1489, baseType: !232, size: 64, offset: 21888)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !3395, file: !691, line: 1504, baseType: !232, size: 64, offset: 21952)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !3395, file: !691, line: 1505, baseType: !491, size: 64, offset: 22016)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !3395, file: !691, line: 1506, baseType: !490, size: 64, offset: 22080)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !3395, file: !691, line: 1507, baseType: !491, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !3395, file: !691, line: 1508, baseType: !491, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !3395, file: !691, line: 1509, baseType: !491, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !3395, file: !691, line: 1510, baseType: !1115, size: 128, align: 64, offset: 22208)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !3395, file: !691, line: 1511, baseType: !123, size: 32, offset: 22336)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !3395, file: !691, line: 1515, baseType: !4279, size: 64, offset: 22400)
!4279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1208, line: 56, size: 64, elements: !4280)
!4280 = !{!4281}
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !4279, file: !1208, line: 57, baseType: !1211, size: 64)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !3395, file: !691, line: 1518, baseType: !4279, size: 64, offset: 22464)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !3395, file: !691, line: 1528, baseType: !1115, size: 128, align: 64, offset: 22528)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !3395, file: !691, line: 1552, baseType: !4285, size: 35328, offset: 23040)
!4285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !4286, line: 430, size: 35328, elements: !4287)
!4286 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!4287 = !{!4288, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4317, !4318, !4319, !4320, !4321, !4322, !4325, !4326, !4327, !4328}
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !4285, file: !4286, line: 432, baseType: !4289, size: 192)
!4289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4290, size: 192, elements: !338)
!4290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !4291, line: 16, size: 64, elements: !4292)
!4291 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!4292 = !{!4293, !4294, !4295, !4296, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !4290, file: !4291, line: 17, baseType: !305, size: 16)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !4290, file: !4291, line: 18, baseType: !305, size: 16, offset: 16)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !4290, file: !4291, line: 19, baseType: !305, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4290, file: !4291, line: 19, baseType: !305, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !4290, file: !4291, line: 19, baseType: !305, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !4290, file: !4291, line: 19, baseType: !305, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4290, file: !4291, line: 19, baseType: !305, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !4290, file: !4291, line: 20, baseType: !305, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !4290, file: !4291, line: 20, baseType: !305, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !4290, file: !4291, line: 20, baseType: !305, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !4290, file: !4291, line: 20, baseType: !305, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !4290, file: !4291, line: 20, baseType: !305, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !4290, file: !4291, line: 20, baseType: !305, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4285, file: !4286, line: 436, baseType: !387, size: 64, offset: 192)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !4285, file: !4286, line: 440, baseType: !307, size: 16, offset: 256)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !4285, file: !4286, line: 441, baseType: !307, size: 16, offset: 272)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !4285, file: !4286, line: 442, baseType: !307, size: 16, offset: 288)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !4285, file: !4286, line: 443, baseType: !307, size: 16, offset: 304)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !4285, file: !4286, line: 447, baseType: !387, size: 64, offset: 320)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !4285, file: !4286, line: 448, baseType: !387, size: 64, offset: 384)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !4285, file: !4286, line: 459, baseType: !4314, size: 256, offset: 448)
!4314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4315, size: 256, elements: !1259)
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !4286, line: 428, flags: DIFlagFwdDecl)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !4285, file: !4286, line: 461, baseType: !387, size: 64, offset: 704)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !4285, file: !4286, line: 463, baseType: !387, size: 64, offset: 768)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !4285, file: !4286, line: 465, baseType: !387, size: 64, offset: 832)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !4285, file: !4286, line: 466, baseType: !387, size: 64, offset: 896)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !4285, file: !4286, line: 467, baseType: !387, size: 64, offset: 960)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !4285, file: !4286, line: 473, baseType: !4323, size: 64, offset: 1024)
!4323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4324, size: 64)
!4324 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !4286, line: 10, flags: DIFlagFwdDecl)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !4285, file: !4286, line: 480, baseType: !387, size: 64, offset: 1088)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !4285, file: !4286, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !4285, file: !4286, line: 491, baseType: !486, size: 32, offset: 1184)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !4285, file: !4286, line: 501, baseType: !4329, size: 33792, offset: 1536)
!4329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !4330, line: 448, size: 33792, elements: !4331)
!4330 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!4331 = !{!4332, !4333, !4334, !4496, !4497, !4503, !4504}
!4332 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !4329, file: !4330, line: 461, baseType: !7, size: 32)
!4333 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !4329, file: !4330, line: 468, baseType: !387, size: 64, offset: 64)
!4334 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !4329, file: !4330, line: 476, baseType: !4335, size: 64, offset: 128)
!4335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4336, size: 64)
!4336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !4330, line: 356, size: 33280, align: 512, elements: !4337)
!4337 = !{!4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4346, !4347}
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4336, file: !4330, line: 358, baseType: !7, size: 32)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !4336, file: !4330, line: 361, baseType: !7, size: 32, offset: 32)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4336, file: !4330, line: 364, baseType: !490, size: 64, offset: 64)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !4336, file: !4330, line: 367, baseType: !490, size: 64, offset: 128)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !4336, file: !4330, line: 370, baseType: !490, size: 64, offset: 192)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !4336, file: !4330, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !4336, file: !4330, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !4336, file: !4330, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !4336, file: !4330, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4336, file: !4330, line: 397, baseType: !4348, size: 32768, offset: 512)
!4348 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !4330, line: 348, size: 32768, elements: !4349)
!4349 = !{!4350, !4365, !4402, !4479, !4492}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !4348, file: !4330, line: 349, baseType: !4351, size: 896)
!4351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !4330, line: 12, size: 896, elements: !4352)
!4352 = !{!4353, !4354, !4355, !4356, !4357, !4358, !4359, !4360, !4364}
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4351, file: !4330, line: 13, baseType: !486, size: 32)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4351, file: !4330, line: 14, baseType: !486, size: 32, offset: 32)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4351, file: !4330, line: 15, baseType: !486, size: 32, offset: 64)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4351, file: !4330, line: 16, baseType: !486, size: 32, offset: 96)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4351, file: !4330, line: 17, baseType: !486, size: 32, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4351, file: !4330, line: 18, baseType: !486, size: 32, offset: 160)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4351, file: !4330, line: 19, baseType: !486, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4351, file: !4330, line: 22, baseType: !4361, size: 640, offset: 224)
!4361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 640, elements: !4362)
!4362 = !{!4363}
!4363 = !DISubrange(count: 20)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4351, file: !4330, line: 25, baseType: !486, size: 32, offset: 864)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !4348, file: !4330, line: 350, baseType: !4366, size: 4096, align: 128)
!4366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !4330, line: 34, size: 4096, align: 128, elements: !4367)
!4367 = !{!4368, !4369, !4370, !4371, !4372, !4387, !4388, !4389, !4391, !4393, !4397}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4366, file: !4330, line: 35, baseType: !305, size: 16)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4366, file: !4330, line: 36, baseType: !305, size: 16, offset: 16)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4366, file: !4330, line: 37, baseType: !305, size: 16, offset: 32)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !4366, file: !4330, line: 38, baseType: !305, size: 16, offset: 48)
!4372 = !DIDerivedType(tag: DW_TAG_member, scope: !4366, file: !4330, line: 39, baseType: !4373, size: 128, offset: 64)
!4373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4366, file: !4330, line: 39, size: 128, elements: !4374)
!4374 = !{!4375, !4380}
!4375 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4330, line: 40, baseType: !4376, size: 128)
!4376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4373, file: !4330, line: 40, size: 128, elements: !4377)
!4377 = !{!4378, !4379}
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !4376, file: !4330, line: 41, baseType: !490, size: 64)
!4379 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !4376, file: !4330, line: 42, baseType: !490, size: 64, offset: 64)
!4380 = !DIDerivedType(tag: DW_TAG_member, scope: !4373, file: !4330, line: 44, baseType: !4381, size: 128)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4373, file: !4330, line: 44, size: 128, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4386}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4381, file: !4330, line: 45, baseType: !486, size: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4381, file: !4330, line: 46, baseType: !486, size: 32, offset: 32)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4381, file: !4330, line: 47, baseType: !486, size: 32, offset: 64)
!4386 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4381, file: !4330, line: 48, baseType: !486, size: 32, offset: 96)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !4366, file: !4330, line: 51, baseType: !486, size: 32, offset: 192)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !4366, file: !4330, line: 52, baseType: !486, size: 32, offset: 224)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4366, file: !4330, line: 55, baseType: !4390, size: 1024, offset: 256)
!4390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 1024, elements: !499)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !4366, file: !4330, line: 58, baseType: !4392, size: 2048, offset: 1280)
!4392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 2048, elements: !342)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !4366, file: !4330, line: 60, baseType: !4394, size: 384, offset: 3328)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !486, size: 384, elements: !4395)
!4395 = !{!4396}
!4396 = !DISubrange(count: 12)
!4397 = !DIDerivedType(tag: DW_TAG_member, scope: !4366, file: !4330, line: 62, baseType: !4398, size: 384, offset: 3712)
!4398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4366, file: !4330, line: 62, size: 384, elements: !4399)
!4399 = !{!4400, !4401}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !4398, file: !4330, line: 63, baseType: !4394, size: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !4398, file: !4330, line: 64, baseType: !4394, size: 384)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !4348, file: !4330, line: 351, baseType: !4403, size: 1088)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !4330, line: 79, size: 1088, elements: !4404)
!4404 = !{!4405, !4406, !4407, !4408, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4478}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !4403, file: !4330, line: 80, baseType: !486, size: 32)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !4403, file: !4330, line: 81, baseType: !486, size: 32, offset: 32)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !4403, file: !4330, line: 82, baseType: !486, size: 32, offset: 64)
!4408 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !4403, file: !4330, line: 83, baseType: !486, size: 32, offset: 96)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !4403, file: !4330, line: 84, baseType: !486, size: 32, offset: 128)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !4403, file: !4330, line: 85, baseType: !486, size: 32, offset: 160)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !4403, file: !4330, line: 86, baseType: !486, size: 32, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !4403, file: !4330, line: 88, baseType: !4361, size: 640, offset: 224)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !4403, file: !4330, line: 89, baseType: !295, size: 8, offset: 864)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !4403, file: !4330, line: 90, baseType: !295, size: 8, offset: 872)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !4403, file: !4330, line: 91, baseType: !295, size: 8, offset: 880)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !4403, file: !4330, line: 92, baseType: !295, size: 8, offset: 888)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !4403, file: !4330, line: 93, baseType: !295, size: 8, offset: 896)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !4403, file: !4330, line: 94, baseType: !295, size: 8, offset: 904)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !4403, file: !4330, line: 95, baseType: !4420, size: 64, offset: 960)
!4420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4421, size: 64)
!4421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !4422, line: 11, size: 128, elements: !4423)
!4422 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!4423 = !{!4424, !4425}
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !4421, file: !4422, line: 12, baseType: !373, size: 64)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !4421, file: !4422, line: 13, baseType: !4426, size: 64, offset: 64)
!4426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4427, size: 64)
!4427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !4428, line: 103, size: 1344, elements: !4429)
!4428 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!4429 = !{!4430, !4431, !4432, !4433, !4434, !4435, !4436, !4437, !4438, !4439, !4440, !4441, !4442, !4443, !4444, !4445, !4446, !4447, !4458, !4459, !4460}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !4427, file: !4428, line: 109, baseType: !387, size: 64)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !4427, file: !4428, line: 110, baseType: !387, size: 64, offset: 64)
!4432 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !4427, file: !4428, line: 111, baseType: !387, size: 64, offset: 128)
!4433 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !4427, file: !4428, line: 112, baseType: !387, size: 64, offset: 192)
!4434 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !4427, file: !4428, line: 113, baseType: !387, size: 64, offset: 256)
!4435 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !4427, file: !4428, line: 114, baseType: !387, size: 64, offset: 320)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !4427, file: !4428, line: 117, baseType: !387, size: 64, offset: 384)
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !4427, file: !4428, line: 118, baseType: !387, size: 64, offset: 448)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !4427, file: !4428, line: 119, baseType: !387, size: 64, offset: 512)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !4427, file: !4428, line: 120, baseType: !387, size: 64, offset: 576)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !4427, file: !4428, line: 121, baseType: !387, size: 64, offset: 640)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !4427, file: !4428, line: 122, baseType: !387, size: 64, offset: 704)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !4427, file: !4428, line: 123, baseType: !387, size: 64, offset: 768)
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !4427, file: !4428, line: 124, baseType: !387, size: 64, offset: 832)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !4427, file: !4428, line: 125, baseType: !387, size: 64, offset: 896)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !4427, file: !4428, line: 139, baseType: !387, size: 64, offset: 960)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !4427, file: !4428, line: 142, baseType: !387, size: 64, offset: 1024)
!4447 = !DIDerivedType(tag: DW_TAG_member, scope: !4427, file: !4428, line: 144, baseType: !4448, size: 64, offset: 1088)
!4448 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4427, file: !4428, line: 144, size: 64, elements: !4449)
!4449 = !{!4450, !4451, !4452}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4448, file: !4428, line: 146, baseType: !305, size: 16)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4448, file: !4428, line: 148, baseType: !490, size: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4448, file: !4428, line: 150, baseType: !4453, size: 64)
!4453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !4428, line: 59, size: 64, elements: !4454)
!4454 = !{!4455, !4456, !4457}
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4453, file: !4428, line: 61, baseType: !490, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4453, file: !4428, line: 63, baseType: !490, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4457 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4453, file: !4428, line: 65, baseType: !490, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4427, file: !4428, line: 153, baseType: !387, size: 64, offset: 1152)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !4427, file: !4428, line: 154, baseType: !387, size: 64, offset: 1216)
!4460 = !DIDerivedType(tag: DW_TAG_member, scope: !4427, file: !4428, line: 156, baseType: !4461, size: 64, offset: 1280)
!4461 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4427, file: !4428, line: 156, size: 64, elements: !4462)
!4462 = !{!4463, !4464, !4465}
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4461, file: !4428, line: 158, baseType: !305, size: 16)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4461, file: !4428, line: 160, baseType: !490, size: 64)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4461, file: !4428, line: 162, baseType: !4466, size: 64)
!4466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !4428, line: 69, size: 64, elements: !4467)
!4467 = !{!4468, !4469, !4470, !4471, !4472, !4473, !4474, !4475, !4476, !4477}
!4468 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4466, file: !4428, line: 71, baseType: !490, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4469 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4466, file: !4428, line: 73, baseType: !490, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4466, file: !4428, line: 75, baseType: !490, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4466, file: !4428, line: 77, baseType: !490, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4472 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4466, file: !4428, line: 80, baseType: !490, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4473 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4466, file: !4428, line: 83, baseType: !490, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4466, file: !4428, line: 86, baseType: !490, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4466, file: !4428, line: 88, baseType: !490, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4466, file: !4428, line: 93, baseType: !490, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4466, file: !4428, line: 100, baseType: !490, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !4403, file: !4330, line: 96, baseType: !486, size: 32, offset: 1024)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !4348, file: !4330, line: 352, baseType: !4480, size: 4608, align: 512)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !4330, line: 333, size: 4608, align: 512, elements: !4481)
!4481 = !{!4482, !4483, !4490}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4480, file: !4330, line: 334, baseType: !4366, size: 4096, align: 128)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4480, file: !4330, line: 335, baseType: !4484, size: 512, offset: 4096)
!4484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !4330, line: 312, size: 512, elements: !4485)
!4485 = !{!4486, !4487, !4488}
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4484, file: !4330, line: 313, baseType: !490, size: 64)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4484, file: !4330, line: 314, baseType: !490, size: 64, offset: 64)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4484, file: !4330, line: 315, baseType: !4489, size: 384, offset: 128)
!4489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !490, size: 384, elements: !1371)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4480, file: !4330, line: 336, baseType: !4491, offset: 4608)
!4491 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !1278)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !4348, file: !4330, line: 353, baseType: !4493, size: 32768)
!4493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 32768, elements: !4494)
!4494 = !{!4495}
!4495 = !DISubrange(count: 4096)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !4329, file: !4330, line: 484, baseType: !4335, size: 64, offset: 192)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !4329, file: !4330, line: 491, baseType: !4498, size: 128, offset: 256)
!4498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !4330, line: 404, size: 128, elements: !4499)
!4499 = !{!4500, !4501, !4502}
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4498, file: !4330, line: 424, baseType: !490, size: 64)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4498, file: !4330, line: 432, baseType: !7, size: 32, offset: 64)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4498, file: !4330, line: 440, baseType: !7, size: 32, offset: 96)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !4329, file: !4330, line: 498, baseType: !4498, size: 128, offset: 384)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !4329, file: !4330, line: 508, baseType: !4336, size: 33280, align: 512, offset: 512)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3377, file: !3378, line: 16, baseType: !1263, size: 192, offset: 512)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3377, file: !3378, line: 17, baseType: !287, size: 32, offset: 704)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !569, file: !14, line: 1240, baseType: !232, size: 64, offset: 6912)
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !569, file: !14, line: 1243, baseType: !486, size: 32, offset: 6976)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !569, file: !14, line: 1245, baseType: !769, size: 64, offset: 7040)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !569, file: !14, line: 1246, baseType: !769, size: 64, offset: 7104)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !569, file: !14, line: 1248, baseType: !487, size: 32, offset: 7168)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !569, file: !14, line: 1249, baseType: !4513, size: 64, offset: 7232)
!4513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4514, size: 64)
!4514 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !569, file: !14, line: 1252, baseType: !966, size: 256, offset: 7296)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !569, file: !14, line: 1253, baseType: !4517, size: 128, offset: 7552)
!4517 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !4518, line: 21, baseType: !4519)
!4518 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!4519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4518, line: 19, size: 128, elements: !4520)
!4520 = !{!4521}
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !4519, file: !4518, line: 20, baseType: !4522, size: 128)
!4522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 128, elements: !3739)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !569, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !569, file: !14, line: 1261, baseType: !716, size: 256, offset: 7744)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !569, file: !14, line: 1267, baseType: !256, size: 64, offset: 8000)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !569, file: !14, line: 1269, baseType: !515, size: 64, offset: 8064)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !569, file: !14, line: 1271, baseType: !4528, size: 448, offset: 8128)
!4528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !778, line: 63, size: 448, elements: !4529)
!4529 = !{!4530, !4535, !4536, !4537, !4538, !4539, !4540}
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !4528, file: !778, line: 64, baseType: !4531, size: 64)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!387, !4534, !776}
!4534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4528, size: 64)
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !4528, file: !778, line: 66, baseType: !4531, size: 64, offset: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !4528, file: !778, line: 69, baseType: !373, size: 64, offset: 128)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !4528, file: !778, line: 70, baseType: !123, size: 32, offset: 192)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4528, file: !778, line: 71, baseType: !7, size: 32, offset: 224)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4528, file: !778, line: 74, baseType: !238, size: 128, offset: 256)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !4528, file: !778, line: 85, baseType: !4541, size: 64, offset: 384)
!4541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !569, file: !14, line: 1274, baseType: !720, size: 64, offset: 8576)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !569, file: !14, line: 1280, baseType: !720, size: 64, offset: 8640)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !569, file: !14, line: 1283, baseType: !123, size: 32, offset: 8704)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !569, file: !14, line: 1286, baseType: !2796, size: 32, offset: 8736)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !569, file: !14, line: 1289, baseType: !1664, size: 64, offset: 8768)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !569, file: !14, line: 1290, baseType: !608, size: 64, offset: 8832)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !569, file: !14, line: 1297, baseType: !1465, size: 64, offset: 8896)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !569, file: !14, line: 1304, baseType: !4550, size: 64, offset: 8960)
!4550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !4551, line: 49, size: 64, elements: !4552)
!4551 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!4552 = !{!4553}
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !4550, file: !4551, line: 50, baseType: !4554, size: 64)
!4554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4555, size: 64)
!4555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !4551, line: 41, size: 512, align: 512, elements: !4556)
!4556 = !{!4557, !4558, !4563}
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4555, file: !4551, line: 43, baseType: !267, size: 32)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4555, file: !4551, line: 45, baseType: !4559, size: 192, offset: 64)
!4559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !4551, line: 29, size: 192, elements: !4560)
!4560 = !{!4561, !4562}
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4559, file: !4551, line: 30, baseType: !238, size: 128)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4559, file: !4551, line: 32, baseType: !373, size: 64, offset: 128)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !4555, file: !4551, line: 46, baseType: !373, size: 64, offset: 256)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !569, file: !14, line: 1305, baseType: !4550, size: 64, offset: 9024)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !569, file: !14, line: 1306, baseType: !1115, size: 128, align: 64, offset: 9088)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !569, file: !14, line: 1307, baseType: !1641, size: 256, offset: 9216)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !569, file: !14, line: 1309, baseType: !716, size: 256, offset: 9472)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !569, file: !14, line: 1314, baseType: !123, size: 32, offset: 9728)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !569, file: !14, line: 1317, baseType: !267, size: 32, align: 512, offset: 10240)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !569, file: !14, line: 1318, baseType: !238, size: 128, offset: 10304)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !569, file: !14, line: 1320, baseType: !267, size: 32, offset: 10432)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !569, file: !14, line: 1321, baseType: !238, size: 128, offset: 10496)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !563, file: !564, line: 73, baseType: !123, size: 32, offset: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !563, file: !564, line: 74, baseType: !4575, size: 64, offset: 192)
!4575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4576, size: 64)
!4576 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1302, line: 42, flags: DIFlagFwdDecl)
!4577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !517, file: !454, line: 141, baseType: !4579, size: 64, offset: 704)
!4579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4580, size: 64)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!123, !839, !1111}
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !517, file: !454, line: 142, baseType: !4583, size: 64, offset: 768)
!4583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4584, size: 64)
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!452, !452, !4586}
!4586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4587, size: 64)
!4587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !453, file: !454, line: 96, baseType: !568, size: 64, offset: 832)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !453, file: !454, line: 97, baseType: !387, size: 64, offset: 896)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !453, file: !454, line: 98, baseType: !232, size: 64, offset: 960)
!4591 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !454, line: 100, baseType: !4592, size: 128, offset: 1024)
!4592 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !454, line: 100, size: 128, elements: !4593)
!4593 = !{!4594, !4595}
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4592, file: !454, line: 101, baseType: !238, size: 128)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4592, file: !454, line: 102, baseType: !4596, size: 64)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !453, file: !454, line: 104, baseType: !238, size: 128, offset: 1152)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !453, file: !454, line: 105, baseType: !238, size: 128, offset: 1280)
!4599 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !453, file: !454, line: 113, baseType: !4600, size: 128, offset: 1408)
!4600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !453, file: !454, line: 109, size: 128, elements: !4601)
!4601 = !{!4602, !4603, !4604}
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4600, file: !454, line: 110, baseType: !612, size: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4600, file: !454, line: 111, baseType: !468, size: 128)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4600, file: !454, line: 112, baseType: !1115, size: 128, align: 64)
!4605 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !446, file: !14, line: 1968, baseType: !4606, size: 64, offset: 64)
!4606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4607, size: 64)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!256, !452, !417, !4609}
!4609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4610, size: 64)
!4610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !4611, line: 10, size: 128, elements: !4612)
!4611 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!4612 = !{!4613, !4614}
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !4610, file: !4611, line: 11, baseType: !2488, size: 64)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4610, file: !4611, line: 12, baseType: !232, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !446, file: !14, line: 1969, baseType: !4616, size: 64, offset: 128)
!4616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4617, size: 64)
!4617 = !DISubroutineType(types: !4618)
!4618 = !{!123, !4575, !417, !123}
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !446, file: !14, line: 1970, baseType: !4620, size: 64, offset: 192)
!4620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4621, size: 64)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!440, !417, !123, !1111}
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !446, file: !14, line: 1972, baseType: !4624, size: 64, offset: 256)
!4624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4625, size: 64)
!4625 = !DISubroutineType(types: !4626)
!4626 = !{!123, !452, !337, !123}
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !446, file: !14, line: 1974, baseType: !4628, size: 64, offset: 320)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DISubroutineType(types: !4630)
!4630 = !{!123, !4575, !417, !452, !379, !1111}
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !446, file: !14, line: 1976, baseType: !4632, size: 64, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{!123, !452, !417, !452}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !446, file: !14, line: 1977, baseType: !4636, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DISubroutineType(types: !4638)
!4638 = !{!123, !417, !452}
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !446, file: !14, line: 1978, baseType: !4640, size: 64, offset: 512)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!123, !4575, !417, !452, !256}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !446, file: !14, line: 1980, baseType: !4644, size: 64, offset: 576)
!4644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4645, size: 64)
!4645 = !DISubroutineType(types: !4646)
!4646 = !{!123, !4575, !417, !452, !379}
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !446, file: !14, line: 1982, baseType: !4636, size: 64, offset: 640)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !446, file: !14, line: 1983, baseType: !4649, size: 64, offset: 704)
!4649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4650, size: 64)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!123, !4575, !417, !452, !379, !573}
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !446, file: !14, line: 1985, baseType: !4653, size: 64, offset: 768)
!4653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4654, size: 64)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!123, !4575, !417, !452, !417, !452, !7}
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !446, file: !14, line: 1987, baseType: !4657, size: 64, offset: 832)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!123, !4575, !452, !4660}
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !4662)
!4662 = !{!4663, !4664, !4665, !4675, !4684, !4685, !4690, !4691, !4692}
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !4661, file: !14, line: 227, baseType: !7, size: 32)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !4661, file: !14, line: 228, baseType: !379, size: 16, offset: 32)
!4665 = !DIDerivedType(tag: DW_TAG_member, scope: !4661, file: !14, line: 241, baseType: !4666, size: 32, offset: 64)
!4666 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4661, file: !14, line: 241, size: 32, elements: !4667)
!4667 = !{!4668, !4669}
!4668 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !4666, file: !14, line: 242, baseType: !423, size: 32)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !4666, file: !14, line: 243, baseType: !4670, size: 32)
!4670 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !4671, line: 16, baseType: !4672)
!4671 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!4672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4671, line: 14, size: 32, elements: !4673)
!4673 = !{!4674}
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4672, file: !4671, line: 15, baseType: !428, size: 32)
!4675 = !DIDerivedType(tag: DW_TAG_member, scope: !4661, file: !14, line: 245, baseType: !4676, size: 32, offset: 96)
!4676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4661, file: !14, line: 245, size: 32, elements: !4677)
!4677 = !{!4678, !4679}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !4676, file: !14, line: 246, baseType: !432, size: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !4676, file: !14, line: 247, baseType: !4680, size: 32)
!4680 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !4671, line: 20, baseType: !4681)
!4681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4671, line: 18, size: 32, elements: !4682)
!4682 = !{!4683}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4681, file: !4671, line: 19, baseType: !436, size: 32)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !4661, file: !14, line: 249, baseType: !578, size: 64, offset: 128)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !4661, file: !14, line: 250, baseType: !4686, size: 128, offset: 192)
!4686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !770, line: 13, size: 128, elements: !4687)
!4687 = !{!4688, !4689}
!4688 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !4686, file: !770, line: 14, baseType: !769, size: 64)
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !4686, file: !770, line: 15, baseType: !373, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !4661, file: !14, line: 251, baseType: !4686, size: 128, offset: 320)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !4661, file: !14, line: 252, baseType: !4686, size: 128, offset: 448)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !4661, file: !14, line: 259, baseType: !1200, size: 64, offset: 576)
!4693 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !446, file: !14, line: 1988, baseType: !4694, size: 64, offset: 896)
!4694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4695, size: 64)
!4695 = !DISubroutineType(types: !4696)
!4696 = !{!123, !4575, !839, !4697, !486, !7}
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4698, size: 64)
!4698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !4699, line: 22, size: 1280, elements: !4700)
!4699 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!4700 = !{!4701, !4702, !4703, !4704, !4705, !4706, !4707, !4708, !4709, !4710, !4711, !4712, !4713, !4714, !4715, !4716, !4717, !4718, !4719, !4720, !4721}
!4701 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !4698, file: !4699, line: 23, baseType: !486, size: 32)
!4702 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4698, file: !4699, line: 24, baseType: !379, size: 16, offset: 32)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !4698, file: !4699, line: 25, baseType: !7, size: 32, offset: 64)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !4698, file: !4699, line: 26, baseType: !1349, size: 32, offset: 96)
!4705 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !4698, file: !4699, line: 27, baseType: !490, size: 64, offset: 128)
!4706 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !4698, file: !4699, line: 28, baseType: !490, size: 64, offset: 192)
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !4698, file: !4699, line: 41, baseType: !490, size: 64, offset: 256)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4698, file: !4699, line: 42, baseType: !573, size: 32, offset: 320)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !4698, file: !4699, line: 43, baseType: !573, size: 32, offset: 352)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !4698, file: !4699, line: 44, baseType: !423, size: 32, offset: 384)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !4698, file: !4699, line: 45, baseType: !432, size: 32, offset: 416)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4698, file: !4699, line: 46, baseType: !578, size: 64, offset: 448)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !4698, file: !4699, line: 47, baseType: !4686, size: 128, offset: 512)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !4698, file: !4699, line: 48, baseType: !4686, size: 128, offset: 640)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !4698, file: !4699, line: 49, baseType: !4686, size: 128, offset: 768)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !4698, file: !4699, line: 50, baseType: !4686, size: 128, offset: 896)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !4698, file: !4699, line: 51, baseType: !490, size: 64, offset: 1024)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !4698, file: !4699, line: 52, baseType: !490, size: 64, offset: 1088)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !4698, file: !4699, line: 53, baseType: !486, size: 32, offset: 1152)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !4698, file: !4699, line: 54, baseType: !486, size: 32, offset: 1184)
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !4698, file: !4699, line: 55, baseType: !490, size: 64, offset: 1216)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !446, file: !14, line: 1990, baseType: !4723, size: 64, offset: 960)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = !DISubroutineType(types: !4725)
!4725 = !{!369, !452, !337, !384}
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !446, file: !14, line: 1991, baseType: !4727, size: 64, offset: 1024)
!4727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4728, size: 64)
!4728 = !DISubroutineType(types: !4729)
!4729 = !{!123, !417, !4730, !490, !490}
!4730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4731, size: 64)
!4731 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !446, file: !14, line: 1993, baseType: !4733, size: 64, offset: 1088)
!4733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4734, size: 64)
!4734 = !DISubroutineType(types: !4735)
!4735 = !{!123, !417, !123}
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !446, file: !14, line: 1994, baseType: !4737, size: 64, offset: 1152)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = !DISubroutineType(types: !4739)
!4739 = !{!123, !417, !452, !1200, !7, !379}
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !446, file: !14, line: 1997, baseType: !4741, size: 64, offset: 1216)
!4741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4742, size: 64)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!123, !4575, !417, !1200, !379}
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !446, file: !14, line: 1999, baseType: !4745, size: 64, offset: 1280)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DISubroutineType(types: !4747)
!4747 = !{!440, !4575, !452, !123}
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !446, file: !14, line: 2001, baseType: !4749, size: 64, offset: 1344)
!4749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4750, size: 64)
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!123, !4575, !452, !440, !123}
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !446, file: !14, line: 2003, baseType: !4753, size: 64, offset: 1408)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!123, !4575, !452, !4756}
!4756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4757, size: 64)
!4757 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !446, file: !14, line: 2005, baseType: !4759, size: 64, offset: 1472)
!4759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4760, size: 64)
!4760 = !DISubroutineType(types: !4761)
!4761 = !{!123, !452, !4756}
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !446, file: !14, line: 2006, baseType: !4763, size: 64, offset: 1536)
!4763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4764, size: 64)
!4764 = !DISubroutineType(types: !4765)
!4765 = !{!4766, !417}
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !4768)
!4768 = !{!4769, !4770}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4767, file: !14, line: 3193, baseType: !970, size: 128)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !4767, file: !14, line: 3194, baseType: !486, size: 32, offset: 128)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !418, file: !14, line: 655, baseType: !568, size: 64, offset: 448)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !418, file: !14, line: 656, baseType: !413, size: 64, offset: 512)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !418, file: !14, line: 659, baseType: !232, size: 64, offset: 576)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !418, file: !14, line: 663, baseType: !387, size: 64, offset: 640)
!4775 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !14, line: 671, baseType: !4776, size: 32, offset: 704)
!4776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !14, line: 671, size: 32, elements: !4777)
!4777 = !{!4778, !4780}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4776, file: !14, line: 672, baseType: !4779, size: 32)
!4779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4776, file: !14, line: 673, baseType: !7, size: 32)
!4781 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !418, file: !14, line: 675, baseType: !573, size: 32, offset: 736)
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !418, file: !14, line: 676, baseType: !578, size: 64, offset: 768)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !418, file: !14, line: 677, baseType: !4686, size: 128, offset: 832)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !418, file: !14, line: 678, baseType: !4686, size: 128, offset: 960)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !418, file: !14, line: 679, baseType: !4686, size: 128, offset: 1088)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !418, file: !14, line: 680, baseType: !267, size: 32, offset: 1216)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !418, file: !14, line: 681, baseType: !307, size: 16, offset: 1248)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !418, file: !14, line: 682, baseType: !295, size: 8, offset: 1264)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !418, file: !14, line: 683, baseType: !295, size: 8, offset: 1272)
!4790 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !418, file: !14, line: 684, baseType: !917, size: 64, offset: 1280)
!4791 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !418, file: !14, line: 691, baseType: !387, size: 64, offset: 1344)
!4792 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !418, file: !14, line: 692, baseType: !929, size: 320, offset: 1408)
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !418, file: !14, line: 694, baseType: !387, size: 64, offset: 1728)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !418, file: !14, line: 695, baseType: !387, size: 64, offset: 1792)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !418, file: !14, line: 697, baseType: !612, size: 128, offset: 1856)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !418, file: !14, line: 698, baseType: !238, size: 128, offset: 1984)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !418, file: !14, line: 707, baseType: !238, size: 128, offset: 2112)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !418, file: !14, line: 708, baseType: !238, size: 128, offset: 2240)
!4799 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !14, line: 709, baseType: !4800, size: 128, offset: 2368)
!4800 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !14, line: 709, size: 128, elements: !4801)
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4800, file: !14, line: 710, baseType: !608, size: 64)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4800, file: !14, line: 711, baseType: !1115, size: 128, align: 64)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !418, file: !14, line: 713, baseType: !722, size: 64, offset: 2496)
!4805 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !418, file: !14, line: 714, baseType: !722, size: 64, offset: 2560)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !418, file: !14, line: 715, baseType: !287, size: 32, offset: 2624)
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !418, file: !14, line: 716, baseType: !287, size: 32, offset: 2656)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !418, file: !14, line: 717, baseType: !287, size: 32, offset: 2688)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !418, file: !14, line: 719, baseType: !287, size: 32, offset: 2720)
!4810 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !14, line: 721, baseType: !4811, size: 64, offset: 2752)
!4811 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !14, line: 721, size: 64, elements: !4812)
!4812 = !{!4813, !4814}
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4811, file: !14, line: 722, baseType: !1496, size: 64)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4811, file: !14, line: 723, baseType: !639, size: 64)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !418, file: !14, line: 725, baseType: !4816, size: 64, offset: 2816)
!4816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4817, size: 64)
!4817 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !418, file: !14, line: 726, baseType: !414, size: 1536, align: 64, offset: 2880)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !418, file: !14, line: 727, baseType: !238, size: 128, offset: 4416)
!4820 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !14, line: 728, baseType: !4821, size: 64, offset: 4544)
!4821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !14, line: 728, size: 64, elements: !4822)
!4822 = !{!4823, !4824, !4827, !4828}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4821, file: !14, line: 729, baseType: !2746, size: 64)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4821, file: !14, line: 730, baseType: !4825, size: 64)
!4825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4826, size: 64)
!4826 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4821, file: !14, line: 731, baseType: !337, size: 64)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4821, file: !14, line: 732, baseType: !7, size: 32)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !418, file: !14, line: 735, baseType: !487, size: 32, offset: 4608)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !418, file: !14, line: 738, baseType: !487, size: 32, offset: 4640)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !418, file: !14, line: 739, baseType: !4513, size: 64, offset: 4672)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !418, file: !14, line: 750, baseType: !232, size: 64, offset: 4736)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !414, file: !14, line: 474, baseType: !970, size: 128, offset: 64)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !414, file: !14, line: 475, baseType: !929, size: 320, offset: 192)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !414, file: !14, line: 476, baseType: !781, size: 32, offset: 512)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !414, file: !14, line: 477, baseType: !287, size: 32, offset: 544)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !414, file: !14, line: 482, baseType: !2221, size: 128, offset: 576)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !414, file: !14, line: 483, baseType: !387, size: 64, offset: 704)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !414, file: !14, line: 484, baseType: !387, size: 64, offset: 768)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !414, file: !14, line: 485, baseType: !4841, size: 64, offset: 832)
!4841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4842, size: 64)
!4842 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4843)
!4843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !4844)
!4844 = !{!4845, !4849, !4919, !4923, !4927, !4933, !4937, !4941, !4945, !4949, !4953, !4957, !4958, !4962, !4966, !4970, !4975, !4979, !4985, !4986}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4843, file: !14, line: 405, baseType: !4846, size: 64)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{!123, !1030, !651}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4843, file: !14, line: 406, baseType: !4850, size: 64, offset: 64)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DISubroutineType(types: !4852)
!4852 = !{!123, !1200, !4853}
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !46, line: 293, size: 1536, elements: !4855)
!4855 = !{!4856, !4886, !4900}
!4856 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !46, line: 295, baseType: !4857, size: 512)
!4857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !46, line: 295, size: 512, elements: !4858)
!4858 = !{!4859, !4885}
!4859 = !DIDerivedType(tag: DW_TAG_member, scope: !4857, file: !46, line: 296, baseType: !4860, size: 448)
!4860 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4857, file: !46, line: 296, size: 448, elements: !4861)
!4861 = !{!4862, !4863, !4872, !4873, !4874, !4883, !4884}
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4860, file: !46, line: 298, baseType: !387, size: 64)
!4863 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !46, line: 299, baseType: !4864, size: 128, offset: 64)
!4864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4860, file: !46, line: 299, size: 128, elements: !4865)
!4865 = !{!4866, !4867}
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4864, file: !46, line: 300, baseType: !238, size: 128)
!4867 = !DIDerivedType(tag: DW_TAG_member, scope: !4864, file: !46, line: 302, baseType: !4868, size: 128)
!4868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4864, file: !46, line: 302, size: 128, elements: !4869)
!4869 = !{!4870, !4871}
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4868, file: !46, line: 303, baseType: !232, size: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4868, file: !46, line: 305, baseType: !7, size: 32, offset: 64)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4860, file: !46, line: 310, baseType: !413, size: 64, offset: 192)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4860, file: !46, line: 311, baseType: !387, size: 64, offset: 256)
!4874 = !DIDerivedType(tag: DW_TAG_member, scope: !4860, file: !46, line: 312, baseType: !4875, size: 64, offset: 320)
!4875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4860, file: !46, line: 312, size: 64, elements: !4876)
!4876 = !{!4877, !4878}
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4875, file: !46, line: 313, baseType: !232, size: 64)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4875, file: !46, line: 314, baseType: !4879, size: 64)
!4879 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !46, line: 257, baseType: !4880)
!4880 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 255, size: 64, elements: !4881)
!4881 = !{!4882}
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4880, file: !46, line: 256, baseType: !387, size: 64)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4860, file: !46, line: 316, baseType: !287, size: 32, offset: 384)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4860, file: !46, line: 317, baseType: !287, size: 32, offset: 416)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4857, file: !46, line: 323, baseType: !1031, size: 512, align: 128)
!4886 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !46, line: 325, baseType: !4887, size: 512, offset: 512)
!4887 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !46, line: 325, size: 512, elements: !4888)
!4888 = !{!4889, !4899}
!4889 = !DIDerivedType(tag: DW_TAG_member, scope: !4887, file: !46, line: 326, baseType: !4890, size: 320)
!4890 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4887, file: !46, line: 326, size: 320, elements: !4891)
!4891 = !{!4892, !4893, !4894, !4895, !4896, !4897, !4898}
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4890, file: !46, line: 327, baseType: !387, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4890, file: !46, line: 328, baseType: !387, size: 64, offset: 64)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4890, file: !46, line: 329, baseType: !387, size: 64, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4890, file: !46, line: 331, baseType: !287, size: 32, offset: 192)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4890, file: !46, line: 332, baseType: !287, size: 32, offset: 224)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4890, file: !46, line: 333, baseType: !287, size: 32, offset: 256)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4890, file: !46, line: 335, baseType: !7, size: 32, offset: 288)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4887, file: !46, line: 339, baseType: !1031, size: 512, align: 128)
!4900 = !DIDerivedType(tag: DW_TAG_member, scope: !4854, file: !46, line: 341, baseType: !4901, size: 512, offset: 1024)
!4901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4854, file: !46, line: 341, size: 512, elements: !4902)
!4902 = !{!4903, !4912, !4918}
!4903 = !DIDerivedType(tag: DW_TAG_member, scope: !4901, file: !46, line: 342, baseType: !4904, size: 384)
!4904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !46, line: 342, size: 384, elements: !4905)
!4905 = !{!4906, !4907, !4908, !4909, !4910, !4911}
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4904, file: !46, line: 343, baseType: !387, size: 64)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4904, file: !46, line: 344, baseType: !387, size: 64, offset: 64)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4904, file: !46, line: 346, baseType: !232, size: 64, offset: 128)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4904, file: !46, line: 347, baseType: !232, size: 64, offset: 192)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4904, file: !46, line: 348, baseType: !232, size: 64, offset: 256)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4904, file: !46, line: 349, baseType: !232, size: 64, offset: 320)
!4912 = !DIDerivedType(tag: DW_TAG_member, scope: !4901, file: !46, line: 352, baseType: !4913, size: 256)
!4913 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4901, file: !46, line: 352, size: 256, elements: !4914)
!4914 = !{!4915, !4916, !4917}
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4913, file: !46, line: 353, baseType: !387, size: 64)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4913, file: !46, line: 354, baseType: !387, size: 64, offset: 64)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4913, file: !46, line: 356, baseType: !238, size: 128, offset: 128)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4901, file: !46, line: 359, baseType: !1031, size: 512, align: 128)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4843, file: !14, line: 409, baseType: !4920, size: 64, offset: 128)
!4920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4921, size: 64)
!4921 = !DISubroutineType(types: !4922)
!4922 = !{!123, !413, !651}
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4843, file: !14, line: 412, baseType: !4924, size: 64, offset: 192)
!4924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4925, size: 64)
!4925 = !DISubroutineType(types: !4926)
!4926 = !{!1111, !413, !4853}
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4843, file: !14, line: 414, baseType: !4928, size: 64, offset: 256)
!4928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4929, size: 64)
!4929 = !DISubroutineType(types: !4930)
!4930 = !{null, !4931}
!4931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4932, size: 64)
!4932 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4843, file: !14, line: 416, baseType: !4934, size: 64, offset: 320)
!4934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4935, size: 64)
!4935 = !DISubroutineType(types: !4936)
!4936 = !{!123, !1200, !413, !578, !7, !4262, !2761}
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4843, file: !14, line: 419, baseType: !4938, size: 64, offset: 384)
!4938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4939, size: 64)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!123, !1200, !413, !578, !7, !7, !1030, !232}
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4843, file: !14, line: 424, baseType: !4942, size: 64, offset: 448)
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!956, !413, !956}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4843, file: !14, line: 425, baseType: !4946, size: 64, offset: 512)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = !DISubroutineType(types: !4948)
!4948 = !{null, !4853, !384, !384}
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4843, file: !14, line: 426, baseType: !4950, size: 64, offset: 576)
!4950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4951, size: 64)
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!1111, !4853, !781}
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4843, file: !14, line: 427, baseType: !4954, size: 64, offset: 640)
!4954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4955, size: 64)
!4955 = !DISubroutineType(types: !4956)
!4956 = !{null, !4853}
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4843, file: !14, line: 428, baseType: !1515, size: 64, offset: 704)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4843, file: !14, line: 433, baseType: !4959, size: 64, offset: 768)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4960, size: 64)
!4960 = !DISubroutineType(types: !4961)
!4961 = !{!123, !413, !4853, !4853, !74}
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4843, file: !14, line: 435, baseType: !4963, size: 64, offset: 832)
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DISubroutineType(types: !4965)
!4965 = !{!123, !4853}
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4843, file: !14, line: 436, baseType: !4967, size: 64, offset: 896)
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DISubroutineType(types: !4969)
!4969 = !{!1111, !4853, !384, !384}
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4843, file: !14, line: 438, baseType: !4971, size: 64, offset: 960)
!4971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4972, size: 64)
!4972 = !DISubroutineType(types: !4973)
!4973 = !{null, !4853, !4974, !4974}
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4843, file: !14, line: 439, baseType: !4976, size: 64, offset: 1024)
!4976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4977, size: 64)
!4977 = !DISubroutineType(types: !4978)
!4978 = !{!123, !413, !1030}
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4843, file: !14, line: 442, baseType: !4980, size: 64, offset: 1088)
!4980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4981, size: 64)
!4981 = !DISubroutineType(types: !4982)
!4982 = !{!123, !4983, !1200, !3216}
!4983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4984, size: 64)
!4984 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4843, file: !14, line: 444, baseType: !2753, size: 64, offset: 1152)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4843, file: !14, line: 445, baseType: !4987, size: 64, offset: 1216)
!4987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4988, size: 64)
!4988 = !DISubroutineType(types: !4989)
!4989 = !{!123, !1518, !1540}
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !414, file: !14, line: 486, baseType: !387, size: 64, offset: 896)
!4991 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !414, file: !14, line: 487, baseType: !929, size: 320, offset: 960)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !414, file: !14, line: 488, baseType: !2796, size: 32, offset: 1280)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !414, file: !14, line: 489, baseType: !267, size: 32, offset: 1312)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !414, file: !14, line: 490, baseType: !238, size: 128, offset: 1344)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !414, file: !14, line: 491, baseType: !232, size: 64, offset: 1472)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !404, file: !363, line: 180, baseType: !4997, size: 64, offset: 320)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = !DISubroutineType(types: !4999)
!4999 = !{!369, !1200, !260, !403, !337, !578, !384}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !404, file: !363, line: 182, baseType: !4997, size: 64, offset: 384)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !404, file: !363, line: 184, baseType: !5002, size: 64, offset: 448)
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!123, !1200, !260, !403, !1160}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !392, file: !363, line: 90, baseType: !5006, size: 64, offset: 192)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !392, file: !363, line: 91, baseType: !5008, size: 64, offset: 256)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !353, file: !211, line: 120, baseType: !5010, size: 64, offset: 192)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5011, size: 64)
!5011 = !DISubroutineType(types: !5012)
!5012 = !{!2464, !320}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !353, file: !211, line: 121, baseType: !5014, size: 64, offset: 256)
!5014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5015, size: 64)
!5015 = !DISubroutineType(types: !5016)
!5016 = !{!2360, !320}
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !353, file: !211, line: 122, baseType: !5018, size: 64, offset: 320)
!5018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5019, size: 64)
!5019 = !DISubroutineType(types: !5020)
!5020 = !{null, !320, !1993, !1994}
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !253, file: !211, line: 70, baseType: !5022, size: 64, offset: 384)
!5022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5023, size: 64)
!5023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !5024, line: 190, size: 1152, elements: !5025)
!5024 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!5025 = !{!5026, !5027, !5028, !5029, !5030, !5031, !5032, !5033, !5117, !5118, !5119, !5120, !5121, !5124}
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5023, file: !5024, line: 191, baseType: !287, size: 32)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5023, file: !5024, line: 192, baseType: !287, size: 32, offset: 32)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5023, file: !5024, line: 202, baseType: !5022, size: 64, offset: 64)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5023, file: !5024, line: 203, baseType: !256, size: 64, offset: 128)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5023, file: !5024, line: 205, baseType: !1327, size: 192, align: 64, offset: 192)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !5023, file: !5024, line: 207, baseType: !2360, size: 64, offset: 384)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !5023, file: !5024, line: 208, baseType: !7, size: 32, offset: 448)
!5033 = !DIDerivedType(tag: DW_TAG_member, scope: !5023, file: !5024, line: 209, baseType: !5034, size: 256, offset: 512)
!5034 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5023, file: !5024, line: 209, size: 256, elements: !5035)
!5035 = !{!5036, !5045, !5049}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !5034, file: !5024, line: 210, baseType: !5037, size: 256)
!5037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !5024, line: 153, size: 256, elements: !5038)
!5038 = !{!5039, !5040, !5041, !5044}
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !5037, file: !5024, line: 154, baseType: !387, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5037, file: !5024, line: 156, baseType: !2224, size: 64, offset: 64)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !5037, file: !5024, line: 162, baseType: !5042, size: 64, offset: 128)
!5042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5043, size: 64)
!5043 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !5024, line: 162, flags: DIFlagFwdDecl)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !5037, file: !5024, line: 167, baseType: !387, size: 64, offset: 192)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !5034, file: !5024, line: 211, baseType: !5046, size: 64)
!5046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !5024, line: 170, size: 64, elements: !5047)
!5047 = !{!5048}
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !5046, file: !5024, line: 171, baseType: !5022, size: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5034, file: !5024, line: 212, baseType: !5050, size: 256)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !5024, line: 174, size: 256, elements: !5051)
!5051 = !{!5052, !5112, !5115, !5116}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5050, file: !5024, line: 175, baseType: !5053, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5054, size: 64)
!5054 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5055)
!5055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !5024, line: 271, size: 768, elements: !5056)
!5056 = !{!5057, !5077, !5081, !5085, !5089, !5093, !5097, !5101, !5102, !5103, !5104, !5108}
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5055, file: !5024, line: 276, baseType: !5058, size: 64)
!5058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5059, size: 64)
!5059 = !DISubroutineType(types: !5060)
!5060 = !{!123, !5061}
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !5024, line: 251, size: 1216, elements: !5063)
!5063 = !{!5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076}
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !5062, file: !5024, line: 253, baseType: !5022, size: 64)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !5062, file: !5024, line: 254, baseType: !1200, size: 64, offset: 64)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !5062, file: !5024, line: 255, baseType: !689, size: 64, offset: 128)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5062, file: !5024, line: 256, baseType: !232, size: 64, offset: 192)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5062, file: !5024, line: 259, baseType: !716, size: 256, offset: 256)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !5062, file: !5024, line: 260, baseType: !716, size: 256, offset: 512)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5062, file: !5024, line: 261, baseType: !123, size: 32, offset: 768)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5062, file: !5024, line: 262, baseType: !238, size: 128, offset: 832)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !5062, file: !5024, line: 263, baseType: !337, size: 64, offset: 960)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5062, file: !5024, line: 265, baseType: !384, size: 64, offset: 1024)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !5062, file: !5024, line: 266, baseType: !1111, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !5062, file: !5024, line: 267, baseType: !1111, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5062, file: !5024, line: 268, baseType: !2956, size: 64, offset: 1152)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5055, file: !5024, line: 277, baseType: !5078, size: 64, offset: 64)
!5078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5079, size: 64)
!5079 = !DISubroutineType(types: !5080)
!5080 = !{null, !5061}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !5055, file: !5024, line: 290, baseType: !5082, size: 64, offset: 128)
!5082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5083, size: 64)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!123, !689, !232}
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !5055, file: !5024, line: 292, baseType: !5086, size: 64, offset: 192)
!5086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5087, size: 64)
!5087 = !DISubroutineType(types: !5088)
!5088 = !{!232, !689, !1509}
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !5055, file: !5024, line: 293, baseType: !5090, size: 64, offset: 256)
!5090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5091, size: 64)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!232, !689, !232, !1509}
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !5055, file: !5024, line: 294, baseType: !5094, size: 64, offset: 320)
!5094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5095, size: 64)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{null, !689, !232}
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !5055, file: !5024, line: 296, baseType: !5098, size: 64, offset: 384)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!369, !5061, !337, !384, !578}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !5055, file: !5024, line: 306, baseType: !384, size: 64, offset: 448)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !5055, file: !5024, line: 313, baseType: !1111, size: 8, offset: 512)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !5055, file: !5024, line: 314, baseType: !5098, size: 64, offset: 576)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !5055, file: !5024, line: 317, baseType: !5105, size: 64, offset: 640)
!5105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5106, size: 64)
!5106 = !DISubroutineType(types: !5107)
!5107 = !{!2698, !5061, !2700}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5055, file: !5024, line: 320, baseType: !5109, size: 64, offset: 704)
!5109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5110, size: 64)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!123, !5061, !1160}
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5050, file: !5024, line: 176, baseType: !5113, size: 64, offset: 64)
!5113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5114, size: 64)
!5114 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !5024, line: 35, flags: DIFlagFwdDecl)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5050, file: !5024, line: 177, baseType: !578, size: 64, offset: 128)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !5050, file: !5024, line: 178, baseType: !5022, size: 64, offset: 192)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !5023, file: !5024, line: 215, baseType: !232, size: 64, offset: 768)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5023, file: !5024, line: 221, baseType: !490, size: 64, offset: 832)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5023, file: !5024, line: 223, baseType: !307, size: 16, offset: 896)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5023, file: !5024, line: 224, baseType: !379, size: 16, offset: 912)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !5023, file: !5024, line: 225, baseType: !5122, size: 64, offset: 960)
!5122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5123, size: 64)
!5123 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !5024, line: 36, flags: DIFlagFwdDecl)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5023, file: !5024, line: 227, baseType: !1115, size: 128, align: 64, offset: 1024)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !253, file: !211, line: 71, baseType: !5126, size: 32, offset: 448)
!5126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !5127, line: 19, size: 32, elements: !5128)
!5127 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!5128 = !{!5129}
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5126, file: !5127, line: 20, baseType: !1250, size: 32)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !253, file: !211, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !253, file: !211, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !253, file: !211, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !253, file: !211, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !253, file: !211, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !250, file: !6, line: 47, baseType: !233, size: 64, offset: 512)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !250, file: !6, line: 48, baseType: !260, size: 64, offset: 576)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !250, file: !6, line: 49, baseType: !5138, size: 64, offset: 640)
!5138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5139, size: 64)
!5139 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !250, file: !6, line: 50, baseType: !3696, size: 64, offset: 704)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !234, file: !6, line: 418, baseType: !5142, size: 64, offset: 1408)
!5142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5143, size: 64)
!5143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !5144)
!5144 = !{!5145, !5146, !5151, !5155, !5159, !5163}
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5143, file: !6, line: 54, baseType: !375, size: 128)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5143, file: !6, line: 55, baseType: !5147, size: 64, offset: 128)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5148, size: 64)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{!369, !5142, !5150, !337}
!5150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5143, file: !6, line: 57, baseType: !5152, size: 64, offset: 192)
!5152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5153, size: 64)
!5153 = !DISubroutineType(types: !5154)
!5154 = !{!369, !5142, !5150, !256, !384}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !5143, file: !6, line: 59, baseType: !5156, size: 64, offset: 256)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{null, !233, !256}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !5143, file: !6, line: 60, baseType: !5160, size: 64, offset: 320)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{!123, !233}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5143, file: !6, line: 61, baseType: !5164, size: 64, offset: 384)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{null, !233}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !234, file: !6, line: 419, baseType: !256, size: 64, offset: 1472)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !234, file: !6, line: 420, baseType: !256, size: 64, offset: 1536)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !234, file: !6, line: 421, baseType: !260, size: 64, offset: 1600)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !234, file: !6, line: 424, baseType: !5171, size: 64, offset: 1664)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5172, size: 64)
!5172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5173)
!5173 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !234, file: !6, line: 425, baseType: !5175, size: 64, offset: 1728)
!5175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5176, size: 64)
!5176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !234, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !234, file: !6, line: 435, baseType: !716, size: 256, offset: 1856)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !234, file: !6, line: 437, baseType: !5180, size: 64, offset: 2112)
!5180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5181, size: 64)
!5181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !5182, line: 69, size: 320, elements: !5183)
!5182 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!5183 = !{!5184, !5185, !5186, !5203, !5205, !5209, !5210}
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5181, file: !5182, line: 70, baseType: !256, size: 64)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5181, file: !5182, line: 71, baseType: !233, size: 64, offset: 64)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5181, file: !5182, line: 72, baseType: !5187, size: 64, offset: 128)
!5187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5188, size: 64)
!5188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5189)
!5189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !5182, line: 47, size: 256, elements: !5190)
!5190 = !{!5191, !5192, !5198, !5202}
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5189, file: !5182, line: 49, baseType: !7, size: 32)
!5192 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !5189, file: !5182, line: 51, baseType: !5193, size: 64, offset: 64)
!5193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5194, size: 64)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{!123, !256, !5196}
!5196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5197, size: 64)
!5197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5181)
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !5189, file: !5182, line: 53, baseType: !5199, size: 64, offset: 128)
!5199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5200, size: 64)
!5200 = !DISubroutineType(types: !5201)
!5201 = !{!123, !337, !5196}
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5189, file: !5182, line: 55, baseType: !2488, size: 64, offset: 192)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !5181, file: !5182, line: 73, baseType: !5204, size: 16, offset: 192)
!5204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !305)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !5181, file: !5182, line: 74, baseType: !5206, size: 8, offset: 208)
!5206 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !296, line: 16, baseType: !5207)
!5207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !298, line: 20, baseType: !5208)
!5208 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5181, file: !5182, line: 75, baseType: !295, size: 8, offset: 216)
!5210 = !DIDerivedType(tag: DW_TAG_member, scope: !5181, file: !5182, line: 76, baseType: !5211, size: 64, offset: 256)
!5211 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5181, file: !5182, line: 76, size: 64, elements: !5212)
!5212 = !{!5213, !5214, !5221}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5211, file: !5182, line: 77, baseType: !232, size: 64)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !5211, file: !5182, line: 78, baseType: !5215, size: 64)
!5215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5216, size: 64)
!5216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5217)
!5217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !5182, line: 86, size: 128, elements: !5218)
!5218 = !{!5219, !5220}
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !5217, file: !5182, line: 87, baseType: !7, size: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !5217, file: !5182, line: 88, baseType: !337, size: 64, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !5211, file: !5182, line: 79, baseType: !5222, size: 64)
!5222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5223, size: 64)
!5223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5224)
!5224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !5182, line: 92, size: 256, elements: !5225)
!5225 = !{!5226, !5227, !5228, !5229, !5230}
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !5224, file: !5182, line: 94, baseType: !7, size: 32)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !5224, file: !5182, line: 95, baseType: !7, size: 32, offset: 32)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !5224, file: !5182, line: 96, baseType: !1715, size: 64, offset: 64)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5224, file: !5182, line: 97, baseType: !5187, size: 64, offset: 128)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !5224, file: !5182, line: 98, baseType: !232, size: 64, offset: 192)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !234, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !234, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !234, file: !6, line: 442, baseType: !5171, size: 64, offset: 2240)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !234, file: !6, line: 443, baseType: !5175, size: 64, offset: 2304)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !234, file: !6, line: 444, baseType: !1111, size: 8, offset: 2368)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !234, file: !6, line: 451, baseType: !1111, size: 8, offset: 2376)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !234, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!5238 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !234, file: !6, line: 455, baseType: !5239, size: 64, offset: 2432)
!5239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5240, size: 64)
!5240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !5241, line: 23, size: 96, elements: !5242)
!5241 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!5242 = !{!5243, !5244, !5245}
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !5240, file: !5241, line: 24, baseType: !123, size: 32)
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !5240, file: !5241, line: 24, baseType: !123, size: 32, offset: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5240, file: !5241, line: 24, baseType: !123, size: 32, offset: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !234, file: !6, line: 458, baseType: !5247, size: 64, offset: 2496)
!5247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5248, size: 64)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!123}
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !234, file: !6, line: 460, baseType: !5251, size: 4032, align: 512, offset: 2560)
!5251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5252, size: 4032, elements: !5266)
!5252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !5253)
!5253 = !{!5254, !5255, !5256}
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5252, file: !6, line: 363, baseType: !232, size: 64)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5252, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!5256 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !5252, file: !6, line: 367, baseType: !5257, size: 448, offset: 128)
!5257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !5258)
!5258 = !{!5259, !5260}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !5257, file: !6, line: 320, baseType: !233, size: 64)
!5260 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5257, file: !6, line: 321, baseType: !5261, size: 384, offset: 64)
!5261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !5262, line: 40, size: 384, elements: !5263)
!5262 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!5263 = !{!5264}
!5264 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5261, file: !5262, line: 41, baseType: !5265, size: 384, align: 64)
!5265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 384, align: 64, elements: !1694)
!5266 = !{!5267}
!5267 = !DISubrange(count: 7)
!5268 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !234, file: !6, line: 463, baseType: !5269, size: 192, offset: 6592)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !5270, line: 8, size: 192, elements: !5271)
!5270 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!5271 = !{!5272, !5273, !5274}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !5269, file: !5270, line: 10, baseType: !7, size: 32)
!5273 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !5269, file: !5270, line: 11, baseType: !683, size: 64, offset: 64)
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !5269, file: !5270, line: 12, baseType: !5275, size: 64, offset: 128)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !5277, line: 59, size: 48, elements: !5278)
!5277 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!5278 = !{!5279, !5280, !5281, !5282, !5283, !5284}
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !5276, file: !5277, line: 60, baseType: !2902, size: 16)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !5276, file: !5277, line: 61, baseType: !2902, size: 16, offset: 16)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !5276, file: !5277, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !5276, file: !5277, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5276, file: !5277, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !5276, file: !5277, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!5285 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !234, file: !6, line: 465, baseType: !387, size: 64, offset: 6784)
!5286 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !234, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!5287 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !234, file: !6, line: 470, baseType: !238, size: 128, offset: 6912)
!5288 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !234, file: !6, line: 471, baseType: !5289, size: 64, offset: 7040)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5290, size: 64)
!5290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !5291, line: 33, size: 96, elements: !5292)
!5291 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!5292 = !{!5293, !5294, !5295, !5296}
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !5290, file: !5291, line: 37, baseType: !123, size: 32)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !5290, file: !5291, line: 43, baseType: !123, size: 32, offset: 32)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !5290, file: !5291, line: 45, baseType: !307, size: 16, offset: 64)
!5296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5290, file: !5291, line: 47, baseType: !307, size: 16, offset: 80)
!5297 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !234, file: !6, line: 476, baseType: !5298, size: 64, offset: 7104)
!5298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5299, size: 64)
!5299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !5300)
!5300 = !{!5301, !5317, !5318, !5319}
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !5299, file: !6, line: 379, baseType: !5302, size: 64)
!5302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5303, size: 64)
!5303 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !5304, line: 204, baseType: !5305)
!5304 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!5305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !5304, line: 197, size: 192, elements: !5306)
!5306 = !{!5307, !5309, !5310, !5311, !5313, !5315}
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !5305, file: !5304, line: 198, baseType: !5308, size: 32)
!5308 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !5304, line: 21, baseType: !487)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !5305, file: !5304, line: 199, baseType: !299, size: 8, offset: 32)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !5305, file: !5304, line: 200, baseType: !299, size: 8, offset: 40)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !5305, file: !5304, line: 201, baseType: !5312, size: 16, offset: 48)
!5312 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !5304, line: 17, baseType: !306)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !5305, file: !5304, line: 202, baseType: !5314, size: 64, offset: 64)
!5314 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !5304, line: 16, baseType: !491)
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !5305, file: !5304, line: 203, baseType: !5316, size: 64, offset: 128)
!5316 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !5304, line: 22, baseType: !491)
!5317 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !5299, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!5318 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !5299, file: !6, line: 381, baseType: !337, size: 64, offset: 128)
!5319 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !5299, file: !6, line: 382, baseType: !337, size: 64, offset: 192)
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !234, file: !6, line: 477, baseType: !5299, size: 256, offset: 7168)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !234, file: !6, line: 480, baseType: !5322, size: 64, offset: 7424)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!5324 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !234, file: !6, line: 483, baseType: !5325, size: 64, offset: 7488)
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5326, size: 64)
!5326 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !234, file: !6, line: 488, baseType: !337, size: 64, offset: 7552)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !234, file: !6, line: 492, baseType: !232, size: 64, offset: 7616)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !234, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !234, file: !6, line: 495, baseType: !232, size: 64, offset: 7744)
!5331 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !234, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !234, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !234, file: !6, line: 500, baseType: !5334, size: 64, offset: 7872)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !5336, line: 45, baseType: !5337)
!5336 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!5337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !234, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !234, file: !6, line: 504, baseType: !5340, size: 64, offset: 8000)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !234, file: !6, line: 515, baseType: !5342, size: 64, offset: 8064)
!5342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5343, size: 64)
!5343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !5344, line: 117, size: 128, elements: !5345)
!5344 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!5345 = !{!5346, !5347, !5348}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !5343, file: !5344, line: 118, baseType: !1320, size: 32)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !5343, file: !5344, line: 119, baseType: !1320, size: 32, offset: 32)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5343, file: !5344, line: 120, baseType: !373, size: 64, offset: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !234, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !234, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !234, file: !6, line: 520, baseType: !2380, size: 64, offset: 8192)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !234, file: !6, line: 523, baseType: !5353, size: 64, offset: 8256)
!5353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5354, size: 64)
!5354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5355, size: 64)
!5355 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !234, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !234, file: !6, line: 525, baseType: !5358, size: 64, offset: 8384)
!5358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5360, size: 64)
!5360 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !234, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !234, file: !6, line: 533, baseType: !232, size: 64, offset: 8512)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !234, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !234, file: !6, line: 535, baseType: !5365, size: 64, offset: 8640)
!5365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !234, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !234, file: !6, line: 539, baseType: !123, size: 32, offset: 8736)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !234, file: !6, line: 540, baseType: !5369, size: 64, offset: 8768)
!5369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5370, size: 64)
!5370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !5371, line: 32, size: 64, elements: !5372)
!5371 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!5372 = !{!5373, !5374}
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5370, file: !5371, line: 33, baseType: !1320, size: 32)
!5374 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5370, file: !5371, line: 34, baseType: !1320, size: 32, offset: 32)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !234, file: !6, line: 563, baseType: !238, size: 128, offset: 8832)
!5376 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !234, file: !6, line: 565, baseType: !238, size: 128, offset: 8960)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !234, file: !6, line: 568, baseType: !5378, size: 64, offset: 9088)
!5378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !234, file: !6, line: 570, baseType: !287, size: 32, offset: 9152)
!5380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5381, size: 64)
!5381 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !246)
!5382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5383, size: 64)
!5383 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !373)
!5384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5385, size: 64)
!5385 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !242)
!5386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!5387 = !{!0, !5388, !5390, !5393, !5407, !5412, !5414, !5419, !5421, !5423, !5428, !5436, !5441, !5443, !5446, !5448, !5450, !5455, !5458, !5461, !5466, !5469, !5471, !5473, !5478, !5481, !5484, !5486, !5488, !5493, !5495, !5497, !5499}
!5388 = !DIGlobalVariableExpression(var: !5389, expr: !DIExpression())
!5389 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_disk_force_media_change349", scope: !2, file: !3, line: 305, type: !232, isLocal: true, isDefinition: true)
!5390 = !DIGlobalVariableExpression(var: !5391, expr: !DIExpression())
!5391 = distinct !DIGlobalVariable(scope: null, file: !3, line: 394, type: !5392, isLocal: true, isDefinition: true)
!5392 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 56, elements: !5266)
!5393 = !DIGlobalVariableExpression(var: !5394, expr: !DIExpression())
!5394 = distinct !DIGlobalVariable(name: "dev_attr_events", scope: !2, file: !3, line: 394, type: !5395, isLocal: false, isDefinition: true)
!5395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !108, line: 106, size: 256, elements: !5396)
!5396 = !{!5397, !5398, !5403}
!5397 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5395, file: !108, line: 107, baseType: !375, size: 128)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5395, file: !108, line: 108, baseType: !5399, size: 64, offset: 128)
!5399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5400, size: 64)
!5400 = !DISubroutineType(types: !5401)
!5401 = !{!369, !1966, !5402, !337}
!5402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5395, size: 64)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5395, file: !108, line: 110, baseType: !5404, size: 64, offset: 192)
!5404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5405, size: 64)
!5405 = !DISubroutineType(types: !5406)
!5406 = !{!369, !1966, !5402, !256, !384}
!5407 = !DIGlobalVariableExpression(var: !5408, expr: !DIExpression())
!5408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 395, type: !5409, isLocal: true, isDefinition: true)
!5409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 104, elements: !5410)
!5410 = !{!5411}
!5411 = !DISubrange(count: 13)
!5412 = !DIGlobalVariableExpression(var: !5413, expr: !DIExpression())
!5413 = distinct !DIGlobalVariable(name: "dev_attr_events_async", scope: !2, file: !3, line: 395, type: !5395, isLocal: false, isDefinition: true)
!5414 = !DIGlobalVariableExpression(var: !5415, expr: !DIExpression())
!5415 = distinct !DIGlobalVariable(scope: null, file: !3, line: 396, type: !5416, isLocal: true, isDefinition: true)
!5416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 144, elements: !5417)
!5417 = !{!5418}
!5418 = !DISubrange(count: 18)
!5419 = !DIGlobalVariableExpression(var: !5420, expr: !DIExpression())
!5420 = distinct !DIGlobalVariable(name: "dev_attr_events_poll_msecs", scope: !2, file: !3, line: 396, type: !5395, isLocal: false, isDefinition: true)
!5421 = !DIGlobalVariableExpression(var: !5422, expr: !DIExpression())
!5422 = distinct !DIGlobalVariable(name: "__param_events_dfl_poll_msecs", scope: !2, file: !3, line: 430, type: !5197, isLocal: true, isDefinition: true, align: 64)
!5423 = !DIGlobalVariableExpression(var: !5424, expr: !DIExpression())
!5424 = distinct !DIGlobalVariable(scope: null, file: !3, line: 445, type: !5425, isLocal: true, isDefinition: true)
!5425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 280, elements: !5426)
!5426 = !{!5427}
!5427 = !DISubrange(count: 35)
!5428 = !DIGlobalVariableExpression(var: !5429, expr: !DIExpression())
!5429 = distinct !DIGlobalVariable(name: "__key", scope: !5430, file: !3, line: 452, type: !618, isLocal: true, isDefinition: true)
!5430 = distinct !DISubprogram(name: "disk_alloc_events", scope: !3, file: !3, line: 436, type: !5431, scopeLine: 437, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5433)
!5431 = !DISubroutineType(types: !5432)
!5432 = !{!123, !959}
!5433 = !{!5434, !5435}
!5434 = !DILocalVariable(name: "disk", arg: 1, scope: !5430, file: !3, line: 436, type: !959)
!5435 = !DILocalVariable(name: "ev", scope: !5430, file: !3, line: 438, type: !3235)
!5436 = !DIGlobalVariableExpression(var: !5437, expr: !DIExpression())
!5437 = distinct !DIGlobalVariable(scope: null, file: !3, line: 452, type: !5438, isLocal: true, isDefinition: true)
!5438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 136, elements: !5439)
!5439 = !{!5440}
!5440 = !DISubrange(count: 17)
!5441 = !DIGlobalVariableExpression(var: !5442, expr: !DIExpression())
!5442 = distinct !DIGlobalVariable(name: "__key", scope: !5430, file: !3, line: 455, type: !618, isLocal: true, isDefinition: true)
!5443 = !DIGlobalVariableExpression(var: !5444, expr: !DIExpression())
!5444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !5445, isLocal: true, isDefinition: true)
!5445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 160, elements: !4362)
!5446 = !DIGlobalVariableExpression(var: !5447, expr: !DIExpression())
!5447 = distinct !DIGlobalVariable(name: "disk_events_dfl_poll_msecs", scope: !2, file: !3, line: 39, type: !387, isLocal: true, isDefinition: true)
!5448 = !DIGlobalVariableExpression(var: !5449, expr: !DIExpression())
!5449 = distinct !DIGlobalVariable(scope: null, file: !3, line: 30, type: !5445, isLocal: true, isDefinition: true)
!5450 = !DIGlobalVariableExpression(var: !5451, expr: !DIExpression())
!5451 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !5452, isLocal: true, isDefinition: true)
!5452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 168, elements: !5453)
!5453 = !{!5454}
!5454 = !DISubrange(count: 21)
!5455 = !DIGlobalVariableExpression(var: !5456, expr: !DIExpression())
!5456 = distinct !DIGlobalVariable(name: "disk_uevents", scope: !2, file: !3, line: 29, type: !5457, isLocal: true, isDefinition: true)
!5457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !337, size: 128, elements: !1694)
!5458 = !DIGlobalVariableExpression(var: !5459, expr: !DIExpression())
!5459 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !5460, isLocal: true, isDefinition: true)
!5460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 8, elements: !1675)
!5461 = !DIGlobalVariableExpression(var: !5462, expr: !DIExpression())
!5462 = distinct !DIGlobalVariable(scope: null, file: !3, line: 336, type: !5463, isLocal: true, isDefinition: true)
!5463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 40, elements: !5464)
!5464 = !{!5465}
!5465 = !DISubrange(count: 5)
!5466 = !DIGlobalVariableExpression(var: !5467, expr: !DIExpression())
!5467 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !5468, isLocal: true, isDefinition: true)
!5468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 16, elements: !1694)
!5469 = !DIGlobalVariableExpression(var: !5470, expr: !DIExpression())
!5470 = distinct !DIGlobalVariable(scope: null, file: !3, line: 341, type: !5468, isLocal: true, isDefinition: true)
!5471 = !DIGlobalVariableExpression(var: !5472, expr: !DIExpression())
!5472 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !5409, isLocal: true, isDefinition: true)
!5473 = !DIGlobalVariableExpression(var: !5474, expr: !DIExpression())
!5474 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !5475, isLocal: true, isDefinition: true)
!5475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 112, elements: !5476)
!5476 = !{!5477}
!5477 = !DISubrange(count: 14)
!5478 = !DIGlobalVariableExpression(var: !5479, expr: !DIExpression())
!5479 = distinct !DIGlobalVariable(name: "disk_events_strs", scope: !2, file: !3, line: 24, type: !5480, isLocal: true, isDefinition: true)
!5480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 128, elements: !1694)
!5481 = !DIGlobalVariableExpression(var: !5482, expr: !DIExpression())
!5482 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !5483, isLocal: true, isDefinition: true)
!5483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 32, elements: !1259)
!5484 = !DIGlobalVariableExpression(var: !5485, expr: !DIExpression())
!5485 = distinct !DIGlobalVariable(scope: null, file: !3, line: 369, type: !5463, isLocal: true, isDefinition: true)
!5486 = !DIGlobalVariableExpression(var: !5487, expr: !DIExpression())
!5487 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !5483, isLocal: true, isDefinition: true)
!5488 = !DIGlobalVariableExpression(var: !5489, expr: !DIExpression())
!5489 = distinct !DIGlobalVariable(name: "__param_str_events_dfl_poll_msecs", scope: !2, file: !3, line: 430, type: !5490, isLocal: true, isDefinition: true)
!5490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 224, elements: !5491)
!5491 = !{!5492}
!5492 = !DISubrange(count: 28)
!5493 = !DIGlobalVariableExpression(var: !5494, expr: !DIExpression())
!5494 = distinct !DIGlobalVariable(name: "disk_events_dfl_poll_msecs_param_ops", scope: !2, file: !3, line: 422, type: !5188, isLocal: true, isDefinition: true)
!5495 = !DIGlobalVariableExpression(var: !5496, expr: !DIExpression())
!5496 = distinct !DIGlobalVariable(scope: null, file: !222, line: 480, type: !5452, isLocal: true, isDefinition: true)
!5497 = !DIGlobalVariableExpression(var: !5498, expr: !DIExpression())
!5498 = distinct !DIGlobalVariable(name: "disk_events_mutex", scope: !2, file: !3, line: 35, type: !716, isLocal: true, isDefinition: true)
!5499 = !DIGlobalVariableExpression(var: !5500, expr: !DIExpression())
!5500 = distinct !DIGlobalVariable(name: "disk_events", scope: !2, file: !3, line: 36, type: !238, isLocal: true, isDefinition: true)
!5501 = !{i32 7, !"Dwarf Version", i32 5}
!5502 = !{i32 2, !"Debug Info Version", i32 3}
!5503 = !{i32 1, !"wchar_size", i32 2}
!5504 = !{i32 8, !"cf-protection-branch", i32 1}
!5505 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5506 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5507 = !{i32 1, !"Code Model", i32 2}
!5508 = !{i32 1, !"override-stack-alignment", i32 8}
!5509 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5510 = distinct !DISubprogram(name: "disk_block_events", scope: !3, file: !3, line: 73, type: !3145, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5511)
!5511 = !{!5512, !5513, !5514, !5515, !5516, !5520}
!5512 = !DILocalVariable(name: "disk", arg: 1, scope: !5510, file: !3, line: 73, type: !959)
!5513 = !DILocalVariable(name: "ev", scope: !5510, file: !3, line: 75, type: !3235)
!5514 = !DILocalVariable(name: "flags", scope: !5510, file: !3, line: 76, type: !387)
!5515 = !DILocalVariable(name: "cancel", scope: !5510, file: !3, line: 77, type: !1111)
!5516 = !DILocalVariable(name: "__dummy", scope: !5517, file: !3, line: 88, type: !387)
!5517 = distinct !DILexicalBlock(scope: !5518, file: !3, line: 88, column: 2)
!5518 = distinct !DILexicalBlock(scope: !5519, file: !3, line: 88, column: 2)
!5519 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 88, column: 2)
!5520 = !DILocalVariable(name: "__dummy2", scope: !5517, file: !3, line: 88, type: !387)
!5521 = !DILocation(line: 73, column: 40, scope: !5510)
!5522 = !DILocation(line: 75, column: 2, scope: !5510)
!5523 = !DILocation(line: 75, column: 22, scope: !5510)
!5524 = !DILocation(line: 75, column: 27, scope: !5510)
!5525 = !DILocation(line: 75, column: 33, scope: !5510)
!5526 = !DILocation(line: 76, column: 2, scope: !5510)
!5527 = !DILocation(line: 76, column: 16, scope: !5510)
!5528 = !DILocation(line: 77, column: 2, scope: !5510)
!5529 = !DILocation(line: 77, column: 7, scope: !5510)
!5530 = !DILocation(line: 79, column: 7, scope: !5531)
!5531 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 79, column: 6)
!5532 = !DILocation(line: 79, column: 6, scope: !5510)
!5533 = !DILocation(line: 80, column: 3, scope: !5531)
!5534 = !DILocation(line: 86, column: 14, scope: !5510)
!5535 = !DILocation(line: 86, column: 18, scope: !5510)
!5536 = !DILocation(line: 86, column: 2, scope: !5510)
!5537 = !DILocation(line: 88, column: 2, scope: !5510)
!5538 = !DILocation(line: 88, column: 2, scope: !5519)
!5539 = !DILocation(line: 88, column: 2, scope: !5517)
!5540 = !DILocation(line: 88, column: 2, scope: !5518)
!5541 = !DILocation(line: 89, column: 12, scope: !5510)
!5542 = !DILocation(line: 89, column: 16, scope: !5510)
!5543 = !DILocation(line: 89, column: 21, scope: !5510)
!5544 = !DILocation(line: 89, column: 11, scope: !5510)
!5545 = !DILocation(line: 89, column: 9, scope: !5510)
!5546 = !DILocation(line: 90, column: 26, scope: !5510)
!5547 = !DILocation(line: 90, column: 30, scope: !5510)
!5548 = !DILocation(line: 90, column: 36, scope: !5510)
!5549 = !DILocation(line: 90, column: 2, scope: !5510)
!5550 = !DILocation(line: 92, column: 6, scope: !5551)
!5551 = distinct !DILexicalBlock(scope: !5510, file: !3, line: 92, column: 6)
!5552 = !{i8 0, i8 2}
!5553 = !DILocation(line: 92, column: 6, scope: !5510)
!5554 = !DILocation(line: 93, column: 29, scope: !5551)
!5555 = !DILocation(line: 93, column: 35, scope: !5551)
!5556 = !DILocation(line: 93, column: 39, scope: !5551)
!5557 = !DILocation(line: 93, column: 3, scope: !5551)
!5558 = !DILocation(line: 95, column: 16, scope: !5510)
!5559 = !DILocation(line: 95, column: 20, scope: !5510)
!5560 = !DILocation(line: 95, column: 2, scope: !5510)
!5561 = !DILocation(line: 96, column: 1, scope: !5510)
!5562 = !DISubprogram(name: "mutex_lock", scope: !717, file: !717, line: 227, type: !5563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5563 = !DISubroutineType(types: !5564)
!5564 = !{null, !5565}
!5565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!5566 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !5567, file: !5567, line: 32, type: !5568, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5567 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!5568 = !DISubroutineType(types: !5569)
!5569 = !{!387, !5570}
!5570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!5571 = distinct !DISubprogram(name: "spinlock_check", scope: !5572, file: !5572, line: 324, type: !5573, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5575)
!5572 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5573 = !DISubroutineType(types: !5574)
!5574 = !{!5570, !3055}
!5575 = !{!5576}
!5576 = !DILocalVariable(name: "lock", arg: 1, scope: !5571, file: !5572, line: 324, type: !3055)
!5577 = !DILocation(line: 324, column: 67, scope: !5571)
!5578 = !DILocation(line: 326, column: 10, scope: !5571)
!5579 = !DILocation(line: 326, column: 16, scope: !5571)
!5580 = !DILocation(line: 326, column: 2, scope: !5571)
!5581 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !5572, file: !5572, line: 404, type: !5582, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5584)
!5582 = !DISubroutineType(types: !5583)
!5583 = !{null, !3055, !387}
!5584 = !{!5585, !5586, !5587, !5590}
!5585 = !DILocalVariable(name: "lock", arg: 1, scope: !5581, file: !5572, line: 404, type: !3055)
!5586 = !DILocalVariable(name: "flags", arg: 2, scope: !5581, file: !5572, line: 404, type: !387)
!5587 = !DILocalVariable(name: "__dummy", scope: !5588, file: !5572, line: 406, type: !387)
!5588 = distinct !DILexicalBlock(scope: !5589, file: !5572, line: 406, column: 2)
!5589 = distinct !DILexicalBlock(scope: !5581, file: !5572, line: 406, column: 2)
!5590 = !DILocalVariable(name: "__dummy2", scope: !5588, file: !5572, line: 406, type: !387)
!5591 = !DILocation(line: 404, column: 64, scope: !5581)
!5592 = !DILocation(line: 404, column: 84, scope: !5581)
!5593 = !DILocation(line: 406, column: 2, scope: !5581)
!5594 = !DILocation(line: 406, column: 2, scope: !5588)
!5595 = !DILocation(line: 406, column: 2, scope: !5589)
!5596 = !DILocation(line: 407, column: 1, scope: !5581)
!5597 = !DISubprogram(name: "cancel_delayed_work_sync", scope: !180, file: !180, line: 519, type: !5598, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5598 = !DISubroutineType(types: !5599)
!5599 = !{!1111, !5386}
!5600 = !DISubprogram(name: "mutex_unlock", scope: !717, file: !717, line: 246, type: !5563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5601 = distinct !DISubprogram(name: "disk_unblock_events", scope: !3, file: !3, line: 133, type: !3145, scopeLine: 134, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5602)
!5602 = !{!5603}
!5603 = !DILocalVariable(name: "disk", arg: 1, scope: !5601, file: !3, line: 133, type: !959)
!5604 = !DILocation(line: 133, column: 42, scope: !5601)
!5605 = !DILocation(line: 135, column: 6, scope: !5606)
!5606 = distinct !DILexicalBlock(scope: !5601, file: !3, line: 135, column: 6)
!5607 = !DILocation(line: 135, column: 12, scope: !5606)
!5608 = !DILocation(line: 135, column: 6, scope: !5601)
!5609 = !DILocation(line: 136, column: 25, scope: !5606)
!5610 = !DILocation(line: 136, column: 3, scope: !5606)
!5611 = !DILocation(line: 137, column: 1, scope: !5601)
!5612 = distinct !DISubprogram(name: "__disk_unblock_events", scope: !3, file: !3, line: 98, type: !5613, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5615)
!5613 = !DISubroutineType(types: !5614)
!5614 = !{null, !959, !1111}
!5615 = !{!5616, !5617, !5618, !5619, !5620, !5621, !5625, !5626, !5629, !5632}
!5616 = !DILocalVariable(name: "disk", arg: 1, scope: !5612, file: !3, line: 98, type: !959)
!5617 = !DILocalVariable(name: "check_now", arg: 2, scope: !5612, file: !3, line: 98, type: !1111)
!5618 = !DILocalVariable(name: "ev", scope: !5612, file: !3, line: 100, type: !3235)
!5619 = !DILocalVariable(name: "intv", scope: !5612, file: !3, line: 101, type: !387)
!5620 = !DILocalVariable(name: "flags", scope: !5612, file: !3, line: 102, type: !387)
!5621 = !DILocalVariable(name: "__dummy", scope: !5622, file: !3, line: 104, type: !387)
!5622 = distinct !DILexicalBlock(scope: !5623, file: !3, line: 104, column: 2)
!5623 = distinct !DILexicalBlock(scope: !5624, file: !3, line: 104, column: 2)
!5624 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 104, column: 2)
!5625 = !DILocalVariable(name: "__dummy2", scope: !5622, file: !3, line: 104, type: !387)
!5626 = !DILocalVariable(name: "__ret_warn_on", scope: !5627, file: !3, line: 106, type: !123)
!5627 = distinct !DILexicalBlock(scope: !5628, file: !3, line: 106, column: 6)
!5628 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 106, column: 6)
!5629 = !DILocalVariable(name: "__flags", scope: !5630, file: !3, line: 106, type: !123)
!5630 = distinct !DILexicalBlock(scope: !5631, file: !3, line: 106, column: 6)
!5631 = distinct !DILexicalBlock(scope: !5627, file: !3, line: 106, column: 6)
!5632 = !DILabel(scope: !5612, name: "out_unlock", file: !3, line: 119)
!5633 = !DILocation(line: 98, column: 51, scope: !5612)
!5634 = !DILocation(line: 98, column: 62, scope: !5612)
!5635 = !DILocation(line: 100, column: 2, scope: !5612)
!5636 = !DILocation(line: 100, column: 22, scope: !5612)
!5637 = !DILocation(line: 100, column: 27, scope: !5612)
!5638 = !DILocation(line: 100, column: 33, scope: !5612)
!5639 = !DILocation(line: 101, column: 2, scope: !5612)
!5640 = !DILocation(line: 101, column: 16, scope: !5612)
!5641 = !DILocation(line: 102, column: 2, scope: !5612)
!5642 = !DILocation(line: 102, column: 16, scope: !5612)
!5643 = !DILocation(line: 104, column: 2, scope: !5612)
!5644 = !DILocation(line: 104, column: 2, scope: !5624)
!5645 = !DILocation(line: 104, column: 2, scope: !5622)
!5646 = !DILocation(line: 104, column: 2, scope: !5623)
!5647 = !DILocation(line: 106, column: 6, scope: !5627)
!5648 = !DILocation(line: 106, column: 6, scope: !5631)
!5649 = !DILocation(line: 106, column: 6, scope: !5630)
!5650 = !DILocation(line: 106, column: 6, scope: !5651)
!5651 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 106, column: 6)
!5652 = !DILocation(line: 106, column: 6, scope: !5653)
!5653 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 106, column: 6)
!5654 = !{i64 2156022759, i64 2156022788, i64 2156022834, i64 2156022892, i64 2156022946, i64 2156023000, i64 2156023055, i64 2156023086, i64 2156023394, i64 2156023400, i64 2156023447, i64 2156023470, i64 2156023496}
!5655 = !DILocation(line: 106, column: 6, scope: !5656)
!5656 = distinct !DILexicalBlock(scope: !5630, file: !3, line: 106, column: 6)
!5657 = !DILocation(line: 106, column: 6, scope: !5628)
!5658 = !DILocation(line: 106, column: 6, scope: !5612)
!5659 = !DILocation(line: 107, column: 3, scope: !5628)
!5660 = !DILocation(line: 109, column: 8, scope: !5661)
!5661 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 109, column: 6)
!5662 = !DILocation(line: 109, column: 12, scope: !5661)
!5663 = !DILocation(line: 109, column: 6, scope: !5661)
!5664 = !DILocation(line: 109, column: 6, scope: !5612)
!5665 = !DILocation(line: 110, column: 3, scope: !5661)
!5666 = !DILocation(line: 112, column: 34, scope: !5612)
!5667 = !DILocation(line: 112, column: 9, scope: !5612)
!5668 = !DILocation(line: 112, column: 7, scope: !5612)
!5669 = !DILocation(line: 113, column: 6, scope: !5670)
!5670 = distinct !DILexicalBlock(scope: !5612, file: !3, line: 113, column: 6)
!5671 = !DILocation(line: 113, column: 6, scope: !5612)
!5672 = !DILocation(line: 114, column: 22, scope: !5670)
!5673 = !DILocation(line: 115, column: 6, scope: !5670)
!5674 = !DILocation(line: 115, column: 10, scope: !5670)
!5675 = !DILocation(line: 114, column: 3, scope: !5670)
!5676 = !DILocation(line: 116, column: 11, scope: !5677)
!5677 = distinct !DILexicalBlock(scope: !5670, file: !3, line: 116, column: 11)
!5678 = !DILocation(line: 116, column: 11, scope: !5670)
!5679 = !DILocation(line: 117, column: 22, scope: !5677)
!5680 = !DILocation(line: 118, column: 6, scope: !5677)
!5681 = !DILocation(line: 118, column: 10, scope: !5677)
!5682 = !DILocation(line: 118, column: 17, scope: !5677)
!5683 = !DILocation(line: 117, column: 3, scope: !5677)
!5684 = !DILocation(line: 119, column: 1, scope: !5612)
!5685 = !DILocation(line: 120, column: 26, scope: !5612)
!5686 = !DILocation(line: 120, column: 30, scope: !5612)
!5687 = !DILocation(line: 120, column: 36, scope: !5612)
!5688 = !DILocation(line: 120, column: 2, scope: !5612)
!5689 = !DILocation(line: 121, column: 1, scope: !5612)
!5690 = distinct !DISubprogram(name: "disk_flush_events", scope: !3, file: !3, line: 151, type: !5691, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5693)
!5691 = !DISubroutineType(types: !5692)
!5692 = !{null, !959, !7}
!5693 = !{!5694, !5695, !5696}
!5694 = !DILocalVariable(name: "disk", arg: 1, scope: !5690, file: !3, line: 151, type: !959)
!5695 = !DILocalVariable(name: "mask", arg: 2, scope: !5690, file: !3, line: 151, type: !7)
!5696 = !DILocalVariable(name: "ev", scope: !5690, file: !3, line: 153, type: !3235)
!5697 = !DILocation(line: 151, column: 40, scope: !5690)
!5698 = !DILocation(line: 151, column: 59, scope: !5690)
!5699 = !DILocation(line: 153, column: 2, scope: !5690)
!5700 = !DILocation(line: 153, column: 22, scope: !5690)
!5701 = !DILocation(line: 153, column: 27, scope: !5690)
!5702 = !DILocation(line: 153, column: 33, scope: !5690)
!5703 = !DILocation(line: 155, column: 7, scope: !5704)
!5704 = distinct !DILexicalBlock(scope: !5690, file: !3, line: 155, column: 6)
!5705 = !DILocation(line: 155, column: 6, scope: !5690)
!5706 = !DILocation(line: 156, column: 3, scope: !5704)
!5707 = !DILocation(line: 158, column: 17, scope: !5690)
!5708 = !DILocation(line: 158, column: 21, scope: !5690)
!5709 = !DILocation(line: 158, column: 2, scope: !5690)
!5710 = !DILocation(line: 159, column: 18, scope: !5690)
!5711 = !DILocation(line: 159, column: 2, scope: !5690)
!5712 = !DILocation(line: 159, column: 6, scope: !5690)
!5713 = !DILocation(line: 159, column: 15, scope: !5690)
!5714 = !DILocation(line: 160, column: 7, scope: !5715)
!5715 = distinct !DILexicalBlock(scope: !5690, file: !3, line: 160, column: 6)
!5716 = !DILocation(line: 160, column: 11, scope: !5715)
!5717 = !DILocation(line: 160, column: 6, scope: !5690)
!5718 = !DILocation(line: 161, column: 20, scope: !5715)
!5719 = !DILocation(line: 162, column: 6, scope: !5715)
!5720 = !DILocation(line: 162, column: 10, scope: !5715)
!5721 = !DILocation(line: 161, column: 3, scope: !5715)
!5722 = !DILocation(line: 163, column: 19, scope: !5690)
!5723 = !DILocation(line: 163, column: 23, scope: !5690)
!5724 = !DILocation(line: 163, column: 2, scope: !5690)
!5725 = !DILocation(line: 164, column: 1, scope: !5690)
!5726 = distinct !DISubprogram(name: "spin_lock_irq", scope: !5572, file: !5572, line: 374, type: !5727, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5729)
!5727 = !DISubroutineType(types: !5728)
!5728 = !{null, !3055}
!5729 = !{!5730}
!5730 = !DILocalVariable(name: "lock", arg: 1, scope: !5726, file: !5572, line: 374, type: !3055)
!5731 = !DILocation(line: 374, column: 55, scope: !5726)
!5732 = !DILocation(line: 376, column: 2, scope: !5726)
!5733 = !DILocation(line: 377, column: 1, scope: !5726)
!5734 = distinct !DISubprogram(name: "mod_delayed_work", scope: !180, file: !180, line: 588, type: !5735, scopeLine: 591, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5737)
!5735 = !DISubroutineType(types: !5736)
!5736 = !{!1111, !1664, !5386, !387}
!5737 = !{!5738, !5739, !5740}
!5738 = !DILocalVariable(name: "wq", arg: 1, scope: !5734, file: !180, line: 588, type: !1664)
!5739 = !DILocalVariable(name: "dwork", arg: 2, scope: !5734, file: !180, line: 589, type: !5386)
!5740 = !DILocalVariable(name: "delay", arg: 3, scope: !5734, file: !180, line: 590, type: !387)
!5741 = !DILocation(line: 588, column: 62, scope: !5734)
!5742 = !DILocation(line: 589, column: 30, scope: !5734)
!5743 = !DILocation(line: 590, column: 23, scope: !5734)
!5744 = !DILocation(line: 592, column: 47, scope: !5734)
!5745 = !DILocation(line: 592, column: 51, scope: !5734)
!5746 = !DILocation(line: 592, column: 58, scope: !5734)
!5747 = !DILocation(line: 592, column: 9, scope: !5734)
!5748 = !DILocation(line: 592, column: 2, scope: !5734)
!5749 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !5572, file: !5572, line: 399, type: !5727, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5750)
!5750 = !{!5751}
!5751 = !DILocalVariable(name: "lock", arg: 1, scope: !5749, file: !5572, line: 399, type: !3055)
!5752 = !DILocation(line: 399, column: 57, scope: !5749)
!5753 = !DILocation(line: 401, column: 2, scope: !5749)
!5754 = !DILocation(line: 402, column: 1, scope: !5749)
!5755 = distinct !DISubprogram(name: "disk_check_media_change", scope: !3, file: !3, line: 275, type: !5756, scopeLine: 276, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5758)
!5756 = !DISubroutineType(types: !5757)
!5757 = !{!1111, !959}
!5758 = !{!5759, !5760}
!5759 = !DILocalVariable(name: "disk", arg: 1, scope: !5755, file: !3, line: 275, type: !959)
!5760 = !DILocalVariable(name: "events", scope: !5755, file: !3, line: 277, type: !7)
!5761 = !DILocation(line: 275, column: 46, scope: !5755)
!5762 = !DILocation(line: 277, column: 2, scope: !5755)
!5763 = !DILocation(line: 277, column: 15, scope: !5755)
!5764 = !DILocation(line: 279, column: 29, scope: !5755)
!5765 = !DILocation(line: 279, column: 11, scope: !5755)
!5766 = !DILocation(line: 279, column: 9, scope: !5755)
!5767 = !DILocation(line: 281, column: 8, scope: !5768)
!5768 = distinct !DILexicalBlock(scope: !5755, file: !3, line: 281, column: 6)
!5769 = !DILocation(line: 281, column: 15, scope: !5768)
!5770 = !DILocation(line: 281, column: 6, scope: !5755)
!5771 = !DILocation(line: 282, column: 3, scope: !5768)
!5772 = !DILocation(line: 284, column: 17, scope: !5755)
!5773 = !DILocation(line: 284, column: 23, scope: !5755)
!5774 = !DILocation(line: 284, column: 2, scope: !5755)
!5775 = !DILocation(line: 285, column: 30, scope: !5755)
!5776 = !DILocation(line: 285, column: 36, scope: !5755)
!5777 = !DILocation(line: 285, column: 2, scope: !5755)
!5778 = !DILocation(line: 286, column: 2, scope: !5755)
!5779 = !DILocation(line: 287, column: 1, scope: !5755)
!5780 = distinct !DISubprogram(name: "disk_clear_events", scope: !3, file: !3, line: 227, type: !3154, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5781)
!5781 = !{!5782, !5783, !5784, !5785, !5786, !5787, !5789}
!5782 = !DILocalVariable(name: "disk", arg: 1, scope: !5780, file: !3, line: 227, type: !959)
!5783 = !DILocalVariable(name: "mask", arg: 2, scope: !5780, file: !3, line: 227, type: !7)
!5784 = !DILocalVariable(name: "ev", scope: !5780, file: !3, line: 229, type: !3235)
!5785 = !DILocalVariable(name: "pending", scope: !5780, file: !3, line: 230, type: !7)
!5786 = !DILocalVariable(name: "clearing", scope: !5780, file: !3, line: 231, type: !7)
!5787 = !DILocalVariable(name: "__ret_warn_on", scope: !5788, file: !3, line: 260, type: !123)
!5788 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 260, column: 2)
!5789 = !DILocalVariable(name: "__flags", scope: !5790, file: !3, line: 260, type: !123)
!5790 = distinct !DILexicalBlock(scope: !5791, file: !3, line: 260, column: 2)
!5791 = distinct !DILexicalBlock(scope: !5788, file: !3, line: 260, column: 2)
!5792 = !DILocation(line: 227, column: 55, scope: !5780)
!5793 = !DILocation(line: 227, column: 74, scope: !5780)
!5794 = !DILocation(line: 229, column: 2, scope: !5780)
!5795 = !DILocation(line: 229, column: 22, scope: !5780)
!5796 = !DILocation(line: 229, column: 27, scope: !5780)
!5797 = !DILocation(line: 229, column: 33, scope: !5780)
!5798 = !DILocation(line: 230, column: 2, scope: !5780)
!5799 = !DILocation(line: 230, column: 15, scope: !5780)
!5800 = !DILocation(line: 231, column: 2, scope: !5780)
!5801 = !DILocation(line: 231, column: 15, scope: !5780)
!5802 = !DILocation(line: 231, column: 26, scope: !5780)
!5803 = !DILocation(line: 233, column: 7, scope: !5804)
!5804 = distinct !DILexicalBlock(scope: !5780, file: !3, line: 233, column: 6)
!5805 = !DILocation(line: 233, column: 6, scope: !5780)
!5806 = !DILocation(line: 234, column: 3, scope: !5804)
!5807 = !DILocation(line: 236, column: 20, scope: !5780)
!5808 = !DILocation(line: 236, column: 2, scope: !5780)
!5809 = !DILocation(line: 243, column: 17, scope: !5780)
!5810 = !DILocation(line: 243, column: 21, scope: !5780)
!5811 = !DILocation(line: 243, column: 2, scope: !5780)
!5812 = !DILocation(line: 244, column: 14, scope: !5780)
!5813 = !DILocation(line: 244, column: 18, scope: !5780)
!5814 = !DILocation(line: 244, column: 11, scope: !5780)
!5815 = !DILocation(line: 245, column: 2, scope: !5780)
!5816 = !DILocation(line: 245, column: 6, scope: !5780)
!5817 = !DILocation(line: 245, column: 15, scope: !5780)
!5818 = !DILocation(line: 246, column: 19, scope: !5780)
!5819 = !DILocation(line: 246, column: 23, scope: !5780)
!5820 = !DILocation(line: 246, column: 2, scope: !5780)
!5821 = !DILocation(line: 248, column: 20, scope: !5780)
!5822 = !DILocation(line: 248, column: 2, scope: !5780)
!5823 = !DILocation(line: 253, column: 24, scope: !5780)
!5824 = !DILocation(line: 253, column: 30, scope: !5780)
!5825 = !DILocation(line: 253, column: 34, scope: !5780)
!5826 = !DILocation(line: 253, column: 2, scope: !5780)
!5827 = !DILocation(line: 256, column: 17, scope: !5780)
!5828 = !DILocation(line: 256, column: 21, scope: !5780)
!5829 = !DILocation(line: 256, column: 2, scope: !5780)
!5830 = !DILocation(line: 257, column: 12, scope: !5780)
!5831 = !DILocation(line: 257, column: 16, scope: !5780)
!5832 = !DILocation(line: 257, column: 26, scope: !5780)
!5833 = !DILocation(line: 257, column: 24, scope: !5780)
!5834 = !DILocation(line: 257, column: 10, scope: !5780)
!5835 = !DILocation(line: 258, column: 18, scope: !5780)
!5836 = !DILocation(line: 258, column: 17, scope: !5780)
!5837 = !DILocation(line: 258, column: 2, scope: !5780)
!5838 = !DILocation(line: 258, column: 6, scope: !5780)
!5839 = !DILocation(line: 258, column: 14, scope: !5780)
!5840 = !DILocation(line: 259, column: 19, scope: !5780)
!5841 = !DILocation(line: 259, column: 23, scope: !5780)
!5842 = !DILocation(line: 259, column: 2, scope: !5780)
!5843 = !DILocation(line: 260, column: 2, scope: !5788)
!5844 = !DILocation(line: 260, column: 2, scope: !5791)
!5845 = !DILocation(line: 260, column: 2, scope: !5790)
!5846 = !DILocation(line: 260, column: 2, scope: !5847)
!5847 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 260, column: 2)
!5848 = !DILocation(line: 260, column: 2, scope: !5849)
!5849 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 260, column: 2)
!5850 = !{i64 2156025092, i64 2156025121, i64 2156025167, i64 2156025225, i64 2156025279, i64 2156025333, i64 2156025388, i64 2156025419, i64 2156025727, i64 2156025733, i64 2156025780, i64 2156025803, i64 2156025829}
!5851 = !DILocation(line: 260, column: 2, scope: !5852)
!5852 = distinct !DILexicalBlock(scope: !5790, file: !3, line: 260, column: 2)
!5853 = !DILocation(line: 260, column: 2, scope: !5780)
!5854 = !DILocation(line: 262, column: 9, scope: !5780)
!5855 = !DILocation(line: 262, column: 2, scope: !5780)
!5856 = !DILocation(line: 263, column: 1, scope: !5780)
!5857 = !DISubprogram(name: "bdev_mark_dead", scope: !156, file: !156, line: 768, type: !3293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5858 = distinct !DISubprogram(name: "set_bit", scope: !5859, file: !5859, line: 26, type: !5860, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5864)
!5859 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!5860 = !DISubroutineType(types: !5861)
!5861 = !{null, !373, !5862}
!5862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5863, size: 64)
!5863 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !387)
!5864 = !{!5865, !5866}
!5865 = !DILocalVariable(name: "nr", arg: 1, scope: !5858, file: !5859, line: 26, type: !373)
!5866 = !DILocalVariable(name: "addr", arg: 2, scope: !5858, file: !5859, line: 26, type: !5862)
!5867 = !DILocation(line: 26, column: 42, scope: !5858)
!5868 = !DILocation(line: 26, column: 70, scope: !5858)
!5869 = !DILocation(line: 28, column: 26, scope: !5858)
!5870 = !DILocation(line: 28, column: 33, scope: !5858)
!5871 = !DILocation(line: 28, column: 31, scope: !5858)
!5872 = !DILocation(line: 28, column: 2, scope: !5858)
!5873 = !DILocation(line: 29, column: 15, scope: !5858)
!5874 = !DILocation(line: 29, column: 19, scope: !5858)
!5875 = !DILocation(line: 29, column: 2, scope: !5858)
!5876 = !DILocation(line: 30, column: 1, scope: !5858)
!5877 = distinct !DISubprogram(name: "disk_force_media_change", scope: !3, file: !3, line: 298, type: !3145, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5878)
!5878 = !{!5879}
!5879 = !DILocalVariable(name: "disk", arg: 1, scope: !5877, file: !3, line: 298, type: !959)
!5880 = !DILocation(line: 298, column: 46, scope: !5877)
!5881 = !DILocation(line: 300, column: 20, scope: !5877)
!5882 = !DILocation(line: 300, column: 2, scope: !5877)
!5883 = !DILocation(line: 301, column: 14, scope: !5877)
!5884 = !DILocation(line: 301, column: 2, scope: !5877)
!5885 = !DILocation(line: 302, column: 17, scope: !5877)
!5886 = !DILocation(line: 302, column: 23, scope: !5877)
!5887 = !DILocation(line: 302, column: 2, scope: !5877)
!5888 = !DILocation(line: 303, column: 30, scope: !5877)
!5889 = !DILocation(line: 303, column: 36, scope: !5877)
!5890 = !DILocation(line: 303, column: 2, scope: !5877)
!5891 = !DILocation(line: 304, column: 1, scope: !5877)
!5892 = distinct !DISubprogram(name: "disk_event_uevent", scope: !3, file: !3, line: 171, type: !5691, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5893)
!5893 = !{!5894, !5895, !5896, !5897, !5898}
!5894 = !DILocalVariable(name: "disk", arg: 1, scope: !5892, file: !3, line: 171, type: !959)
!5895 = !DILocalVariable(name: "events", arg: 2, scope: !5892, file: !3, line: 171, type: !7)
!5896 = !DILocalVariable(name: "envp", scope: !5892, file: !3, line: 173, type: !336)
!5897 = !DILocalVariable(name: "nr_events", scope: !5892, file: !3, line: 174, type: !123)
!5898 = !DILocalVariable(name: "i", scope: !5892, file: !3, line: 174, type: !123)
!5899 = !DILocation(line: 171, column: 47, scope: !5892)
!5900 = !DILocation(line: 171, column: 66, scope: !5892)
!5901 = !DILocation(line: 173, column: 2, scope: !5892)
!5902 = !DILocation(line: 173, column: 8, scope: !5892)
!5903 = !DILocation(line: 174, column: 2, scope: !5892)
!5904 = !DILocation(line: 174, column: 6, scope: !5892)
!5905 = !DILocation(line: 174, column: 21, scope: !5892)
!5906 = !DILocation(line: 176, column: 9, scope: !5907)
!5907 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 176, column: 2)
!5908 = !DILocation(line: 176, column: 7, scope: !5907)
!5909 = !DILocation(line: 176, column: 14, scope: !5910)
!5910 = distinct !DILexicalBlock(scope: !5907, file: !3, line: 176, column: 2)
!5911 = !DILocation(line: 176, column: 16, scope: !5910)
!5912 = !DILocation(line: 176, column: 2, scope: !5907)
!5913 = !DILocation(line: 177, column: 7, scope: !5914)
!5914 = distinct !DILexicalBlock(scope: !5910, file: !3, line: 177, column: 7)
!5915 = !DILocation(line: 177, column: 16, scope: !5914)
!5916 = !DILocation(line: 177, column: 22, scope: !5914)
!5917 = !DILocation(line: 177, column: 14, scope: !5914)
!5918 = !DILocation(line: 177, column: 37, scope: !5914)
!5919 = !DILocation(line: 177, column: 34, scope: !5914)
!5920 = !DILocation(line: 177, column: 29, scope: !5914)
!5921 = !DILocation(line: 177, column: 7, scope: !5910)
!5922 = !DILocation(line: 178, column: 37, scope: !5914)
!5923 = !DILocation(line: 178, column: 24, scope: !5914)
!5924 = !DILocation(line: 178, column: 18, scope: !5914)
!5925 = !DILocation(line: 178, column: 4, scope: !5914)
!5926 = !DILocation(line: 178, column: 22, scope: !5914)
!5927 = !DILocation(line: 177, column: 38, scope: !5914)
!5928 = !DILocation(line: 176, column: 45, scope: !5910)
!5929 = !DILocation(line: 176, column: 2, scope: !5910)
!5930 = distinct !{!5930, !5912, !5931, !5932, !5933}
!5931 = !DILocation(line: 178, column: 38, scope: !5907)
!5932 = !{!"llvm.loop.mustprogress"}
!5933 = !{!"llvm.loop.unroll.disable"}
!5934 = !DILocation(line: 180, column: 6, scope: !5935)
!5935 = distinct !DILexicalBlock(scope: !5892, file: !3, line: 180, column: 6)
!5936 = !DILocation(line: 180, column: 6, scope: !5892)
!5937 = !DILocation(line: 181, column: 23, scope: !5935)
!5938 = !DILocation(line: 181, column: 42, scope: !5935)
!5939 = !DILocation(line: 181, column: 61, scope: !5935)
!5940 = !DILocation(line: 181, column: 3, scope: !5935)
!5941 = !DILocation(line: 182, column: 1, scope: !5892)
!5942 = !DISubprogram(name: "inc_diskseq", scope: !156, file: !156, line: 845, type: !3145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5943 = distinct !DISubprogram(name: "disk_events_show", scope: !3, file: !3, line: 345, type: !5400, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5944)
!5944 = !{!5945, !5946, !5947, !5948, !5949}
!5945 = !DILocalVariable(name: "dev", arg: 1, scope: !5943, file: !3, line: 345, type: !1966)
!5946 = !DILocalVariable(name: "attr", arg: 2, scope: !5943, file: !3, line: 346, type: !5402)
!5947 = !DILocalVariable(name: "buf", arg: 3, scope: !5943, file: !3, line: 346, type: !337)
!5948 = !DILocalVariable(name: "disk", scope: !5943, file: !3, line: 348, type: !959)
!5949 = !DILocalVariable(name: "__mptr", scope: !5950, file: !3, line: 348, type: !232)
!5950 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 348, column: 25)
!5951 = !DILocation(line: 345, column: 48, scope: !5943)
!5952 = !DILocation(line: 346, column: 30, scope: !5943)
!5953 = !DILocation(line: 346, column: 42, scope: !5943)
!5954 = !DILocation(line: 348, column: 2, scope: !5943)
!5955 = !DILocation(line: 348, column: 18, scope: !5943)
!5956 = !DILocation(line: 348, column: 25, scope: !5950)
!5957 = !DILocation(line: 348, column: 25, scope: !5943)
!5958 = !DILocation(line: 350, column: 8, scope: !5959)
!5959 = distinct !DILexicalBlock(scope: !5943, file: !3, line: 350, column: 6)
!5960 = !DILocation(line: 350, column: 14, scope: !5959)
!5961 = !DILocation(line: 350, column: 26, scope: !5959)
!5962 = !DILocation(line: 350, column: 6, scope: !5943)
!5963 = !DILocation(line: 351, column: 3, scope: !5959)
!5964 = !DILocation(line: 352, column: 28, scope: !5943)
!5965 = !DILocation(line: 352, column: 34, scope: !5943)
!5966 = !DILocation(line: 352, column: 42, scope: !5943)
!5967 = !DILocation(line: 352, column: 9, scope: !5943)
!5968 = !DILocation(line: 352, column: 2, scope: !5943)
!5969 = !DILocation(line: 353, column: 1, scope: !5943)
!5970 = distinct !DISubprogram(name: "disk_events_async_show", scope: !3, file: !3, line: 355, type: !5400, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5971)
!5971 = !{!5972, !5973, !5974}
!5972 = !DILocalVariable(name: "dev", arg: 1, scope: !5970, file: !3, line: 355, type: !1966)
!5973 = !DILocalVariable(name: "attr", arg: 2, scope: !5970, file: !3, line: 356, type: !5402)
!5974 = !DILocalVariable(name: "buf", arg: 3, scope: !5970, file: !3, line: 356, type: !337)
!5975 = !DILocation(line: 355, column: 54, scope: !5970)
!5976 = !DILocation(line: 356, column: 36, scope: !5970)
!5977 = !DILocation(line: 356, column: 48, scope: !5970)
!5978 = !DILocation(line: 358, column: 2, scope: !5970)
!5979 = distinct !DISubprogram(name: "disk_events_poll_msecs_show", scope: !3, file: !3, line: 361, type: !5400, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5980)
!5980 = !{!5981, !5982, !5983, !5984, !5985}
!5981 = !DILocalVariable(name: "dev", arg: 1, scope: !5979, file: !3, line: 361, type: !1966)
!5982 = !DILocalVariable(name: "attr", arg: 2, scope: !5979, file: !3, line: 362, type: !5402)
!5983 = !DILocalVariable(name: "buf", arg: 3, scope: !5979, file: !3, line: 363, type: !337)
!5984 = !DILocalVariable(name: "disk", scope: !5979, file: !3, line: 365, type: !959)
!5985 = !DILocalVariable(name: "__mptr", scope: !5986, file: !3, line: 365, type: !232)
!5986 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 365, column: 25)
!5987 = !DILocation(line: 361, column: 59, scope: !5979)
!5988 = !DILocation(line: 362, column: 34, scope: !5979)
!5989 = !DILocation(line: 363, column: 15, scope: !5979)
!5990 = !DILocation(line: 365, column: 2, scope: !5979)
!5991 = !DILocation(line: 365, column: 18, scope: !5979)
!5992 = !DILocation(line: 365, column: 25, scope: !5986)
!5993 = !DILocation(line: 365, column: 25, scope: !5979)
!5994 = !DILocation(line: 367, column: 7, scope: !5995)
!5995 = distinct !DILexicalBlock(scope: !5979, file: !3, line: 367, column: 6)
!5996 = !DILocation(line: 367, column: 13, scope: !5995)
!5997 = !DILocation(line: 367, column: 6, scope: !5979)
!5998 = !DILocation(line: 368, column: 18, scope: !5995)
!5999 = !DILocation(line: 368, column: 10, scope: !5995)
!6000 = !DILocation(line: 368, column: 3, scope: !5995)
!6001 = !DILocation(line: 369, column: 17, scope: !5979)
!6002 = !DILocation(line: 369, column: 31, scope: !5979)
!6003 = !DILocation(line: 369, column: 37, scope: !5979)
!6004 = !DILocation(line: 369, column: 41, scope: !5979)
!6005 = !DILocation(line: 369, column: 9, scope: !5979)
!6006 = !DILocation(line: 369, column: 2, scope: !5979)
!6007 = !DILocation(line: 370, column: 1, scope: !5979)
!6008 = distinct !DISubprogram(name: "disk_events_poll_msecs_store", scope: !3, file: !3, line: 372, type: !5405, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6009)
!6009 = !{!6010, !6011, !6012, !6013, !6014, !6015, !6017}
!6010 = !DILocalVariable(name: "dev", arg: 1, scope: !6008, file: !3, line: 372, type: !1966)
!6011 = !DILocalVariable(name: "attr", arg: 2, scope: !6008, file: !3, line: 373, type: !5402)
!6012 = !DILocalVariable(name: "buf", arg: 3, scope: !6008, file: !3, line: 374, type: !256)
!6013 = !DILocalVariable(name: "count", arg: 4, scope: !6008, file: !3, line: 374, type: !384)
!6014 = !DILocalVariable(name: "disk", scope: !6008, file: !3, line: 376, type: !959)
!6015 = !DILocalVariable(name: "__mptr", scope: !6016, file: !3, line: 376, type: !232)
!6016 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 376, column: 25)
!6017 = !DILocalVariable(name: "intv", scope: !6008, file: !3, line: 377, type: !373)
!6018 = !DILocation(line: 372, column: 60, scope: !6008)
!6019 = !DILocation(line: 373, column: 35, scope: !6008)
!6020 = !DILocation(line: 374, column: 22, scope: !6008)
!6021 = !DILocation(line: 374, column: 34, scope: !6008)
!6022 = !DILocation(line: 376, column: 2, scope: !6008)
!6023 = !DILocation(line: 376, column: 18, scope: !6008)
!6024 = !DILocation(line: 376, column: 25, scope: !6016)
!6025 = !DILocation(line: 376, column: 25, scope: !6008)
!6026 = !DILocation(line: 377, column: 2, scope: !6008)
!6027 = !DILocation(line: 377, column: 7, scope: !6008)
!6028 = !DILocation(line: 379, column: 7, scope: !6029)
!6029 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 379, column: 6)
!6030 = !DILocation(line: 379, column: 13, scope: !6029)
!6031 = !DILocation(line: 379, column: 24, scope: !6029)
!6032 = !DILocation(line: 379, column: 17, scope: !6029)
!6033 = !DILocation(line: 379, column: 6, scope: !6008)
!6034 = !DILocation(line: 380, column: 3, scope: !6029)
!6035 = !DILocation(line: 382, column: 6, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 382, column: 6)
!6037 = !DILocation(line: 382, column: 11, scope: !6036)
!6038 = !DILocation(line: 382, column: 15, scope: !6036)
!6039 = !DILocation(line: 382, column: 18, scope: !6036)
!6040 = !DILocation(line: 382, column: 23, scope: !6036)
!6041 = !DILocation(line: 382, column: 6, scope: !6008)
!6042 = !DILocation(line: 383, column: 3, scope: !6036)
!6043 = !DILocation(line: 385, column: 7, scope: !6044)
!6044 = distinct !DILexicalBlock(scope: !6008, file: !3, line: 385, column: 6)
!6045 = !DILocation(line: 385, column: 13, scope: !6044)
!6046 = !DILocation(line: 385, column: 6, scope: !6008)
!6047 = !DILocation(line: 386, column: 3, scope: !6044)
!6048 = !DILocation(line: 388, column: 20, scope: !6008)
!6049 = !DILocation(line: 388, column: 2, scope: !6008)
!6050 = !DILocation(line: 389, column: 25, scope: !6008)
!6051 = !DILocation(line: 389, column: 2, scope: !6008)
!6052 = !DILocation(line: 389, column: 8, scope: !6008)
!6053 = !DILocation(line: 389, column: 12, scope: !6008)
!6054 = !DILocation(line: 389, column: 23, scope: !6008)
!6055 = !DILocation(line: 390, column: 24, scope: !6008)
!6056 = !DILocation(line: 390, column: 2, scope: !6008)
!6057 = !DILocation(line: 391, column: 9, scope: !6008)
!6058 = !DILocation(line: 391, column: 2, scope: !6008)
!6059 = !DILocation(line: 392, column: 1, scope: !6008)
!6060 = !DILocation(line: 436, column: 39, scope: !5430)
!6061 = !DILocation(line: 438, column: 2, scope: !5430)
!6062 = !DILocation(line: 438, column: 22, scope: !5430)
!6063 = !DILocation(line: 440, column: 7, scope: !6064)
!6064 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 440, column: 6)
!6065 = !DILocation(line: 440, column: 13, scope: !6064)
!6066 = !DILocation(line: 440, column: 19, scope: !6064)
!6067 = !DILocation(line: 440, column: 32, scope: !6064)
!6068 = !DILocation(line: 440, column: 36, scope: !6064)
!6069 = !DILocation(line: 440, column: 42, scope: !6064)
!6070 = !DILocation(line: 440, column: 6, scope: !5430)
!6071 = !DILocation(line: 441, column: 3, scope: !6064)
!6072 = !DILocation(line: 443, column: 7, scope: !5430)
!6073 = !DILocation(line: 443, column: 5, scope: !5430)
!6074 = !DILocation(line: 444, column: 7, scope: !6075)
!6075 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 444, column: 6)
!6076 = !DILocation(line: 444, column: 6, scope: !5430)
!6077 = !DILocation(line: 445, column: 3, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6079, file: !3, line: 445, column: 3)
!6079 = distinct !DILexicalBlock(scope: !6075, file: !3, line: 444, column: 11)
!6080 = !DILocation(line: 445, column: 3, scope: !6081)
!6081 = distinct !DILexicalBlock(scope: !6078, file: !3, line: 445, column: 3)
!6082 = !DILocation(line: 446, column: 3, scope: !6079)
!6083 = !DILocation(line: 449, column: 18, scope: !5430)
!6084 = !DILocation(line: 449, column: 22, scope: !5430)
!6085 = !DILocation(line: 449, column: 2, scope: !5430)
!6086 = !DILocation(line: 450, column: 13, scope: !5430)
!6087 = !DILocation(line: 450, column: 2, scope: !5430)
!6088 = !DILocation(line: 450, column: 6, scope: !5430)
!6089 = !DILocation(line: 450, column: 11, scope: !5430)
!6090 = !DILocation(line: 451, column: 2, scope: !5430)
!6091 = !DILocation(line: 451, column: 2, scope: !6092)
!6092 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 451, column: 2)
!6093 = !DILocation(line: 452, column: 2, scope: !5430)
!6094 = !DILocation(line: 452, column: 2, scope: !6095)
!6095 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 452, column: 2)
!6096 = !DILocation(line: 453, column: 2, scope: !5430)
!6097 = !DILocation(line: 453, column: 6, scope: !5430)
!6098 = !DILocation(line: 453, column: 12, scope: !5430)
!6099 = !DILocation(line: 454, column: 2, scope: !5430)
!6100 = !DILocation(line: 454, column: 6, scope: !5430)
!6101 = !DILocation(line: 454, column: 17, scope: !5430)
!6102 = !DILocation(line: 455, column: 2, scope: !5430)
!6103 = !DILocation(line: 455, column: 2, scope: !6104)
!6104 = distinct !DILexicalBlock(scope: !5430, file: !3, line: 455, column: 2)
!6105 = !DILocation(line: 455, column: 2, scope: !6106)
!6106 = distinct !DILexicalBlock(scope: !6104, file: !3, line: 455, column: 2)
!6107 = !DILocation(line: 455, column: 2, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6106, file: !3, line: 455, column: 2)
!6109 = !DILocation(line: 457, column: 13, scope: !5430)
!6110 = !DILocation(line: 457, column: 2, scope: !5430)
!6111 = !DILocation(line: 457, column: 8, scope: !5430)
!6112 = !DILocation(line: 457, column: 11, scope: !5430)
!6113 = !DILocation(line: 458, column: 2, scope: !5430)
!6114 = !DILocation(line: 459, column: 1, scope: !5430)
!6115 = distinct !DISubprogram(name: "kzalloc", scope: !222, file: !222, line: 719, type: !6116, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6118)
!6116 = !DISubroutineType(types: !6117)
!6117 = !{!232, !384, !781}
!6118 = !{!6119, !6120}
!6119 = !DILocalVariable(name: "size", arg: 1, scope: !6115, file: !222, line: 719, type: !384)
!6120 = !DILocalVariable(name: "flags", arg: 2, scope: !6115, file: !222, line: 719, type: !781)
!6121 = !DILocation(line: 719, column: 52, scope: !6115)
!6122 = !DILocation(line: 719, column: 64, scope: !6115)
!6123 = !DILocation(line: 721, column: 17, scope: !6115)
!6124 = !DILocation(line: 721, column: 23, scope: !6115)
!6125 = !DILocation(line: 721, column: 29, scope: !6115)
!6126 = !DILocation(line: 721, column: 9, scope: !6115)
!6127 = !DILocation(line: 721, column: 2, scope: !6115)
!6128 = !DISubprogram(name: "_printk", scope: !6129, file: !6129, line: 153, type: !6130, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6129 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!6130 = !DISubroutineType(types: !6131)
!6131 = !{!123, !256, null}
!6132 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !6133, file: !6133, line: 35, type: !6134, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6136)
!6133 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!6134 = !DISubroutineType(types: !6135)
!6135 = !{null, !242}
!6136 = !{!6137}
!6137 = !DILocalVariable(name: "list", arg: 1, scope: !6132, file: !6133, line: 35, type: !242)
!6138 = !DILocation(line: 35, column: 53, scope: !6132)
!6139 = !DILocation(line: 37, column: 2, scope: !6132)
!6140 = !DILocation(line: 37, column: 2, scope: !6141)
!6141 = distinct !DILexicalBlock(scope: !6132, file: !6133, line: 37, column: 2)
!6142 = !DILocation(line: 37, column: 2, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6141, file: !6133, line: 37, column: 2)
!6144 = !DILocation(line: 37, column: 2, scope: !6145)
!6145 = distinct !DILexicalBlock(scope: !6141, file: !6133, line: 37, column: 2)
!6146 = !DILocation(line: 38, column: 2, scope: !6132)
!6147 = !DILocation(line: 38, column: 2, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6132, file: !6133, line: 38, column: 2)
!6149 = !DILocation(line: 38, column: 2, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6148, file: !6133, line: 38, column: 2)
!6151 = !DILocation(line: 38, column: 2, scope: !6152)
!6152 = distinct !DILexicalBlock(scope: !6148, file: !6133, line: 38, column: 2)
!6153 = !DILocation(line: 39, column: 1, scope: !6132)
!6154 = !DISubprogram(name: "__mutex_init", scope: !717, file: !717, line: 121, type: !6155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6155 = !DISubroutineType(types: !6156)
!6156 = !{null, !5565, !256, !6157}
!6157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!6158 = distinct !DISubprogram(name: "__init_work", scope: !180, file: !180, line: 263, type: !6159, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6161)
!6159 = !DISubroutineType(types: !6160)
!6160 = !{null, !1650, !123}
!6161 = !{!6162, !6163}
!6162 = !DILocalVariable(name: "work", arg: 1, scope: !6158, file: !180, line: 263, type: !1650)
!6163 = !DILocalVariable(name: "onstack", arg: 2, scope: !6158, file: !180, line: 263, type: !123)
!6164 = !DILocation(line: 263, column: 52, scope: !6158)
!6165 = !DILocation(line: 263, column: 62, scope: !6158)
!6166 = !DILocation(line: 263, column: 73, scope: !6158)
!6167 = distinct !DISubprogram(name: "disk_events_workfn", scope: !3, file: !3, line: 311, type: !1648, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6168)
!6168 = !{!6169, !6170, !6171, !6172}
!6169 = !DILocalVariable(name: "work", arg: 1, scope: !6167, file: !3, line: 311, type: !1650)
!6170 = !DILocalVariable(name: "dwork", scope: !6167, file: !3, line: 313, type: !5386)
!6171 = !DILocalVariable(name: "ev", scope: !6167, file: !3, line: 314, type: !3235)
!6172 = !DILocalVariable(name: "__mptr", scope: !6173, file: !3, line: 314, type: !232)
!6173 = distinct !DILexicalBlock(scope: !6167, file: !3, line: 314, column: 27)
!6174 = !DILocation(line: 311, column: 52, scope: !6167)
!6175 = !DILocation(line: 313, column: 2, scope: !6167)
!6176 = !DILocation(line: 313, column: 23, scope: !6167)
!6177 = !DILocation(line: 313, column: 47, scope: !6167)
!6178 = !DILocation(line: 313, column: 31, scope: !6167)
!6179 = !DILocation(line: 314, column: 2, scope: !6167)
!6180 = !DILocation(line: 314, column: 22, scope: !6167)
!6181 = !DILocation(line: 314, column: 27, scope: !6173)
!6182 = !DILocation(line: 314, column: 27, scope: !6167)
!6183 = !DILocation(line: 316, column: 20, scope: !6167)
!6184 = !DILocation(line: 316, column: 25, scope: !6167)
!6185 = !DILocation(line: 316, column: 29, scope: !6167)
!6186 = !DILocation(line: 316, column: 2, scope: !6167)
!6187 = !DILocation(line: 317, column: 1, scope: !6167)
!6188 = !DISubprogram(name: "init_timer_key", scope: !1653, file: !1653, line: 91, type: !6189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6189 = !DISubroutineType(types: !6190)
!6190 = !{null, !1661, !1658, !7, !256, !6157}
!6191 = distinct !DISubprogram(name: "disk_add_events", scope: !3, file: !3, line: 461, type: !3145, scopeLine: 462, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6192)
!6192 = !{!6193}
!6193 = !DILocalVariable(name: "disk", arg: 1, scope: !6191, file: !3, line: 461, type: !959)
!6194 = !DILocation(line: 461, column: 38, scope: !6191)
!6195 = !DILocation(line: 463, column: 7, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6191, file: !3, line: 463, column: 6)
!6197 = !DILocation(line: 463, column: 13, scope: !6196)
!6198 = !DILocation(line: 463, column: 6, scope: !6191)
!6199 = !DILocation(line: 464, column: 3, scope: !6196)
!6200 = !DILocation(line: 466, column: 2, scope: !6191)
!6201 = !DILocation(line: 467, column: 17, scope: !6191)
!6202 = !DILocation(line: 467, column: 23, scope: !6191)
!6203 = !DILocation(line: 467, column: 27, scope: !6191)
!6204 = !DILocation(line: 467, column: 2, scope: !6191)
!6205 = !DILocation(line: 468, column: 2, scope: !6191)
!6206 = !DILocation(line: 474, column: 24, scope: !6191)
!6207 = !DILocation(line: 474, column: 2, scope: !6191)
!6208 = !DILocation(line: 475, column: 1, scope: !6191)
!6209 = distinct !DISubprogram(name: "list_add_tail", scope: !6133, file: !6133, line: 181, type: !6210, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6212)
!6210 = !DISubroutineType(types: !6211)
!6211 = !{null, !242, !242}
!6212 = !{!6213, !6214}
!6213 = !DILocalVariable(name: "new", arg: 1, scope: !6209, file: !6133, line: 181, type: !242)
!6214 = !DILocalVariable(name: "head", arg: 2, scope: !6209, file: !6133, line: 181, type: !242)
!6215 = !DILocation(line: 181, column: 52, scope: !6209)
!6216 = !DILocation(line: 181, column: 75, scope: !6209)
!6217 = !DILocation(line: 183, column: 13, scope: !6209)
!6218 = !DILocation(line: 183, column: 18, scope: !6209)
!6219 = !DILocation(line: 183, column: 24, scope: !6209)
!6220 = !DILocation(line: 183, column: 30, scope: !6209)
!6221 = !DILocation(line: 183, column: 2, scope: !6209)
!6222 = !DILocation(line: 184, column: 1, scope: !6209)
!6223 = distinct !DISubprogram(name: "disk_del_events", scope: !3, file: !3, line: 477, type: !3145, scopeLine: 478, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6224)
!6224 = !{!6225}
!6225 = !DILocalVariable(name: "disk", arg: 1, scope: !6223, file: !3, line: 477, type: !959)
!6226 = !DILocation(line: 477, column: 38, scope: !6223)
!6227 = !DILocation(line: 479, column: 6, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6223, file: !3, line: 479, column: 6)
!6229 = !DILocation(line: 479, column: 12, scope: !6228)
!6230 = !DILocation(line: 479, column: 6, scope: !6223)
!6231 = !DILocation(line: 480, column: 21, scope: !6232)
!6232 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 479, column: 16)
!6233 = !DILocation(line: 480, column: 3, scope: !6232)
!6234 = !DILocation(line: 482, column: 3, scope: !6232)
!6235 = !DILocation(line: 483, column: 18, scope: !6232)
!6236 = !DILocation(line: 483, column: 24, scope: !6232)
!6237 = !DILocation(line: 483, column: 28, scope: !6232)
!6238 = !DILocation(line: 483, column: 3, scope: !6232)
!6239 = !DILocation(line: 484, column: 3, scope: !6232)
!6240 = !DILocation(line: 485, column: 2, scope: !6232)
!6241 = !DILocation(line: 486, column: 1, scope: !6223)
!6242 = distinct !DISubprogram(name: "list_del_init", scope: !6133, file: !6133, line: 285, type: !6134, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6243)
!6243 = !{!6244}
!6244 = !DILocalVariable(name: "entry", arg: 1, scope: !6242, file: !6133, line: 285, type: !242)
!6245 = !DILocation(line: 285, column: 52, scope: !6242)
!6246 = !DILocation(line: 287, column: 19, scope: !6242)
!6247 = !DILocation(line: 287, column: 2, scope: !6242)
!6248 = !DILocation(line: 288, column: 17, scope: !6242)
!6249 = !DILocation(line: 288, column: 2, scope: !6242)
!6250 = !DILocation(line: 289, column: 1, scope: !6242)
!6251 = distinct !DISubprogram(name: "disk_release_events", scope: !3, file: !3, line: 488, type: !3145, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6252)
!6252 = !{!6253, !6254, !6256}
!6253 = !DILocalVariable(name: "disk", arg: 1, scope: !6251, file: !3, line: 488, type: !959)
!6254 = !DILocalVariable(name: "__ret_warn_on", scope: !6255, file: !3, line: 491, type: !123)
!6255 = distinct !DILexicalBlock(scope: !6251, file: !3, line: 491, column: 2)
!6256 = !DILocalVariable(name: "__flags", scope: !6257, file: !3, line: 491, type: !123)
!6257 = distinct !DILexicalBlock(scope: !6258, file: !3, line: 491, column: 2)
!6258 = distinct !DILexicalBlock(scope: !6255, file: !3, line: 491, column: 2)
!6259 = !DILocation(line: 488, column: 42, scope: !6251)
!6260 = !DILocation(line: 491, column: 2, scope: !6255)
!6261 = !DILocation(line: 0, scope: !6255)
!6262 = !DILocation(line: 491, column: 2, scope: !6258)
!6263 = !DILocation(line: 491, column: 2, scope: !6257)
!6264 = !DILocation(line: 491, column: 2, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 491, column: 2)
!6266 = !DILocation(line: 491, column: 2, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 491, column: 2)
!6268 = !{i64 2156047802, i64 2156047831, i64 2156047877, i64 2156047935, i64 2156047989, i64 2156048043, i64 2156048098, i64 2156048129, i64 2156048437, i64 2156048443, i64 2156048490, i64 2156048513, i64 2156048539}
!6269 = !DILocation(line: 491, column: 2, scope: !6270)
!6270 = distinct !DILexicalBlock(scope: !6257, file: !3, line: 491, column: 2)
!6271 = !DILocation(line: 491, column: 2, scope: !6251)
!6272 = !DILocation(line: 492, column: 8, scope: !6251)
!6273 = !DILocation(line: 492, column: 14, scope: !6251)
!6274 = !DILocation(line: 492, column: 2, scope: !6251)
!6275 = !DILocation(line: 493, column: 1, scope: !6251)
!6276 = !DISubprogram(name: "kfree", scope: !222, file: !222, line: 227, type: !6277, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6277 = !DISubroutineType(types: !6278)
!6278 = !{null, !2360}
!6279 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !5567, file: !5567, line: 43, type: !6280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6280 = !DISubroutineType(types: !6281)
!6281 = !{null, !5570, !387}
!6282 = distinct !DISubprogram(name: "disk_events_poll_jiffies", scope: !3, file: !3, line: 41, type: !6283, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6285)
!6283 = !DISubroutineType(types: !6284)
!6284 = !{!387, !959}
!6285 = !{!6286, !6287, !6288}
!6286 = !DILocalVariable(name: "disk", arg: 1, scope: !6282, file: !3, line: 41, type: !959)
!6287 = !DILocalVariable(name: "ev", scope: !6282, file: !3, line: 43, type: !3235)
!6288 = !DILocalVariable(name: "intv_msecs", scope: !6282, file: !3, line: 44, type: !373)
!6289 = !DILocation(line: 41, column: 63, scope: !6282)
!6290 = !DILocation(line: 43, column: 2, scope: !6282)
!6291 = !DILocation(line: 43, column: 22, scope: !6282)
!6292 = !DILocation(line: 43, column: 27, scope: !6282)
!6293 = !DILocation(line: 43, column: 33, scope: !6282)
!6294 = !DILocation(line: 44, column: 2, scope: !6282)
!6295 = !DILocation(line: 44, column: 7, scope: !6282)
!6296 = !DILocation(line: 50, column: 6, scope: !6297)
!6297 = distinct !DILexicalBlock(scope: !6282, file: !3, line: 50, column: 6)
!6298 = !DILocation(line: 50, column: 10, scope: !6297)
!6299 = !DILocation(line: 50, column: 21, scope: !6297)
!6300 = !DILocation(line: 50, column: 6, scope: !6282)
!6301 = !DILocation(line: 51, column: 16, scope: !6297)
!6302 = !DILocation(line: 51, column: 20, scope: !6297)
!6303 = !DILocation(line: 51, column: 14, scope: !6297)
!6304 = !DILocation(line: 51, column: 3, scope: !6297)
!6305 = !DILocation(line: 52, column: 11, scope: !6306)
!6306 = distinct !DILexicalBlock(scope: !6297, file: !3, line: 52, column: 11)
!6307 = !DILocation(line: 52, column: 17, scope: !6306)
!6308 = !DILocation(line: 52, column: 29, scope: !6306)
!6309 = !DILocation(line: 52, column: 11, scope: !6297)
!6310 = !DILocation(line: 53, column: 16, scope: !6306)
!6311 = !DILocation(line: 53, column: 14, scope: !6306)
!6312 = !DILocation(line: 53, column: 3, scope: !6306)
!6313 = !DILocation(line: 55, column: 26, scope: !6282)
!6314 = !DILocation(line: 55, column: 9, scope: !6282)
!6315 = !DILocation(line: 56, column: 1, scope: !6282)
!6316 = !DILocation(line: 55, column: 2, scope: !6282)
!6317 = distinct !DISubprogram(name: "queue_delayed_work", scope: !180, file: !180, line: 573, type: !5735, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6318)
!6318 = !{!6319, !6320, !6321}
!6319 = !DILocalVariable(name: "wq", arg: 1, scope: !6317, file: !180, line: 573, type: !1664)
!6320 = !DILocalVariable(name: "dwork", arg: 2, scope: !6317, file: !180, line: 574, type: !5386)
!6321 = !DILocalVariable(name: "delay", arg: 3, scope: !6317, file: !180, line: 575, type: !387)
!6322 = !DILocation(line: 573, column: 64, scope: !6317)
!6323 = !DILocation(line: 574, column: 32, scope: !6317)
!6324 = !DILocation(line: 575, column: 25, scope: !6317)
!6325 = !DILocation(line: 577, column: 49, scope: !6317)
!6326 = !DILocation(line: 577, column: 53, scope: !6317)
!6327 = !DILocation(line: 577, column: 60, scope: !6317)
!6328 = !DILocation(line: 577, column: 9, scope: !6317)
!6329 = !DILocation(line: 577, column: 2, scope: !6317)
!6330 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !6331, file: !6331, line: 515, type: !6332, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6334)
!6331 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "190f1e06c9553a58717d0072201a9169")
!6332 = !DISubroutineType(types: !6333)
!6333 = !{!387, !4779}
!6334 = !{!6335}
!6335 = !DILocalVariable(name: "m", arg: 1, scope: !6330, file: !6331, line: 515, type: !4779)
!6336 = !DILocation(line: 515, column: 74, scope: !6330)
!6337 = !DILocation(line: 517, column: 27, scope: !6338)
!6338 = distinct !DILexicalBlock(scope: !6330, file: !6331, line: 517, column: 6)
!6339 = !DILocation(line: 517, column: 6, scope: !6338)
!6340 = !DILocation(line: 517, column: 6, scope: !6330)
!6341 = !DILocation(line: 518, column: 12, scope: !6342)
!6342 = distinct !DILexicalBlock(scope: !6343, file: !6331, line: 518, column: 7)
!6343 = distinct !DILexicalBlock(scope: !6338, file: !6331, line: 517, column: 31)
!6344 = !DILocation(line: 518, column: 14, scope: !6342)
!6345 = !DILocation(line: 518, column: 7, scope: !6343)
!6346 = !DILocation(line: 519, column: 4, scope: !6342)
!6347 = !DILocation(line: 520, column: 28, scope: !6343)
!6348 = !DILocation(line: 520, column: 10, scope: !6343)
!6349 = !DILocation(line: 520, column: 3, scope: !6343)
!6350 = !DILocation(line: 522, column: 29, scope: !6351)
!6351 = distinct !DILexicalBlock(scope: !6338, file: !6331, line: 521, column: 9)
!6352 = !DILocation(line: 522, column: 10, scope: !6351)
!6353 = !DILocation(line: 522, column: 3, scope: !6351)
!6354 = !DILocation(line: 524, column: 1, scope: !6330)
!6355 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !6331, file: !6331, line: 458, type: !6332, scopeLine: 459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6356)
!6356 = !{!6357}
!6357 = !DILocalVariable(name: "m", arg: 1, scope: !6355, file: !6331, line: 458, type: !4779)
!6358 = !DILocation(line: 458, column: 66, scope: !6355)
!6359 = !DILocation(line: 460, column: 10, scope: !6355)
!6360 = !DILocation(line: 460, column: 12, scope: !6355)
!6361 = !DILocation(line: 460, column: 34, scope: !6355)
!6362 = !DILocation(line: 460, column: 39, scope: !6355)
!6363 = !DILocation(line: 460, column: 2, scope: !6355)
!6364 = !DISubprogram(name: "__msecs_to_jiffies", scope: !6331, file: !6331, line: 451, type: !6332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6365 = !DISubprogram(name: "queue_delayed_work_on", scope: !180, file: !180, line: 500, type: !6366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6366 = !DISubroutineType(types: !6367)
!6367 = !{!1111, !123, !1664, !5386, !387}
!6368 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !5567, file: !5567, line: 29, type: !6369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6369 = !DISubroutineType(types: !6370)
!6370 = !{null, !5570}
!6371 = !DISubprogram(name: "mod_delayed_work_on", scope: !180, file: !180, line: 502, type: !6366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6372 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !5567, file: !5567, line: 41, type: !6369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6373 = distinct !DISubprogram(name: "disk_check_events", scope: !3, file: !3, line: 184, type: !6374, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6376)
!6374 = !DISubroutineType(types: !6375)
!6375 = !{null, !3235, !1715}
!6376 = !{!6377, !6378, !6379, !6380, !6381, !6382}
!6377 = !DILocalVariable(name: "ev", arg: 1, scope: !6373, file: !3, line: 184, type: !3235)
!6378 = !DILocalVariable(name: "clearing_ptr", arg: 2, scope: !6373, file: !3, line: 185, type: !1715)
!6379 = !DILocalVariable(name: "disk", scope: !6373, file: !3, line: 187, type: !959)
!6380 = !DILocalVariable(name: "clearing", scope: !6373, file: !3, line: 188, type: !7)
!6381 = !DILocalVariable(name: "events", scope: !6373, file: !3, line: 189, type: !7)
!6382 = !DILocalVariable(name: "intv", scope: !6373, file: !3, line: 190, type: !387)
!6383 = !DILocation(line: 184, column: 51, scope: !6373)
!6384 = !DILocation(line: 185, column: 24, scope: !6373)
!6385 = !DILocation(line: 187, column: 2, scope: !6373)
!6386 = !DILocation(line: 187, column: 18, scope: !6373)
!6387 = !DILocation(line: 187, column: 25, scope: !6373)
!6388 = !DILocation(line: 187, column: 29, scope: !6373)
!6389 = !DILocation(line: 188, column: 2, scope: !6373)
!6390 = !DILocation(line: 188, column: 15, scope: !6373)
!6391 = !DILocation(line: 188, column: 27, scope: !6373)
!6392 = !DILocation(line: 188, column: 26, scope: !6373)
!6393 = !DILocation(line: 189, column: 2, scope: !6373)
!6394 = !DILocation(line: 189, column: 15, scope: !6373)
!6395 = !DILocation(line: 190, column: 2, scope: !6373)
!6396 = !DILocation(line: 190, column: 16, scope: !6373)
!6397 = !DILocation(line: 193, column: 11, scope: !6373)
!6398 = !DILocation(line: 193, column: 17, scope: !6373)
!6399 = !DILocation(line: 193, column: 23, scope: !6373)
!6400 = !DILocation(line: 193, column: 36, scope: !6373)
!6401 = !DILocation(line: 193, column: 42, scope: !6373)
!6402 = !DILocation(line: 193, column: 9, scope: !6373)
!6403 = !DILocation(line: 196, column: 17, scope: !6373)
!6404 = !DILocation(line: 196, column: 21, scope: !6373)
!6405 = !DILocation(line: 196, column: 2, scope: !6373)
!6406 = !DILocation(line: 198, column: 13, scope: !6373)
!6407 = !DILocation(line: 198, column: 17, scope: !6373)
!6408 = !DILocation(line: 198, column: 12, scope: !6373)
!6409 = !DILocation(line: 198, column: 9, scope: !6373)
!6410 = !DILocation(line: 199, column: 17, scope: !6373)
!6411 = !DILocation(line: 199, column: 2, scope: !6373)
!6412 = !DILocation(line: 199, column: 6, scope: !6373)
!6413 = !DILocation(line: 199, column: 14, scope: !6373)
!6414 = !DILocation(line: 200, column: 20, scope: !6373)
!6415 = !DILocation(line: 200, column: 19, scope: !6373)
!6416 = !DILocation(line: 200, column: 3, scope: !6373)
!6417 = !DILocation(line: 200, column: 16, scope: !6373)
!6418 = !DILocation(line: 202, column: 34, scope: !6373)
!6419 = !DILocation(line: 202, column: 9, scope: !6373)
!6420 = !DILocation(line: 202, column: 7, scope: !6373)
!6421 = !DILocation(line: 203, column: 7, scope: !6422)
!6422 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 203, column: 6)
!6423 = !DILocation(line: 203, column: 11, scope: !6422)
!6424 = !DILocation(line: 203, column: 17, scope: !6422)
!6425 = !DILocation(line: 203, column: 20, scope: !6422)
!6426 = !DILocation(line: 203, column: 6, scope: !6373)
!6427 = !DILocation(line: 204, column: 22, scope: !6422)
!6428 = !DILocation(line: 205, column: 6, scope: !6422)
!6429 = !DILocation(line: 205, column: 10, scope: !6422)
!6430 = !DILocation(line: 205, column: 17, scope: !6422)
!6431 = !DILocation(line: 204, column: 3, scope: !6422)
!6432 = !DILocation(line: 207, column: 19, scope: !6373)
!6433 = !DILocation(line: 207, column: 23, scope: !6373)
!6434 = !DILocation(line: 207, column: 2, scope: !6373)
!6435 = !DILocation(line: 209, column: 6, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 209, column: 6)
!6437 = !DILocation(line: 209, column: 13, scope: !6436)
!6438 = !DILocation(line: 209, column: 6, scope: !6373)
!6439 = !DILocation(line: 210, column: 15, scope: !6436)
!6440 = !DILocation(line: 210, column: 3, scope: !6436)
!6441 = !DILocation(line: 212, column: 6, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6373, file: !3, line: 212, column: 6)
!6443 = !DILocation(line: 212, column: 12, scope: !6442)
!6444 = !DILocation(line: 212, column: 24, scope: !6442)
!6445 = !DILocation(line: 212, column: 6, scope: !6373)
!6446 = !DILocation(line: 213, column: 21, scope: !6442)
!6447 = !DILocation(line: 213, column: 27, scope: !6442)
!6448 = !DILocation(line: 213, column: 3, scope: !6442)
!6449 = !DILocation(line: 214, column: 1, scope: !6373)
!6450 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !6451, file: !6451, line: 80, type: !6452, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6457)
!6451 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!6452 = !DISubroutineType(types: !6453)
!6453 = !{null, !6454, !384}
!6454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6455, size: 64)
!6455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6456)
!6456 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!6457 = !{!6458, !6459}
!6458 = !DILocalVariable(name: "v", arg: 1, scope: !6450, file: !6451, line: 80, type: !6454)
!6459 = !DILocalVariable(name: "size", arg: 2, scope: !6450, file: !6451, line: 80, type: !384)
!6460 = !DILocation(line: 80, column: 74, scope: !6450)
!6461 = !DILocation(line: 80, column: 84, scope: !6450)
!6462 = !DILocation(line: 82, column: 20, scope: !6450)
!6463 = !DILocation(line: 82, column: 23, scope: !6450)
!6464 = !DILocation(line: 82, column: 2, scope: !6450)
!6465 = !DILocation(line: 83, column: 2, scope: !6450)
!6466 = !DILocation(line: 84, column: 1, scope: !6450)
!6467 = distinct !DISubprogram(name: "arch_set_bit", scope: !6468, file: !6468, line: 52, type: !5860, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6469)
!6468 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6469 = !{!6470, !6471}
!6470 = !DILocalVariable(name: "nr", arg: 1, scope: !6467, file: !6468, line: 52, type: !373)
!6471 = !DILocalVariable(name: "addr", arg: 2, scope: !6467, file: !6468, line: 52, type: !5862)
!6472 = !DILocation(line: 52, column: 19, scope: !6467)
!6473 = !DILocation(line: 52, column: 47, scope: !6467)
!6474 = !DILocation(line: 54, column: 27, scope: !6475)
!6475 = distinct !DILexicalBlock(scope: !6467, file: !6468, line: 54, column: 6)
!6476 = !DILocation(line: 54, column: 6, scope: !6475)
!6477 = !DILocation(line: 54, column: 6, scope: !6467)
!6478 = !DILocation(line: 56, column: 6, scope: !6479)
!6479 = distinct !DILexicalBlock(scope: !6475, file: !6468, line: 54, column: 32)
!6480 = !DILocation(line: 57, column: 12, scope: !6479)
!6481 = !DILocation(line: 55, column: 3, scope: !6479)
!6482 = !{i64 2147825861, i64 2147825900, i64 2147825921, i64 2147825958, i64 2147825981, i64 2147825851}
!6483 = !DILocation(line: 59, column: 2, scope: !6479)
!6484 = !DILocation(line: 61, column: 8, scope: !6485)
!6485 = distinct !DILexicalBlock(scope: !6475, file: !6468, line: 59, column: 9)
!6486 = !DILocation(line: 61, column: 32, scope: !6485)
!6487 = !DILocation(line: 60, column: 3, scope: !6485)
!6488 = !{i64 2147826146, i64 2147826185, i64 2147826206, i64 2147826243, i64 2147826266, i64 2147826136}
!6489 = !DILocation(line: 63, column: 1, scope: !6467)
!6490 = distinct !DISubprogram(name: "kasan_check_write", scope: !6491, file: !6491, line: 44, type: !6492, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6494)
!6491 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!1111, !6454, !7}
!6494 = !{!6495, !6496}
!6495 = !DILocalVariable(name: "p", arg: 1, scope: !6490, file: !6491, line: 44, type: !6454)
!6496 = !DILocalVariable(name: "size", arg: 2, scope: !6490, file: !6491, line: 44, type: !7)
!6497 = !DILocation(line: 44, column: 59, scope: !6490)
!6498 = !DILocation(line: 44, column: 75, scope: !6490)
!6499 = !DILocation(line: 46, column: 2, scope: !6490)
!6500 = distinct !DISubprogram(name: "kcsan_check_access", scope: !6501, file: !6501, line: 229, type: !6502, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6504)
!6501 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!6502 = !DISubroutineType(types: !6503)
!6503 = !{null, !6454, !384, !123}
!6504 = !{!6505, !6506, !6507}
!6505 = !DILocalVariable(name: "ptr", arg: 1, scope: !6500, file: !6501, line: 229, type: !6454)
!6506 = !DILocalVariable(name: "size", arg: 2, scope: !6500, file: !6501, line: 229, type: !384)
!6507 = !DILocalVariable(name: "type", arg: 3, scope: !6500, file: !6501, line: 230, type: !123)
!6508 = !DILocation(line: 229, column: 60, scope: !6500)
!6509 = !DILocation(line: 229, column: 72, scope: !6500)
!6510 = !DILocation(line: 230, column: 15, scope: !6500)
!6511 = !DILocation(line: 230, column: 23, scope: !6500)
!6512 = !DISubprogram(name: "kobject_uevent_env", scope: !211, file: !211, line: 215, type: !6513, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6513 = !DISubroutineType(types: !6514)
!6514 = !{!123, !260, !210, !6515}
!6515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!6516 = distinct !DISubprogram(name: "__disk_events_show", scope: !3, file: !3, line: 328, type: !6517, scopeLine: 329, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6519)
!6517 = !DISubroutineType(types: !6518)
!6518 = !{!369, !7, !337}
!6519 = !{!6520, !6521, !6522, !6523, !6524}
!6520 = !DILocalVariable(name: "events", arg: 1, scope: !6516, file: !3, line: 328, type: !7)
!6521 = !DILocalVariable(name: "buf", arg: 2, scope: !6516, file: !3, line: 328, type: !337)
!6522 = !DILocalVariable(name: "delim", scope: !6516, file: !3, line: 330, type: !256)
!6523 = !DILocalVariable(name: "pos", scope: !6516, file: !3, line: 331, type: !369)
!6524 = !DILocalVariable(name: "i", scope: !6516, file: !3, line: 332, type: !123)
!6525 = !DILocation(line: 328, column: 48, scope: !6516)
!6526 = !DILocation(line: 328, column: 62, scope: !6516)
!6527 = !DILocation(line: 330, column: 2, scope: !6516)
!6528 = !DILocation(line: 330, column: 14, scope: !6516)
!6529 = !DILocation(line: 331, column: 2, scope: !6516)
!6530 = !DILocation(line: 331, column: 10, scope: !6516)
!6531 = !DILocation(line: 332, column: 2, scope: !6516)
!6532 = !DILocation(line: 332, column: 6, scope: !6516)
!6533 = !DILocation(line: 334, column: 9, scope: !6534)
!6534 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 334, column: 2)
!6535 = !DILocation(line: 334, column: 7, scope: !6534)
!6536 = !DILocation(line: 334, column: 14, scope: !6537)
!6537 = distinct !DILexicalBlock(scope: !6534, file: !3, line: 334, column: 2)
!6538 = !DILocation(line: 334, column: 16, scope: !6537)
!6539 = !DILocation(line: 334, column: 2, scope: !6534)
!6540 = !DILocation(line: 335, column: 7, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !6537, file: !3, line: 335, column: 7)
!6542 = !DILocation(line: 335, column: 22, scope: !6541)
!6543 = !DILocation(line: 335, column: 19, scope: !6541)
!6544 = !DILocation(line: 335, column: 14, scope: !6541)
!6545 = !DILocation(line: 335, column: 7, scope: !6537)
!6546 = !DILocation(line: 336, column: 19, scope: !6547)
!6547 = distinct !DILexicalBlock(scope: !6541, file: !3, line: 335, column: 26)
!6548 = !DILocation(line: 336, column: 25, scope: !6547)
!6549 = !DILocation(line: 336, column: 23, scope: !6547)
!6550 = !DILocation(line: 337, column: 12, scope: !6547)
!6551 = !DILocation(line: 337, column: 36, scope: !6547)
!6552 = !DILocation(line: 337, column: 19, scope: !6547)
!6553 = !DILocation(line: 336, column: 11, scope: !6547)
!6554 = !DILocation(line: 336, column: 8, scope: !6547)
!6555 = !DILocation(line: 338, column: 10, scope: !6547)
!6556 = !DILocation(line: 339, column: 3, scope: !6547)
!6557 = !DILocation(line: 335, column: 23, scope: !6541)
!6558 = !DILocation(line: 334, column: 49, scope: !6537)
!6559 = !DILocation(line: 334, column: 2, scope: !6537)
!6560 = distinct !{!6560, !6539, !6561, !5932, !5933}
!6561 = !DILocation(line: 339, column: 3, scope: !6534)
!6562 = !DILocation(line: 340, column: 6, scope: !6563)
!6563 = distinct !DILexicalBlock(scope: !6516, file: !3, line: 340, column: 6)
!6564 = !DILocation(line: 340, column: 6, scope: !6516)
!6565 = !DILocation(line: 341, column: 18, scope: !6563)
!6566 = !DILocation(line: 341, column: 24, scope: !6563)
!6567 = !DILocation(line: 341, column: 22, scope: !6563)
!6568 = !DILocation(line: 341, column: 10, scope: !6563)
!6569 = !DILocation(line: 341, column: 7, scope: !6563)
!6570 = !DILocation(line: 341, column: 3, scope: !6563)
!6571 = !DILocation(line: 342, column: 9, scope: !6516)
!6572 = !DILocation(line: 343, column: 1, scope: !6516)
!6573 = !DILocation(line: 342, column: 2, scope: !6516)
!6574 = !DISubprogram(name: "sprintf", scope: !6575, file: !6575, line: 10, type: !6576, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6575 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!6576 = !DISubroutineType(types: !6577)
!6577 = !{!123, !337, !256, null}
!6578 = !DISubprogram(name: "sscanf", scope: !6575, file: !6575, line: 20, type: !6579, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6579 = !DISubroutineType(types: !6580)
!6580 = !{!123, !256, !256, null}
!6581 = distinct !DISubprogram(name: "disk_events_set_dfl_poll_msecs", scope: !3, file: !3, line: 405, type: !5194, scopeLine: 407, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6582)
!6582 = !{!6583, !6584, !6585, !6586, !6587, !6590}
!6583 = !DILocalVariable(name: "val", arg: 1, scope: !6581, file: !3, line: 405, type: !256)
!6584 = !DILocalVariable(name: "kp", arg: 2, scope: !6581, file: !3, line: 406, type: !5196)
!6585 = !DILocalVariable(name: "ev", scope: !6581, file: !3, line: 408, type: !3235)
!6586 = !DILocalVariable(name: "ret", scope: !6581, file: !3, line: 409, type: !123)
!6587 = !DILocalVariable(name: "__mptr", scope: !6588, file: !3, line: 416, type: !232)
!6588 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 416, column: 2)
!6589 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 416, column: 2)
!6590 = !DILocalVariable(name: "__mptr", scope: !6591, file: !3, line: 416, type: !232)
!6591 = distinct !DILexicalBlock(scope: !6592, file: !3, line: 416, column: 2)
!6592 = distinct !DILexicalBlock(scope: !6589, file: !3, line: 416, column: 2)
!6593 = !DILocation(line: 405, column: 55, scope: !6581)
!6594 = !DILocation(line: 406, column: 35, scope: !6581)
!6595 = !DILocation(line: 408, column: 2, scope: !6581)
!6596 = !DILocation(line: 408, column: 22, scope: !6581)
!6597 = !DILocation(line: 409, column: 2, scope: !6581)
!6598 = !DILocation(line: 409, column: 6, scope: !6581)
!6599 = !DILocation(line: 411, column: 24, scope: !6581)
!6600 = !DILocation(line: 411, column: 29, scope: !6581)
!6601 = !DILocation(line: 411, column: 8, scope: !6581)
!6602 = !DILocation(line: 411, column: 6, scope: !6581)
!6603 = !DILocation(line: 412, column: 6, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6581, file: !3, line: 412, column: 6)
!6605 = !DILocation(line: 412, column: 10, scope: !6604)
!6606 = !DILocation(line: 412, column: 6, scope: !6581)
!6607 = !DILocation(line: 413, column: 10, scope: !6604)
!6608 = !DILocation(line: 413, column: 3, scope: !6604)
!6609 = !DILocation(line: 415, column: 2, scope: !6581)
!6610 = !DILocation(line: 416, column: 2, scope: !6588)
!6611 = !DILocation(line: 416, column: 2, scope: !6589)
!6612 = !DILocation(line: 416, column: 2, scope: !6592)
!6613 = !DILocation(line: 417, column: 21, scope: !6592)
!6614 = !DILocation(line: 417, column: 25, scope: !6592)
!6615 = !DILocation(line: 417, column: 3, scope: !6592)
!6616 = !DILocation(line: 416, column: 2, scope: !6591)
!6617 = distinct !{!6617, !6611, !6618, !5932, !5933}
!6618 = !DILocation(line: 417, column: 32, scope: !6589)
!6619 = !DILocation(line: 418, column: 2, scope: !6581)
!6620 = !DILocation(line: 419, column: 2, scope: !6581)
!6621 = !DILocation(line: 420, column: 1, scope: !6581)
!6622 = !DISubprogram(name: "param_set_ulong", scope: !5182, file: !5182, line: 444, type: !5194, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6623 = distinct !DISubprogram(name: "kmalloc", scope: !222, file: !222, line: 591, type: !6116, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6624)
!6624 = !{!6625, !6626, !6627}
!6625 = !DILocalVariable(name: "size", arg: 1, scope: !6623, file: !222, line: 591, type: !384)
!6626 = !DILocalVariable(name: "flags", arg: 2, scope: !6623, file: !222, line: 591, type: !781)
!6627 = !DILocalVariable(name: "index", scope: !6628, file: !222, line: 594, type: !7)
!6628 = distinct !DILexicalBlock(scope: !6629, file: !222, line: 593, column: 42)
!6629 = distinct !DILexicalBlock(scope: !6623, file: !222, line: 593, column: 6)
!6630 = !DILocation(line: 591, column: 61, scope: !6623)
!6631 = !DILocation(line: 591, column: 73, scope: !6623)
!6632 = !DILocation(line: 593, column: 27, scope: !6629)
!6633 = !DILocation(line: 593, column: 6, scope: !6629)
!6634 = !DILocation(line: 593, column: 33, scope: !6629)
!6635 = !DILocation(line: 593, column: 36, scope: !6629)
!6636 = !DILocation(line: 593, column: 6, scope: !6623)
!6637 = !DILocation(line: 594, column: 3, scope: !6628)
!6638 = !DILocation(line: 594, column: 16, scope: !6628)
!6639 = !DILocation(line: 596, column: 7, scope: !6640)
!6640 = distinct !DILexicalBlock(scope: !6628, file: !222, line: 596, column: 7)
!6641 = !DILocation(line: 596, column: 12, scope: !6640)
!6642 = !DILocation(line: 596, column: 7, scope: !6628)
!6643 = !DILocation(line: 597, column: 25, scope: !6640)
!6644 = !DILocation(line: 597, column: 31, scope: !6640)
!6645 = !DILocation(line: 597, column: 11, scope: !6640)
!6646 = !DILocation(line: 597, column: 4, scope: !6640)
!6647 = !DILocation(line: 599, column: 11, scope: !6628)
!6648 = !DILocation(line: 599, column: 9, scope: !6628)
!6649 = !DILocation(line: 601, column: 33, scope: !6628)
!6650 = !DILocation(line: 601, column: 40, scope: !6628)
!6651 = !DILocation(line: 601, column: 20, scope: !6628)
!6652 = !DILocation(line: 601, column: 5, scope: !6628)
!6653 = !DILocation(line: 601, column: 51, scope: !6628)
!6654 = !DILocation(line: 602, column: 5, scope: !6628)
!6655 = !DILocation(line: 602, column: 12, scope: !6628)
!6656 = !DILocation(line: 600, column: 10, scope: !6628)
!6657 = !DILocation(line: 600, column: 3, scope: !6628)
!6658 = !DILocation(line: 603, column: 2, scope: !6629)
!6659 = !DILocation(line: 604, column: 19, scope: !6623)
!6660 = !DILocation(line: 604, column: 25, scope: !6623)
!6661 = !DILocation(line: 604, column: 9, scope: !6623)
!6662 = !DILocation(line: 604, column: 2, scope: !6623)
!6663 = !DILocation(line: 605, column: 1, scope: !6623)
!6664 = !DISubprogram(name: "kmalloc_large", scope: !222, file: !222, line: 531, type: !6116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6665 = distinct !DISubprogram(name: "__kmalloc_index", scope: !222, file: !222, line: 444, type: !6666, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6668)
!6666 = !DISubroutineType(types: !6667)
!6667 = !{!7, !384, !1111}
!6668 = !{!6669, !6670}
!6669 = !DILocalVariable(name: "size", arg: 1, scope: !6665, file: !222, line: 444, type: !384)
!6670 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6665, file: !222, line: 445, type: !1111)
!6671 = !DILocation(line: 444, column: 60, scope: !6665)
!6672 = !DILocation(line: 445, column: 16, scope: !6665)
!6673 = !DILocation(line: 447, column: 7, scope: !6674)
!6674 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 447, column: 6)
!6675 = !DILocation(line: 447, column: 6, scope: !6665)
!6676 = !DILocation(line: 448, column: 3, scope: !6674)
!6677 = !DILocation(line: 450, column: 6, scope: !6678)
!6678 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 450, column: 6)
!6679 = !DILocation(line: 450, column: 11, scope: !6678)
!6680 = !DILocation(line: 450, column: 6, scope: !6665)
!6681 = !DILocation(line: 451, column: 3, scope: !6678)
!6682 = !DILocation(line: 453, column: 32, scope: !6683)
!6683 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 453, column: 6)
!6684 = !DILocation(line: 453, column: 37, scope: !6683)
!6685 = !DILocation(line: 453, column: 42, scope: !6683)
!6686 = !DILocation(line: 453, column: 45, scope: !6683)
!6687 = !DILocation(line: 453, column: 50, scope: !6683)
!6688 = !DILocation(line: 453, column: 6, scope: !6665)
!6689 = !DILocation(line: 454, column: 3, scope: !6683)
!6690 = !DILocation(line: 455, column: 32, scope: !6691)
!6691 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 455, column: 6)
!6692 = !DILocation(line: 455, column: 37, scope: !6691)
!6693 = !DILocation(line: 455, column: 43, scope: !6691)
!6694 = !DILocation(line: 455, column: 46, scope: !6691)
!6695 = !DILocation(line: 455, column: 51, scope: !6691)
!6696 = !DILocation(line: 455, column: 6, scope: !6665)
!6697 = !DILocation(line: 456, column: 3, scope: !6691)
!6698 = !DILocation(line: 457, column: 6, scope: !6699)
!6699 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 457, column: 6)
!6700 = !DILocation(line: 457, column: 11, scope: !6699)
!6701 = !DILocation(line: 457, column: 6, scope: !6665)
!6702 = !DILocation(line: 457, column: 26, scope: !6699)
!6703 = !DILocation(line: 458, column: 6, scope: !6704)
!6704 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 458, column: 6)
!6705 = !DILocation(line: 458, column: 11, scope: !6704)
!6706 = !DILocation(line: 458, column: 6, scope: !6665)
!6707 = !DILocation(line: 458, column: 26, scope: !6704)
!6708 = !DILocation(line: 459, column: 6, scope: !6709)
!6709 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 459, column: 6)
!6710 = !DILocation(line: 459, column: 11, scope: !6709)
!6711 = !DILocation(line: 459, column: 6, scope: !6665)
!6712 = !DILocation(line: 459, column: 26, scope: !6709)
!6713 = !DILocation(line: 460, column: 6, scope: !6714)
!6714 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 460, column: 6)
!6715 = !DILocation(line: 460, column: 11, scope: !6714)
!6716 = !DILocation(line: 460, column: 6, scope: !6665)
!6717 = !DILocation(line: 460, column: 26, scope: !6714)
!6718 = !DILocation(line: 461, column: 6, scope: !6719)
!6719 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 461, column: 6)
!6720 = !DILocation(line: 461, column: 11, scope: !6719)
!6721 = !DILocation(line: 461, column: 6, scope: !6665)
!6722 = !DILocation(line: 461, column: 26, scope: !6719)
!6723 = !DILocation(line: 462, column: 6, scope: !6724)
!6724 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 462, column: 6)
!6725 = !DILocation(line: 462, column: 11, scope: !6724)
!6726 = !DILocation(line: 462, column: 6, scope: !6665)
!6727 = !DILocation(line: 462, column: 26, scope: !6724)
!6728 = !DILocation(line: 463, column: 6, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 463, column: 6)
!6730 = !DILocation(line: 463, column: 11, scope: !6729)
!6731 = !DILocation(line: 463, column: 6, scope: !6665)
!6732 = !DILocation(line: 463, column: 26, scope: !6729)
!6733 = !DILocation(line: 464, column: 6, scope: !6734)
!6734 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 464, column: 6)
!6735 = !DILocation(line: 464, column: 11, scope: !6734)
!6736 = !DILocation(line: 464, column: 6, scope: !6665)
!6737 = !DILocation(line: 464, column: 26, scope: !6734)
!6738 = !DILocation(line: 465, column: 6, scope: !6739)
!6739 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 465, column: 6)
!6740 = !DILocation(line: 465, column: 11, scope: !6739)
!6741 = !DILocation(line: 465, column: 6, scope: !6665)
!6742 = !DILocation(line: 465, column: 26, scope: !6739)
!6743 = !DILocation(line: 466, column: 6, scope: !6744)
!6744 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 466, column: 6)
!6745 = !DILocation(line: 466, column: 11, scope: !6744)
!6746 = !DILocation(line: 466, column: 6, scope: !6665)
!6747 = !DILocation(line: 466, column: 26, scope: !6744)
!6748 = !DILocation(line: 467, column: 6, scope: !6749)
!6749 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 467, column: 6)
!6750 = !DILocation(line: 467, column: 11, scope: !6749)
!6751 = !DILocation(line: 467, column: 6, scope: !6665)
!6752 = !DILocation(line: 467, column: 26, scope: !6749)
!6753 = !DILocation(line: 468, column: 6, scope: !6754)
!6754 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 468, column: 6)
!6755 = !DILocation(line: 468, column: 11, scope: !6754)
!6756 = !DILocation(line: 468, column: 6, scope: !6665)
!6757 = !DILocation(line: 468, column: 26, scope: !6754)
!6758 = !DILocation(line: 469, column: 6, scope: !6759)
!6759 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 469, column: 6)
!6760 = !DILocation(line: 469, column: 11, scope: !6759)
!6761 = !DILocation(line: 469, column: 6, scope: !6665)
!6762 = !DILocation(line: 469, column: 26, scope: !6759)
!6763 = !DILocation(line: 470, column: 6, scope: !6764)
!6764 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 470, column: 6)
!6765 = !DILocation(line: 470, column: 11, scope: !6764)
!6766 = !DILocation(line: 470, column: 6, scope: !6665)
!6767 = !DILocation(line: 470, column: 26, scope: !6764)
!6768 = !DILocation(line: 471, column: 6, scope: !6769)
!6769 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 471, column: 6)
!6770 = !DILocation(line: 471, column: 11, scope: !6769)
!6771 = !DILocation(line: 471, column: 6, scope: !6665)
!6772 = !DILocation(line: 471, column: 26, scope: !6769)
!6773 = !DILocation(line: 472, column: 6, scope: !6774)
!6774 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 472, column: 6)
!6775 = !DILocation(line: 472, column: 11, scope: !6774)
!6776 = !DILocation(line: 472, column: 6, scope: !6665)
!6777 = !DILocation(line: 472, column: 26, scope: !6774)
!6778 = !DILocation(line: 473, column: 6, scope: !6779)
!6779 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 473, column: 6)
!6780 = !DILocation(line: 473, column: 11, scope: !6779)
!6781 = !DILocation(line: 473, column: 6, scope: !6665)
!6782 = !DILocation(line: 473, column: 26, scope: !6779)
!6783 = !DILocation(line: 474, column: 6, scope: !6784)
!6784 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 474, column: 6)
!6785 = !DILocation(line: 474, column: 11, scope: !6784)
!6786 = !DILocation(line: 474, column: 6, scope: !6665)
!6787 = !DILocation(line: 474, column: 27, scope: !6784)
!6788 = !DILocation(line: 475, column: 6, scope: !6789)
!6789 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 475, column: 6)
!6790 = !DILocation(line: 475, column: 11, scope: !6789)
!6791 = !DILocation(line: 475, column: 6, scope: !6665)
!6792 = !DILocation(line: 475, column: 32, scope: !6789)
!6793 = !DILocation(line: 477, column: 50, scope: !6794)
!6794 = distinct !DILexicalBlock(scope: !6665, file: !222, line: 477, column: 6)
!6795 = !DILocation(line: 477, column: 6, scope: !6665)
!6796 = !DILocation(line: 478, column: 3, scope: !6794)
!6797 = !DILocation(line: 478, column: 3, scope: !6798)
!6798 = distinct !DILexicalBlock(scope: !6799, file: !222, line: 478, column: 3)
!6799 = distinct !DILexicalBlock(scope: !6794, file: !222, line: 478, column: 3)
!6800 = !{i32 -2141609682}
!6801 = !DILocation(line: 478, column: 3, scope: !6799)
!6802 = !DILocation(line: 480, column: 3, scope: !6794)
!6803 = !DILocation(line: 480, column: 3, scope: !6804)
!6804 = distinct !DILexicalBlock(scope: !6794, file: !222, line: 480, column: 3)
!6805 = !DILocation(line: 480, column: 3, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6804, file: !222, line: 480, column: 3)
!6807 = !DILocation(line: 480, column: 3, scope: !6808)
!6808 = distinct !DILexicalBlock(scope: !6804, file: !222, line: 480, column: 3)
!6809 = !{i64 2153357817, i64 2153357846, i64 2153357892, i64 2153357950, i64 2153358004, i64 2153358058, i64 2153358113, i64 2153358144}
!6810 = !DILocation(line: 483, column: 2, scope: !6665)
!6811 = !DILocation(line: 484, column: 1, scope: !6665)
!6812 = !DISubprogram(name: "kmalloc_trace", scope: !222, file: !222, line: 525, type: !6813, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6813 = !DISubroutineType(types: !6814)
!6814 = !{!232, !2653, !781, !384}
!6815 = distinct !DISubprogram(name: "kmalloc_type", scope: !222, file: !222, line: 401, type: !6816, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6818)
!6816 = !DISubroutineType(types: !6817)
!6817 = !{!221, !781, !387}
!6818 = !{!6819, !6820}
!6819 = !DILocalVariable(name: "flags", arg: 1, scope: !6815, file: !222, line: 401, type: !781)
!6820 = !DILocalVariable(name: "caller", arg: 2, scope: !6815, file: !222, line: 401, type: !387)
!6821 = !DILocation(line: 401, column: 67, scope: !6815)
!6822 = !DILocation(line: 401, column: 88, scope: !6815)
!6823 = !DILocation(line: 407, column: 6, scope: !6824)
!6824 = distinct !DILexicalBlock(scope: !6815, file: !222, line: 407, column: 6)
!6825 = !DILocation(line: 407, column: 6, scope: !6815)
!6826 = !DILocation(line: 413, column: 3, scope: !6824)
!6827 = !DILocation(line: 423, column: 38, scope: !6828)
!6828 = distinct !DILexicalBlock(scope: !6815, file: !222, line: 423, column: 6)
!6829 = !DILocation(line: 423, column: 44, scope: !6828)
!6830 = !DILocation(line: 423, column: 6, scope: !6815)
!6831 = !DILocation(line: 424, column: 3, scope: !6828)
!6832 = !DILocation(line: 426, column: 3, scope: !6833)
!6833 = distinct !DILexicalBlock(scope: !6815, file: !222, line: 425, column: 6)
!6834 = !DILocation(line: 429, column: 1, scope: !6815)
!6835 = !DISubprogram(name: "__kmalloc", scope: !222, file: !222, line: 488, type: !6116, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6836 = !DISubprogram(name: "__compiletime_assert_245", scope: !222, file: !222, line: 478, type: !3932, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6837 = distinct !DISubprogram(name: "to_delayed_work", scope: !180, file: !180, line: 206, type: !6838, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6840)
!6838 = !DISubroutineType(types: !6839)
!6839 = !{!5386, !1650}
!6840 = !{!6841, !6842}
!6841 = !DILocalVariable(name: "work", arg: 1, scope: !6837, file: !180, line: 206, type: !1650)
!6842 = !DILocalVariable(name: "__mptr", scope: !6843, file: !180, line: 208, type: !232)
!6843 = distinct !DILexicalBlock(scope: !6837, file: !180, line: 208, column: 9)
!6844 = !DILocation(line: 206, column: 72, scope: !6837)
!6845 = !DILocation(line: 208, column: 9, scope: !6843)
!6846 = !DILocation(line: 208, column: 9, scope: !6837)
!6847 = !DILocation(line: 208, column: 2, scope: !6837)
!6848 = distinct !DISubprogram(name: "__list_add", scope: !6133, file: !6133, line: 146, type: !6849, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6851)
!6849 = !DISubroutineType(types: !6850)
!6850 = !{null, !242, !242, !242}
!6851 = !{!6852, !6853, !6854}
!6852 = !DILocalVariable(name: "new", arg: 1, scope: !6848, file: !6133, line: 146, type: !242)
!6853 = !DILocalVariable(name: "prev", arg: 2, scope: !6848, file: !6133, line: 147, type: !242)
!6854 = !DILocalVariable(name: "next", arg: 3, scope: !6848, file: !6133, line: 148, type: !242)
!6855 = !DILocation(line: 146, column: 49, scope: !6848)
!6856 = !DILocation(line: 147, column: 28, scope: !6848)
!6857 = !DILocation(line: 148, column: 28, scope: !6848)
!6858 = !DILocation(line: 150, column: 24, scope: !6859)
!6859 = distinct !DILexicalBlock(scope: !6848, file: !6133, line: 150, column: 6)
!6860 = !DILocation(line: 150, column: 29, scope: !6859)
!6861 = !DILocation(line: 150, column: 35, scope: !6859)
!6862 = !DILocation(line: 150, column: 7, scope: !6859)
!6863 = !DILocation(line: 150, column: 6, scope: !6848)
!6864 = !DILocation(line: 151, column: 3, scope: !6859)
!6865 = !DILocation(line: 153, column: 15, scope: !6848)
!6866 = !DILocation(line: 153, column: 2, scope: !6848)
!6867 = !DILocation(line: 153, column: 8, scope: !6848)
!6868 = !DILocation(line: 153, column: 13, scope: !6848)
!6869 = !DILocation(line: 154, column: 14, scope: !6848)
!6870 = !DILocation(line: 154, column: 2, scope: !6848)
!6871 = !DILocation(line: 154, column: 7, scope: !6848)
!6872 = !DILocation(line: 154, column: 12, scope: !6848)
!6873 = !DILocation(line: 155, column: 14, scope: !6848)
!6874 = !DILocation(line: 155, column: 2, scope: !6848)
!6875 = !DILocation(line: 155, column: 7, scope: !6848)
!6876 = !DILocation(line: 155, column: 12, scope: !6848)
!6877 = !DILocation(line: 156, column: 2, scope: !6848)
!6878 = !DILocation(line: 156, column: 2, scope: !6879)
!6879 = distinct !DILexicalBlock(scope: !6848, file: !6133, line: 156, column: 2)
!6880 = !DILocation(line: 156, column: 2, scope: !6881)
!6881 = distinct !DILexicalBlock(scope: !6879, file: !6133, line: 156, column: 2)
!6882 = !DILocation(line: 156, column: 2, scope: !6883)
!6883 = distinct !DILexicalBlock(scope: !6879, file: !6133, line: 156, column: 2)
!6884 = !DILocation(line: 157, column: 1, scope: !6848)
!6885 = distinct !DISubprogram(name: "__list_add_valid", scope: !6133, file: !6133, line: 128, type: !6886, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6888)
!6886 = !DISubroutineType(types: !6887)
!6887 = !{!1111, !242, !242, !242}
!6888 = !{!6889, !6890, !6891}
!6889 = !DILocalVariable(name: "new", arg: 1, scope: !6885, file: !6133, line: 128, type: !242)
!6890 = !DILocalVariable(name: "prev", arg: 2, scope: !6885, file: !6133, line: 129, type: !242)
!6891 = !DILocalVariable(name: "next", arg: 3, scope: !6885, file: !6133, line: 130, type: !242)
!6892 = !DILocation(line: 128, column: 55, scope: !6885)
!6893 = !DILocation(line: 129, column: 23, scope: !6885)
!6894 = !DILocation(line: 130, column: 23, scope: !6885)
!6895 = !DILocation(line: 132, column: 2, scope: !6885)
!6896 = distinct !DISubprogram(name: "__list_del_entry", scope: !6133, file: !6133, line: 213, type: !6134, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6897)
!6897 = !{!6898}
!6898 = !DILocalVariable(name: "entry", arg: 1, scope: !6896, file: !6133, line: 213, type: !242)
!6899 = !DILocation(line: 213, column: 55, scope: !6896)
!6900 = !DILocation(line: 215, column: 30, scope: !6901)
!6901 = distinct !DILexicalBlock(scope: !6896, file: !6133, line: 215, column: 6)
!6902 = !DILocation(line: 215, column: 7, scope: !6901)
!6903 = !DILocation(line: 215, column: 6, scope: !6896)
!6904 = !DILocation(line: 216, column: 3, scope: !6901)
!6905 = !DILocation(line: 218, column: 13, scope: !6896)
!6906 = !DILocation(line: 218, column: 20, scope: !6896)
!6907 = !DILocation(line: 218, column: 26, scope: !6896)
!6908 = !DILocation(line: 218, column: 33, scope: !6896)
!6909 = !DILocation(line: 218, column: 2, scope: !6896)
!6910 = !DILocation(line: 219, column: 1, scope: !6896)
!6911 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !6133, file: !6133, line: 134, type: !6912, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6914)
!6912 = !DISubroutineType(types: !6913)
!6913 = !{!1111, !242}
!6914 = !{!6915}
!6915 = !DILocalVariable(name: "entry", arg: 1, scope: !6911, file: !6133, line: 134, type: !242)
!6916 = !DILocation(line: 134, column: 61, scope: !6911)
!6917 = !DILocation(line: 136, column: 2, scope: !6911)
!6918 = distinct !DISubprogram(name: "__list_del", scope: !6133, file: !6133, line: 193, type: !6210, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !6919)
!6919 = !{!6920, !6921}
!6920 = !DILocalVariable(name: "prev", arg: 1, scope: !6918, file: !6133, line: 193, type: !242)
!6921 = !DILocalVariable(name: "next", arg: 2, scope: !6918, file: !6133, line: 193, type: !242)
!6922 = !DILocation(line: 193, column: 50, scope: !6918)
!6923 = !DILocation(line: 193, column: 75, scope: !6918)
!6924 = !DILocation(line: 195, column: 15, scope: !6918)
!6925 = !DILocation(line: 195, column: 2, scope: !6918)
!6926 = !DILocation(line: 195, column: 8, scope: !6918)
!6927 = !DILocation(line: 195, column: 13, scope: !6918)
!6928 = !DILocation(line: 196, column: 2, scope: !6918)
!6929 = !DILocation(line: 196, column: 2, scope: !6930)
!6930 = distinct !DILexicalBlock(scope: !6918, file: !6133, line: 196, column: 2)
!6931 = !DILocation(line: 196, column: 2, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6930, file: !6133, line: 196, column: 2)
!6933 = !DILocation(line: 196, column: 2, scope: !6934)
!6934 = distinct !DILexicalBlock(scope: !6930, file: !6133, line: 196, column: 2)
!6935 = !DILocation(line: 197, column: 1, scope: !6918)
