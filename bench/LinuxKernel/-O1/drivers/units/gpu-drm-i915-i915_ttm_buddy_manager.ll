; ModuleID = 'drivers/gpu/drm/i915/i915_ttm_buddy_manager.c'
source_filename = "drivers/gpu/drm/i915/i915_ttm_buddy_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lock_class_key = type {}
%struct.ttm_resource_manager_func = type { ptr, ptr, ptr, ptr, ptr }
%struct.i915_ttm_buddy_manager = type { %struct.ttm_resource_manager, %struct.drm_buddy, %struct.list_head, %struct.mutex, i64, i64, i64, i64 }
%struct.ttm_resource_manager = type { i8, i8, ptr, i64, ptr, %struct.spinlock, ptr, [4 x %struct.list_head], i64 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_buddy = type { ptr, ptr, i32, i32, i64, i64, i64 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.ttm_pool = type { ptr, i32, i8, i8, [3 x %struct.anon.16] }
%struct.anon.16 = type { [11 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.i915_ttm_buddy_resource = type { %struct.ttm_resource, %struct.list_head, i64, i64, ptr }
%struct.ttm_resource = type { i64, i64, i32, i32, %struct.ttm_bus_placement, ptr, %struct.list_head }
%struct.ttm_bus_placement = type { ptr, i64, i8, i32 }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, ptr, i32, i32, %struct.work_struct, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i64, i32, ptr, ptr, ptr, %struct.dma_resv, %struct.anon.15, ptr, %struct.list_head, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.13, %struct.qspinlock }
%union.anon.13 = type { %struct.atomic_t }
%struct.drm_mm_node = type { i64, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.anon.15 = type { %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.drm_buddy_block = type { i64, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.dma_fence = type { ptr, ptr, %union.anon.17, i64, i64, i64, %struct.kref, i32 }
%union.anon.17 = type { %struct.list_head }

@i915_ttm_buddy_man_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !0
@.str = private unnamed_addr constant [12 x i8] c"&bman->lock\00", align 1, !dbg !5460
@i915_ttm_buddy_manager_func = internal constant %struct.ttm_resource_manager_func { ptr @i915_ttm_buddy_man_alloc, ptr @i915_ttm_buddy_man_free, ptr @i915_ttm_buddy_man_intersects, ptr @i915_ttm_buddy_man_compatible, ptr @i915_ttm_buddy_man_debug }, align 8, !dbg !5473
@.str.1 = private unnamed_addr constant [46 x i8] c"drivers/gpu/drm/i915/i915_ttm_buddy_manager.c\00", align 1, !dbg !5463
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5468
@.str.3 = private unnamed_addr constant [28 x i8] c"default_page_size: %lluKiB\0A\00", align 1, !dbg !5475
@.str.4 = private unnamed_addr constant [24 x i8] c"visible_avail: %lluMiB\0A\00", align 1, !dbg !5480
@.str.5 = private unnamed_addr constant [23 x i8] c"visible_size: %lluMiB\0A\00", align 1, !dbg !5485
@.str.6 = private unnamed_addr constant [27 x i8] c"visible_reserved: %lluMiB\0A\00", align 1, !dbg !5490
@.str.7 = private unnamed_addr constant [11 x i8] c"reserved:\0A\00", align 1, !dbg !5495
@.str.8 = private unnamed_addr constant [31 x i8] c"include/drm/ttm/ttm_resource.h\00", align 1, !dbg !5498

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_ttm_buddy_man_init(ptr noundef %bdev, i32 noundef %type, i1 noundef zeroext %use_tt, i64 noundef %size, i64 noundef %visible_size, i64 noundef %default_page_size, i64 noundef %chunk_size) #0 align 16 !dbg !2 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %use_tt.addr = alloca i8, align 1
  %size.addr = alloca i64, align 8
  %visible_size.addr = alloca i64, align 8
  %default_page_size.addr = alloca i64, align 8
  %chunk_size.addr = alloca i64, align 8
  %man = alloca ptr, align 8
  %bman = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5504, metadata !DIExpression()), !dbg !5524
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5505, metadata !DIExpression()), !dbg !5525
  %frombool = zext i1 %use_tt to i8
  store i8 %frombool, ptr %use_tt.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %use_tt.addr, metadata !5506, metadata !DIExpression()), !dbg !5526
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5507, metadata !DIExpression()), !dbg !5527
  store i64 %visible_size, ptr %visible_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %visible_size.addr, metadata !5508, metadata !DIExpression()), !dbg !5528
  store i64 %default_page_size, ptr %default_page_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %default_page_size.addr, metadata !5509, metadata !DIExpression()), !dbg !5529
  store i64 %chunk_size, ptr %chunk_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %chunk_size.addr, metadata !5510, metadata !DIExpression()), !dbg !5530
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #17, !dbg !5531
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5511, metadata !DIExpression()), !dbg !5532
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !5512, metadata !DIExpression()), !dbg !5534
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !5535
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5513, metadata !DIExpression()), !dbg !5536
  %call = call noalias ptr @kzalloc(i64 noundef 248, i32 noundef 3264) #18, !dbg !5537
  store ptr %call, ptr %bman, align 8, !dbg !5538
  %0 = load ptr, ptr %bman, align 8, !dbg !5539
  %tobool = icmp ne ptr %0, null, !dbg !5539
  br i1 %tobool, label %if.end, label %if.then, !dbg !5541

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5542

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bman, align 8, !dbg !5543
  %mm = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %1, i32 0, i32 1, !dbg !5544
  %2 = load i64, ptr %size.addr, align 8, !dbg !5545
  %3 = load i64, ptr %chunk_size.addr, align 8, !dbg !5546
  %call1 = call i32 @drm_buddy_init(ptr noundef %mm, i64 noundef %2, i64 noundef %3) #19, !dbg !5547
  store i32 %call1, ptr %err, align 4, !dbg !5548
  %4 = load i32, ptr %err, align 4, !dbg !5549
  %tobool2 = icmp ne i32 %4, 0, !dbg !5549
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !5551

if.then3:                                         ; preds = %if.end
  br label %err_free_bman, !dbg !5552

if.end4:                                          ; preds = %if.end
  br label %do.body, !dbg !5553

do.body:                                          ; preds = %if.end4
  %5 = load ptr, ptr %bman, align 8, !dbg !5554
  %lock = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %5, i32 0, i32 3, !dbg !5554
  call void @__mutex_init(ptr noundef %lock, ptr noundef @.str, ptr noundef @i915_ttm_buddy_man_init.__key) #19, !dbg !5554
  br label %do.cond, !dbg !5554

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5554

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %bman, align 8, !dbg !5556
  %reserved = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %6, i32 0, i32 2, !dbg !5557
  call void @INIT_LIST_HEAD(ptr noundef %reserved) #19, !dbg !5558
  %7 = load i64, ptr %default_page_size.addr, align 8, !dbg !5559
  %8 = load ptr, ptr %bman, align 8, !dbg !5560
  %default_page_size5 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %8, i32 0, i32 7, !dbg !5561
  store i64 %7, ptr %default_page_size5, align 8, !dbg !5562
  %9 = load i64, ptr %visible_size.addr, align 8, !dbg !5563
  %shr = lshr i64 %9, 12, !dbg !5564
  %10 = load ptr, ptr %bman, align 8, !dbg !5565
  %visible_size6 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %10, i32 0, i32 4, !dbg !5566
  store i64 %shr, ptr %visible_size6, align 8, !dbg !5567
  %11 = load ptr, ptr %bman, align 8, !dbg !5568
  %visible_size7 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %11, i32 0, i32 4, !dbg !5569
  %12 = load i64, ptr %visible_size7, align 8, !dbg !5569
  %13 = load ptr, ptr %bman, align 8, !dbg !5570
  %visible_avail = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %13, i32 0, i32 5, !dbg !5571
  store i64 %12, ptr %visible_avail, align 8, !dbg !5572
  %14 = load ptr, ptr %bman, align 8, !dbg !5573
  %manager = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %14, i32 0, i32 0, !dbg !5574
  store ptr %manager, ptr %man, align 8, !dbg !5575
  %15 = load i8, ptr %use_tt.addr, align 1, !dbg !5576, !range !5577, !noundef !787
  %tobool8 = trunc i8 %15 to i1, !dbg !5576
  %16 = load ptr, ptr %man, align 8, !dbg !5578
  %use_tt9 = getelementptr inbounds %struct.ttm_resource_manager, ptr %16, i32 0, i32 1, !dbg !5579
  %frombool10 = zext i1 %tobool8 to i8, !dbg !5580
  store i8 %frombool10, ptr %use_tt9, align 1, !dbg !5580
  %17 = load ptr, ptr %man, align 8, !dbg !5581
  %func = getelementptr inbounds %struct.ttm_resource_manager, ptr %17, i32 0, i32 4, !dbg !5582
  store ptr @i915_ttm_buddy_manager_func, ptr %func, align 8, !dbg !5583
  %18 = load ptr, ptr %man, align 8, !dbg !5584
  %19 = load ptr, ptr %bdev.addr, align 8, !dbg !5585
  %20 = load ptr, ptr %bman, align 8, !dbg !5586
  %mm11 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %20, i32 0, i32 1, !dbg !5587
  %size12 = getelementptr inbounds %struct.drm_buddy, ptr %mm11, i32 0, i32 5, !dbg !5588
  %21 = load i64, ptr %size12, align 8, !dbg !5588
  %shr13 = lshr i64 %21, 12, !dbg !5589
  call void @ttm_resource_manager_init(ptr noundef %18, ptr noundef %19, i64 noundef %shr13) #19, !dbg !5590
  %22 = load ptr, ptr %man, align 8, !dbg !5591
  call void @ttm_resource_manager_set_used(ptr noundef %22, i1 noundef zeroext true) #19, !dbg !5592
  %23 = load ptr, ptr %bdev.addr, align 8, !dbg !5593
  %24 = load i32, ptr %type.addr, align 4, !dbg !5594
  %25 = load ptr, ptr %man, align 8, !dbg !5595
  call void @ttm_set_driver_manager(ptr noundef %23, i32 noundef %24, ptr noundef %25) #19, !dbg !5596
  store i32 0, ptr %retval, align 4, !dbg !5597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5597

err_free_bman:                                    ; preds = %if.then3
  call void @llvm.dbg.label(metadata !5514), !dbg !5598
  %26 = load ptr, ptr %bman, align 8, !dbg !5599
  call void @kfree(ptr noundef %26) #19, !dbg !5600
  %27 = load i32, ptr %err, align 4, !dbg !5601
  store i32 %27, ptr %retval, align 4, !dbg !5602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5602

cleanup:                                          ; preds = %err_free_bman, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !5603
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #17, !dbg !5603
  %28 = load i32, ptr %retval, align 4, !dbg !5603
  ret i32 %28, !dbg !5603
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !5604 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5608, metadata !DIExpression()), !dbg !5610
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5609, metadata !DIExpression()), !dbg !5611
  %0 = load i64, ptr %size.addr, align 8, !dbg !5612
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5613
  %or = or i32 %1, 256, !dbg !5614
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !5615
  ret ptr %call, !dbg !5616
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5617 dso_local i32 @drm_buddy_init(ptr noundef, i64 noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5620 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !5624 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !5629, metadata !DIExpression()), !dbg !5630
  br label %do.body, !dbg !5631

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !5632

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !5634

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !5632

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !5636
  %1 = load ptr, ptr %list.addr, align 8, !dbg !5636
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !5636
  store volatile ptr %0, ptr %next, align 8, !dbg !5636
  br label %do.end3, !dbg !5636

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !5632

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !5638

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !5639

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !5641

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !5639

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !5643
  %3 = load ptr, ptr %list.addr, align 8, !dbg !5643
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !5643
  store volatile ptr %2, ptr %prev, align 8, !dbg !5643
  br label %do.end9, !dbg !5643

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !5639

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !5645
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5646 dso_local void @ttm_resource_manager_init(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_resource_manager_set_used(ptr noundef %man, i1 noundef zeroext %used) #5 align 16 !dbg !5649 {
entry:
  %man.addr = alloca ptr, align 8
  %used.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5653, metadata !DIExpression()), !dbg !5663
  %frombool = zext i1 %used to i8
  store i8 %frombool, ptr %used.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %used.addr, metadata !5654, metadata !DIExpression()), !dbg !5664
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #17, !dbg !5665
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5655, metadata !DIExpression()), !dbg !5666
  store i32 0, ptr %i, align 4, !dbg !5667
  br label %for.cond, !dbg !5668

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5669
  %cmp = icmp ult i32 %0, 4, !dbg !5670
  br i1 %cmp, label %for.body, label %for.end, !dbg !5671

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5672
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5656, metadata !DIExpression()), !dbg !5672
  %1 = load ptr, ptr %man.addr, align 8, !dbg !5672
  %lru = getelementptr inbounds %struct.ttm_resource_manager, ptr %1, i32 0, i32 7, !dbg !5672
  %2 = load i32, ptr %i, align 4, !dbg !5672
  %idxprom = sext i32 %2 to i64, !dbg !5672
  %arrayidx = getelementptr [4 x %struct.list_head], ptr %lru, i64 0, i64 %idxprom, !dbg !5672
  %call = call i32 @list_empty(ptr noundef %arrayidx) #19, !dbg !5672
  %tobool = icmp ne i32 %call, 0, !dbg !5672
  %lnot = xor i1 %tobool, true, !dbg !5672
  %lnot1 = xor i1 %lnot, true, !dbg !5672
  %lnot2 = xor i1 %lnot1, true, !dbg !5672
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5672
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5672
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !5673
  %tobool3 = icmp ne i32 %3, 0, !dbg !5673
  %lnot4 = xor i1 %tobool3, true, !dbg !5673
  %lnot6 = xor i1 %lnot4, true, !dbg !5673
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5673
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5673
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5673
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5673
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5672

if.then:                                          ; preds = %for.body
  br label %do.body, !dbg !5673

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5674
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5660, metadata !DIExpression()), !dbg !5674
  store i32 2305, ptr %__flags, align 4, !dbg !5674
  br label %do.body9, !dbg !5674

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5675

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5675

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5674

do.body10:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !5677
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.8, i32 313, i32 %4, i64 12) #17, !dbg !5677, !srcloc !5679
  br label %do.cond11, !dbg !5677

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5677

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5674

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5680

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5680

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5673
  br label %do.cond16, !dbg !5674

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5674

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5674

if.end:                                           ; preds = %do.end17, %for.body
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !5672
  %tobool18 = icmp ne i32 %5, 0, !dbg !5672
  %lnot19 = xor i1 %tobool18, true, !dbg !5672
  %lnot21 = xor i1 %lnot19, true, !dbg !5672
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !5672
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !5672
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !5672
  store i64 %expval24, ptr %tmp, align 8, !dbg !5673
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5682
  %6 = load i64, ptr %tmp, align 8, !dbg !5672
  br label %for.inc, !dbg !5682

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !5683
  %inc = add i32 %7, 1, !dbg !5683
  store i32 %inc, ptr %i, align 4, !dbg !5683
  br label %for.cond, !dbg !5684, !llvm.loop !5685

for.end:                                          ; preds = %for.cond
  %8 = load i8, ptr %used.addr, align 1, !dbg !5689, !range !5577, !noundef !787
  %tobool25 = trunc i8 %8 to i1, !dbg !5689
  %9 = load ptr, ptr %man.addr, align 8, !dbg !5690
  %use_type = getelementptr inbounds %struct.ttm_resource_manager, ptr %9, i32 0, i32 0, !dbg !5691
  %frombool26 = zext i1 %tobool25 to i8, !dbg !5692
  store i8 %frombool26, ptr %use_type, align 8, !dbg !5692
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #17, !dbg !5693
  ret void, !dbg !5693
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_set_driver_manager(ptr noundef %bdev, i32 noundef %type, ptr noundef %manager) #5 align 16 !dbg !5694 {
entry:
  %bdev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %manager.addr = alloca ptr, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5698, metadata !DIExpression()), !dbg !5701
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5699, metadata !DIExpression()), !dbg !5702
  store ptr %manager, ptr %manager.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %manager.addr, metadata !5700, metadata !DIExpression()), !dbg !5703
  br label %do.body, !dbg !5704

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %type.addr, align 4, !dbg !5705
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5705
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5705

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %type.addr, align 4, !dbg !5705
  %cmp = icmp sge i32 %2, 8, !dbg !5705
  br i1 %cmp, label %if.then, label %if.end, !dbg !5708

if.then:                                          ; preds = %land.lhs.true
  call void @__compiletime_assert_295() #20, !dbg !5705, !srcloc !5709
  unreachable, !dbg !5705

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.end, !dbg !5708

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %manager.addr, align 8, !dbg !5710
  %4 = load ptr, ptr %bdev.addr, align 8, !dbg !5711
  %man_drv = getelementptr inbounds %struct.ttm_device, ptr %4, i32 0, i32 3, !dbg !5712
  %5 = load i32, ptr %type.addr, align 4, !dbg !5713
  %idxprom = sext i32 %5 to i64, !dbg !5711
  %arrayidx = getelementptr [8 x ptr], ptr %man_drv, i64 0, i64 %idxprom, !dbg !5711
  store ptr %3, ptr %arrayidx, align 8, !dbg !5714
  ret void, !dbg !5715
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5716 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_ttm_buddy_man_fini(ptr noundef %bdev, i32 noundef %type) #0 align 16 !dbg !5719 {
entry:
  %retval = alloca i32, align 4
  %bdev.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %man = alloca ptr, align 8
  %bman = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5723, metadata !DIExpression()), !dbg !5734
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !5724, metadata !DIExpression()), !dbg !5735
  call void @llvm.lifetime.start.p0(i64 8, ptr %man) #17, !dbg !5736
  call void @llvm.dbg.declare(metadata ptr %man, metadata !5725, metadata !DIExpression()), !dbg !5737
  %0 = load ptr, ptr %bdev.addr, align 8, !dbg !5738
  %1 = load i32, ptr %type.addr, align 4, !dbg !5739
  %call = call ptr @ttm_manager_type(ptr noundef %0, i32 noundef %1) #19, !dbg !5740
  store ptr %call, ptr %man, align 8, !dbg !5737
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !5741
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !5726, metadata !DIExpression()), !dbg !5742
  %2 = load ptr, ptr %man, align 8, !dbg !5743
  %call1 = call ptr @to_buddy_manager(ptr noundef %2) #19, !dbg !5744
  store ptr %call1, ptr %bman, align 8, !dbg !5742
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #17, !dbg !5745
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5727, metadata !DIExpression()), !dbg !5746
  %3 = load ptr, ptr %bman, align 8, !dbg !5747
  %mm2 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %3, i32 0, i32 1, !dbg !5748
  store ptr %mm2, ptr %mm, align 8, !dbg !5746
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5749
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5728, metadata !DIExpression()), !dbg !5750
  %4 = load ptr, ptr %man, align 8, !dbg !5751
  call void @ttm_resource_manager_set_used(ptr noundef %4, i1 noundef zeroext false) #19, !dbg !5752
  %5 = load ptr, ptr %bdev.addr, align 8, !dbg !5753
  %6 = load ptr, ptr %man, align 8, !dbg !5754
  %call3 = call i32 @ttm_resource_manager_evict_all(ptr noundef %5, ptr noundef %6) #19, !dbg !5755
  store i32 %call3, ptr %ret, align 4, !dbg !5756
  %7 = load i32, ptr %ret, align 4, !dbg !5757
  %tobool = icmp ne i32 %7, 0, !dbg !5757
  br i1 %tobool, label %if.then, label %if.end, !dbg !5759

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %ret, align 4, !dbg !5760
  store i32 %8, ptr %retval, align 4, !dbg !5761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5761

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %bdev.addr, align 8, !dbg !5762
  %10 = load i32, ptr %type.addr, align 4, !dbg !5763
  call void @ttm_set_driver_manager(ptr noundef %9, i32 noundef %10, ptr noundef null) #19, !dbg !5764
  %11 = load ptr, ptr %bman, align 8, !dbg !5765
  %lock = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %11, i32 0, i32 3, !dbg !5766
  call void @mutex_lock(ptr noundef %lock) #19, !dbg !5767
  %12 = load ptr, ptr %mm, align 8, !dbg !5768
  %13 = load ptr, ptr %bman, align 8, !dbg !5769
  %reserved = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %13, i32 0, i32 2, !dbg !5770
  call void @drm_buddy_free_list(ptr noundef %12, ptr noundef %reserved) #19, !dbg !5771
  %14 = load ptr, ptr %mm, align 8, !dbg !5772
  call void @drm_buddy_fini(ptr noundef %14) #19, !dbg !5773
  %15 = load ptr, ptr %bman, align 8, !dbg !5774
  %visible_reserved = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %15, i32 0, i32 6, !dbg !5775
  %16 = load i64, ptr %visible_reserved, align 8, !dbg !5775
  %17 = load ptr, ptr %bman, align 8, !dbg !5776
  %visible_avail = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %17, i32 0, i32 5, !dbg !5777
  %18 = load i64, ptr %visible_avail, align 8, !dbg !5778
  %add = add i64 %18, %16, !dbg !5778
  store i64 %add, ptr %visible_avail, align 8, !dbg !5778
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5779
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5729, metadata !DIExpression()), !dbg !5779
  %19 = load ptr, ptr %bman, align 8, !dbg !5779
  %visible_avail4 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %19, i32 0, i32 5, !dbg !5779
  %20 = load i64, ptr %visible_avail4, align 8, !dbg !5779
  %21 = load ptr, ptr %bman, align 8, !dbg !5779
  %visible_size = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %21, i32 0, i32 4, !dbg !5779
  %22 = load i64, ptr %visible_size, align 8, !dbg !5779
  %cmp = icmp ne i64 %20, %22, !dbg !5779
  %lnot = xor i1 %cmp, true, !dbg !5779
  %lnot5 = xor i1 %lnot, true, !dbg !5779
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5779
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5779
  %23 = load i32, ptr %__ret_warn_on, align 4, !dbg !5780
  %tobool6 = icmp ne i32 %23, 0, !dbg !5780
  %lnot7 = xor i1 %tobool6, true, !dbg !5780
  %lnot9 = xor i1 %lnot7, true, !dbg !5780
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5780
  %conv = sext i32 %lnot.ext10 to i64, !dbg !5780
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5780
  %tobool11 = icmp ne i64 %expval, 0, !dbg !5780
  br i1 %tobool11, label %if.then12, label %if.end22, !dbg !5779

if.then12:                                        ; preds = %if.end
  br label %do.body, !dbg !5780

do.body:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #17, !dbg !5781
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5731, metadata !DIExpression()), !dbg !5781
  store i32 2307, ptr %__flags, align 4, !dbg !5781
  br label %do.body13, !dbg !5781

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !5782

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !5782

do.end:                                           ; preds = %do.cond
  br label %do.body14, !dbg !5781

do.body14:                                        ; preds = %do.end
  %24 = load i32, ptr %__flags, align 4, !dbg !5784
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 368, i32 %24, i64 12) #17, !dbg !5784, !srcloc !5786
  br label %do.cond15, !dbg !5784

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5784

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5781

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5787

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5787

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #17, !dbg !5780
  br label %do.cond20, !dbg !5781

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5781

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !5781

if.end22:                                         ; preds = %do.end21, %if.end
  %25 = load i32, ptr %__ret_warn_on, align 4, !dbg !5779
  %tobool23 = icmp ne i32 %25, 0, !dbg !5779
  %lnot24 = xor i1 %tobool23, true, !dbg !5779
  %lnot26 = xor i1 %lnot24, true, !dbg !5779
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !5779
  %conv28 = sext i32 %lnot.ext27 to i64, !dbg !5779
  %expval29 = call i64 @llvm.expect.i64(i64 %conv28, i64 0), !dbg !5779
  store i64 %expval29, ptr %tmp, align 8, !dbg !5780
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #17, !dbg !5789
  %26 = load i64, ptr %tmp, align 8, !dbg !5779
  %27 = load ptr, ptr %bman, align 8, !dbg !5790
  %lock30 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %27, i32 0, i32 3, !dbg !5791
  call void @mutex_unlock(ptr noundef %lock30) #19, !dbg !5792
  %28 = load ptr, ptr %man, align 8, !dbg !5793
  call void @ttm_resource_manager_cleanup(ptr noundef %28) #19, !dbg !5794
  %29 = load ptr, ptr %bman, align 8, !dbg !5795
  call void @kfree(ptr noundef %29) #19, !dbg !5796
  store i32 0, ptr %retval, align 4, !dbg !5797
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5797

cleanup:                                          ; preds = %if.end22, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5798
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #17, !dbg !5798
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !5798
  call void @llvm.lifetime.end.p0(i64 8, ptr %man) #17, !dbg !5798
  %30 = load i32, ptr %retval, align 4, !dbg !5798
  ret i32 %30, !dbg !5798
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ttm_manager_type(ptr noundef %bdev, i32 noundef %mem_type) #5 align 16 !dbg !5799 {
entry:
  %bdev.addr = alloca ptr, align 8
  %mem_type.addr = alloca i32, align 4
  store ptr %bdev, ptr %bdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bdev.addr, metadata !5803, metadata !DIExpression()), !dbg !5805
  store i32 %mem_type, ptr %mem_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mem_type.addr, metadata !5804, metadata !DIExpression()), !dbg !5806
  br label %do.body, !dbg !5807

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %mem_type.addr, align 4, !dbg !5808
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !5808
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !5808

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %mem_type.addr, align 4, !dbg !5808
  %cmp = icmp sge i32 %2, 8, !dbg !5808
  br i1 %cmp, label %if.then, label %if.end, !dbg !5811

if.then:                                          ; preds = %land.lhs.true
  call void @__compiletime_assert_294() #20, !dbg !5808, !srcloc !5812
  unreachable, !dbg !5808

if.end:                                           ; preds = %land.lhs.true, %do.body
  br label %do.end, !dbg !5811

do.end:                                           ; preds = %if.end
  %3 = load ptr, ptr %bdev.addr, align 8, !dbg !5813
  %man_drv = getelementptr inbounds %struct.ttm_device, ptr %3, i32 0, i32 3, !dbg !5814
  %4 = load i32, ptr %mem_type.addr, align 4, !dbg !5815
  %idxprom = sext i32 %4 to i64, !dbg !5813
  %arrayidx = getelementptr [8 x ptr], ptr %man_drv, i64 0, i64 %idxprom, !dbg !5813
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !5813
  ret ptr %5, !dbg !5816
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_buddy_manager(ptr noundef %man) #0 align 16 !dbg !5817 {
entry:
  %man.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5821, metadata !DIExpression()), !dbg !5824
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !5825
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5822, metadata !DIExpression()), !dbg !5825
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5825
  store ptr %0, ptr %__mptr, align 8, !dbg !5825
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5825
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5825
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5825
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !5826
  %2 = load ptr, ptr %tmp, align 8, !dbg !5825
  ret ptr %2, !dbg !5827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5828 dso_local i32 @ttm_resource_manager_evict_all(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5831 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5834 dso_local void @drm_buddy_free_list(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5837 dso_local void @drm_buddy_fini(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5840 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ttm_resource_manager_cleanup(ptr noundef %man) #5 align 16 !dbg !5841 {
entry:
  %man.addr = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5845, metadata !DIExpression()), !dbg !5846
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5847
  %move = getelementptr inbounds %struct.ttm_resource_manager, ptr %0, i32 0, i32 6, !dbg !5848
  %1 = load ptr, ptr %move, align 8, !dbg !5848
  call void @dma_fence_put(ptr noundef %1) #19, !dbg !5849
  %2 = load ptr, ptr %man.addr, align 8, !dbg !5850
  %move1 = getelementptr inbounds %struct.ttm_resource_manager, ptr %2, i32 0, i32 6, !dbg !5851
  store ptr null, ptr %move1, align 8, !dbg !5852
  ret void, !dbg !5853
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @i915_ttm_buddy_man_reserve(ptr noundef %man, i64 noundef %start, i64 noundef %size) #0 align 16 !dbg !5854 {
entry:
  %man.addr = alloca ptr, align 8
  %start.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %bman = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %fpfn = alloca i64, align 8
  %flags = alloca i64, align 8
  %ret = alloca i32, align 4
  %lpfn = alloca i64, align 8
  %visible = alloca i64, align 8
  %__UNIQUE_ID___x303 = alloca i64, align 8
  %__UNIQUE_ID___y304 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5858, metadata !DIExpression()), !dbg !5873
  store i64 %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !5859, metadata !DIExpression()), !dbg !5874
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5860, metadata !DIExpression()), !dbg !5875
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !5876
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !5861, metadata !DIExpression()), !dbg !5877
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5878
  %call = call ptr @to_buddy_manager(ptr noundef %0) #19, !dbg !5879
  store ptr %call, ptr %bman, align 8, !dbg !5877
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #17, !dbg !5880
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !5862, metadata !DIExpression()), !dbg !5881
  %1 = load ptr, ptr %bman, align 8, !dbg !5882
  %mm1 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %1, i32 0, i32 1, !dbg !5883
  store ptr %mm1, ptr %mm, align 8, !dbg !5881
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpfn) #17, !dbg !5884
  call void @llvm.dbg.declare(metadata ptr %fpfn, metadata !5863, metadata !DIExpression()), !dbg !5885
  %2 = load i64, ptr %start.addr, align 8, !dbg !5886
  %shr = lshr i64 %2, 12, !dbg !5887
  store i64 %shr, ptr %fpfn, align 8, !dbg !5885
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #17, !dbg !5888
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5864, metadata !DIExpression()), !dbg !5889
  store i64 0, ptr %flags, align 8, !dbg !5889
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #17, !dbg !5890
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5865, metadata !DIExpression()), !dbg !5891
  %3 = load i64, ptr %flags, align 8, !dbg !5892
  %or = or i64 %3, 1, !dbg !5892
  store i64 %or, ptr %flags, align 8, !dbg !5892
  %4 = load ptr, ptr %bman, align 8, !dbg !5893
  %lock = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %4, i32 0, i32 3, !dbg !5894
  call void @mutex_lock(ptr noundef %lock) #19, !dbg !5895
  %5 = load ptr, ptr %mm, align 8, !dbg !5896
  %6 = load i64, ptr %start.addr, align 8, !dbg !5897
  %7 = load i64, ptr %start.addr, align 8, !dbg !5898
  %8 = load i64, ptr %size.addr, align 8, !dbg !5899
  %add = add i64 %7, %8, !dbg !5900
  %9 = load i64, ptr %size.addr, align 8, !dbg !5901
  %10 = load ptr, ptr %mm, align 8, !dbg !5902
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %10, i32 0, i32 4, !dbg !5903
  %11 = load i64, ptr %chunk_size, align 8, !dbg !5903
  %12 = load ptr, ptr %bman, align 8, !dbg !5904
  %reserved = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %12, i32 0, i32 2, !dbg !5905
  %13 = load i64, ptr %flags, align 8, !dbg !5906
  %call2 = call i32 @drm_buddy_alloc_blocks(ptr noundef %5, i64 noundef %6, i64 noundef %add, i64 noundef %9, i64 noundef %11, ptr noundef %reserved, i64 noundef %13) #19, !dbg !5907
  store i32 %call2, ptr %ret, align 4, !dbg !5908
  %14 = load i64, ptr %fpfn, align 8, !dbg !5909
  %15 = load ptr, ptr %bman, align 8, !dbg !5910
  %visible_size = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %15, i32 0, i32 4, !dbg !5911
  %16 = load i64, ptr %visible_size, align 8, !dbg !5911
  %cmp = icmp ult i64 %14, %16, !dbg !5912
  br i1 %cmp, label %if.then, label %if.end, !dbg !5913

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpfn) #17, !dbg !5914
  call void @llvm.dbg.declare(metadata ptr %lpfn, metadata !5866, metadata !DIExpression()), !dbg !5915
  %17 = load i64, ptr %fpfn, align 8, !dbg !5916
  %18 = load i64, ptr %size.addr, align 8, !dbg !5917
  %shr3 = lshr i64 %18, 12, !dbg !5918
  %add4 = add i64 %17, %shr3, !dbg !5919
  store i64 %add4, ptr %lpfn, align 8, !dbg !5915
  call void @llvm.lifetime.start.p0(i64 8, ptr %visible) #17, !dbg !5920
  call void @llvm.dbg.declare(metadata ptr %visible, metadata !5869, metadata !DIExpression()), !dbg !5921
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x303) #17, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x303, metadata !5870, metadata !DIExpression()), !dbg !5922
  %19 = load i64, ptr %lpfn, align 8, !dbg !5922
  store i64 %19, ptr %__UNIQUE_ID___x303, align 8, !dbg !5922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y304) #17, !dbg !5922
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y304, metadata !5872, metadata !DIExpression()), !dbg !5922
  %20 = load ptr, ptr %bman, align 8, !dbg !5922
  %visible_size5 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %20, i32 0, i32 4, !dbg !5922
  %21 = load i64, ptr %visible_size5, align 8, !dbg !5922
  store i64 %21, ptr %__UNIQUE_ID___y304, align 8, !dbg !5922
  %22 = load i64, ptr %__UNIQUE_ID___x303, align 8, !dbg !5922
  %23 = load i64, ptr %__UNIQUE_ID___y304, align 8, !dbg !5922
  %cmp6 = icmp ult i64 %22, %23, !dbg !5922
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !5922

cond.true:                                        ; preds = %if.then
  %24 = load i64, ptr %__UNIQUE_ID___x303, align 8, !dbg !5922
  br label %cond.end, !dbg !5922

cond.false:                                       ; preds = %if.then
  %25 = load i64, ptr %__UNIQUE_ID___y304, align 8, !dbg !5922
  br label %cond.end, !dbg !5922

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !5922
  store i64 %cond, ptr %tmp, align 8, !dbg !5922
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y304) #17, !dbg !5923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x303) #17, !dbg !5923
  %26 = load i64, ptr %tmp, align 8, !dbg !5922
  %27 = load i64, ptr %fpfn, align 8, !dbg !5924
  %sub = sub i64 %26, %27, !dbg !5925
  store i64 %sub, ptr %visible, align 8, !dbg !5921
  %28 = load i64, ptr %visible, align 8, !dbg !5926
  %29 = load ptr, ptr %bman, align 8, !dbg !5927
  %visible_reserved = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %29, i32 0, i32 6, !dbg !5928
  %30 = load i64, ptr %visible_reserved, align 8, !dbg !5929
  %add7 = add i64 %30, %28, !dbg !5929
  store i64 %add7, ptr %visible_reserved, align 8, !dbg !5929
  %31 = load i64, ptr %visible, align 8, !dbg !5930
  %32 = load ptr, ptr %bman, align 8, !dbg !5931
  %visible_avail = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %32, i32 0, i32 5, !dbg !5932
  %33 = load i64, ptr %visible_avail, align 8, !dbg !5933
  %sub8 = sub i64 %33, %31, !dbg !5933
  store i64 %sub8, ptr %visible_avail, align 8, !dbg !5933
  call void @llvm.lifetime.end.p0(i64 8, ptr %visible) #17, !dbg !5934
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpfn) #17, !dbg !5934
  br label %if.end, !dbg !5935

if.end:                                           ; preds = %cond.end, %entry
  %34 = load ptr, ptr %bman, align 8, !dbg !5936
  %lock9 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %34, i32 0, i32 3, !dbg !5937
  call void @mutex_unlock(ptr noundef %lock9) #19, !dbg !5938
  %35 = load i32, ptr %ret, align 4, !dbg !5939
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #17, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #17, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpfn) #17, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #17, !dbg !5940
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !5940
  ret i32 %35, !dbg !5941
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5942 dso_local i32 @drm_buddy_alloc_blocks(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @i915_ttm_buddy_man_visible_size(ptr noundef %man) #0 align 16 !dbg !5945 {
entry:
  %man.addr = alloca ptr, align 8
  %bman = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5949, metadata !DIExpression()), !dbg !5951
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !5952
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !5950, metadata !DIExpression()), !dbg !5953
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5954
  %call = call ptr @to_buddy_manager(ptr noundef %0) #19, !dbg !5955
  store ptr %call, ptr %bman, align 8, !dbg !5953
  %1 = load ptr, ptr %bman, align 8, !dbg !5956
  %visible_size = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %1, i32 0, i32 4, !dbg !5957
  %2 = load i64, ptr %visible_size, align 8, !dbg !5957
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !5958
  ret i64 %2, !dbg !5959
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @i915_ttm_buddy_man_avail(ptr noundef %man, ptr noundef %avail, ptr noundef %visible_avail) #0 align 16 !dbg !5960 {
entry:
  %man.addr = alloca ptr, align 8
  %avail.addr = alloca ptr, align 8
  %visible_avail.addr = alloca ptr, align 8
  %bman = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !5964, metadata !DIExpression()), !dbg !5968
  store ptr %avail, ptr %avail.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %avail.addr, metadata !5965, metadata !DIExpression()), !dbg !5969
  store ptr %visible_avail, ptr %visible_avail.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %visible_avail.addr, metadata !5966, metadata !DIExpression()), !dbg !5970
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !5971
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !5967, metadata !DIExpression()), !dbg !5972
  %0 = load ptr, ptr %man.addr, align 8, !dbg !5973
  %call = call ptr @to_buddy_manager(ptr noundef %0) #19, !dbg !5974
  store ptr %call, ptr %bman, align 8, !dbg !5972
  %1 = load ptr, ptr %bman, align 8, !dbg !5975
  %lock = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %1, i32 0, i32 3, !dbg !5976
  call void @mutex_lock(ptr noundef %lock) #19, !dbg !5977
  %2 = load ptr, ptr %bman, align 8, !dbg !5978
  %mm = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %2, i32 0, i32 1, !dbg !5979
  %avail1 = getelementptr inbounds %struct.drm_buddy, ptr %mm, i32 0, i32 6, !dbg !5980
  %3 = load i64, ptr %avail1, align 8, !dbg !5980
  %shr = lshr i64 %3, 12, !dbg !5981
  %4 = load ptr, ptr %avail.addr, align 8, !dbg !5982
  store i64 %shr, ptr %4, align 8, !dbg !5983
  %5 = load ptr, ptr %bman, align 8, !dbg !5984
  %visible_avail2 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %5, i32 0, i32 5, !dbg !5985
  %6 = load i64, ptr %visible_avail2, align 8, !dbg !5985
  %7 = load ptr, ptr %visible_avail.addr, align 8, !dbg !5986
  store i64 %6, ptr %7, align 8, !dbg !5987
  %8 = load ptr, ptr %bman, align 8, !dbg !5988
  %lock3 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %8, i32 0, i32 3, !dbg !5989
  call void @mutex_unlock(ptr noundef %lock3) #19, !dbg !5990
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !5991
  ret void, !dbg !5991
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !5992 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5994, metadata !DIExpression()), !dbg !5999
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5995, metadata !DIExpression()), !dbg !6000
  %0 = load i64, ptr %size.addr, align 8, !dbg !6001
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6002
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6003

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6004
  %tobool = icmp ne i64 %2, 0, !dbg !6004
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6005

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #17, !dbg !6006
  call void @llvm.dbg.declare(metadata ptr %index, metadata !5996, metadata !DIExpression()), !dbg !6007
  %3 = load i64, ptr %size.addr, align 8, !dbg !6008
  %cmp = icmp ugt i64 %3, 8192, !dbg !6010
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6011

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6012
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6013
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !6014
  store ptr %call, ptr %retval, align 8, !dbg !6015
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6015

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6016
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !6016
  store i32 %call2, ptr %index, align 4, !dbg !6017
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6018
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6019
  %9 = ptrtoint ptr %8 to i64, !dbg !6019
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !6020
  %idxprom = zext i32 %call3 to i64, !dbg !6021
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6021
  %10 = load i32, ptr %index, align 4, !dbg !6022
  %idxprom4 = zext i32 %10 to i64, !dbg !6021
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6021
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6021
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6023
  %13 = load i64, ptr %size.addr, align 8, !dbg !6024
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6025
  store ptr %call6, ptr %retval, align 8, !dbg !6026
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6026

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #17, !dbg !6027
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6028
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6029
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !6030
  store ptr %call8, ptr %retval, align 8, !dbg !6031
  br label %return, !dbg !6031

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6032
  ret ptr %16, !dbg !6032
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6033 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !6034 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6038, metadata !DIExpression()), !dbg !6040
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6039, metadata !DIExpression()), !dbg !6041
  %0 = load i64, ptr %size.addr, align 8, !dbg !6042
  %tobool = icmp ne i64 %0, 0, !dbg !6042
  br i1 %tobool, label %if.end, label %if.then, !dbg !6044

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6045
  br label %return, !dbg !6045

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6046
  %cmp = icmp ule i64 %1, 8, !dbg !6048
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6049

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6050
  br label %return, !dbg !6050

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6051
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6053
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6054

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6055
  %cmp4 = icmp ule i64 %3, 96, !dbg !6056
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6057

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6058
  br label %return, !dbg !6058

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6059
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6061
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6062

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6063
  %cmp9 = icmp ule i64 %5, 192, !dbg !6064
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6065

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6066
  br label %return, !dbg !6066

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6067
  %cmp12 = icmp ule i64 %6, 8, !dbg !6069
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6070

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6071
  br label %return, !dbg !6071

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6072
  %cmp15 = icmp ule i64 %7, 16, !dbg !6074
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6075

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6076
  br label %return, !dbg !6076

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6077
  %cmp18 = icmp ule i64 %8, 32, !dbg !6079
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6080

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6081
  br label %return, !dbg !6081

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6082
  %cmp21 = icmp ule i64 %9, 64, !dbg !6084
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6085

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6086
  br label %return, !dbg !6086

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6087
  %cmp24 = icmp ule i64 %10, 128, !dbg !6089
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6090

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6091
  br label %return, !dbg !6091

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6092
  %cmp27 = icmp ule i64 %11, 256, !dbg !6094
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6095

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6096
  br label %return, !dbg !6096

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6097
  %cmp30 = icmp ule i64 %12, 512, !dbg !6099
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6100

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6101
  br label %return, !dbg !6101

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6102
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6104
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6105

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6106
  br label %return, !dbg !6106

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6107
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6109
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6110

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6111
  br label %return, !dbg !6111

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6112
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6114
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6115

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6116
  br label %return, !dbg !6116

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6117
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6119
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6120

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6121
  br label %return, !dbg !6121

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6122
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6124
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6125

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6126
  br label %return, !dbg !6126

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6127
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6129
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6130

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6131
  br label %return, !dbg !6131

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6132
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6134
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6135

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6136
  br label %return, !dbg !6136

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6137
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6139
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6140

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6141
  br label %return, !dbg !6141

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6142
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6144
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6145

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6146
  br label %return, !dbg !6146

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6147
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6149
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6150

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6151
  br label %return, !dbg !6151

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6152
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6154
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6155

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6156
  br label %return, !dbg !6156

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6157
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6159
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6160

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6161
  br label %return, !dbg !6161

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6162, !range !5577, !noundef !787
  %tobool69 = trunc i8 %25 to i1, !dbg !6162
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6164

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6165

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !6166, !srcloc !6169
  unreachable, !dbg !6166

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6170

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6171

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6172

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6174

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6172

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #17, !dbg !6176, !srcloc !6178
  br label %do.end75, !dbg !6176

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6172

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6179
  br label %return, !dbg !6179

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6180
  ret i32 %26, !dbg !6180
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6181 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !6187 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6191, metadata !DIExpression()), !dbg !6193
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6192, metadata !DIExpression()), !dbg !6194
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6195
  %and = and i32 %0, 17, !dbg !6195
  %cmp = icmp eq i32 %and, 0, !dbg !6195
  %lnot = xor i1 %cmp, true, !dbg !6195
  %lnot1 = xor i1 %lnot, true, !dbg !6195
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6195
  %conv = sext i32 %lnot.ext to i64, !dbg !6195
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6195
  %tobool = icmp ne i64 %expval, 0, !dbg !6195
  br i1 %tobool, label %if.then, label %if.end, !dbg !6197

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6198
  br label %return, !dbg !6198

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6199
  %and2 = and i32 %1, 1, !dbg !6201
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6201
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6202

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6203
  br label %return, !dbg !6203

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6204
  br label %return, !dbg !6204

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6206
  ret i32 %2, !dbg !6206
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6207 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6208 dso_local void @__compiletime_assert_117() #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @i915_ttm_buddy_man_alloc(ptr noundef %man, ptr noundef %bo, ptr noundef %place, ptr noundef %res) #0 align 16 !dbg !6209 {
entry:
  %retval = alloca i32, align 4
  %man.addr = alloca ptr, align 8
  %bo.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %bman = alloca ptr, align 8
  %bman_res = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %n_pages = alloca i64, align 8
  %lpfn = alloca i64, align 8
  %min_page_size = alloca i64, align 8
  %size = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %pages = alloca i64, align 8
  %original_size = alloca i64, align 8
  %block = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %start = alloca i64, align 8
  %end = alloca i64, align 8
  %__UNIQUE_ID___x301 = alloca i64, align 8
  %__UNIQUE_ID___y302 = alloca i64, align 8
  %tmp168 = alloca i64, align 8
  %__mptr179 = alloca ptr, align 8
  %tmp182 = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6211, metadata !DIExpression()), !dbg !6248
  store ptr %bo, ptr %bo.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bo.addr, metadata !6212, metadata !DIExpression()), !dbg !6249
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !6213, metadata !DIExpression()), !dbg !6250
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6214, metadata !DIExpression()), !dbg !6251
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !6252
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !6215, metadata !DIExpression()), !dbg !6253
  %0 = load ptr, ptr %man.addr, align 8, !dbg !6254
  %call = call ptr @to_buddy_manager(ptr noundef %0) #19, !dbg !6255
  store ptr %call, ptr %bman, align 8, !dbg !6253
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman_res) #17, !dbg !6256
  call void @llvm.dbg.declare(metadata ptr %bman_res, metadata !6216, metadata !DIExpression()), !dbg !6257
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #17, !dbg !6258
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !6217, metadata !DIExpression()), !dbg !6259
  %1 = load ptr, ptr %bman, align 8, !dbg !6260
  %mm1 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %1, i32 0, i32 1, !dbg !6261
  store ptr %mm1, ptr %mm, align 8, !dbg !6259
  call void @llvm.lifetime.start.p0(i64 8, ptr %n_pages) #17, !dbg !6262
  call void @llvm.dbg.declare(metadata ptr %n_pages, metadata !6218, metadata !DIExpression()), !dbg !6263
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpfn) #17, !dbg !6262
  call void @llvm.dbg.declare(metadata ptr %lpfn, metadata !6219, metadata !DIExpression()), !dbg !6264
  call void @llvm.lifetime.start.p0(i64 8, ptr %min_page_size) #17, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %min_page_size, metadata !6220, metadata !DIExpression()), !dbg !6266
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #17, !dbg !6267
  call void @llvm.dbg.declare(metadata ptr %size, metadata !6221, metadata !DIExpression()), !dbg !6268
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #17, !dbg !6269
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6222, metadata !DIExpression()), !dbg !6270
  %2 = load ptr, ptr %place.addr, align 8, !dbg !6271
  %lpfn2 = getelementptr inbounds %struct.ttm_place, ptr %2, i32 0, i32 1, !dbg !6272
  %3 = load i32, ptr %lpfn2, align 4, !dbg !6272
  %conv = zext i32 %3 to i64, !dbg !6271
  store i64 %conv, ptr %lpfn, align 8, !dbg !6273
  %4 = load i64, ptr %lpfn, align 8, !dbg !6274
  %tobool = icmp ne i64 %4, 0, !dbg !6274
  br i1 %tobool, label %if.end, label %if.then, !dbg !6276

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %man.addr, align 8, !dbg !6277
  %size3 = getelementptr inbounds %struct.ttm_resource_manager, ptr %5, i32 0, i32 3, !dbg !6278
  %6 = load i64, ptr %size3, align 8, !dbg !6278
  store i64 %6, ptr %lpfn, align 8, !dbg !6279
  br label %if.end, !dbg !6280

if.end:                                           ; preds = %if.then, %entry
  %call4 = call noalias ptr @kzalloc(i64 noundef 112, i32 noundef 3264) #18, !dbg !6281
  store ptr %call4, ptr %bman_res, align 8, !dbg !6282
  %7 = load ptr, ptr %bman_res, align 8, !dbg !6283
  %tobool5 = icmp ne ptr %7, null, !dbg !6283
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !6285

if.then6:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !6286
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6286

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %bo.addr, align 8, !dbg !6287
  %9 = load ptr, ptr %place.addr, align 8, !dbg !6288
  %10 = load ptr, ptr %bman_res, align 8, !dbg !6289
  %base = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %10, i32 0, i32 0, !dbg !6290
  call void @ttm_resource_init(ptr noundef %8, ptr noundef %9, ptr noundef %base) #19, !dbg !6291
  %11 = load ptr, ptr %bman_res, align 8, !dbg !6292
  %blocks = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %11, i32 0, i32 1, !dbg !6293
  call void @INIT_LIST_HEAD(ptr noundef %blocks) #19, !dbg !6294
  %12 = load ptr, ptr %mm, align 8, !dbg !6295
  %13 = load ptr, ptr %bman_res, align 8, !dbg !6296
  %mm8 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %13, i32 0, i32 4, !dbg !6297
  store ptr %12, ptr %mm8, align 8, !dbg !6298
  %14 = load ptr, ptr %place.addr, align 8, !dbg !6299
  %flags = getelementptr inbounds %struct.ttm_place, ptr %14, i32 0, i32 3, !dbg !6301
  %15 = load i32, ptr %flags, align 4, !dbg !6301
  %and = and i32 %15, 2, !dbg !6302
  %tobool9 = icmp ne i32 %and, 0, !dbg !6302
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !6303

if.then10:                                        ; preds = %if.end7
  %16 = load ptr, ptr %bman_res, align 8, !dbg !6304
  %flags11 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %16, i32 0, i32 2, !dbg !6305
  %17 = load i64, ptr %flags11, align 8, !dbg !6306
  %or = or i64 %17, 2, !dbg !6306
  store i64 %or, ptr %flags11, align 8, !dbg !6306
  br label %if.end12, !dbg !6304

if.end12:                                         ; preds = %if.then10, %if.end7
  %18 = load ptr, ptr %place.addr, align 8, !dbg !6307
  %fpfn = getelementptr inbounds %struct.ttm_place, ptr %18, i32 0, i32 0, !dbg !6309
  %19 = load i32, ptr %fpfn, align 4, !dbg !6309
  %tobool13 = icmp ne i32 %19, 0, !dbg !6307
  br i1 %tobool13, label %if.then16, label %lor.lhs.false, !dbg !6310

lor.lhs.false:                                    ; preds = %if.end12
  %20 = load i64, ptr %lpfn, align 8, !dbg !6311
  %21 = load ptr, ptr %man.addr, align 8, !dbg !6312
  %size14 = getelementptr inbounds %struct.ttm_resource_manager, ptr %21, i32 0, i32 3, !dbg !6313
  %22 = load i64, ptr %size14, align 8, !dbg !6313
  %cmp = icmp ne i64 %20, %22, !dbg !6314
  br i1 %cmp, label %if.then16, label %if.end19, !dbg !6315

if.then16:                                        ; preds = %lor.lhs.false, %if.end12
  %23 = load ptr, ptr %bman_res, align 8, !dbg !6316
  %flags17 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %23, i32 0, i32 2, !dbg !6317
  %24 = load i64, ptr %flags17, align 8, !dbg !6318
  %or18 = or i64 %24, 1, !dbg !6318
  store i64 %or18, ptr %flags17, align 8, !dbg !6318
  br label %if.end19, !dbg !6316

if.end19:                                         ; preds = %if.then16, %lor.lhs.false
  %25 = load ptr, ptr %bman_res, align 8, !dbg !6319
  %base20 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %25, i32 0, i32 0, !dbg !6320
  %size21 = getelementptr inbounds %struct.ttm_resource, ptr %base20, i32 0, i32 1, !dbg !6321
  %26 = load i64, ptr %size21, align 8, !dbg !6321
  store i64 %26, ptr %size, align 8, !dbg !6322
  %27 = load ptr, ptr %bman, align 8, !dbg !6323
  %default_page_size = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %27, i32 0, i32 7, !dbg !6324
  %28 = load i64, ptr %default_page_size, align 8, !dbg !6324
  store i64 %28, ptr %min_page_size, align 8, !dbg !6325
  %29 = load ptr, ptr %bo.addr, align 8, !dbg !6326
  %page_alignment = getelementptr inbounds %struct.ttm_buffer_object, ptr %29, i32 0, i32 3, !dbg !6328
  %30 = load i32, ptr %page_alignment, align 4, !dbg !6328
  %tobool22 = icmp ne i32 %30, 0, !dbg !6326
  br i1 %tobool22, label %if.then23, label %if.end26, !dbg !6329

if.then23:                                        ; preds = %if.end19
  %31 = load ptr, ptr %bo.addr, align 8, !dbg !6330
  %page_alignment24 = getelementptr inbounds %struct.ttm_buffer_object, ptr %31, i32 0, i32 3, !dbg !6331
  %32 = load i32, ptr %page_alignment24, align 4, !dbg !6331
  %shl = shl i32 %32, 12, !dbg !6332
  %conv25 = zext i32 %shl to i64, !dbg !6330
  store i64 %conv25, ptr %min_page_size, align 8, !dbg !6333
  br label %if.end26, !dbg !6334

if.end26:                                         ; preds = %if.then23, %if.end19
  %33 = load ptr, ptr %place.addr, align 8, !dbg !6335
  %fpfn27 = getelementptr inbounds %struct.ttm_place, ptr %33, i32 0, i32 0, !dbg !6336
  %34 = load i32, ptr %fpfn27, align 4, !dbg !6336
  %conv28 = zext i32 %34 to i64, !dbg !6335
  %35 = load ptr, ptr %bman_res, align 8, !dbg !6337
  %base29 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %35, i32 0, i32 0, !dbg !6337
  %size30 = getelementptr inbounds %struct.ttm_resource, ptr %base29, i32 0, i32 1, !dbg !6337
  %36 = load i64, ptr %size30, align 8, !dbg !6337
  %add = add i64 %36, 4096, !dbg !6337
  %sub = sub i64 %add, 1, !dbg !6337
  %shr = lshr i64 %sub, 12, !dbg !6337
  %add31 = add i64 %conv28, %shr, !dbg !6338
  %37 = load ptr, ptr %place.addr, align 8, !dbg !6339
  %lpfn32 = getelementptr inbounds %struct.ttm_place, ptr %37, i32 0, i32 1, !dbg !6340
  %38 = load i32, ptr %lpfn32, align 4, !dbg !6340
  %conv33 = zext i32 %38 to i64, !dbg !6339
  %cmp34 = icmp ne i64 %add31, %conv33, !dbg !6341
  br i1 %cmp34, label %land.lhs.true, label %if.end87, !dbg !6342

land.lhs.true:                                    ; preds = %if.end26
  %39 = load ptr, ptr %place.addr, align 8, !dbg !6343
  %flags36 = getelementptr inbounds %struct.ttm_place, ptr %39, i32 0, i32 3, !dbg !6344
  %40 = load i32, ptr %flags36, align 4, !dbg !6344
  %and37 = and i32 %40, 1, !dbg !6345
  %tobool38 = icmp ne i32 %and37, 0, !dbg !6345
  br i1 %tobool38, label %if.then39, label %if.end87, !dbg !6346

if.then39:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %pages) #17, !dbg !6347
  call void @llvm.dbg.declare(metadata ptr %pages, metadata !6223, metadata !DIExpression()), !dbg !6348
  %41 = load i64, ptr %size, align 8, !dbg !6349
  %42 = call i1 @llvm.is.constant.i64(i64 %41), !dbg !6349
  br i1 %42, label %cond.true, label %cond.false61, !dbg !6349

cond.true:                                        ; preds = %if.then39
  %43 = load i64, ptr %size, align 8, !dbg !6349
  %cmp40 = icmp eq i64 %43, 1, !dbg !6349
  br i1 %cmp40, label %cond.true42, label %cond.false, !dbg !6349

cond.true42:                                      ; preds = %cond.true
  br label %cond.end59, !dbg !6349

cond.false:                                       ; preds = %cond.true
  %44 = load i64, ptr %size, align 8, !dbg !6349
  %sub43 = sub i64 %44, 1, !dbg !6349
  %45 = call i1 @llvm.is.constant.i64(i64 %sub43), !dbg !6349
  br i1 %45, label %cond.true44, label %cond.false52, !dbg !6349

cond.true44:                                      ; preds = %cond.false
  %46 = load i64, ptr %size, align 8, !dbg !6349
  %sub45 = sub i64 %46, 1, !dbg !6349
  %cmp46 = icmp ult i64 %sub45, 2, !dbg !6349
  br i1 %cmp46, label %cond.true48, label %cond.false49, !dbg !6349

cond.true48:                                      ; preds = %cond.true44
  br label %cond.end, !dbg !6349

cond.false49:                                     ; preds = %cond.true44
  %47 = load i64, ptr %size, align 8, !dbg !6349
  %sub50 = sub i64 %47, 1, !dbg !6349
  %48 = call i64 @llvm.ctlz.i64(i64 %sub50, i1 true), !dbg !6349
  %cast = trunc i64 %48 to i32, !dbg !6349
  %sub51 = sub i32 63, %cast, !dbg !6349
  br label %cond.end, !dbg !6349

cond.end:                                         ; preds = %cond.false49, %cond.true48
  %cond = phi i32 [ 0, %cond.true48 ], [ %sub51, %cond.false49 ], !dbg !6349
  br label %cond.end55, !dbg !6349

cond.false52:                                     ; preds = %cond.false
  %49 = load i64, ptr %size, align 8, !dbg !6349
  %sub53 = sub i64 %49, 1, !dbg !6349
  %call54 = call i32 @__ilog2_u64(i64 noundef %sub53) #22, !dbg !6349
  br label %cond.end55, !dbg !6349

cond.end55:                                       ; preds = %cond.false52, %cond.end
  %cond56 = phi i32 [ %cond, %cond.end ], [ %call54, %cond.false52 ], !dbg !6349
  %add57 = add i32 %cond56, 1, !dbg !6349
  %sh_prom = zext i32 %add57 to i64, !dbg !6349
  %shl58 = shl i64 1, %sh_prom, !dbg !6349
  br label %cond.end59, !dbg !6349

cond.end59:                                       ; preds = %cond.end55, %cond.true42
  %cond60 = phi i64 [ 1, %cond.true42 ], [ %shl58, %cond.end55 ], !dbg !6349
  br label %cond.end63, !dbg !6349

cond.false61:                                     ; preds = %if.then39
  %50 = load i64, ptr %size, align 8, !dbg !6349
  %call62 = call i64 @__roundup_pow_of_two(i64 noundef %50) #22, !dbg !6349
  br label %cond.end63, !dbg !6349

cond.end63:                                       ; preds = %cond.false61, %cond.end59
  %cond64 = phi i64 [ %cond60, %cond.end59 ], [ %call62, %cond.false61 ], !dbg !6349
  store i64 %cond64, ptr %size, align 8, !dbg !6350
  %51 = load i64, ptr %size, align 8, !dbg !6351
  store i64 %51, ptr %min_page_size, align 8, !dbg !6352
  %52 = load i64, ptr %size, align 8, !dbg !6353
  %53 = load ptr, ptr %mm, align 8, !dbg !6354
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %53, i32 0, i32 4, !dbg !6354
  %54 = load i64, ptr %chunk_size, align 8, !dbg !6354
  %55 = call i1 @llvm.is.constant.i64(i64 %54), !dbg !6354
  br i1 %55, label %cond.true65, label %cond.false76, !dbg !6354

cond.true65:                                      ; preds = %cond.end63
  %56 = load ptr, ptr %mm, align 8, !dbg !6354
  %chunk_size66 = getelementptr inbounds %struct.drm_buddy, ptr %56, i32 0, i32 4, !dbg !6354
  %57 = load i64, ptr %chunk_size66, align 8, !dbg !6354
  %cmp67 = icmp ult i64 %57, 2, !dbg !6354
  br i1 %cmp67, label %cond.true69, label %cond.false70, !dbg !6354

cond.true69:                                      ; preds = %cond.true65
  br label %cond.end74, !dbg !6354

cond.false70:                                     ; preds = %cond.true65
  %58 = load ptr, ptr %mm, align 8, !dbg !6354
  %chunk_size71 = getelementptr inbounds %struct.drm_buddy, ptr %58, i32 0, i32 4, !dbg !6354
  %59 = load i64, ptr %chunk_size71, align 8, !dbg !6354
  %60 = call i64 @llvm.ctlz.i64(i64 %59, i1 true), !dbg !6354
  %cast72 = trunc i64 %60 to i32, !dbg !6354
  %sub73 = sub i32 63, %cast72, !dbg !6354
  br label %cond.end74, !dbg !6354

cond.end74:                                       ; preds = %cond.false70, %cond.true69
  %cond75 = phi i32 [ 0, %cond.true69 ], [ %sub73, %cond.false70 ], !dbg !6354
  br label %cond.end79, !dbg !6354

cond.false76:                                     ; preds = %cond.end63
  %61 = load ptr, ptr %mm, align 8, !dbg !6354
  %chunk_size77 = getelementptr inbounds %struct.drm_buddy, ptr %61, i32 0, i32 4, !dbg !6354
  %62 = load i64, ptr %chunk_size77, align 8, !dbg !6354
  %call78 = call i32 @__ilog2_u64(i64 noundef %62) #22, !dbg !6354
  br label %cond.end79, !dbg !6354

cond.end79:                                       ; preds = %cond.false76, %cond.end74
  %cond80 = phi i32 [ %cond75, %cond.end74 ], [ %call78, %cond.false76 ], !dbg !6354
  %sh_prom81 = zext i32 %cond80 to i64, !dbg !6355
  %shr82 = lshr i64 %52, %sh_prom81, !dbg !6355
  store i64 %shr82, ptr %pages, align 8, !dbg !6356
  %63 = load i64, ptr %pages, align 8, !dbg !6357
  %64 = load i64, ptr %lpfn, align 8, !dbg !6359
  %cmp83 = icmp ugt i64 %63, %64, !dbg !6360
  br i1 %cmp83, label %if.then85, label %if.end86, !dbg !6361

if.then85:                                        ; preds = %cond.end79
  %65 = load i64, ptr %pages, align 8, !dbg !6362
  store i64 %65, ptr %lpfn, align 8, !dbg !6363
  br label %if.end86, !dbg !6364

if.end86:                                         ; preds = %if.then85, %cond.end79
  call void @llvm.lifetime.end.p0(i64 8, ptr %pages) #17, !dbg !6365
  br label %if.end87, !dbg !6366

if.end87:                                         ; preds = %if.end86, %land.lhs.true, %if.end26
  %66 = load i64, ptr %size, align 8, !dbg !6367
  %67 = load i64, ptr %lpfn, align 8, !dbg !6369
  %shl88 = shl i64 %67, 12, !dbg !6370
  %cmp89 = icmp ugt i64 %66, %shl88, !dbg !6371
  br i1 %cmp89, label %if.then91, label %if.end92, !dbg !6372

if.then91:                                        ; preds = %if.end87
  store i32 -7, ptr %err, align 4, !dbg !6373
  br label %err_free_res, !dbg !6375

if.end92:                                         ; preds = %if.end87
  %68 = load i64, ptr %size, align 8, !dbg !6376
  %69 = load ptr, ptr %mm, align 8, !dbg !6377
  %chunk_size93 = getelementptr inbounds %struct.drm_buddy, ptr %69, i32 0, i32 4, !dbg !6377
  %70 = load i64, ptr %chunk_size93, align 8, !dbg !6377
  %71 = call i1 @llvm.is.constant.i64(i64 %70), !dbg !6377
  br i1 %71, label %cond.true94, label %cond.false105, !dbg !6377

cond.true94:                                      ; preds = %if.end92
  %72 = load ptr, ptr %mm, align 8, !dbg !6377
  %chunk_size95 = getelementptr inbounds %struct.drm_buddy, ptr %72, i32 0, i32 4, !dbg !6377
  %73 = load i64, ptr %chunk_size95, align 8, !dbg !6377
  %cmp96 = icmp ult i64 %73, 2, !dbg !6377
  br i1 %cmp96, label %cond.true98, label %cond.false99, !dbg !6377

cond.true98:                                      ; preds = %cond.true94
  br label %cond.end103, !dbg !6377

cond.false99:                                     ; preds = %cond.true94
  %74 = load ptr, ptr %mm, align 8, !dbg !6377
  %chunk_size100 = getelementptr inbounds %struct.drm_buddy, ptr %74, i32 0, i32 4, !dbg !6377
  %75 = load i64, ptr %chunk_size100, align 8, !dbg !6377
  %76 = call i64 @llvm.ctlz.i64(i64 %75, i1 true), !dbg !6377
  %cast101 = trunc i64 %76 to i32, !dbg !6377
  %sub102 = sub i32 63, %cast101, !dbg !6377
  br label %cond.end103, !dbg !6377

cond.end103:                                      ; preds = %cond.false99, %cond.true98
  %cond104 = phi i32 [ 0, %cond.true98 ], [ %sub102, %cond.false99 ], !dbg !6377
  br label %cond.end108, !dbg !6377

cond.false105:                                    ; preds = %if.end92
  %77 = load ptr, ptr %mm, align 8, !dbg !6377
  %chunk_size106 = getelementptr inbounds %struct.drm_buddy, ptr %77, i32 0, i32 4, !dbg !6377
  %78 = load i64, ptr %chunk_size106, align 8, !dbg !6377
  %call107 = call i32 @__ilog2_u64(i64 noundef %78) #22, !dbg !6377
  br label %cond.end108, !dbg !6377

cond.end108:                                      ; preds = %cond.false105, %cond.end103
  %cond109 = phi i32 [ %cond104, %cond.end103 ], [ %call107, %cond.false105 ], !dbg !6377
  %sh_prom110 = zext i32 %cond109 to i64, !dbg !6378
  %shr111 = lshr i64 %68, %sh_prom110, !dbg !6378
  store i64 %shr111, ptr %n_pages, align 8, !dbg !6379
  %79 = load ptr, ptr %bman, align 8, !dbg !6380
  %lock = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %79, i32 0, i32 3, !dbg !6381
  call void @mutex_lock(ptr noundef %lock) #19, !dbg !6382
  %80 = load i64, ptr %lpfn, align 8, !dbg !6383
  %81 = load ptr, ptr %bman, align 8, !dbg !6385
  %visible_size = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %81, i32 0, i32 4, !dbg !6386
  %82 = load i64, ptr %visible_size, align 8, !dbg !6386
  %cmp112 = icmp ule i64 %80, %82, !dbg !6387
  br i1 %cmp112, label %land.lhs.true114, label %if.end119, !dbg !6388

land.lhs.true114:                                 ; preds = %cond.end108
  %83 = load i64, ptr %n_pages, align 8, !dbg !6389
  %84 = load ptr, ptr %bman, align 8, !dbg !6390
  %visible_avail = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %84, i32 0, i32 5, !dbg !6391
  %85 = load i64, ptr %visible_avail, align 8, !dbg !6391
  %cmp115 = icmp ugt i64 %83, %85, !dbg !6392
  br i1 %cmp115, label %if.then117, label %if.end119, !dbg !6393

if.then117:                                       ; preds = %land.lhs.true114
  %86 = load ptr, ptr %bman, align 8, !dbg !6394
  %lock118 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %86, i32 0, i32 3, !dbg !6396
  call void @mutex_unlock(ptr noundef %lock118) #19, !dbg !6397
  store i32 -28, ptr %err, align 4, !dbg !6398
  br label %err_free_res, !dbg !6399

if.end119:                                        ; preds = %land.lhs.true114, %cond.end108
  %87 = load ptr, ptr %mm, align 8, !dbg !6400
  %88 = load ptr, ptr %place.addr, align 8, !dbg !6401
  %fpfn120 = getelementptr inbounds %struct.ttm_place, ptr %88, i32 0, i32 0, !dbg !6402
  %89 = load i32, ptr %fpfn120, align 4, !dbg !6402
  %conv121 = zext i32 %89 to i64, !dbg !6403
  %shl122 = shl i64 %conv121, 12, !dbg !6404
  %90 = load i64, ptr %lpfn, align 8, !dbg !6405
  %shl123 = shl i64 %90, 12, !dbg !6406
  %91 = load i64, ptr %n_pages, align 8, !dbg !6407
  %shl124 = shl i64 %91, 12, !dbg !6408
  %92 = load i64, ptr %min_page_size, align 8, !dbg !6409
  %93 = load ptr, ptr %bman_res, align 8, !dbg !6410
  %blocks125 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %93, i32 0, i32 1, !dbg !6411
  %94 = load ptr, ptr %bman_res, align 8, !dbg !6412
  %flags126 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %94, i32 0, i32 2, !dbg !6413
  %95 = load i64, ptr %flags126, align 8, !dbg !6413
  %call127 = call i32 @drm_buddy_alloc_blocks(ptr noundef %87, i64 noundef %shl122, i64 noundef %shl123, i64 noundef %shl124, i64 noundef %92, ptr noundef %blocks125, i64 noundef %95) #19, !dbg !6414
  store i32 %call127, ptr %err, align 4, !dbg !6415
  %96 = load i32, ptr %err, align 4, !dbg !6416
  %tobool128 = icmp ne i32 %96, 0, !dbg !6416
  %lnot = xor i1 %tobool128, true, !dbg !6416
  %lnot129 = xor i1 %lnot, true, !dbg !6416
  %lnot.ext = zext i1 %lnot129 to i32, !dbg !6416
  %conv130 = sext i32 %lnot.ext to i64, !dbg !6416
  %expval = call i64 @llvm.expect.i64(i64 %conv130, i64 0), !dbg !6416
  %tobool131 = icmp ne i64 %expval, 0, !dbg !6416
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !6418

if.then132:                                       ; preds = %if.end119
  br label %err_free_blocks, !dbg !6419

if.end133:                                        ; preds = %if.end119
  %97 = load ptr, ptr %place.addr, align 8, !dbg !6420
  %flags134 = getelementptr inbounds %struct.ttm_place, ptr %97, i32 0, i32 3, !dbg !6421
  %98 = load i32, ptr %flags134, align 4, !dbg !6421
  %and135 = and i32 %98, 1, !dbg !6422
  %tobool136 = icmp ne i32 %and135, 0, !dbg !6422
  br i1 %tobool136, label %if.then137, label %if.end142, !dbg !6423

if.then137:                                       ; preds = %if.end133
  call void @llvm.lifetime.start.p0(i64 8, ptr %original_size) #17, !dbg !6424
  call void @llvm.dbg.declare(metadata ptr %original_size, metadata !6226, metadata !DIExpression()), !dbg !6425
  %99 = load ptr, ptr %bman_res, align 8, !dbg !6426
  %base138 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %99, i32 0, i32 0, !dbg !6427
  %size139 = getelementptr inbounds %struct.ttm_resource, ptr %base138, i32 0, i32 1, !dbg !6428
  %100 = load i64, ptr %size139, align 8, !dbg !6428
  store i64 %100, ptr %original_size, align 8, !dbg !6425
  %101 = load ptr, ptr %mm, align 8, !dbg !6429
  %102 = load i64, ptr %original_size, align 8, !dbg !6430
  %103 = load ptr, ptr %bman_res, align 8, !dbg !6431
  %blocks140 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %103, i32 0, i32 1, !dbg !6432
  %call141 = call i32 @drm_buddy_block_trim(ptr noundef %101, i64 noundef %102, ptr noundef %blocks140) #19, !dbg !6433
  call void @llvm.lifetime.end.p0(i64 8, ptr %original_size) #17, !dbg !6434
  br label %if.end142, !dbg !6435

if.end142:                                        ; preds = %if.then137, %if.end133
  %104 = load i64, ptr %lpfn, align 8, !dbg !6436
  %105 = load ptr, ptr %bman, align 8, !dbg !6437
  %visible_size143 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %105, i32 0, i32 4, !dbg !6438
  %106 = load i64, ptr %visible_size143, align 8, !dbg !6438
  %cmp144 = icmp ule i64 %104, %106, !dbg !6439
  br i1 %cmp144, label %if.then146, label %if.else, !dbg !6440

if.then146:                                       ; preds = %if.end142
  %107 = load ptr, ptr %bman_res, align 8, !dbg !6441
  %base147 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %107, i32 0, i32 0, !dbg !6441
  %size148 = getelementptr inbounds %struct.ttm_resource, ptr %base147, i32 0, i32 1, !dbg !6441
  %108 = load i64, ptr %size148, align 8, !dbg !6441
  %add149 = add i64 %108, 4096, !dbg !6441
  %sub150 = sub i64 %add149, 1, !dbg !6441
  %shr151 = lshr i64 %sub150, 12, !dbg !6441
  %109 = load ptr, ptr %bman_res, align 8, !dbg !6443
  %used_visible_size = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %109, i32 0, i32 3, !dbg !6444
  store i64 %shr151, ptr %used_visible_size, align 8, !dbg !6445
  br label %if.end184, !dbg !6446

if.else:                                          ; preds = %if.end142
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #17, !dbg !6447
  call void @llvm.dbg.declare(metadata ptr %block, metadata !6229, metadata !DIExpression()), !dbg !6448
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6449
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6232, metadata !DIExpression()), !dbg !6449
  %110 = load ptr, ptr %bman_res, align 8, !dbg !6449
  %blocks152 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %110, i32 0, i32 1, !dbg !6449
  %next = getelementptr inbounds %struct.list_head, ptr %blocks152, i32 0, i32 0, !dbg !6449
  %111 = load ptr, ptr %next, align 8, !dbg !6449
  store ptr %111, ptr %__mptr, align 8, !dbg !6449
  %112 = load ptr, ptr %__mptr, align 8, !dbg !6449
  %add.ptr = getelementptr i8, ptr %112, i64 -40, !dbg !6449
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6449
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6450
  %113 = load ptr, ptr %tmp, align 8, !dbg !6449
  store ptr %113, ptr %block, align 8, !dbg !6450
  br label %for.cond, !dbg !6450

for.cond:                                         ; preds = %for.inc, %if.else
  %114 = load ptr, ptr %block, align 8, !dbg !6451
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %114, i32 0, i32 5, !dbg !6451
  %115 = load ptr, ptr %bman_res, align 8, !dbg !6451
  %blocks153 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %115, i32 0, i32 1, !dbg !6451
  %cmp154 = icmp eq ptr %link, %blocks153, !dbg !6451
  %lnot156 = xor i1 %cmp154, true, !dbg !6451
  br i1 %lnot156, label %for.body, label %for.end, !dbg !6450

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #17, !dbg !6452
  call void @llvm.dbg.declare(metadata ptr %start, metadata !6235, metadata !DIExpression()), !dbg !6453
  %116 = load ptr, ptr %block, align 8, !dbg !6454
  %call158 = call i64 @drm_buddy_block_offset(ptr noundef %116) #19, !dbg !6455
  %shr159 = lshr i64 %call158, 12, !dbg !6456
  store i64 %shr159, ptr %start, align 8, !dbg !6453
  %117 = load i64, ptr %start, align 8, !dbg !6457
  %118 = load ptr, ptr %bman, align 8, !dbg !6458
  %visible_size160 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %118, i32 0, i32 4, !dbg !6459
  %119 = load i64, ptr %visible_size160, align 8, !dbg !6459
  %cmp161 = icmp ult i64 %117, %119, !dbg !6460
  br i1 %cmp161, label %if.then163, label %if.end178, !dbg !6461

if.then163:                                       ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #17, !dbg !6462
  call void @llvm.dbg.declare(metadata ptr %end, metadata !6238, metadata !DIExpression()), !dbg !6463
  %120 = load i64, ptr %start, align 8, !dbg !6464
  %121 = load ptr, ptr %mm, align 8, !dbg !6465
  %122 = load ptr, ptr %block, align 8, !dbg !6466
  %call164 = call i64 @drm_buddy_block_size(ptr noundef %121, ptr noundef %122) #19, !dbg !6467
  %shr165 = lshr i64 %call164, 12, !dbg !6468
  %add166 = add i64 %120, %shr165, !dbg !6469
  store i64 %add166, ptr %end, align 8, !dbg !6463
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x301) #17, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x301, metadata !6241, metadata !DIExpression()), !dbg !6470
  %123 = load i64, ptr %end, align 8, !dbg !6470
  store i64 %123, ptr %__UNIQUE_ID___x301, align 8, !dbg !6470
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y302) #17, !dbg !6470
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y302, metadata !6243, metadata !DIExpression()), !dbg !6470
  %124 = load ptr, ptr %bman, align 8, !dbg !6470
  %visible_size167 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %124, i32 0, i32 4, !dbg !6470
  %125 = load i64, ptr %visible_size167, align 8, !dbg !6470
  store i64 %125, ptr %__UNIQUE_ID___y302, align 8, !dbg !6470
  %126 = load i64, ptr %__UNIQUE_ID___x301, align 8, !dbg !6470
  %127 = load i64, ptr %__UNIQUE_ID___y302, align 8, !dbg !6470
  %cmp169 = icmp ult i64 %126, %127, !dbg !6470
  br i1 %cmp169, label %cond.true171, label %cond.false172, !dbg !6470

cond.true171:                                     ; preds = %if.then163
  %128 = load i64, ptr %__UNIQUE_ID___x301, align 8, !dbg !6470
  br label %cond.end173, !dbg !6470

cond.false172:                                    ; preds = %if.then163
  %129 = load i64, ptr %__UNIQUE_ID___y302, align 8, !dbg !6470
  br label %cond.end173, !dbg !6470

cond.end173:                                      ; preds = %cond.false172, %cond.true171
  %cond174 = phi i64 [ %128, %cond.true171 ], [ %129, %cond.false172 ], !dbg !6470
  store i64 %cond174, ptr %tmp168, align 8, !dbg !6470
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y302) #17, !dbg !6471
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x301) #17, !dbg !6471
  %130 = load i64, ptr %tmp168, align 8, !dbg !6470
  %131 = load i64, ptr %start, align 8, !dbg !6472
  %sub175 = sub i64 %130, %131, !dbg !6473
  %132 = load ptr, ptr %bman_res, align 8, !dbg !6474
  %used_visible_size176 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %132, i32 0, i32 3, !dbg !6475
  %133 = load i64, ptr %used_visible_size176, align 8, !dbg !6476
  %add177 = add i64 %133, %sub175, !dbg !6476
  store i64 %add177, ptr %used_visible_size176, align 8, !dbg !6476
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #17, !dbg !6477
  br label %if.end178, !dbg !6478

if.end178:                                        ; preds = %cond.end173, %for.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #17, !dbg !6479
  br label %for.inc, !dbg !6480

for.inc:                                          ; preds = %if.end178
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr179) #17, !dbg !6481
  call void @llvm.dbg.declare(metadata ptr %__mptr179, metadata !6244, metadata !DIExpression()), !dbg !6481
  %134 = load ptr, ptr %block, align 8, !dbg !6481
  %link180 = getelementptr inbounds %struct.drm_buddy_block, ptr %134, i32 0, i32 5, !dbg !6481
  %next181 = getelementptr inbounds %struct.list_head, ptr %link180, i32 0, i32 0, !dbg !6481
  %135 = load ptr, ptr %next181, align 8, !dbg !6481
  store ptr %135, ptr %__mptr179, align 8, !dbg !6481
  %136 = load ptr, ptr %__mptr179, align 8, !dbg !6481
  %add.ptr183 = getelementptr i8, ptr %136, i64 -40, !dbg !6481
  store ptr %add.ptr183, ptr %tmp182, align 8, !dbg !6481
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr179) #17, !dbg !6451
  %137 = load ptr, ptr %tmp182, align 8, !dbg !6481
  store ptr %137, ptr %block, align 8, !dbg !6451
  br label %for.cond, !dbg !6451, !llvm.loop !6482

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #17, !dbg !6484
  br label %if.end184

if.end184:                                        ; preds = %for.end, %if.then146
  %138 = load ptr, ptr %bman_res, align 8, !dbg !6485
  %used_visible_size185 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %138, i32 0, i32 3, !dbg !6487
  %139 = load i64, ptr %used_visible_size185, align 8, !dbg !6487
  %tobool186 = icmp ne i64 %139, 0, !dbg !6485
  br i1 %tobool186, label %if.then187, label %if.end191, !dbg !6488

if.then187:                                       ; preds = %if.end184
  %140 = load ptr, ptr %bman_res, align 8, !dbg !6489
  %used_visible_size188 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %140, i32 0, i32 3, !dbg !6490
  %141 = load i64, ptr %used_visible_size188, align 8, !dbg !6490
  %142 = load ptr, ptr %bman, align 8, !dbg !6491
  %visible_avail189 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %142, i32 0, i32 5, !dbg !6492
  %143 = load i64, ptr %visible_avail189, align 8, !dbg !6493
  %sub190 = sub i64 %143, %141, !dbg !6493
  store i64 %sub190, ptr %visible_avail189, align 8, !dbg !6493
  br label %if.end191, !dbg !6491

if.end191:                                        ; preds = %if.then187, %if.end184
  %144 = load ptr, ptr %bman, align 8, !dbg !6494
  %lock192 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %144, i32 0, i32 3, !dbg !6495
  call void @mutex_unlock(ptr noundef %lock192) #19, !dbg !6496
  %145 = load ptr, ptr %bman_res, align 8, !dbg !6497
  %base193 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %145, i32 0, i32 0, !dbg !6498
  %146 = load ptr, ptr %res.addr, align 8, !dbg !6499
  store ptr %base193, ptr %146, align 8, !dbg !6500
  store i32 0, ptr %retval, align 4, !dbg !6501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6501

err_free_blocks:                                  ; preds = %if.then132
  call void @llvm.dbg.label(metadata !6246), !dbg !6502
  %147 = load ptr, ptr %mm, align 8, !dbg !6503
  %148 = load ptr, ptr %bman_res, align 8, !dbg !6504
  %blocks194 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %148, i32 0, i32 1, !dbg !6505
  call void @drm_buddy_free_list(ptr noundef %147, ptr noundef %blocks194) #19, !dbg !6506
  %149 = load ptr, ptr %bman, align 8, !dbg !6507
  %lock195 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %149, i32 0, i32 3, !dbg !6508
  call void @mutex_unlock(ptr noundef %lock195) #19, !dbg !6509
  br label %err_free_res, !dbg !6509

err_free_res:                                     ; preds = %err_free_blocks, %if.then117, %if.then91
  call void @llvm.dbg.label(metadata !6247), !dbg !6510
  %150 = load ptr, ptr %man.addr, align 8, !dbg !6511
  %151 = load ptr, ptr %bman_res, align 8, !dbg !6512
  %base196 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %151, i32 0, i32 0, !dbg !6513
  call void @ttm_resource_fini(ptr noundef %150, ptr noundef %base196) #19, !dbg !6514
  %152 = load ptr, ptr %bman_res, align 8, !dbg !6515
  call void @kfree(ptr noundef %152) #19, !dbg !6516
  %153 = load i32, ptr %err, align 4, !dbg !6517
  store i32 %153, ptr %retval, align 4, !dbg !6518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6518

cleanup:                                          ; preds = %err_free_res, %if.end191, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #17, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #17, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %min_page_size) #17, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpfn) #17, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %n_pages) #17, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #17, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman_res) #17, !dbg !6519
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !6519
  %154 = load i32, ptr %retval, align 4, !dbg !6519
  ret i32 %154, !dbg !6519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_ttm_buddy_man_free(ptr noundef %man, ptr noundef %res) #0 align 16 !dbg !6520 {
entry:
  %man.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %bman_res = alloca ptr, align 8
  %bman = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6522, metadata !DIExpression()), !dbg !6526
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6523, metadata !DIExpression()), !dbg !6527
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman_res) #17, !dbg !6528
  call void @llvm.dbg.declare(metadata ptr %bman_res, metadata !6524, metadata !DIExpression()), !dbg !6529
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6530
  %call = call ptr @to_ttm_buddy_resource(ptr noundef %0) #19, !dbg !6531
  store ptr %call, ptr %bman_res, align 8, !dbg !6529
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !6532
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !6525, metadata !DIExpression()), !dbg !6533
  %1 = load ptr, ptr %man.addr, align 8, !dbg !6534
  %call1 = call ptr @to_buddy_manager(ptr noundef %1) #19, !dbg !6535
  store ptr %call1, ptr %bman, align 8, !dbg !6533
  %2 = load ptr, ptr %bman, align 8, !dbg !6536
  %lock = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %2, i32 0, i32 3, !dbg !6537
  call void @mutex_lock(ptr noundef %lock) #19, !dbg !6538
  %3 = load ptr, ptr %bman, align 8, !dbg !6539
  %mm = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %3, i32 0, i32 1, !dbg !6540
  %4 = load ptr, ptr %bman_res, align 8, !dbg !6541
  %blocks = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %4, i32 0, i32 1, !dbg !6542
  call void @drm_buddy_free_list(ptr noundef %mm, ptr noundef %blocks) #19, !dbg !6543
  %5 = load ptr, ptr %bman_res, align 8, !dbg !6544
  %used_visible_size = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %5, i32 0, i32 3, !dbg !6545
  %6 = load i64, ptr %used_visible_size, align 8, !dbg !6545
  %7 = load ptr, ptr %bman, align 8, !dbg !6546
  %visible_avail = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %7, i32 0, i32 5, !dbg !6547
  %8 = load i64, ptr %visible_avail, align 8, !dbg !6548
  %add = add i64 %8, %6, !dbg !6548
  store i64 %add, ptr %visible_avail, align 8, !dbg !6548
  %9 = load ptr, ptr %bman, align 8, !dbg !6549
  %lock2 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %9, i32 0, i32 3, !dbg !6550
  call void @mutex_unlock(ptr noundef %lock2) #19, !dbg !6551
  %10 = load ptr, ptr %man.addr, align 8, !dbg !6552
  %11 = load ptr, ptr %res.addr, align 8, !dbg !6553
  call void @ttm_resource_fini(ptr noundef %10, ptr noundef %11) #19, !dbg !6554
  %12 = load ptr, ptr %bman_res, align 8, !dbg !6555
  call void @kfree(ptr noundef %12) #19, !dbg !6556
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !6557
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman_res) #17, !dbg !6557
  ret void, !dbg !6557
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @i915_ttm_buddy_man_intersects(ptr noundef %man, ptr noundef %res, ptr noundef %place, i64 noundef %size) #0 align 16 !dbg !6558 {
entry:
  %retval = alloca i1, align 1
  %man.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %bman_res = alloca ptr, align 8
  %bman = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %block = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %fpfn17 = alloca i64, align 8
  %lpfn19 = alloca i64, align 8
  %__mptr34 = alloca ptr, align 8
  %tmp37 = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6560, metadata !DIExpression()), !dbg !6577
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6561, metadata !DIExpression()), !dbg !6578
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !6562, metadata !DIExpression()), !dbg !6579
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6563, metadata !DIExpression()), !dbg !6580
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman_res) #17, !dbg !6581
  call void @llvm.dbg.declare(metadata ptr %bman_res, metadata !6564, metadata !DIExpression()), !dbg !6582
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6583
  %call = call ptr @to_ttm_buddy_resource(ptr noundef %0) #19, !dbg !6584
  store ptr %call, ptr %bman_res, align 8, !dbg !6582
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !6585
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !6565, metadata !DIExpression()), !dbg !6586
  %1 = load ptr, ptr %man.addr, align 8, !dbg !6587
  %call1 = call ptr @to_buddy_manager(ptr noundef %1) #19, !dbg !6588
  store ptr %call1, ptr %bman, align 8, !dbg !6586
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #17, !dbg !6589
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !6566, metadata !DIExpression()), !dbg !6590
  %2 = load ptr, ptr %bman, align 8, !dbg !6591
  %mm2 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %2, i32 0, i32 1, !dbg !6592
  store ptr %mm2, ptr %mm, align 8, !dbg !6590
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #17, !dbg !6593
  call void @llvm.dbg.declare(metadata ptr %block, metadata !6567, metadata !DIExpression()), !dbg !6594
  %3 = load ptr, ptr %place.addr, align 8, !dbg !6595
  %fpfn = getelementptr inbounds %struct.ttm_place, ptr %3, i32 0, i32 0, !dbg !6597
  %4 = load i32, ptr %fpfn, align 4, !dbg !6597
  %tobool = icmp ne i32 %4, 0, !dbg !6595
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6598

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %place.addr, align 8, !dbg !6599
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %5, i32 0, i32 1, !dbg !6600
  %6 = load i32, ptr %lpfn, align 4, !dbg !6600
  %tobool3 = icmp ne i32 %6, 0, !dbg !6599
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6601

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !6602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !6602

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %place.addr, align 8, !dbg !6603
  %fpfn4 = getelementptr inbounds %struct.ttm_place, ptr %7, i32 0, i32 0, !dbg !6605
  %8 = load i32, ptr %fpfn4, align 4, !dbg !6605
  %tobool5 = icmp ne i32 %8, 0, !dbg !6603
  br i1 %tobool5, label %if.end13, label %land.lhs.true6, !dbg !6606

land.lhs.true6:                                   ; preds = %if.end
  %9 = load ptr, ptr %place.addr, align 8, !dbg !6607
  %lpfn7 = getelementptr inbounds %struct.ttm_place, ptr %9, i32 0, i32 1, !dbg !6608
  %10 = load i32, ptr %lpfn7, align 4, !dbg !6608
  %conv = zext i32 %10 to i64, !dbg !6607
  %11 = load ptr, ptr %man.addr, align 8, !dbg !6609
  %call8 = call i64 @i915_ttm_buddy_man_visible_size(ptr noundef %11) #19, !dbg !6610
  %cmp = icmp eq i64 %conv, %call8, !dbg !6611
  br i1 %cmp, label %if.then10, label %if.end13, !dbg !6612

if.then10:                                        ; preds = %land.lhs.true6
  %12 = load ptr, ptr %bman_res, align 8, !dbg !6613
  %used_visible_size = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %12, i32 0, i32 3, !dbg !6614
  %13 = load i64, ptr %used_visible_size, align 8, !dbg !6614
  %cmp11 = icmp ugt i64 %13, 0, !dbg !6615
  store i1 %cmp11, ptr %retval, align 1, !dbg !6616
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !6616

if.end13:                                         ; preds = %land.lhs.true6, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6617
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6568, metadata !DIExpression()), !dbg !6617
  %14 = load ptr, ptr %bman_res, align 8, !dbg !6617
  %blocks = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %14, i32 0, i32 1, !dbg !6617
  %next = getelementptr inbounds %struct.list_head, ptr %blocks, i32 0, i32 0, !dbg !6617
  %15 = load ptr, ptr %next, align 8, !dbg !6617
  store ptr %15, ptr %__mptr, align 8, !dbg !6617
  %16 = load ptr, ptr %__mptr, align 8, !dbg !6617
  %add.ptr = getelementptr i8, ptr %16, i64 -40, !dbg !6617
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6617
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6618
  %17 = load ptr, ptr %tmp, align 8, !dbg !6617
  store ptr %17, ptr %block, align 8, !dbg !6618
  br label %for.cond, !dbg !6618

for.cond:                                         ; preds = %for.inc, %if.end13
  %18 = load ptr, ptr %block, align 8, !dbg !6619
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %18, i32 0, i32 5, !dbg !6619
  %19 = load ptr, ptr %bman_res, align 8, !dbg !6619
  %blocks14 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %19, i32 0, i32 1, !dbg !6619
  %cmp15 = icmp eq ptr %link, %blocks14, !dbg !6619
  %lnot = xor i1 %cmp15, true, !dbg !6619
  br i1 %lnot, label %for.body, label %for.end, !dbg !6618

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpfn17) #17, !dbg !6620
  call void @llvm.dbg.declare(metadata ptr %fpfn17, metadata !6571, metadata !DIExpression()), !dbg !6621
  %20 = load ptr, ptr %block, align 8, !dbg !6622
  %call18 = call i64 @drm_buddy_block_offset(ptr noundef %20) #19, !dbg !6623
  %shr = lshr i64 %call18, 12, !dbg !6624
  store i64 %shr, ptr %fpfn17, align 8, !dbg !6621
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpfn19) #17, !dbg !6625
  call void @llvm.dbg.declare(metadata ptr %lpfn19, metadata !6574, metadata !DIExpression()), !dbg !6626
  %21 = load i64, ptr %fpfn17, align 8, !dbg !6627
  %22 = load ptr, ptr %mm, align 8, !dbg !6628
  %23 = load ptr, ptr %block, align 8, !dbg !6629
  %call20 = call i64 @drm_buddy_block_size(ptr noundef %22, ptr noundef %23) #19, !dbg !6630
  %shr21 = lshr i64 %call20, 12, !dbg !6631
  %add = add i64 %21, %shr21, !dbg !6632
  store i64 %add, ptr %lpfn19, align 8, !dbg !6626
  %24 = load ptr, ptr %place.addr, align 8, !dbg !6633
  %fpfn22 = getelementptr inbounds %struct.ttm_place, ptr %24, i32 0, i32 0, !dbg !6635
  %25 = load i32, ptr %fpfn22, align 4, !dbg !6635
  %conv23 = zext i32 %25 to i64, !dbg !6633
  %26 = load i64, ptr %lpfn19, align 8, !dbg !6636
  %cmp24 = icmp ult i64 %conv23, %26, !dbg !6637
  br i1 %cmp24, label %land.lhs.true26, label %if.end32, !dbg !6638

land.lhs.true26:                                  ; preds = %for.body
  %27 = load ptr, ptr %place.addr, align 8, !dbg !6639
  %lpfn27 = getelementptr inbounds %struct.ttm_place, ptr %27, i32 0, i32 1, !dbg !6640
  %28 = load i32, ptr %lpfn27, align 4, !dbg !6640
  %conv28 = zext i32 %28 to i64, !dbg !6639
  %29 = load i64, ptr %fpfn17, align 8, !dbg !6641
  %cmp29 = icmp ugt i64 %conv28, %29, !dbg !6642
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !6643

if.then31:                                        ; preds = %land.lhs.true26
  store i1 true, ptr %retval, align 1, !dbg !6644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6644

if.end32:                                         ; preds = %land.lhs.true26, %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6645
  br label %cleanup, !dbg !6645

cleanup:                                          ; preds = %if.end32, %if.then31
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpfn19) #17, !dbg !6645
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpfn17) #17, !dbg !6645
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6646

for.inc:                                          ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr34) #17, !dbg !6647
  call void @llvm.dbg.declare(metadata ptr %__mptr34, metadata !6575, metadata !DIExpression()), !dbg !6647
  %30 = load ptr, ptr %block, align 8, !dbg !6647
  %link35 = getelementptr inbounds %struct.drm_buddy_block, ptr %30, i32 0, i32 5, !dbg !6647
  %next36 = getelementptr inbounds %struct.list_head, ptr %link35, i32 0, i32 0, !dbg !6647
  %31 = load ptr, ptr %next36, align 8, !dbg !6647
  store ptr %31, ptr %__mptr34, align 8, !dbg !6647
  %32 = load ptr, ptr %__mptr34, align 8, !dbg !6647
  %add.ptr38 = getelementptr i8, ptr %32, i64 -40, !dbg !6647
  store ptr %add.ptr38, ptr %tmp37, align 8, !dbg !6647
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr34) #17, !dbg !6619
  %33 = load ptr, ptr %tmp37, align 8, !dbg !6647
  store ptr %33, ptr %block, align 8, !dbg !6619
  br label %for.cond, !dbg !6619, !llvm.loop !6648

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !6650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !6650

cleanup39:                                        ; preds = %for.end, %cleanup, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #17, !dbg !6651
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #17, !dbg !6651
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !6651
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman_res) #17, !dbg !6651
  %34 = load i1, ptr %retval, align 1, !dbg !6651
  ret i1 %34, !dbg !6651
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @i915_ttm_buddy_man_compatible(ptr noundef %man, ptr noundef %res, ptr noundef %place, i64 noundef %size) #0 align 16 !dbg !6652 {
entry:
  %retval = alloca i1, align 1
  %man.addr = alloca ptr, align 8
  %res.addr = alloca ptr, align 8
  %place.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %bman_res = alloca ptr, align 8
  %bman = alloca ptr, align 8
  %mm = alloca ptr, align 8
  %block = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %fpfn18 = alloca i64, align 8
  %lpfn21 = alloca i64, align 8
  %__mptr36 = alloca ptr, align 8
  %tmp39 = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6654, metadata !DIExpression()), !dbg !6671
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6655, metadata !DIExpression()), !dbg !6672
  store ptr %place, ptr %place.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %place.addr, metadata !6656, metadata !DIExpression()), !dbg !6673
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6657, metadata !DIExpression()), !dbg !6674
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman_res) #17, !dbg !6675
  call void @llvm.dbg.declare(metadata ptr %bman_res, metadata !6658, metadata !DIExpression()), !dbg !6676
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6677
  %call = call ptr @to_ttm_buddy_resource(ptr noundef %0) #19, !dbg !6678
  store ptr %call, ptr %bman_res, align 8, !dbg !6676
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !6679
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !6659, metadata !DIExpression()), !dbg !6680
  %1 = load ptr, ptr %man.addr, align 8, !dbg !6681
  %call1 = call ptr @to_buddy_manager(ptr noundef %1) #19, !dbg !6682
  store ptr %call1, ptr %bman, align 8, !dbg !6680
  call void @llvm.lifetime.start.p0(i64 8, ptr %mm) #17, !dbg !6683
  call void @llvm.dbg.declare(metadata ptr %mm, metadata !6660, metadata !DIExpression()), !dbg !6684
  %2 = load ptr, ptr %bman, align 8, !dbg !6685
  %mm2 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %2, i32 0, i32 1, !dbg !6686
  store ptr %mm2, ptr %mm, align 8, !dbg !6684
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #17, !dbg !6687
  call void @llvm.dbg.declare(metadata ptr %block, metadata !6661, metadata !DIExpression()), !dbg !6688
  %3 = load ptr, ptr %place.addr, align 8, !dbg !6689
  %fpfn = getelementptr inbounds %struct.ttm_place, ptr %3, i32 0, i32 0, !dbg !6691
  %4 = load i32, ptr %fpfn, align 4, !dbg !6691
  %tobool = icmp ne i32 %4, 0, !dbg !6689
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !6692

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %place.addr, align 8, !dbg !6693
  %lpfn = getelementptr inbounds %struct.ttm_place, ptr %5, i32 0, i32 1, !dbg !6694
  %6 = load i32, ptr %lpfn, align 4, !dbg !6694
  %tobool3 = icmp ne i32 %6, 0, !dbg !6693
  br i1 %tobool3, label %if.end, label %if.then, !dbg !6695

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !6696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6696

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load ptr, ptr %place.addr, align 8, !dbg !6697
  %fpfn4 = getelementptr inbounds %struct.ttm_place, ptr %7, i32 0, i32 0, !dbg !6699
  %8 = load i32, ptr %fpfn4, align 4, !dbg !6699
  %tobool5 = icmp ne i32 %8, 0, !dbg !6697
  br i1 %tobool5, label %if.end14, label %land.lhs.true6, !dbg !6700

land.lhs.true6:                                   ; preds = %if.end
  %9 = load ptr, ptr %place.addr, align 8, !dbg !6701
  %lpfn7 = getelementptr inbounds %struct.ttm_place, ptr %9, i32 0, i32 1, !dbg !6702
  %10 = load i32, ptr %lpfn7, align 4, !dbg !6702
  %conv = zext i32 %10 to i64, !dbg !6701
  %11 = load ptr, ptr %man.addr, align 8, !dbg !6703
  %call8 = call i64 @i915_ttm_buddy_man_visible_size(ptr noundef %11) #19, !dbg !6704
  %cmp = icmp eq i64 %conv, %call8, !dbg !6705
  br i1 %cmp, label %if.then10, label %if.end14, !dbg !6706

if.then10:                                        ; preds = %land.lhs.true6
  %12 = load ptr, ptr %bman_res, align 8, !dbg !6707
  %used_visible_size = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %12, i32 0, i32 3, !dbg !6708
  %13 = load i64, ptr %used_visible_size, align 8, !dbg !6708
  %14 = load ptr, ptr %res.addr, align 8, !dbg !6709
  %size11 = getelementptr inbounds %struct.ttm_resource, ptr %14, i32 0, i32 1, !dbg !6709
  %15 = load i64, ptr %size11, align 8, !dbg !6709
  %add = add i64 %15, 4096, !dbg !6709
  %sub = sub i64 %add, 1, !dbg !6709
  %shr = lshr i64 %sub, 12, !dbg !6709
  %cmp12 = icmp eq i64 %13, %shr, !dbg !6710
  store i1 %cmp12, ptr %retval, align 1, !dbg !6711
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6711

if.end14:                                         ; preds = %land.lhs.true6, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6712
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6662, metadata !DIExpression()), !dbg !6712
  %16 = load ptr, ptr %bman_res, align 8, !dbg !6712
  %blocks = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %16, i32 0, i32 1, !dbg !6712
  %next = getelementptr inbounds %struct.list_head, ptr %blocks, i32 0, i32 0, !dbg !6712
  %17 = load ptr, ptr %next, align 8, !dbg !6712
  store ptr %17, ptr %__mptr, align 8, !dbg !6712
  %18 = load ptr, ptr %__mptr, align 8, !dbg !6712
  %add.ptr = getelementptr i8, ptr %18, i64 -40, !dbg !6712
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6712
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6713
  %19 = load ptr, ptr %tmp, align 8, !dbg !6712
  store ptr %19, ptr %block, align 8, !dbg !6713
  br label %for.cond, !dbg !6713

for.cond:                                         ; preds = %for.inc, %if.end14
  %20 = load ptr, ptr %block, align 8, !dbg !6714
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %20, i32 0, i32 5, !dbg !6714
  %21 = load ptr, ptr %bman_res, align 8, !dbg !6714
  %blocks15 = getelementptr inbounds %struct.i915_ttm_buddy_resource, ptr %21, i32 0, i32 1, !dbg !6714
  %cmp16 = icmp eq ptr %link, %blocks15, !dbg !6714
  %lnot = xor i1 %cmp16, true, !dbg !6714
  br i1 %lnot, label %for.body, label %for.end, !dbg !6713

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fpfn18) #17, !dbg !6715
  call void @llvm.dbg.declare(metadata ptr %fpfn18, metadata !6665, metadata !DIExpression()), !dbg !6716
  %22 = load ptr, ptr %block, align 8, !dbg !6717
  %call19 = call i64 @drm_buddy_block_offset(ptr noundef %22) #19, !dbg !6718
  %shr20 = lshr i64 %call19, 12, !dbg !6719
  store i64 %shr20, ptr %fpfn18, align 8, !dbg !6716
  call void @llvm.lifetime.start.p0(i64 8, ptr %lpfn21) #17, !dbg !6720
  call void @llvm.dbg.declare(metadata ptr %lpfn21, metadata !6668, metadata !DIExpression()), !dbg !6721
  %23 = load i64, ptr %fpfn18, align 8, !dbg !6722
  %24 = load ptr, ptr %mm, align 8, !dbg !6723
  %25 = load ptr, ptr %block, align 8, !dbg !6724
  %call22 = call i64 @drm_buddy_block_size(ptr noundef %24, ptr noundef %25) #19, !dbg !6725
  %shr23 = lshr i64 %call22, 12, !dbg !6726
  %add24 = add i64 %23, %shr23, !dbg !6727
  store i64 %add24, ptr %lpfn21, align 8, !dbg !6721
  %26 = load i64, ptr %fpfn18, align 8, !dbg !6728
  %27 = load ptr, ptr %place.addr, align 8, !dbg !6730
  %fpfn25 = getelementptr inbounds %struct.ttm_place, ptr %27, i32 0, i32 0, !dbg !6731
  %28 = load i32, ptr %fpfn25, align 4, !dbg !6731
  %conv26 = zext i32 %28 to i64, !dbg !6730
  %cmp27 = icmp ult i64 %26, %conv26, !dbg !6732
  br i1 %cmp27, label %if.then33, label %lor.lhs.false, !dbg !6733

lor.lhs.false:                                    ; preds = %for.body
  %29 = load i64, ptr %lpfn21, align 8, !dbg !6734
  %30 = load ptr, ptr %place.addr, align 8, !dbg !6735
  %lpfn29 = getelementptr inbounds %struct.ttm_place, ptr %30, i32 0, i32 1, !dbg !6736
  %31 = load i32, ptr %lpfn29, align 4, !dbg !6736
  %conv30 = zext i32 %31 to i64, !dbg !6735
  %cmp31 = icmp ugt i64 %29, %conv30, !dbg !6737
  br i1 %cmp31, label %if.then33, label %if.end34, !dbg !6738

if.then33:                                        ; preds = %lor.lhs.false, %for.body
  store i1 false, ptr %retval, align 1, !dbg !6739
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6739

if.end34:                                         ; preds = %lor.lhs.false
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6740
  br label %cleanup, !dbg !6740

cleanup:                                          ; preds = %if.end34, %if.then33
  call void @llvm.lifetime.end.p0(i64 8, ptr %lpfn21) #17, !dbg !6740
  call void @llvm.lifetime.end.p0(i64 8, ptr %fpfn18) #17, !dbg !6740
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup41 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6741

for.inc:                                          ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr36) #17, !dbg !6742
  call void @llvm.dbg.declare(metadata ptr %__mptr36, metadata !6669, metadata !DIExpression()), !dbg !6742
  %32 = load ptr, ptr %block, align 8, !dbg !6742
  %link37 = getelementptr inbounds %struct.drm_buddy_block, ptr %32, i32 0, i32 5, !dbg !6742
  %next38 = getelementptr inbounds %struct.list_head, ptr %link37, i32 0, i32 0, !dbg !6742
  %33 = load ptr, ptr %next38, align 8, !dbg !6742
  store ptr %33, ptr %__mptr36, align 8, !dbg !6742
  %34 = load ptr, ptr %__mptr36, align 8, !dbg !6742
  %add.ptr40 = getelementptr i8, ptr %34, i64 -40, !dbg !6742
  store ptr %add.ptr40, ptr %tmp39, align 8, !dbg !6742
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr36) #17, !dbg !6714
  %35 = load ptr, ptr %tmp39, align 8, !dbg !6742
  store ptr %35, ptr %block, align 8, !dbg !6714
  br label %for.cond, !dbg !6714, !llvm.loop !6743

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !6745
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !6745

cleanup41:                                        ; preds = %for.end, %cleanup, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #17, !dbg !6746
  call void @llvm.lifetime.end.p0(i64 8, ptr %mm) #17, !dbg !6746
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !6746
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman_res) #17, !dbg !6746
  %36 = load i1, ptr %retval, align 1, !dbg !6746
  ret i1 %36, !dbg !6746
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @i915_ttm_buddy_man_debug(ptr noundef %man, ptr noundef %printer) #0 align 16 !dbg !6747 {
entry:
  %man.addr = alloca ptr, align 8
  %printer.addr = alloca ptr, align 8
  %bman = alloca ptr, align 8
  %block = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %man, ptr %man.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %man.addr, metadata !6749, metadata !DIExpression()), !dbg !6759
  store ptr %printer, ptr %printer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %printer.addr, metadata !6750, metadata !DIExpression()), !dbg !6760
  call void @llvm.lifetime.start.p0(i64 8, ptr %bman) #17, !dbg !6761
  call void @llvm.dbg.declare(metadata ptr %bman, metadata !6751, metadata !DIExpression()), !dbg !6762
  %0 = load ptr, ptr %man.addr, align 8, !dbg !6763
  %call = call ptr @to_buddy_manager(ptr noundef %0) #19, !dbg !6764
  store ptr %call, ptr %bman, align 8, !dbg !6762
  call void @llvm.lifetime.start.p0(i64 8, ptr %block) #17, !dbg !6765
  call void @llvm.dbg.declare(metadata ptr %block, metadata !6752, metadata !DIExpression()), !dbg !6766
  %1 = load ptr, ptr %bman, align 8, !dbg !6767
  %lock = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %1, i32 0, i32 3, !dbg !6768
  call void @mutex_lock(ptr noundef %lock) #19, !dbg !6769
  %2 = load ptr, ptr %printer.addr, align 8, !dbg !6770
  %3 = load ptr, ptr %bman, align 8, !dbg !6771
  %default_page_size = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %3, i32 0, i32 7, !dbg !6772
  %4 = load i64, ptr %default_page_size, align 8, !dbg !6772
  %shr = lshr i64 %4, 10, !dbg !6773
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %2, ptr noundef @.str.3, i64 noundef %shr) #19, !dbg !6774
  %5 = load ptr, ptr %printer.addr, align 8, !dbg !6775
  %6 = load ptr, ptr %bman, align 8, !dbg !6776
  %visible_avail = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %6, i32 0, i32 5, !dbg !6777
  %7 = load i64, ptr %visible_avail, align 8, !dbg !6777
  %shl = shl i64 %7, 12, !dbg !6778
  %shr1 = lshr i64 %shl, 20, !dbg !6779
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %5, ptr noundef @.str.4, i64 noundef %shr1) #19, !dbg !6780
  %8 = load ptr, ptr %printer.addr, align 8, !dbg !6781
  %9 = load ptr, ptr %bman, align 8, !dbg !6782
  %visible_size = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %9, i32 0, i32 4, !dbg !6783
  %10 = load i64, ptr %visible_size, align 8, !dbg !6783
  %shl2 = shl i64 %10, 12, !dbg !6784
  %shr3 = lshr i64 %shl2, 20, !dbg !6785
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %8, ptr noundef @.str.5, i64 noundef %shr3) #19, !dbg !6786
  %11 = load ptr, ptr %printer.addr, align 8, !dbg !6787
  %12 = load ptr, ptr %bman, align 8, !dbg !6788
  %visible_reserved = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %12, i32 0, i32 6, !dbg !6789
  %13 = load i64, ptr %visible_reserved, align 8, !dbg !6789
  %shl4 = shl i64 %13, 12, !dbg !6790
  %shr5 = lshr i64 %shl4, 20, !dbg !6791
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %11, ptr noundef @.str.6, i64 noundef %shr5) #19, !dbg !6792
  %14 = load ptr, ptr %bman, align 8, !dbg !6793
  %mm = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %14, i32 0, i32 1, !dbg !6794
  %15 = load ptr, ptr %printer.addr, align 8, !dbg !6795
  call void @drm_buddy_print(ptr noundef %mm, ptr noundef %15) #19, !dbg !6796
  %16 = load ptr, ptr %printer.addr, align 8, !dbg !6797
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %16, ptr noundef @.str.7) #19, !dbg !6798
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6799
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6753, metadata !DIExpression()), !dbg !6799
  %17 = load ptr, ptr %bman, align 8, !dbg !6799
  %reserved = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %17, i32 0, i32 2, !dbg !6799
  %next = getelementptr inbounds %struct.list_head, ptr %reserved, i32 0, i32 0, !dbg !6799
  %18 = load ptr, ptr %next, align 8, !dbg !6799
  store ptr %18, ptr %__mptr, align 8, !dbg !6799
  %19 = load ptr, ptr %__mptr, align 8, !dbg !6799
  %add.ptr = getelementptr i8, ptr %19, i64 -40, !dbg !6799
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6799
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6800
  %20 = load ptr, ptr %tmp, align 8, !dbg !6799
  store ptr %20, ptr %block, align 8, !dbg !6800
  br label %for.cond, !dbg !6800

for.cond:                                         ; preds = %for.inc, %entry
  %21 = load ptr, ptr %block, align 8, !dbg !6801
  %link = getelementptr inbounds %struct.drm_buddy_block, ptr %21, i32 0, i32 5, !dbg !6801
  %22 = load ptr, ptr %bman, align 8, !dbg !6801
  %reserved6 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %22, i32 0, i32 2, !dbg !6801
  %cmp = icmp eq ptr %link, %reserved6, !dbg !6801
  %lnot = xor i1 %cmp, true, !dbg !6801
  br i1 %lnot, label %for.body, label %for.end, !dbg !6800

for.body:                                         ; preds = %for.cond
  %23 = load ptr, ptr %bman, align 8, !dbg !6802
  %mm7 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %23, i32 0, i32 1, !dbg !6803
  %24 = load ptr, ptr %block, align 8, !dbg !6804
  %25 = load ptr, ptr %printer.addr, align 8, !dbg !6805
  call void @drm_buddy_block_print(ptr noundef %mm7, ptr noundef %24, ptr noundef %25) #19, !dbg !6806
  br label %for.inc, !dbg !6806

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #17, !dbg !6807
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !6756, metadata !DIExpression()), !dbg !6807
  %26 = load ptr, ptr %block, align 8, !dbg !6807
  %link9 = getelementptr inbounds %struct.drm_buddy_block, ptr %26, i32 0, i32 5, !dbg !6807
  %next10 = getelementptr inbounds %struct.list_head, ptr %link9, i32 0, i32 0, !dbg !6807
  %27 = load ptr, ptr %next10, align 8, !dbg !6807
  store ptr %27, ptr %__mptr8, align 8, !dbg !6807
  %28 = load ptr, ptr %__mptr8, align 8, !dbg !6807
  %add.ptr12 = getelementptr i8, ptr %28, i64 -40, !dbg !6807
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !6807
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #17, !dbg !6801
  %29 = load ptr, ptr %tmp11, align 8, !dbg !6807
  store ptr %29, ptr %block, align 8, !dbg !6801
  br label %for.cond, !dbg !6801, !llvm.loop !6808

for.end:                                          ; preds = %for.cond
  %30 = load ptr, ptr %bman, align 8, !dbg !6810
  %lock13 = getelementptr inbounds %struct.i915_ttm_buddy_manager, ptr %30, i32 0, i32 3, !dbg !6811
  call void @mutex_unlock(ptr noundef %lock13) #19, !dbg !6812
  call void @llvm.lifetime.end.p0(i64 8, ptr %block) #17, !dbg !6813
  call void @llvm.lifetime.end.p0(i64 8, ptr %bman) #17, !dbg !6813
  ret void, !dbg !6813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6814 dso_local void @ttm_resource_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i32 @__ilog2_u64(i64 noundef %n) #13 align 16 !dbg !6817 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6822, metadata !DIExpression()), !dbg !6823
  %0 = load i64, ptr %n.addr, align 8, !dbg !6824
  %call = call i32 @fls64(i64 noundef %0) #19, !dbg !6825
  %sub = sub i32 %call, 1, !dbg !6826
  ret i32 %sub, !dbg !6827
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal i64 @__roundup_pow_of_two(i64 noundef %n) #14 align 16 !dbg !6828 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6832, metadata !DIExpression()), !dbg !6833
  %0 = load i64, ptr %n.addr, align 8, !dbg !6834
  %sub = sub i64 %0, 1, !dbg !6835
  %call = call i32 @fls_long(i64 noundef %sub) #19, !dbg !6836
  %sh_prom = zext i32 %call to i64, !dbg !6837
  %shl = shl i64 1, %sh_prom, !dbg !6837
  ret i64 %shl, !dbg !6838
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6839 dso_local i32 @drm_buddy_block_trim(ptr noundef, i64 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_buddy_block_offset(ptr noundef %block) #5 align 16 !dbg !6842 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !6846, metadata !DIExpression()), !dbg !6847
  %0 = load ptr, ptr %block.addr, align 8, !dbg !6848
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !6849
  %1 = load i64, ptr %header, align 8, !dbg !6849
  %and = and i64 %1, -4096, !dbg !6850
  ret i64 %and, !dbg !6851
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @drm_buddy_block_size(ptr noundef %mm, ptr noundef %block) #5 align 16 !dbg !6852 {
entry:
  %mm.addr = alloca ptr, align 8
  %block.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !6856, metadata !DIExpression()), !dbg !6858
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !6857, metadata !DIExpression()), !dbg !6859
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !6860
  %chunk_size = getelementptr inbounds %struct.drm_buddy, ptr %0, i32 0, i32 4, !dbg !6861
  %1 = load i64, ptr %chunk_size, align 8, !dbg !6861
  %2 = load ptr, ptr %block.addr, align 8, !dbg !6862
  %call = call i32 @drm_buddy_block_order(ptr noundef %2) #19, !dbg !6863
  %sh_prom = zext i32 %call to i64, !dbg !6864
  %shl = shl i64 %1, %sh_prom, !dbg !6864
  ret i64 %shl, !dbg !6865
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6866 dso_local void @ttm_resource_fini(ptr noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls64(i64 noundef %x) #10 align 16 !dbg !6867 {
entry:
  %x.addr = alloca i64, align 8
  %bitpos = alloca i32, align 4
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6872, metadata !DIExpression()), !dbg !6874
  call void @llvm.lifetime.start.p0(i64 4, ptr %bitpos) #17, !dbg !6875
  call void @llvm.dbg.declare(metadata ptr %bitpos, metadata !6873, metadata !DIExpression()), !dbg !6876
  store i32 -1, ptr %bitpos, align 4, !dbg !6876
  %0 = load i32, ptr %bitpos, align 4, !dbg !6877
  %1 = load i64, ptr %x.addr, align 8, !dbg !6878
  %2 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %1, i32 %0) #23, !dbg !6877, !srcloc !6879
  store i32 %2, ptr %bitpos, align 4, !dbg !6877
  %3 = load i32, ptr %bitpos, align 4, !dbg !6880
  %add = add i32 %3, 1, !dbg !6881
  call void @llvm.lifetime.end.p0(i64 4, ptr %bitpos) #17, !dbg !6882
  ret i32 %add, !dbg !6883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls_long(i64 noundef %l) #5 align 16 !dbg !6884 {
entry:
  %l.addr = alloca i64, align 8
  store i64 %l, ptr %l.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %l.addr, metadata !6889, metadata !DIExpression()), !dbg !6890
  %0 = load i64, ptr %l.addr, align 8, !dbg !6891
  %call = call i32 @fls64(i64 noundef %0) #19, !dbg !6892
  ret i32 %call, !dbg !6893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_buddy_block_order(ptr noundef %block) #5 align 16 !dbg !6894 {
entry:
  %block.addr = alloca ptr, align 8
  store ptr %block, ptr %block.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %block.addr, metadata !6898, metadata !DIExpression()), !dbg !6899
  %0 = load ptr, ptr %block.addr, align 8, !dbg !6900
  %header = getelementptr inbounds %struct.drm_buddy_block, ptr %0, i32 0, i32 0, !dbg !6901
  %1 = load i64, ptr %header, align 8, !dbg !6901
  %and = and i64 %1, 63, !dbg !6902
  %conv = trunc i64 %and to i32, !dbg !6900
  ret i32 %conv, !dbg !6903
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_ttm_buddy_resource(ptr noundef %res) #5 align 16 !dbg !6904 {
entry:
  %res.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !6908, metadata !DIExpression()), !dbg !6911
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #17, !dbg !6912
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6909, metadata !DIExpression()), !dbg !6912
  %0 = load ptr, ptr %res.addr, align 8, !dbg !6912
  store ptr %0, ptr %__mptr, align 8, !dbg !6912
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6912
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6912
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6912
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #17, !dbg !6913
  %2 = load ptr, ptr %tmp, align 8, !dbg !6912
  ret ptr %2, !dbg !6914
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6915 dso_local void @drm_printf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6918 dso_local void @drm_buddy_print(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6921 dso_local void @drm_buddy_block_print(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #5 align 16 !dbg !6924 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6930, metadata !DIExpression()), !dbg !6931
  br label %do.body, !dbg !6932

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !6934

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !6932
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !6932
  %1 = load volatile ptr, ptr %next, align 8, !dbg !6932
  store ptr %1, ptr %tmp, align 8, !dbg !6934
  %2 = load ptr, ptr %tmp, align 8, !dbg !6932
  %3 = load ptr, ptr %head.addr, align 8, !dbg !6936
  %cmp = icmp eq ptr %2, %3, !dbg !6937
  %conv = zext i1 %cmp to i32, !dbg !6937
  ret i32 %conv, !dbg !6938
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6939 dso_local void @__compiletime_assert_295() #15

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6940 dso_local void @__compiletime_assert_294() #16

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dma_fence_put(ptr noundef %fence) #5 align 16 !dbg !6941 {
entry:
  %fence.addr = alloca ptr, align 8
  store ptr %fence, ptr %fence.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fence.addr, metadata !6943, metadata !DIExpression()), !dbg !6944
  %0 = load ptr, ptr %fence.addr, align 8, !dbg !6945
  %tobool = icmp ne ptr %0, null, !dbg !6945
  br i1 %tobool, label %if.then, label %if.end, !dbg !6947

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %fence.addr, align 8, !dbg !6948
  %refcount = getelementptr inbounds %struct.dma_fence, ptr %1, i32 0, i32 6, !dbg !6949
  %call = call i32 @kref_put(ptr noundef %refcount, ptr noundef @dma_fence_release) #19, !dbg !6950
  br label %if.end, !dbg !6950

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !6951
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kref_put(ptr noundef %kref, ptr noundef %release) #5 align 16 !dbg !6952 {
entry:
  %retval = alloca i32, align 4
  %kref.addr = alloca ptr, align 8
  %release.addr = alloca ptr, align 8
  store ptr %kref, ptr %kref.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kref.addr, metadata !6960, metadata !DIExpression()), !dbg !6962
  store ptr %release, ptr %release.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %release.addr, metadata !6961, metadata !DIExpression()), !dbg !6963
  %0 = load ptr, ptr %kref.addr, align 8, !dbg !6964
  %refcount = getelementptr inbounds %struct.kref, ptr %0, i32 0, i32 0, !dbg !6966
  %call = call zeroext i1 @refcount_dec_and_test(ptr noundef %refcount) #19, !dbg !6967
  br i1 %call, label %if.then, label %if.end, !dbg !6968

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %release.addr, align 8, !dbg !6969
  %2 = load ptr, ptr %kref.addr, align 8, !dbg !6971
  call void %1(ptr noundef %2) #19, !dbg !6969
  store i32 1, ptr %retval, align 4, !dbg !6972
  br label %return, !dbg !6972

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6973
  br label %return, !dbg !6973

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !6974
  ret i32 %3, !dbg !6974
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @dma_fence_release(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #5 align 16 !dbg !6975 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6980, metadata !DIExpression()), !dbg !6981
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6982
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #19, !dbg !6983
  ret i1 %call, !dbg !6984
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6985 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !6989, metadata !DIExpression()), !dbg !6991
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !6990, metadata !DIExpression()), !dbg !6992
  %0 = load ptr, ptr %r.addr, align 8, !dbg !6993
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !6994
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #19, !dbg !6995
  ret i1 %call, !dbg !6996
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #5 align 16 !dbg !6997 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7001, metadata !DIExpression()), !dbg !7005
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !7002, metadata !DIExpression()), !dbg !7006
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !7003, metadata !DIExpression()), !dbg !7007
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #17, !dbg !7008
  call void @llvm.dbg.declare(metadata ptr %old, metadata !7004, metadata !DIExpression()), !dbg !7009
  %0 = load i32, ptr %i.addr, align 4, !dbg !7010
  %1 = load ptr, ptr %r.addr, align 8, !dbg !7011
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !7012
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #19, !dbg !7013
  store i32 %call, ptr %old, align 4, !dbg !7009
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !7014
  %tobool = icmp ne ptr %2, null, !dbg !7014
  br i1 %tobool, label %if.then, label %if.end, !dbg !7016

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !7017
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !7018
  store i32 %3, ptr %4, align 4, !dbg !7019
  br label %if.end, !dbg !7020

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !7021
  %6 = load i32, ptr %i.addr, align 4, !dbg !7023
  %cmp = icmp eq i32 %5, %6, !dbg !7024
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !7025

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !7026

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !7028

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !7030

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !7030

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !7028

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !7032

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !7034

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !7034

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #17, !dbg !7032, !srcloc !7036
  br label %do.cond7, !dbg !7032

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !7032

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !7028

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !7028

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !7037
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7037

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !7038
  %cmp12 = icmp slt i32 %7, 0, !dbg !7038
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !7038

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !7038
  %9 = load i32, ptr %i.addr, align 4, !dbg !7038
  %sub = sub i32 %8, %9, !dbg !7038
  %cmp13 = icmp slt i32 %sub, 0, !dbg !7038
  br label %lor.end, !dbg !7038

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !7038
  %lnot14 = xor i1 %lnot, true, !dbg !7038
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !7038
  %conv = sext i32 %lnot.ext to i64, !dbg !7038
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !7038
  %tobool15 = icmp ne i64 %expval, 0, !dbg !7038
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !7040

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !7041
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #19, !dbg !7042
  br label %if.end17, !dbg !7042

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !7043
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !7043

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #17, !dbg !7044
  %12 = load i1, ptr %retval, align 1, !dbg !7044
  ret i1 %12, !dbg !7044
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #10 align 16 !dbg !7045 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7051, metadata !DIExpression()), !dbg !7053
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7052, metadata !DIExpression()), !dbg !7054
  br label %do.body, !dbg !7055

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !7056

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7058
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #19, !dbg !7059
  %1 = load i32, ptr %i.addr, align 4, !dbg !7060
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7061
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #19, !dbg !7062
  ret i32 %call, !dbg !7063
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !7064 dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #10 align 16 !dbg !7067 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7075, metadata !DIExpression()), !dbg !7077
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7076, metadata !DIExpression()), !dbg !7078
  %0 = load ptr, ptr %v.addr, align 8, !dbg !7079
  %1 = load i64, ptr %size.addr, align 8, !dbg !7080
  %conv = trunc i64 %1 to i32, !dbg !7080
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #19, !dbg !7081
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7082
  %3 = load i64, ptr %size.addr, align 8, !dbg !7082
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #19, !dbg !7082
  ret void, !dbg !7083
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #10 align 16 !dbg !7084 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7087, metadata !DIExpression()), !dbg !7089
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7088, metadata !DIExpression()), !dbg !7090
  %0 = load i32, ptr %i.addr, align 4, !dbg !7091
  %1 = load ptr, ptr %v.addr, align 8, !dbg !7092
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #19, !dbg !7093
  ret i32 %call, !dbg !7094
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #5 align 16 !dbg !7095 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !7100, metadata !DIExpression()), !dbg !7102
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7101, metadata !DIExpression()), !dbg !7103
  ret i1 true, !dbg !7104
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #5 align 16 !dbg !7105 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !7110, metadata !DIExpression()), !dbg !7113
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !7111, metadata !DIExpression()), !dbg !7114
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !7112, metadata !DIExpression()), !dbg !7115
  ret void, !dbg !7116
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #10 align 16 !dbg !7117 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !7120, metadata !DIExpression()), !dbg !7124
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !7121, metadata !DIExpression()), !dbg !7125
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #17, !dbg !7126
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !7122, metadata !DIExpression()), !dbg !7126
  %0 = load i32, ptr %i.addr, align 4, !dbg !7126
  %sub = sub i32 0, %0, !dbg !7126
  store i32 %sub, ptr %__ret, align 4, !dbg !7126
  %1 = load i32, ptr %__ret, align 4, !dbg !7126
  %2 = load ptr, ptr %v.addr, align 8, !dbg !7126
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !7126
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #17, !dbg !7126, !srcloc !7127
  store i32 %3, ptr %__ret, align 4, !dbg !7126
  %4 = load i32, ptr %__ret, align 4, !dbg !7126
  store i32 %4, ptr %tmp, align 4, !dbg !7126
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #17, !dbg !7128
  %5 = load i32, ptr %tmp, align 4, !dbg !7126
  ret i32 %5, !dbg !7129
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: __builtin_constant_p(type) && type >= TTM_NUM_MEM_TYPES" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: __builtin_constant_p(mem_type) && mem_type >= TTM_NUM_MEM_TYPES" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nounwind }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { noredzone }
attributes #20 = { noredzone noreturn }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone nounwind willreturn memory(none) }
attributes #23 = { nounwind memory(read) }

!llvm.dbg.cu = !{!5388}
!llvm.module.flags = !{!5515, !5516, !5517, !5518, !5519, !5520, !5521, !5522}
!llvm.ident = !{!5523}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__key", scope: !2, file: !3, line: 317, type: !872, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "i915_ttm_buddy_man_init", scope: !3, file: !3, line: 300, type: !4, scopeLine: 304, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5503)
!3 = !DIFile(filename: "drivers/gpu/drm/i915/i915_ttm_buddy_manager.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3a7b84a44177a9d535cd53dc777b3460")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !53, !578, !304, !304, !304, !304}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device", file: !9, line: 215, size: 16960, elements: !10)
!9 = !DIFile(filename: "./include/drm/ttm/ttm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "318d87bc69ff4bc10378351ef0b91aca")
!10 = !{!11, !18, !5272, !5357, !5359, !5360, !5384, !5385, !5386, !5387}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !8, file: !9, line: 220, baseType: !12, size: 128)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !13, line: 190, size: 128, elements: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!14 = !{!15, !17}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !12, file: !13, line: 191, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !12, file: !13, line: 191, baseType: !16, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !8, file: !9, line: 226, baseType: !19, size: 64, offset: 128)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_device_funcs", file: !9, line: 61, size: 896, elements: !22)
!22 = !{!23, !5205, !5219, !5223, !5224, !5237, !5248, !5253, !5254, !5255, !5259, !5263, !5267, !5271}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_create", scope: !21, file: !9, line: 73, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DISubroutineType(types: !26)
!26 = !{!27, !30, !1132}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_tt", file: !29, line: 35, flags: DIFlagFwdDecl)
!29 = !DIFile(filename: "./include/drm/ttm/ttm_pool.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6613193a1a6bffece87937e591b2c286")
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_buffer_object", file: !32, line: 98, size: 3712, elements: !33)
!32 = !DIFile(filename: "./include/drm/ttm/ttm_bo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2f81fca0b8181781f1c758cd81feeff")
!33 = !{!34, !5151, !5152, !5158, !5159, !5163, !5164, !5188, !5189, !5190, !5201, !5202, !5203, !5204}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !31, file: !32, line: 99, baseType: !35, size: 2816)
!35 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object", file: !36, line: 264, size: 2816, elements: !37)
!36 = !DIFile(filename: "./include/drm/drm_gem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5db19977067e41c640c8fecb4e671923")
!37 = !{!38, !52, !54, !5048, !5049, !5056, !5057, !5058, !5059, !5060, !5069, !5070, !5074, !5142, !5143}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !35, file: !36, line: 274, baseType: !39, size: 32)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !40, line: 19, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !39, file: !40, line: 20, baseType: !43, size: 32)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !44, line: 113, baseType: !45)
!44 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !44, line: 111, size: 32, elements: !46)
!46 = !{!47}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !45, file: !44, line: 112, baseType: !48, size: 32)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !13, line: 174, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 172, size: 32, elements: !50)
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !49, file: !13, line: 173, baseType: !6, size: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "handle_count", scope: !35, file: !36, line: 287, baseType: !53, size: 32, offset: 32)
!53 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !35, file: !36, line: 292, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !57, line: 50, size: 12736, elements: !58)
!57 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!58 = !{!59, !60, !61, !4598, !4604, !4739, !4740, !4741, !4742, !4743, !4744, !4767, !4768, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !4776, !4777, !4778, !4779, !4780, !4783, !4784, !4785, !4786, !4787, !4788, !4789, !4994, !4995, !4996, !5033, !5036, !5043, !5046, !5047}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !56, file: !57, line: 52, baseType: !6, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !56, file: !57, line: 55, baseType: !39, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !56, file: !57, line: 58, baseType: !62, size: 64, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !64, line: 705, size: 5824, elements: !65)
!64 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!65 = !{!66, !4100, !4101, !4104, !4105, !4159, !4235, !4236, !4237, !4238, !4239, !4252, !4358, !4371, !4381, !4385, !4387, !4388, !4389, !4393, !4400, !4401, !4404, !4407, !4411, !4515, !4516, !4517, !4518, !4519, !4520, !4550, !4551, !4552, !4555, !4558, !4586, !4593, !4594, !4595, !4596, !4597}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !63, file: !64, line: 706, baseType: !67, size: 512)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !68, line: 64, size: 512, elements: !69)
!68 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!69 = !{!70, !74, !75, !77, !162, !4002, !4094, !4095, !4096, !4097, !4098, !4099}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !67, file: !68, line: 65, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !67, file: !68, line: 66, baseType: !12, size: 128, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !67, file: !68, line: 67, baseType: !76, size: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !67, file: !68, line: 68, baseType: !78, size: 64, offset: 256)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !68, line: 168, size: 768, elements: !80)
!80 = !{!81, !82, !121, !122}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !79, file: !68, line: 169, baseType: !12, size: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !79, file: !68, line: 170, baseType: !83, size: 32, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !84, line: 29, baseType: !85)
!84 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !84, line: 17, size: 32, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !84, line: 18, baseType: !88, size: 32)
!88 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !84, line: 18, size: 32, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !88, file: !84, line: 19, baseType: !91, size: 32)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !92, line: 14, size: 32, elements: !93)
!92 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!93 = !{!94}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !91, file: !92, line: 15, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !96, line: 44, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !96, line: 14, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !96, line: 15, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !97, file: !96, line: 15, size: 32, elements: !101)
!101 = !{!102, !103, !113}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !100, file: !96, line: 16, baseType: !48, size: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !96, line: 24, baseType: !104, size: 16)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !96, line: 24, size: 16, elements: !105)
!105 = !{!106, !112}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !104, file: !96, line: 25, baseType: !107, size: 8)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !108, line: 17, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !110, line: 21, baseType: !111)
!110 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!111 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !104, file: !96, line: 26, baseType: !107, size: 8, offset: 8)
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !96, line: 28, baseType: !114, size: 32)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !100, file: !96, line: 28, size: 32, elements: !115)
!115 = !{!116, !120}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !114, file: !96, line: 29, baseType: !117, size: 16)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !108, line: 19, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !110, line: 24, baseType: !119)
!119 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !114, file: !96, line: 30, baseType: !117, size: 16, offset: 16)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !79, file: !68, line: 171, baseType: !67, size: 512, offset: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !79, file: !68, line: 172, baseType: !123, size: 64, offset: 704)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !68, line: 133, size: 192, elements: !126)
!126 = !{!127, !134, !139}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !125, file: !68, line: 134, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!6, !132}
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !68, line: 135, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!71, !132}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !125, file: !68, line: 136, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!6, !132, !144}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !68, line: 125, size: 20736, elements: !146)
!146 = !{!147, !152, !156, !157, !161}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !145, file: !68, line: 126, baseType: !148, size: 192)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 192, elements: !150)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!150 = !{!151}
!151 = !DISubrange(count: 3)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !145, file: !68, line: 127, baseType: !153, size: 4096, offset: 192)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 4096, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !145, file: !68, line: 128, baseType: !6, size: 32, offset: 4288)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !145, file: !68, line: 129, baseType: !158, size: 16384, offset: 4320)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 16384, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 2048)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !145, file: !68, line: 130, baseType: !6, size: 32, offset: 20704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !67, file: !68, line: 69, baseType: !163, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !68, line: 116, size: 384, elements: !166)
!166 = !{!167, !171, !200, !3958, !3992, !3996}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !165, file: !68, line: 117, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !76}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !165, file: !68, line: 118, baseType: !172, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !175, line: 254, size: 128, elements: !176)
!175 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!176 = !{!177, !192}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !174, file: !175, line: 255, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !76, !186, !149}
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !13, line: 66, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !183, line: 73, baseType: !184)
!183 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !183, line: 15, baseType: !185)
!185 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !175, line: 30, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !187, file: !175, line: 31, baseType: !71, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !187, file: !175, line: 32, baseType: !191, size: 16, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !13, line: 24, baseType: !119)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !174, file: !175, line: 256, baseType: !193, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!181, !76, !186, !71, !196}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 61, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !183, line: 72, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !183, line: 16, baseType: !199)
!199 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !165, file: !68, line: 119, baseType: !201, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !175, line: 84, size: 320, elements: !205)
!205 = !{!206, !207, !211, !3954, !3956}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !175, line: 85, baseType: !71, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !204, file: !175, line: 86, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!191, !76, !186, !6}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !204, file: !175, line: 88, baseType: !212, size: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!191, !76, !215, !6}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !175, line: 175, size: 512, elements: !217)
!217 = !{!218, !219, !220, !222, !3945, !3949, !3950}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !216, file: !175, line: 176, baseType: !187, size: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !216, file: !175, line: 177, baseType: !196, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !216, file: !175, line: 178, baseType: !221, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !216, file: !175, line: 179, baseType: !223, size: 64, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !228, line: 472, size: 1536, align: 64, elements: !229)
!228 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!229 = !{!230, !3773, !3774, !3775, !3776, !3777, !3778, !3779, !3780, !3939, !3940, !3941, !3942, !3943, !3944}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !227, file: !228, line: 473, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !228, line: 641, size: 4800, elements: !233)
!233 = !{!234, !235, !236, !244, !245, !252, !253, !256, !257, !3711, !3712, !3713, !3714, !3715, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3744, !3745, !3746, !3747, !3748, !3749, !3750, !3755, !3758, !3759, !3760, !3769, !3770, !3771, !3772}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !232, file: !228, line: 642, baseType: !191, size: 16)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !232, file: !228, line: 643, baseType: !119, size: 16, offset: 16)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !232, file: !228, line: 644, baseType: !237, size: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !238, line: 23, baseType: !239)
!238 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 21, size: 32, elements: !240)
!240 = !{!241}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !239, file: !238, line: 22, baseType: !242, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !13, line: 37, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !183, line: 49, baseType: !53)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !232, file: !228, line: 645, baseType: !12, size: 128, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !232, file: !228, line: 646, baseType: !246, size: 32, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !238, line: 28, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !238, line: 26, size: 32, elements: !248)
!248 = !{!249}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !247, file: !238, line: 27, baseType: !250, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !13, line: 38, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !183, line: 50, baseType: !53)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !232, file: !228, line: 647, baseType: !53, size: 32, offset: 224)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !232, file: !228, line: 650, baseType: !254, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !228, line: 607, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !232, file: !228, line: 651, baseType: !254, size: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !232, file: !228, line: 654, baseType: !258, size: 64, offset: 384)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !228, line: 1966, size: 2048, align: 512, elements: !261)
!261 = !{!262, !3539, !3549, !3553, !3557, !3561, !3565, !3569, !3573, !3577, !3581, !3582, !3586, !3590, !3627, !3656, !3660, !3666, !3670, !3674, !3678, !3682, !3686, !3692, !3696}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !260, file: !228, line: 1967, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !231, !266, !53}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !268, line: 82, size: 1536, elements: !269)
!268 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!269 = !{!270, !271, !281, !289, !290, !310, !311, !315, !328, !3522, !3523, !3524, !3525, !3531, !3532, !3533}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !267, file: !268, line: 84, baseType: !53, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !267, file: !268, line: 85, baseType: !272, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !273, line: 275, baseType: !274)
!273 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !273, line: 275, size: 32, elements: !275)
!275 = !{!276}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !274, file: !273, line: 275, baseType: !277, size: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !273, line: 69, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !273, line: 64, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !278, file: !273, line: 65, baseType: !53, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !267, file: !268, line: 86, baseType: !282, size: 128, offset: 64)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !283, line: 38, size: 128, elements: !284)
!283 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!284 = !{!285, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !282, file: !283, line: 39, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !282, file: !283, line: 39, baseType: !288, size: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !267, file: !268, line: 87, baseType: !266, size: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !267, file: !268, line: 88, baseType: !291, size: 128, offset: 256)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !268, line: 49, size: 128, elements: !292)
!292 = !{!293, !307}
!293 = !DIDerivedType(tag: DW_TAG_member, scope: !291, file: !268, line: 50, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !291, file: !268, line: 50, size: 64, elements: !295)
!295 = !{!296, !303}
!296 = !DIDerivedType(tag: DW_TAG_member, scope: !294, file: !268, line: 51, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !294, file: !268, line: 51, size: 64, elements: !298)
!298 = !{!299, !302}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !297, file: !268, line: 52, baseType: !300, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !108, line: 21, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !110, line: 27, baseType: !53)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !297, file: !268, line: 52, baseType: !300, size: 32, offset: 32)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !294, file: !268, line: 54, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !108, line: 23, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !110, line: 31, baseType: !306)
!306 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !291, file: !268, line: 56, baseType: !308, size: 64, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !267, file: !268, line: 89, baseType: !231, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !267, file: !268, line: 91, baseType: !312, size: 256, offset: 448)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !313)
!313 = !{!314}
!314 = !DISubrange(count: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !267, file: !268, line: 94, baseType: !316, size: 64, offset: 704)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !317, line: 25, size: 64, elements: !318)
!317 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !316, file: !317, line: 26, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !316, file: !317, line: 26, size: 64, elements: !321)
!321 = !{!322, !323}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !320, file: !317, line: 28, baseType: !305, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !317, line: 30, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !317, line: 30, size: 64, elements: !325)
!325 = !{!326, !327}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !324, file: !317, line: 31, baseType: !83, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !324, file: !317, line: 32, baseType: !6, size: 32, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !267, file: !268, line: 95, baseType: !329, size: 64, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !268, line: 128, size: 1024, align: 512, elements: !332)
!332 = !{!333, !337, !338, !345, !351, !355, !359, !363, !364, !368, !372, !3512, !3516}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !331, file: !268, line: 129, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!6, !266, !53}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !331, file: !268, line: 130, baseType: !334, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !331, file: !268, line: 131, baseType: !339, size: 64, offset: 128)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!6, !342, !344}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !331, file: !268, line: 132, baseType: !346, size: 64, offset: 192)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!6, !342, !53, !71, !349}
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !331, file: !268, line: 134, baseType: !352, size: 64, offset: 256)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!6, !342}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !331, file: !268, line: 135, baseType: !356, size: 64, offset: 320)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!6, !266}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !331, file: !268, line: 136, baseType: !360, size: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !266}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !331, file: !268, line: 137, baseType: !360, size: 64, offset: 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !331, file: !268, line: 138, baseType: !365, size: 64, offset: 512)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !266, !231}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !331, file: !268, line: 139, baseType: !369, size: 64, offset: 576)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!149, !266, !149, !6}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !331, file: !268, line: 140, baseType: !373, size: 64, offset: 640)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!376, !3511}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !378, line: 70, size: 256, elements: !379)
!378 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!379 = !{!380, !381, !3507, !3508}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !377, file: !378, line: 71, baseType: !266, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !377, file: !378, line: 72, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !228, line: 1190, size: 10752, elements: !384)
!384 = !{!385, !386, !389, !390, !391, !395, !881, !2002, !2042, !2127, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2144, !2148, !2149, !2152, !2155, !2158, !2161, !2162, !2163, !2204, !3440, !3441, !3442, !3443, !3444, !3445, !3448, !3450, !3457, !3458, !3459, !3460, !3461, !3476, !3477, !3478, !3479, !3480, !3481, !3482, !3483, !3498, !3499, !3500, !3501, !3502, !3503, !3504, !3505, !3506}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !383, file: !228, line: 1191, baseType: !12, size: 128)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !383, file: !228, line: 1192, baseType: !387, size: 32, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !13, line: 21, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !13, line: 18, baseType: !300)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !383, file: !228, line: 1193, baseType: !111, size: 8, offset: 160)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !383, file: !228, line: 1194, baseType: !199, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !383, file: !228, line: 1195, baseType: !392, size: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !13, line: 52, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !183, line: 88, baseType: !394)
!394 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !383, file: !228, line: 1196, baseType: !396, size: 64, offset: 320)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !228, line: 2366, size: 576, elements: !398)
!398 = !{!399, !400, !401, !407, !411, !415, !419, !866, !867, !871, !873, !874, !875, !877, !878, !879, !880}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !397, file: !228, line: 2367, baseType: !71, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !397, file: !228, line: 2368, baseType: !6, size: 32, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !397, file: !228, line: 2376, baseType: !402, size: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!6, !405}
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !378, line: 21, flags: DIFlagFwdDecl)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !397, file: !228, line: 2377, baseType: !408, size: 64, offset: 192)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !410)
!410 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !228, line: 75, flags: DIFlagFwdDecl)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !397, file: !228, line: 2378, baseType: !412, size: 64, offset: 256)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!266, !396, !6, !71, !221}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !397, file: !228, line: 2380, baseType: !416, size: 64, offset: 320)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{null, !382}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !397, file: !228, line: 2381, baseType: !420, size: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !422, line: 402, size: 9216, align: 512, elements: !423)
!422 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!423 = !{!424, !431, !432, !436, !458, !484, !485, !486, !487, !491, !496, !497, !517, !573, !574, !575, !576, !577, !580, !581, !582, !590, !594, !621, !642, !643, !644, !645, !654, !677, !678, !681, !684, !685, !686, !687, !688, !689, !690, !695, !696, !824, !832, !833, !834, !836, !840, !841, !845, !846, !847, !848, !850, !851, !852, !859, !860, !861, !865}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !421, file: !422, line: 403, baseType: !425, size: 32)
!425 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !422, line: 312, baseType: !53, size: 32, elements: !426)
!426 = !{!427, !428, !429, !430}
!427 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!428 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!429 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!430 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !421, file: !422, line: 406, baseType: !12, size: 128, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !421, file: !422, line: 409, baseType: !433, size: 448, offset: 192)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 448, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 56)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !421, file: !422, line: 417, baseType: !437, size: 768, offset: 640)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !422, line: 45, size: 768, elements: !438)
!438 = !{!439, !440, !441, !442, !445}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !437, file: !422, line: 46, baseType: !67, size: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !437, file: !422, line: 47, baseType: !420, size: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !437, file: !422, line: 48, baseType: !76, size: 64, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !437, file: !422, line: 49, baseType: !443, size: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !422, line: 49, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !437, file: !422, line: 50, baseType: !446, size: 64, offset: 704)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !448, line: 26, size: 256, elements: !449)
!448 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !447, file: !448, line: 27, baseType: !53, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !447, file: !448, line: 28, baseType: !452, size: 192, offset: 64)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !453, line: 43, size: 192, elements: !454)
!453 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!454 = !{!455, !457}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !452, file: !453, line: 44, baseType: !456, size: 32)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !92, line: 23, baseType: !91)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !452, file: !453, line: 45, baseType: !12, size: 128, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !421, file: !422, line: 418, baseType: !459, size: 64, offset: 1408)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !422, line: 53, size: 448, elements: !461)
!461 = !{!462, !463, !468, !472, !476, !480}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !460, file: !422, line: 54, baseType: !187, size: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !460, file: !422, line: 55, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!181, !459, !467, !149}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !460, file: !422, line: 57, baseType: !469, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!181, !459, !467, !71, !196}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !460, file: !422, line: 59, baseType: !473, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{null, !420, !71}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !460, file: !422, line: 60, baseType: !477, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!6, !420}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !460, file: !422, line: 61, baseType: !481, size: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !420}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !421, file: !422, line: 419, baseType: !71, size: 64, offset: 1472)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !421, file: !422, line: 420, baseType: !71, size: 64, offset: 1536)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !421, file: !422, line: 421, baseType: !76, size: 64, offset: 1600)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !421, file: !422, line: 424, baseType: !488, size: 64, offset: 1664)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !422, line: 424, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !421, file: !422, line: 425, baseType: !492, size: 64, offset: 1728)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !108, line: 20, baseType: !495)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !110, line: 26, baseType: !6)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !421, file: !422, line: 426, baseType: !53, size: 32, offset: 1792)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !421, file: !422, line: 435, baseType: !498, size: 256, offset: 1856)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !499, line: 66, size: 256, elements: !500)
!499 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!500 = !{!501, !510, !511, !516}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !498, file: !499, line: 67, baseType: !502, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !503, line: 13, baseType: !504)
!503 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !13, line: 181, baseType: !505)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 179, size: 64, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !505, file: !13, line: 180, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !108, line: 22, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !110, line: 30, baseType: !394)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !498, file: !499, line: 68, baseType: !456, size: 32, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !498, file: !499, line: 70, baseType: !512, size: 32, offset: 96)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !513, line: 15, size: 32, elements: !514)
!513 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !512, file: !513, line: 20, baseType: !48, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !498, file: !499, line: 72, baseType: !12, size: 128, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !421, file: !422, line: 437, baseType: !518, size: 64, offset: 2112)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !520, line: 69, size: 320, elements: !521)
!520 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!521 = !{!522, !523, !524, !544, !546, !550, !551}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !519, file: !520, line: 70, baseType: !71, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !519, file: !520, line: 71, baseType: !420, size: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !519, file: !520, line: 72, baseType: !525, size: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !527)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !520, line: 47, size: 256, elements: !528)
!528 = !{!529, !530, !536, !540}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !527, file: !520, line: 49, baseType: !53, size: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !527, file: !520, line: 51, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{!6, !71, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !519)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !527, file: !520, line: 53, baseType: !537, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!6, !149, !534}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !527, file: !520, line: 55, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = !DISubroutineType(types: !543)
!543 = !{null, !221}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !519, file: !520, line: 73, baseType: !545, size: 16, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !519, file: !520, line: 74, baseType: !547, size: 8, offset: 208)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !108, line: 16, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !110, line: 20, baseType: !549)
!549 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !520, line: 75, baseType: !107, size: 8, offset: 216)
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 76, baseType: !552, size: 64, offset: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 76, size: 64, elements: !553)
!553 = !{!554, !555, !562}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !552, file: !520, line: 77, baseType: !221, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !552, file: !520, line: 78, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !520, line: 86, size: 128, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !558, file: !520, line: 87, baseType: !53, size: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !558, file: !520, line: 88, baseType: !149, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !552, file: !520, line: 79, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !565)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !520, line: 92, size: 256, elements: !566)
!566 = !{!567, !568, !569, !571, !572}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !565, file: !520, line: 94, baseType: !53, size: 32)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !565, file: !520, line: 95, baseType: !53, size: 32, offset: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !565, file: !520, line: 96, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !565, file: !520, line: 97, baseType: !525, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !565, file: !520, line: 98, baseType: !221, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !421, file: !422, line: 438, baseType: !53, size: 32, offset: 2176)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !421, file: !422, line: 441, baseType: !53, size: 32, offset: 2208)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !421, file: !422, line: 442, baseType: !488, size: 64, offset: 2240)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !421, file: !422, line: 443, baseType: !492, size: 64, offset: 2304)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !421, file: !422, line: 444, baseType: !578, size: 8, offset: 2368)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 35, baseType: !579)
!579 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !421, file: !422, line: 451, baseType: !578, size: 8, offset: 2376)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !421, file: !422, line: 454, baseType: !53, size: 32, offset: 2400)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !421, file: !422, line: 455, baseType: !583, size: 64, offset: 2432)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !585, line: 23, size: 96, elements: !586)
!585 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!586 = !{!587, !588, !589}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !584, file: !585, line: 24, baseType: !6, size: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !584, file: !585, line: 24, baseType: !6, size: 32, offset: 32)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !584, file: !585, line: 24, baseType: !6, size: 32, offset: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !421, file: !422, line: 458, baseType: !591, size: 64, offset: 2496)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!6}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !421, file: !422, line: 460, baseType: !595, size: 4032, align: 512, offset: 2560)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !596, size: 4032, elements: !619)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !422, line: 362, size: 576, elements: !597)
!597 = !{!598, !599, !600}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !596, file: !422, line: 363, baseType: !221, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !596, file: !422, line: 364, baseType: !53, size: 32, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !596, file: !422, line: 367, baseType: !601, size: 448, offset: 128)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !422, line: 319, size: 448, elements: !602)
!602 = !{!603, !604}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !601, file: !422, line: 320, baseType: !420, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !601, file: !422, line: 321, baseType: !605, size: 384, offset: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !606, line: 40, size: 384, elements: !607)
!606 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!607 = !{!608}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !605, file: !606, line: 41, baseType: !609, size: 384, align: 64)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 384, align: 64, elements: !617)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !611, line: 5, size: 192, align: 64, elements: !612)
!611 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!612 = !{!613, !614, !616}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !610, file: !611, line: 6, baseType: !199, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !610, file: !611, line: 7, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !610, file: !611, line: 8, baseType: !615, size: 64, offset: 128)
!617 = !{!618}
!618 = !DISubrange(count: 2)
!619 = !{!620}
!620 = !DISubrange(count: 7)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !421, file: !422, line: 463, baseType: !622, size: 192, offset: 6592)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !623, line: 8, size: 192, elements: !624)
!623 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!624 = !{!625, !626, !628}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !622, file: !623, line: 10, baseType: !53, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !622, file: !623, line: 11, baseType: !627, size: 64, offset: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !622, file: !623, line: 12, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !631, line: 59, size: 48, elements: !632)
!631 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!632 = !{!633, !637, !638, !639, !640, !641}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !630, file: !631, line: 60, baseType: !634, size: 16)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !108, line: 18, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !110, line: 23, baseType: !636)
!636 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !630, file: !631, line: 61, baseType: !634, size: 16, offset: 16)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !630, file: !631, line: 63, baseType: !53, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !630, file: !631, line: 64, baseType: !53, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !631, line: 65, baseType: !53, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !630, file: !631, line: 66, baseType: !53, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !421, file: !422, line: 465, baseType: !199, size: 64, offset: 6784)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !421, file: !422, line: 469, baseType: !53, size: 32, offset: 6848)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !421, file: !422, line: 470, baseType: !12, size: 128, offset: 6912)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !421, file: !422, line: 471, baseType: !646, size: 64, offset: 7040)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !648, line: 33, size: 96, elements: !649)
!648 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!649 = !{!650, !651, !652, !653}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !647, file: !648, line: 37, baseType: !6, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !647, file: !648, line: 43, baseType: !6, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !647, file: !648, line: 45, baseType: !119, size: 16, offset: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !647, file: !648, line: 47, baseType: !119, size: 16, offset: 80)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !421, file: !422, line: 476, baseType: !655, size: 64, offset: 7104)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !422, line: 378, size: 256, elements: !657)
!657 = !{!658, !674, !675, !676}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !656, file: !422, line: 379, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !661, line: 204, baseType: !662)
!661 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !661, line: 197, size: 192, elements: !663)
!663 = !{!664, !666, !667, !668, !670, !672}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !662, file: !661, line: 198, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !661, line: 21, baseType: !301)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !662, file: !661, line: 199, baseType: !111, size: 8, offset: 32)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !662, file: !661, line: 200, baseType: !111, size: 8, offset: 40)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !662, file: !661, line: 201, baseType: !669, size: 16, offset: 48)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !661, line: 17, baseType: !118)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !662, file: !661, line: 202, baseType: !671, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !661, line: 16, baseType: !305)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !662, file: !661, line: 203, baseType: !673, size: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !661, line: 22, baseType: !305)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !656, file: !422, line: 380, baseType: !53, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !656, file: !422, line: 381, baseType: !149, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !656, file: !422, line: 382, baseType: !149, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !421, file: !422, line: 477, baseType: !656, size: 256, offset: 7168)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !421, file: !422, line: 480, baseType: !679, size: 64, offset: 7424)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !422, line: 480, flags: DIFlagFwdDecl)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !421, file: !422, line: 483, baseType: !682, size: 64, offset: 7488)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !422, line: 483, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !421, file: !422, line: 488, baseType: !149, size: 64, offset: 7552)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !421, file: !422, line: 492, baseType: !221, size: 64, offset: 7616)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !421, file: !422, line: 493, baseType: !53, size: 32, offset: 7680)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !421, file: !422, line: 495, baseType: !221, size: 64, offset: 7744)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !421, file: !422, line: 496, baseType: !53, size: 32, offset: 7808)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !421, file: !422, line: 499, baseType: !53, size: 32, offset: 7840)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !421, file: !422, line: 500, baseType: !691, size: 64, offset: 7872)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !693, line: 45, baseType: !694)
!693 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !421, file: !422, line: 503, baseType: !53, size: 32, offset: 7936)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !421, file: !422, line: 504, baseType: !697, size: 64, offset: 8000)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !700, line: 96, size: 192, elements: !701)
!700 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!701 = !{!702, !703, !784, !788}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !699, file: !700, line: 97, baseType: !53, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !699, file: !700, line: 98, baseType: !704, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !700, line: 24, size: 3072, elements: !706)
!706 = !{!707, !709, !710, !711, !712, !736, !737, !738, !739, !757, !769, !770, !781, !782, !783}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !705, file: !700, line: 26, baseType: !708, size: 128)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 128, elements: !617)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !705, file: !700, line: 27, baseType: !708, size: 128, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !705, file: !700, line: 28, baseType: !6, size: 32, offset: 256)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !705, file: !700, line: 31, baseType: !83, size: 32, align: 512, offset: 512)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !705, file: !700, line: 32, baseType: !713, size: 960, offset: 576)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !714, line: 206, size: 960, elements: !715)
!714 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!715 = !{!716, !725, !730, !732, !733, !735}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !713, file: !714, line: 207, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !13, line: 232, size: 128, align: 64, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !13, line: 233, baseType: !717, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !718, file: !13, line: 234, baseType: !722, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !717}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !713, file: !714, line: 208, baseType: !726, size: 256, offset: 64)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 256, elements: !728)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!728 = !{!729}
!729 = !DISubrange(count: 4)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !713, file: !714, line: 209, baseType: !731, size: 256, offset: 320)
!731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !728)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !713, file: !714, line: 213, baseType: !185, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !713, file: !714, line: 215, baseType: !734, size: 256, offset: 640)
!734 = !DICompositeType(tag: DW_TAG_array_type, baseType: !185, size: 256, elements: !728)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !713, file: !714, line: 216, baseType: !107, size: 8, offset: 896)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !705, file: !700, line: 33, baseType: !199, size: 64, offset: 1536)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !705, file: !700, line: 34, baseType: !199, size: 64, offset: 1600)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !705, file: !700, line: 35, baseType: !578, size: 8, offset: 1664)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !705, file: !700, line: 36, baseType: !740, size: 320, offset: 1728)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !741, line: 11, size: 320, elements: !742)
!741 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!742 = !{!743, !750, !751, !756}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !740, file: !741, line: 16, baseType: !744, size: 128)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !13, line: 198, size: 128, elements: !745)
!745 = !{!746, !748}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !744, file: !13, line: 199, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !744, file: !13, line: 199, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !740, file: !741, line: 17, baseType: !199, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !740, file: !741, line: 18, baseType: !752, size: 64, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !740, file: !741, line: 19, baseType: !300, size: 32, offset: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !705, file: !700, line: 37, baseType: !758, size: 256, offset: 2048)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !759, line: 98, size: 256, elements: !760)
!759 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!760 = !{!761, !762, !763}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !758, file: !759, line: 99, baseType: !502, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !758, file: !759, line: 100, baseType: !12, size: 128, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !758, file: !759, line: 101, baseType: !764, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !759, line: 21, baseType: !765)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{null, !768}
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !705, file: !700, line: 38, baseType: !718, size: 128, align: 64, offset: 2304)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !705, file: !700, line: 39, baseType: !771, size: 64, offset: 2432)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !700, line: 49, size: 768, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !772, file: !700, line: 50, baseType: !83, size: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !772, file: !700, line: 51, baseType: !731, size: 256, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !772, file: !700, line: 53, baseType: !731, size: 256, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !772, file: !700, line: 54, baseType: !199, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !772, file: !700, line: 55, baseType: !771, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !772, file: !700, line: 56, baseType: !6, size: 32, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !772, file: !700, line: 57, baseType: !6, size: 32, offset: 736)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !705, file: !700, line: 40, baseType: !199, size: 64, offset: 2496)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !705, file: !700, line: 42, baseType: !6, size: 32, offset: 2560)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !705, file: !700, line: 43, baseType: !698, size: 64, offset: 2624)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !699, file: !700, line: 99, baseType: !785, offset: 128)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !786, line: 211, elements: !787)
!786 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!787 = !{}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !699, file: !700, line: 100, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !700, line: 63, size: 3008, elements: !791)
!791 = !{!792, !793, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !814, !823}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !790, file: !700, line: 64, baseType: !771, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !790, file: !700, line: 65, baseType: !794, size: 192, offset: 64)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !771, size: 192, elements: !150)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !790, file: !700, line: 67, baseType: !6, size: 32, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !790, file: !700, line: 68, baseType: !498, size: 256, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !790, file: !700, line: 69, baseType: !83, size: 32, offset: 576)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !790, file: !700, line: 70, baseType: !498, size: 256, offset: 640)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !790, file: !700, line: 71, baseType: !199, size: 64, offset: 896)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !790, file: !700, line: 72, baseType: !199, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !790, file: !700, line: 73, baseType: !199, size: 64, offset: 1024)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !790, file: !700, line: 74, baseType: !199, size: 64, offset: 1088)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !790, file: !700, line: 75, baseType: !199, size: 64, offset: 1152)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !790, file: !700, line: 76, baseType: !199, size: 64, offset: 1216)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !790, file: !700, line: 77, baseType: !199, size: 64, offset: 1280)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !790, file: !700, line: 78, baseType: !199, size: 64, offset: 1344)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !790, file: !700, line: 79, baseType: !578, size: 8, offset: 1408)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !790, file: !700, line: 80, baseType: !199, size: 64, offset: 1472)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !790, file: !700, line: 81, baseType: !498, size: 256, offset: 1536)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !790, file: !700, line: 82, baseType: !447, size: 256, offset: 1792)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !790, file: !700, line: 84, baseType: !48, size: 32, offset: 2048)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !790, file: !700, line: 87, baseType: !199, size: 64, offset: 2112)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !790, file: !700, line: 88, baseType: !199, size: 64, offset: 2176)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !790, file: !700, line: 89, baseType: !815, size: 704, offset: 2240)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !759, line: 111, size: 704, elements: !816)
!816 = !{!817, !818, !819, !822}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !815, file: !759, line: 112, baseType: !758, size: 256)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !815, file: !759, line: 113, baseType: !740, size: 320, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !815, file: !759, line: 116, baseType: !820, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !759, line: 18, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !815, file: !759, line: 117, baseType: !6, size: 32, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !790, file: !700, line: 90, baseType: !698, size: 64, offset: 2944)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !421, file: !422, line: 515, baseType: !825, size: 64, offset: 8064)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !827, line: 117, size: 128, elements: !828)
!827 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!828 = !{!829, !830, !831}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !826, file: !827, line: 118, baseType: !494, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !826, file: !827, line: 119, baseType: !494, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !826, file: !827, line: 120, baseType: !185, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !421, file: !422, line: 516, baseType: !53, size: 32, offset: 8128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !421, file: !422, line: 519, baseType: !53, size: 32, offset: 8160)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !421, file: !422, line: 520, baseType: !835, size: 64, offset: 8192)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !421, file: !422, line: 523, baseType: !837, size: 64, offset: 8256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !422, line: 523, flags: DIFlagFwdDecl)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !421, file: !422, line: 524, baseType: !53, size: 32, offset: 8320)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !421, file: !422, line: 525, baseType: !842, size: 64, offset: 8384)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !422, line: 525, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !421, file: !422, line: 526, baseType: !53, size: 32, offset: 8448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !421, file: !422, line: 533, baseType: !221, size: 64, offset: 8512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !421, file: !422, line: 534, baseType: !53, size: 32, offset: 8576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !421, file: !422, line: 535, baseType: !849, size: 64, offset: 8640)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !421, file: !422, line: 536, baseType: !53, size: 32, offset: 8704)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !421, file: !422, line: 539, baseType: !6, size: 32, offset: 8736)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !421, file: !422, line: 540, baseType: !853, size: 64, offset: 8768)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !855, line: 32, size: 64, elements: !856)
!855 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !854, file: !855, line: 33, baseType: !494, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !854, file: !855, line: 34, baseType: !494, size: 32, offset: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !421, file: !422, line: 563, baseType: !12, size: 128, offset: 8832)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !421, file: !422, line: 565, baseType: !12, size: 128, offset: 8960)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !421, file: !422, line: 568, baseType: !862, size: 64, offset: 9088)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{null}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !421, file: !422, line: 570, baseType: !48, size: 32, offset: 9152)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !397, file: !228, line: 2382, baseType: !396, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !397, file: !228, line: 2383, baseType: !868, size: 64, offset: 512)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !13, line: 194, size: 64, elements: !869)
!869 = !{!870}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !868, file: !13, line: 195, baseType: !747, size: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !397, file: !228, line: 2385, baseType: !872, offset: 576)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !786, line: 206, elements: !787)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !397, file: !228, line: 2386, baseType: !872, offset: 576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !397, file: !228, line: 2387, baseType: !872, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !397, file: !228, line: 2388, baseType: !876, offset: 576)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !872, elements: !150)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !397, file: !228, line: 2390, baseType: !872, offset: 576)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !397, file: !228, line: 2391, baseType: !872, offset: 576)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !397, file: !228, line: 2392, baseType: !872, offset: 576)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !397, file: !228, line: 2393, baseType: !872, offset: 576)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !383, file: !228, line: 1197, baseType: !882, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !228, line: 2057, size: 1664, elements: !885)
!885 = !{!886, !890, !894, !895, !899, !905, !909, !910, !911, !915, !923, !927, !928, !929, !935, !939, !940, !1921, !1922, !1923, !1924, !1928, !1932, !1985, !2000, !2001}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !884, file: !228, line: 2058, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!231, !382}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !884, file: !228, line: 2059, baseType: !891, size: 64, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DISubroutineType(types: !893)
!893 = !{null, !231}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !884, file: !228, line: 2060, baseType: !891, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !884, file: !228, line: 2062, baseType: !896, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{null, !231, !6}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !884, file: !228, line: 2063, baseType: !900, size: 64, offset: 256)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!6, !231, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !228, line: 309, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !884, file: !228, line: 2064, baseType: !906, size: 64, offset: 320)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!6, !231}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !884, file: !228, line: 2065, baseType: !891, size: 64, offset: 384)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !884, file: !228, line: 2066, baseType: !416, size: 64, offset: 448)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !884, file: !228, line: 2067, baseType: !912, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!6, !382, !6}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !884, file: !228, line: 2068, baseType: !916, size: 64, offset: 576)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!6, !382, !919}
!919 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !228, line: 2052, baseType: !53, size: 32, elements: !920)
!920 = !{!921, !922}
!921 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!922 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !884, file: !228, line: 2069, baseType: !924, size: 64, offset: 640)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!6, !382}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !884, file: !228, line: 2070, baseType: !916, size: 64, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !884, file: !228, line: 2071, baseType: !924, size: 64, offset: 768)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !884, file: !228, line: 2072, baseType: !930, size: 64, offset: 832)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DISubroutineType(types: !932)
!932 = !{!6, !266, !933}
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !228, line: 62, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !884, file: !228, line: 2073, baseType: !936, size: 64, offset: 896)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!6, !382, !627, !149}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !884, file: !228, line: 2074, baseType: !416, size: 64, offset: 960)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !884, file: !228, line: 2076, baseType: !941, size: 64, offset: 1024)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!6, !944, !266}
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !946, line: 17, size: 960, elements: !947)
!946 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!947 = !{!948, !949, !950, !951, !952, !953, !954, !955, !956, !978, !979, !1920}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !945, file: !946, line: 18, baseType: !149, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !945, file: !946, line: 19, baseType: !196, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !945, file: !946, line: 20, baseType: !196, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !945, file: !946, line: 21, baseType: !196, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !945, file: !946, line: 22, baseType: !196, size: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !945, file: !946, line: 23, baseType: !392, size: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !945, file: !946, line: 24, baseType: !392, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !945, file: !946, line: 25, baseType: !498, size: 256, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !945, file: !946, line: 26, baseType: !957, size: 64, offset: 704)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !946, line: 32, size: 256, elements: !960)
!960 = !{!961, !966, !970, !974}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !959, file: !946, line: 33, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!221, !944, !965}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !959, file: !946, line: 34, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !944, !221}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !959, file: !946, line: 35, baseType: !971, size: 64, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!221, !944, !221, !965}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !959, file: !946, line: 36, baseType: !975, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!6, !944, !221}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !945, file: !946, line: 27, baseType: !6, size: 32, offset: 768)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !945, file: !946, line: 28, baseType: !980, size: 64, offset: 832)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !228, line: 994, size: 1856, align: 64, elements: !983)
!983 = !{!984, !995, !996, !998, !999, !1000, !1001, !1002, !1066, !1267, !1276, !1282, !1283, !1910, !1911, !1912, !1913, !1915, !1916, !1919}
!984 = !DIDerivedType(tag: DW_TAG_member, scope: !982, file: !228, line: 995, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !982, file: !228, line: 995, size: 128, elements: !986)
!986 = !{!987, !993, !994}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !985, file: !228, line: 996, baseType: !988, size: 64)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !989, line: 60, size: 64, elements: !990)
!989 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!990 = !{!991}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !988, file: !989, line: 61, baseType: !992, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !985, file: !228, line: 997, baseType: !718, size: 128, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !985, file: !228, line: 998, baseType: !53, size: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !982, file: !228, line: 1005, baseType: !83, size: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !982, file: !228, line: 1006, baseType: !997, size: 32, offset: 160)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !13, line: 156, baseType: !53)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !982, file: !228, line: 1007, baseType: !502, size: 64, offset: 192)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !982, file: !228, line: 1008, baseType: !498, size: 256, offset: 256)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !982, file: !228, line: 1009, baseType: !392, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !982, file: !228, line: 1010, baseType: !53, size: 32, offset: 576)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !982, file: !228, line: 1011, baseType: !1003, size: 256, offset: 640)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !228, line: 948, size: 256, elements: !1004)
!1004 = !{!1005, !1026, !1055, !1063, !1064, !1065}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1003, file: !228, line: 949, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1007, line: 34, baseType: !1008)
!1007 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1007, line: 25, size: 64, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1008, file: !1007, line: 26, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1012, line: 27, baseType: !1013)
!1012 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1012, line: 13, size: 64, elements: !1014)
!1014 = !{!1015, !1025}
!1015 = !DIDerivedType(tag: DW_TAG_member, scope: !1013, file: !1012, line: 14, baseType: !1016, size: 32)
!1016 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1013, file: !1012, line: 14, size: 32, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1016, file: !1012, line: 15, baseType: !48, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1016, file: !1012, line: 16, baseType: !1020, size: 32)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1016, file: !1012, line: 16, size: 32, elements: !1021)
!1021 = !{!1022, !1023}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1020, file: !1012, line: 18, baseType: !107, size: 8)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1020, file: !1012, line: 19, baseType: !1024, size: 24, offset: 8)
!1024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 24, elements: !150)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1013, file: !1012, line: 26, baseType: !95, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1003, file: !228, line: 950, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !1029, line: 59, size: 768, elements: !1030)
!1029 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!1030 = !{!1031, !1032, !1033, !1034, !1036, !1037, !1044, !1045}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1028, file: !1029, line: 61, baseType: !43, size: 32)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1028, file: !1029, line: 62, baseType: !53, size: 32, offset: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1028, file: !1029, line: 63, baseType: !83, size: 32, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1028, file: !1029, line: 65, baseType: !1035, size: 256, offset: 128)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !868, size: 256, elements: !728)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1028, file: !1029, line: 66, baseType: !868, size: 64, offset: 384)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1028, file: !1029, line: 68, baseType: !1038, size: 192, offset: 448)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1039, line: 41, baseType: !1040)
!1039 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1039, line: 37, size: 192, elements: !1041)
!1041 = !{!1042, !1043}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1040, file: !1039, line: 38, baseType: !83, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1040, file: !1039, line: 39, baseType: !12, size: 128, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1028, file: !1029, line: 69, baseType: !718, size: 128, align: 64, offset: 640)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1028, file: !1029, line: 70, baseType: !1046, offset: 768)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1047, elements: !1053)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !1029, line: 54, size: 128, elements: !1048)
!1048 = !{!1049, !1050}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1047, file: !1029, line: 55, baseType: !6, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1047, file: !1029, line: 56, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1029, line: 56, flags: DIFlagFwdDecl)
!1053 = !{!1054}
!1054 = !DISubrange(count: -1)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1003, file: !228, line: 951, baseType: !1056, size: 32, offset: 128)
!1056 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !1029, line: 9, baseType: !53, size: 32, elements: !1057)
!1057 = !{!1058, !1059, !1060, !1061, !1062}
!1058 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!1059 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!1060 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!1061 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!1062 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1003, file: !228, line: 952, baseType: !237, size: 32, offset: 160)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1003, file: !228, line: 952, baseType: !237, size: 32, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1003, file: !228, line: 953, baseType: !6, size: 32, offset: 224)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !982, file: !228, line: 1012, baseType: !1067, size: 64, offset: 896)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1070, line: 110, size: 1472, elements: !1071)
!1070 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1071 = !{!1072, !1073, !1074, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1088, !1089, !1090, !1091, !1092, !1093, !1211, !1212, !1213, !1214, !1215, !1246, !1250, !1254, !1262}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1069, file: !1070, line: 111, baseType: !502, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1069, file: !1070, line: 112, baseType: !237, size: 32, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1069, file: !1070, line: 113, baseType: !246, size: 32, offset: 96)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1069, file: !1070, line: 114, baseType: !237, size: 32, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1069, file: !1070, line: 115, baseType: !246, size: 32, offset: 160)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1069, file: !1070, line: 116, baseType: !237, size: 32, offset: 192)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1069, file: !1070, line: 117, baseType: !246, size: 32, offset: 224)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1069, file: !1070, line: 118, baseType: !237, size: 32, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1069, file: !1070, line: 119, baseType: !246, size: 32, offset: 288)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1069, file: !1070, line: 120, baseType: !53, size: 32, offset: 320)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1069, file: !1070, line: 121, baseType: !1083, size: 64, offset: 384)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1084, line: 24, baseType: !1085)
!1084 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 24, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1085, file: !1084, line: 24, baseType: !304, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1069, file: !1070, line: 122, baseType: !1083, size: 64, offset: 448)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1069, file: !1070, line: 123, baseType: !1083, size: 64, offset: 512)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1069, file: !1070, line: 124, baseType: !1083, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1069, file: !1070, line: 125, baseType: !1083, size: 64, offset: 640)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1069, file: !1070, line: 127, baseType: !111, size: 8, offset: 704)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1069, file: !1070, line: 129, baseType: !1094, size: 64, offset: 768)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1096, line: 195, size: 1728, elements: !1097)
!1096 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1097 = !{!1098, !1099, !1102, !1107, !1116, !1119, !1120, !1127, !1128, !1129, !1130, !1133, !1134, !1135, !1136, !1137, !1175, !1196}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1095, file: !1096, line: 196, baseType: !43, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1095, file: !1096, line: 197, baseType: !1100, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1096, line: 28, baseType: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !13, line: 104, baseType: !494)
!1102 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1096, line: 198, baseType: !1103, size: 192, offset: 64)
!1103 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !1096, line: 198, size: 192, elements: !1104)
!1104 = !{!1105, !1106}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1103, file: !1096, line: 199, baseType: !12, size: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1103, file: !1096, line: 200, baseType: !610, size: 192, align: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1095, file: !1096, line: 205, baseType: !1108, size: 320, offset: 256)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1109, line: 48, size: 320, elements: !1110)
!1109 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1110 = !{!1111, !1112, !1113, !1114, !1115}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1108, file: !1109, line: 49, baseType: !502, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1108, file: !1109, line: 55, baseType: !502, size: 64, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1108, file: !1109, line: 57, baseType: !512, size: 32, offset: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1108, file: !1109, line: 59, baseType: !456, size: 32, offset: 160)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1108, file: !1109, line: 60, baseType: !12, size: 128, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1095, file: !1096, line: 206, baseType: !1117, size: 64, offset: 576)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1096, line: 206, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1095, file: !1096, line: 207, baseType: !221, size: 64, offset: 640)
!1120 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1096, line: 208, baseType: !1121, size: 64, offset: 704)
!1121 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !1096, line: 208, size: 64, elements: !1122)
!1122 = !{!1123, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1121, file: !1096, line: 209, baseType: !1124, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1125, line: 8, baseType: !509)
!1125 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1121, file: !1096, line: 210, baseType: !1124, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1095, file: !1096, line: 212, baseType: !1124, size: 64, offset: 768)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1095, file: !1096, line: 213, baseType: !237, size: 32, offset: 832)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1095, file: !1096, line: 214, baseType: !246, size: 32, offset: 864)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1095, file: !1096, line: 215, baseType: !1131, size: 32, offset: 896)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1096, line: 31, baseType: !1132)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !13, line: 110, baseType: !300)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1095, file: !1096, line: 216, baseType: !119, size: 16, offset: 928)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1095, file: !1096, line: 217, baseType: !119, size: 16, offset: 944)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1095, file: !1096, line: 221, baseType: !636, size: 16, offset: 960)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1095, file: !1096, line: 228, baseType: !199, size: 64, offset: 1024)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1096, line: 245, baseType: !1138, size: 320, offset: 1088)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !1096, line: 245, size: 320, elements: !1139)
!1139 = !{!1140, !1167}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1138, file: !1096, line: 246, baseType: !1141, size: 320)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1096, line: 114, size: 320, elements: !1142)
!1142 = !{!1143, !1144, !1156, !1159, !1166}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1141, file: !1096, line: 116, baseType: !199, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, scope: !1141, file: !1096, line: 117, baseType: !1145, size: 64, offset: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1141, file: !1096, line: 117, size: 64, elements: !1146)
!1146 = !{!1147, !1155}
!1147 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !1096, line: 118, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1145, file: !1096, line: 118, size: 64, elements: !1149)
!1149 = !{!1150, !1151}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1148, file: !1096, line: 120, baseType: !117, size: 16)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1148, file: !1096, line: 121, baseType: !1152, size: 48, offset: 16)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 48, elements: !1153)
!1153 = !{!1154}
!1154 = !DISubrange(count: 6)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1145, file: !1096, line: 127, baseType: !199, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1141, file: !1096, line: 129, baseType: !1157, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1096, line: 102, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1141, file: !1096, line: 130, baseType: !1160, size: 64, offset: 192)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1096, line: 108, size: 192, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1161, file: !1096, line: 109, baseType: !718, size: 128, align: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1161, file: !1096, line: 110, baseType: !43, size: 32, offset: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1161, file: !1096, line: 111, baseType: !578, size: 8, offset: 160)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1141, file: !1096, line: 131, baseType: !71, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1096, line: 247, baseType: !1168, size: 320)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1096, line: 247, size: 320, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1168, file: !1096, line: 248, baseType: !199, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1168, file: !1096, line: 249, baseType: !199, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1168, file: !1096, line: 250, baseType: !1157, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1168, file: !1096, line: 251, baseType: !1160, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1168, file: !1096, line: 252, baseType: !149, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1095, file: !1096, line: 260, baseType: !1176, size: 256, offset: 1408)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1095, file: !1096, line: 260, size: 256, elements: !1177)
!1177 = !{!1178, !1184}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1176, file: !1096, line: 261, baseType: !1179, size: 256)
!1179 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1096, line: 134, size: 256, elements: !1180)
!1180 = !{!1181, !1182}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1179, file: !1096, line: 135, baseType: !221, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1179, file: !1096, line: 136, baseType: !1183, size: 256)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 256, elements: !728)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !1096, line: 262, baseType: !1185, size: 256)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !1096, line: 262, size: 256, elements: !1186)
!1186 = !{!1187, !1188}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1185, file: !1096, line: 264, baseType: !12, size: 128)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1185, file: !1096, line: 265, baseType: !1189, size: 128, offset: 128)
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1190, line: 22, size: 128, elements: !1191)
!1190 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1191 = !{!1192, !1195}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1189, file: !1190, line: 23, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1190, line: 23, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1189, file: !1190, line: 24, baseType: !199, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1095, file: !1096, line: 280, baseType: !1197, size: 64, offset: 1664)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1096, line: 176, size: 192, elements: !1199)
!1199 = !{!1200, !1209, !1210}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1198, file: !1096, line: 177, baseType: !1201, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1096, line: 171, baseType: !1202)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DISubroutineType(types: !1204)
!1204 = !{!6, !1094, !1205, !1207, !1094}
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1179)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1198, file: !1096, line: 178, baseType: !1094, size: 64, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1198, file: !1096, line: 179, baseType: !1157, size: 64, offset: 128)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1069, file: !1070, line: 130, baseType: !1094, size: 64, offset: 832)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1069, file: !1070, line: 131, baseType: !1094, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1069, file: !1070, line: 132, baseType: !1094, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1069, file: !1070, line: 135, baseType: !221, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1069, file: !1070, line: 137, baseType: !1216, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1218, line: 14, size: 1088, elements: !1219)
!1218 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1219 = !{!1220, !1221, !1230, !1231, !1232, !1233, !1234, !1235}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1217, file: !1218, line: 15, baseType: !43, size: 32)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1217, file: !1218, line: 17, baseType: !1222, size: 320, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1223, line: 22, size: 320, elements: !1224)
!1223 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1224 = !{!1225, !1226, !1227, !1228}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1222, file: !1223, line: 23, baseType: !456, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1222, file: !1223, line: 24, baseType: !508, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1222, file: !1223, line: 26, baseType: !12, size: 128, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1222, file: !1223, line: 28, baseType: !1229, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1217, file: !1218, line: 19, baseType: !199, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1217, file: !1218, line: 20, baseType: !502, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1217, file: !1218, line: 23, baseType: !744, size: 128, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1217, file: !1218, line: 24, baseType: !237, size: 32, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1217, file: !1218, line: 29, baseType: !502, size: 64, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1217, file: !1218, line: 36, baseType: !1236, size: 320, offset: 768)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1237, line: 15, size: 320, elements: !1238)
!1237 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1238 = !{!1239, !1240, !1241, !1242, !1243, !1244, !1245}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1236, file: !1237, line: 16, baseType: !456, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1236, file: !1237, line: 18, baseType: !6, size: 32, offset: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1236, file: !1237, line: 19, baseType: !6, size: 32, offset: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1236, file: !1237, line: 20, baseType: !6, size: 32, offset: 96)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1236, file: !1237, line: 21, baseType: !6, size: 32, offset: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1236, file: !1237, line: 22, baseType: !199, size: 64, offset: 192)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1236, file: !1237, line: 23, baseType: !199, size: 64, offset: 256)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1069, file: !1070, line: 138, baseType: !1247, size: 64, offset: 1152)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1249, line: 901, flags: DIFlagFwdDecl)
!1249 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1069, file: !1070, line: 139, baseType: !1251, size: 64, offset: 1216)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1253, line: 16, flags: DIFlagFwdDecl)
!1253 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1069, file: !1070, line: 140, baseType: !1255, size: 64, offset: 1280)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1070, line: 25, size: 64, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1256, file: !1070, line: 26, baseType: !48, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1256, file: !1070, line: 27, baseType: !6, size: 32, offset: 32)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1256, file: !1070, line: 28, baseType: !1261, offset: 64)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, elements: !1053)
!1262 = !DIDerivedType(tag: DW_TAG_member, scope: !1069, file: !1070, line: 142, baseType: !1263, size: 128, offset: 1344)
!1263 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1069, file: !1070, line: 142, size: 128, elements: !1264)
!1264 = !{!1265, !1266}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1263, file: !1070, line: 143, baseType: !6, size: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1263, file: !1070, line: 144, baseType: !718, size: 128, align: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !982, file: !228, line: 1013, baseType: !1268, size: 256, offset: 960)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !228, line: 970, size: 256, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274, !1275}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1268, file: !228, line: 971, baseType: !199, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1268, file: !228, line: 972, baseType: !53, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1268, file: !228, line: 973, baseType: !53, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1268, file: !228, line: 974, baseType: !53, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1268, file: !228, line: 975, baseType: !53, size: 32, offset: 160)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1268, file: !228, line: 976, baseType: !392, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !982, file: !228, line: 1014, baseType: !1277, size: 128, offset: 1216)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1278, line: 8, size: 128, elements: !1279)
!1278 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1279 = !{!1280, !1281}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1277, file: !1278, line: 9, baseType: !376, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1277, file: !1278, line: 10, baseType: !266, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !982, file: !228, line: 1015, baseType: !231, size: 64, offset: 1344)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !982, file: !228, line: 1016, baseType: !1284, size: 64, offset: 1408)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1286)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !228, line: 1914, size: 2112, elements: !1287)
!1287 = !{!1288, !1289, !1294, !1298, !1302, !1330, !1331, !1337, !1350, !1358, !1362, !1363, !1831, !1832, !1836, !1841, !1842, !1846, !1850, !1856, !1857, !1861, !1862, !1869, !1873, !1877, !1883, !1887, !1891, !1895, !1899, !1900, !1906}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1286, file: !228, line: 1915, baseType: !420, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1286, file: !228, line: 1916, baseType: !1290, size: 64, offset: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!392, !1293, !392, !6}
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1286, file: !228, line: 1917, baseType: !1295, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!181, !1293, !149, !196, !965}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1286, file: !228, line: 1918, baseType: !1299, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!181, !1293, !71, !196, !965}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1286, file: !228, line: 1919, baseType: !1303, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!181, !1306, !1328}
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !228, line: 373, size: 384, elements: !1308)
!1308 = !{!1309, !1310, !1311, !1315, !1316, !1317, !1318}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1307, file: !228, line: 374, baseType: !1293, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1307, file: !228, line: 375, baseType: !392, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1307, file: !228, line: 376, baseType: !1312, size: 64, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DISubroutineType(types: !1314)
!1314 = !{null, !1306, !185}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1307, file: !228, line: 377, baseType: !221, size: 64, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1307, file: !228, line: 378, baseType: !6, size: 32, offset: 256)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1307, file: !228, line: 379, baseType: !117, size: 16, offset: 288)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !228, line: 380, baseType: !1319, size: 64, offset: 320)
!1319 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1307, file: !228, line: 380, size: 64, elements: !1320)
!1320 = !{!1321, !1324}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1319, file: !228, line: 386, baseType: !1322, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !228, line: 386, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1319, file: !228, line: 395, baseType: !1325, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{!181, !221}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !228, line: 69, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1286, file: !228, line: 1920, baseType: !1303, size: 64, offset: 320)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1286, file: !228, line: 1921, baseType: !1332, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!6, !1306, !1335, !53}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !228, line: 53, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1286, file: !228, line: 1923, baseType: !1338, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!6, !1293, !1341}
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !228, line: 1858, size: 128, elements: !1343)
!1343 = !{!1344, !1349}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1342, file: !228, line: 1859, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !228, line: 1855, baseType: !1346)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{!578, !1341, !71, !6, !392, !304, !53}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1342, file: !228, line: 1860, baseType: !392, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1286, file: !228, line: 1924, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!1354, !1293, !1356}
!1354 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1355, line: 59, baseType: !53)
!1355 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !228, line: 61, flags: DIFlagFwdDecl)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1286, file: !228, line: 1925, baseType: !1359, size: 64, offset: 576)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!185, !1293, !53, !199}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1286, file: !228, line: 1926, baseType: !1359, size: 64, offset: 640)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1286, file: !228, line: 1927, baseType: !1364, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!6, !1293, !1367}
!1367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1368, size: 64)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1249, line: 625, size: 1344, elements: !1369)
!1369 = !{!1370, !1379, !1535, !1541, !1548, !1549, !1554, !1555, !1560, !1561, !1564, !1824, !1825, !1826, !1827, !1828, !1829}
!1370 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1249, line: 628, baseType: !1371, size: 128)
!1371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1249, line: 628, size: 128, elements: !1372)
!1372 = !{!1373, !1378}
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1371, file: !1249, line: 629, baseType: !1374, size: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1371, file: !1249, line: 629, size: 128, elements: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1374, file: !1249, line: 631, baseType: !199, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1374, file: !1249, line: 632, baseType: !199, size: 64, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1371, file: !1249, line: 635, baseType: !718, size: 128, align: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1368, file: !1249, line: 639, baseType: !1380, size: 64, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1381, size: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1249, line: 733, size: 10240, elements: !1382)
!1382 = !{!1383, !1533}
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1249, line: 734, baseType: !1384, size: 10240)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !1249, line: 734, size: 10240, elements: !1385)
!1385 = !{!1386, !1390, !1403, !1407, !1408, !1409, !1410, !1411, !1412, !1421, !1422, !1423, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1462, !1464, !1467, !1512, !1513, !1514, !1517, !1518, !1519, !1522, !1523, !1524, !1531, !1532}
!1386 = !DIDerivedType(tag: DW_TAG_member, scope: !1384, file: !1249, line: 739, baseType: !1387, size: 512, align: 512)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1384, file: !1249, line: 739, size: 512, align: 512, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1387, file: !1249, line: 747, baseType: !48, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1384, file: !1249, line: 750, baseType: !1391, size: 128, offset: 512)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1392, line: 218, size: 128, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1393 = !{!1394, !1401, !1402}
!1394 = !DIDerivedType(tag: DW_TAG_member, scope: !1391, file: !1392, line: 219, baseType: !1395, size: 32)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1391, file: !1392, line: 219, size: 32, elements: !1396)
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1395, file: !1392, line: 220, baseType: !83, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1395, file: !1392, line: 221, baseType: !1399)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1392, line: 197, baseType: !1400)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1392, line: 197, elements: !787)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1391, file: !1392, line: 223, baseType: !53, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1391, file: !1392, line: 224, baseType: !221, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1384, file: !1249, line: 752, baseType: !1404, size: 64, offset: 640)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!199, !1293, !199, !199, !199, !199}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1384, file: !1249, line: 756, baseType: !199, size: 64, offset: 704)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1384, file: !1249, line: 757, baseType: !199, size: 64, offset: 768)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1384, file: !1249, line: 760, baseType: !199, size: 64, offset: 832)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1384, file: !1249, line: 761, baseType: !199, size: 64, offset: 896)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1384, file: !1249, line: 763, baseType: !199, size: 64, offset: 960)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1384, file: !1249, line: 764, baseType: !1413, size: 64, offset: 1024)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1415, line: 299, baseType: !1416)
!1415 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1415, line: 299, size: 64, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1416, file: !1415, line: 299, baseType: !1419, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1420, line: 18, baseType: !199)
!1420 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1384, file: !1249, line: 773, baseType: !48, size: 32, offset: 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1384, file: !1249, line: 785, baseType: !48, size: 32, offset: 1120)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1384, file: !1249, line: 795, baseType: !1424, size: 64, offset: 1152)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1249, line: 726, size: 128, elements: !1426)
!1426 = !{!1427, !1428}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1425, file: !1249, line: 727, baseType: !304, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1425, file: !1249, line: 728, baseType: !6, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1384, file: !1249, line: 801, baseType: !199, size: 64, offset: 1216)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1384, file: !1249, line: 804, baseType: !502, size: 64, offset: 1280)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1384, file: !1249, line: 806, baseType: !6, size: 32, offset: 1344)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1384, file: !1249, line: 808, baseType: !83, size: 32, offset: 1376)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1384, file: !1249, line: 823, baseType: !1108, size: 320, offset: 1408)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1384, file: !1249, line: 825, baseType: !12, size: 128, offset: 1728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1384, file: !1249, line: 845, baseType: !6, size: 32, offset: 1856)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1384, file: !1249, line: 849, baseType: !199, size: 64, offset: 1920)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1384, file: !1249, line: 850, baseType: !199, size: 64, offset: 1984)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1384, file: !1249, line: 852, baseType: !199, size: 64, offset: 2048)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1384, file: !1249, line: 853, baseType: !199, size: 64, offset: 2112)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1384, file: !1249, line: 854, baseType: !504, size: 64, offset: 2176)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1384, file: !1249, line: 855, baseType: !199, size: 64, offset: 2240)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1384, file: !1249, line: 856, baseType: !199, size: 64, offset: 2304)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1384, file: !1249, line: 857, baseType: !199, size: 64, offset: 2368)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1384, file: !1249, line: 858, baseType: !199, size: 64, offset: 2432)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1384, file: !1249, line: 865, baseType: !277, size: 32, offset: 2496)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1384, file: !1249, line: 867, baseType: !83, size: 32, offset: 2528)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1384, file: !1249, line: 869, baseType: !199, size: 64, offset: 2560)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1384, file: !1249, line: 869, baseType: !199, size: 64, offset: 2624)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1384, file: !1249, line: 869, baseType: !199, size: 64, offset: 2688)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1384, file: !1249, line: 869, baseType: !199, size: 64, offset: 2752)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1384, file: !1249, line: 870, baseType: !199, size: 64, offset: 2816)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1384, file: !1249, line: 870, baseType: !199, size: 64, offset: 2880)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1384, file: !1249, line: 870, baseType: !199, size: 64, offset: 2944)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1384, file: !1249, line: 871, baseType: !199, size: 64, offset: 3008)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1384, file: !1249, line: 871, baseType: !199, size: 64, offset: 3072)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1384, file: !1249, line: 871, baseType: !199, size: 64, offset: 3136)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1384, file: !1249, line: 871, baseType: !199, size: 64, offset: 3200)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1384, file: !1249, line: 873, baseType: !1459, size: 3328, offset: 3264)
!1459 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 3328, elements: !1460)
!1460 = !{!1461}
!1461 = !DISubrange(count: 52)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1384, file: !1249, line: 875, baseType: !1463, size: 1280, offset: 6592)
!1463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1222, size: 1280, elements: !728)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1384, file: !1249, line: 877, baseType: !1465, size: 64, offset: 7872)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1249, line: 877, flags: DIFlagFwdDecl)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1384, file: !1249, line: 880, baseType: !1468, size: 1088, offset: 7936)
!1468 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1469, line: 72, baseType: !1470)
!1469 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1469, line: 23, size: 1088, elements: !1471)
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1479, !1480, !1481, !1482, !1509, !1510, !1511}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1470, file: !1469, line: 28, baseType: !304, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1470, file: !1469, line: 38, baseType: !504, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1470, file: !1469, line: 40, baseType: !199, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1470, file: !1469, line: 43, baseType: !1108, size: 320, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1470, file: !1469, line: 44, baseType: !1477, size: 64, offset: 512)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1469, line: 44, flags: DIFlagFwdDecl)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1470, file: !1469, line: 48, baseType: !199, size: 64, offset: 576)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1470, file: !1469, line: 59, baseType: !498, size: 256, offset: 640)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1470, file: !1469, line: 60, baseType: !221, size: 64, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1470, file: !1469, line: 61, baseType: !1483, size: 64, offset: 960)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1485)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1486, line: 13, size: 1216, elements: !1487)
!1486 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1485, file: !1486, line: 14, baseType: !221, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1485, file: !1486, line: 15, baseType: !199, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1485, file: !1486, line: 17, baseType: !199, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1485, file: !1486, line: 17, baseType: !199, size: 64, offset: 192)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1485, file: !1486, line: 18, baseType: !199, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1485, file: !1486, line: 18, baseType: !199, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1485, file: !1486, line: 19, baseType: !1495, size: 64, offset: 384)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1485, file: !1486, line: 21, baseType: !185, size: 64, offset: 448)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1485, file: !1486, line: 23, baseType: !185, size: 64, offset: 512)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1485, file: !1486, line: 24, baseType: !185, size: 64, offset: 576)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1485, file: !1486, line: 25, baseType: !185, size: 64, offset: 640)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1485, file: !1486, line: 26, baseType: !185, size: 64, offset: 704)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1485, file: !1486, line: 27, baseType: !185, size: 64, offset: 768)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1485, file: !1486, line: 28, baseType: !185, size: 64, offset: 832)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1485, file: !1486, line: 29, baseType: !185, size: 64, offset: 896)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1485, file: !1486, line: 30, baseType: !185, size: 64, offset: 960)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1485, file: !1486, line: 31, baseType: !185, size: 64, offset: 1024)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1485, file: !1486, line: 32, baseType: !185, size: 64, offset: 1088)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1485, file: !1486, line: 33, baseType: !185, size: 64, offset: 1152)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1470, file: !1469, line: 63, baseType: !48, size: 32, offset: 1024)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1470, file: !1469, line: 69, baseType: !117, size: 16, offset: 1056)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1470, file: !1469, line: 70, baseType: !634, size: 16, offset: 1072)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1384, file: !1249, line: 882, baseType: !199, size: 64, offset: 9024)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1384, file: !1249, line: 885, baseType: !83, size: 32, offset: 9088)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1384, file: !1249, line: 886, baseType: !1515, size: 64, offset: 9152)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1249, line: 732, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1384, file: !1249, line: 901, baseType: !1247, size: 64, offset: 9216)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1384, file: !1249, line: 904, baseType: !1293, size: 64, offset: 9280)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1384, file: !1249, line: 906, baseType: !1520, size: 64, offset: 9344)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1249, line: 906, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1384, file: !1249, line: 930, baseType: !48, size: 32, offset: 9408)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1384, file: !1249, line: 933, baseType: !48, size: 32, offset: 9440)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1384, file: !1249, line: 935, baseType: !1525, size: 64, offset: 9472)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1526, line: 103, size: 64, elements: !1527)
!1526 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!1527 = !{!1528}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1525, file: !1526, line: 104, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !1526, line: 101, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1384, file: !1249, line: 940, baseType: !502, size: 64, offset: 9536)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1384, file: !1249, line: 942, baseType: !758, size: 256, offset: 9600)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1381, file: !1249, line: 986, baseType: !1534, offset: 10240)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !1053)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1368, file: !1249, line: 640, baseType: !1536, size: 64, offset: 192)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1415, line: 297, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1415, line: 297, size: 64, elements: !1538)
!1538 = !{!1539}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1537, file: !1415, line: 297, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1420, line: 19, baseType: !199)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !1249, line: 646, baseType: !1542, size: 64, offset: 256)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !1249, line: 646, size: 64, elements: !1543)
!1543 = !{!1544, !1547}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1542, file: !1249, line: 647, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1249, line: 542, baseType: !199)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1542, file: !1249, line: 648, baseType: !1546, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1368, file: !1249, line: 666, baseType: !6, size: 32, offset: 320)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1368, file: !1249, line: 667, baseType: !1550, size: 64, offset: 384)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1249, line: 579, size: 320, elements: !1552)
!1552 = !{!1553}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1551, file: !1249, line: 580, baseType: !1108, size: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1368, file: !1249, line: 670, baseType: !578, size: 8, offset: 448)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1368, file: !1249, line: 681, baseType: !1556, size: 256, offset: 512)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1368, file: !1249, line: 678, size: 256, elements: !1557)
!1557 = !{!1558, !1559}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1556, file: !1249, line: 679, baseType: !610, size: 192, align: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1556, file: !1249, line: 680, baseType: !199, size: 64, offset: 192)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1368, file: !1249, line: 689, baseType: !12, size: 128, offset: 768)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1368, file: !1249, line: 691, baseType: !1562, size: 64, offset: 896)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1249, line: 691, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1368, file: !1249, line: 694, baseType: !1565, size: 64, offset: 960)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1567)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1568, line: 563, size: 1024, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1569 = !{!1570, !1574, !1575, !1579, !1583, !1587, !1788, !1792, !1796, !1800, !1801, !1802, !1806, !1810, !1816, !1820}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1567, file: !1568, line: 564, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !1367}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1567, file: !1568, line: 569, baseType: !1571, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1567, file: !1568, line: 571, baseType: !1576, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{!6, !1367, !199}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1567, file: !1568, line: 572, baseType: !1580, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DISubroutineType(types: !1582)
!1582 = !{!6, !1367}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1567, file: !1568, line: 578, baseType: !1584, size: 64, offset: 256)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!6, !1367, !199, !199, !199}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1567, file: !1568, line: 580, baseType: !1588, size: 64, offset: 320)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1592}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !1249, line: 1184, baseType: !53)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1568, line: 512, size: 896, elements: !1594)
!1594 = !{!1595, !1604, !1620, !1627, !1634, !1644, !1781, !1782, !1784, !1786}
!1595 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !1568, line: 513, baseType: !1596, size: 320)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1593, file: !1568, line: 513, size: 320, elements: !1597)
!1597 = !{!1598, !1599, !1601, !1602, !1603}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1596, file: !1568, line: 514, baseType: !1367, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1596, file: !1568, line: 515, baseType: !1600, size: 32, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !13, line: 154, baseType: !53)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1596, file: !1568, line: 516, baseType: !199, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1596, file: !1568, line: 517, baseType: !199, size: 64, offset: 192)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1596, file: !1568, line: 518, baseType: !199, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !1568, line: 520, baseType: !1605, size: 32, offset: 320)
!1605 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !1249, line: 1325, baseType: !53, size: 32, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619}
!1607 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!1608 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!1609 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!1610 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!1611 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!1612 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!1613 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!1614 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!1615 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!1616 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!1617 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!1618 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!1619 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1593, file: !1568, line: 522, baseType: !1621, size: 64, offset: 384)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1420, line: 22, baseType: !1623)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1420, line: 22, size: 64, elements: !1624)
!1624 = !{!1625}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1623, file: !1420, line: 22, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1420, line: 15, baseType: !199)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1593, file: !1568, line: 524, baseType: !1628, size: 64, offset: 448)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1415, line: 372, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1415, line: 372, size: 64, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1630, file: !1415, line: 372, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1420, line: 16, baseType: !199)
!1634 = !DIDerivedType(tag: DW_TAG_member, scope: !1593, file: !1568, line: 527, baseType: !1635, size: 64, offset: 512)
!1635 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1593, file: !1568, line: 527, size: 64, elements: !1636)
!1636 = !{!1637, !1643}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1635, file: !1568, line: 528, baseType: !1638, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1420, line: 21, baseType: !1639)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1420, line: 21, size: 64, elements: !1640)
!1640 = !{!1641}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1639, file: !1420, line: 21, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1420, line: 14, baseType: !199)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1635, file: !1568, line: 529, baseType: !1622, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1593, file: !1568, line: 534, baseType: !1645, size: 64, offset: 576)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1249, line: 74, size: 512, align: 128, elements: !1647)
!1647 = !{!1648, !1649, !1775, !1780}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1646, file: !1249, line: 75, baseType: !199, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1249, line: 83, baseType: !1650, size: 320, offset: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !1249, line: 83, size: 320, elements: !1651)
!1651 = !{!1652, !1673, !1687, !1691, !1774}
!1652 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1249, line: 84, baseType: !1653, size: 320)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1249, line: 84, size: 320, elements: !1654)
!1654 = !{!1655, !1666, !1667, !1672}
!1655 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1249, line: 90, baseType: !1656, size: 128)
!1656 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1249, line: 90, size: 128, elements: !1657)
!1657 = !{!1658, !1659, !1664, !1665}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1656, file: !1249, line: 91, baseType: !12, size: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, scope: !1656, file: !1249, line: 94, baseType: !1660, size: 128)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1656, file: !1249, line: 94, size: 128, elements: !1661)
!1661 = !{!1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1660, file: !1249, line: 96, baseType: !221, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1660, file: !1249, line: 98, baseType: !53, size: 32, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1656, file: !1249, line: 102, baseType: !12, size: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1656, file: !1249, line: 103, baseType: !12, size: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1653, file: !1249, line: 106, baseType: !226, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, scope: !1653, file: !1249, line: 107, baseType: !1668, size: 64, offset: 192)
!1668 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1653, file: !1249, line: 107, size: 64, elements: !1669)
!1669 = !{!1670, !1671}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1668, file: !1249, line: 108, baseType: !199, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1668, file: !1249, line: 109, baseType: !199, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1653, file: !1249, line: 117, baseType: !199, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1249, line: 119, baseType: !1674, size: 320)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1249, line: 119, size: 320, elements: !1675)
!1675 = !{!1676, !1677, !1680, !1681, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1674, file: !1249, line: 124, baseType: !199, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1674, file: !1249, line: 125, baseType: !1678, size: 64, offset: 64)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1249, line: 125, flags: DIFlagFwdDecl)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1674, file: !1249, line: 126, baseType: !199, size: 64, offset: 128)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1674, file: !1249, line: 127, baseType: !199, size: 64, offset: 192)
!1682 = !DIDerivedType(tag: DW_TAG_member, scope: !1674, file: !1249, line: 128, baseType: !1683, size: 64, offset: 256)
!1683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1674, file: !1249, line: 128, size: 64, elements: !1684)
!1684 = !{!1685, !1686}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1683, file: !1249, line: 133, baseType: !199, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1683, file: !1249, line: 138, baseType: !502, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1249, line: 141, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1249, line: 141, size: 64, elements: !1689)
!1689 = !{!1690}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1688, file: !1249, line: 142, baseType: !199, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1650, file: !1249, line: 144, baseType: !1692, size: 128)
!1692 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1650, file: !1249, line: 144, size: 128, elements: !1693)
!1693 = !{!1694, !1773}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1692, file: !1249, line: 146, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1697, line: 126, size: 1216, elements: !1698)
!1697 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!1698 = !{!1699, !1709, !1730, !1731, !1739, !1740, !1741, !1755, !1756, !1757}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1696, file: !1697, line: 127, baseType: !1700, size: 384)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !1697, line: 21, size: 384, elements: !1701)
!1701 = !{!1702, !1703, !1705, !1706, !1707, !1708}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1700, file: !1697, line: 22, baseType: !199, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1700, file: !1697, line: 23, baseType: !1704, size: 64, offset: 64)
!1704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1700, file: !1697, line: 24, baseType: !1704, size: 64, offset: 128)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1700, file: !1697, line: 25, baseType: !199, size: 64, offset: 192)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1700, file: !1697, line: 26, baseType: !199, size: 64, offset: 256)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1700, file: !1697, line: 27, baseType: !199, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1696, file: !1697, line: 128, baseType: !1710, size: 128, offset: 384)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1711, line: 105, size: 128, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1712 = !{!1713, !1714}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1710, file: !1711, line: 110, baseType: !199, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1710, file: !1711, line: 118, baseType: !1715, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1716, size: 64)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1711, line: 95, size: 448, elements: !1717)
!1717 = !{!1718, !1719, !1725, !1726, !1727, !1728, !1729}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1716, file: !1711, line: 96, baseType: !502, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1716, file: !1711, line: 97, baseType: !1720, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1711, line: 60, baseType: !1722)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1724}
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1716, file: !1711, line: 98, baseType: !1720, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1716, file: !1711, line: 99, baseType: !578, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1716, file: !1711, line: 100, baseType: !578, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1716, file: !1711, line: 101, baseType: !718, size: 128, align: 64, offset: 256)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1716, file: !1711, line: 102, baseType: !1724, size: 64, offset: 384)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1696, file: !1697, line: 129, baseType: !447, size: 256, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1696, file: !1697, line: 130, baseType: !1732, size: 32, offset: 768)
!1732 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !1697, line: 68, baseType: !53, size: 32, elements: !1733)
!1733 = !{!1734, !1735, !1736, !1737, !1738}
!1734 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!1735 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!1736 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!1737 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!1738 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1697, line: 131, baseType: !53, size: 32, offset: 800)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1696, file: !1697, line: 132, baseType: !199, size: 64, offset: 832)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1696, file: !1697, line: 133, baseType: !1742, size: 64, offset: 896)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1744)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !1697, line: 77, size: 192, elements: !1745)
!1745 = !{!1746, !1750, !1751}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1744, file: !1697, line: 83, baseType: !1747, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1645}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1744, file: !1697, line: 89, baseType: !1588, size: 64, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1744, file: !1697, line: 100, baseType: !1752, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!6, !1695, !199, !199, !6}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1696, file: !1697, line: 134, baseType: !221, size: 64, offset: 960)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1696, file: !1697, line: 135, baseType: !6, size: 32, offset: 1024)
!1757 = !DIDerivedType(tag: DW_TAG_member, scope: !1696, file: !1697, line: 136, baseType: !1758, size: 128, offset: 1088)
!1758 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1696, file: !1697, line: 136, size: 128, elements: !1759)
!1759 = !{!1760, !1766}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1758, file: !1697, line: 137, baseType: !1761, size: 128)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1762, line: 6, size: 128, elements: !1763)
!1762 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1763 = !{!1764, !1765}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1761, file: !1762, line: 7, baseType: !304, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1761, file: !1762, line: 8, baseType: !304, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, scope: !1758, file: !1697, line: 138, baseType: !1767)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1758, file: !1697, line: 138, elements: !1768)
!1768 = !{!1769, !1771}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1767, file: !1697, line: 138, baseType: !1770)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1697, line: 138, elements: !787)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1767, file: !1697, line: 138, baseType: !1772)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1761, elements: !1053)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1692, file: !1249, line: 147, baseType: !221, size: 64, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1650, file: !1249, line: 161, baseType: !718, size: 128, align: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, scope: !1646, file: !1249, line: 164, baseType: !1776, size: 32, offset: 384)
!1776 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1646, file: !1249, line: 164, size: 32, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1776, file: !1249, line: 169, baseType: !48, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1776, file: !1249, line: 177, baseType: !53, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1646, file: !1249, line: 181, baseType: !48, size: 32, offset: 416)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1593, file: !1568, line: 535, baseType: !1645, size: 64, offset: 640)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1593, file: !1568, line: 541, baseType: !1783, size: 64, offset: 704)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1593, file: !1568, line: 545, baseType: !1785, size: 64, offset: 768)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1593, file: !1568, line: 549, baseType: !1787, size: 64, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1415, line: 520, baseType: !1645)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1567, file: !1568, line: 581, baseType: !1789, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!1591, !1592, !53}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1567, file: !1568, line: 582, baseType: !1793, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{!1591, !1592, !199, !199}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1567, file: !1568, line: 584, baseType: !1797, size: 64, offset: 512)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!199, !1367}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1567, file: !1568, line: 588, baseType: !1588, size: 64, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1567, file: !1568, line: 591, baseType: !1588, size: 64, offset: 640)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1567, file: !1568, line: 597, baseType: !1803, size: 64, offset: 704)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!6, !1367, !199, !221, !6, !6}
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1567, file: !1568, line: 603, baseType: !1807, size: 64, offset: 768)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!71, !1367}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1567, file: !1568, line: 613, baseType: !1811, size: 64, offset: 832)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!6, !1367, !1814}
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1249, line: 717, flags: DIFlagFwdDecl)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1567, file: !1568, line: 625, baseType: !1817, size: 64, offset: 896)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!1814, !1367, !199}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1567, file: !1568, line: 633, baseType: !1821, size: 64, offset: 960)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!1645, !1367, !199}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1368, file: !1249, line: 697, baseType: !199, size: 64, offset: 1024)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1368, file: !1249, line: 699, baseType: !1293, size: 64, offset: 1088)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1368, file: !1249, line: 700, baseType: !221, size: 64, offset: 1152)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1368, file: !1249, line: 711, baseType: !502, size: 64, offset: 1216)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1368, file: !1249, line: 717, baseType: !1814, size: 64, offset: 1280)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1368, file: !1249, line: 722, baseType: !1830, offset: 1344)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1249, line: 570, elements: !787)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1286, file: !228, line: 1928, baseType: !199, size: 64, offset: 768)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1286, file: !228, line: 1929, baseType: !1833, size: 64, offset: 832)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!6, !231, !1293}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1286, file: !228, line: 1930, baseType: !1837, size: 64, offset: 896)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!6, !1293, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !228, line: 1061, baseType: !221)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1286, file: !228, line: 1931, baseType: !1833, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1286, file: !228, line: 1932, baseType: !1843, size: 64, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!6, !1293, !392, !392, !6}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1286, file: !228, line: 1933, baseType: !1847, size: 64, offset: 1088)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DISubroutineType(types: !1849)
!1849 = !{!6, !6, !1293, !6}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1286, file: !228, line: 1934, baseType: !1851, size: 64, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = !DISubroutineType(types: !1853)
!1853 = !{!6, !1293, !6, !1854}
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !228, line: 1063, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1286, file: !228, line: 1935, baseType: !1404, size: 64, offset: 1216)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1286, file: !228, line: 1936, baseType: !1858, size: 64, offset: 1280)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!6, !6}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1286, file: !228, line: 1937, baseType: !1851, size: 64, offset: 1344)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1286, file: !228, line: 1938, baseType: !1863, size: 64, offset: 1408)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!181, !1866, !1293, !965, !196, !53}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1868, line: 59, flags: DIFlagFwdDecl)
!1868 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1286, file: !228, line: 1939, baseType: !1870, size: 64, offset: 1472)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!181, !1293, !965, !1866, !196, !53}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1286, file: !228, line: 1940, baseType: !1874, size: 64, offset: 1536)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null, !1293}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1286, file: !228, line: 1941, baseType: !1878, size: 64, offset: 1600)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!6, !1293, !6, !1881, !1882}
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1286, file: !228, line: 1942, baseType: !1884, size: 64, offset: 1664)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!185, !1293, !6, !392, !392}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1286, file: !228, line: 1944, baseType: !1888, size: 64, offset: 1728)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !944, !1293}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1286, file: !228, line: 1948, baseType: !1892, size: 64, offset: 1792)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{!181, !1293, !392, !1293, !392, !196, !53}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1286, file: !228, line: 1950, baseType: !1896, size: 64, offset: 1856)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{!392, !1293, !392, !1293, !392, !392, !53}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1286, file: !228, line: 1953, baseType: !1843, size: 64, offset: 1920)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1286, file: !228, line: 1954, baseType: !1901, size: 64, offset: 1984)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DISubroutineType(types: !1903)
!1903 = !{!6, !1904, !53}
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !228, line: 1911, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1286, file: !228, line: 1955, baseType: !1907, size: 64, offset: 2048)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!6, !1904, !1335, !53}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !982, file: !228, line: 1018, baseType: !304, size: 64, offset: 1472)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !982, file: !228, line: 1020, baseType: !221, size: 64, offset: 1536)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !982, file: !228, line: 1023, baseType: !221, size: 64, offset: 1600)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !982, file: !228, line: 1027, baseType: !1914, size: 64, offset: 1664)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !982, file: !228, line: 1029, baseType: !226, size: 64, offset: 1728)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !982, file: !228, line: 1030, baseType: !1917, size: 32, offset: 1792)
!1917 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1918, line: 8, baseType: !300)
!1918 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !982, file: !228, line: 1031, baseType: !1917, size: 32, offset: 1824)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !945, file: !946, line: 29, baseType: !221, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !884, file: !228, line: 2077, baseType: !941, size: 64, offset: 1088)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !884, file: !228, line: 2078, baseType: !941, size: 64, offset: 1152)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !884, file: !228, line: 2079, baseType: !941, size: 64, offset: 1216)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !884, file: !228, line: 2081, baseType: !1925, size: 64, offset: 1280)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{!181, !382, !6, !149, !196, !392}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !884, file: !228, line: 2082, baseType: !1929, size: 64, offset: 1344)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!181, !382, !6, !71, !196, !392}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !884, file: !228, line: 2083, baseType: !1933, size: 64, offset: 1408)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!1936, !231}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !1939, line: 296, size: 1664, elements: !1940)
!1939 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!1940 = !{!1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1970, !1971, !1972}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1938, file: !1939, line: 297, baseType: !744, size: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1938, file: !1939, line: 298, baseType: !12, size: 128, offset: 128)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1938, file: !1939, line: 299, baseType: !12, size: 128, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1938, file: !1939, line: 300, baseType: !12, size: 128, offset: 384)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1938, file: !1939, line: 301, baseType: !498, size: 256, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1938, file: !1939, line: 302, baseType: !83, size: 32, offset: 768)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1938, file: !1939, line: 303, baseType: !48, size: 32, offset: 800)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1938, file: !1939, line: 304, baseType: !382, size: 64, offset: 832)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1938, file: !1939, line: 305, baseType: !1950, size: 64, offset: 896)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !1939, line: 68, size: 64, elements: !1951)
!1951 = !{!1952, !1964}
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1950, file: !1939, line: 69, baseType: !1953, size: 32)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1950, file: !1939, line: 69, size: 32, elements: !1954)
!1954 = !{!1955, !1956, !1957}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1953, file: !1939, line: 70, baseType: !237, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1953, file: !1939, line: 71, baseType: !246, size: 32)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1953, file: !1939, line: 72, baseType: !1958, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1959, line: 24, baseType: !1960)
!1959 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1960 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1959, line: 22, size: 32, elements: !1961)
!1961 = !{!1962}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1960, file: !1959, line: 23, baseType: !1963, size: 32)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1959, line: 20, baseType: !243)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1950, file: !1939, line: 74, baseType: !1965, size: 32, offset: 32)
!1965 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !1939, line: 54, baseType: !53, size: 32, elements: !1966)
!1966 = !{!1967, !1968, !1969}
!1967 = !DIEnumerator(name: "USRQUOTA", value: 0)
!1968 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!1969 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1938, file: !1939, line: 306, baseType: !392, size: 64, offset: 960)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1938, file: !1939, line: 307, baseType: !199, size: 64, offset: 1024)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1938, file: !1939, line: 308, baseType: !1973, size: 576, offset: 1088)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !1939, line: 205, size: 576, elements: !1974)
!1974 = !{!1975, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1973, file: !1939, line: 206, baseType: !1976, size: 64)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !1939, line: 66, baseType: !394)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1973, file: !1939, line: 207, baseType: !1976, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1973, file: !1939, line: 208, baseType: !1976, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1973, file: !1939, line: 209, baseType: !1976, size: 64, offset: 192)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1973, file: !1939, line: 210, baseType: !1976, size: 64, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1973, file: !1939, line: 211, baseType: !1976, size: 64, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1973, file: !1939, line: 212, baseType: !1976, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1973, file: !1939, line: 213, baseType: !1124, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1973, file: !1939, line: 214, baseType: !1124, size: 64, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !884, file: !228, line: 2085, baseType: !1986, size: 64, offset: 1472)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!185, !382, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1991, line: 15, size: 256, elements: !1992)
!1991 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1992 = !{!1993, !1994, !1995, !1996, !1997}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1990, file: !1991, line: 16, baseType: !1600, size: 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1990, file: !1991, line: 19, baseType: !6, size: 32, offset: 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1990, file: !1991, line: 26, baseType: !199, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1990, file: !1991, line: 33, baseType: !199, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1990, file: !1991, line: 36, baseType: !1998, size: 64, offset: 192)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1249, line: 33, flags: DIFlagFwdDecl)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !884, file: !228, line: 2087, baseType: !1986, size: 64, offset: 1536)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !884, file: !228, line: 2089, baseType: !416, size: 64, offset: 1600)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !383, file: !228, line: 1198, baseType: !2003, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2005)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !1939, line: 324, size: 704, elements: !2006)
!2006 = !{!2007, !2011, !2015, !2019, !2020, !2021, !2022, !2023, !2028, !2033, !2037}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2005, file: !1939, line: 325, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!6, !1937}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2005, file: !1939, line: 326, baseType: !2012, size: 64, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!1937, !382, !6}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2005, file: !1939, line: 327, baseType: !2016, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !1937}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2005, file: !1939, line: 328, baseType: !2008, size: 64, offset: 192)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2005, file: !1939, line: 329, baseType: !2008, size: 64, offset: 256)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2005, file: !1939, line: 330, baseType: !2008, size: 64, offset: 320)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2005, file: !1939, line: 331, baseType: !912, size: 64, offset: 384)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2005, file: !1939, line: 334, baseType: !2024, size: 64, offset: 448)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{!2027, !231}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2005, file: !1939, line: 335, baseType: !2029, size: 64, offset: 512)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{!6, !231, !2032}
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2005, file: !1939, line: 337, baseType: !2034, size: 64, offset: 576)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!6, !231, !2027}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2005, file: !1939, line: 339, baseType: !2038, size: 64, offset: 640)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DISubroutineType(types: !2040)
!2040 = !{!6, !382, !2041}
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !383, file: !228, line: 1199, baseType: !2043, size: 64, offset: 512)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2045)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !1939, line: 430, size: 704, elements: !2046)
!2046 = !{!2047, !2053, !2054, !2058, !2059, !2060, !2075, !2098, !2102, !2103, !2126}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2045, file: !1939, line: 431, baseType: !2048, size: 64)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!6, !382, !6, !6, !2051}
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1277)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2045, file: !1939, line: 432, baseType: !912, size: 64, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2045, file: !1939, line: 433, baseType: !2055, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!6, !382, !53}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2045, file: !1939, line: 434, baseType: !2055, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2045, file: !1939, line: 435, baseType: !912, size: 64, offset: 256)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2045, file: !1939, line: 436, baseType: !2061, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!6, !382, !6, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !1939, line: 417, size: 256, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2065, file: !1939, line: 418, baseType: !6, size: 32)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2065, file: !1939, line: 419, baseType: !53, size: 32, offset: 32)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2065, file: !1939, line: 420, baseType: !53, size: 32, offset: 64)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2065, file: !1939, line: 422, baseType: !53, size: 32, offset: 96)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2065, file: !1939, line: 423, baseType: !53, size: 32, offset: 128)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2065, file: !1939, line: 424, baseType: !53, size: 32, offset: 160)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2065, file: !1939, line: 425, baseType: !53, size: 32, offset: 192)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2065, file: !1939, line: 426, baseType: !53, size: 32, offset: 224)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2045, file: !1939, line: 437, baseType: !2076, size: 64, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{!6, !382, !1950, !2079}
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !1939, line: 345, size: 960, elements: !2081)
!2081 = !{!2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2080, file: !1939, line: 346, baseType: !6, size: 32)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2080, file: !1939, line: 347, baseType: !304, size: 64, offset: 64)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2080, file: !1939, line: 348, baseType: !304, size: 64, offset: 128)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2080, file: !1939, line: 349, baseType: !304, size: 64, offset: 192)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2080, file: !1939, line: 350, baseType: !304, size: 64, offset: 256)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2080, file: !1939, line: 351, baseType: !304, size: 64, offset: 320)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2080, file: !1939, line: 352, baseType: !304, size: 64, offset: 384)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2080, file: !1939, line: 353, baseType: !508, size: 64, offset: 448)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2080, file: !1939, line: 355, baseType: !508, size: 64, offset: 512)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2080, file: !1939, line: 356, baseType: !6, size: 32, offset: 576)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2080, file: !1939, line: 357, baseType: !6, size: 32, offset: 608)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2080, file: !1939, line: 358, baseType: !304, size: 64, offset: 640)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2080, file: !1939, line: 359, baseType: !304, size: 64, offset: 704)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2080, file: !1939, line: 360, baseType: !304, size: 64, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2080, file: !1939, line: 361, baseType: !508, size: 64, offset: 832)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2080, file: !1939, line: 362, baseType: !6, size: 32, offset: 896)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2045, file: !1939, line: 438, baseType: !2099, size: 64, offset: 448)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{!6, !382, !2041, !2079}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2045, file: !1939, line: 440, baseType: !2076, size: 64, offset: 512)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2045, file: !1939, line: 441, baseType: !2104, size: 64, offset: 576)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!6, !382, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !1939, line: 411, size: 1408, elements: !2109)
!2109 = !{!2110, !2111}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2108, file: !1939, line: 412, baseType: !53, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2108, file: !1939, line: 413, baseType: !2112, size: 1344, offset: 64)
!2112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2113, size: 1344, elements: !150)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !1939, line: 397, size: 448, elements: !2114)
!2114 = !{!2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2125}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2113, file: !1939, line: 398, baseType: !53, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2113, file: !1939, line: 399, baseType: !53, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2113, file: !1939, line: 401, baseType: !53, size: 32, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2113, file: !1939, line: 402, baseType: !53, size: 32, offset: 96)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2113, file: !1939, line: 403, baseType: !53, size: 32, offset: 128)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2113, file: !1939, line: 404, baseType: !53, size: 32, offset: 160)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2113, file: !1939, line: 405, baseType: !53, size: 32, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2113, file: !1939, line: 406, baseType: !306, size: 64, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2113, file: !1939, line: 407, baseType: !2124, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !13, line: 132, baseType: !304)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2113, file: !1939, line: 408, baseType: !2124, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2045, file: !1939, line: 442, baseType: !2055, size: 64, offset: 640)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !383, file: !228, line: 1200, baseType: !2128, size: 64, offset: 576)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2130)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !228, line: 54, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !383, file: !228, line: 1201, baseType: !199, size: 64, offset: 640)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !383, file: !228, line: 1202, baseType: !199, size: 64, offset: 704)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !383, file: !228, line: 1203, baseType: !199, size: 64, offset: 768)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !383, file: !228, line: 1204, baseType: !266, size: 64, offset: 832)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !383, file: !228, line: 1205, baseType: !1108, size: 320, offset: 896)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !383, file: !228, line: 1206, baseType: !6, size: 32, offset: 1216)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !383, file: !228, line: 1207, baseType: !48, size: 32, offset: 1248)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !383, file: !228, line: 1209, baseType: !221, size: 64, offset: 1280)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !383, file: !228, line: 1211, baseType: !2140, size: 64, offset: 1344)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2143)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !228, line: 1211, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !383, file: !228, line: 1223, baseType: !2145, size: 64, offset: 1408)
!2145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !283, line: 34, size: 64, elements: !2146)
!2146 = !{!2147}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2145, file: !283, line: 35, baseType: !286, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !383, file: !228, line: 1224, baseType: !12, size: 128, offset: 1472)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !383, file: !228, line: 1225, baseType: !2150, size: 64, offset: 1600)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !228, line: 1225, flags: DIFlagFwdDecl)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !383, file: !228, line: 1226, baseType: !2153, size: 64, offset: 1664)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !228, line: 1226, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !383, file: !228, line: 1227, baseType: !2156, size: 64, offset: 1728)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !228, line: 50, flags: DIFlagFwdDecl)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !383, file: !228, line: 1228, baseType: !2159, size: 64, offset: 1792)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !228, line: 1228, flags: DIFlagFwdDecl)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !383, file: !228, line: 1229, baseType: !744, size: 128, offset: 1856)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !383, file: !228, line: 1230, baseType: !53, size: 32, offset: 1984)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !383, file: !228, line: 1231, baseType: !2164, size: 2496, offset: 2048)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !1939, line: 521, size: 2496, elements: !2165)
!2165 = !{!2166, !2167, !2168, !2170, !2202}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2164, file: !1939, line: 522, baseType: !53, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2164, file: !1939, line: 523, baseType: !1108, size: 320, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2164, file: !1939, line: 524, baseType: !2169, size: 192, offset: 384)
!2169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 192, elements: !150)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2164, file: !1939, line: 525, baseType: !2171, size: 1728, offset: 576)
!2171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2172, size: 1728, elements: !150)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !1939, line: 222, size: 576, elements: !2173)
!2173 = !{!2174, !2194, !2195, !2196, !2197, !2198, !2199, !2200, !2201}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2172, file: !1939, line: 223, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !1939, line: 445, size: 256, elements: !2177)
!2177 = !{!2178, !2179, !2192, !2193}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2176, file: !1939, line: 446, baseType: !6, size: 32)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2176, file: !1939, line: 447, baseType: !2180, size: 64, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2182)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !1939, line: 312, size: 512, elements: !2183)
!2183 = !{!2184, !2185, !2186, !2187, !2188, !2189, !2190, !2191}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2182, file: !1939, line: 313, baseType: !912, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2182, file: !1939, line: 314, baseType: !912, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2182, file: !1939, line: 315, baseType: !912, size: 64, offset: 128)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2182, file: !1939, line: 316, baseType: !912, size: 64, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2182, file: !1939, line: 317, baseType: !2008, size: 64, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2182, file: !1939, line: 318, baseType: !2008, size: 64, offset: 320)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2182, file: !1939, line: 319, baseType: !2008, size: 64, offset: 384)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2182, file: !1939, line: 320, baseType: !2038, size: 64, offset: 448)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2176, file: !1939, line: 448, baseType: !420, size: 64, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2176, file: !1939, line: 449, baseType: !2175, size: 64, offset: 192)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2172, file: !1939, line: 224, baseType: !6, size: 32, offset: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2172, file: !1939, line: 226, baseType: !12, size: 128, offset: 128)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2172, file: !1939, line: 227, baseType: !199, size: 64, offset: 256)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2172, file: !1939, line: 228, baseType: !53, size: 32, offset: 320)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2172, file: !1939, line: 229, baseType: !53, size: 32, offset: 352)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2172, file: !1939, line: 230, baseType: !1976, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2172, file: !1939, line: 231, baseType: !1976, size: 64, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2172, file: !1939, line: 232, baseType: !221, size: 64, offset: 512)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2164, file: !1939, line: 526, baseType: !2203, size: 192, offset: 2304)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2180, size: 192, elements: !150)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !383, file: !228, line: 1233, baseType: !2205, size: 2368, offset: 4544)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !228, line: 1184, size: 2368, elements: !2206)
!2206 = !{!2207, !2208, !2209}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2205, file: !228, line: 1185, baseType: !119, size: 16)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2205, file: !228, line: 1186, baseType: !119, size: 16, offset: 16)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2205, file: !228, line: 1187, baseType: !2210, size: 2304, offset: 64)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2211, size: 2304, elements: !150)
!2211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2212, line: 12, size: 768, elements: !2213)
!2212 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2213 = !{!2214, !2222, !2223, !3438, !3439}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2211, file: !2212, line: 13, baseType: !2215, size: 384)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2216, line: 17, size: 384, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2217 = !{!2218, !2219, !2220, !2221}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2215, file: !2216, line: 18, baseType: !6, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2215, file: !2216, line: 19, baseType: !6, size: 32, offset: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2215, file: !2216, line: 20, baseType: !1038, size: 192, offset: 64)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2215, file: !2216, line: 22, baseType: !718, size: 128, align: 64, offset: 256)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2211, file: !2212, line: 14, baseType: !570, size: 64, offset: 384)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2211, file: !2212, line: 15, baseType: !2224, size: 64, offset: 448)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2225, line: 16, size: 64, elements: !2226)
!2225 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2226 = !{!2227}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2224, file: !2225, line: 17, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1868, line: 746, size: 58368, elements: !2230)
!2230 = !{!2231, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2311, !2322, !2422, !2426, !2429, !2460, !2461, !2462, !2463, !2474, !2476, !2477, !2478, !2479, !2480, !2481, !2492, !2493, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2510, !2511, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2605, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2618, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2653, !2659, !2660, !2661, !2662, !2663, !2667, !2670, !2677, !2682, !2685, !2688, !2691, !2694, !2832, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2870, !2871, !2872, !2881, !2889, !2890, !2891, !2892, !2893, !2898, !2899, !2900, !2904, !2905, !2908, !2911, !2914, !2922, !2925, !2926, !3012, !3013, !3014, !3015, !3016, !3022, !3023, !3024, !3025, !3028, !3029, !3032, !3035, !3036, !3039, !3040, !3041, !3044, !3045, !3046, !3047, !3048, !3049, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3081, !3082, !3088, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3100, !3178, !3180, !3181, !3182, !3183, !3184, !3185, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3215, !3216, !3217}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2229, file: !1868, line: 752, baseType: !2232, size: 192)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2233, line: 56, size: 192, elements: !2234)
!2233 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2234 = !{!2235, !2236, !2237, !2238}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2232, file: !2233, line: 57, baseType: !199, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2232, file: !2233, line: 58, baseType: !199, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2232, file: !2233, line: 59, baseType: !300, size: 32, offset: 128)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2232, file: !2233, line: 61, baseType: !300, size: 32, offset: 160)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2229, file: !1868, line: 754, baseType: !53, size: 32, offset: 192)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2229, file: !1868, line: 767, baseType: !221, size: 64, offset: 256)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2229, file: !1868, line: 768, baseType: !43, size: 32, offset: 320)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2229, file: !1868, line: 770, baseType: !53, size: 32, offset: 352)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2229, file: !1868, line: 771, baseType: !53, size: 32, offset: 384)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2229, file: !1868, line: 774, baseType: !6, size: 32, offset: 416)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2229, file: !1868, line: 775, baseType: !2246, size: 128, offset: 448)
!2246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2247, line: 58, size: 128, elements: !2248)
!2247 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2248 = !{!2249, !2250, !2255, !2256}
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2246, file: !2247, line: 59, baseType: !988, size: 64)
!2250 = !DIDerivedType(tag: DW_TAG_member, scope: !2246, file: !2247, line: 60, baseType: !2251, size: 32, offset: 64)
!2251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2246, file: !2247, line: 60, size: 32, elements: !2252)
!2252 = !{!2253, !2254}
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2251, file: !2247, line: 61, baseType: !53, size: 32)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2251, file: !2247, line: 62, baseType: !48, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2246, file: !2247, line: 65, baseType: !117, size: 16, offset: 96)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2246, file: !2247, line: 65, baseType: !117, size: 16, offset: 112)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2229, file: !1868, line: 776, baseType: !53, size: 32, offset: 576)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2229, file: !1868, line: 777, baseType: !199, size: 64, offset: 640)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2229, file: !1868, line: 778, baseType: !2228, size: 64, offset: 704)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2229, file: !1868, line: 787, baseType: !6, size: 32, offset: 768)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2229, file: !1868, line: 788, baseType: !6, size: 32, offset: 800)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2229, file: !1868, line: 790, baseType: !6, size: 32, offset: 832)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2229, file: !1868, line: 792, baseType: !6, size: 32, offset: 864)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2229, file: !1868, line: 793, baseType: !6, size: 32, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2229, file: !1868, line: 794, baseType: !6, size: 32, offset: 928)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2229, file: !1868, line: 795, baseType: !53, size: 32, offset: 960)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2229, file: !1868, line: 797, baseType: !2268, size: 2048, offset: 1024)
!2268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1868, line: 551, size: 2048, elements: !2269)
!2269 = !{!2270, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2290, !2293, !2294, !2295}
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2268, file: !1868, line: 553, baseType: !2271, size: 128)
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1868, line: 411, size: 128, elements: !2272)
!2272 = !{!2273, !2274}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2271, file: !1868, line: 412, baseType: !199, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2271, file: !1868, line: 413, baseType: !300, size: 32, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2268, file: !1868, line: 554, baseType: !610, size: 192, align: 64, offset: 128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2268, file: !1868, line: 555, baseType: !304, size: 64, offset: 320)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2268, file: !1868, line: 556, baseType: !304, size: 64, offset: 384)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2268, file: !1868, line: 558, baseType: !12, size: 128, offset: 448)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2268, file: !1868, line: 559, baseType: !53, size: 32, offset: 576)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2268, file: !1868, line: 561, baseType: !304, size: 64, offset: 640)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2268, file: !1868, line: 562, baseType: !304, size: 64, offset: 704)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2268, file: !1868, line: 563, baseType: !304, size: 64, offset: 768)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2268, file: !1868, line: 564, baseType: !304, size: 64, offset: 832)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2268, file: !1868, line: 565, baseType: !508, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2268, file: !1868, line: 566, baseType: !304, size: 64, offset: 960)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2268, file: !1868, line: 568, baseType: !304, size: 64, offset: 1024)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2268, file: !1868, line: 571, baseType: !6, size: 32, offset: 1088)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2268, file: !1868, line: 572, baseType: !2289, size: 64, offset: 1152)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2268, file: !1868, line: 574, baseType: !2291, size: 64, offset: 1216)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1868, line: 49, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2268, file: !1868, line: 576, baseType: !2291, size: 64, offset: 1280)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2268, file: !1868, line: 578, baseType: !199, size: 64, offset: 1344)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2268, file: !1868, line: 588, baseType: !2296, size: 512, align: 512, offset: 1536)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1868, line: 497, size: 512, align: 512, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2296, file: !1868, line: 498, baseType: !304, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2296, file: !1868, line: 499, baseType: !304, size: 64, offset: 64)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2296, file: !1868, line: 500, baseType: !304, size: 64, offset: 128)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2296, file: !1868, line: 501, baseType: !300, size: 32, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2296, file: !1868, line: 502, baseType: !300, size: 32, offset: 224)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2296, file: !1868, line: 503, baseType: !199, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2296, file: !1868, line: 504, baseType: !199, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2296, file: !1868, line: 505, baseType: !199, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2296, file: !1868, line: 506, baseType: !2307, size: 64, align: 64, offset: 448)
!2307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1868, line: 445, size: 64, align: 64, elements: !2308)
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2307, file: !1868, line: 446, baseType: !53, size: 32)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2307, file: !1868, line: 447, baseType: !53, size: 32, offset: 32)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2229, file: !1868, line: 798, baseType: !2312, size: 384, offset: 3072)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1868, line: 592, size: 384, elements: !2313)
!2313 = !{!2314, !2315, !2316, !2317, !2318, !2319, !2320}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2312, file: !1868, line: 593, baseType: !12, size: 128)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2312, file: !1868, line: 594, baseType: !199, size: 64, offset: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2312, file: !1868, line: 595, baseType: !199, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2312, file: !1868, line: 596, baseType: !53, size: 32, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2312, file: !1868, line: 597, baseType: !119, size: 16, offset: 288)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2312, file: !1868, line: 598, baseType: !119, size: 16, offset: 304)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2312, file: !1868, line: 600, baseType: !2321, size: 64, offset: 320)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2229, file: !1868, line: 799, baseType: !2323, size: 1792, offset: 3456)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1868, line: 610, size: 1792, elements: !2324)
!2324 = !{!2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335, !2336, !2337, !2338, !2419, !2420}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2323, file: !1868, line: 611, baseType: !610, size: 192, align: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2323, file: !1868, line: 618, baseType: !304, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2323, file: !1868, line: 619, baseType: !304, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2323, file: !1868, line: 620, baseType: !304, size: 64, offset: 320)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2323, file: !1868, line: 621, baseType: !304, size: 64, offset: 384)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2323, file: !1868, line: 622, baseType: !304, size: 64, offset: 448)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2323, file: !1868, line: 629, baseType: !508, size: 64, offset: 512)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2323, file: !1868, line: 630, baseType: !304, size: 64, offset: 576)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2323, file: !1868, line: 631, baseType: !53, size: 32, offset: 640)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2323, file: !1868, line: 653, baseType: !53, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2323, file: !1868, line: 654, baseType: !53, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2323, file: !1868, line: 655, baseType: !53, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2323, file: !1868, line: 656, baseType: !53, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2323, file: !1868, line: 662, baseType: !2339, size: 512, offset: 704)
!2339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !2340, line: 118, size: 512, elements: !2341)
!2340 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!2341 = !{!2342, !2350, !2351, !2360, !2415, !2416, !2417, !2418}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2339, file: !2340, line: 119, baseType: !2343, size: 256)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2344, line: 9, size: 256, elements: !2345)
!2344 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2345 = !{!2346, !2347}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2343, file: !2344, line: 10, baseType: !610, size: 192, align: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2343, file: !2344, line: 11, baseType: !2348, size: 64, offset: 192)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2349, line: 29, baseType: !508)
!2349 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2339, file: !2340, line: 120, baseType: !2348, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2339, file: !2340, line: 121, baseType: !2352, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!2355, !2359}
!2355 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !2340, line: 65, baseType: !53, size: 32, elements: !2356)
!2356 = !{!2357, !2358}
!2357 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!2358 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2339, file: !2340, line: 122, baseType: !2361, size: 64, offset: 384)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !2340, line: 159, size: 512, align: 512, elements: !2363)
!2363 = !{!2364, !2389, !2390, !2393, !2398, !2399, !2410, !2414}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2362, file: !2340, line: 160, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !2340, line: 215, size: 4608, align: 512, elements: !2367)
!2367 = !{!2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2366, file: !2340, line: 216, baseType: !456, size: 32)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2366, file: !2340, line: 217, baseType: !53, size: 32, offset: 32)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2366, file: !2340, line: 218, baseType: !53, size: 32, offset: 64)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2366, file: !2340, line: 219, baseType: !53, size: 32, offset: 96)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2366, file: !2340, line: 220, baseType: !53, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2366, file: !2340, line: 221, baseType: !53, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2366, file: !2340, line: 222, baseType: !53, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2366, file: !2340, line: 223, baseType: !53, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2366, file: !2340, line: 224, baseType: !53, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2366, file: !2340, line: 226, baseType: !53, size: 32, offset: 160)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2366, file: !2340, line: 227, baseType: !119, size: 16, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2366, file: !2340, line: 228, baseType: !119, size: 16, offset: 208)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2366, file: !2340, line: 229, baseType: !53, size: 32, offset: 224)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2366, file: !2340, line: 235, baseType: !2348, size: 64, offset: 256)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2366, file: !2340, line: 236, baseType: !2359, size: 64, offset: 320)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2366, file: !2340, line: 237, baseType: !2348, size: 64, offset: 384)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2366, file: !2340, line: 238, baseType: !2359, size: 64, offset: 448)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2366, file: !2340, line: 239, baseType: !2386, size: 4096, align: 512, offset: 512)
!2386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2362, size: 4096, align: 512, elements: !2387)
!2387 = !{!2388}
!2388 = !DISubrange(count: 8)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2362, file: !2340, line: 161, baseType: !53, size: 32, offset: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2362, file: !2340, line: 162, baseType: !2391, size: 32, offset: 96)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !13, line: 32, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !183, line: 96, baseType: !6)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2362, file: !2340, line: 163, baseType: !2394, size: 32, offset: 128)
!2394 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !273, line: 274, baseType: !2395)
!2395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !273, line: 274, size: 32, elements: !2396)
!2396 = !{!2397}
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2395, file: !273, line: 274, baseType: !277, size: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2362, file: !2340, line: 164, baseType: !2359, size: 64, offset: 192)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2362, file: !2340, line: 165, baseType: !2400, size: 128, offset: 256)
!2400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2344, line: 14, size: 128, elements: !2401)
!2401 = !{!2402}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2400, file: !2344, line: 15, baseType: !2403, size: 128)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !611, line: 26, size: 128, elements: !2404)
!2404 = !{!2405, !2409}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2403, file: !611, line: 27, baseType: !2406, size: 64)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !611, line: 12, size: 64, elements: !2407)
!2407 = !{!2408}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2406, file: !611, line: 13, baseType: !615, size: 64)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !2403, file: !611, line: 28, baseType: !615, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2362, file: !2340, line: 166, baseType: !2411, size: 64, offset: 384)
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!2348}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2362, file: !2340, line: 167, baseType: !2348, size: 64, offset: 448)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2339, file: !2340, line: 123, baseType: !107, size: 8, offset: 448)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2339, file: !2340, line: 124, baseType: !107, size: 8, offset: 456)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2339, file: !2340, line: 125, baseType: !107, size: 8, offset: 464)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2339, file: !2340, line: 126, baseType: !107, size: 8, offset: 472)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2323, file: !1868, line: 671, baseType: !2339, size: 512, offset: 1216)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2323, file: !1868, line: 679, baseType: !2421, size: 64, offset: 1728)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2229, file: !1868, line: 800, baseType: !2423, size: 64, offset: 5248)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2425)
!2425 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1868, line: 800, flags: DIFlagFwdDecl)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2229, file: !1868, line: 809, baseType: !2427, size: 64, offset: 5312)
!2427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2428, size: 64)
!2428 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1868, line: 70, flags: DIFlagFwdDecl)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2229, file: !1868, line: 825, baseType: !2430, size: 2048, align: 512, offset: 5632)
!2430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1868, line: 509, size: 2048, align: 512, elements: !2431)
!2431 = !{!2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2430, file: !1868, line: 511, baseType: !304, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2430, file: !1868, line: 512, baseType: !304, size: 64, offset: 64)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2430, file: !1868, line: 513, baseType: !304, size: 64, offset: 128)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2430, file: !1868, line: 514, baseType: !304, size: 64, offset: 192)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2430, file: !1868, line: 515, baseType: !304, size: 64, offset: 256)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2430, file: !1868, line: 516, baseType: !304, size: 64, offset: 320)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2430, file: !1868, line: 518, baseType: !304, size: 64, offset: 384)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2430, file: !1868, line: 519, baseType: !304, size: 64, offset: 448)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2430, file: !1868, line: 520, baseType: !508, size: 64, offset: 512)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2430, file: !1868, line: 522, baseType: !304, size: 64, offset: 576)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2430, file: !1868, line: 523, baseType: !304, size: 64, offset: 640)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2430, file: !1868, line: 524, baseType: !508, size: 64, offset: 704)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2430, file: !1868, line: 526, baseType: !508, size: 64, offset: 768)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2430, file: !1868, line: 527, baseType: !304, size: 64, offset: 832)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2430, file: !1868, line: 529, baseType: !304, size: 64, offset: 896)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2430, file: !1868, line: 530, baseType: !304, size: 64, offset: 960)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2430, file: !1868, line: 531, baseType: !304, size: 64, offset: 1024)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2430, file: !1868, line: 532, baseType: !304, size: 64, offset: 1088)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2430, file: !1868, line: 533, baseType: !304, size: 64, offset: 1152)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2430, file: !1868, line: 535, baseType: !304, size: 64, offset: 1216)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2430, file: !1868, line: 536, baseType: !304, size: 64, offset: 1280)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2430, file: !1868, line: 537, baseType: !304, size: 64, offset: 1344)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2430, file: !1868, line: 538, baseType: !304, size: 64, offset: 1408)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2430, file: !1868, line: 539, baseType: !304, size: 64, offset: 1472)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2430, file: !1868, line: 540, baseType: !304, size: 64, offset: 1536)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2430, file: !1868, line: 541, baseType: !304, size: 64, offset: 1600)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2430, file: !1868, line: 542, baseType: !304, size: 64, offset: 1664)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2430, file: !1868, line: 543, baseType: !304, size: 64, offset: 1728)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2229, file: !1868, line: 833, baseType: !53, size: 32, offset: 7680)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2229, file: !1868, line: 836, baseType: !53, size: 32, offset: 7712)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2229, file: !1868, line: 837, baseType: !6, size: 32, offset: 7744)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2229, file: !1868, line: 838, baseType: !2464, size: 64, offset: 7808)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2466)
!2466 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2467, line: 19, baseType: !2468)
!2467 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2467, line: 19, size: 64, elements: !2469)
!2469 = !{!2470}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2468, file: !2467, line: 19, baseType: !2471, size: 64)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !2472)
!2472 = !{!2473}
!2473 = !DISubrange(count: 1)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2229, file: !1868, line: 839, baseType: !2475, size: 64, offset: 7872)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2229, file: !1868, line: 840, baseType: !2466, size: 64, offset: 7936)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2229, file: !1868, line: 841, baseType: !221, size: 64, offset: 8000)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2229, file: !1868, line: 843, baseType: !119, size: 16, offset: 8064)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2229, file: !1868, line: 845, baseType: !119, size: 16, offset: 8080)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2229, file: !1868, line: 848, baseType: !6, size: 32, offset: 8096)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2229, file: !1868, line: 849, baseType: !2482, size: 32, offset: 8128)
!2482 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1868, line: 718, size: 32, elements: !2483)
!2483 = !{!2484, !2491}
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2482, file: !1868, line: 724, baseType: !2485, size: 32)
!2485 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2482, file: !1868, line: 719, size: 32, elements: !2486)
!2486 = !{!2487, !2488, !2489, !2490}
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2485, file: !1868, line: 720, baseType: !107, size: 8)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2485, file: !1868, line: 721, baseType: !107, size: 8, offset: 8)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2485, file: !1868, line: 722, baseType: !107, size: 8, offset: 16)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2485, file: !1868, line: 723, baseType: !107, size: 8, offset: 24)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2482, file: !1868, line: 725, baseType: !300, size: 32)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2229, file: !1868, line: 850, baseType: !12, size: 128, offset: 8192)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2229, file: !1868, line: 851, baseType: !2494, size: 64, offset: 8320)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1868, line: 60, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2229, file: !1868, line: 855, baseType: !199, size: 64, offset: 8384)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2229, file: !1868, line: 856, baseType: !107, size: 8, offset: 8448)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2229, file: !1868, line: 857, baseType: !107, size: 8, offset: 8456)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2229, file: !1868, line: 858, baseType: !6, size: 32, offset: 8480)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2229, file: !1868, line: 859, baseType: !12, size: 128, offset: 8512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2229, file: !1868, line: 860, baseType: !6, size: 32, offset: 8640)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2229, file: !1868, line: 861, baseType: !12, size: 128, offset: 8704)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2229, file: !1868, line: 873, baseType: !2504, size: 256, offset: 8832)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1868, line: 376, size: 256, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2504, file: !1868, line: 381, baseType: !199, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2504, file: !1868, line: 384, baseType: !306, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2504, file: !1868, line: 389, baseType: !306, size: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2504, file: !1868, line: 392, baseType: !306, size: 64, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2229, file: !1868, line: 875, baseType: !12, size: 128, offset: 9088)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2229, file: !1868, line: 877, baseType: !2512, size: 320, offset: 9216)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2513, line: 86, size: 320, elements: !2514)
!2513 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2514 = !{!2515, !2516, !2517}
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2512, file: !2513, line: 87, baseType: !6, size: 32)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2512, file: !2513, line: 88, baseType: !12, size: 128, offset: 64)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2512, file: !2513, line: 89, baseType: !12, size: 128, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2229, file: !1868, line: 878, baseType: !610, size: 192, align: 64, offset: 9536)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2229, file: !1868, line: 881, baseType: !1380, size: 64, offset: 9728)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2229, file: !1868, line: 882, baseType: !1380, size: 64, offset: 9792)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2229, file: !1868, line: 884, baseType: !6, size: 32, offset: 9856)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2229, file: !1868, line: 885, baseType: !6, size: 32, offset: 9888)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2229, file: !1868, line: 886, baseType: !6, size: 32, offset: 9920)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2229, file: !1868, line: 888, baseType: !6, size: 32, offset: 9952)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2229, file: !1868, line: 890, baseType: !199, size: 64, offset: 9984)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2229, file: !1868, line: 893, baseType: !53, size: 32, offset: 10048)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2229, file: !1868, line: 896, baseType: !53, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2229, file: !1868, line: 897, baseType: !53, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2229, file: !1868, line: 898, baseType: !53, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2229, file: !1868, line: 899, baseType: !53, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2229, file: !1868, line: 919, baseType: !53, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2229, file: !1868, line: 922, baseType: !53, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2229, file: !1868, line: 923, baseType: !53, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2229, file: !1868, line: 925, baseType: !53, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2229, file: !1868, line: 939, baseType: !53, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2229, file: !1868, line: 941, baseType: !53, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2229, file: !1868, line: 944, baseType: !53, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2229, file: !1868, line: 956, baseType: !53, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2229, file: !1868, line: 962, baseType: !53, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2229, file: !1868, line: 966, baseType: !53, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2229, file: !1868, line: 969, baseType: !199, size: 64, offset: 10176)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2229, file: !1868, line: 971, baseType: !2543, size: 448, offset: 10240)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !2544, line: 25, size: 448, elements: !2545)
!2544 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!2545 = !{!2546, !2547, !2552}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2543, file: !2544, line: 26, baseType: !199, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2543, file: !2544, line: 27, baseType: !2548, size: 64, offset: 64)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!185, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, scope: !2543, file: !2544, line: 28, baseType: !2553, size: 320, offset: 128)
!2553 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2543, file: !2544, line: 28, size: 320, elements: !2554)
!2554 = !{!2555, !2565, !2595}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2553, file: !2544, line: 37, baseType: !2556, size: 320)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2553, file: !2544, line: 30, size: 320, elements: !2557)
!2557 = !{!2558, !2560, !2561, !2562, !2563, !2564}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2556, file: !2544, line: 31, baseType: !2559, size: 64)
!2559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2556, file: !2544, line: 32, baseType: !300, size: 32, offset: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2556, file: !2544, line: 33, baseType: !300, size: 32, offset: 96)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2556, file: !2544, line: 34, baseType: !300, size: 32, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2556, file: !2544, line: 35, baseType: !304, size: 64, offset: 192)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2556, file: !2544, line: 36, baseType: !2559, size: 64, offset: 256)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2553, file: !2544, line: 47, baseType: !2566, size: 192)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2553, file: !2544, line: 39, size: 192, elements: !2567)
!2567 = !{!2568, !2569, !2575, !2594}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2566, file: !2544, line: 40, baseType: !2391, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2566, file: !2544, line: 41, baseType: !2570, size: 32, offset: 32)
!2570 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !2544, line: 16, baseType: !53, size: 32, elements: !2571)
!2571 = !{!2572, !2573, !2574}
!2572 = !DIEnumerator(name: "TT_NONE", value: 0)
!2573 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!2574 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!2575 = !DIDerivedType(tag: DW_TAG_member, scope: !2566, file: !2544, line: 42, baseType: !2576, size: 64, offset: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2566, file: !2544, line: 42, size: 64, elements: !2577)
!2577 = !{!2578, !2586}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2576, file: !2544, line: 43, baseType: !2579, size: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2581, line: 7, size: 128, elements: !2582)
!2581 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2582 = !{!2583, !2585}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2580, file: !2581, line: 8, baseType: !2584, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !183, line: 93, baseType: !394)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2580, file: !2581, line: 9, baseType: !394, size: 64, offset: 64)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2576, file: !2544, line: 44, baseType: !2587, size: 64)
!2587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2588, size: 64)
!2588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2589, line: 7, size: 64, elements: !2590)
!2589 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2590 = !{!2591, !2593}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2588, file: !2589, line: 8, baseType: !2592, size: 32)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2589, line: 5, baseType: !494)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2588, file: !2589, line: 9, baseType: !494, size: 32, offset: 32)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2566, file: !2544, line: 46, baseType: !304, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2553, file: !2544, line: 55, baseType: !2596, size: 256)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2553, file: !2544, line: 49, size: 256, elements: !2597)
!2597 = !{!2598, !2601, !2602, !2603, !2604}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2596, file: !2544, line: 50, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !2544, line: 14, flags: DIFlagFwdDecl)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2596, file: !2544, line: 51, baseType: !6, size: 32, offset: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2596, file: !2544, line: 52, baseType: !6, size: 32, offset: 96)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2596, file: !2544, line: 53, baseType: !199, size: 64, offset: 128)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2596, file: !2544, line: 54, baseType: !199, size: 64, offset: 192)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2229, file: !1868, line: 973, baseType: !2606, size: 32, offset: 10688)
!2606 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !13, line: 27, baseType: !2607)
!2607 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !183, line: 28, baseType: !6)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2229, file: !1868, line: 974, baseType: !2606, size: 32, offset: 10720)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2229, file: !1868, line: 978, baseType: !199, size: 64, offset: 10752)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2229, file: !1868, line: 987, baseType: !2228, size: 64, offset: 10816)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2229, file: !1868, line: 990, baseType: !2228, size: 64, offset: 10880)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2229, file: !1868, line: 995, baseType: !12, size: 128, offset: 10944)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2229, file: !1868, line: 996, baseType: !12, size: 128, offset: 11072)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2229, file: !1868, line: 997, baseType: !2228, size: 64, offset: 11200)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2229, file: !1868, line: 1005, baseType: !12, size: 128, offset: 11264)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2229, file: !1868, line: 1006, baseType: !12, size: 128, offset: 11392)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2229, file: !1868, line: 1009, baseType: !1027, size: 64, offset: 11520)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2229, file: !1868, line: 1010, baseType: !2619, size: 512, offset: 11584)
!2619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !744, size: 512, elements: !728)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2229, file: !1868, line: 1011, baseType: !12, size: 128, offset: 12096)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2229, file: !1868, line: 1012, baseType: !12, size: 128, offset: 12224)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2229, file: !1868, line: 1014, baseType: !446, size: 64, offset: 12352)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2229, file: !1868, line: 1017, baseType: !627, size: 64, offset: 12416)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2229, file: !1868, line: 1020, baseType: !627, size: 64, offset: 12480)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2229, file: !1868, line: 1023, baseType: !221, size: 64, offset: 12544)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2229, file: !1868, line: 1025, baseType: !304, size: 64, offset: 12608)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2229, file: !1868, line: 1026, baseType: !304, size: 64, offset: 12672)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2229, file: !1868, line: 1031, baseType: !304, size: 64, offset: 12736)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2229, file: !1868, line: 1032, baseType: !2630, size: 192, offset: 12800)
!2630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1868, line: 324, size: 192, elements: !2631)
!2631 = !{!2632, !2633, !2634}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2630, file: !1868, line: 326, baseType: !304, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2630, file: !1868, line: 327, baseType: !304, size: 64, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2630, file: !1868, line: 328, baseType: !456, size: 32, offset: 128)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2229, file: !1868, line: 1041, baseType: !199, size: 64, offset: 12992)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2229, file: !1868, line: 1042, baseType: !199, size: 64, offset: 13056)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2229, file: !1868, line: 1045, baseType: !304, size: 64, offset: 13120)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2229, file: !1868, line: 1048, baseType: !304, size: 64, offset: 13184)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2229, file: !1868, line: 1051, baseType: !199, size: 64, offset: 13248)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2229, file: !1868, line: 1052, baseType: !199, size: 64, offset: 13312)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2229, file: !1868, line: 1055, baseType: !2642, size: 640, offset: 13376)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2643, line: 132, size: 640, elements: !2644)
!2643 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2644 = !{!2645, !2651, !2652}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2642, file: !2643, line: 133, baseType: !2646, size: 576)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2647, size: 576, elements: !150)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2643, line: 117, size: 192, elements: !2648)
!2648 = !{!2649, !2650}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2647, file: !2643, line: 118, baseType: !304, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2647, file: !2643, line: 119, baseType: !2400, size: 128, offset: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2642, file: !2643, line: 134, baseType: !53, size: 32, offset: 576)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2642, file: !2643, line: 135, baseType: !53, size: 32, offset: 608)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2229, file: !1868, line: 1058, baseType: !2654, size: 448, offset: 14016)
!2654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2643, line: 144, size: 448, elements: !2655)
!2655 = !{!2656, !2657, !2658}
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2654, file: !2643, line: 145, baseType: !718, size: 128, align: 64)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2654, file: !2643, line: 146, baseType: !498, size: 256, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2654, file: !2643, line: 147, baseType: !53, size: 32, offset: 384)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2229, file: !1868, line: 1064, baseType: !1067, size: 64, offset: 14464)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2229, file: !1868, line: 1067, baseType: !1067, size: 64, offset: 14528)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2229, file: !1868, line: 1070, baseType: !1067, size: 64, offset: 14592)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2229, file: !1868, line: 1074, baseType: !1094, size: 64, offset: 14656)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2229, file: !1868, line: 1084, baseType: !2664, size: 128, offset: 14720)
!2664 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 128, elements: !2665)
!2665 = !{!2666}
!2666 = !DISubrange(count: 16)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2229, file: !1868, line: 1086, baseType: !2668, size: 64, offset: 14848)
!2668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2669, size: 64)
!2669 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1868, line: 55, flags: DIFlagFwdDecl)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2229, file: !1868, line: 1089, baseType: !2671, size: 64, offset: 14912)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2672, line: 12, size: 64, elements: !2673)
!2672 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2671, file: !2672, line: 13, baseType: !2675, size: 64)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2672, line: 8, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2229, file: !1868, line: 1090, baseType: !2678, size: 128, offset: 14976)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2679, line: 13, size: 128, elements: !2680)
!2679 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2680 = !{!2681}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2678, file: !2679, line: 14, baseType: !12, size: 128)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2229, file: !1868, line: 1097, baseType: !2683, size: 64, offset: 15104)
!2683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2684 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1868, line: 50, flags: DIFlagFwdDecl)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2229, file: !1868, line: 1100, baseType: !2686, size: 64, offset: 15168)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2687, size: 64)
!2687 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1868, line: 1100, flags: DIFlagFwdDecl)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2229, file: !1868, line: 1103, baseType: !2689, size: 64, offset: 15232)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1868, line: 53, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2229, file: !1868, line: 1107, baseType: !2692, size: 64, offset: 15296)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1868, line: 56, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2229, file: !1868, line: 1110, baseType: !2695, size: 64, offset: 15360)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2697, line: 93, size: 8768, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2698 = !{!2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2746, !2755, !2756, !2758, !2759, !2760, !2763, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2801, !2802, !2809, !2819, !2822, !2823, !2826, !2827, !2828, !2829, !2830, !2831}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2696, file: !2697, line: 94, baseType: !43, size: 32)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2696, file: !2697, line: 95, baseType: !48, size: 32, offset: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2696, file: !2697, line: 96, baseType: !6, size: 32, offset: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2696, file: !2697, line: 97, baseType: !6, size: 32, offset: 96)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2696, file: !2697, line: 98, baseType: !12, size: 128, offset: 128)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2696, file: !2697, line: 100, baseType: !1038, size: 192, offset: 256)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2696, file: !2697, line: 103, baseType: !2228, size: 64, offset: 448)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2696, file: !2697, line: 106, baseType: !2707, size: 192, offset: 512)
!2707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1253, line: 32, size: 192, elements: !2708)
!2708 = !{!2709, !2710}
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2707, file: !1253, line: 33, baseType: !12, size: 128)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2707, file: !1253, line: 34, baseType: !2711, size: 64, offset: 128)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2712, line: 25, baseType: !2713)
!2712 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2712, line: 23, size: 64, elements: !2714)
!2714 = !{!2715}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2713, file: !2712, line: 24, baseType: !2471, size: 64)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2696, file: !2697, line: 109, baseType: !868, size: 64, offset: 704)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2696, file: !2697, line: 112, baseType: !6, size: 32, offset: 768)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2696, file: !2697, line: 114, baseType: !6, size: 32, offset: 800)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2696, file: !2697, line: 115, baseType: !2228, size: 64, offset: 832)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2696, file: !2697, line: 118, baseType: !6, size: 32, offset: 896)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2696, file: !2697, line: 119, baseType: !53, size: 32, offset: 928)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2696, file: !2697, line: 121, baseType: !2723, size: 64, offset: 960)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2697, line: 80, size: 448, elements: !2725)
!2725 = !{!2726, !2727, !2733}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2724, file: !2697, line: 81, baseType: !48, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2724, file: !2697, line: 82, baseType: !2728, size: 128, offset: 64)
!2728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2697, line: 75, size: 128, elements: !2729)
!2729 = !{!2730, !2731}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2728, file: !2697, line: 76, baseType: !2228, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2728, file: !2697, line: 77, baseType: !2732, size: 64, offset: 64)
!2732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2724, file: !2697, line: 83, baseType: !447, size: 256, offset: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2696, file: !2697, line: 132, baseType: !53, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2696, file: !2697, line: 133, baseType: !53, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2696, file: !2697, line: 138, baseType: !53, size: 32, offset: 1056)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2696, file: !2697, line: 139, baseType: !12, size: 128, offset: 1088)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2696, file: !2697, line: 142, baseType: !2339, size: 512, offset: 1216)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2696, file: !2697, line: 143, baseType: !2348, size: 64, offset: 1728)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2696, file: !2697, line: 150, baseType: !2741, size: 256, offset: 1792)
!2741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2742, size: 256, elements: !617)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2697, line: 38, size: 128, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2742, file: !2697, line: 39, baseType: !304, size: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2742, file: !2697, line: 40, baseType: !304, size: 64, offset: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2696, file: !2697, line: 156, baseType: !2747, size: 192, offset: 2048)
!2747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2697, line: 66, size: 192, elements: !2748)
!2748 = !{!2749}
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2747, file: !2697, line: 67, baseType: !2750, size: 192)
!2750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2697, line: 47, size: 192, elements: !2751)
!2751 = !{!2752, !2753, !2754}
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2750, file: !2697, line: 48, baseType: !504, size: 64)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2750, file: !2697, line: 49, baseType: !504, size: 64, offset: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2750, file: !2697, line: 50, baseType: !504, size: 64, offset: 128)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2696, file: !2697, line: 160, baseType: !2642, size: 640, offset: 2240)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2696, file: !2697, line: 163, baseType: !2757, size: 256, offset: 2880)
!2757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1027, size: 256, elements: !728)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2696, file: !2697, line: 169, baseType: !1027, size: 64, offset: 3136)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2696, file: !2697, line: 172, baseType: !6, size: 32, offset: 3200)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2696, file: !2697, line: 174, baseType: !2761, size: 64, offset: 3264)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2697, line: 174, flags: DIFlagFwdDecl)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2696, file: !2697, line: 185, baseType: !2764, size: 64, offset: 3328)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !273, line: 860, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !273, line: 853, size: 64, elements: !2766)
!2766 = !{!2767, !2768}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2765, file: !273, line: 858, baseType: !272, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2765, file: !273, line: 859, baseType: !83, size: 32, offset: 32)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2696, file: !2697, line: 186, baseType: !304, size: 64, offset: 3392)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2696, file: !2697, line: 186, baseType: !304, size: 64, offset: 3456)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2696, file: !2697, line: 186, baseType: !304, size: 64, offset: 3520)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2696, file: !2697, line: 186, baseType: !304, size: 64, offset: 3584)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2696, file: !2697, line: 187, baseType: !304, size: 64, offset: 3648)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2696, file: !2697, line: 188, baseType: !304, size: 64, offset: 3712)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2696, file: !2697, line: 189, baseType: !2630, size: 192, offset: 3776)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2696, file: !2697, line: 190, baseType: !199, size: 64, offset: 3968)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2696, file: !2697, line: 190, baseType: !199, size: 64, offset: 4032)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2696, file: !2697, line: 190, baseType: !199, size: 64, offset: 4096)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2696, file: !2697, line: 190, baseType: !199, size: 64, offset: 4160)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2696, file: !2697, line: 191, baseType: !199, size: 64, offset: 4224)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2696, file: !2697, line: 191, baseType: !199, size: 64, offset: 4288)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2696, file: !2697, line: 191, baseType: !199, size: 64, offset: 4352)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2696, file: !2697, line: 191, baseType: !199, size: 64, offset: 4416)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2696, file: !2697, line: 192, baseType: !199, size: 64, offset: 4480)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2696, file: !2697, line: 192, baseType: !199, size: 64, offset: 4544)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2696, file: !2697, line: 192, baseType: !199, size: 64, offset: 4608)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2696, file: !2697, line: 192, baseType: !199, size: 64, offset: 4672)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2696, file: !2697, line: 193, baseType: !199, size: 64, offset: 4736)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2696, file: !2697, line: 193, baseType: !199, size: 64, offset: 4800)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2696, file: !2697, line: 194, baseType: !2791, size: 448, offset: 4864)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2792, line: 12, size: 448, elements: !2793)
!2792 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2793 = !{!2794, !2795, !2796, !2797, !2798, !2799, !2800}
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2791, file: !2792, line: 15, baseType: !304, size: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2791, file: !2792, line: 17, baseType: !304, size: 64, offset: 64)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2791, file: !2792, line: 19, baseType: !304, size: 64, offset: 128)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2791, file: !2792, line: 21, baseType: !304, size: 64, offset: 192)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2791, file: !2792, line: 29, baseType: !304, size: 64, offset: 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2791, file: !2792, line: 35, baseType: !304, size: 64, offset: 320)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2791, file: !2792, line: 44, baseType: !304, size: 64, offset: 384)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2696, file: !2697, line: 202, baseType: !306, size: 64, offset: 5312)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2696, file: !2697, line: 213, baseType: !2803, size: 2048, offset: 5376)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2804, size: 2048, elements: !2665)
!2804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2805, line: 43, size: 128, elements: !2806)
!2805 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2806 = !{!2807, !2808}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2804, file: !2805, line: 44, baseType: !198, size: 64)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2804, file: !2805, line: 45, baseType: !198, size: 64, offset: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2696, file: !2697, line: 216, baseType: !2810, size: 448, offset: 7424)
!2810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2697, line: 30, size: 448, elements: !2811)
!2811 = !{!2812, !2813, !2814, !2815, !2816, !2817, !2818}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2810, file: !2697, line: 31, baseType: !6, size: 32)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2810, file: !2697, line: 32, baseType: !185, size: 64, offset: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2810, file: !2697, line: 33, baseType: !199, size: 64, offset: 128)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2810, file: !2697, line: 34, baseType: !304, size: 64, offset: 192)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2810, file: !2697, line: 34, baseType: !304, size: 64, offset: 256)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2810, file: !2697, line: 35, baseType: !199, size: 64, offset: 320)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2810, file: !2697, line: 35, baseType: !199, size: 64, offset: 384)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2696, file: !2697, line: 219, baseType: !2820, size: 64, offset: 7872)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2697, line: 219, flags: DIFlagFwdDecl)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2696, file: !2697, line: 222, baseType: !53, size: 32, offset: 7936)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2696, file: !2697, line: 223, baseType: !2824, size: 64, offset: 8000)
!2824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2825, size: 64)
!2825 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2697, line: 223, flags: DIFlagFwdDecl)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2696, file: !2697, line: 230, baseType: !578, size: 8, offset: 8064)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2696, file: !2697, line: 231, baseType: !636, size: 16, offset: 8080)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2696, file: !2697, line: 232, baseType: !636, size: 16, offset: 8096)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2696, file: !2697, line: 234, baseType: !1380, size: 64, offset: 8128)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2696, file: !2697, line: 237, baseType: !498, size: 256, offset: 8192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2696, file: !2697, line: 243, baseType: !1108, size: 320, offset: 8448)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2229, file: !1868, line: 1111, baseType: !2833, size: 64, offset: 15424)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2697, line: 20, size: 16640, elements: !2835)
!2835 = !{!2836, !2837, !2838, !2839}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2834, file: !2697, line: 21, baseType: !83, size: 32)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2834, file: !2697, line: 22, baseType: !43, size: 32, offset: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2834, file: !2697, line: 23, baseType: !1038, size: 192, offset: 64)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2834, file: !2697, line: 24, baseType: !2840, size: 16384, offset: 256)
!2840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2841, size: 16384, elements: !154)
!2841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1253, line: 51, size: 256, elements: !2842)
!2842 = !{!2843}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2841, file: !1253, line: 52, baseType: !2844, size: 256)
!2844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1253, line: 37, size: 256, elements: !2845)
!2845 = !{!2846, !2853, !2854, !2858}
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2844, file: !1253, line: 39, baseType: !2847, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2848, line: 83, baseType: !2849)
!2848 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2848, line: 82, baseType: !2851)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null, !6}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2844, file: !1253, line: 40, baseType: !199, size: 64, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2844, file: !1253, line: 46, baseType: !2855, size: 64, offset: 128)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2848, line: 86, baseType: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2848, line: 85, baseType: !863)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2844, file: !1253, line: 48, baseType: !2711, size: 64, offset: 192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2229, file: !1868, line: 1112, baseType: !2711, size: 64, offset: 15488)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2229, file: !1868, line: 1113, baseType: !2711, size: 64, offset: 15552)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2229, file: !1868, line: 1115, baseType: !2711, size: 64, offset: 15616)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2229, file: !1868, line: 1116, baseType: !2707, size: 192, offset: 15680)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2229, file: !1868, line: 1117, baseType: !199, size: 64, offset: 15872)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2229, file: !1868, line: 1118, baseType: !196, size: 64, offset: 15936)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2229, file: !1868, line: 1119, baseType: !53, size: 32, offset: 16000)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2229, file: !1868, line: 1121, baseType: !717, size: 64, offset: 16064)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2229, file: !1868, line: 1125, baseType: !2868, size: 64, offset: 16128)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1868, line: 43, flags: DIFlagFwdDecl)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2229, file: !1868, line: 1127, baseType: !237, size: 32, offset: 16192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2229, file: !1868, line: 1128, baseType: !53, size: 32, offset: 16224)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2229, file: !1868, line: 1130, baseType: !2873, size: 128, offset: 16256)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2874, line: 37, size: 128, elements: !2875)
!2874 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2875 = !{!2876, !2877, !2878}
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2873, file: !2874, line: 38, baseType: !6, size: 32)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2873, file: !2874, line: 39, baseType: !48, size: 32, offset: 32)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2873, file: !2874, line: 40, baseType: !2879, size: 64, offset: 64)
!2879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2880, size: 64)
!2880 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2874, line: 24, flags: DIFlagFwdDecl)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2229, file: !1868, line: 1131, baseType: !2882, size: 256, offset: 16384)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2883, line: 12, size: 256, elements: !2884)
!2883 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2884 = !{!2885, !2886, !2887, !2888}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2882, file: !2883, line: 13, baseType: !149, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2882, file: !2883, line: 14, baseType: !199, size: 64, offset: 64)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2882, file: !2883, line: 15, baseType: !199, size: 64, offset: 128)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2882, file: !2883, line: 16, baseType: !578, size: 8, offset: 192)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2229, file: !1868, line: 1134, baseType: !304, size: 64, offset: 16640)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2229, file: !1868, line: 1135, baseType: !304, size: 64, offset: 16704)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2229, file: !1868, line: 1138, baseType: !83, size: 32, offset: 16768)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2229, file: !1868, line: 1141, baseType: !456, size: 32, offset: 16800)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2229, file: !1868, line: 1143, baseType: !2894, size: 64, offset: 16832)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1868, line: 735, size: 64, elements: !2895)
!2895 = !{!2896}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2894, file: !1868, line: 736, baseType: !2897, size: 64)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2229, file: !1868, line: 1147, baseType: !2403, size: 128, offset: 16896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2229, file: !1868, line: 1149, baseType: !2228, size: 64, offset: 17024)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2229, file: !1868, line: 1151, baseType: !2901, size: 64, offset: 17088)
!2901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2902, size: 64)
!2902 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2903, line: 64, flags: DIFlagFwdDecl)
!2903 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2229, file: !1868, line: 1188, baseType: !221, size: 64, offset: 17152)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2229, file: !1868, line: 1191, baseType: !2906, size: 64, offset: 17216)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1868, line: 44, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2229, file: !1868, line: 1194, baseType: !2909, size: 64, offset: 17280)
!2909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2910, size: 64)
!2910 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1868, line: 45, flags: DIFlagFwdDecl)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2229, file: !1868, line: 1197, baseType: !2912, size: 64, offset: 17344)
!2912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2913, size: 64)
!2913 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1868, line: 61, flags: DIFlagFwdDecl)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2229, file: !1868, line: 1199, baseType: !2915, size: 64, offset: 17408)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2916, size: 64)
!2916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2917, line: 99, size: 128, elements: !2918)
!2917 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2918 = !{!2919, !2920, !2921}
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2916, file: !2917, line: 100, baseType: !502, size: 64)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2916, file: !2917, line: 101, baseType: !48, size: 32, offset: 64)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2916, file: !2917, line: 103, baseType: !119, size: 16, offset: 96)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2229, file: !1868, line: 1202, baseType: !2923, size: 64, offset: 17472)
!2923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2924, size: 64)
!2924 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1868, line: 48, flags: DIFlagFwdDecl)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2229, file: !1868, line: 1205, baseType: !199, size: 64, offset: 17536)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2229, file: !1868, line: 1206, baseType: !2927, size: 64, offset: 17600)
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2928 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1253, line: 14, baseType: !2929)
!2929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1253, line: 12, size: 384, elements: !2930)
!2930 = !{!2931}
!2931 = !DIDerivedType(tag: DW_TAG_member, scope: !2929, file: !1253, line: 13, baseType: !2932, size: 384)
!2932 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2929, file: !1253, line: 13, size: 384, elements: !2933)
!2933 = !{!2934, !2935, !2936, !2937}
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2932, file: !1253, line: 13, baseType: !6, size: 32)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2932, file: !1253, line: 13, baseType: !6, size: 32, offset: 32)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2932, file: !1253, line: 13, baseType: !6, size: 32, offset: 64)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2932, file: !1253, line: 13, baseType: !2938, size: 256, offset: 128)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2939, line: 37, size: 256, elements: !2940)
!2939 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2940 = !{!2941, !2946, !2959, !2965, !2974, !3001, !3006}
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2938, file: !2939, line: 42, baseType: !2942, size: 64)
!2942 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 39, size: 64, elements: !2943)
!2943 = !{!2944, !2945}
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2942, file: !2939, line: 40, baseType: !2607, size: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2942, file: !2939, line: 41, baseType: !243, size: 32, offset: 32)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2938, file: !2939, line: 50, baseType: !2947, size: 192)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 45, size: 192, elements: !2948)
!2948 = !{!2949, !2951, !2952, !2958}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2947, file: !2939, line: 46, baseType: !2950, size: 32)
!2950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !183, line: 95, baseType: !6)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2947, file: !2939, line: 47, baseType: !6, size: 32, offset: 32)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2947, file: !2939, line: 48, baseType: !2953, size: 64, offset: 64)
!2953 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2939, line: 11, baseType: !2954)
!2954 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2939, line: 8, size: 64, elements: !2955)
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2954, file: !2939, line: 9, baseType: !6, size: 32)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2954, file: !2939, line: 10, baseType: !221, size: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2947, file: !2939, line: 49, baseType: !6, size: 32, offset: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2938, file: !2939, line: 57, baseType: !2960, size: 128)
!2960 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 53, size: 128, elements: !2961)
!2961 = !{!2962, !2963, !2964}
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2960, file: !2939, line: 54, baseType: !2607, size: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2960, file: !2939, line: 55, baseType: !243, size: 32, offset: 32)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2960, file: !2939, line: 56, baseType: !2953, size: 64, offset: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2938, file: !2939, line: 66, baseType: !2966, size: 256)
!2966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 60, size: 256, elements: !2967)
!2967 = !{!2968, !2969, !2970, !2971, !2973}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2966, file: !2939, line: 61, baseType: !2607, size: 32)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2966, file: !2939, line: 62, baseType: !243, size: 32, offset: 32)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2966, file: !2939, line: 63, baseType: !6, size: 32, offset: 64)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2966, file: !2939, line: 64, baseType: !2972, size: 64, offset: 128)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !183, line: 94, baseType: !184)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2966, file: !2939, line: 65, baseType: !2972, size: 64, offset: 192)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2938, file: !2939, line: 105, baseType: !2975, size: 256)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 69, size: 256, elements: !2976)
!2976 = !{!2977, !2978}
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2975, file: !2939, line: 70, baseType: !221, size: 64)
!2978 = !DIDerivedType(tag: DW_TAG_member, scope: !2975, file: !2939, line: 79, baseType: !2979, size: 192, offset: 64)
!2979 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2975, file: !2939, line: 79, size: 192, elements: !2980)
!2980 = !{!2981, !2982, !2983, !2990, !2995}
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2979, file: !2939, line: 81, baseType: !6, size: 32)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2979, file: !2939, line: 86, baseType: !636, size: 16)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2979, file: !2939, line: 92, baseType: !2984, size: 192)
!2984 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2939, line: 88, size: 192, elements: !2985)
!2985 = !{!2986, !2988, !2989}
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2984, file: !2939, line: 89, baseType: !2987, size: 64)
!2987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 64, elements: !2387)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2984, file: !2939, line: 90, baseType: !221, size: 64, offset: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2984, file: !2939, line: 91, baseType: !221, size: 64, offset: 128)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2979, file: !2939, line: 97, baseType: !2991, size: 96)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2939, line: 94, size: 96, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2991, file: !2939, line: 95, baseType: !2987, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2991, file: !2939, line: 96, baseType: !301, size: 32, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2979, file: !2939, line: 103, baseType: !2996, size: 128)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2979, file: !2939, line: 99, size: 128, elements: !2997)
!2997 = !{!2998, !2999, !3000}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2996, file: !2939, line: 100, baseType: !199, size: 64)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2996, file: !2939, line: 101, baseType: !301, size: 32, offset: 64)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2996, file: !2939, line: 102, baseType: !301, size: 32, offset: 96)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2938, file: !2939, line: 111, baseType: !3002, size: 128)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 108, size: 128, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3002, file: !2939, line: 109, baseType: !185, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3002, file: !2939, line: 110, baseType: !6, size: 32, offset: 64)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2938, file: !2939, line: 118, baseType: !3007, size: 128)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2939, line: 114, size: 128, elements: !3008)
!3008 = !{!3009, !3010, !3011}
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3007, file: !2939, line: 115, baseType: !221, size: 64)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3007, file: !2939, line: 116, baseType: !6, size: 32, offset: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3007, file: !2939, line: 117, baseType: !53, size: 32, offset: 96)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2229, file: !1868, line: 1208, baseType: !2791, size: 448, offset: 17664)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2229, file: !1868, line: 1215, baseType: !304, size: 64, offset: 18112)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2229, file: !1868, line: 1217, baseType: !304, size: 64, offset: 18176)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2229, file: !1868, line: 1219, baseType: !304, size: 64, offset: 18240)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2229, file: !1868, line: 1223, baseType: !3017, size: 64, offset: 18304)
!3017 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3018, line: 99, baseType: !3019)
!3018 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3019 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3018, line: 99, size: 64, elements: !3020)
!3020 = !{!3021}
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3019, file: !3018, line: 99, baseType: !2471, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2229, file: !1868, line: 1225, baseType: !272, size: 32, offset: 18368)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2229, file: !1868, line: 1226, baseType: !6, size: 32, offset: 18400)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2229, file: !1868, line: 1227, baseType: !6, size: 32, offset: 18432)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2229, file: !1868, line: 1231, baseType: !3026, size: 64, offset: 18496)
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1868, line: 1231, flags: DIFlagFwdDecl)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2229, file: !1868, line: 1233, baseType: !12, size: 128, offset: 18560)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2229, file: !1868, line: 1240, baseType: !3030, size: 64, offset: 18688)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1868, line: 62, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2229, file: !1868, line: 1242, baseType: !3033, size: 64, offset: 18752)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1868, line: 1242, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2229, file: !1868, line: 1244, baseType: !12, size: 128, offset: 18816)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2229, file: !1868, line: 1245, baseType: !3037, size: 64, offset: 18944)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3038, size: 64)
!3038 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1868, line: 51, flags: DIFlagFwdDecl)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2229, file: !1868, line: 1246, baseType: !498, size: 256, offset: 19008)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2229, file: !1868, line: 1247, baseType: !53, size: 32, offset: 19264)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2229, file: !1868, line: 1250, baseType: !3042, size: 64, offset: 19328)
!3042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3043, size: 64)
!3043 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1868, line: 57, flags: DIFlagFwdDecl)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2229, file: !1868, line: 1251, baseType: !498, size: 256, offset: 19392)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2229, file: !1868, line: 1252, baseType: !12, size: 128, offset: 19648)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2229, file: !1868, line: 1259, baseType: !1814, size: 64, offset: 19776)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2229, file: !1868, line: 1260, baseType: !636, size: 16, offset: 19840)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2229, file: !1868, line: 1261, baseType: !636, size: 16, offset: 19856)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2229, file: !1868, line: 1314, baseType: !3050, size: 64, offset: 19904)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3052, line: 62, size: 256, align: 256, elements: !3053)
!3052 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3053 = !{!3054, !3055, !3056, !3057, !3058, !3059, !3060}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3051, file: !3052, line: 75, baseType: !301, size: 32)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3051, file: !3052, line: 90, baseType: !301, size: 32, offset: 32)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3051, file: !3052, line: 112, baseType: !305, size: 64, offset: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3051, file: !3052, line: 132, baseType: !301, size: 32, offset: 128)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3051, file: !3052, line: 140, baseType: !301, size: 32, offset: 160)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3051, file: !3052, line: 149, baseType: !301, size: 32, offset: 192)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3051, file: !3052, line: 154, baseType: !3061, offset: 224)
!3061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, elements: !1053)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2229, file: !1868, line: 1315, baseType: !300, size: 32, offset: 19968)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2229, file: !1868, line: 1316, baseType: !300, size: 32, offset: 20000)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2229, file: !1868, line: 1321, baseType: !199, size: 64, offset: 20032)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2229, file: !1868, line: 1325, baseType: !6, size: 32, offset: 20096)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2229, file: !1868, line: 1326, baseType: !6, size: 32, offset: 20128)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2229, file: !1868, line: 1327, baseType: !6, size: 32, offset: 20160)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2229, file: !1868, line: 1328, baseType: !6, size: 32, offset: 20192)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2229, file: !1868, line: 1329, baseType: !718, size: 128, align: 64, offset: 20224)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2229, file: !1868, line: 1332, baseType: !3071, size: 128, offset: 20352)
!3071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3072, line: 51, size: 128, elements: !3073)
!3072 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3073 = !{!3074, !3079, !3080}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3071, file: !3072, line: 60, baseType: !3075, size: 64)
!3075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3076, line: 7, size: 64, elements: !3077)
!3076 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3077 = !{!3078}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3075, file: !3076, line: 12, baseType: !2468, size: 64)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3071, file: !3072, line: 63, baseType: !578, size: 8, offset: 64)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3071, file: !3072, line: 70, baseType: !578, size: 8, offset: 72)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2229, file: !1868, line: 1335, baseType: !1866, size: 64, offset: 20480)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2229, file: !1868, line: 1337, baseType: !3083, size: 128, offset: 20544)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3072, line: 39, size: 128, elements: !3084)
!3084 = !{!3085, !3086, !3087}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3083, file: !3072, line: 40, baseType: !1645, size: 64)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3083, file: !3072, line: 42, baseType: !301, size: 32, offset: 64)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3083, file: !3072, line: 43, baseType: !301, size: 32, offset: 96)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2229, file: !1868, line: 1340, baseType: !3089, size: 64, offset: 20672)
!3089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3090, size: 64)
!3090 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1868, line: 69, flags: DIFlagFwdDecl)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2229, file: !1868, line: 1351, baseType: !6, size: 32, offset: 20736)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2229, file: !1868, line: 1352, baseType: !6, size: 32, offset: 20768)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2229, file: !1868, line: 1354, baseType: !199, size: 64, offset: 20800)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2229, file: !1868, line: 1364, baseType: !304, size: 64, offset: 20864)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2229, file: !1868, line: 1365, baseType: !304, size: 64, offset: 20928)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2229, file: !1868, line: 1412, baseType: !199, size: 64, offset: 20992)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2229, file: !1868, line: 1453, baseType: !3098, size: 64, offset: 21056)
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1868, line: 1453, flags: DIFlagFwdDecl)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2229, file: !1868, line: 1457, baseType: !3101, size: 64, offset: 21120)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !1526, line: 61, size: 576, elements: !3103)
!3103 = !{!3104, !3111, !3130, !3133, !3134, !3167, !3177}
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3102, file: !1526, line: 62, baseType: !3105, size: 32)
!3105 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !1526, line: 51, baseType: !53, size: 32, elements: !3106)
!3106 = !{!3107, !3108, !3109, !3110}
!3107 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!3108 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!3109 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!3110 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!3111 = !DIDerivedType(tag: DW_TAG_member, scope: !3102, file: !1526, line: 64, baseType: !3112, size: 192, offset: 64)
!3112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3102, file: !1526, line: 64, size: 192, elements: !3113)
!3113 = !{!3114, !3125}
!3114 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !1526, line: 65, baseType: !3115, size: 192)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !1526, line: 65, size: 192, elements: !3116)
!3116 = !{!3117, !3124}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3115, file: !1526, line: 66, baseType: !3118, size: 128)
!3118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3119, line: 50, size: 128, elements: !3120)
!3119 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3120 = !{!3121, !3122, !3123}
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3118, file: !3119, line: 52, baseType: !199, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3118, file: !3119, line: 54, baseType: !53, size: 32, offset: 64)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3118, file: !3119, line: 55, baseType: !53, size: 32, offset: 96)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3115, file: !1526, line: 67, baseType: !199, size: 64, offset: 128)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3112, file: !1526, line: 70, baseType: !3126, size: 192)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3112, file: !1526, line: 70, size: 192, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3126, file: !1526, line: 71, baseType: !718, size: 128, align: 64)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3126, file: !1526, line: 72, baseType: !199, size: 64, offset: 128)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3102, file: !1526, line: 76, baseType: !3131, size: 64, offset: 256)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !1526, line: 76, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3102, file: !1526, line: 77, baseType: !199, size: 64, offset: 320)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3102, file: !1526, line: 79, baseType: !3135, size: 64, offset: 384)
!3135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3136, size: 64)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3119, line: 25, size: 256, elements: !3137)
!3137 = !{!3138, !3144, !3148}
!3138 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !3119, line: 26, baseType: !3139, size: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !3119, line: 26, size: 128, elements: !3140)
!3140 = !{!3141, !3143}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3139, file: !3119, line: 27, baseType: !3142, size: 128)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !2665)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3139, file: !3119, line: 28, baseType: !3142, size: 128)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3136, file: !3119, line: 31, baseType: !3145, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3147)
!3147 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3119, line: 23, flags: DIFlagFwdDecl)
!3148 = !DIDerivedType(tag: DW_TAG_member, scope: !3136, file: !3119, line: 33, baseType: !3149, size: 64, offset: 192)
!3149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3136, file: !3119, line: 33, size: 64, elements: !3150)
!3150 = !{!3151, !3157, !3162}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3149, file: !3119, line: 38, baseType: !3152, size: 64)
!3152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3119, line: 34, size: 64, elements: !3153)
!3153 = !{!3154, !3155, !3156}
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3152, file: !3119, line: 35, baseType: !494, size: 32)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3152, file: !3119, line: 36, baseType: !107, size: 8, offset: 32)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3152, file: !3119, line: 37, baseType: !107, size: 8, offset: 40)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3149, file: !3119, line: 42, baseType: !3158, size: 16)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3119, line: 39, size: 16, elements: !3159)
!3159 = !{!3160, !3161}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3158, file: !3119, line: 40, baseType: !107, size: 8)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3158, file: !3119, line: 41, baseType: !107, size: 8, offset: 8)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3149, file: !3119, line: 46, baseType: !3163, size: 16)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3149, file: !3119, line: 43, size: 16, elements: !3164)
!3164 = !{!3165, !3166}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3163, file: !3119, line: 44, baseType: !107, size: 8)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3163, file: !3119, line: 45, baseType: !107, size: 8, offset: 8)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3102, file: !1526, line: 81, baseType: !3168, size: 64, offset: 448)
!3168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3169, size: 64)
!3169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !1526, line: 85, size: 384, elements: !3170)
!3170 = !{!3171, !3172, !3173, !3174, !3175, !3176}
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3169, file: !1526, line: 86, baseType: !3131, size: 64)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3169, file: !1526, line: 87, baseType: !199, size: 64, offset: 64)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3169, file: !1526, line: 88, baseType: !199, size: 64, offset: 128)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3169, file: !1526, line: 89, baseType: !199, size: 64, offset: 192)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3169, file: !1526, line: 90, baseType: !578, size: 8, offset: 256)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3169, file: !1526, line: 92, baseType: !3168, size: 64, offset: 320)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3102, file: !1526, line: 82, baseType: !53, size: 32, offset: 512)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2229, file: !1868, line: 1463, baseType: !3179, offset: 21184)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1868, line: 739, elements: !787)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2229, file: !1868, line: 1470, baseType: !718, size: 128, align: 64, offset: 21184)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2229, file: !1868, line: 1471, baseType: !43, size: 32, offset: 21312)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2229, file: !1868, line: 1472, baseType: !6, size: 32, offset: 21344)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2229, file: !1868, line: 1474, baseType: !2228, size: 64, offset: 21376)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2229, file: !1868, line: 1475, baseType: !740, size: 320, offset: 21440)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2229, file: !1868, line: 1478, baseType: !3186, size: 64, offset: 21760)
!3186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3187, size: 64)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !3188, line: 49, size: 512, elements: !3189)
!3188 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!3189 = !{!3190, !3191, !3192, !3193, !3194, !3196, !3197, !3198, !3200}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3187, file: !3188, line: 50, baseType: !3186, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3187, file: !3188, line: 51, baseType: !221, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3187, file: !3188, line: 52, baseType: !199, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3187, file: !3188, line: 53, baseType: !199, size: 64, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !3187, file: !3188, line: 54, baseType: !3195, size: 64, offset: 256)
!3195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !3187, file: !3188, line: 56, baseType: !53, size: 32, offset: 320)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !3187, file: !3188, line: 58, baseType: !53, size: 32, offset: 352)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !3187, file: !3188, line: 59, baseType: !3199, size: 64, offset: 384)
!3199 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !13, line: 159, baseType: !304)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !3187, file: !3188, line: 60, baseType: !1495, size: 64, offset: 448)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2229, file: !1868, line: 1482, baseType: !43, size: 32, offset: 21824)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2229, file: !1868, line: 1489, baseType: !221, size: 64, offset: 21888)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2229, file: !1868, line: 1504, baseType: !221, size: 64, offset: 21952)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2229, file: !1868, line: 1505, baseType: !305, size: 64, offset: 22016)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2229, file: !1868, line: 1506, baseType: !304, size: 64, offset: 22080)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2229, file: !1868, line: 1507, baseType: !305, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2229, file: !1868, line: 1508, baseType: !305, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2229, file: !1868, line: 1509, baseType: !305, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2229, file: !1868, line: 1510, baseType: !718, size: 128, align: 64, offset: 22208)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2229, file: !1868, line: 1511, baseType: !6, size: 32, offset: 22336)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2229, file: !1868, line: 1515, baseType: !3212, size: 64, offset: 22400)
!3212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !989, line: 56, size: 64, elements: !3213)
!3213 = !{!3214}
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3212, file: !989, line: 57, baseType: !992, size: 64)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2229, file: !1868, line: 1518, baseType: !3212, size: 64, offset: 22464)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2229, file: !1868, line: 1528, baseType: !718, size: 128, align: 64, offset: 22528)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2229, file: !1868, line: 1552, baseType: !3218, size: 35328, offset: 23040)
!3218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3219, line: 430, size: 35328, elements: !3220)
!3219 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3220 = !{!3221, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246, !3250, !3251, !3252, !3253, !3254, !3255, !3258, !3259, !3260, !3261}
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3218, file: !3219, line: 432, baseType: !3222, size: 192)
!3222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3223, size: 192, elements: !150)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3224, line: 16, size: 64, elements: !3225)
!3224 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3225 = !{!3226, !3227, !3228, !3229, !3230, !3231, !3232, !3233, !3234, !3235, !3236, !3237, !3238}
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3223, file: !3224, line: 17, baseType: !117, size: 16)
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3223, file: !3224, line: 18, baseType: !117, size: 16, offset: 16)
!3228 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3223, file: !3224, line: 19, baseType: !117, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3223, file: !3224, line: 19, baseType: !117, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3223, file: !3224, line: 19, baseType: !117, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3223, file: !3224, line: 19, baseType: !117, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3223, file: !3224, line: 19, baseType: !117, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3223, file: !3224, line: 20, baseType: !117, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3223, file: !3224, line: 20, baseType: !117, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3223, file: !3224, line: 20, baseType: !117, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3223, file: !3224, line: 20, baseType: !117, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3223, file: !3224, line: 20, baseType: !117, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3223, file: !3224, line: 20, baseType: !117, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3218, file: !3219, line: 436, baseType: !199, size: 64, offset: 192)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3218, file: !3219, line: 440, baseType: !119, size: 16, offset: 256)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3218, file: !3219, line: 441, baseType: !119, size: 16, offset: 272)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3218, file: !3219, line: 442, baseType: !119, size: 16, offset: 288)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3218, file: !3219, line: 443, baseType: !119, size: 16, offset: 304)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3218, file: !3219, line: 447, baseType: !199, size: 64, offset: 320)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3218, file: !3219, line: 448, baseType: !199, size: 64, offset: 384)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3218, file: !3219, line: 459, baseType: !3247, size: 256, offset: 448)
!3247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3248, size: 256, elements: !728)
!3248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3249, size: 64)
!3249 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3219, line: 428, flags: DIFlagFwdDecl)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3218, file: !3219, line: 461, baseType: !199, size: 64, offset: 704)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3218, file: !3219, line: 463, baseType: !199, size: 64, offset: 768)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3218, file: !3219, line: 465, baseType: !199, size: 64, offset: 832)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3218, file: !3219, line: 466, baseType: !199, size: 64, offset: 896)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3218, file: !3219, line: 467, baseType: !199, size: 64, offset: 960)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3218, file: !3219, line: 473, baseType: !3256, size: 64, offset: 1024)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3219, line: 10, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3218, file: !3219, line: 480, baseType: !199, size: 64, offset: 1088)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3218, file: !3219, line: 482, baseType: !53, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3218, file: !3219, line: 491, baseType: !300, size: 32, offset: 1184)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3218, file: !3219, line: 501, baseType: !3262, size: 33792, offset: 1536)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3263, line: 448, size: 33792, elements: !3264)
!3263 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3264 = !{!3265, !3266, !3267, !3429, !3430, !3436, !3437}
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3262, file: !3263, line: 461, baseType: !53, size: 32)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3262, file: !3263, line: 468, baseType: !199, size: 64, offset: 64)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3262, file: !3263, line: 476, baseType: !3268, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3269, size: 64)
!3269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3263, line: 356, size: 33280, align: 512, elements: !3270)
!3270 = !{!3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280}
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3269, file: !3263, line: 358, baseType: !53, size: 32)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3269, file: !3263, line: 361, baseType: !53, size: 32, offset: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3269, file: !3263, line: 364, baseType: !304, size: 64, offset: 64)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3269, file: !3263, line: 367, baseType: !304, size: 64, offset: 128)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3269, file: !3263, line: 370, baseType: !304, size: 64, offset: 192)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3269, file: !3263, line: 373, baseType: !53, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3269, file: !3263, line: 376, baseType: !53, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3269, file: !3263, line: 391, baseType: !53, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3269, file: !3263, line: 394, baseType: !53, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3269, file: !3263, line: 397, baseType: !3281, size: 32768, offset: 512)
!3281 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3263, line: 348, size: 32768, elements: !3282)
!3282 = !{!3283, !3298, !3335, !3412, !3425}
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3281, file: !3263, line: 349, baseType: !3284, size: 896)
!3284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3263, line: 12, size: 896, elements: !3285)
!3285 = !{!3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3297}
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3284, file: !3263, line: 13, baseType: !300, size: 32)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3284, file: !3263, line: 14, baseType: !300, size: 32, offset: 32)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3284, file: !3263, line: 15, baseType: !300, size: 32, offset: 64)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3284, file: !3263, line: 16, baseType: !300, size: 32, offset: 96)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3284, file: !3263, line: 17, baseType: !300, size: 32, offset: 128)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3284, file: !3263, line: 18, baseType: !300, size: 32, offset: 160)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3284, file: !3263, line: 19, baseType: !300, size: 32, offset: 192)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3284, file: !3263, line: 22, baseType: !3294, size: 640, offset: 224)
!3294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 640, elements: !3295)
!3295 = !{!3296}
!3296 = !DISubrange(count: 20)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3284, file: !3263, line: 25, baseType: !300, size: 32, offset: 864)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3281, file: !3263, line: 350, baseType: !3299, size: 4096, align: 128)
!3299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3263, line: 34, size: 4096, align: 128, elements: !3300)
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3320, !3321, !3322, !3324, !3326, !3330}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3299, file: !3263, line: 35, baseType: !117, size: 16)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3299, file: !3263, line: 36, baseType: !117, size: 16, offset: 16)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3299, file: !3263, line: 37, baseType: !117, size: 16, offset: 32)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3299, file: !3263, line: 38, baseType: !117, size: 16, offset: 48)
!3305 = !DIDerivedType(tag: DW_TAG_member, scope: !3299, file: !3263, line: 39, baseType: !3306, size: 128, offset: 64)
!3306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3299, file: !3263, line: 39, size: 128, elements: !3307)
!3307 = !{!3308, !3313}
!3308 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !3263, line: 40, baseType: !3309, size: 128)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3263, line: 40, size: 128, elements: !3310)
!3310 = !{!3311, !3312}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3309, file: !3263, line: 41, baseType: !304, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3309, file: !3263, line: 42, baseType: !304, size: 64, offset: 64)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3306, file: !3263, line: 44, baseType: !3314, size: 128)
!3314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3306, file: !3263, line: 44, size: 128, elements: !3315)
!3315 = !{!3316, !3317, !3318, !3319}
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3314, file: !3263, line: 45, baseType: !300, size: 32)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3314, file: !3263, line: 46, baseType: !300, size: 32, offset: 32)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3314, file: !3263, line: 47, baseType: !300, size: 32, offset: 64)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3314, file: !3263, line: 48, baseType: !300, size: 32, offset: 96)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3299, file: !3263, line: 51, baseType: !300, size: 32, offset: 192)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3299, file: !3263, line: 52, baseType: !300, size: 32, offset: 224)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3299, file: !3263, line: 55, baseType: !3323, size: 1024, offset: 256)
!3323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 1024, elements: !313)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3299, file: !3263, line: 58, baseType: !3325, size: 2048, offset: 1280)
!3325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2048, elements: !154)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3299, file: !3263, line: 60, baseType: !3327, size: 384, offset: 3328)
!3327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 384, elements: !3328)
!3328 = !{!3329}
!3329 = !DISubrange(count: 12)
!3330 = !DIDerivedType(tag: DW_TAG_member, scope: !3299, file: !3263, line: 62, baseType: !3331, size: 384, offset: 3712)
!3331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3299, file: !3263, line: 62, size: 384, elements: !3332)
!3332 = !{!3333, !3334}
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3331, file: !3263, line: 63, baseType: !3327, size: 384)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3331, file: !3263, line: 64, baseType: !3327, size: 384)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3281, file: !3263, line: 351, baseType: !3336, size: 1088)
!3336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3263, line: 79, size: 1088, elements: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3411}
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3336, file: !3263, line: 80, baseType: !300, size: 32)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3336, file: !3263, line: 81, baseType: !300, size: 32, offset: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3336, file: !3263, line: 82, baseType: !300, size: 32, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3336, file: !3263, line: 83, baseType: !300, size: 32, offset: 96)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3336, file: !3263, line: 84, baseType: !300, size: 32, offset: 128)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3336, file: !3263, line: 85, baseType: !300, size: 32, offset: 160)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3336, file: !3263, line: 86, baseType: !300, size: 32, offset: 192)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3336, file: !3263, line: 88, baseType: !3294, size: 640, offset: 224)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3336, file: !3263, line: 89, baseType: !107, size: 8, offset: 864)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3336, file: !3263, line: 90, baseType: !107, size: 8, offset: 872)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3336, file: !3263, line: 91, baseType: !107, size: 8, offset: 880)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3336, file: !3263, line: 92, baseType: !107, size: 8, offset: 888)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3336, file: !3263, line: 93, baseType: !107, size: 8, offset: 896)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3336, file: !3263, line: 94, baseType: !107, size: 8, offset: 904)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3336, file: !3263, line: 95, baseType: !3353, size: 64, offset: 960)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3354, size: 64)
!3354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3355, line: 11, size: 128, elements: !3356)
!3355 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3356 = !{!3357, !3358}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3354, file: !3355, line: 12, baseType: !185, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3354, file: !3355, line: 13, baseType: !3359, size: 64, offset: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3361, line: 103, size: 1344, elements: !3362)
!3361 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3362 = !{!3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3391, !3392, !3393}
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3360, file: !3361, line: 109, baseType: !199, size: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3360, file: !3361, line: 110, baseType: !199, size: 64, offset: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3360, file: !3361, line: 111, baseType: !199, size: 64, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3360, file: !3361, line: 112, baseType: !199, size: 64, offset: 192)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3360, file: !3361, line: 113, baseType: !199, size: 64, offset: 256)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3360, file: !3361, line: 114, baseType: !199, size: 64, offset: 320)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3360, file: !3361, line: 117, baseType: !199, size: 64, offset: 384)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3360, file: !3361, line: 118, baseType: !199, size: 64, offset: 448)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3360, file: !3361, line: 119, baseType: !199, size: 64, offset: 512)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3360, file: !3361, line: 120, baseType: !199, size: 64, offset: 576)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3360, file: !3361, line: 121, baseType: !199, size: 64, offset: 640)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3360, file: !3361, line: 122, baseType: !199, size: 64, offset: 704)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3360, file: !3361, line: 123, baseType: !199, size: 64, offset: 768)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3360, file: !3361, line: 124, baseType: !199, size: 64, offset: 832)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3360, file: !3361, line: 125, baseType: !199, size: 64, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3360, file: !3361, line: 139, baseType: !199, size: 64, offset: 960)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3360, file: !3361, line: 142, baseType: !199, size: 64, offset: 1024)
!3380 = !DIDerivedType(tag: DW_TAG_member, scope: !3360, file: !3361, line: 144, baseType: !3381, size: 64, offset: 1088)
!3381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3360, file: !3361, line: 144, size: 64, elements: !3382)
!3382 = !{!3383, !3384, !3385}
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3381, file: !3361, line: 146, baseType: !117, size: 16)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3381, file: !3361, line: 148, baseType: !304, size: 64)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3381, file: !3361, line: 150, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3361, line: 59, size: 64, elements: !3387)
!3387 = !{!3388, !3389, !3390}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3386, file: !3361, line: 61, baseType: !304, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3386, file: !3361, line: 63, baseType: !304, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3386, file: !3361, line: 65, baseType: !304, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3360, file: !3361, line: 153, baseType: !199, size: 64, offset: 1152)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3360, file: !3361, line: 154, baseType: !199, size: 64, offset: 1216)
!3393 = !DIDerivedType(tag: DW_TAG_member, scope: !3360, file: !3361, line: 156, baseType: !3394, size: 64, offset: 1280)
!3394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3360, file: !3361, line: 156, size: 64, elements: !3395)
!3395 = !{!3396, !3397, !3398}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3394, file: !3361, line: 158, baseType: !117, size: 16)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3394, file: !3361, line: 160, baseType: !304, size: 64)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3394, file: !3361, line: 162, baseType: !3399, size: 64)
!3399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3361, line: 69, size: 64, elements: !3400)
!3400 = !{!3401, !3402, !3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410}
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3399, file: !3361, line: 71, baseType: !304, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3399, file: !3361, line: 73, baseType: !304, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3399, file: !3361, line: 75, baseType: !304, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3399, file: !3361, line: 77, baseType: !304, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3399, file: !3361, line: 80, baseType: !304, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3399, file: !3361, line: 83, baseType: !304, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3399, file: !3361, line: 86, baseType: !304, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3399, file: !3361, line: 88, baseType: !304, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3399, file: !3361, line: 93, baseType: !304, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3399, file: !3361, line: 100, baseType: !304, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3336, file: !3263, line: 96, baseType: !300, size: 32, offset: 1024)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3281, file: !3263, line: 352, baseType: !3413, size: 4608, align: 512)
!3413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3263, line: 333, size: 4608, align: 512, elements: !3414)
!3414 = !{!3415, !3416, !3423}
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3413, file: !3263, line: 334, baseType: !3299, size: 4096, align: 128)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3413, file: !3263, line: 335, baseType: !3417, size: 512, offset: 4096)
!3417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3263, line: 312, size: 512, elements: !3418)
!3418 = !{!3419, !3420, !3421}
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3417, file: !3263, line: 313, baseType: !304, size: 64)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3417, file: !3263, line: 314, baseType: !304, size: 64, offset: 64)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3417, file: !3263, line: 315, baseType: !3422, size: 384, offset: 128)
!3422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 384, elements: !1153)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3413, file: !3263, line: 336, baseType: !3424, offset: 4608)
!3424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !1053)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3281, file: !3263, line: 353, baseType: !3426, size: 32768)
!3426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 32768, elements: !3427)
!3427 = !{!3428}
!3428 = !DISubrange(count: 4096)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3262, file: !3263, line: 484, baseType: !3268, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3262, file: !3263, line: 491, baseType: !3431, size: 128, offset: 256)
!3431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3263, line: 404, size: 128, elements: !3432)
!3432 = !{!3433, !3434, !3435}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3431, file: !3263, line: 424, baseType: !304, size: 64)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3431, file: !3263, line: 432, baseType: !53, size: 32, offset: 64)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3431, file: !3263, line: 440, baseType: !53, size: 32, offset: 96)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3262, file: !3263, line: 498, baseType: !3431, size: 128, offset: 384)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3262, file: !3263, line: 508, baseType: !3269, size: 33280, align: 512, offset: 512)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2211, file: !2212, line: 16, baseType: !1038, size: 192, offset: 512)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2211, file: !2212, line: 17, baseType: !48, size: 32, offset: 704)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !383, file: !228, line: 1240, baseType: !221, size: 64, offset: 6912)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !383, file: !228, line: 1243, baseType: !300, size: 32, offset: 6976)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !383, file: !228, line: 1245, baseType: !1124, size: 64, offset: 7040)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !383, file: !228, line: 1246, baseType: !1124, size: 64, offset: 7104)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !383, file: !228, line: 1248, baseType: !301, size: 32, offset: 7168)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !383, file: !228, line: 1249, baseType: !3446, size: 64, offset: 7232)
!3446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3447, size: 64)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !228, line: 634, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !383, file: !228, line: 1252, baseType: !3449, size: 256, offset: 7296)
!3449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 256, elements: !313)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !383, file: !228, line: 1253, baseType: !3451, size: 128, offset: 7552)
!3451 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3452, line: 21, baseType: !3453)
!3452 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3452, line: 19, size: 128, elements: !3454)
!3454 = !{!3455}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3453, file: !3452, line: 20, baseType: !3456, size: 128)
!3456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 128, elements: !2665)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !383, file: !228, line: 1255, baseType: !53, size: 32, offset: 7680)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !383, file: !228, line: 1261, baseType: !498, size: 256, offset: 7744)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !383, file: !228, line: 1267, baseType: !71, size: 64, offset: 8000)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !383, file: !228, line: 1269, baseType: !329, size: 64, offset: 8064)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !383, file: !228, line: 1271, baseType: !3462, size: 448, offset: 8128)
!3462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1991, line: 63, size: 448, elements: !3463)
!3463 = !{!3464, !3469, !3470, !3471, !3472, !3473, !3474}
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3462, file: !1991, line: 64, baseType: !3465, size: 64)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!199, !3468, !1989}
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3462, size: 64)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3462, file: !1991, line: 66, baseType: !3465, size: 64, offset: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3462, file: !1991, line: 69, baseType: !185, size: 64, offset: 128)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3462, file: !1991, line: 70, baseType: !6, size: 32, offset: 192)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3462, file: !1991, line: 71, baseType: !53, size: 32, offset: 224)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3462, file: !1991, line: 74, baseType: !12, size: 128, offset: 256)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3462, file: !1991, line: 85, baseType: !3475, size: 64, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !383, file: !228, line: 1274, baseType: !502, size: 64, offset: 8576)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !383, file: !228, line: 1280, baseType: !502, size: 64, offset: 8640)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !383, file: !228, line: 1283, baseType: !6, size: 32, offset: 8704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !383, file: !228, line: 1286, baseType: !1917, size: 32, offset: 8736)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !383, file: !228, line: 1289, baseType: !820, size: 64, offset: 8768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !383, file: !228, line: 1290, baseType: !868, size: 64, offset: 8832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !383, file: !228, line: 1297, baseType: !1247, size: 64, offset: 8896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !383, file: !228, line: 1304, baseType: !3484, size: 64, offset: 8960)
!3484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3485, line: 49, size: 64, elements: !3486)
!3485 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3486 = !{!3487}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3484, file: !3485, line: 50, baseType: !3488, size: 64)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3485, line: 41, size: 512, align: 512, elements: !3490)
!3490 = !{!3491, !3492, !3497}
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3489, file: !3485, line: 43, baseType: !83, size: 32)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3489, file: !3485, line: 45, baseType: !3493, size: 192, offset: 64)
!3493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3485, line: 29, size: 192, elements: !3494)
!3494 = !{!3495, !3496}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3493, file: !3485, line: 30, baseType: !12, size: 128)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3493, file: !3485, line: 32, baseType: !185, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3489, file: !3485, line: 46, baseType: !185, size: 64, offset: 256)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !383, file: !228, line: 1305, baseType: !3484, size: 64, offset: 9024)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !383, file: !228, line: 1306, baseType: !718, size: 128, align: 64, offset: 9088)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !383, file: !228, line: 1307, baseType: !758, size: 256, offset: 9216)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !383, file: !228, line: 1309, baseType: !498, size: 256, offset: 9472)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !383, file: !228, line: 1314, baseType: !6, size: 32, offset: 9728)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !383, file: !228, line: 1317, baseType: !83, size: 32, align: 512, offset: 10240)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !383, file: !228, line: 1318, baseType: !12, size: 128, offset: 10304)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !383, file: !228, line: 1320, baseType: !83, size: 32, offset: 10432)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !383, file: !228, line: 1321, baseType: !12, size: 128, offset: 10496)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !377, file: !378, line: 73, baseType: !6, size: 32, offset: 128)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !377, file: !378, line: 74, baseType: !3509, size: 64, offset: 192)
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1084, line: 42, flags: DIFlagFwdDecl)
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !331, file: !268, line: 141, baseType: !3513, size: 64, offset: 704)
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3514, size: 64)
!3514 = !DISubroutineType(types: !3515)
!3515 = !{!6, !2051, !578}
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !331, file: !268, line: 142, baseType: !3517, size: 64, offset: 768)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DISubroutineType(types: !3519)
!3519 = !{!266, !266, !3520}
!3520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3521, size: 64)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !267, file: !268, line: 96, baseType: !382, size: 64, offset: 832)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !267, file: !268, line: 97, baseType: !199, size: 64, offset: 896)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !267, file: !268, line: 98, baseType: !221, size: 64, offset: 960)
!3525 = !DIDerivedType(tag: DW_TAG_member, scope: !267, file: !268, line: 100, baseType: !3526, size: 128, offset: 1024)
!3526 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !268, line: 100, size: 128, elements: !3527)
!3527 = !{!3528, !3529}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3526, file: !268, line: 101, baseType: !12, size: 128)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3526, file: !268, line: 102, baseType: !3530, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !267, file: !268, line: 104, baseType: !12, size: 128, offset: 1152)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !267, file: !268, line: 105, baseType: !12, size: 128, offset: 1280)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !267, file: !268, line: 113, baseType: !3534, size: 128, offset: 1408)
!3534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !267, file: !268, line: 109, size: 128, elements: !3535)
!3535 = !{!3536, !3537, !3538}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3534, file: !268, line: 110, baseType: !744, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3534, file: !268, line: 111, baseType: !282, size: 128)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3534, file: !268, line: 112, baseType: !718, size: 128, align: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !260, file: !228, line: 1968, baseType: !3540, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!71, !266, !231, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3545, line: 10, size: 128, elements: !3546)
!3545 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3546 = !{!3547, !3548}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3544, file: !3545, line: 11, baseType: !541, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3544, file: !3545, line: 12, baseType: !221, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !260, file: !228, line: 1969, baseType: !3550, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!6, !3509, !231, !6}
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !260, file: !228, line: 1970, baseType: !3554, size: 64, offset: 192)
!3554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3555, size: 64)
!3555 = !DISubroutineType(types: !3556)
!3556 = !{!254, !231, !6, !578}
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !260, file: !228, line: 1972, baseType: !3558, size: 64, offset: 256)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!6, !266, !149, !6}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !260, file: !228, line: 1974, baseType: !3562, size: 64, offset: 320)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!6, !3509, !231, !266, !191, !578}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !260, file: !228, line: 1976, baseType: !3566, size: 64, offset: 384)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!6, !266, !231, !266}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !260, file: !228, line: 1977, baseType: !3570, size: 64, offset: 448)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!6, !231, !266}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !260, file: !228, line: 1978, baseType: !3574, size: 64, offset: 512)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!6, !3509, !231, !266, !71}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !260, file: !228, line: 1980, baseType: !3578, size: 64, offset: 576)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!6, !3509, !231, !266, !191}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !260, file: !228, line: 1982, baseType: !3570, size: 64, offset: 640)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !260, file: !228, line: 1983, baseType: !3583, size: 64, offset: 704)
!3583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3584, size: 64)
!3584 = !DISubroutineType(types: !3585)
!3585 = !{!6, !3509, !231, !266, !191, !387}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !260, file: !228, line: 1985, baseType: !3587, size: 64, offset: 768)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!6, !3509, !231, !266, !231, !266, !53}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !260, file: !228, line: 1987, baseType: !3591, size: 64, offset: 832)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!6, !3509, !266, !3594}
!3594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3595, size: 64)
!3595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !228, line: 226, size: 640, elements: !3596)
!3596 = !{!3597, !3598, !3599, !3609, !3618, !3619, !3624, !3625, !3626}
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3595, file: !228, line: 227, baseType: !53, size: 32)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3595, file: !228, line: 228, baseType: !191, size: 16, offset: 32)
!3599 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !228, line: 241, baseType: !3600, size: 32, offset: 64)
!3600 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !228, line: 241, size: 32, elements: !3601)
!3601 = !{!3602, !3603}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3600, file: !228, line: 242, baseType: !237, size: 32)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3600, file: !228, line: 243, baseType: !3604, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3605, line: 16, baseType: !3606)
!3605 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3606 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3605, line: 14, size: 32, elements: !3607)
!3607 = !{!3608}
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3606, file: !3605, line: 15, baseType: !242, size: 32)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !3595, file: !228, line: 245, baseType: !3610, size: 32, offset: 96)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3595, file: !228, line: 245, size: 32, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3610, file: !228, line: 246, baseType: !246, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3610, file: !228, line: 247, baseType: !3614, size: 32)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3605, line: 20, baseType: !3615)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3605, line: 18, size: 32, elements: !3616)
!3616 = !{!3617}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3615, file: !3605, line: 19, baseType: !250, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3595, file: !228, line: 249, baseType: !392, size: 64, offset: 128)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3595, file: !228, line: 250, baseType: !3620, size: 128, offset: 192)
!3620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1125, line: 13, size: 128, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3620, file: !1125, line: 14, baseType: !1124, size: 64)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3620, file: !1125, line: 15, baseType: !185, size: 64, offset: 64)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3595, file: !228, line: 251, baseType: !3620, size: 128, offset: 320)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3595, file: !228, line: 252, baseType: !3620, size: 128, offset: 448)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3595, file: !228, line: 259, baseType: !1293, size: 64, offset: 576)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !260, file: !228, line: 1988, baseType: !3628, size: 64, offset: 896)
!3628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3629, size: 64)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{!6, !3509, !2051, !3631, !300, !53}
!3631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3632, size: 64)
!3632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3633, line: 22, size: 1280, elements: !3634)
!3633 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3634 = !{!3635, !3636, !3637, !3638, !3639, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655}
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3632, file: !3633, line: 23, baseType: !300, size: 32)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3632, file: !3633, line: 24, baseType: !191, size: 16, offset: 32)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3632, file: !3633, line: 25, baseType: !53, size: 32, offset: 64)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3632, file: !3633, line: 26, baseType: !1132, size: 32, offset: 96)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3632, file: !3633, line: 27, baseType: !304, size: 64, offset: 128)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3632, file: !3633, line: 28, baseType: !304, size: 64, offset: 192)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3632, file: !3633, line: 41, baseType: !304, size: 64, offset: 256)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3632, file: !3633, line: 42, baseType: !387, size: 32, offset: 320)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3632, file: !3633, line: 43, baseType: !387, size: 32, offset: 352)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3632, file: !3633, line: 44, baseType: !237, size: 32, offset: 384)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3632, file: !3633, line: 45, baseType: !246, size: 32, offset: 416)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3632, file: !3633, line: 46, baseType: !392, size: 64, offset: 448)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3632, file: !3633, line: 47, baseType: !3620, size: 128, offset: 512)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3632, file: !3633, line: 48, baseType: !3620, size: 128, offset: 640)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3632, file: !3633, line: 49, baseType: !3620, size: 128, offset: 768)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3632, file: !3633, line: 50, baseType: !3620, size: 128, offset: 896)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3632, file: !3633, line: 51, baseType: !304, size: 64, offset: 1024)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3632, file: !3633, line: 52, baseType: !304, size: 64, offset: 1088)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3632, file: !3633, line: 53, baseType: !300, size: 32, offset: 1152)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3632, file: !3633, line: 54, baseType: !300, size: 32, offset: 1184)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3632, file: !3633, line: 55, baseType: !304, size: 64, offset: 1216)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !260, file: !228, line: 1990, baseType: !3657, size: 64, offset: 960)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DISubroutineType(types: !3659)
!3659 = !{!181, !266, !149, !196}
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !260, file: !228, line: 1991, baseType: !3661, size: 64, offset: 1024)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DISubroutineType(types: !3663)
!3663 = !{!6, !231, !3664, !304, !304}
!3664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3665, size: 64)
!3665 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !228, line: 55, flags: DIFlagFwdDecl)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !260, file: !228, line: 1993, baseType: !3667, size: 64, offset: 1088)
!3667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3668, size: 64)
!3668 = !DISubroutineType(types: !3669)
!3669 = !{!6, !231, !6}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !260, file: !228, line: 1994, baseType: !3671, size: 64, offset: 1152)
!3671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3672, size: 64)
!3672 = !DISubroutineType(types: !3673)
!3673 = !{!6, !231, !266, !1293, !53, !191}
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !260, file: !228, line: 1997, baseType: !3675, size: 64, offset: 1216)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!6, !3509, !231, !1293, !191}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !260, file: !228, line: 1999, baseType: !3679, size: 64, offset: 1280)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!254, !3509, !266, !6}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !260, file: !228, line: 2001, baseType: !3683, size: 64, offset: 1344)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!6, !3509, !266, !254, !6}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !260, file: !228, line: 2003, baseType: !3687, size: 64, offset: 1408)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!6, !3509, !266, !3690}
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !228, line: 76, flags: DIFlagFwdDecl)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !260, file: !228, line: 2005, baseType: !3693, size: 64, offset: 1472)
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!6, !266, !3690}
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !260, file: !228, line: 2006, baseType: !3697, size: 64, offset: 1536)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!3700, !231}
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !228, line: 3192, size: 192, elements: !3702)
!3702 = !{!3703, !3710}
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3701, file: !228, line: 3193, baseType: !3704, size: 128)
!3704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3705, line: 296, size: 128, elements: !3706)
!3705 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3706 = !{!3707, !3708, !3709}
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3704, file: !3705, line: 297, baseType: !83, size: 32)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3704, file: !3705, line: 299, baseType: !1600, size: 32, offset: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3704, file: !3705, line: 300, baseType: !221, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3701, file: !228, line: 3194, baseType: !300, size: 32, offset: 128)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !232, file: !228, line: 655, baseType: !382, size: 64, offset: 448)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !232, file: !228, line: 656, baseType: !226, size: 64, offset: 512)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !232, file: !228, line: 659, baseType: !221, size: 64, offset: 576)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !232, file: !228, line: 663, baseType: !199, size: 64, offset: 640)
!3715 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 671, baseType: !3716, size: 32, offset: 704)
!3716 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !228, line: 671, size: 32, elements: !3717)
!3717 = !{!3718, !3720}
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3716, file: !228, line: 672, baseType: !3719, size: 32)
!3719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3716, file: !228, line: 673, baseType: !53, size: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !232, file: !228, line: 675, baseType: !387, size: 32, offset: 736)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !232, file: !228, line: 676, baseType: !392, size: 64, offset: 768)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !232, file: !228, line: 677, baseType: !3620, size: 128, offset: 832)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !232, file: !228, line: 678, baseType: !3620, size: 128, offset: 960)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !232, file: !228, line: 679, baseType: !3620, size: 128, offset: 1088)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !232, file: !228, line: 680, baseType: !83, size: 32, offset: 1216)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !232, file: !228, line: 681, baseType: !119, size: 16, offset: 1248)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !232, file: !228, line: 682, baseType: !107, size: 8, offset: 1264)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !232, file: !228, line: 683, baseType: !107, size: 8, offset: 1272)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !232, file: !228, line: 684, baseType: !2124, size: 64, offset: 1280)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !232, file: !228, line: 691, baseType: !199, size: 64, offset: 1344)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !232, file: !228, line: 692, baseType: !1108, size: 320, offset: 1408)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !232, file: !228, line: 694, baseType: !199, size: 64, offset: 1728)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !232, file: !228, line: 695, baseType: !199, size: 64, offset: 1792)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !232, file: !228, line: 697, baseType: !744, size: 128, offset: 1856)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !232, file: !228, line: 698, baseType: !12, size: 128, offset: 1984)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !232, file: !228, line: 707, baseType: !12, size: 128, offset: 2112)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !232, file: !228, line: 708, baseType: !12, size: 128, offset: 2240)
!3739 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 709, baseType: !3740, size: 128, offset: 2368)
!3740 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !228, line: 709, size: 128, elements: !3741)
!3741 = !{!3742, !3743}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3740, file: !228, line: 710, baseType: !868, size: 64)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3740, file: !228, line: 711, baseType: !718, size: 128, align: 64)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !232, file: !228, line: 713, baseType: !504, size: 64, offset: 2496)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !232, file: !228, line: 714, baseType: !504, size: 64, offset: 2560)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !232, file: !228, line: 715, baseType: !48, size: 32, offset: 2624)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !232, file: !228, line: 716, baseType: !48, size: 32, offset: 2656)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !232, file: !228, line: 717, baseType: !48, size: 32, offset: 2688)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !232, file: !228, line: 719, baseType: !48, size: 32, offset: 2720)
!3750 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 721, baseType: !3751, size: 64, offset: 2752)
!3751 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !228, line: 721, size: 64, elements: !3752)
!3752 = !{!3753, !3754}
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3751, file: !228, line: 722, baseType: !1284, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3751, file: !228, line: 723, baseType: !891, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !232, file: !228, line: 725, baseType: !3756, size: 64, offset: 2816)
!3756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3757, size: 64)
!3757 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !228, line: 725, flags: DIFlagFwdDecl)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !232, file: !228, line: 726, baseType: !227, size: 1536, align: 64, offset: 2880)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !232, file: !228, line: 727, baseType: !12, size: 128, offset: 4416)
!3760 = !DIDerivedType(tag: DW_TAG_member, scope: !232, file: !228, line: 728, baseType: !3761, size: 64, offset: 4544)
!3761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !232, file: !228, line: 728, size: 64, elements: !3762)
!3762 = !{!3763, !3764, !3767, !3768}
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3761, file: !228, line: 729, baseType: !1866, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3761, file: !228, line: 730, baseType: !3765, size: 64)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3766, size: 64)
!3766 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !228, line: 730, flags: DIFlagFwdDecl)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3761, file: !228, line: 731, baseType: !149, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3761, file: !228, line: 732, baseType: !53, size: 32)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !232, file: !228, line: 735, baseType: !301, size: 32, offset: 4608)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !232, file: !228, line: 738, baseType: !301, size: 32, offset: 4640)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !232, file: !228, line: 739, baseType: !3446, size: 64, offset: 4672)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !232, file: !228, line: 750, baseType: !221, size: 64, offset: 4736)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !227, file: !228, line: 474, baseType: !3704, size: 128, offset: 64)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !227, file: !228, line: 475, baseType: !1108, size: 320, offset: 192)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !227, file: !228, line: 476, baseType: !1600, size: 32, offset: 512)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !227, file: !228, line: 477, baseType: !48, size: 32, offset: 544)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !227, file: !228, line: 482, baseType: !2403, size: 128, offset: 576)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !227, file: !228, line: 483, baseType: !199, size: 64, offset: 704)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !227, file: !228, line: 484, baseType: !199, size: 64, offset: 768)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !227, file: !228, line: 485, baseType: !3781, size: 64, offset: 832)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3783)
!3783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !228, line: 404, size: 1280, elements: !3784)
!3784 = !{!3785, !3789, !3859, !3863, !3867, !3873, !3877, !3881, !3886, !3890, !3894, !3898, !3899, !3910, !3914, !3918, !3923, !3927, !3934, !3935}
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3783, file: !228, line: 405, baseType: !3786, size: 64)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{!6, !1645, !903}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3783, file: !228, line: 406, baseType: !3790, size: 64, offset: 64)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!6, !1293, !3793}
!3793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3794, size: 64)
!3794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1249, line: 293, size: 1536, elements: !3795)
!3795 = !{!3796, !3826, !3840}
!3796 = !DIDerivedType(tag: DW_TAG_member, scope: !3794, file: !1249, line: 295, baseType: !3797, size: 512)
!3797 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3794, file: !1249, line: 295, size: 512, elements: !3798)
!3798 = !{!3799, !3825}
!3799 = !DIDerivedType(tag: DW_TAG_member, scope: !3797, file: !1249, line: 296, baseType: !3800, size: 448)
!3800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3797, file: !1249, line: 296, size: 448, elements: !3801)
!3801 = !{!3802, !3803, !3812, !3813, !3814, !3823, !3824}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3800, file: !1249, line: 298, baseType: !199, size: 64)
!3803 = !DIDerivedType(tag: DW_TAG_member, scope: !3800, file: !1249, line: 299, baseType: !3804, size: 128, offset: 64)
!3804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3800, file: !1249, line: 299, size: 128, elements: !3805)
!3805 = !{!3806, !3807}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3804, file: !1249, line: 300, baseType: !12, size: 128)
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !3804, file: !1249, line: 302, baseType: !3808, size: 128)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3804, file: !1249, line: 302, size: 128, elements: !3809)
!3809 = !{!3810, !3811}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3808, file: !1249, line: 303, baseType: !221, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3808, file: !1249, line: 305, baseType: !53, size: 32, offset: 64)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3800, file: !1249, line: 310, baseType: !226, size: 64, offset: 192)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3800, file: !1249, line: 311, baseType: !199, size: 64, offset: 256)
!3814 = !DIDerivedType(tag: DW_TAG_member, scope: !3800, file: !1249, line: 312, baseType: !3815, size: 64, offset: 320)
!3815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3800, file: !1249, line: 312, size: 64, elements: !3816)
!3816 = !{!3817, !3818}
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3815, file: !1249, line: 313, baseType: !221, size: 64)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3815, file: !1249, line: 314, baseType: !3819, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1249, line: 257, baseType: !3820)
!3820 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1249, line: 255, size: 64, elements: !3821)
!3821 = !{!3822}
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3820, file: !1249, line: 256, baseType: !199, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3800, file: !1249, line: 316, baseType: !48, size: 32, offset: 384)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3800, file: !1249, line: 317, baseType: !48, size: 32, offset: 416)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3797, file: !1249, line: 323, baseType: !1646, size: 512, align: 128)
!3826 = !DIDerivedType(tag: DW_TAG_member, scope: !3794, file: !1249, line: 325, baseType: !3827, size: 512, offset: 512)
!3827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3794, file: !1249, line: 325, size: 512, elements: !3828)
!3828 = !{!3829, !3839}
!3829 = !DIDerivedType(tag: DW_TAG_member, scope: !3827, file: !1249, line: 326, baseType: !3830, size: 320)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3827, file: !1249, line: 326, size: 320, elements: !3831)
!3831 = !{!3832, !3833, !3834, !3835, !3836, !3837, !3838}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3830, file: !1249, line: 327, baseType: !199, size: 64)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3830, file: !1249, line: 328, baseType: !199, size: 64, offset: 64)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3830, file: !1249, line: 329, baseType: !199, size: 64, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3830, file: !1249, line: 331, baseType: !48, size: 32, offset: 192)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3830, file: !1249, line: 332, baseType: !48, size: 32, offset: 224)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3830, file: !1249, line: 333, baseType: !48, size: 32, offset: 256)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3830, file: !1249, line: 335, baseType: !53, size: 32, offset: 288)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3827, file: !1249, line: 339, baseType: !1646, size: 512, align: 128)
!3840 = !DIDerivedType(tag: DW_TAG_member, scope: !3794, file: !1249, line: 341, baseType: !3841, size: 512, offset: 1024)
!3841 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3794, file: !1249, line: 341, size: 512, elements: !3842)
!3842 = !{!3843, !3852, !3858}
!3843 = !DIDerivedType(tag: DW_TAG_member, scope: !3841, file: !1249, line: 342, baseType: !3844, size: 384)
!3844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3841, file: !1249, line: 342, size: 384, elements: !3845)
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851}
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3844, file: !1249, line: 343, baseType: !199, size: 64)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3844, file: !1249, line: 344, baseType: !199, size: 64, offset: 64)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3844, file: !1249, line: 346, baseType: !221, size: 64, offset: 128)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3844, file: !1249, line: 347, baseType: !221, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3844, file: !1249, line: 348, baseType: !221, size: 64, offset: 256)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3844, file: !1249, line: 349, baseType: !221, size: 64, offset: 320)
!3852 = !DIDerivedType(tag: DW_TAG_member, scope: !3841, file: !1249, line: 352, baseType: !3853, size: 256)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3841, file: !1249, line: 352, size: 256, elements: !3854)
!3854 = !{!3855, !3856, !3857}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3853, file: !1249, line: 353, baseType: !199, size: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3853, file: !1249, line: 354, baseType: !199, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3853, file: !1249, line: 356, baseType: !12, size: 128, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3841, file: !1249, line: 359, baseType: !1646, size: 512, align: 128)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3783, file: !228, line: 409, baseType: !3860, size: 64, offset: 128)
!3860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3861, size: 64)
!3861 = !DISubroutineType(types: !3862)
!3862 = !{!6, !226, !903}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3783, file: !228, line: 412, baseType: !3864, size: 64, offset: 192)
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3865, size: 64)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{!578, !226, !3793}
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3783, file: !228, line: 414, baseType: !3868, size: 64, offset: 256)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{null, !3871}
!3871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3872, size: 64)
!3872 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !228, line: 310, flags: DIFlagFwdDecl)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3783, file: !228, line: 416, baseType: !3874, size: 64, offset: 320)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DISubroutineType(types: !3876)
!3876 = !{!6, !1293, !226, !392, !53, !3195, !1882}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3783, file: !228, line: 419, baseType: !3878, size: 64, offset: 384)
!3878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3879, size: 64)
!3879 = !DISubroutineType(types: !3880)
!3880 = !{!6, !1293, !226, !392, !53, !53, !1645, !221}
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3783, file: !228, line: 424, baseType: !3882, size: 64, offset: 448)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!3885, !226, !3885}
!3885 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !13, line: 131, baseType: !304)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3783, file: !228, line: 425, baseType: !3887, size: 64, offset: 512)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !3793, !196, !196}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3783, file: !228, line: 426, baseType: !3891, size: 64, offset: 576)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!578, !3793, !1600}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3783, file: !228, line: 427, baseType: !3895, size: 64, offset: 640)
!3895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3896, size: 64)
!3896 = !DISubroutineType(types: !3897)
!3897 = !{null, !3793}
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3783, file: !228, line: 428, baseType: !1303, size: 64, offset: 704)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3783, file: !228, line: 433, baseType: !3900, size: 64, offset: 768)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!6, !226, !3793, !3793, !3903}
!3903 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !3904, line: 15, baseType: !53, size: 32, elements: !3905)
!3904 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!3905 = !{!3906, !3907, !3908, !3909}
!3906 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!3907 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!3908 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!3909 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3783, file: !228, line: 435, baseType: !3911, size: 64, offset: 832)
!3911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3912, size: 64)
!3912 = !DISubroutineType(types: !3913)
!3913 = !{!6, !3793}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3783, file: !228, line: 436, baseType: !3915, size: 64, offset: 896)
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!578, !3793, !196, !196}
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3783, file: !228, line: 438, baseType: !3919, size: 64, offset: 960)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{null, !3793, !3922, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3783, file: !228, line: 439, baseType: !3924, size: 64, offset: 1024)
!3924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3925, size: 64)
!3925 = !DISubroutineType(types: !3926)
!3926 = !{!6, !226, !1645}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3783, file: !228, line: 442, baseType: !3928, size: 64, offset: 1088)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!6, !3931, !1293, !3933}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3932, size: 64)
!3932 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !228, line: 66, flags: DIFlagFwdDecl)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3783, file: !228, line: 444, baseType: !1874, size: 64, offset: 1152)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3783, file: !228, line: 445, baseType: !3936, size: 64, offset: 1216)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = !DISubroutineType(types: !3938)
!3938 = !{!6, !1306, !1328}
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !227, file: !228, line: 486, baseType: !199, size: 64, offset: 896)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !227, file: !228, line: 487, baseType: !1108, size: 320, offset: 960)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !227, file: !228, line: 488, baseType: !1917, size: 32, offset: 1280)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !227, file: !228, line: 489, baseType: !83, size: 32, offset: 1312)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !227, file: !228, line: 490, baseType: !12, size: 128, offset: 1344)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !227, file: !228, line: 491, baseType: !221, size: 64, offset: 1472)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !216, file: !175, line: 180, baseType: !3946, size: 64, offset: 320)
!3946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3947, size: 64)
!3947 = !DISubroutineType(types: !3948)
!3948 = !{!181, !1293, !76, !215, !149, !392, !196}
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !216, file: !175, line: 182, baseType: !3946, size: 64, offset: 384)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !216, file: !175, line: 184, baseType: !3951, size: 64, offset: 448)
!3951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3952, size: 64)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!6, !1293, !76, !215, !1367}
!3954 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !204, file: !175, line: 90, baseType: !3955, size: 64, offset: 192)
!3955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !204, file: !175, line: 91, baseType: !3957, size: 64, offset: 256)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !165, file: !68, line: 120, baseType: !3959, size: 64, offset: 192)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!3962, !132}
!3962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3963, size: 64)
!3963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3964)
!3964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !3965, line: 39, size: 384, elements: !3966)
!3965 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!3966 = !{!3967, !3973, !3977, !3981, !3987, !3991}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3964, file: !3965, line: 40, baseType: !3968, size: 32)
!3968 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !3965, line: 26, baseType: !53, size: 32, elements: !3969)
!3969 = !{!3970, !3971, !3972}
!3970 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!3971 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!3972 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3964, file: !3965, line: 41, baseType: !3974, size: 64, offset: 64)
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!578}
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3964, file: !3965, line: 42, baseType: !3978, size: 64, offset: 128)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!221}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3964, file: !3965, line: 43, baseType: !3982, size: 64, offset: 192)
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{!1495, !3985}
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !3965, line: 19, flags: DIFlagFwdDecl)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3964, file: !3965, line: 44, baseType: !3988, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!1495}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3964, file: !3965, line: 45, baseType: !541, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !165, file: !68, line: 121, baseType: !3993, size: 64, offset: 256)
!3993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3994, size: 64)
!3994 = !DISubroutineType(types: !3995)
!3995 = !{!1495, !132}
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !165, file: !68, line: 122, baseType: !3997, size: 64, offset: 320)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{null, !132, !4000, !4001}
!4000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !67, file: !68, line: 70, baseType: !4003, size: 64, offset: 384)
!4003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4004, size: 64)
!4004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !4005, line: 190, size: 1152, elements: !4006)
!4005 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!4006 = !{!4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4086, !4087, !4088, !4089, !4090, !4093}
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4004, file: !4005, line: 191, baseType: !48, size: 32)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4004, file: !4005, line: 192, baseType: !48, size: 32, offset: 32)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4004, file: !4005, line: 202, baseType: !4003, size: 64, offset: 64)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4004, file: !4005, line: 203, baseType: !71, size: 64, offset: 128)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4004, file: !4005, line: 205, baseType: !610, size: 192, align: 64, offset: 192)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4004, file: !4005, line: 207, baseType: !1495, size: 64, offset: 384)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4004, file: !4005, line: 208, baseType: !53, size: 32, offset: 448)
!4014 = !DIDerivedType(tag: DW_TAG_member, scope: !4004, file: !4005, line: 209, baseType: !4015, size: 256, offset: 512)
!4015 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4004, file: !4005, line: 209, size: 256, elements: !4016)
!4016 = !{!4017, !4026, !4030}
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4015, file: !4005, line: 210, baseType: !4018, size: 256)
!4018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !4005, line: 153, size: 256, elements: !4019)
!4019 = !{!4020, !4021, !4022, !4025}
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4018, file: !4005, line: 154, baseType: !199, size: 64)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4018, file: !4005, line: 156, baseType: !2406, size: 64, offset: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4018, file: !4005, line: 162, baseType: !4023, size: 64, offset: 128)
!4023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4024, size: 64)
!4024 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !4005, line: 162, flags: DIFlagFwdDecl)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4018, file: !4005, line: 167, baseType: !199, size: 64, offset: 192)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4015, file: !4005, line: 211, baseType: !4027, size: 64)
!4027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !4005, line: 170, size: 64, elements: !4028)
!4028 = !{!4029}
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4027, file: !4005, line: 171, baseType: !4003, size: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4015, file: !4005, line: 212, baseType: !4031, size: 256)
!4031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !4005, line: 174, size: 256, elements: !4032)
!4032 = !{!4033, !4081, !4084, !4085}
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4031, file: !4005, line: 175, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4036)
!4036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !4005, line: 271, size: 768, elements: !4037)
!4037 = !{!4038, !4058, !4062, !4063, !4064, !4065, !4066, !4070, !4071, !4072, !4073, !4077}
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4036, file: !4005, line: 276, baseType: !4039, size: 64)
!4039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4040, size: 64)
!4040 = !DISubroutineType(types: !4041)
!4041 = !{!6, !4042}
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !4005, line: 251, size: 1216, elements: !4044)
!4044 = !{!4045, !4046, !4047, !4048, !4049, !4050, !4051, !4052, !4053, !4054, !4055, !4056, !4057}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4043, file: !4005, line: 253, baseType: !4003, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4043, file: !4005, line: 254, baseType: !1293, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4043, file: !4005, line: 255, baseType: !944, size: 64, offset: 128)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4043, file: !4005, line: 256, baseType: !221, size: 64, offset: 192)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4043, file: !4005, line: 259, baseType: !498, size: 256, offset: 256)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4043, file: !4005, line: 260, baseType: !498, size: 256, offset: 512)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4043, file: !4005, line: 261, baseType: !6, size: 32, offset: 768)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4043, file: !4005, line: 262, baseType: !12, size: 128, offset: 832)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4043, file: !4005, line: 263, baseType: !149, size: 64, offset: 960)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4043, file: !4005, line: 265, baseType: !196, size: 64, offset: 1024)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4043, file: !4005, line: 266, baseType: !578, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4043, file: !4005, line: 267, baseType: !578, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4043, file: !4005, line: 268, baseType: !1565, size: 64, offset: 1152)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4036, file: !4005, line: 277, baseType: !4059, size: 64, offset: 64)
!4059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4060, size: 64)
!4060 = !DISubroutineType(types: !4061)
!4061 = !{null, !4042}
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4036, file: !4005, line: 290, baseType: !975, size: 64, offset: 128)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4036, file: !4005, line: 292, baseType: !962, size: 64, offset: 192)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4036, file: !4005, line: 293, baseType: !971, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4036, file: !4005, line: 294, baseType: !967, size: 64, offset: 320)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4036, file: !4005, line: 296, baseType: !4067, size: 64, offset: 384)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!181, !4042, !149, !196, !392}
!4070 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4036, file: !4005, line: 306, baseType: !196, size: 64, offset: 448)
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4036, file: !4005, line: 313, baseType: !578, size: 8, offset: 512)
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4036, file: !4005, line: 314, baseType: !4067, size: 64, offset: 576)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4036, file: !4005, line: 317, baseType: !4074, size: 64, offset: 640)
!4074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4075, size: 64)
!4075 = !DISubroutineType(types: !4076)
!4076 = !{!1354, !4042, !1356}
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4036, file: !4005, line: 320, baseType: !4078, size: 64, offset: 704)
!4078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4079, size: 64)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!6, !4042, !1367}
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4031, file: !4005, line: 176, baseType: !4082, size: 64, offset: 64)
!4082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4083, size: 64)
!4083 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !4005, line: 35, flags: DIFlagFwdDecl)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4031, file: !4005, line: 177, baseType: !392, size: 64, offset: 128)
!4085 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4031, file: !4005, line: 178, baseType: !4003, size: 64, offset: 192)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4004, file: !4005, line: 215, baseType: !221, size: 64, offset: 768)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4004, file: !4005, line: 221, baseType: !304, size: 64, offset: 832)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4004, file: !4005, line: 223, baseType: !119, size: 16, offset: 896)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4004, file: !4005, line: 224, baseType: !191, size: 16, offset: 912)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4004, file: !4005, line: 225, baseType: !4091, size: 64, offset: 960)
!4091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4092, size: 64)
!4092 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !4005, line: 36, flags: DIFlagFwdDecl)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4004, file: !4005, line: 227, baseType: !718, size: 128, align: 64, offset: 1024)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !67, file: !68, line: 71, baseType: !39, size: 32, offset: 448)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !67, file: !68, line: 73, baseType: !53, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !67, file: !68, line: 74, baseType: !53, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !67, file: !68, line: 75, baseType: !53, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !67, file: !68, line: 76, baseType: !53, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !67, file: !68, line: 77, baseType: !53, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !63, file: !64, line: 707, baseType: !62, size: 64, offset: 512)
!4101 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !63, file: !64, line: 709, baseType: !4102, size: 64, offset: 576)
!4102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4103, size: 64)
!4103 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !64, line: 37, flags: DIFlagFwdDecl)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !63, file: !64, line: 711, baseType: !71, size: 64, offset: 640)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !63, file: !64, line: 712, baseType: !4106, size: 64, offset: 704)
!4106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4107, size: 64)
!4107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4108)
!4108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !64, line: 89, size: 384, elements: !4109)
!4109 = !{!4110, !4111, !4112, !4118, !4123, !4127}
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4108, file: !64, line: 90, baseType: !71, size: 64)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4108, file: !64, line: 91, baseType: !201, size: 64, offset: 64)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4108, file: !64, line: 92, baseType: !4113, size: 64, offset: 128)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!6, !4116, !144}
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4108, file: !64, line: 93, baseType: !4119, size: 64, offset: 192)
!4119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4120 = !DISubroutineType(types: !4121)
!4121 = !{!149, !4116, !4122, !4000, !4001}
!4122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4108, file: !64, line: 95, baseType: !4124, size: 64, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4125, size: 64)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{null, !62}
!4127 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4108, file: !64, line: 97, baseType: !4128, size: 64, offset: 320)
!4128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4129, size: 64)
!4129 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4130)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !4131, line: 286, size: 1472, elements: !4132)
!4131 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!4132 = !{!4133, !4137, !4138, !4139, !4140, !4141, !4142, !4143, !4144, !4145, !4146, !4147, !4148, !4149, !4150, !4151, !4152, !4153, !4154, !4155, !4156, !4157, !4158}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4130, file: !4131, line: 287, baseType: !4134, size: 64)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!6, !62}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4130, file: !4131, line: 288, baseType: !4124, size: 64, offset: 64)
!4138 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4130, file: !4131, line: 289, baseType: !4134, size: 64, offset: 128)
!4139 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4130, file: !4131, line: 290, baseType: !4134, size: 64, offset: 192)
!4140 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4130, file: !4131, line: 291, baseType: !4134, size: 64, offset: 256)
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4130, file: !4131, line: 292, baseType: !4134, size: 64, offset: 320)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4130, file: !4131, line: 293, baseType: !4134, size: 64, offset: 384)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4130, file: !4131, line: 294, baseType: !4134, size: 64, offset: 448)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4130, file: !4131, line: 295, baseType: !4134, size: 64, offset: 512)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4130, file: !4131, line: 296, baseType: !4134, size: 64, offset: 576)
!4146 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4130, file: !4131, line: 297, baseType: !4134, size: 64, offset: 640)
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4130, file: !4131, line: 298, baseType: !4134, size: 64, offset: 704)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4130, file: !4131, line: 299, baseType: !4134, size: 64, offset: 768)
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4130, file: !4131, line: 300, baseType: !4134, size: 64, offset: 832)
!4150 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4130, file: !4131, line: 301, baseType: !4134, size: 64, offset: 896)
!4151 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4130, file: !4131, line: 302, baseType: !4134, size: 64, offset: 960)
!4152 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4130, file: !4131, line: 303, baseType: !4134, size: 64, offset: 1024)
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4130, file: !4131, line: 304, baseType: !4134, size: 64, offset: 1088)
!4154 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4130, file: !4131, line: 305, baseType: !4134, size: 64, offset: 1152)
!4155 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4130, file: !4131, line: 306, baseType: !4134, size: 64, offset: 1216)
!4156 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4130, file: !4131, line: 307, baseType: !4134, size: 64, offset: 1280)
!4157 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4130, file: !4131, line: 308, baseType: !4134, size: 64, offset: 1344)
!4158 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4130, file: !4131, line: 309, baseType: !4134, size: 64, offset: 1408)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !63, file: !64, line: 714, baseType: !4160, size: 64, offset: 768)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4162)
!4162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4163, line: 80, size: 1344, elements: !4164)
!4163 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4164 = !{!4165, !4166, !4167, !4168, !4169, !4170, !4217, !4218, !4219, !4220, !4221, !4222, !4223, !4224, !4225, !4226, !4227, !4228, !4229, !4230, !4234}
!4165 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4162, file: !4163, line: 81, baseType: !71, size: 64)
!4166 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4162, file: !4163, line: 82, baseType: !71, size: 64, offset: 64)
!4167 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4162, file: !4163, line: 83, baseType: !201, size: 64, offset: 128)
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4162, file: !4163, line: 84, baseType: !201, size: 64, offset: 192)
!4169 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4162, file: !4163, line: 85, baseType: !201, size: 64, offset: 256)
!4170 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4162, file: !4163, line: 87, baseType: !4171, size: 64, offset: 320)
!4171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4172 = !DISubroutineType(types: !4173)
!4173 = !{!6, !62, !4174}
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !4176, line: 96, size: 1152, elements: !4177)
!4176 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!4177 = !{!4178, !4179, !4180, !4181, !4182, !4183, !4189, !4193, !4197, !4198, !4199, !4200, !4201, !4209, !4210, !4211, !4212, !4213, !4214}
!4178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4175, file: !4176, line: 97, baseType: !71, size: 64)
!4179 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4175, file: !4176, line: 98, baseType: !4160, size: 64, offset: 64)
!4180 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4175, file: !4176, line: 100, baseType: !420, size: 64, offset: 128)
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4175, file: !4176, line: 101, baseType: !71, size: 64, offset: 192)
!4182 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4175, file: !4176, line: 103, baseType: !578, size: 8, offset: 256)
!4183 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4175, file: !4176, line: 104, baseType: !4184, size: 32, offset: 288)
!4184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !4176, line: 45, baseType: !53, size: 32, elements: !4185)
!4185 = !{!4186, !4187, !4188}
!4186 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!4187 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!4188 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!4189 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4175, file: !4176, line: 106, baseType: !4190, size: 64, offset: 320)
!4190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4191, size: 64)
!4191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4192)
!4192 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !4176, line: 106, flags: DIFlagFwdDecl)
!4193 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4175, file: !4176, line: 107, baseType: !4194, size: 64, offset: 384)
!4194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4195, size: 64)
!4195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4196)
!4196 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !4176, line: 107, flags: DIFlagFwdDecl)
!4197 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4175, file: !4176, line: 109, baseType: !4134, size: 64, offset: 448)
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4175, file: !4176, line: 110, baseType: !4124, size: 64, offset: 512)
!4199 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4175, file: !4176, line: 111, baseType: !4134, size: 64, offset: 576)
!4200 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4175, file: !4176, line: 112, baseType: !4124, size: 64, offset: 640)
!4201 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4175, file: !4176, line: 113, baseType: !4202, size: 64, offset: 704)
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4203, size: 64)
!4203 = !DISubroutineType(types: !4204)
!4204 = !{!6, !62, !4205}
!4205 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !4131, line: 60, baseType: !4206)
!4206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !4131, line: 58, size: 32, elements: !4207)
!4207 = !{!4208}
!4208 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4206, file: !4131, line: 59, baseType: !6, size: 32)
!4209 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4175, file: !4176, line: 114, baseType: !4134, size: 64, offset: 768)
!4210 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4175, file: !4176, line: 115, baseType: !201, size: 64, offset: 832)
!4211 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4175, file: !4176, line: 116, baseType: !201, size: 64, offset: 896)
!4212 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4175, file: !4176, line: 118, baseType: !4128, size: 64, offset: 960)
!4213 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4175, file: !4176, line: 119, baseType: !4124, size: 64, offset: 1024)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4175, file: !4176, line: 121, baseType: !4215, size: 64, offset: 1088)
!4215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4216, size: 64)
!4216 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !4176, line: 121, flags: DIFlagFwdDecl)
!4217 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4162, file: !4163, line: 88, baseType: !4113, size: 64, offset: 384)
!4218 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4162, file: !4163, line: 89, baseType: !4134, size: 64, offset: 448)
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4162, file: !4163, line: 90, baseType: !4124, size: 64, offset: 512)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4162, file: !4163, line: 91, baseType: !4124, size: 64, offset: 576)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4162, file: !4163, line: 92, baseType: !4124, size: 64, offset: 640)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4162, file: !4163, line: 94, baseType: !4134, size: 64, offset: 704)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4162, file: !4163, line: 95, baseType: !4134, size: 64, offset: 768)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4162, file: !4163, line: 97, baseType: !4202, size: 64, offset: 832)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4162, file: !4163, line: 98, baseType: !4134, size: 64, offset: 896)
!4226 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4162, file: !4163, line: 100, baseType: !4134, size: 64, offset: 960)
!4227 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4162, file: !4163, line: 102, baseType: !4134, size: 64, offset: 1024)
!4228 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4162, file: !4163, line: 103, baseType: !4124, size: 64, offset: 1088)
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4162, file: !4163, line: 105, baseType: !4128, size: 64, offset: 1152)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4162, file: !4163, line: 107, baseType: !4231, size: 64, offset: 1216)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4233)
!4233 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4163, line: 107, flags: DIFlagFwdDecl)
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4162, file: !4163, line: 109, baseType: !578, size: 8, offset: 1280)
!4235 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !63, file: !64, line: 715, baseType: !4174, size: 64, offset: 832)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !63, file: !64, line: 717, baseType: !221, size: 64, offset: 896)
!4237 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !63, file: !64, line: 719, baseType: !221, size: 64, offset: 960)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !63, file: !64, line: 721, baseType: !498, size: 256, offset: 1024)
!4239 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !63, file: !64, line: 725, baseType: !4240, size: 448, offset: 1280)
!4240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !64, line: 517, size: 448, elements: !4241)
!4241 = !{!4242, !4243, !4244, !4245}
!4242 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4240, file: !64, line: 518, baseType: !12, size: 128)
!4243 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4240, file: !64, line: 519, baseType: !12, size: 128, offset: 128)
!4244 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4240, file: !64, line: 520, baseType: !12, size: 128, offset: 256)
!4245 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4240, file: !64, line: 521, baseType: !4246, size: 32, offset: 384)
!4246 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !64, line: 487, baseType: !53, size: 32, elements: !4247)
!4247 = !{!4248, !4249, !4250, !4251}
!4248 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!4249 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!4250 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!4251 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !63, file: !64, line: 726, baseType: !4253, size: 2496, offset: 1728)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !4131, line: 663, size: 2496, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4297, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4313, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4330, !4338, !4339, !4340, !4341, !4342, !4343, !4344, !4345, !4351, !4355}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4253, file: !4131, line: 664, baseType: !4205, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4253, file: !4131, line: 665, baseType: !53, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4253, file: !4131, line: 666, baseType: !53, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4253, file: !4131, line: 667, baseType: !578, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4253, file: !4131, line: 668, baseType: !578, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4253, file: !4131, line: 669, baseType: !578, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4253, file: !4131, line: 670, baseType: !578, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4253, file: !4131, line: 671, baseType: !578, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4253, file: !4131, line: 672, baseType: !578, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4253, file: !4131, line: 673, baseType: !578, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4253, file: !4131, line: 674, baseType: !578, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4253, file: !4131, line: 675, baseType: !300, size: 32, offset: 64)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4253, file: !4131, line: 676, baseType: !83, size: 32, offset: 96)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4253, file: !4131, line: 678, baseType: !12, size: 128, offset: 128)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4253, file: !4131, line: 679, baseType: !447, size: 256, offset: 256)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4253, file: !4131, line: 680, baseType: !4271, size: 64, offset: 512)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4273, line: 43, size: 1536, elements: !4274)
!4273 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4274 = !{!4275, !4276, !4277, !4278, !4279, !4282, !4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296}
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4272, file: !4273, line: 44, baseType: !71, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4272, file: !4273, line: 45, baseType: !6, size: 32, offset: 64)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4272, file: !4273, line: 46, baseType: !12, size: 128, offset: 128)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4272, file: !4273, line: 47, baseType: !83, size: 32, offset: 256)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4272, file: !4273, line: 48, baseType: !4280, size: 64, offset: 320)
!4280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4281 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !4131, line: 629, flags: DIFlagFwdDecl)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4272, file: !4273, line: 49, baseType: !740, size: 320, offset: 384)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4272, file: !4273, line: 50, baseType: !199, size: 64, offset: 704)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4272, file: !4273, line: 51, baseType: !2348, size: 64, offset: 768)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4272, file: !4273, line: 52, baseType: !2348, size: 64, offset: 832)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4272, file: !4273, line: 53, baseType: !2348, size: 64, offset: 896)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4272, file: !4273, line: 54, baseType: !2348, size: 64, offset: 960)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4272, file: !4273, line: 55, baseType: !2348, size: 64, offset: 1024)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4272, file: !4273, line: 56, baseType: !199, size: 64, offset: 1088)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4272, file: !4273, line: 57, baseType: !199, size: 64, offset: 1152)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4272, file: !4273, line: 58, baseType: !199, size: 64, offset: 1216)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4272, file: !4273, line: 59, baseType: !199, size: 64, offset: 1280)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4272, file: !4273, line: 60, baseType: !199, size: 64, offset: 1344)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4272, file: !4273, line: 61, baseType: !62, size: 64, offset: 1408)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4272, file: !4273, line: 62, baseType: !578, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4272, file: !4273, line: 63, baseType: !578, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4297 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4253, file: !4131, line: 681, baseType: !578, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4253, file: !4131, line: 682, baseType: !578, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4253, file: !4131, line: 683, baseType: !578, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4253, file: !4131, line: 684, baseType: !53, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4253, file: !4131, line: 685, baseType: !53, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4253, file: !4131, line: 690, baseType: !2339, size: 512, offset: 640)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4253, file: !4131, line: 691, baseType: !304, size: 64, offset: 1152)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4253, file: !4131, line: 692, baseType: !758, size: 256, offset: 1216)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4253, file: !4131, line: 693, baseType: !1038, size: 192, offset: 1472)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4253, file: !4131, line: 694, baseType: !4280, size: 64, offset: 1664)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4253, file: !4131, line: 695, baseType: !48, size: 32, offset: 1728)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4253, file: !4131, line: 696, baseType: !48, size: 32, offset: 1760)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4253, file: !4131, line: 697, baseType: !53, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4253, file: !4131, line: 698, baseType: !53, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4253, file: !4131, line: 699, baseType: !53, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4253, file: !4131, line: 700, baseType: !53, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4313 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4253, file: !4131, line: 701, baseType: !53, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4253, file: !4131, line: 702, baseType: !53, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4253, file: !4131, line: 703, baseType: !578, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4253, file: !4131, line: 704, baseType: !53, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4253, file: !4131, line: 705, baseType: !53, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4253, file: !4131, line: 706, baseType: !53, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4253, file: !4131, line: 707, baseType: !53, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4253, file: !4131, line: 708, baseType: !53, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4253, file: !4131, line: 709, baseType: !53, size: 32, offset: 1824)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4253, file: !4131, line: 710, baseType: !4323, size: 32, offset: 1856)
!4323 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !4131, line: 620, baseType: !53, size: 32, elements: !4324)
!4324 = !{!4325, !4326, !4327, !4328, !4329}
!4325 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!4326 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!4327 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!4328 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!4329 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4253, file: !4131, line: 711, baseType: !4331, size: 32, offset: 1888)
!4331 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !4131, line: 597, baseType: !6, size: 32, elements: !4332)
!4332 = !{!4333, !4334, !4335, !4336, !4337}
!4333 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!4334 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!4335 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!4336 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!4337 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4253, file: !4131, line: 712, baseType: !4331, size: 32, offset: 1920)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4253, file: !4131, line: 713, baseType: !6, size: 32, offset: 1952)
!4340 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4253, file: !4131, line: 714, baseType: !6, size: 32, offset: 1984)
!4341 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4253, file: !4131, line: 715, baseType: !304, size: 64, offset: 2048)
!4342 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4253, file: !4131, line: 716, baseType: !304, size: 64, offset: 2112)
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4253, file: !4131, line: 717, baseType: !304, size: 64, offset: 2176)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4253, file: !4131, line: 718, baseType: !304, size: 64, offset: 2240)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4253, file: !4131, line: 720, baseType: !4346, size: 64, offset: 2304)
!4346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4347, size: 64)
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !4131, line: 632, size: 64, elements: !4348)
!4348 = !{!4349, !4350}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4347, file: !4131, line: 633, baseType: !83, size: 32)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4347, file: !4131, line: 634, baseType: !53, size: 32, offset: 32)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4253, file: !4131, line: 721, baseType: !4352, size: 64, offset: 2368)
!4352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4353, size: 64)
!4353 = !DISubroutineType(types: !4354)
!4354 = !{null, !62, !494}
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4253, file: !4131, line: 722, baseType: !4356, size: 64, offset: 2432)
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4357, size: 64)
!4357 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !4131, line: 722, flags: DIFlagFwdDecl)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !63, file: !64, line: 727, baseType: !4359, size: 64, offset: 4224)
!4359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4360, size: 64)
!4360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !4131, line: 742, size: 1792, elements: !4361)
!4361 = !{!4362, !4363, !4364, !4368, !4369, !4370}
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4360, file: !4131, line: 743, baseType: !4130, size: 1472)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4360, file: !4131, line: 744, baseType: !4134, size: 64, offset: 1472)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4360, file: !4131, line: 745, baseType: !4365, size: 64, offset: 1536)
!4365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4366, size: 64)
!4366 = !DISubroutineType(types: !4367)
!4367 = !{null, !62, !578}
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4360, file: !4131, line: 746, baseType: !4134, size: 64, offset: 1600)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4360, file: !4131, line: 747, baseType: !4124, size: 64, offset: 1664)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4360, file: !4131, line: 748, baseType: !4124, size: 64, offset: 1728)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !63, file: !64, line: 736, baseType: !4372, size: 128, offset: 4288)
!4372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !64, line: 529, size: 128, elements: !4373)
!4373 = !{!4374, !4378}
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4372, file: !64, line: 531, baseType: !4375, size: 64)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4377, line: 13, flags: DIFlagFwdDecl)
!4377 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4372, file: !64, line: 532, baseType: !4379, size: 64, offset: 64)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !64, line: 49, flags: DIFlagFwdDecl)
!4381 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !63, file: !64, line: 738, baseType: !4382, size: 64, offset: 4416)
!4382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4383, size: 64)
!4383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4384)
!4384 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !64, line: 738, flags: DIFlagFwdDecl)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !63, file: !64, line: 740, baseType: !4386, size: 64, offset: 4480)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!4387 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !63, file: !64, line: 741, baseType: !304, size: 64, offset: 4544)
!4388 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !63, file: !64, line: 746, baseType: !304, size: 64, offset: 4608)
!4389 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !63, file: !64, line: 747, baseType: !4390, size: 64, offset: 4672)
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4392)
!4392 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !64, line: 747, flags: DIFlagFwdDecl)
!4393 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !63, file: !64, line: 749, baseType: !4394, size: 64, offset: 4736)
!4394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4395, size: 64)
!4395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !64, line: 428, size: 128, elements: !4396)
!4396 = !{!4397, !4398, !4399}
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4395, file: !64, line: 433, baseType: !53, size: 32)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4395, file: !64, line: 434, baseType: !53, size: 32, offset: 32)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4395, file: !64, line: 435, baseType: !199, size: 64, offset: 64)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !63, file: !64, line: 751, baseType: !12, size: 128, offset: 4800)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !63, file: !64, line: 762, baseType: !4402, size: 64, offset: 4928)
!4402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4403, size: 64)
!4403 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !64, line: 762, flags: DIFlagFwdDecl)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !63, file: !64, line: 770, baseType: !4405, offset: 4992)
!4405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4406, line: 5, elements: !787)
!4406 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !63, file: !64, line: 772, baseType: !4408, size: 64, offset: 4992)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4409, size: 64)
!4409 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4410, line: 18, flags: DIFlagFwdDecl)
!4410 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !63, file: !64, line: 773, baseType: !4412, size: 64, offset: 5056)
!4412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4413, size: 64)
!4413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4414, line: 41, size: 512, elements: !4415)
!4414 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4415 = !{!4416, !4417, !4511, !4512, !4513, !4514}
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4413, file: !4414, line: 42, baseType: !4412, size: 64)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4413, file: !4414, line: 43, baseType: !4418, size: 64, offset: 64)
!4418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4419, size: 64)
!4419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4420)
!4420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4414, line: 125, size: 1408, elements: !4421)
!4421 = !{!4422, !4426, !4430, !4436, !4440, !4441, !4446, !4450, !4454, !4458, !4462, !4463, !4467, !4471, !4475, !4486, !4487, !4488, !4489, !4499, !4503, !4507}
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4420, file: !4414, line: 126, baseType: !4423, size: 64)
!4423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4424, size: 64)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!4412, !4412}
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4420, file: !4414, line: 127, baseType: !4427, size: 64, offset: 64)
!4427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4428, size: 64)
!4428 = !DISubroutineType(types: !4429)
!4429 = !{null, !4412}
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4420, file: !4414, line: 128, baseType: !4431, size: 64, offset: 128)
!4431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4432, size: 64)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!578, !4434}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4413)
!4436 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4420, file: !4414, line: 129, baseType: !4437, size: 64, offset: 192)
!4437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4438, size: 64)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{!1495, !4434, !4116}
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4420, file: !4414, line: 131, baseType: !4431, size: 64, offset: 256)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4420, file: !4414, line: 133, baseType: !4442, size: 64, offset: 320)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!4445, !4434}
!4445 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4414, line: 132, flags: DIFlagFwdDecl)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4420, file: !4414, line: 134, baseType: !4447, size: 64, offset: 384)
!4447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4448, size: 64)
!4448 = !DISubroutineType(types: !4449)
!4449 = !{!578, !4434, !71}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4420, file: !4414, line: 136, baseType: !4451, size: 64, offset: 448)
!4451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4452, size: 64)
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!6, !4434, !71, !53, !221, !196}
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4420, file: !4414, line: 141, baseType: !4455, size: 64, offset: 512)
!4455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4456, size: 64)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!6, !4434, !71, !835, !196}
!4458 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4420, file: !4414, line: 144, baseType: !4459, size: 64, offset: 576)
!4459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4460, size: 64)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!71, !4434}
!4462 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4420, file: !4414, line: 145, baseType: !4459, size: 64, offset: 640)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4420, file: !4414, line: 146, baseType: !4464, size: 64, offset: 704)
!4464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4465, size: 64)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{!4412, !4434}
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4420, file: !4414, line: 148, baseType: !4468, size: 64, offset: 768)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!4412, !4434, !4412}
!4471 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4420, file: !4414, line: 151, baseType: !4472, size: 64, offset: 832)
!4472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4473, size: 64)
!4473 = !DISubroutineType(types: !4474)
!4474 = !{!4412, !4434, !71}
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4420, file: !4414, line: 153, baseType: !4476, size: 64, offset: 896)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4477, size: 64)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!6, !4434, !71, !71, !53, !53, !4479}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4480, size: 64)
!4480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4414, line: 94, size: 640, elements: !4481)
!4481 = !{!4482, !4483, !4484}
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4480, file: !4414, line: 95, baseType: !4412, size: 64)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4480, file: !4414, line: 96, baseType: !53, size: 32, offset: 64)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4480, file: !4414, line: 97, baseType: !4485, size: 512, offset: 128)
!4485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !304, size: 512, elements: !2387)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4420, file: !4414, line: 158, baseType: !4468, size: 64, offset: 960)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4420, file: !4414, line: 161, baseType: !4464, size: 64, offset: 1024)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4420, file: !4414, line: 163, baseType: !4423, size: 64, offset: 1088)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4420, file: !4414, line: 164, baseType: !4490, size: 64, offset: 1152)
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!6, !4434, !4493}
!4493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4494, size: 64)
!4494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4414, line: 73, size: 128, elements: !4495)
!4495 = !{!4496, !4497, !4498}
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4494, file: !4414, line: 74, baseType: !53, size: 32)
!4497 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4494, file: !4414, line: 75, baseType: !53, size: 32, offset: 32)
!4498 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4494, file: !4414, line: 76, baseType: !4434, size: 64, offset: 64)
!4499 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4420, file: !4414, line: 166, baseType: !4500, size: 64, offset: 1216)
!4500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4501, size: 64)
!4501 = !DISubroutineType(types: !4502)
!4502 = !{!221, !4412, !6}
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4420, file: !4414, line: 167, baseType: !4504, size: 64, offset: 1280)
!4504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4505, size: 64)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!6, !4434, !53}
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4420, file: !4414, line: 168, baseType: !4508, size: 64, offset: 1344)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!6, !4412}
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4413, file: !4414, line: 44, baseType: !62, size: 64, offset: 128)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4413, file: !4414, line: 45, baseType: !12, size: 128, offset: 192)
!4513 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4413, file: !4414, line: 46, baseType: !12, size: 128, offset: 320)
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4413, file: !4414, line: 47, baseType: !107, size: 8, offset: 448)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !63, file: !64, line: 776, baseType: !6, size: 32, offset: 5120)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !63, file: !64, line: 778, baseType: !387, size: 32, offset: 5152)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !63, file: !64, line: 779, baseType: !300, size: 32, offset: 5184)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !63, file: !64, line: 781, baseType: !83, size: 32, offset: 5216)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !63, file: !64, line: 782, baseType: !12, size: 128, offset: 5248)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !63, file: !64, line: 784, baseType: !4521, size: 64, offset: 5376)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4523)
!4523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4524, line: 52, size: 768, elements: !4525)
!4524 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4525 = !{!4526, !4527, !4528, !4529, !4530, !4534, !4538, !4539, !4540, !4541, !4545, !4549}
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4523, file: !4524, line: 53, baseType: !71, size: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4523, file: !4524, line: 55, baseType: !201, size: 64, offset: 64)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4523, file: !4524, line: 56, baseType: !201, size: 64, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4523, file: !4524, line: 58, baseType: !4113, size: 64, offset: 192)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4523, file: !4524, line: 59, baseType: !4531, size: 64, offset: 256)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = !DISubroutineType(types: !4533)
!4533 = !{!149, !4116, !4122}
!4534 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4523, file: !4524, line: 61, baseType: !4535, size: 64, offset: 320)
!4535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4536, size: 64)
!4536 = !DISubroutineType(types: !4537)
!4537 = !{null, !4521}
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4523, file: !4524, line: 62, baseType: !4124, size: 64, offset: 384)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4523, file: !4524, line: 64, baseType: !4134, size: 64, offset: 448)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4523, file: !4524, line: 66, baseType: !3962, size: 64, offset: 512)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4523, file: !4524, line: 67, baseType: !4542, size: 64, offset: 576)
!4542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4543, size: 64)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!1495, !4116}
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4523, file: !4524, line: 69, baseType: !4546, size: 64, offset: 640)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DISubroutineType(types: !4548)
!4548 = !{null, !4116, !4000, !4001}
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4523, file: !4524, line: 71, baseType: !4128, size: 64, offset: 704)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !63, file: !64, line: 785, baseType: !201, size: 64, offset: 5440)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !63, file: !64, line: 787, baseType: !4124, size: 64, offset: 5504)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !63, file: !64, line: 788, baseType: !4553, size: 64, offset: 5568)
!4553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4554, size: 64)
!4554 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !64, line: 46, flags: DIFlagFwdDecl)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !63, file: !64, line: 789, baseType: !4556, size: 64, offset: 5632)
!4556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4557, size: 64)
!4557 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !64, line: 48, flags: DIFlagFwdDecl)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !63, file: !64, line: 791, baseType: !4559, size: 64, offset: 5696)
!4559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4560, size: 64)
!4560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !64, line: 597, size: 128, elements: !4561)
!4561 = !{!4562, !4572, !4578, !4584, !4585}
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4560, file: !64, line: 598, baseType: !4563, size: 32)
!4563 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !64, line: 547, baseType: !53, size: 32, elements: !4564)
!4564 = !{!4565, !4566, !4567, !4568, !4569, !4570, !4571}
!4565 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!4566 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!4567 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!4568 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!4569 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!4570 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!4571 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4560, file: !64, line: 599, baseType: !4573, size: 32, offset: 32)
!4573 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !64, line: 564, baseType: !53, size: 32, elements: !4574)
!4574 = !{!4575, !4576, !4577}
!4575 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!4576 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!4577 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4560, file: !64, line: 600, baseType: !4579, size: 32, offset: 64)
!4579 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !64, line: 577, baseType: !53, size: 32, elements: !4580)
!4580 = !{!4581, !4582, !4583}
!4581 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!4582 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!4583 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4560, file: !64, line: 601, baseType: !578, size: 8, offset: 96)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4560, file: !64, line: 602, baseType: !578, size: 8, offset: 104)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !63, file: !64, line: 793, baseType: !4587, size: 32, offset: 5760)
!4587 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !64, line: 503, baseType: !53, size: 32, elements: !4588)
!4588 = !{!4589, !4590, !4591, !4592}
!4589 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!4590 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!4591 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!4592 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !63, file: !64, line: 795, baseType: !578, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !63, file: !64, line: 796, baseType: !578, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !63, file: !64, line: 797, baseType: !578, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !63, file: !64, line: 798, baseType: !578, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !63, file: !64, line: 799, baseType: !578, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4598 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !56, file: !57, line: 73, baseType: !4599, size: 256, offset: 128)
!4599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !56, file: !57, line: 66, size: 256, elements: !4600)
!4600 = !{!4601, !4602, !4603}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4599, file: !57, line: 68, baseType: !12, size: 128)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4599, file: !57, line: 70, baseType: !221, size: 64, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4599, file: !57, line: 72, baseType: !83, size: 32, offset: 192)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !56, file: !57, line: 76, baseType: !4605, size: 64, offset: 384)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4607)
!4607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4608, line: 178, size: 1664, elements: !4609)
!4608 = !DIFile(filename: "./include/drm/drm_drv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1f945ad2d8b16ba8834948006e1f4f23")
!4609 = !{!4610, !4614, !4621, !4625, !4629, !4630, !4631, !4635, !4636, !4642, !4647, !4651, !4656, !4662, !4670, !4685, !4691, !4726, !4727, !4728, !4729, !4730, !4731, !4732, !4733, !4737, !4738}
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !4607, file: !4608, line: 195, baseType: !4611, size: 64)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{!6, !55, !199}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4607, file: !4608, line: 215, baseType: !4615, size: 64, offset: 64)
!4615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4616, size: 64)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!6, !55, !4618}
!4618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4619, size: 64)
!4619 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4620, line: 44, flags: DIFlagFwdDecl)
!4620 = !DIFile(filename: "./include/drm/drm_vma_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5483318cd9ffeb7eed8e930be54b2ae2")
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "postclose", scope: !4607, file: !4608, line: 229, baseType: !4622, size: 64, offset: 128)
!4622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4623, size: 64)
!4623 = !DISubroutineType(types: !4624)
!4624 = !{null, !55, !4618}
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "lastclose", scope: !4607, file: !4608, line: 257, baseType: !4626, size: 64, offset: 192)
!4626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4627, size: 64)
!4627 = !DISubroutineType(types: !4628)
!4628 = !{null, !55}
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "unload", scope: !4607, file: !4608, line: 274, baseType: !4626, size: 64, offset: 256)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4607, file: !4608, line: 286, baseType: !4626, size: 64, offset: 320)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "master_set", scope: !4607, file: !4608, line: 293, baseType: !4632, size: 64, offset: 384)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4633, size: 64)
!4633 = !DISubroutineType(types: !4634)
!4634 = !{null, !55, !4618, !578}
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "master_drop", scope: !4607, file: !4608, line: 300, baseType: !4622, size: 64, offset: 448)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !4607, file: !4608, line: 307, baseType: !4637, size: 64, offset: 512)
!4637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4638, size: 64)
!4638 = !DISubroutineType(types: !4639)
!4639 = !{null, !4640}
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !57, line: 13, flags: DIFlagFwdDecl)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "gem_create_object", scope: !4607, file: !4608, line: 316, baseType: !4643, size: 64, offset: 576)
!4643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4644, size: 64)
!4644 = !DISubroutineType(types: !4645)
!4645 = !{!4646, !55, !196}
!4646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "prime_handle_to_fd", scope: !4607, file: !4608, line: 324, baseType: !4648, size: 64, offset: 640)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DISubroutineType(types: !4650)
!4650 = !{!6, !55, !4618, !1132, !1132, !627}
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "prime_fd_to_handle", scope: !4607, file: !4608, line: 331, baseType: !4652, size: 64, offset: 704)
!4652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4653, size: 64)
!4653 = !DISubroutineType(types: !4654)
!4654 = !{!6, !55, !4618, !6, !4655}
!4655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import", scope: !4607, file: !4608, line: 341, baseType: !4657, size: 64, offset: 768)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = !DISubroutineType(types: !4659)
!4659 = !{!4646, !55, !4660}
!4660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4661, size: 64)
!4661 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf", file: !36, line: 121, flags: DIFlagFwdDecl)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "gem_prime_import_sg_table", scope: !4607, file: !4608, line: 349, baseType: !4663, size: 64, offset: 832)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{!4646, !55, !4666, !4668}
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_buf_attachment", file: !36, line: 364, flags: DIFlagFwdDecl)
!4668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4669, size: 64)
!4669 = !DICompositeType(tag: DW_TAG_structure_type, name: "sg_table", file: !36, line: 153, flags: DIFlagFwdDecl)
!4670 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_create", scope: !4607, file: !4608, line: 375, baseType: !4671, size: 64, offset: 896)
!4671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4672, size: 64)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{!6, !4618, !55, !4674}
!4674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4675, size: 64)
!4675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_create_dumb", file: !4676, line: 1036, size: 256, elements: !4677)
!4676 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!4677 = !{!4678, !4679, !4680, !4681, !4682, !4683, !4684}
!4678 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4675, file: !4676, line: 1037, baseType: !301, size: 32)
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4675, file: !4676, line: 1038, baseType: !301, size: 32, offset: 32)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !4675, file: !4676, line: 1039, baseType: !301, size: 32, offset: 64)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4675, file: !4676, line: 1040, baseType: !301, size: 32, offset: 96)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !4675, file: !4676, line: 1042, baseType: !301, size: 32, offset: 128)
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "pitch", scope: !4675, file: !4676, line: 1043, baseType: !301, size: 32, offset: 160)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4675, file: !4676, line: 1044, baseType: !305, size: 64, offset: 192)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "dumb_map_offset", scope: !4607, file: !4608, line: 393, baseType: !4686, size: 64, offset: 960)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{!6, !4618, !55, !1132, !4689}
!4689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4690, size: 64)
!4690 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !13, line: 113, baseType: !304)
!4691 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !4607, file: !4608, line: 402, baseType: !4692, size: 64, offset: 1024)
!4692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4693, size: 64)
!4693 = !DISubroutineType(types: !4694)
!4694 = !{null, !4695, !4618}
!4695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4696, size: 64)
!4696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !4697, line: 76, size: 256, elements: !4698)
!4697 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!4698 = !{!4699, !4720, !4724, !4725}
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4696, file: !4697, line: 78, baseType: !4700, size: 64)
!4700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4701, size: 64)
!4701 = !DISubroutineType(types: !4702)
!4702 = !{null, !4695, !4703}
!4703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4704, size: 64)
!4704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4705, line: 79, size: 128, elements: !4706)
!4705 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4706 = !{!4707, !4708}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4704, file: !4705, line: 80, baseType: !71, size: 64)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4704, file: !4705, line: 81, baseType: !4709, size: 64, offset: 64)
!4709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4710, size: 64)
!4710 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4711, line: 5, baseType: !4712)
!4711 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4713)
!4713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4714, size: 192, elements: !2472)
!4714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4715)
!4715 = !{!4716, !4717, !4718, !4719}
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4714, file: !3, baseType: !53, size: 32)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4714, file: !3, baseType: !53, size: 32, offset: 32)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4714, file: !3, baseType: !221, size: 64, offset: 64)
!4719 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4714, file: !3, baseType: !221, size: 64, offset: 128)
!4720 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4696, file: !4697, line: 79, baseType: !4721, size: 64, offset: 64)
!4721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4722, size: 64)
!4722 = !DISubroutineType(types: !4723)
!4723 = !{null, !4695, !71}
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4696, file: !4697, line: 80, baseType: !221, size: 64, offset: 128)
!4725 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4696, file: !4697, line: 81, baseType: !71, size: 64, offset: 192)
!4726 = !DIDerivedType(tag: DW_TAG_member, name: "major", scope: !4607, file: !4608, line: 405, baseType: !6, size: 32, offset: 1088)
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "minor", scope: !4607, file: !4608, line: 407, baseType: !6, size: 32, offset: 1120)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "patchlevel", scope: !4607, file: !4608, line: 409, baseType: !6, size: 32, offset: 1152)
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4607, file: !4608, line: 411, baseType: !149, size: 64, offset: 1216)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !4607, file: !4608, line: 413, baseType: !149, size: 64, offset: 1280)
!4731 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !4607, file: !4608, line: 415, baseType: !149, size: 64, offset: 1344)
!4732 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !4607, file: !4608, line: 423, baseType: !300, size: 32, offset: 1408)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "ioctls", scope: !4607, file: !4608, line: 433, baseType: !4734, size: 64, offset: 1472)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4736)
!4736 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_ioctl_desc", file: !4608, line: 433, flags: DIFlagFwdDecl)
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "num_ioctls", scope: !4607, file: !4608, line: 435, baseType: !6, size: 32, offset: 1536)
!4738 = !DIDerivedType(tag: DW_TAG_member, name: "fops", scope: !4607, file: !4608, line: 444, baseType: !1284, size: 64, offset: 1600)
!4739 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !56, file: !57, line: 88, baseType: !221, size: 64, offset: 448)
!4740 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !56, file: !57, line: 98, baseType: !4640, size: 64, offset: 512)
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !56, file: !57, line: 107, baseType: !4640, size: 64, offset: 576)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !56, file: !57, line: 110, baseType: !4640, size: 64, offset: 640)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !56, file: !57, line: 117, baseType: !578, size: 8, offset: 704)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !56, file: !57, line: 125, baseType: !4745, size: 64, offset: 768)
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4747, line: 65, size: 1280, elements: !4748)
!4747 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4748 = !{!4749, !4750, !4751, !4752, !4753, !4760, !4761, !4762, !4763, !4764, !4765, !4766}
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4746, file: !4747, line: 66, baseType: !39, size: 32)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4746, file: !4747, line: 67, baseType: !55, size: 64, offset: 64)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4746, file: !4747, line: 72, baseType: !149, size: 64, offset: 128)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4746, file: !4747, line: 77, baseType: !6, size: 32, offset: 192)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4746, file: !4747, line: 82, baseType: !4754, size: 192, offset: 256)
!4754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !4755, line: 19, size: 192, elements: !4756)
!4755 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!4756 = !{!4757, !4758, !4759}
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !4754, file: !4755, line: 20, baseType: !3704, size: 128)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !4754, file: !4755, line: 21, baseType: !53, size: 32, offset: 128)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !4754, file: !4755, line: 22, baseType: !53, size: 32, offset: 160)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4746, file: !4747, line: 83, baseType: !221, size: 64, offset: 448)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4746, file: !4747, line: 99, baseType: !4745, size: 64, offset: 512)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4746, file: !4747, line: 107, baseType: !6, size: 32, offset: 576)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4746, file: !4747, line: 116, baseType: !12, size: 128, offset: 640)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4746, file: !4747, line: 128, baseType: !12, size: 128, offset: 768)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4746, file: !4747, line: 139, baseType: !4754, size: 192, offset: 896)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4746, file: !4747, line: 147, baseType: !4754, size: 192, offset: 1088)
!4767 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !56, file: !57, line: 135, baseType: !300, size: 32, offset: 832)
!4768 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !56, file: !57, line: 143, baseType: !578, size: 8, offset: 864)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !56, file: !57, line: 146, baseType: !231, size: 64, offset: 896)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !56, file: !57, line: 149, baseType: !149, size: 64, offset: 960)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !56, file: !57, line: 159, baseType: !498, size: 256, offset: 1024)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !56, file: !57, line: 166, baseType: !498, size: 256, offset: 1280)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !56, file: !57, line: 174, baseType: !48, size: 32, offset: 1536)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !56, file: !57, line: 177, baseType: !498, size: 256, offset: 1600)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !56, file: !57, line: 183, baseType: !12, size: 128, offset: 1856)
!4776 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !56, file: !57, line: 191, baseType: !12, size: 128, offset: 1984)
!4777 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !56, file: !57, line: 198, baseType: !498, size: 256, offset: 2112)
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !56, file: !57, line: 205, baseType: !12, size: 128, offset: 2368)
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !56, file: !57, line: 220, baseType: !578, size: 8, offset: 2496)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !56, file: !57, line: 230, baseType: !4781, size: 64, offset: 2560)
!4781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4782, size: 64)
!4782 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !57, line: 15, flags: DIFlagFwdDecl)
!4783 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !56, file: !57, line: 237, baseType: !83, size: 32, offset: 2624)
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !56, file: !57, line: 242, baseType: !83, size: 32, offset: 2656)
!4785 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !56, file: !57, line: 265, baseType: !300, size: 32, offset: 2688)
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !56, file: !57, line: 268, baseType: !12, size: 128, offset: 2752)
!4787 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !56, file: !57, line: 276, baseType: !83, size: 32, offset: 2880)
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !56, file: !57, line: 279, baseType: !53, size: 32, offset: 2912)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !56, file: !57, line: 282, baseType: !4790, size: 8704, offset: 2944)
!4790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4791, line: 375, size: 8704, elements: !4792)
!4791 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4792 = !{!4793, !4794, !4813, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4838, !4839, !4840, !4841, !4842, !4843, !4844, !4845, !4846, !4847, !4848, !4849, !4850, !4851, !4852, !4853, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4936, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989, !4990}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4790, file: !4791, line: 386, baseType: !498, size: 256)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4790, file: !4791, line: 396, baseType: !4795, size: 448, offset: 256)
!4795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4796, line: 85, size: 448, elements: !4797)
!4796 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4797 = !{!4798, !4812}
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4795, file: !4796, line: 89, baseType: !4799, size: 320)
!4799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4800, line: 47, size: 320, elements: !4801)
!4800 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4801 = !{!4802, !4803}
!4802 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4799, file: !4800, line: 48, baseType: !498, size: 256)
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4799, file: !4800, line: 49, baseType: !4804, size: 64, offset: 256)
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4800, line: 55, size: 192, elements: !4806)
!4806 = !{!4807, !4808, !4809, !4810, !4811}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4805, file: !4800, line: 56, baseType: !2228, size: 64)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4805, file: !4800, line: 57, baseType: !199, size: 64, offset: 64)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4805, file: !4800, line: 58, baseType: !53, size: 32, offset: 128)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4805, file: !4800, line: 59, baseType: !119, size: 16, offset: 160)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4805, file: !4800, line: 60, baseType: !119, size: 16, offset: 176)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4795, file: !4796, line: 95, baseType: !12, size: 128, offset: 320)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4790, file: !4791, line: 406, baseType: !4814, size: 64, offset: 704)
!4814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4815, size: 64)
!4815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4796, line: 46, size: 512, elements: !4816)
!4816 = !{!4817, !4818, !4820, !4823, !4824, !4825}
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4815, file: !4796, line: 48, baseType: !4805, size: 192)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4815, file: !4796, line: 55, baseType: !4819, size: 64, offset: 192)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4795, size: 64)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4815, file: !4796, line: 61, baseType: !4821, size: 32, offset: 256)
!4821 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4822, line: 27, baseType: !300)
!4822 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4815, file: !4796, line: 66, baseType: !12, size: 128, offset: 320)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4815, file: !4796, line: 71, baseType: !578, size: 8, offset: 448)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4815, file: !4796, line: 74, baseType: !578, size: 8, offset: 456)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4790, file: !4791, line: 414, baseType: !498, size: 256, offset: 768)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4790, file: !4791, line: 422, baseType: !4754, size: 192, offset: 1024)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4790, file: !4791, line: 430, baseType: !4754, size: 192, offset: 1216)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4790, file: !4791, line: 433, baseType: !498, size: 256, offset: 1408)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4790, file: !4791, line: 435, baseType: !6, size: 32, offset: 1664)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4790, file: !4791, line: 437, baseType: !12, size: 128, offset: 1728)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4790, file: !4791, line: 443, baseType: !83, size: 32, offset: 1856)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4790, file: !4791, line: 448, baseType: !6, size: 32, offset: 1888)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4790, file: !4791, line: 452, baseType: !4835, size: 128, offset: 1920)
!4835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !4755, line: 246, size: 128, elements: !4836)
!4836 = !{!4837}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4835, file: !4755, line: 247, baseType: !3704, size: 128)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4790, file: !4791, line: 460, baseType: !12, size: 128, offset: 2048)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4790, file: !4791, line: 470, baseType: !3212, size: 64, offset: 2176)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4790, file: !4791, line: 474, baseType: !758, size: 256, offset: 2240)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4790, file: !4791, line: 482, baseType: !6, size: 32, offset: 2496)
!4842 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4790, file: !4791, line: 490, baseType: !12, size: 128, offset: 2560)
!4843 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4790, file: !4791, line: 499, baseType: !6, size: 32, offset: 2688)
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4790, file: !4791, line: 506, baseType: !12, size: 128, offset: 2752)
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4790, file: !4791, line: 514, baseType: !6, size: 32, offset: 2880)
!4846 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4790, file: !4791, line: 521, baseType: !12, size: 128, offset: 2944)
!4847 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4790, file: !4791, line: 530, baseType: !12, size: 128, offset: 3072)
!4848 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4790, file: !4791, line: 539, baseType: !12, size: 128, offset: 3200)
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4790, file: !4791, line: 541, baseType: !6, size: 32, offset: 3328)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4790, file: !4791, line: 541, baseType: !6, size: 32, offset: 3360)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4790, file: !4791, line: 542, baseType: !6, size: 32, offset: 3392)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4790, file: !4791, line: 542, baseType: !6, size: 32, offset: 3424)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4790, file: !4791, line: 543, baseType: !4854, size: 64, offset: 3456)
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4856)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4791, line: 47, size: 576, elements: !4857)
!4857 = !{!4858, !4879, !4886, !4887, !4895, !4901, !4905, !4909, !4913}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4856, file: !4791, line: 83, baseType: !4859, size: 64)
!4859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4860, size: 64)
!4860 = !DISubroutineType(types: !4861)
!4861 = !{!4862, !55, !4618, !4864}
!4862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4863, size: 64)
!4863 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4791, line: 83, flags: DIFlagFwdDecl)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4866)
!4866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !4676, line: 703, size: 832, elements: !4867)
!4867 = !{!4868, !4869, !4870, !4871, !4872, !4873, !4875, !4876, !4877}
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4866, file: !4676, line: 705, baseType: !301, size: 32)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4866, file: !4676, line: 707, baseType: !301, size: 32, offset: 32)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4866, file: !4676, line: 709, baseType: !301, size: 32, offset: 64)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4866, file: !4676, line: 714, baseType: !301, size: 32, offset: 96)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4866, file: !4676, line: 719, baseType: !301, size: 32, offset: 128)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4866, file: !4676, line: 725, baseType: !4874, size: 128, offset: 160)
!4874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !301, size: 128, elements: !728)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4866, file: !4676, line: 727, baseType: !4874, size: 128, offset: 288)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4866, file: !4676, line: 729, baseType: !4874, size: 128, offset: 416)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4866, file: !4676, line: 735, baseType: !4878, size: 256, offset: 576)
!4878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 256, elements: !728)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4856, file: !4791, line: 98, baseType: !4880, size: 64, offset: 64)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!4883, !4864}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4885)
!4885 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4791, line: 38, flags: DIFlagFwdDecl)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4856, file: !4791, line: 114, baseType: !4626, size: 64, offset: 128)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4856, file: !4791, line: 124, baseType: !4888, size: 64, offset: 192)
!4888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4889, size: 64)
!4889 = !DISubroutineType(types: !4890)
!4890 = !{!4891, !55, !4892}
!4891 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !4791, line: 124, flags: DIFlagFwdDecl)
!4892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4893, size: 64)
!4893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4894)
!4894 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !4791, line: 39, flags: DIFlagFwdDecl)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4856, file: !4791, line: 201, baseType: !4896, size: 64, offset: 256)
!4896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4897 = !DISubroutineType(types: !4898)
!4898 = !{!6, !55, !4899}
!4899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4900, size: 64)
!4900 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4791, line: 36, flags: DIFlagFwdDecl)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4856, file: !4791, line: 283, baseType: !4902, size: 64, offset: 320)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4903, size: 64)
!4903 = !DISubroutineType(types: !4904)
!4904 = !{!6, !55, !4899, !578}
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4856, file: !4791, line: 302, baseType: !4906, size: 64, offset: 384)
!4906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4907, size: 64)
!4907 = !DISubroutineType(types: !4908)
!4908 = !{!4899, !55}
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4856, file: !4791, line: 323, baseType: !4910, size: 64, offset: 448)
!4910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4911, size: 64)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{null, !4899}
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4856, file: !4791, line: 338, baseType: !4910, size: 64, offset: 512)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4790, file: !4791, line: 546, baseType: !578, size: 8, offset: 3520)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4790, file: !4791, line: 547, baseType: !578, size: 8, offset: 3528)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4790, file: !4791, line: 548, baseType: !578, size: 8, offset: 3536)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4790, file: !4791, line: 549, baseType: !815, size: 704, offset: 3584)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4790, file: !4791, line: 557, baseType: !498, size: 256, offset: 4288)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4790, file: !4791, line: 565, baseType: !12, size: 128, offset: 4544)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4790, file: !4791, line: 573, baseType: !4921, size: 64, offset: 4672)
!4921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4922, size: 64)
!4922 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4791, line: 573, flags: DIFlagFwdDecl)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4790, file: !4791, line: 578, baseType: !4921, size: 64, offset: 4736)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4790, file: !4791, line: 583, baseType: !4921, size: 64, offset: 4800)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4790, file: !4791, line: 589, baseType: !4921, size: 64, offset: 4864)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4790, file: !4791, line: 594, baseType: !4921, size: 64, offset: 4928)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4790, file: !4791, line: 599, baseType: !4921, size: 64, offset: 4992)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4790, file: !4791, line: 604, baseType: !4921, size: 64, offset: 5056)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4790, file: !4791, line: 609, baseType: !4921, size: 64, offset: 5120)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4790, file: !4791, line: 614, baseType: !4921, size: 64, offset: 5184)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4790, file: !4791, line: 619, baseType: !4921, size: 64, offset: 5248)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4790, file: !4791, line: 624, baseType: !4921, size: 64, offset: 5312)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4790, file: !4791, line: 629, baseType: !4921, size: 64, offset: 5376)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4790, file: !4791, line: 634, baseType: !4921, size: 64, offset: 5440)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4790, file: !4791, line: 639, baseType: !4921, size: 64, offset: 5504)
!4936 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4790, file: !4791, line: 644, baseType: !4921, size: 64, offset: 5568)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4790, file: !4791, line: 649, baseType: !4921, size: 64, offset: 5632)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4790, file: !4791, line: 655, baseType: !4921, size: 64, offset: 5696)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4790, file: !4791, line: 660, baseType: !4921, size: 64, offset: 5760)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4790, file: !4791, line: 669, baseType: !4921, size: 64, offset: 5824)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4790, file: !4791, line: 675, baseType: !4921, size: 64, offset: 5888)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4790, file: !4791, line: 681, baseType: !4921, size: 64, offset: 5952)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4790, file: !4791, line: 686, baseType: !4921, size: 64, offset: 6016)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4790, file: !4791, line: 692, baseType: !4921, size: 64, offset: 6080)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4790, file: !4791, line: 697, baseType: !4921, size: 64, offset: 6144)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4790, file: !4791, line: 703, baseType: !4921, size: 64, offset: 6208)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4790, file: !4791, line: 709, baseType: !4921, size: 64, offset: 6272)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4790, file: !4791, line: 714, baseType: !4921, size: 64, offset: 6336)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4790, file: !4791, line: 722, baseType: !4921, size: 64, offset: 6400)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4790, file: !4791, line: 728, baseType: !4921, size: 64, offset: 6464)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4790, file: !4791, line: 734, baseType: !4921, size: 64, offset: 6528)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4790, file: !4791, line: 739, baseType: !4921, size: 64, offset: 6592)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4790, file: !4791, line: 744, baseType: !4921, size: 64, offset: 6656)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4790, file: !4791, line: 749, baseType: !4921, size: 64, offset: 6720)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4790, file: !4791, line: 754, baseType: !4921, size: 64, offset: 6784)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4790, file: !4791, line: 759, baseType: !4921, size: 64, offset: 6848)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4790, file: !4791, line: 764, baseType: !4921, size: 64, offset: 6912)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4790, file: !4791, line: 769, baseType: !4921, size: 64, offset: 6976)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4790, file: !4791, line: 774, baseType: !4921, size: 64, offset: 7040)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4790, file: !4791, line: 778, baseType: !4921, size: 64, offset: 7104)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4790, file: !4791, line: 784, baseType: !4921, size: 64, offset: 7168)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4790, file: !4791, line: 789, baseType: !4921, size: 64, offset: 7232)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4790, file: !4791, line: 794, baseType: !4921, size: 64, offset: 7296)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4790, file: !4791, line: 799, baseType: !4921, size: 64, offset: 7360)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4790, file: !4791, line: 804, baseType: !4921, size: 64, offset: 7424)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4790, file: !4791, line: 810, baseType: !4921, size: 64, offset: 7488)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4790, file: !4791, line: 816, baseType: !4921, size: 64, offset: 7552)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4790, file: !4791, line: 821, baseType: !4921, size: 64, offset: 7616)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4790, file: !4791, line: 827, baseType: !4921, size: 64, offset: 7680)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4790, file: !4791, line: 832, baseType: !4921, size: 64, offset: 7744)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4790, file: !4791, line: 839, baseType: !4921, size: 64, offset: 7808)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4790, file: !4791, line: 846, baseType: !4921, size: 64, offset: 7872)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4790, file: !4791, line: 853, baseType: !4921, size: 64, offset: 7936)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4790, file: !4791, line: 861, baseType: !4921, size: 64, offset: 8000)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4790, file: !4791, line: 869, baseType: !4921, size: 64, offset: 8064)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4790, file: !4791, line: 876, baseType: !4921, size: 64, offset: 8128)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4790, file: !4791, line: 882, baseType: !4921, size: 64, offset: 8192)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4790, file: !4791, line: 888, baseType: !4921, size: 64, offset: 8256)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4790, file: !4791, line: 891, baseType: !1132, size: 32, offset: 8320)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4790, file: !4791, line: 891, baseType: !1132, size: 32, offset: 8352)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4790, file: !4791, line: 899, baseType: !578, size: 8, offset: 8384)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4790, file: !4791, line: 913, baseType: !578, size: 8, offset: 8392)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4790, file: !4791, line: 919, baseType: !578, size: 8, offset: 8400)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4790, file: !4791, line: 929, baseType: !578, size: 8, offset: 8408)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4790, file: !4791, line: 937, baseType: !578, size: 8, offset: 8416)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4790, file: !4791, line: 943, baseType: !4921, size: 64, offset: 8448)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4790, file: !4791, line: 946, baseType: !1132, size: 32, offset: 8512)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4790, file: !4791, line: 946, baseType: !1132, size: 32, offset: 8544)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4790, file: !4791, line: 955, baseType: !4899, size: 64, offset: 8576)
!4990 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4790, file: !4791, line: 957, baseType: !4991, size: 64, offset: 8640)
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4993)
!4993 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4791, line: 957, flags: DIFlagFwdDecl)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !56, file: !57, line: 285, baseType: !498, size: 256, offset: 11648)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !56, file: !57, line: 288, baseType: !4754, size: 192, offset: 11904)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !56, file: !57, line: 291, baseType: !4997, size: 64, offset: 12096)
!4997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4998, size: 64)
!4998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !4620, line: 59, size: 1984, elements: !4999)
!4999 = !{!5000, !5001}
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !4998, file: !4620, line: 60, baseType: !1006, size: 64)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "vm_addr_space_mm", scope: !4998, file: !4620, line: 61, baseType: !5002, size: 1920, offset: 64)
!5002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm", file: !5003, line: 190, size: 1920, elements: !5004)
!5003 = !DIFile(filename: "./include/drm/drm_mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "84c90dff9a569f9267103742808582e0")
!5004 = !{!5005, !5027, !5028, !5029, !5030, !5031, !5032}
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "color_adjust", scope: !5002, file: !5003, line: 200, baseType: !5006, size: 64)
!5006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5007, size: 64)
!5007 = !DISubroutineType(types: !5008)
!5008 = !{null, !5009, !199, !4386, !4386}
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5010, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5011)
!5011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mm_node", file: !5003, line: 157, size: 1344, elements: !5012)
!5012 = !{!5013, !5014, !5015, !5016, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026}
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !5011, file: !5003, line: 159, baseType: !199, size: 64)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5011, file: !5003, line: 161, baseType: !304, size: 64, offset: 64)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5011, file: !5003, line: 163, baseType: !304, size: 64, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5011, file: !5003, line: 165, baseType: !5017, size: 64, offset: 192)
!5017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5002, size: 64)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !5011, file: !5003, line: 166, baseType: !12, size: 128, offset: 256)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5011, file: !5003, line: 167, baseType: !12, size: 128, offset: 384)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5011, file: !5003, line: 168, baseType: !610, size: 192, align: 64, offset: 512)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_size", scope: !5011, file: !5003, line: 169, baseType: !610, size: 192, align: 64, offset: 704)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "rb_hole_addr", scope: !5011, file: !5003, line: 170, baseType: !610, size: 192, align: 64, offset: 896)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "__subtree_last", scope: !5011, file: !5003, line: 171, baseType: !304, size: 64, offset: 1088)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "hole_size", scope: !5011, file: !5003, line: 172, baseType: !304, size: 64, offset: 1152)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "subtree_max_hole", scope: !5011, file: !5003, line: 173, baseType: !304, size: 64, offset: 1216)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5011, file: !5003, line: 174, baseType: !199, size: 64, offset: 1280)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "hole_stack", scope: !5002, file: !5003, line: 206, baseType: !12, size: 128, offset: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "head_node", scope: !5002, file: !5003, line: 209, baseType: !5011, size: 1344, offset: 192)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "interval_tree", scope: !5002, file: !5003, line: 211, baseType: !2403, size: 128, offset: 1536)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "holes_size", scope: !5002, file: !5003, line: 212, baseType: !2403, size: 128, offset: 1664)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "holes_addr", scope: !5002, file: !5003, line: 213, baseType: !2406, size: 64, offset: 1792)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "scan_active", scope: !5002, file: !5003, line: 215, baseType: !199, size: 64, offset: 1856)
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !56, file: !57, line: 294, baseType: !5034, size: 64, offset: 12160)
!5034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5035, size: 64)
!5035 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !57, line: 17, flags: DIFlagFwdDecl)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !56, file: !57, line: 304, baseType: !5037, size: 32, offset: 12224)
!5037 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !57, line: 30, baseType: !53, size: 32, elements: !5038)
!5038 = !{!5039, !5040, !5041, !5042}
!5039 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!5040 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!5041 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!5042 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !56, file: !57, line: 312, baseType: !5044, size: 64, offset: 12288)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !57, line: 18, flags: DIFlagFwdDecl)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !56, file: !57, line: 319, baseType: !498, size: 256, offset: 12352)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !56, file: !57, line: 327, baseType: !12, size: 128, offset: 12608)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "filp", scope: !35, file: !36, line: 302, baseType: !1293, size: 64, offset: 128)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "vma_node", scope: !35, file: !36, line: 314, baseType: !5050, size: 1536, offset: 192)
!5050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_node", file: !4620, line: 52, size: 1536, elements: !5051)
!5051 = !{!5052, !5053, !5054, !5055}
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !5050, file: !4620, line: 53, baseType: !1006, size: 64)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "vm_node", scope: !5050, file: !4620, line: 54, baseType: !5011, size: 1344, offset: 64)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "vm_files", scope: !5050, file: !4620, line: 55, baseType: !2406, size: 64, offset: 1408)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "driver_private", scope: !5050, file: !4620, line: 56, baseType: !221, size: 64, offset: 1472)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !35, file: !36, line: 322, baseType: !196, size: 64, offset: 1728)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !35, file: !36, line: 331, baseType: !6, size: 32, offset: 1792)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "dma_buf", scope: !35, file: !36, line: 344, baseType: !4660, size: 64, offset: 1856)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "import_attach", scope: !35, file: !36, line: 364, baseType: !4666, size: 64, offset: 1920)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !35, file: !36, line: 373, baseType: !5061, size: 64, offset: 1984)
!5061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5062, size: 64)
!5062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv", file: !5063, line: 155, size: 384, elements: !5064)
!5063 = !DIFile(filename: "./include/linux/dma-resv.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "33eb7b47491fa42a2c4bcb5c661d5780")
!5064 = !{!5065, !5066}
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5062, file: !5063, line: 166, baseType: !4799, size: 320)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "fences", scope: !5062, file: !5063, line: 178, baseType: !5067, size: 64, offset: 320)
!5067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5068, size: 64)
!5068 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_resv_list", file: !5063, line: 50, flags: DIFlagFwdDecl)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_resv", scope: !35, file: !36, line: 382, baseType: !5062, size: 384, offset: 2048)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "gpuva", scope: !35, file: !36, line: 398, baseType: !5071, size: 128, offset: 2432)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !35, file: !36, line: 392, size: 128, elements: !5072)
!5072 = !{!5073}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5071, file: !36, line: 393, baseType: !12, size: 128)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !35, file: !36, line: 409, baseType: !5075, size: 64, offset: 2560)
!5075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5076, size: 64)
!5076 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5077)
!5077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_object_funcs", file: !36, line: 69, size: 896, elements: !5078)
!5078 = !{!5079, !5083, !5087, !5091, !5097, !5101, !5105, !5106, !5110, !5124, !5128, !5132, !5133, !5141}
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5077, file: !36, line: 77, baseType: !5080, size: 64)
!5080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5081, size: 64)
!5081 = !DISubroutineType(types: !5082)
!5082 = !{null, !4646}
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !5077, file: !36, line: 86, baseType: !5084, size: 64, offset: 64)
!5084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5085, size: 64)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!6, !4646, !4618}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !5077, file: !36, line: 95, baseType: !5088, size: 64, offset: 128)
!5088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5089, size: 64)
!5089 = !DISubroutineType(types: !5090)
!5090 = !{null, !4646, !4618}
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "print_info", scope: !5077, file: !36, line: 110, baseType: !5092, size: 64, offset: 192)
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{null, !4695, !53, !5095}
!5095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5096, size: 64)
!5096 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "export", scope: !5077, file: !36, line: 121, baseType: !5098, size: 64, offset: 256)
!5098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5099, size: 64)
!5099 = !DISubroutineType(types: !5100)
!5100 = !{!4660, !4646, !6}
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "pin", scope: !5077, file: !36, line: 130, baseType: !5102, size: 64, offset: 320)
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DISubroutineType(types: !5104)
!5104 = !{!6, !4646}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "unpin", scope: !5077, file: !36, line: 139, baseType: !5080, size: 64, offset: 384)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "get_sg_table", scope: !5077, file: !36, line: 153, baseType: !5107, size: 64, offset: 448)
!5107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5108, size: 64)
!5108 = !DISubroutineType(types: !5109)
!5109 = !{!4668, !4646}
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "vmap", scope: !5077, file: !36, line: 163, baseType: !5111, size: 64, offset: 512)
!5111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5112 = !DISubroutineType(types: !5113)
!5113 = !{!6, !4646, !5114}
!5114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iosys_map", file: !5116, line: 109, size: 128, elements: !5117)
!5116 = !DIFile(filename: "./include/linux/iosys-map.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c97d7374529d1c22dbeacc3bfd30605")
!5117 = !{!5118, !5123}
!5118 = !DIDerivedType(tag: DW_TAG_member, scope: !5115, file: !5116, line: 110, baseType: !5119, size: 64)
!5119 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5115, file: !5116, line: 110, size: 64, elements: !5120)
!5120 = !{!5121, !5122}
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr_iomem", scope: !5119, file: !5116, line: 111, baseType: !221, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !5119, file: !5116, line: 112, baseType: !221, size: 64)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !5115, file: !5116, line: 114, baseType: !578, size: 8, offset: 64)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "vunmap", scope: !5077, file: !36, line: 173, baseType: !5125, size: 64, offset: 576)
!5125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5126, size: 64)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{null, !4646, !5114}
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !5077, file: !36, line: 186, baseType: !5129, size: 64, offset: 640)
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!6, !4646, !1367}
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "evict", scope: !5077, file: !36, line: 196, baseType: !5102, size: 64, offset: 704)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5077, file: !36, line: 209, baseType: !5134, size: 64, offset: 768)
!5134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5135, size: 64)
!5135 = !DISubroutineType(types: !5136)
!5136 = !{!5137, !4646}
!5137 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_gem_object_status", file: !36, line: 61, baseType: !53, size: 32, elements: !5138)
!5138 = !{!5139, !5140}
!5139 = !DIEnumerator(name: "DRM_GEM_OBJECT_RESIDENT", value: 1)
!5140 = !DIEnumerator(name: "DRM_GEM_OBJECT_PURGEABLE", value: 2)
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !5077, file: !36, line: 218, baseType: !1565, size: 64, offset: 832)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "lru_node", scope: !35, file: !36, line: 416, baseType: !12, size: 128, offset: 2624)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !35, file: !36, line: 423, baseType: !5144, size: 64, offset: 2752)
!5144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5145, size: 64)
!5145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_gem_lru", file: !36, line: 230, size: 256, elements: !5146)
!5146 = !{!5147, !5149, !5150}
!5147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5145, file: !36, line: 238, baseType: !5148, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5145, file: !36, line: 246, baseType: !185, size: 64, offset: 64)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !5145, file: !36, line: 253, baseType: !12, size: 128, offset: 128)
!5151 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !31, file: !32, line: 104, baseType: !7, size: 64, offset: 2816)
!5152 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !31, file: !32, line: 105, baseType: !5153, size: 32, offset: 2880)
!5153 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_bo_type", file: !32, line: 67, baseType: !53, size: 32, elements: !5154)
!5154 = !{!5155, !5156, !5157}
!5155 = !DIEnumerator(name: "ttm_bo_type_device", value: 0)
!5156 = !DIEnumerator(name: "ttm_bo_type_kernel", value: 1)
!5157 = !DIEnumerator(name: "ttm_bo_type_sg", value: 2)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "page_alignment", scope: !31, file: !32, line: 106, baseType: !1132, size: 32, offset: 2912)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !31, file: !32, line: 107, baseType: !5160, size: 64, offset: 2944)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{null, !30}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !31, file: !32, line: 112, baseType: !39, size: 32, offset: 3008)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !31, file: !32, line: 117, baseType: !5165, size: 64, offset: 3072)
!5165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5166, size: 64)
!5166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource", file: !5167, line: 209, size: 576, elements: !5168)
!5167 = !DIFile(filename: "./include/drm/ttm/ttm_resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9381c1bbd30ebfc9159e3e67f7545347")
!5168 = !{!5169, !5170, !5171, !5172, !5173, !5186, !5187}
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !5166, file: !5167, line: 210, baseType: !199, size: 64)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5166, file: !5167, line: 211, baseType: !196, size: 64, offset: 64)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !5166, file: !5167, line: 212, baseType: !1132, size: 32, offset: 128)
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !5166, file: !5167, line: 213, baseType: !1132, size: 32, offset: 160)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !5166, file: !5167, line: 214, baseType: !5174, size: 192, offset: 192)
!5174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_bus_placement", file: !5167, line: 189, size: 192, elements: !5175)
!5175 = !{!5176, !5177, !5178, !5179}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !5174, file: !5167, line: 190, baseType: !221, size: 64)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5174, file: !5167, line: 191, baseType: !3199, size: 64, offset: 64)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "is_iomem", scope: !5174, file: !5167, line: 192, baseType: !578, size: 8, offset: 128)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5174, file: !5167, line: 193, baseType: !5180, size: 32, offset: 160)
!5180 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ttm_caching", file: !5181, line: 33, baseType: !53, size: 32, elements: !5182)
!5181 = !DIFile(filename: "./include/drm/ttm/ttm_caching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "19c2ae3004d13ae67685208908fb2e14")
!5182 = !{!5183, !5184, !5185}
!5183 = !DIEnumerator(name: "ttm_uncached", value: 0)
!5184 = !DIEnumerator(name: "ttm_write_combined", value: 1)
!5185 = !DIEnumerator(name: "ttm_cached", value: 2)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "bo", scope: !5166, file: !5167, line: 215, baseType: !30, size: 64, offset: 384)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5166, file: !5167, line: 220, baseType: !12, size: 128, offset: 448)
!5188 = !DIDerivedType(tag: DW_TAG_member, name: "ttm", scope: !31, file: !32, line: 118, baseType: !27, size: 64, offset: 3136)
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "deleted", scope: !31, file: !32, line: 119, baseType: !578, size: 8, offset: 3200)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "bulk_move", scope: !31, file: !32, line: 120, baseType: !5191, size: 64, offset: 3264)
!5191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5192, size: 64)
!5192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move", file: !5167, line: 255, size: 4096, elements: !5193)
!5193 = !{!5194}
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !5192, file: !5167, line: 256, baseType: !5195, size: 4096)
!5195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5196, size: 4096, elements: !5200)
!5196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_lru_bulk_move_pos", file: !5167, line: 242, size: 128, elements: !5197)
!5197 = !{!5198, !5199}
!5198 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !5196, file: !5167, line: 243, baseType: !5165, size: 64)
!5199 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !5196, file: !5167, line: 244, baseType: !5165, size: 64, offset: 64)
!5200 = !{!2388, !729}
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !31, file: !32, line: 121, baseType: !53, size: 32, offset: 3328)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "pin_count", scope: !31, file: !32, line: 122, baseType: !53, size: 32, offset: 3360)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_delete", scope: !31, file: !32, line: 128, baseType: !758, size: 256, offset: 3392)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "sg", scope: !31, file: !32, line: 135, baseType: !4668, size: 64, offset: 3648)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_populate", scope: !21, file: !9, line: 85, baseType: !5206, size: 64, offset: 64)
!5206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5207, size: 64)
!5207 = !DISubroutineType(types: !5208)
!5208 = !{!6, !7, !27, !5209}
!5209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5210, size: 64)
!5210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_operation_ctx", file: !32, line: 178, size: 192, elements: !5211)
!5211 = !{!5212, !5213, !5214, !5215, !5216, !5217, !5218}
!5212 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !5210, file: !32, line: 179, baseType: !578, size: 8)
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "no_wait_gpu", scope: !5210, file: !32, line: 180, baseType: !578, size: 8, offset: 8)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_retry_mayfail", scope: !5210, file: !32, line: 181, baseType: !578, size: 8, offset: 16)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "allow_res_evict", scope: !5210, file: !32, line: 182, baseType: !578, size: 8, offset: 24)
!5216 = !DIDerivedType(tag: DW_TAG_member, name: "force_alloc", scope: !5210, file: !32, line: 183, baseType: !578, size: 8, offset: 32)
!5217 = !DIDerivedType(tag: DW_TAG_member, name: "resv", scope: !5210, file: !32, line: 184, baseType: !5061, size: 64, offset: 64)
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_moved", scope: !5210, file: !32, line: 185, baseType: !4690, size: 64, offset: 128)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_unpopulate", scope: !21, file: !9, line: 96, baseType: !5220, size: 64, offset: 128)
!5220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5221, size: 64)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{null, !7, !27}
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "ttm_tt_destroy", scope: !21, file: !9, line: 108, baseType: !5220, size: 64, offset: 192)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "eviction_valuable", scope: !21, file: !9, line: 119, baseType: !5225, size: 64, offset: 256)
!5225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5226, size: 64)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!578, !30, !5228}
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5230)
!5230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_place", file: !5231, line: 77, size: 128, elements: !5232)
!5231 = !DIFile(filename: "./include/drm/ttm/ttm_placement.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f863dfb010ab9adca021a04ffe4a884")
!5232 = !{!5233, !5234, !5235, !5236}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "fpfn", scope: !5230, file: !5231, line: 78, baseType: !53, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "lpfn", scope: !5230, file: !5231, line: 79, baseType: !53, size: 32, offset: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "mem_type", scope: !5230, file: !5231, line: 80, baseType: !1132, size: 32, offset: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5230, file: !5231, line: 81, baseType: !1132, size: 32, offset: 96)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "evict_flags", scope: !21, file: !9, line: 133, baseType: !5238, size: 64, offset: 320)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DISubroutineType(types: !5240)
!5240 = !{null, !30, !5241}
!5241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5242, size: 64)
!5242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_placement", file: !5231, line: 94, size: 256, elements: !5243)
!5243 = !{!5244, !5245, !5246, !5247}
!5244 = !DIDerivedType(tag: DW_TAG_member, name: "num_placement", scope: !5242, file: !5231, line: 95, baseType: !53, size: 32)
!5245 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !5242, file: !5231, line: 96, baseType: !5228, size: 64, offset: 64)
!5246 = !DIDerivedType(tag: DW_TAG_member, name: "num_busy_placement", scope: !5242, file: !5231, line: 97, baseType: !53, size: 32, offset: 128)
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "busy_placement", scope: !5242, file: !5231, line: 98, baseType: !5228, size: 64, offset: 192)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !21, file: !9, line: 149, baseType: !5249, size: 64, offset: 384)
!5249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5250, size: 64)
!5250 = !DISubroutineType(types: !5251)
!5251 = !{!6, !30, !578, !5209, !5165, !5252}
!5252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "delete_mem_notify", scope: !21, file: !9, line: 157, baseType: !5160, size: 64, offset: 448)
!5254 = !DIDerivedType(tag: DW_TAG_member, name: "swap_notify", scope: !21, file: !9, line: 162, baseType: !5160, size: 64, offset: 512)
!5255 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_reserve", scope: !21, file: !9, line: 170, baseType: !5256, size: 64, offset: 576)
!5256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5257, size: 64)
!5257 = !DISubroutineType(types: !5258)
!5258 = !{!6, !7, !5165}
!5259 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_free", scope: !21, file: !9, line: 172, baseType: !5260, size: 64, offset: 640)
!5260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5261, size: 64)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{null, !7, !5165}
!5263 = !DIDerivedType(tag: DW_TAG_member, name: "io_mem_pfn", scope: !21, file: !9, line: 181, baseType: !5264, size: 64, offset: 704)
!5264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5265, size: 64)
!5265 = !DISubroutineType(types: !5266)
!5266 = !{!199, !30, !199}
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "access_memory", scope: !21, file: !9, line: 198, baseType: !5268, size: 64, offset: 768)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!6, !30, !199, !221, !6, !6}
!5271 = !DIDerivedType(tag: DW_TAG_member, name: "release_notify", scope: !21, file: !9, line: 209, baseType: !5160, size: 64, offset: 832)
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "sysman", scope: !8, file: !9, line: 232, baseType: !5273, size: 960, offset: 192)
!5273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager", file: !5167, line: 151, size: 960, elements: !5274)
!5274 = !{!5275, !5276, !5277, !5278, !5279, !5303, !5304, !5354, !5356}
!5275 = !DIDerivedType(tag: DW_TAG_member, name: "use_type", scope: !5273, file: !5167, line: 155, baseType: !578, size: 8)
!5276 = !DIDerivedType(tag: DW_TAG_member, name: "use_tt", scope: !5273, file: !5167, line: 156, baseType: !578, size: 8, offset: 8)
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "bdev", scope: !5273, file: !5167, line: 157, baseType: !7, size: 64, offset: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5273, file: !5167, line: 158, baseType: !4690, size: 64, offset: 128)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !5273, file: !5167, line: 159, baseType: !5280, size: 64, offset: 192)
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5282)
!5282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_resource_manager_func", file: !5167, line: 52, size: 320, elements: !5283)
!5283 = !{!5284, !5290, !5294, !5298, !5299}
!5284 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !5282, file: !5167, line: 74, baseType: !5285, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5286, size: 64)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!6, !5288, !30, !5228, !5289}
!5288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5273, size: 64)
!5289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5290 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !5282, file: !5167, line: 88, baseType: !5291, size: 64, offset: 64)
!5291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5292, size: 64)
!5292 = !DISubroutineType(types: !5293)
!5293 = !{null, !5288, !5165}
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "intersects", scope: !5282, file: !5167, line: 102, baseType: !5295, size: 64, offset: 128)
!5295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5296, size: 64)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!578, !5288, !5165, !5228, !196}
!5298 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !5282, file: !5167, line: 118, baseType: !5295, size: 64, offset: 192)
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !5282, file: !5167, line: 133, baseType: !5300, size: 64, offset: 256)
!5300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5301, size: 64)
!5301 = !DISubroutineType(types: !5302)
!5302 = !{null, !5288, !4695}
!5303 = !DIDerivedType(tag: DW_TAG_member, name: "move_lock", scope: !5273, file: !5167, line: 160, baseType: !83, size: 32, offset: 256)
!5304 = !DIDerivedType(tag: DW_TAG_member, name: "move", scope: !5273, file: !5167, line: 165, baseType: !5305, size: 64, offset: 320)
!5305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5306, size: 64)
!5306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !5307, line: 65, size: 512, elements: !5308)
!5307 = !DIFile(filename: "./include/linux/dma-fence.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "250a5e28e66b96be11f66b71d72fa176")
!5308 = !{!5309, !5310, !5343, !5349, !5350, !5351, !5352, !5353}
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5306, file: !5307, line: 66, baseType: !1785, size: 64)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !5306, file: !5307, line: 67, baseType: !5311, size: 64, offset: 64)
!5311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5312, size: 64)
!5312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5313)
!5313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence_ops", file: !5307, line: 125, size: 640, elements: !5314)
!5314 = !{!5315, !5316, !5320, !5321, !5325, !5326, !5330, !5334, !5338, !5339}
!5315 = !DIDerivedType(tag: DW_TAG_member, name: "use_64bit_seqno", scope: !5313, file: !5307, line: 132, baseType: !578, size: 8)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "get_driver_name", scope: !5313, file: !5307, line: 143, baseType: !5317, size: 64, offset: 64)
!5317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5318, size: 64)
!5318 = !DISubroutineType(types: !5319)
!5319 = !{!71, !5305}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "get_timeline_name", scope: !5313, file: !5307, line: 155, baseType: !5317, size: 64, offset: 128)
!5321 = !DIDerivedType(tag: DW_TAG_member, name: "enable_signaling", scope: !5313, file: !5307, line: 192, baseType: !5322, size: 64, offset: 192)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!578, !5305}
!5325 = !DIDerivedType(tag: DW_TAG_member, name: "signaled", scope: !5313, file: !5307, line: 209, baseType: !5322, size: 64, offset: 256)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !5313, file: !5307, line: 227, baseType: !5327, size: 64, offset: 320)
!5327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5328, size: 64)
!5328 = !DISubroutineType(types: !5329)
!5329 = !{!185, !5305, !578, !185}
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !5313, file: !5307, line: 238, baseType: !5331, size: 64, offset: 384)
!5331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5332, size: 64)
!5332 = !DISubroutineType(types: !5333)
!5333 = !{null, !5305}
!5334 = !DIDerivedType(tag: DW_TAG_member, name: "fence_value_str", scope: !5313, file: !5307, line: 248, baseType: !5335, size: 64, offset: 448)
!5335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5336, size: 64)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{null, !5305, !149, !6}
!5338 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_value_str", scope: !5313, file: !5307, line: 258, baseType: !5335, size: 64, offset: 512)
!5339 = !DIDerivedType(tag: DW_TAG_member, name: "set_deadline", scope: !5313, file: !5307, line: 279, baseType: !5340, size: 64, offset: 576)
!5340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5341, size: 64)
!5341 = !DISubroutineType(types: !5342)
!5342 = !{null, !5305, !2348}
!5343 = !DIDerivedType(tag: DW_TAG_member, scope: !5306, file: !5307, line: 84, baseType: !5344, size: 128, offset: 128)
!5344 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5306, file: !5307, line: 84, size: 128, elements: !5345)
!5345 = !{!5346, !5347, !5348}
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "cb_list", scope: !5344, file: !5307, line: 85, baseType: !12, size: 128)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !5344, file: !5307, line: 87, baseType: !2348, size: 64)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !5344, file: !5307, line: 89, baseType: !718, size: 128, align: 64)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !5306, file: !5307, line: 91, baseType: !304, size: 64, offset: 256)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !5306, file: !5307, line: 92, baseType: !304, size: 64, offset: 320)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5306, file: !5307, line: 93, baseType: !199, size: 64, offset: 384)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5306, file: !5307, line: 94, baseType: !39, size: 32, offset: 448)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !5306, file: !5307, line: 95, baseType: !6, size: 32, offset: 480)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !5273, file: !5167, line: 170, baseType: !5355, size: 512, offset: 384)
!5355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512, elements: !728)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !5273, file: !5167, line: 176, baseType: !4690, size: 64, offset: 896)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "man_drv", scope: !8, file: !9, line: 237, baseType: !5358, size: 512, offset: 1152)
!5358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5288, size: 512, elements: !2387)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "vma_manager", scope: !8, file: !9, line: 242, baseType: !4997, size: 64, offset: 1664)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !8, file: !9, line: 247, baseType: !5361, size: 14912, offset: 1728)
!5361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool", file: !29, line: 69, size: 14912, elements: !5362)
!5362 = !{!5363, !5364, !5365, !5366, !5367}
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5361, file: !29, line: 70, baseType: !62, size: 64)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !5361, file: !29, line: 71, baseType: !6, size: 32, offset: 64)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma_alloc", scope: !5361, file: !29, line: 73, baseType: !578, size: 8, offset: 96)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "use_dma32", scope: !5361, file: !29, line: 74, baseType: !578, size: 8, offset: 104)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5361, file: !29, line: 78, baseType: !5368, size: 14784, offset: 128)
!5368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5369, size: 14784, elements: !150)
!5369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5361, file: !29, line: 76, size: 4928, elements: !5370)
!5370 = !{!5371}
!5371 = !DIDerivedType(tag: DW_TAG_member, name: "orders", scope: !5369, file: !29, line: 77, baseType: !5372, size: 4928)
!5372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5373, size: 4928, elements: !5382)
!5373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ttm_pool_type", file: !29, line: 49, size: 448, elements: !5374)
!5374 = !{!5375, !5377, !5378, !5379, !5380, !5381}
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !5373, file: !29, line: 50, baseType: !5376, size: 64)
!5376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5361, size: 64)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !5373, file: !29, line: 51, baseType: !53, size: 32, offset: 64)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !5373, file: !29, line: 52, baseType: !5180, size: 32, offset: 96)
!5379 = !DIDerivedType(tag: DW_TAG_member, name: "shrinker_list", scope: !5373, file: !29, line: 54, baseType: !12, size: 128, offset: 128)
!5380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5373, file: !29, line: 56, baseType: !83, size: 32, offset: 256)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !5373, file: !29, line: 57, baseType: !12, size: 128, offset: 320)
!5382 = !{!5383}
!5383 = !DISubrange(count: 11)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "lru_lock", scope: !8, file: !9, line: 252, baseType: !83, size: 32, offset: 16640)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "pinned", scope: !8, file: !9, line: 257, baseType: !12, size: 128, offset: 16704)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "dev_mapping", scope: !8, file: !9, line: 263, baseType: !226, size: 64, offset: 16832)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !8, file: !9, line: 268, baseType: !820, size: 64, offset: 16896)
!5388 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/i915/.i915_ttm_buddy_manager.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -Wall -Wextra -Wno-format-security -Wno-unused-parameter -Wno-type-limits -Wno-missing-field-initializers -Wno-sign-compare -Wno-shift-negative-value -Wunused-but-set-variable -Wno-frame-address -I ./drivers/gpu/drm/i915 -D KBUILD_MODFILE=\22drivers/gpu/drm/i915/i915\22 -D KBUILD_BASENAME=\22i915_ttm_buddy_manager\22 -D KBUILD_MODNAME=\22i915\22 -D __KBUILD_MODNAME=kmod_i915 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/i915/i915_ttm_buddy_manager.ll drivers/gpu/drm/i915/i915_ttm_buddy_manager.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !5389, retainedTypes: !5412, globals: !5459, splitDebugInlining: false, nameTableKind: None)
!5389 = !{!425, !919, !1056, !1605, !1732, !1965, !2355, !2570, !3105, !3903, !3968, !4184, !4246, !4323, !4331, !4563, !4573, !4579, !4587, !5037, !5137, !5153, !5180, !5390, !5395, !5405}
!5390 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !5391, line: 10, baseType: !53, size: 32, elements: !5392)
!5391 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!5392 = !{!5393, !5394}
!5393 = !DIEnumerator(name: "false", value: 0)
!5394 = !DIEnumerator(name: "true", value: 1)
!5395 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !5396, line: 364, baseType: !53, size: 32, elements: !5397)
!5396 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!5397 = !{!5398, !5399, !5400, !5401, !5402, !5403, !5404}
!5398 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!5399 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!5400 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!5401 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!5402 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!5403 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!5404 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!5405 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !44, line: 119, baseType: !53, size: 32, elements: !5406)
!5406 = !{!5407, !5408, !5409, !5410, !5411}
!5407 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!5408 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!5409 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!5410 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!5411 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!5412 = !{!1600, !199, !5413, !304, !221, !5415, !6, !5426, !5446, !5448}
!5413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5414, size: 64)
!5414 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !16)
!5415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5416, size: 64)
!5416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_buddy_block", file: !5417, line: 28, size: 576, elements: !5418)
!5417 = !DIFile(filename: "./include/drm/drm_buddy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6109808cb06339c76f8642650a0d3b9a")
!5418 = !{!5419, !5420, !5421, !5422, !5423, !5424, !5425}
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !5416, file: !5417, line: 37, baseType: !304, size: 64)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5416, file: !5417, line: 39, baseType: !5415, size: 64, offset: 64)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5416, file: !5417, line: 40, baseType: !5415, size: 64, offset: 128)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5416, file: !5417, line: 41, baseType: !5415, size: 64, offset: 192)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !5416, file: !5417, line: 43, baseType: !221, size: 64, offset: 256)
!5424 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !5416, file: !5417, line: 51, baseType: !12, size: 128, offset: 320)
!5425 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_link", scope: !5416, file: !5417, line: 52, baseType: !12, size: 128, offset: 448)
!5426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5427, size: 64)
!5427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_ttm_buddy_resource", file: !5428, line: 31, size: 896, elements: !5429)
!5428 = !DIFile(filename: "drivers/gpu/drm/i915/i915_ttm_buddy_manager.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "deb0d0c3054d2da4fe93b41734e83501")
!5429 = !{!5430, !5431, !5432, !5433, !5434}
!5430 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5427, file: !5428, line: 32, baseType: !5166, size: 576)
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !5427, file: !5428, line: 33, baseType: !12, size: 128, offset: 576)
!5432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5427, file: !5428, line: 34, baseType: !199, size: 64, offset: 704)
!5433 = !DIDerivedType(tag: DW_TAG_member, name: "used_visible_size", scope: !5427, file: !5428, line: 35, baseType: !199, size: 64, offset: 768)
!5434 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5427, file: !5428, line: 36, baseType: !5435, size: 64, offset: 832)
!5435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5436, size: 64)
!5436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_buddy", file: !5417, line: 64, size: 384, elements: !5437)
!5437 = !{!5438, !5439, !5441, !5442, !5443, !5444, !5445}
!5438 = !DIDerivedType(tag: DW_TAG_member, name: "free_list", scope: !5436, file: !5417, line: 66, baseType: !16, size: 64)
!5439 = !DIDerivedType(tag: DW_TAG_member, name: "roots", scope: !5436, file: !5417, line: 75, baseType: !5440, size: 64, offset: 64)
!5440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5415, size: 64)
!5441 = !DIDerivedType(tag: DW_TAG_member, name: "n_roots", scope: !5436, file: !5417, line: 81, baseType: !53, size: 32, offset: 128)
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "max_order", scope: !5436, file: !5417, line: 82, baseType: !53, size: 32, offset: 160)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !5436, file: !5417, line: 85, baseType: !304, size: 64, offset: 192)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !5436, file: !5417, line: 86, baseType: !304, size: 64, offset: 256)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "avail", scope: !5436, file: !5417, line: 87, baseType: !304, size: 64, offset: 320)
!5446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5447, size: 64)
!5447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5414)
!5448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5449, size: 64)
!5449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i915_ttm_buddy_manager", file: !3, line: 17, size: 1984, elements: !5450)
!5450 = !{!5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458}
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "manager", scope: !5449, file: !3, line: 18, baseType: !5273, size: 960)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !5449, file: !3, line: 19, baseType: !5436, size: 384, offset: 960)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !5449, file: !3, line: 20, baseType: !12, size: 128, offset: 1344)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5449, file: !3, line: 21, baseType: !498, size: 256, offset: 1472)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "visible_size", scope: !5449, file: !3, line: 22, baseType: !199, size: 64, offset: 1728)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "visible_avail", scope: !5449, file: !3, line: 23, baseType: !199, size: 64, offset: 1792)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "visible_reserved", scope: !5449, file: !3, line: 24, baseType: !199, size: 64, offset: 1856)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "default_page_size", scope: !5449, file: !3, line: 25, baseType: !304, size: 64, offset: 1920)
!5459 = !{!0, !5460, !5463, !5468, !5473, !5475, !5480, !5485, !5490, !5495, !5498}
!5460 = !DIGlobalVariableExpression(var: !5461, expr: !DIExpression())
!5461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !5462, isLocal: true, isDefinition: true)
!5462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 96, elements: !3328)
!5463 = !DIGlobalVariableExpression(var: !5464, expr: !DIExpression())
!5464 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !5465, isLocal: true, isDefinition: true)
!5465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 368, elements: !5466)
!5466 = !{!5467}
!5467 = !DISubrange(count: 46)
!5468 = !DIGlobalVariableExpression(var: !5469, expr: !DIExpression())
!5469 = distinct !DIGlobalVariable(scope: null, file: !5396, line: 480, type: !5470, isLocal: true, isDefinition: true)
!5470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 168, elements: !5471)
!5471 = !{!5472}
!5472 = !DISubrange(count: 21)
!5473 = !DIGlobalVariableExpression(var: !5474, expr: !DIExpression())
!5474 = distinct !DIGlobalVariable(name: "i915_ttm_buddy_manager_func", scope: !5388, file: !3, line: 264, type: !5281, isLocal: true, isDefinition: true)
!5475 = !DIGlobalVariableExpression(var: !5476, expr: !DIExpression())
!5476 = distinct !DIGlobalVariable(scope: null, file: !3, line: 247, type: !5477, isLocal: true, isDefinition: true)
!5477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 224, elements: !5478)
!5478 = !{!5479}
!5479 = !DISubrange(count: 28)
!5480 = !DIGlobalVariableExpression(var: !5481, expr: !DIExpression())
!5481 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !5482, isLocal: true, isDefinition: true)
!5482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 192, elements: !5483)
!5483 = !{!5484}
!5484 = !DISubrange(count: 24)
!5485 = !DIGlobalVariableExpression(var: !5486, expr: !DIExpression())
!5486 = distinct !DIGlobalVariable(scope: null, file: !3, line: 251, type: !5487, isLocal: true, isDefinition: true)
!5487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 184, elements: !5488)
!5488 = !{!5489}
!5489 = !DISubrange(count: 23)
!5490 = !DIGlobalVariableExpression(var: !5491, expr: !DIExpression())
!5491 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !5492, isLocal: true, isDefinition: true)
!5492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 216, elements: !5493)
!5493 = !{!5494}
!5494 = !DISubrange(count: 27)
!5495 = !DIGlobalVariableExpression(var: !5496, expr: !DIExpression())
!5496 = distinct !DIGlobalVariable(scope: null, file: !3, line: 258, type: !5497, isLocal: true, isDefinition: true)
!5497 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 88, elements: !5382)
!5498 = !DIGlobalVariableExpression(var: !5499, expr: !DIExpression())
!5499 = distinct !DIGlobalVariable(scope: null, file: !5167, line: 313, type: !5500, isLocal: true, isDefinition: true)
!5500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 248, elements: !5501)
!5501 = !{!5502}
!5502 = !DISubrange(count: 31)
!5503 = !{!5504, !5505, !5506, !5507, !5508, !5509, !5510, !5511, !5512, !5513, !5514}
!5504 = !DILocalVariable(name: "bdev", arg: 1, scope: !2, file: !3, line: 300, type: !7)
!5505 = !DILocalVariable(name: "type", arg: 2, scope: !2, file: !3, line: 301, type: !53)
!5506 = !DILocalVariable(name: "use_tt", arg: 3, scope: !2, file: !3, line: 301, type: !578)
!5507 = !DILocalVariable(name: "size", arg: 4, scope: !2, file: !3, line: 302, type: !304)
!5508 = !DILocalVariable(name: "visible_size", arg: 5, scope: !2, file: !3, line: 302, type: !304)
!5509 = !DILocalVariable(name: "default_page_size", arg: 6, scope: !2, file: !3, line: 302, type: !304)
!5510 = !DILocalVariable(name: "chunk_size", arg: 7, scope: !2, file: !3, line: 303, type: !304)
!5511 = !DILocalVariable(name: "man", scope: !2, file: !3, line: 305, type: !5288)
!5512 = !DILocalVariable(name: "bman", scope: !2, file: !3, line: 306, type: !5448)
!5513 = !DILocalVariable(name: "err", scope: !2, file: !3, line: 307, type: !6)
!5514 = !DILabel(scope: !2, name: "err_free_bman", file: !3, line: 334)
!5515 = !{i32 7, !"Dwarf Version", i32 5}
!5516 = !{i32 2, !"Debug Info Version", i32 3}
!5517 = !{i32 1, !"wchar_size", i32 2}
!5518 = !{i32 8, !"cf-protection-branch", i32 1}
!5519 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5520 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5521 = !{i32 1, !"Code Model", i32 2}
!5522 = !{i32 1, !"override-stack-alignment", i32 8}
!5523 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5524 = !DILocation(line: 300, column: 48, scope: !2)
!5525 = !DILocation(line: 301, column: 21, scope: !2)
!5526 = !DILocation(line: 301, column: 32, scope: !2)
!5527 = !DILocation(line: 302, column: 12, scope: !2)
!5528 = !DILocation(line: 302, column: 22, scope: !2)
!5529 = !DILocation(line: 302, column: 40, scope: !2)
!5530 = !DILocation(line: 303, column: 12, scope: !2)
!5531 = !DILocation(line: 305, column: 2, scope: !2)
!5532 = !DILocation(line: 305, column: 31, scope: !2)
!5533 = !DILocation(line: 306, column: 2, scope: !2)
!5534 = !DILocation(line: 306, column: 33, scope: !2)
!5535 = !DILocation(line: 307, column: 2, scope: !2)
!5536 = !DILocation(line: 307, column: 6, scope: !2)
!5537 = !DILocation(line: 309, column: 9, scope: !2)
!5538 = !DILocation(line: 309, column: 7, scope: !2)
!5539 = !DILocation(line: 310, column: 7, scope: !5540)
!5540 = distinct !DILexicalBlock(scope: !2, file: !3, line: 310, column: 6)
!5541 = !DILocation(line: 310, column: 6, scope: !2)
!5542 = !DILocation(line: 311, column: 3, scope: !5540)
!5543 = !DILocation(line: 313, column: 24, scope: !2)
!5544 = !DILocation(line: 313, column: 30, scope: !2)
!5545 = !DILocation(line: 313, column: 34, scope: !2)
!5546 = !DILocation(line: 313, column: 40, scope: !2)
!5547 = !DILocation(line: 313, column: 8, scope: !2)
!5548 = !DILocation(line: 313, column: 6, scope: !2)
!5549 = !DILocation(line: 314, column: 6, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !2, file: !3, line: 314, column: 6)
!5551 = !DILocation(line: 314, column: 6, scope: !2)
!5552 = !DILocation(line: 315, column: 3, scope: !5550)
!5553 = !DILocation(line: 317, column: 2, scope: !2)
!5554 = !DILocation(line: 317, column: 2, scope: !5555)
!5555 = distinct !DILexicalBlock(scope: !2, file: !3, line: 317, column: 2)
!5556 = !DILocation(line: 318, column: 18, scope: !2)
!5557 = !DILocation(line: 318, column: 24, scope: !2)
!5558 = !DILocation(line: 318, column: 2, scope: !2)
!5559 = !DILocation(line: 320, column: 28, scope: !2)
!5560 = !DILocation(line: 320, column: 2, scope: !2)
!5561 = !DILocation(line: 320, column: 8, scope: !2)
!5562 = !DILocation(line: 320, column: 26, scope: !2)
!5563 = !DILocation(line: 321, column: 23, scope: !2)
!5564 = !DILocation(line: 321, column: 36, scope: !2)
!5565 = !DILocation(line: 321, column: 2, scope: !2)
!5566 = !DILocation(line: 321, column: 8, scope: !2)
!5567 = !DILocation(line: 321, column: 21, scope: !2)
!5568 = !DILocation(line: 322, column: 24, scope: !2)
!5569 = !DILocation(line: 322, column: 30, scope: !2)
!5570 = !DILocation(line: 322, column: 2, scope: !2)
!5571 = !DILocation(line: 322, column: 8, scope: !2)
!5572 = !DILocation(line: 322, column: 22, scope: !2)
!5573 = !DILocation(line: 324, column: 9, scope: !2)
!5574 = !DILocation(line: 324, column: 15, scope: !2)
!5575 = !DILocation(line: 324, column: 6, scope: !2)
!5576 = !DILocation(line: 325, column: 16, scope: !2)
!5577 = !{i8 0, i8 2}
!5578 = !DILocation(line: 325, column: 2, scope: !2)
!5579 = !DILocation(line: 325, column: 7, scope: !2)
!5580 = !DILocation(line: 325, column: 14, scope: !2)
!5581 = !DILocation(line: 326, column: 2, scope: !2)
!5582 = !DILocation(line: 326, column: 7, scope: !2)
!5583 = !DILocation(line: 326, column: 12, scope: !2)
!5584 = !DILocation(line: 327, column: 28, scope: !2)
!5585 = !DILocation(line: 327, column: 33, scope: !2)
!5586 = !DILocation(line: 327, column: 39, scope: !2)
!5587 = !DILocation(line: 327, column: 45, scope: !2)
!5588 = !DILocation(line: 327, column: 48, scope: !2)
!5589 = !DILocation(line: 327, column: 53, scope: !2)
!5590 = !DILocation(line: 327, column: 2, scope: !2)
!5591 = !DILocation(line: 329, column: 32, scope: !2)
!5592 = !DILocation(line: 329, column: 2, scope: !2)
!5593 = !DILocation(line: 330, column: 25, scope: !2)
!5594 = !DILocation(line: 330, column: 31, scope: !2)
!5595 = !DILocation(line: 330, column: 37, scope: !2)
!5596 = !DILocation(line: 330, column: 2, scope: !2)
!5597 = !DILocation(line: 332, column: 2, scope: !2)
!5598 = !DILocation(line: 334, column: 1, scope: !2)
!5599 = !DILocation(line: 335, column: 8, scope: !2)
!5600 = !DILocation(line: 335, column: 2, scope: !2)
!5601 = !DILocation(line: 336, column: 9, scope: !2)
!5602 = !DILocation(line: 336, column: 2, scope: !2)
!5603 = !DILocation(line: 337, column: 1, scope: !2)
!5604 = distinct !DISubprogram(name: "kzalloc", scope: !5396, file: !5396, line: 719, type: !5605, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5607)
!5605 = !DISubroutineType(types: !5606)
!5606 = !{!221, !196, !1600}
!5607 = !{!5608, !5609}
!5608 = !DILocalVariable(name: "size", arg: 1, scope: !5604, file: !5396, line: 719, type: !196)
!5609 = !DILocalVariable(name: "flags", arg: 2, scope: !5604, file: !5396, line: 719, type: !1600)
!5610 = !DILocation(line: 719, column: 52, scope: !5604)
!5611 = !DILocation(line: 719, column: 64, scope: !5604)
!5612 = !DILocation(line: 721, column: 17, scope: !5604)
!5613 = !DILocation(line: 721, column: 23, scope: !5604)
!5614 = !DILocation(line: 721, column: 29, scope: !5604)
!5615 = !DILocation(line: 721, column: 9, scope: !5604)
!5616 = !DILocation(line: 721, column: 2, scope: !5604)
!5617 = !DISubprogram(name: "drm_buddy_init", scope: !5417, file: !5417, line: 133, type: !5618, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5618 = !DISubroutineType(types: !5619)
!5619 = !{!6, !5435, !304, !304}
!5620 = !DISubprogram(name: "__mutex_init", scope: !499, file: !499, line: 121, type: !5621, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5621 = !DISubroutineType(types: !5622)
!5622 = !{null, !5148, !71, !5623}
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!5624 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !5625, file: !5625, line: 35, type: !5626, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5628)
!5625 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5626 = !DISubroutineType(types: !5627)
!5627 = !{null, !16}
!5628 = !{!5629}
!5629 = !DILocalVariable(name: "list", arg: 1, scope: !5624, file: !5625, line: 35, type: !16)
!5630 = !DILocation(line: 35, column: 53, scope: !5624)
!5631 = !DILocation(line: 37, column: 2, scope: !5624)
!5632 = !DILocation(line: 37, column: 2, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5624, file: !5625, line: 37, column: 2)
!5634 = !DILocation(line: 37, column: 2, scope: !5635)
!5635 = distinct !DILexicalBlock(scope: !5633, file: !5625, line: 37, column: 2)
!5636 = !DILocation(line: 37, column: 2, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !5625, line: 37, column: 2)
!5638 = !DILocation(line: 38, column: 2, scope: !5624)
!5639 = !DILocation(line: 38, column: 2, scope: !5640)
!5640 = distinct !DILexicalBlock(scope: !5624, file: !5625, line: 38, column: 2)
!5641 = !DILocation(line: 38, column: 2, scope: !5642)
!5642 = distinct !DILexicalBlock(scope: !5640, file: !5625, line: 38, column: 2)
!5643 = !DILocation(line: 38, column: 2, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5640, file: !5625, line: 38, column: 2)
!5645 = !DILocation(line: 39, column: 1, scope: !5624)
!5646 = !DISubprogram(name: "ttm_resource_manager_init", scope: !5167, file: !5167, line: 377, type: !5647, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5647 = !DISubroutineType(types: !5648)
!5648 = !{null, !5288, !7, !4690}
!5649 = distinct !DISubprogram(name: "ttm_resource_manager_set_used", scope: !5167, file: !5167, line: 308, type: !5650, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5652)
!5650 = !DISubroutineType(types: !5651)
!5651 = !{null, !5288, !578}
!5652 = !{!5653, !5654, !5655, !5656, !5660}
!5653 = !DILocalVariable(name: "man", arg: 1, scope: !5649, file: !5167, line: 308, type: !5288)
!5654 = !DILocalVariable(name: "used", arg: 2, scope: !5649, file: !5167, line: 308, type: !578)
!5655 = !DILocalVariable(name: "i", scope: !5649, file: !5167, line: 310, type: !6)
!5656 = !DILocalVariable(name: "__ret_warn_on", scope: !5657, file: !5167, line: 313, type: !6)
!5657 = distinct !DILexicalBlock(scope: !5658, file: !5167, line: 313, column: 3)
!5658 = distinct !DILexicalBlock(scope: !5659, file: !5167, line: 312, column: 2)
!5659 = distinct !DILexicalBlock(scope: !5649, file: !5167, line: 312, column: 2)
!5660 = !DILocalVariable(name: "__flags", scope: !5661, file: !5167, line: 313, type: !6)
!5661 = distinct !DILexicalBlock(scope: !5662, file: !5167, line: 313, column: 3)
!5662 = distinct !DILexicalBlock(scope: !5657, file: !5167, line: 313, column: 3)
!5663 = !DILocation(line: 308, column: 60, scope: !5649)
!5664 = !DILocation(line: 308, column: 70, scope: !5649)
!5665 = !DILocation(line: 310, column: 2, scope: !5649)
!5666 = !DILocation(line: 310, column: 6, scope: !5649)
!5667 = !DILocation(line: 312, column: 9, scope: !5659)
!5668 = !DILocation(line: 312, column: 7, scope: !5659)
!5669 = !DILocation(line: 312, column: 14, scope: !5658)
!5670 = !DILocation(line: 312, column: 16, scope: !5658)
!5671 = !DILocation(line: 312, column: 2, scope: !5659)
!5672 = !DILocation(line: 313, column: 3, scope: !5657)
!5673 = !DILocation(line: 313, column: 3, scope: !5662)
!5674 = !DILocation(line: 313, column: 3, scope: !5661)
!5675 = !DILocation(line: 313, column: 3, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5661, file: !5167, line: 313, column: 3)
!5677 = !DILocation(line: 313, column: 3, scope: !5678)
!5678 = distinct !DILexicalBlock(scope: !5661, file: !5167, line: 313, column: 3)
!5679 = !{i64 2154859654, i64 2154859683, i64 2154859729, i64 2154859787, i64 2154859841, i64 2154859895, i64 2154859950, i64 2154859981, i64 2154860289, i64 2154860295, i64 2154860342, i64 2154860365, i64 2154860391}
!5680 = !DILocation(line: 313, column: 3, scope: !5681)
!5681 = distinct !DILexicalBlock(scope: !5661, file: !5167, line: 313, column: 3)
!5682 = !DILocation(line: 313, column: 3, scope: !5658)
!5683 = !DILocation(line: 312, column: 40, scope: !5658)
!5684 = !DILocation(line: 312, column: 2, scope: !5658)
!5685 = distinct !{!5685, !5671, !5686, !5687, !5688}
!5686 = !DILocation(line: 313, column: 3, scope: !5659)
!5687 = !{!"llvm.loop.mustprogress"}
!5688 = !{!"llvm.loop.unroll.disable"}
!5689 = !DILocation(line: 314, column: 18, scope: !5649)
!5690 = !DILocation(line: 314, column: 2, scope: !5649)
!5691 = !DILocation(line: 314, column: 7, scope: !5649)
!5692 = !DILocation(line: 314, column: 16, scope: !5649)
!5693 = !DILocation(line: 315, column: 1, scope: !5649)
!5694 = distinct !DISubprogram(name: "ttm_set_driver_manager", scope: !9, file: !9, line: 283, type: !5695, scopeLine: 285, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5697)
!5695 = !DISubroutineType(types: !5696)
!5696 = !{null, !7, !6, !5288}
!5697 = !{!5698, !5699, !5700}
!5698 = !DILocalVariable(name: "bdev", arg: 1, scope: !5694, file: !9, line: 283, type: !7)
!5699 = !DILocalVariable(name: "type", arg: 2, scope: !5694, file: !9, line: 283, type: !6)
!5700 = !DILocalVariable(name: "manager", arg: 3, scope: !5694, file: !9, line: 284, type: !5288)
!5701 = !DILocation(line: 283, column: 62, scope: !5694)
!5702 = !DILocation(line: 283, column: 72, scope: !5694)
!5703 = !DILocation(line: 284, column: 37, scope: !5694)
!5704 = !DILocation(line: 286, column: 2, scope: !5694)
!5705 = !DILocation(line: 286, column: 2, scope: !5706)
!5706 = distinct !DILexicalBlock(scope: !5707, file: !9, line: 286, column: 2)
!5707 = distinct !DILexicalBlock(scope: !5694, file: !9, line: 286, column: 2)
!5708 = !DILocation(line: 286, column: 2, scope: !5707)
!5709 = !{i32 -2140100008}
!5710 = !DILocation(line: 287, column: 24, scope: !5694)
!5711 = !DILocation(line: 287, column: 2, scope: !5694)
!5712 = !DILocation(line: 287, column: 8, scope: !5694)
!5713 = !DILocation(line: 287, column: 16, scope: !5694)
!5714 = !DILocation(line: 287, column: 22, scope: !5694)
!5715 = !DILocation(line: 288, column: 1, scope: !5694)
!5716 = !DISubprogram(name: "kfree", scope: !5396, file: !5396, line: 227, type: !5717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5717 = !DISubroutineType(types: !5718)
!5718 = !{null, !1495}
!5719 = distinct !DISubprogram(name: "i915_ttm_buddy_man_fini", scope: !3, file: !3, line: 349, type: !5720, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5722)
!5720 = !DISubroutineType(types: !5721)
!5721 = !{!6, !7, !53}
!5722 = !{!5723, !5724, !5725, !5726, !5727, !5728, !5729, !5731}
!5723 = !DILocalVariable(name: "bdev", arg: 1, scope: !5719, file: !3, line: 349, type: !7)
!5724 = !DILocalVariable(name: "type", arg: 2, scope: !5719, file: !3, line: 349, type: !53)
!5725 = !DILocalVariable(name: "man", scope: !5719, file: !3, line: 351, type: !5288)
!5726 = !DILocalVariable(name: "bman", scope: !5719, file: !3, line: 352, type: !5448)
!5727 = !DILocalVariable(name: "mm", scope: !5719, file: !3, line: 353, type: !5435)
!5728 = !DILocalVariable(name: "ret", scope: !5719, file: !3, line: 354, type: !6)
!5729 = !DILocalVariable(name: "__ret_warn_on", scope: !5730, file: !3, line: 368, type: !6)
!5730 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 368, column: 2)
!5731 = !DILocalVariable(name: "__flags", scope: !5732, file: !3, line: 368, type: !6)
!5732 = distinct !DILexicalBlock(scope: !5733, file: !3, line: 368, column: 2)
!5733 = distinct !DILexicalBlock(scope: !5730, file: !3, line: 368, column: 2)
!5734 = !DILocation(line: 349, column: 48, scope: !5719)
!5735 = !DILocation(line: 349, column: 67, scope: !5719)
!5736 = !DILocation(line: 351, column: 2, scope: !5719)
!5737 = !DILocation(line: 351, column: 31, scope: !5719)
!5738 = !DILocation(line: 351, column: 54, scope: !5719)
!5739 = !DILocation(line: 351, column: 60, scope: !5719)
!5740 = !DILocation(line: 351, column: 37, scope: !5719)
!5741 = !DILocation(line: 352, column: 2, scope: !5719)
!5742 = !DILocation(line: 352, column: 33, scope: !5719)
!5743 = !DILocation(line: 352, column: 57, scope: !5719)
!5744 = !DILocation(line: 352, column: 40, scope: !5719)
!5745 = !DILocation(line: 353, column: 2, scope: !5719)
!5746 = !DILocation(line: 353, column: 20, scope: !5719)
!5747 = !DILocation(line: 353, column: 26, scope: !5719)
!5748 = !DILocation(line: 353, column: 32, scope: !5719)
!5749 = !DILocation(line: 354, column: 2, scope: !5719)
!5750 = !DILocation(line: 354, column: 6, scope: !5719)
!5751 = !DILocation(line: 356, column: 32, scope: !5719)
!5752 = !DILocation(line: 356, column: 2, scope: !5719)
!5753 = !DILocation(line: 358, column: 39, scope: !5719)
!5754 = !DILocation(line: 358, column: 45, scope: !5719)
!5755 = !DILocation(line: 358, column: 8, scope: !5719)
!5756 = !DILocation(line: 358, column: 6, scope: !5719)
!5757 = !DILocation(line: 359, column: 6, scope: !5758)
!5758 = distinct !DILexicalBlock(scope: !5719, file: !3, line: 359, column: 6)
!5759 = !DILocation(line: 359, column: 6, scope: !5719)
!5760 = !DILocation(line: 360, column: 10, scope: !5758)
!5761 = !DILocation(line: 360, column: 3, scope: !5758)
!5762 = !DILocation(line: 362, column: 25, scope: !5719)
!5763 = !DILocation(line: 362, column: 31, scope: !5719)
!5764 = !DILocation(line: 362, column: 2, scope: !5719)
!5765 = !DILocation(line: 364, column: 14, scope: !5719)
!5766 = !DILocation(line: 364, column: 20, scope: !5719)
!5767 = !DILocation(line: 364, column: 2, scope: !5719)
!5768 = !DILocation(line: 365, column: 22, scope: !5719)
!5769 = !DILocation(line: 365, column: 27, scope: !5719)
!5770 = !DILocation(line: 365, column: 33, scope: !5719)
!5771 = !DILocation(line: 365, column: 2, scope: !5719)
!5772 = !DILocation(line: 366, column: 17, scope: !5719)
!5773 = !DILocation(line: 366, column: 2, scope: !5719)
!5774 = !DILocation(line: 367, column: 25, scope: !5719)
!5775 = !DILocation(line: 367, column: 31, scope: !5719)
!5776 = !DILocation(line: 367, column: 2, scope: !5719)
!5777 = !DILocation(line: 367, column: 8, scope: !5719)
!5778 = !DILocation(line: 367, column: 22, scope: !5719)
!5779 = !DILocation(line: 368, column: 2, scope: !5730)
!5780 = !DILocation(line: 368, column: 2, scope: !5733)
!5781 = !DILocation(line: 368, column: 2, scope: !5732)
!5782 = !DILocation(line: 368, column: 2, scope: !5783)
!5783 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 368, column: 2)
!5784 = !DILocation(line: 368, column: 2, scope: !5785)
!5785 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 368, column: 2)
!5786 = !{i64 2155303752, i64 2155303781, i64 2155303827, i64 2155303885, i64 2155303939, i64 2155303993, i64 2155304048, i64 2155304079, i64 2155304387, i64 2155304393, i64 2155304440, i64 2155304463, i64 2155304489}
!5787 = !DILocation(line: 368, column: 2, scope: !5788)
!5788 = distinct !DILexicalBlock(scope: !5732, file: !3, line: 368, column: 2)
!5789 = !DILocation(line: 368, column: 2, scope: !5719)
!5790 = !DILocation(line: 369, column: 16, scope: !5719)
!5791 = !DILocation(line: 369, column: 22, scope: !5719)
!5792 = !DILocation(line: 369, column: 2, scope: !5719)
!5793 = !DILocation(line: 371, column: 31, scope: !5719)
!5794 = !DILocation(line: 371, column: 2, scope: !5719)
!5795 = !DILocation(line: 372, column: 8, scope: !5719)
!5796 = !DILocation(line: 372, column: 2, scope: !5719)
!5797 = !DILocation(line: 374, column: 2, scope: !5719)
!5798 = !DILocation(line: 375, column: 1, scope: !5719)
!5799 = distinct !DISubprogram(name: "ttm_manager_type", scope: !9, file: !9, line: 276, type: !5800, scopeLine: 277, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5802)
!5800 = !DISubroutineType(types: !5801)
!5801 = !{!5288, !7, !6}
!5802 = !{!5803, !5804}
!5803 = !DILocalVariable(name: "bdev", arg: 1, scope: !5799, file: !9, line: 276, type: !7)
!5804 = !DILocalVariable(name: "mem_type", arg: 2, scope: !5799, file: !9, line: 276, type: !6)
!5805 = !DILocation(line: 276, column: 37, scope: !5799)
!5806 = !DILocation(line: 276, column: 47, scope: !5799)
!5807 = !DILocation(line: 278, column: 2, scope: !5799)
!5808 = !DILocation(line: 278, column: 2, scope: !5809)
!5809 = distinct !DILexicalBlock(scope: !5810, file: !9, line: 278, column: 2)
!5810 = distinct !DILexicalBlock(scope: !5799, file: !9, line: 278, column: 2)
!5811 = !DILocation(line: 278, column: 2, scope: !5810)
!5812 = !{i32 -2140101633}
!5813 = !DILocation(line: 280, column: 9, scope: !5799)
!5814 = !DILocation(line: 280, column: 15, scope: !5799)
!5815 = !DILocation(line: 280, column: 23, scope: !5799)
!5816 = !DILocation(line: 280, column: 2, scope: !5799)
!5817 = distinct !DISubprogram(name: "to_buddy_manager", scope: !3, file: !3, line: 29, type: !5818, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5820)
!5818 = !DISubroutineType(types: !5819)
!5819 = !{!5448, !5288}
!5820 = !{!5821, !5822}
!5821 = !DILocalVariable(name: "man", arg: 1, scope: !5817, file: !3, line: 29, type: !5288)
!5822 = !DILocalVariable(name: "__mptr", scope: !5823, file: !3, line: 31, type: !221)
!5823 = distinct !DILexicalBlock(scope: !5817, file: !3, line: 31, column: 9)
!5824 = !DILocation(line: 29, column: 47, scope: !5817)
!5825 = !DILocation(line: 31, column: 9, scope: !5823)
!5826 = !DILocation(line: 31, column: 9, scope: !5817)
!5827 = !DILocation(line: 31, column: 2, scope: !5817)
!5828 = !DISubprogram(name: "ttm_resource_manager_evict_all", scope: !5167, file: !5167, line: 381, type: !5829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{!6, !7, !5288}
!5831 = !DISubprogram(name: "mutex_lock", scope: !499, file: !499, line: 227, type: !5832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5832 = !DISubroutineType(types: !5833)
!5833 = !{null, !5148}
!5834 = !DISubprogram(name: "drm_buddy_free_list", scope: !5417, file: !5417, line: 152, type: !5835, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5835 = !DISubroutineType(types: !5836)
!5836 = !{null, !5435, !16}
!5837 = !DISubprogram(name: "drm_buddy_fini", scope: !5417, file: !5417, line: 135, type: !5838, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5838 = !DISubroutineType(types: !5839)
!5839 = !{null, !5435}
!5840 = !DISubprogram(name: "mutex_unlock", scope: !499, file: !499, line: 246, type: !5832, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5841 = distinct !DISubprogram(name: "ttm_resource_manager_cleanup", scope: !5167, file: !5167, line: 339, type: !5842, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5844)
!5842 = !DISubroutineType(types: !5843)
!5843 = !{null, !5288}
!5844 = !{!5845}
!5845 = !DILocalVariable(name: "man", arg: 1, scope: !5841, file: !5167, line: 339, type: !5288)
!5846 = !DILocation(line: 339, column: 59, scope: !5841)
!5847 = !DILocation(line: 341, column: 16, scope: !5841)
!5848 = !DILocation(line: 341, column: 21, scope: !5841)
!5849 = !DILocation(line: 341, column: 2, scope: !5841)
!5850 = !DILocation(line: 342, column: 2, scope: !5841)
!5851 = !DILocation(line: 342, column: 7, scope: !5841)
!5852 = !DILocation(line: 342, column: 12, scope: !5841)
!5853 = !DILocation(line: 343, column: 1, scope: !5841)
!5854 = distinct !DISubprogram(name: "i915_ttm_buddy_man_reserve", scope: !3, file: !3, line: 387, type: !5855, scopeLine: 389, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5857)
!5855 = !DISubroutineType(types: !5856)
!5856 = !{!6, !5288, !304, !304}
!5857 = !{!5858, !5859, !5860, !5861, !5862, !5863, !5864, !5865, !5866, !5869, !5870, !5872}
!5858 = !DILocalVariable(name: "man", arg: 1, scope: !5854, file: !3, line: 387, type: !5288)
!5859 = !DILocalVariable(name: "start", arg: 2, scope: !5854, file: !3, line: 388, type: !304)
!5860 = !DILocalVariable(name: "size", arg: 3, scope: !5854, file: !3, line: 388, type: !304)
!5861 = !DILocalVariable(name: "bman", scope: !5854, file: !3, line: 390, type: !5448)
!5862 = !DILocalVariable(name: "mm", scope: !5854, file: !3, line: 391, type: !5435)
!5863 = !DILocalVariable(name: "fpfn", scope: !5854, file: !3, line: 392, type: !199)
!5864 = !DILocalVariable(name: "flags", scope: !5854, file: !3, line: 393, type: !199)
!5865 = !DILocalVariable(name: "ret", scope: !5854, file: !3, line: 394, type: !6)
!5866 = !DILocalVariable(name: "lpfn", scope: !5867, file: !3, line: 406, type: !199)
!5867 = distinct !DILexicalBlock(scope: !5868, file: !3, line: 405, column: 33)
!5868 = distinct !DILexicalBlock(scope: !5854, file: !3, line: 405, column: 6)
!5869 = !DILocalVariable(name: "visible", scope: !5867, file: !3, line: 407, type: !199)
!5870 = !DILocalVariable(name: "__UNIQUE_ID___x303", scope: !5871, file: !3, line: 407, type: !199)
!5871 = distinct !DILexicalBlock(scope: !5867, file: !3, line: 407, column: 27)
!5872 = !DILocalVariable(name: "__UNIQUE_ID___y304", scope: !5871, file: !3, line: 407, type: !199)
!5873 = !DILocation(line: 387, column: 61, scope: !5854)
!5874 = !DILocation(line: 388, column: 15, scope: !5854)
!5875 = !DILocation(line: 388, column: 26, scope: !5854)
!5876 = !DILocation(line: 390, column: 2, scope: !5854)
!5877 = !DILocation(line: 390, column: 33, scope: !5854)
!5878 = !DILocation(line: 390, column: 57, scope: !5854)
!5879 = !DILocation(line: 390, column: 40, scope: !5854)
!5880 = !DILocation(line: 391, column: 2, scope: !5854)
!5881 = !DILocation(line: 391, column: 20, scope: !5854)
!5882 = !DILocation(line: 391, column: 26, scope: !5854)
!5883 = !DILocation(line: 391, column: 32, scope: !5854)
!5884 = !DILocation(line: 392, column: 2, scope: !5854)
!5885 = !DILocation(line: 392, column: 16, scope: !5854)
!5886 = !DILocation(line: 392, column: 23, scope: !5854)
!5887 = !DILocation(line: 392, column: 29, scope: !5854)
!5888 = !DILocation(line: 393, column: 2, scope: !5854)
!5889 = !DILocation(line: 393, column: 16, scope: !5854)
!5890 = !DILocation(line: 394, column: 2, scope: !5854)
!5891 = !DILocation(line: 394, column: 6, scope: !5854)
!5892 = !DILocation(line: 396, column: 8, scope: !5854)
!5893 = !DILocation(line: 398, column: 14, scope: !5854)
!5894 = !DILocation(line: 398, column: 20, scope: !5854)
!5895 = !DILocation(line: 398, column: 2, scope: !5854)
!5896 = !DILocation(line: 399, column: 31, scope: !5854)
!5897 = !DILocation(line: 399, column: 35, scope: !5854)
!5898 = !DILocation(line: 400, column: 10, scope: !5854)
!5899 = !DILocation(line: 400, column: 18, scope: !5854)
!5900 = !DILocation(line: 400, column: 16, scope: !5854)
!5901 = !DILocation(line: 401, column: 10, scope: !5854)
!5902 = !DILocation(line: 401, column: 16, scope: !5854)
!5903 = !DILocation(line: 401, column: 20, scope: !5854)
!5904 = !DILocation(line: 402, column: 11, scope: !5854)
!5905 = !DILocation(line: 402, column: 17, scope: !5854)
!5906 = !DILocation(line: 403, column: 10, scope: !5854)
!5907 = !DILocation(line: 399, column: 8, scope: !5854)
!5908 = !DILocation(line: 399, column: 6, scope: !5854)
!5909 = !DILocation(line: 405, column: 6, scope: !5868)
!5910 = !DILocation(line: 405, column: 13, scope: !5868)
!5911 = !DILocation(line: 405, column: 19, scope: !5868)
!5912 = !DILocation(line: 405, column: 11, scope: !5868)
!5913 = !DILocation(line: 405, column: 6, scope: !5854)
!5914 = !DILocation(line: 406, column: 3, scope: !5867)
!5915 = !DILocation(line: 406, column: 17, scope: !5867)
!5916 = !DILocation(line: 406, column: 24, scope: !5867)
!5917 = !DILocation(line: 406, column: 32, scope: !5867)
!5918 = !DILocation(line: 406, column: 37, scope: !5867)
!5919 = !DILocation(line: 406, column: 29, scope: !5867)
!5920 = !DILocation(line: 407, column: 3, scope: !5867)
!5921 = !DILocation(line: 407, column: 17, scope: !5867)
!5922 = !DILocation(line: 407, column: 27, scope: !5871)
!5923 = !DILocation(line: 407, column: 27, scope: !5867)
!5924 = !DILocation(line: 407, column: 59, scope: !5867)
!5925 = !DILocation(line: 407, column: 57, scope: !5867)
!5926 = !DILocation(line: 409, column: 29, scope: !5867)
!5927 = !DILocation(line: 409, column: 3, scope: !5867)
!5928 = !DILocation(line: 409, column: 9, scope: !5867)
!5929 = !DILocation(line: 409, column: 26, scope: !5867)
!5930 = !DILocation(line: 410, column: 26, scope: !5867)
!5931 = !DILocation(line: 410, column: 3, scope: !5867)
!5932 = !DILocation(line: 410, column: 9, scope: !5867)
!5933 = !DILocation(line: 410, column: 23, scope: !5867)
!5934 = !DILocation(line: 411, column: 2, scope: !5868)
!5935 = !DILocation(line: 411, column: 2, scope: !5867)
!5936 = !DILocation(line: 412, column: 16, scope: !5854)
!5937 = !DILocation(line: 412, column: 22, scope: !5854)
!5938 = !DILocation(line: 412, column: 2, scope: !5854)
!5939 = !DILocation(line: 414, column: 9, scope: !5854)
!5940 = !DILocation(line: 415, column: 1, scope: !5854)
!5941 = !DILocation(line: 414, column: 2, scope: !5854)
!5942 = !DISubprogram(name: "drm_buddy_alloc_blocks", scope: !5417, file: !5417, line: 140, type: !5943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5943 = !DISubroutineType(types: !5944)
!5944 = !{!6, !5435, !304, !304, !304, !304, !16, !199}
!5945 = distinct !DISubprogram(name: "i915_ttm_buddy_man_visible_size", scope: !3, file: !3, line: 422, type: !5946, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5948)
!5946 = !DISubroutineType(types: !5947)
!5947 = !{!304, !5288}
!5948 = !{!5949, !5950}
!5949 = !DILocalVariable(name: "man", arg: 1, scope: !5945, file: !3, line: 422, type: !5288)
!5950 = !DILocalVariable(name: "bman", scope: !5945, file: !3, line: 424, type: !5448)
!5951 = !DILocation(line: 422, column: 66, scope: !5945)
!5952 = !DILocation(line: 424, column: 2, scope: !5945)
!5953 = !DILocation(line: 424, column: 33, scope: !5945)
!5954 = !DILocation(line: 424, column: 57, scope: !5945)
!5955 = !DILocation(line: 424, column: 40, scope: !5945)
!5956 = !DILocation(line: 426, column: 9, scope: !5945)
!5957 = !DILocation(line: 426, column: 15, scope: !5945)
!5958 = !DILocation(line: 427, column: 1, scope: !5945)
!5959 = !DILocation(line: 426, column: 2, scope: !5945)
!5960 = distinct !DISubprogram(name: "i915_ttm_buddy_man_avail", scope: !3, file: !3, line: 438, type: !5961, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5963)
!5961 = !DISubroutineType(types: !5962)
!5962 = !{null, !5288, !4386, !4386}
!5963 = !{!5964, !5965, !5966, !5967}
!5964 = !DILocalVariable(name: "man", arg: 1, scope: !5960, file: !3, line: 438, type: !5288)
!5965 = !DILocalVariable(name: "avail", arg: 2, scope: !5960, file: !3, line: 439, type: !4386)
!5966 = !DILocalVariable(name: "visible_avail", arg: 3, scope: !5960, file: !3, line: 439, type: !4386)
!5967 = !DILocalVariable(name: "bman", scope: !5960, file: !3, line: 441, type: !5448)
!5968 = !DILocation(line: 438, column: 60, scope: !5960)
!5969 = !DILocation(line: 439, column: 15, scope: !5960)
!5970 = !DILocation(line: 439, column: 27, scope: !5960)
!5971 = !DILocation(line: 441, column: 2, scope: !5960)
!5972 = !DILocation(line: 441, column: 33, scope: !5960)
!5973 = !DILocation(line: 441, column: 57, scope: !5960)
!5974 = !DILocation(line: 441, column: 40, scope: !5960)
!5975 = !DILocation(line: 443, column: 14, scope: !5960)
!5976 = !DILocation(line: 443, column: 20, scope: !5960)
!5977 = !DILocation(line: 443, column: 2, scope: !5960)
!5978 = !DILocation(line: 444, column: 11, scope: !5960)
!5979 = !DILocation(line: 444, column: 17, scope: !5960)
!5980 = !DILocation(line: 444, column: 20, scope: !5960)
!5981 = !DILocation(line: 444, column: 26, scope: !5960)
!5982 = !DILocation(line: 444, column: 3, scope: !5960)
!5983 = !DILocation(line: 444, column: 9, scope: !5960)
!5984 = !DILocation(line: 445, column: 19, scope: !5960)
!5985 = !DILocation(line: 445, column: 25, scope: !5960)
!5986 = !DILocation(line: 445, column: 3, scope: !5960)
!5987 = !DILocation(line: 445, column: 17, scope: !5960)
!5988 = !DILocation(line: 446, column: 16, scope: !5960)
!5989 = !DILocation(line: 446, column: 22, scope: !5960)
!5990 = !DILocation(line: 446, column: 2, scope: !5960)
!5991 = !DILocation(line: 447, column: 1, scope: !5960)
!5992 = distinct !DISubprogram(name: "kmalloc", scope: !5396, file: !5396, line: 591, type: !5605, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !5993)
!5993 = !{!5994, !5995, !5996}
!5994 = !DILocalVariable(name: "size", arg: 1, scope: !5992, file: !5396, line: 591, type: !196)
!5995 = !DILocalVariable(name: "flags", arg: 2, scope: !5992, file: !5396, line: 591, type: !1600)
!5996 = !DILocalVariable(name: "index", scope: !5997, file: !5396, line: 594, type: !53)
!5997 = distinct !DILexicalBlock(scope: !5998, file: !5396, line: 593, column: 42)
!5998 = distinct !DILexicalBlock(scope: !5992, file: !5396, line: 593, column: 6)
!5999 = !DILocation(line: 591, column: 61, scope: !5992)
!6000 = !DILocation(line: 591, column: 73, scope: !5992)
!6001 = !DILocation(line: 593, column: 27, scope: !5998)
!6002 = !DILocation(line: 593, column: 6, scope: !5998)
!6003 = !DILocation(line: 593, column: 33, scope: !5998)
!6004 = !DILocation(line: 593, column: 36, scope: !5998)
!6005 = !DILocation(line: 593, column: 6, scope: !5992)
!6006 = !DILocation(line: 594, column: 3, scope: !5997)
!6007 = !DILocation(line: 594, column: 16, scope: !5997)
!6008 = !DILocation(line: 596, column: 7, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5997, file: !5396, line: 596, column: 7)
!6010 = !DILocation(line: 596, column: 12, scope: !6009)
!6011 = !DILocation(line: 596, column: 7, scope: !5997)
!6012 = !DILocation(line: 597, column: 25, scope: !6009)
!6013 = !DILocation(line: 597, column: 31, scope: !6009)
!6014 = !DILocation(line: 597, column: 11, scope: !6009)
!6015 = !DILocation(line: 597, column: 4, scope: !6009)
!6016 = !DILocation(line: 599, column: 11, scope: !5997)
!6017 = !DILocation(line: 599, column: 9, scope: !5997)
!6018 = !DILocation(line: 601, column: 33, scope: !5997)
!6019 = !DILocation(line: 601, column: 40, scope: !5997)
!6020 = !DILocation(line: 601, column: 20, scope: !5997)
!6021 = !DILocation(line: 601, column: 5, scope: !5997)
!6022 = !DILocation(line: 601, column: 51, scope: !5997)
!6023 = !DILocation(line: 602, column: 5, scope: !5997)
!6024 = !DILocation(line: 602, column: 12, scope: !5997)
!6025 = !DILocation(line: 600, column: 10, scope: !5997)
!6026 = !DILocation(line: 600, column: 3, scope: !5997)
!6027 = !DILocation(line: 603, column: 2, scope: !5998)
!6028 = !DILocation(line: 604, column: 19, scope: !5992)
!6029 = !DILocation(line: 604, column: 25, scope: !5992)
!6030 = !DILocation(line: 604, column: 9, scope: !5992)
!6031 = !DILocation(line: 604, column: 2, scope: !5992)
!6032 = !DILocation(line: 605, column: 1, scope: !5992)
!6033 = !DISubprogram(name: "kmalloc_large", scope: !5396, file: !5396, line: 531, type: !5605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6034 = distinct !DISubprogram(name: "__kmalloc_index", scope: !5396, file: !5396, line: 444, type: !6035, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6037)
!6035 = !DISubroutineType(types: !6036)
!6036 = !{!53, !196, !578}
!6037 = !{!6038, !6039}
!6038 = !DILocalVariable(name: "size", arg: 1, scope: !6034, file: !5396, line: 444, type: !196)
!6039 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6034, file: !5396, line: 445, type: !578)
!6040 = !DILocation(line: 444, column: 60, scope: !6034)
!6041 = !DILocation(line: 445, column: 16, scope: !6034)
!6042 = !DILocation(line: 447, column: 7, scope: !6043)
!6043 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 447, column: 6)
!6044 = !DILocation(line: 447, column: 6, scope: !6034)
!6045 = !DILocation(line: 448, column: 3, scope: !6043)
!6046 = !DILocation(line: 450, column: 6, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 450, column: 6)
!6048 = !DILocation(line: 450, column: 11, scope: !6047)
!6049 = !DILocation(line: 450, column: 6, scope: !6034)
!6050 = !DILocation(line: 451, column: 3, scope: !6047)
!6051 = !DILocation(line: 453, column: 32, scope: !6052)
!6052 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 453, column: 6)
!6053 = !DILocation(line: 453, column: 37, scope: !6052)
!6054 = !DILocation(line: 453, column: 42, scope: !6052)
!6055 = !DILocation(line: 453, column: 45, scope: !6052)
!6056 = !DILocation(line: 453, column: 50, scope: !6052)
!6057 = !DILocation(line: 453, column: 6, scope: !6034)
!6058 = !DILocation(line: 454, column: 3, scope: !6052)
!6059 = !DILocation(line: 455, column: 32, scope: !6060)
!6060 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 455, column: 6)
!6061 = !DILocation(line: 455, column: 37, scope: !6060)
!6062 = !DILocation(line: 455, column: 43, scope: !6060)
!6063 = !DILocation(line: 455, column: 46, scope: !6060)
!6064 = !DILocation(line: 455, column: 51, scope: !6060)
!6065 = !DILocation(line: 455, column: 6, scope: !6034)
!6066 = !DILocation(line: 456, column: 3, scope: !6060)
!6067 = !DILocation(line: 457, column: 6, scope: !6068)
!6068 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 457, column: 6)
!6069 = !DILocation(line: 457, column: 11, scope: !6068)
!6070 = !DILocation(line: 457, column: 6, scope: !6034)
!6071 = !DILocation(line: 457, column: 26, scope: !6068)
!6072 = !DILocation(line: 458, column: 6, scope: !6073)
!6073 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 458, column: 6)
!6074 = !DILocation(line: 458, column: 11, scope: !6073)
!6075 = !DILocation(line: 458, column: 6, scope: !6034)
!6076 = !DILocation(line: 458, column: 26, scope: !6073)
!6077 = !DILocation(line: 459, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 459, column: 6)
!6079 = !DILocation(line: 459, column: 11, scope: !6078)
!6080 = !DILocation(line: 459, column: 6, scope: !6034)
!6081 = !DILocation(line: 459, column: 26, scope: !6078)
!6082 = !DILocation(line: 460, column: 6, scope: !6083)
!6083 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 460, column: 6)
!6084 = !DILocation(line: 460, column: 11, scope: !6083)
!6085 = !DILocation(line: 460, column: 6, scope: !6034)
!6086 = !DILocation(line: 460, column: 26, scope: !6083)
!6087 = !DILocation(line: 461, column: 6, scope: !6088)
!6088 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 461, column: 6)
!6089 = !DILocation(line: 461, column: 11, scope: !6088)
!6090 = !DILocation(line: 461, column: 6, scope: !6034)
!6091 = !DILocation(line: 461, column: 26, scope: !6088)
!6092 = !DILocation(line: 462, column: 6, scope: !6093)
!6093 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 462, column: 6)
!6094 = !DILocation(line: 462, column: 11, scope: !6093)
!6095 = !DILocation(line: 462, column: 6, scope: !6034)
!6096 = !DILocation(line: 462, column: 26, scope: !6093)
!6097 = !DILocation(line: 463, column: 6, scope: !6098)
!6098 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 463, column: 6)
!6099 = !DILocation(line: 463, column: 11, scope: !6098)
!6100 = !DILocation(line: 463, column: 6, scope: !6034)
!6101 = !DILocation(line: 463, column: 26, scope: !6098)
!6102 = !DILocation(line: 464, column: 6, scope: !6103)
!6103 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 464, column: 6)
!6104 = !DILocation(line: 464, column: 11, scope: !6103)
!6105 = !DILocation(line: 464, column: 6, scope: !6034)
!6106 = !DILocation(line: 464, column: 26, scope: !6103)
!6107 = !DILocation(line: 465, column: 6, scope: !6108)
!6108 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 465, column: 6)
!6109 = !DILocation(line: 465, column: 11, scope: !6108)
!6110 = !DILocation(line: 465, column: 6, scope: !6034)
!6111 = !DILocation(line: 465, column: 26, scope: !6108)
!6112 = !DILocation(line: 466, column: 6, scope: !6113)
!6113 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 466, column: 6)
!6114 = !DILocation(line: 466, column: 11, scope: !6113)
!6115 = !DILocation(line: 466, column: 6, scope: !6034)
!6116 = !DILocation(line: 466, column: 26, scope: !6113)
!6117 = !DILocation(line: 467, column: 6, scope: !6118)
!6118 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 467, column: 6)
!6119 = !DILocation(line: 467, column: 11, scope: !6118)
!6120 = !DILocation(line: 467, column: 6, scope: !6034)
!6121 = !DILocation(line: 467, column: 26, scope: !6118)
!6122 = !DILocation(line: 468, column: 6, scope: !6123)
!6123 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 468, column: 6)
!6124 = !DILocation(line: 468, column: 11, scope: !6123)
!6125 = !DILocation(line: 468, column: 6, scope: !6034)
!6126 = !DILocation(line: 468, column: 26, scope: !6123)
!6127 = !DILocation(line: 469, column: 6, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 469, column: 6)
!6129 = !DILocation(line: 469, column: 11, scope: !6128)
!6130 = !DILocation(line: 469, column: 6, scope: !6034)
!6131 = !DILocation(line: 469, column: 26, scope: !6128)
!6132 = !DILocation(line: 470, column: 6, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 470, column: 6)
!6134 = !DILocation(line: 470, column: 11, scope: !6133)
!6135 = !DILocation(line: 470, column: 6, scope: !6034)
!6136 = !DILocation(line: 470, column: 26, scope: !6133)
!6137 = !DILocation(line: 471, column: 6, scope: !6138)
!6138 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 471, column: 6)
!6139 = !DILocation(line: 471, column: 11, scope: !6138)
!6140 = !DILocation(line: 471, column: 6, scope: !6034)
!6141 = !DILocation(line: 471, column: 26, scope: !6138)
!6142 = !DILocation(line: 472, column: 6, scope: !6143)
!6143 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 472, column: 6)
!6144 = !DILocation(line: 472, column: 11, scope: !6143)
!6145 = !DILocation(line: 472, column: 6, scope: !6034)
!6146 = !DILocation(line: 472, column: 26, scope: !6143)
!6147 = !DILocation(line: 473, column: 6, scope: !6148)
!6148 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 473, column: 6)
!6149 = !DILocation(line: 473, column: 11, scope: !6148)
!6150 = !DILocation(line: 473, column: 6, scope: !6034)
!6151 = !DILocation(line: 473, column: 26, scope: !6148)
!6152 = !DILocation(line: 474, column: 6, scope: !6153)
!6153 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 474, column: 6)
!6154 = !DILocation(line: 474, column: 11, scope: !6153)
!6155 = !DILocation(line: 474, column: 6, scope: !6034)
!6156 = !DILocation(line: 474, column: 27, scope: !6153)
!6157 = !DILocation(line: 475, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 475, column: 6)
!6159 = !DILocation(line: 475, column: 11, scope: !6158)
!6160 = !DILocation(line: 475, column: 6, scope: !6034)
!6161 = !DILocation(line: 475, column: 32, scope: !6158)
!6162 = !DILocation(line: 477, column: 50, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6034, file: !5396, line: 477, column: 6)
!6164 = !DILocation(line: 477, column: 6, scope: !6034)
!6165 = !DILocation(line: 478, column: 3, scope: !6163)
!6166 = !DILocation(line: 478, column: 3, scope: !6167)
!6167 = distinct !DILexicalBlock(scope: !6168, file: !5396, line: 478, column: 3)
!6168 = distinct !DILexicalBlock(scope: !6163, file: !5396, line: 478, column: 3)
!6169 = !{i32 -2143550304}
!6170 = !DILocation(line: 478, column: 3, scope: !6168)
!6171 = !DILocation(line: 480, column: 3, scope: !6163)
!6172 = !DILocation(line: 480, column: 3, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6163, file: !5396, line: 480, column: 3)
!6174 = !DILocation(line: 480, column: 3, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6173, file: !5396, line: 480, column: 3)
!6176 = !DILocation(line: 480, column: 3, scope: !6177)
!6177 = distinct !DILexicalBlock(scope: !6173, file: !5396, line: 480, column: 3)
!6178 = !{i64 2151417195, i64 2151417224, i64 2151417270, i64 2151417328, i64 2151417382, i64 2151417436, i64 2151417491, i64 2151417522}
!6179 = !DILocation(line: 483, column: 2, scope: !6034)
!6180 = !DILocation(line: 484, column: 1, scope: !6034)
!6181 = !DISubprogram(name: "kmalloc_trace", scope: !5396, file: !5396, line: 525, type: !6182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6182 = !DISubroutineType(types: !6183)
!6183 = !{!221, !6184, !1600, !196}
!6184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6185, size: 64)
!6185 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6186, line: 11, flags: DIFlagFwdDecl)
!6186 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6187 = distinct !DISubprogram(name: "kmalloc_type", scope: !5396, file: !5396, line: 401, type: !6188, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6190)
!6188 = !DISubroutineType(types: !6189)
!6189 = !{!5395, !1600, !199}
!6190 = !{!6191, !6192}
!6191 = !DILocalVariable(name: "flags", arg: 1, scope: !6187, file: !5396, line: 401, type: !1600)
!6192 = !DILocalVariable(name: "caller", arg: 2, scope: !6187, file: !5396, line: 401, type: !199)
!6193 = !DILocation(line: 401, column: 67, scope: !6187)
!6194 = !DILocation(line: 401, column: 88, scope: !6187)
!6195 = !DILocation(line: 407, column: 6, scope: !6196)
!6196 = distinct !DILexicalBlock(scope: !6187, file: !5396, line: 407, column: 6)
!6197 = !DILocation(line: 407, column: 6, scope: !6187)
!6198 = !DILocation(line: 413, column: 3, scope: !6196)
!6199 = !DILocation(line: 423, column: 38, scope: !6200)
!6200 = distinct !DILexicalBlock(scope: !6187, file: !5396, line: 423, column: 6)
!6201 = !DILocation(line: 423, column: 44, scope: !6200)
!6202 = !DILocation(line: 423, column: 6, scope: !6187)
!6203 = !DILocation(line: 424, column: 3, scope: !6200)
!6204 = !DILocation(line: 426, column: 3, scope: !6205)
!6205 = distinct !DILexicalBlock(scope: !6187, file: !5396, line: 425, column: 6)
!6206 = !DILocation(line: 429, column: 1, scope: !6187)
!6207 = !DISubprogram(name: "__kmalloc", scope: !5396, file: !5396, line: 488, type: !5605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6208 = !DISubprogram(name: "__compiletime_assert_117", scope: !5396, file: !5396, line: 478, type: !863, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6209 = distinct !DISubprogram(name: "i915_ttm_buddy_man_alloc", scope: !3, file: !3, line: 34, type: !5286, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6210)
!6210 = !{!6211, !6212, !6213, !6214, !6215, !6216, !6217, !6218, !6219, !6220, !6221, !6222, !6223, !6226, !6229, !6232, !6235, !6238, !6241, !6243, !6244, !6246, !6247}
!6211 = !DILocalVariable(name: "man", arg: 1, scope: !6209, file: !3, line: 34, type: !5288)
!6212 = !DILocalVariable(name: "bo", arg: 2, scope: !6209, file: !3, line: 35, type: !30)
!6213 = !DILocalVariable(name: "place", arg: 3, scope: !6209, file: !3, line: 36, type: !5228)
!6214 = !DILocalVariable(name: "res", arg: 4, scope: !6209, file: !3, line: 37, type: !5289)
!6215 = !DILocalVariable(name: "bman", scope: !6209, file: !3, line: 39, type: !5448)
!6216 = !DILocalVariable(name: "bman_res", scope: !6209, file: !3, line: 40, type: !5426)
!6217 = !DILocalVariable(name: "mm", scope: !6209, file: !3, line: 41, type: !5435)
!6218 = !DILocalVariable(name: "n_pages", scope: !6209, file: !3, line: 42, type: !199)
!6219 = !DILocalVariable(name: "lpfn", scope: !6209, file: !3, line: 42, type: !199)
!6220 = !DILocalVariable(name: "min_page_size", scope: !6209, file: !3, line: 43, type: !304)
!6221 = !DILocalVariable(name: "size", scope: !6209, file: !3, line: 44, type: !304)
!6222 = !DILocalVariable(name: "err", scope: !6209, file: !3, line: 45, type: !6)
!6223 = !DILocalVariable(name: "pages", scope: !6224, file: !3, line: 77, type: !199)
!6224 = distinct !DILexicalBlock(scope: !6225, file: !3, line: 76, column: 45)
!6225 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 75, column: 6)
!6226 = !DILocalVariable(name: "original_size", scope: !6227, file: !3, line: 111, type: !304)
!6227 = distinct !DILexicalBlock(scope: !6228, file: !3, line: 110, column: 45)
!6228 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 110, column: 6)
!6229 = !DILocalVariable(name: "block", scope: !6230, file: !3, line: 121, type: !5415)
!6230 = distinct !DILexicalBlock(scope: !6231, file: !3, line: 120, column: 9)
!6231 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 118, column: 6)
!6232 = !DILocalVariable(name: "__mptr", scope: !6233, file: !3, line: 123, type: !221)
!6233 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 123, column: 3)
!6234 = distinct !DILexicalBlock(scope: !6230, file: !3, line: 123, column: 3)
!6235 = !DILocalVariable(name: "start", scope: !6236, file: !3, line: 124, type: !199)
!6236 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 123, column: 55)
!6237 = distinct !DILexicalBlock(scope: !6234, file: !3, line: 123, column: 3)
!6238 = !DILocalVariable(name: "end", scope: !6239, file: !3, line: 128, type: !199)
!6239 = distinct !DILexicalBlock(scope: !6240, file: !3, line: 127, column: 36)
!6240 = distinct !DILexicalBlock(scope: !6236, file: !3, line: 127, column: 8)
!6241 = !DILocalVariable(name: "__UNIQUE_ID___x301", scope: !6242, file: !3, line: 132, type: !199)
!6242 = distinct !DILexicalBlock(scope: !6239, file: !3, line: 132, column: 6)
!6243 = !DILocalVariable(name: "__UNIQUE_ID___y302", scope: !6242, file: !3, line: 132, type: !199)
!6244 = !DILocalVariable(name: "__mptr", scope: !6245, file: !3, line: 123, type: !221)
!6245 = distinct !DILexicalBlock(scope: !6237, file: !3, line: 123, column: 3)
!6246 = !DILabel(scope: !6209, name: "err_free_blocks", file: !3, line: 145)
!6247 = !DILabel(scope: !6209, name: "err_free_res", file: !3, line: 148)
!6248 = !DILocation(line: 34, column: 66, scope: !6209)
!6249 = !DILocation(line: 35, column: 35, scope: !6209)
!6250 = !DILocation(line: 36, column: 33, scope: !6209)
!6251 = !DILocation(line: 37, column: 31, scope: !6209)
!6252 = !DILocation(line: 39, column: 2, scope: !6209)
!6253 = !DILocation(line: 39, column: 33, scope: !6209)
!6254 = !DILocation(line: 39, column: 57, scope: !6209)
!6255 = !DILocation(line: 39, column: 40, scope: !6209)
!6256 = !DILocation(line: 40, column: 2, scope: !6209)
!6257 = !DILocation(line: 40, column: 34, scope: !6209)
!6258 = !DILocation(line: 41, column: 2, scope: !6209)
!6259 = !DILocation(line: 41, column: 20, scope: !6209)
!6260 = !DILocation(line: 41, column: 26, scope: !6209)
!6261 = !DILocation(line: 41, column: 32, scope: !6209)
!6262 = !DILocation(line: 42, column: 2, scope: !6209)
!6263 = !DILocation(line: 42, column: 16, scope: !6209)
!6264 = !DILocation(line: 42, column: 25, scope: !6209)
!6265 = !DILocation(line: 43, column: 2, scope: !6209)
!6266 = !DILocation(line: 43, column: 6, scope: !6209)
!6267 = !DILocation(line: 44, column: 2, scope: !6209)
!6268 = !DILocation(line: 44, column: 6, scope: !6209)
!6269 = !DILocation(line: 45, column: 2, scope: !6209)
!6270 = !DILocation(line: 45, column: 6, scope: !6209)
!6271 = !DILocation(line: 47, column: 9, scope: !6209)
!6272 = !DILocation(line: 47, column: 16, scope: !6209)
!6273 = !DILocation(line: 47, column: 7, scope: !6209)
!6274 = !DILocation(line: 48, column: 7, scope: !6275)
!6275 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 48, column: 6)
!6276 = !DILocation(line: 48, column: 6, scope: !6209)
!6277 = !DILocation(line: 49, column: 10, scope: !6275)
!6278 = !DILocation(line: 49, column: 15, scope: !6275)
!6279 = !DILocation(line: 49, column: 8, scope: !6275)
!6280 = !DILocation(line: 49, column: 3, scope: !6275)
!6281 = !DILocation(line: 51, column: 13, scope: !6209)
!6282 = !DILocation(line: 51, column: 11, scope: !6209)
!6283 = !DILocation(line: 52, column: 7, scope: !6284)
!6284 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 52, column: 6)
!6285 = !DILocation(line: 52, column: 6, scope: !6209)
!6286 = !DILocation(line: 53, column: 3, scope: !6284)
!6287 = !DILocation(line: 55, column: 20, scope: !6209)
!6288 = !DILocation(line: 55, column: 24, scope: !6209)
!6289 = !DILocation(line: 55, column: 32, scope: !6209)
!6290 = !DILocation(line: 55, column: 42, scope: !6209)
!6291 = !DILocation(line: 55, column: 2, scope: !6209)
!6292 = !DILocation(line: 56, column: 18, scope: !6209)
!6293 = !DILocation(line: 56, column: 28, scope: !6209)
!6294 = !DILocation(line: 56, column: 2, scope: !6209)
!6295 = !DILocation(line: 57, column: 17, scope: !6209)
!6296 = !DILocation(line: 57, column: 2, scope: !6209)
!6297 = !DILocation(line: 57, column: 12, scope: !6209)
!6298 = !DILocation(line: 57, column: 15, scope: !6209)
!6299 = !DILocation(line: 59, column: 6, scope: !6300)
!6300 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 59, column: 6)
!6301 = !DILocation(line: 59, column: 13, scope: !6300)
!6302 = !DILocation(line: 59, column: 19, scope: !6300)
!6303 = !DILocation(line: 59, column: 6, scope: !6209)
!6304 = !DILocation(line: 60, column: 3, scope: !6300)
!6305 = !DILocation(line: 60, column: 13, scope: !6300)
!6306 = !DILocation(line: 60, column: 19, scope: !6300)
!6307 = !DILocation(line: 62, column: 6, scope: !6308)
!6308 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 62, column: 6)
!6309 = !DILocation(line: 62, column: 13, scope: !6308)
!6310 = !DILocation(line: 62, column: 18, scope: !6308)
!6311 = !DILocation(line: 62, column: 21, scope: !6308)
!6312 = !DILocation(line: 62, column: 29, scope: !6308)
!6313 = !DILocation(line: 62, column: 34, scope: !6308)
!6314 = !DILocation(line: 62, column: 26, scope: !6308)
!6315 = !DILocation(line: 62, column: 6, scope: !6209)
!6316 = !DILocation(line: 63, column: 3, scope: !6308)
!6317 = !DILocation(line: 63, column: 13, scope: !6308)
!6318 = !DILocation(line: 63, column: 19, scope: !6308)
!6319 = !DILocation(line: 66, column: 9, scope: !6209)
!6320 = !DILocation(line: 66, column: 19, scope: !6209)
!6321 = !DILocation(line: 66, column: 24, scope: !6209)
!6322 = !DILocation(line: 66, column: 7, scope: !6209)
!6323 = !DILocation(line: 68, column: 18, scope: !6209)
!6324 = !DILocation(line: 68, column: 24, scope: !6209)
!6325 = !DILocation(line: 68, column: 16, scope: !6209)
!6326 = !DILocation(line: 69, column: 6, scope: !6327)
!6327 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 69, column: 6)
!6328 = !DILocation(line: 69, column: 10, scope: !6327)
!6329 = !DILocation(line: 69, column: 6, scope: !6209)
!6330 = !DILocation(line: 70, column: 19, scope: !6327)
!6331 = !DILocation(line: 70, column: 23, scope: !6327)
!6332 = !DILocation(line: 70, column: 38, scope: !6327)
!6333 = !DILocation(line: 70, column: 17, scope: !6327)
!6334 = !DILocation(line: 70, column: 3, scope: !6327)
!6335 = !DILocation(line: 75, column: 6, scope: !6225)
!6336 = !DILocation(line: 75, column: 13, scope: !6225)
!6337 = !DILocation(line: 75, column: 20, scope: !6225)
!6338 = !DILocation(line: 75, column: 18, scope: !6225)
!6339 = !DILocation(line: 75, column: 51, scope: !6225)
!6340 = !DILocation(line: 75, column: 58, scope: !6225)
!6341 = !DILocation(line: 75, column: 48, scope: !6225)
!6342 = !DILocation(line: 75, column: 63, scope: !6225)
!6343 = !DILocation(line: 76, column: 6, scope: !6225)
!6344 = !DILocation(line: 76, column: 13, scope: !6225)
!6345 = !DILocation(line: 76, column: 19, scope: !6225)
!6346 = !DILocation(line: 75, column: 6, scope: !6209)
!6347 = !DILocation(line: 77, column: 3, scope: !6224)
!6348 = !DILocation(line: 77, column: 17, scope: !6224)
!6349 = !DILocation(line: 79, column: 10, scope: !6224)
!6350 = !DILocation(line: 79, column: 8, scope: !6224)
!6351 = !DILocation(line: 80, column: 19, scope: !6224)
!6352 = !DILocation(line: 80, column: 17, scope: !6224)
!6353 = !DILocation(line: 82, column: 11, scope: !6224)
!6354 = !DILocation(line: 82, column: 19, scope: !6224)
!6355 = !DILocation(line: 82, column: 16, scope: !6224)
!6356 = !DILocation(line: 82, column: 9, scope: !6224)
!6357 = !DILocation(line: 83, column: 7, scope: !6358)
!6358 = distinct !DILexicalBlock(scope: !6224, file: !3, line: 83, column: 7)
!6359 = !DILocation(line: 83, column: 15, scope: !6358)
!6360 = !DILocation(line: 83, column: 13, scope: !6358)
!6361 = !DILocation(line: 83, column: 7, scope: !6224)
!6362 = !DILocation(line: 84, column: 11, scope: !6358)
!6363 = !DILocation(line: 84, column: 9, scope: !6358)
!6364 = !DILocation(line: 84, column: 4, scope: !6358)
!6365 = !DILocation(line: 85, column: 2, scope: !6225)
!6366 = !DILocation(line: 85, column: 2, scope: !6224)
!6367 = !DILocation(line: 87, column: 6, scope: !6368)
!6368 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 87, column: 6)
!6369 = !DILocation(line: 87, column: 13, scope: !6368)
!6370 = !DILocation(line: 87, column: 18, scope: !6368)
!6371 = !DILocation(line: 87, column: 11, scope: !6368)
!6372 = !DILocation(line: 87, column: 6, scope: !6209)
!6373 = !DILocation(line: 88, column: 7, scope: !6374)
!6374 = distinct !DILexicalBlock(scope: !6368, file: !3, line: 87, column: 33)
!6375 = !DILocation(line: 89, column: 3, scope: !6374)
!6376 = !DILocation(line: 92, column: 12, scope: !6209)
!6377 = !DILocation(line: 92, column: 20, scope: !6209)
!6378 = !DILocation(line: 92, column: 17, scope: !6209)
!6379 = !DILocation(line: 92, column: 10, scope: !6209)
!6380 = !DILocation(line: 94, column: 14, scope: !6209)
!6381 = !DILocation(line: 94, column: 20, scope: !6209)
!6382 = !DILocation(line: 94, column: 2, scope: !6209)
!6383 = !DILocation(line: 95, column: 6, scope: !6384)
!6384 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 95, column: 6)
!6385 = !DILocation(line: 95, column: 14, scope: !6384)
!6386 = !DILocation(line: 95, column: 20, scope: !6384)
!6387 = !DILocation(line: 95, column: 11, scope: !6384)
!6388 = !DILocation(line: 95, column: 33, scope: !6384)
!6389 = !DILocation(line: 95, column: 36, scope: !6384)
!6390 = !DILocation(line: 95, column: 46, scope: !6384)
!6391 = !DILocation(line: 95, column: 52, scope: !6384)
!6392 = !DILocation(line: 95, column: 44, scope: !6384)
!6393 = !DILocation(line: 95, column: 6, scope: !6209)
!6394 = !DILocation(line: 96, column: 17, scope: !6395)
!6395 = distinct !DILexicalBlock(scope: !6384, file: !3, line: 95, column: 67)
!6396 = !DILocation(line: 96, column: 23, scope: !6395)
!6397 = !DILocation(line: 96, column: 3, scope: !6395)
!6398 = !DILocation(line: 97, column: 7, scope: !6395)
!6399 = !DILocation(line: 98, column: 3, scope: !6395)
!6400 = !DILocation(line: 101, column: 31, scope: !6209)
!6401 = !DILocation(line: 101, column: 40, scope: !6209)
!6402 = !DILocation(line: 101, column: 47, scope: !6209)
!6403 = !DILocation(line: 101, column: 35, scope: !6209)
!6404 = !DILocation(line: 101, column: 52, scope: !6209)
!6405 = !DILocation(line: 102, column: 15, scope: !6209)
!6406 = !DILocation(line: 102, column: 20, scope: !6209)
!6407 = !DILocation(line: 103, column: 15, scope: !6209)
!6408 = !DILocation(line: 103, column: 23, scope: !6209)
!6409 = !DILocation(line: 104, column: 10, scope: !6209)
!6410 = !DILocation(line: 105, column: 11, scope: !6209)
!6411 = !DILocation(line: 105, column: 21, scope: !6209)
!6412 = !DILocation(line: 106, column: 10, scope: !6209)
!6413 = !DILocation(line: 106, column: 20, scope: !6209)
!6414 = !DILocation(line: 101, column: 8, scope: !6209)
!6415 = !DILocation(line: 101, column: 6, scope: !6209)
!6416 = !DILocation(line: 107, column: 6, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 107, column: 6)
!6418 = !DILocation(line: 107, column: 6, scope: !6209)
!6419 = !DILocation(line: 108, column: 3, scope: !6417)
!6420 = !DILocation(line: 110, column: 6, scope: !6228)
!6421 = !DILocation(line: 110, column: 13, scope: !6228)
!6422 = !DILocation(line: 110, column: 19, scope: !6228)
!6423 = !DILocation(line: 110, column: 6, scope: !6209)
!6424 = !DILocation(line: 111, column: 3, scope: !6227)
!6425 = !DILocation(line: 111, column: 7, scope: !6227)
!6426 = !DILocation(line: 111, column: 28, scope: !6227)
!6427 = !DILocation(line: 111, column: 38, scope: !6227)
!6428 = !DILocation(line: 111, column: 43, scope: !6227)
!6429 = !DILocation(line: 113, column: 24, scope: !6227)
!6430 = !DILocation(line: 114, column: 10, scope: !6227)
!6431 = !DILocation(line: 115, column: 11, scope: !6227)
!6432 = !DILocation(line: 115, column: 21, scope: !6227)
!6433 = !DILocation(line: 113, column: 3, scope: !6227)
!6434 = !DILocation(line: 116, column: 2, scope: !6228)
!6435 = !DILocation(line: 116, column: 2, scope: !6227)
!6436 = !DILocation(line: 118, column: 6, scope: !6231)
!6437 = !DILocation(line: 118, column: 14, scope: !6231)
!6438 = !DILocation(line: 118, column: 20, scope: !6231)
!6439 = !DILocation(line: 118, column: 11, scope: !6231)
!6440 = !DILocation(line: 118, column: 6, scope: !6209)
!6441 = !DILocation(line: 119, column: 33, scope: !6442)
!6442 = distinct !DILexicalBlock(scope: !6231, file: !3, line: 118, column: 34)
!6443 = !DILocation(line: 119, column: 3, scope: !6442)
!6444 = !DILocation(line: 119, column: 13, scope: !6442)
!6445 = !DILocation(line: 119, column: 31, scope: !6442)
!6446 = !DILocation(line: 120, column: 2, scope: !6442)
!6447 = !DILocation(line: 121, column: 3, scope: !6230)
!6448 = !DILocation(line: 121, column: 27, scope: !6230)
!6449 = !DILocation(line: 123, column: 3, scope: !6233)
!6450 = !DILocation(line: 123, column: 3, scope: !6234)
!6451 = !DILocation(line: 123, column: 3, scope: !6237)
!6452 = !DILocation(line: 124, column: 4, scope: !6236)
!6453 = !DILocation(line: 124, column: 18, scope: !6236)
!6454 = !DILocation(line: 125, column: 28, scope: !6236)
!6455 = !DILocation(line: 125, column: 5, scope: !6236)
!6456 = !DILocation(line: 125, column: 35, scope: !6236)
!6457 = !DILocation(line: 127, column: 8, scope: !6240)
!6458 = !DILocation(line: 127, column: 16, scope: !6240)
!6459 = !DILocation(line: 127, column: 22, scope: !6240)
!6460 = !DILocation(line: 127, column: 14, scope: !6240)
!6461 = !DILocation(line: 127, column: 8, scope: !6236)
!6462 = !DILocation(line: 128, column: 5, scope: !6239)
!6463 = !DILocation(line: 128, column: 19, scope: !6239)
!6464 = !DILocation(line: 128, column: 25, scope: !6239)
!6465 = !DILocation(line: 129, column: 28, scope: !6239)
!6466 = !DILocation(line: 129, column: 32, scope: !6239)
!6467 = !DILocation(line: 129, column: 7, scope: !6239)
!6468 = !DILocation(line: 129, column: 39, scope: !6239)
!6469 = !DILocation(line: 128, column: 31, scope: !6239)
!6470 = !DILocation(line: 132, column: 6, scope: !6242)
!6471 = !DILocation(line: 132, column: 6, scope: !6239)
!6472 = !DILocation(line: 132, column: 37, scope: !6239)
!6473 = !DILocation(line: 132, column: 35, scope: !6239)
!6474 = !DILocation(line: 131, column: 5, scope: !6239)
!6475 = !DILocation(line: 131, column: 15, scope: !6239)
!6476 = !DILocation(line: 131, column: 33, scope: !6239)
!6477 = !DILocation(line: 133, column: 4, scope: !6240)
!6478 = !DILocation(line: 133, column: 4, scope: !6239)
!6479 = !DILocation(line: 134, column: 3, scope: !6237)
!6480 = !DILocation(line: 134, column: 3, scope: !6236)
!6481 = !DILocation(line: 123, column: 3, scope: !6245)
!6482 = distinct !{!6482, !6450, !6483, !5687, !5688}
!6483 = !DILocation(line: 134, column: 3, scope: !6234)
!6484 = !DILocation(line: 135, column: 2, scope: !6231)
!6485 = !DILocation(line: 137, column: 6, scope: !6486)
!6486 = distinct !DILexicalBlock(scope: !6209, file: !3, line: 137, column: 6)
!6487 = !DILocation(line: 137, column: 16, scope: !6486)
!6488 = !DILocation(line: 137, column: 6, scope: !6209)
!6489 = !DILocation(line: 138, column: 26, scope: !6486)
!6490 = !DILocation(line: 138, column: 36, scope: !6486)
!6491 = !DILocation(line: 138, column: 3, scope: !6486)
!6492 = !DILocation(line: 138, column: 9, scope: !6486)
!6493 = !DILocation(line: 138, column: 23, scope: !6486)
!6494 = !DILocation(line: 140, column: 16, scope: !6209)
!6495 = !DILocation(line: 140, column: 22, scope: !6209)
!6496 = !DILocation(line: 140, column: 2, scope: !6209)
!6497 = !DILocation(line: 142, column: 10, scope: !6209)
!6498 = !DILocation(line: 142, column: 20, scope: !6209)
!6499 = !DILocation(line: 142, column: 3, scope: !6209)
!6500 = !DILocation(line: 142, column: 7, scope: !6209)
!6501 = !DILocation(line: 143, column: 2, scope: !6209)
!6502 = !DILocation(line: 145, column: 1, scope: !6209)
!6503 = !DILocation(line: 146, column: 22, scope: !6209)
!6504 = !DILocation(line: 146, column: 27, scope: !6209)
!6505 = !DILocation(line: 146, column: 37, scope: !6209)
!6506 = !DILocation(line: 146, column: 2, scope: !6209)
!6507 = !DILocation(line: 147, column: 16, scope: !6209)
!6508 = !DILocation(line: 147, column: 22, scope: !6209)
!6509 = !DILocation(line: 147, column: 2, scope: !6209)
!6510 = !DILocation(line: 148, column: 1, scope: !6209)
!6511 = !DILocation(line: 149, column: 20, scope: !6209)
!6512 = !DILocation(line: 149, column: 26, scope: !6209)
!6513 = !DILocation(line: 149, column: 36, scope: !6209)
!6514 = !DILocation(line: 149, column: 2, scope: !6209)
!6515 = !DILocation(line: 150, column: 8, scope: !6209)
!6516 = !DILocation(line: 150, column: 2, scope: !6209)
!6517 = !DILocation(line: 151, column: 9, scope: !6209)
!6518 = !DILocation(line: 151, column: 2, scope: !6209)
!6519 = !DILocation(line: 152, column: 1, scope: !6209)
!6520 = distinct !DISubprogram(name: "i915_ttm_buddy_man_free", scope: !3, file: !3, line: 154, type: !5292, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6521)
!6521 = !{!6522, !6523, !6524, !6525}
!6522 = !DILocalVariable(name: "man", arg: 1, scope: !6520, file: !3, line: 154, type: !5288)
!6523 = !DILocalVariable(name: "res", arg: 2, scope: !6520, file: !3, line: 155, type: !5165)
!6524 = !DILocalVariable(name: "bman_res", scope: !6520, file: !3, line: 157, type: !5426)
!6525 = !DILocalVariable(name: "bman", scope: !6520, file: !3, line: 158, type: !5448)
!6526 = !DILocation(line: 154, column: 66, scope: !6520)
!6527 = !DILocation(line: 155, column: 30, scope: !6520)
!6528 = !DILocation(line: 157, column: 2, scope: !6520)
!6529 = !DILocation(line: 157, column: 34, scope: !6520)
!6530 = !DILocation(line: 157, column: 67, scope: !6520)
!6531 = !DILocation(line: 157, column: 45, scope: !6520)
!6532 = !DILocation(line: 158, column: 2, scope: !6520)
!6533 = !DILocation(line: 158, column: 33, scope: !6520)
!6534 = !DILocation(line: 158, column: 57, scope: !6520)
!6535 = !DILocation(line: 158, column: 40, scope: !6520)
!6536 = !DILocation(line: 160, column: 14, scope: !6520)
!6537 = !DILocation(line: 160, column: 20, scope: !6520)
!6538 = !DILocation(line: 160, column: 2, scope: !6520)
!6539 = !DILocation(line: 161, column: 23, scope: !6520)
!6540 = !DILocation(line: 161, column: 29, scope: !6520)
!6541 = !DILocation(line: 161, column: 34, scope: !6520)
!6542 = !DILocation(line: 161, column: 44, scope: !6520)
!6543 = !DILocation(line: 161, column: 2, scope: !6520)
!6544 = !DILocation(line: 162, column: 25, scope: !6520)
!6545 = !DILocation(line: 162, column: 35, scope: !6520)
!6546 = !DILocation(line: 162, column: 2, scope: !6520)
!6547 = !DILocation(line: 162, column: 8, scope: !6520)
!6548 = !DILocation(line: 162, column: 22, scope: !6520)
!6549 = !DILocation(line: 163, column: 16, scope: !6520)
!6550 = !DILocation(line: 163, column: 22, scope: !6520)
!6551 = !DILocation(line: 163, column: 2, scope: !6520)
!6552 = !DILocation(line: 165, column: 20, scope: !6520)
!6553 = !DILocation(line: 165, column: 25, scope: !6520)
!6554 = !DILocation(line: 165, column: 2, scope: !6520)
!6555 = !DILocation(line: 166, column: 8, scope: !6520)
!6556 = !DILocation(line: 166, column: 2, scope: !6520)
!6557 = !DILocation(line: 167, column: 1, scope: !6520)
!6558 = distinct !DISubprogram(name: "i915_ttm_buddy_man_intersects", scope: !3, file: !3, line: 169, type: !5296, scopeLine: 173, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6559)
!6559 = !{!6560, !6561, !6562, !6563, !6564, !6565, !6566, !6567, !6568, !6571, !6574, !6575}
!6560 = !DILocalVariable(name: "man", arg: 1, scope: !6558, file: !3, line: 169, type: !5288)
!6561 = !DILocalVariable(name: "res", arg: 2, scope: !6558, file: !3, line: 170, type: !5165)
!6562 = !DILocalVariable(name: "place", arg: 3, scope: !6558, file: !3, line: 171, type: !5228)
!6563 = !DILocalVariable(name: "size", arg: 4, scope: !6558, file: !3, line: 172, type: !196)
!6564 = !DILocalVariable(name: "bman_res", scope: !6558, file: !3, line: 174, type: !5426)
!6565 = !DILocalVariable(name: "bman", scope: !6558, file: !3, line: 175, type: !5448)
!6566 = !DILocalVariable(name: "mm", scope: !6558, file: !3, line: 176, type: !5435)
!6567 = !DILocalVariable(name: "block", scope: !6558, file: !3, line: 177, type: !5415)
!6568 = !DILocalVariable(name: "__mptr", scope: !6569, file: !3, line: 194, type: !221)
!6569 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 194, column: 2)
!6570 = distinct !DILexicalBlock(scope: !6558, file: !3, line: 194, column: 2)
!6571 = !DILocalVariable(name: "fpfn", scope: !6572, file: !3, line: 195, type: !199)
!6572 = distinct !DILexicalBlock(scope: !6573, file: !3, line: 194, column: 54)
!6573 = distinct !DILexicalBlock(scope: !6570, file: !3, line: 194, column: 2)
!6574 = !DILocalVariable(name: "lpfn", scope: !6572, file: !3, line: 197, type: !199)
!6575 = !DILocalVariable(name: "__mptr", scope: !6576, file: !3, line: 194, type: !221)
!6576 = distinct !DILexicalBlock(scope: !6573, file: !3, line: 194, column: 2)
!6577 = !DILocation(line: 169, column: 72, scope: !6558)
!6578 = !DILocation(line: 170, column: 29, scope: !6558)
!6579 = !DILocation(line: 171, column: 32, scope: !6558)
!6580 = !DILocation(line: 172, column: 15, scope: !6558)
!6581 = !DILocation(line: 174, column: 2, scope: !6558)
!6582 = !DILocation(line: 174, column: 34, scope: !6558)
!6583 = !DILocation(line: 174, column: 67, scope: !6558)
!6584 = !DILocation(line: 174, column: 45, scope: !6558)
!6585 = !DILocation(line: 175, column: 2, scope: !6558)
!6586 = !DILocation(line: 175, column: 33, scope: !6558)
!6587 = !DILocation(line: 175, column: 57, scope: !6558)
!6588 = !DILocation(line: 175, column: 40, scope: !6558)
!6589 = !DILocation(line: 176, column: 2, scope: !6558)
!6590 = !DILocation(line: 176, column: 20, scope: !6558)
!6591 = !DILocation(line: 176, column: 26, scope: !6558)
!6592 = !DILocation(line: 176, column: 32, scope: !6558)
!6593 = !DILocation(line: 177, column: 2, scope: !6558)
!6594 = !DILocation(line: 177, column: 26, scope: !6558)
!6595 = !DILocation(line: 179, column: 7, scope: !6596)
!6596 = distinct !DILexicalBlock(scope: !6558, file: !3, line: 179, column: 6)
!6597 = !DILocation(line: 179, column: 14, scope: !6596)
!6598 = !DILocation(line: 179, column: 19, scope: !6596)
!6599 = !DILocation(line: 179, column: 23, scope: !6596)
!6600 = !DILocation(line: 179, column: 30, scope: !6596)
!6601 = !DILocation(line: 179, column: 6, scope: !6558)
!6602 = !DILocation(line: 180, column: 3, scope: !6596)
!6603 = !DILocation(line: 189, column: 7, scope: !6604)
!6604 = distinct !DILexicalBlock(scope: !6558, file: !3, line: 189, column: 6)
!6605 = !DILocation(line: 189, column: 14, scope: !6604)
!6606 = !DILocation(line: 189, column: 19, scope: !6604)
!6607 = !DILocation(line: 190, column: 6, scope: !6604)
!6608 = !DILocation(line: 190, column: 13, scope: !6604)
!6609 = !DILocation(line: 190, column: 53, scope: !6604)
!6610 = !DILocation(line: 190, column: 21, scope: !6604)
!6611 = !DILocation(line: 190, column: 18, scope: !6604)
!6612 = !DILocation(line: 189, column: 6, scope: !6558)
!6613 = !DILocation(line: 191, column: 10, scope: !6604)
!6614 = !DILocation(line: 191, column: 20, scope: !6604)
!6615 = !DILocation(line: 191, column: 38, scope: !6604)
!6616 = !DILocation(line: 191, column: 3, scope: !6604)
!6617 = !DILocation(line: 194, column: 2, scope: !6569)
!6618 = !DILocation(line: 194, column: 2, scope: !6570)
!6619 = !DILocation(line: 194, column: 2, scope: !6573)
!6620 = !DILocation(line: 195, column: 3, scope: !6572)
!6621 = !DILocation(line: 195, column: 17, scope: !6572)
!6622 = !DILocation(line: 196, column: 27, scope: !6572)
!6623 = !DILocation(line: 196, column: 4, scope: !6572)
!6624 = !DILocation(line: 196, column: 34, scope: !6572)
!6625 = !DILocation(line: 197, column: 3, scope: !6572)
!6626 = !DILocation(line: 197, column: 17, scope: !6572)
!6627 = !DILocation(line: 197, column: 24, scope: !6572)
!6628 = !DILocation(line: 198, column: 26, scope: !6572)
!6629 = !DILocation(line: 198, column: 30, scope: !6572)
!6630 = !DILocation(line: 198, column: 5, scope: !6572)
!6631 = !DILocation(line: 198, column: 37, scope: !6572)
!6632 = !DILocation(line: 197, column: 29, scope: !6572)
!6633 = !DILocation(line: 200, column: 7, scope: !6634)
!6634 = distinct !DILexicalBlock(scope: !6572, file: !3, line: 200, column: 7)
!6635 = !DILocation(line: 200, column: 14, scope: !6634)
!6636 = !DILocation(line: 200, column: 21, scope: !6634)
!6637 = !DILocation(line: 200, column: 19, scope: !6634)
!6638 = !DILocation(line: 200, column: 26, scope: !6634)
!6639 = !DILocation(line: 200, column: 29, scope: !6634)
!6640 = !DILocation(line: 200, column: 36, scope: !6634)
!6641 = !DILocation(line: 200, column: 43, scope: !6634)
!6642 = !DILocation(line: 200, column: 41, scope: !6634)
!6643 = !DILocation(line: 200, column: 7, scope: !6572)
!6644 = !DILocation(line: 201, column: 4, scope: !6634)
!6645 = !DILocation(line: 202, column: 2, scope: !6573)
!6646 = !DILocation(line: 202, column: 2, scope: !6572)
!6647 = !DILocation(line: 194, column: 2, scope: !6576)
!6648 = distinct !{!6648, !6618, !6649, !5687, !5688}
!6649 = !DILocation(line: 202, column: 2, scope: !6570)
!6650 = !DILocation(line: 204, column: 2, scope: !6558)
!6651 = !DILocation(line: 205, column: 1, scope: !6558)
!6652 = distinct !DISubprogram(name: "i915_ttm_buddy_man_compatible", scope: !3, file: !3, line: 207, type: !5296, scopeLine: 211, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6653)
!6653 = !{!6654, !6655, !6656, !6657, !6658, !6659, !6660, !6661, !6662, !6665, !6668, !6669}
!6654 = !DILocalVariable(name: "man", arg: 1, scope: !6652, file: !3, line: 207, type: !5288)
!6655 = !DILocalVariable(name: "res", arg: 2, scope: !6652, file: !3, line: 208, type: !5165)
!6656 = !DILocalVariable(name: "place", arg: 3, scope: !6652, file: !3, line: 209, type: !5228)
!6657 = !DILocalVariable(name: "size", arg: 4, scope: !6652, file: !3, line: 210, type: !196)
!6658 = !DILocalVariable(name: "bman_res", scope: !6652, file: !3, line: 212, type: !5426)
!6659 = !DILocalVariable(name: "bman", scope: !6652, file: !3, line: 213, type: !5448)
!6660 = !DILocalVariable(name: "mm", scope: !6652, file: !3, line: 214, type: !5435)
!6661 = !DILocalVariable(name: "block", scope: !6652, file: !3, line: 215, type: !5415)
!6662 = !DILocalVariable(name: "__mptr", scope: !6663, file: !3, line: 227, type: !221)
!6663 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 227, column: 2)
!6664 = distinct !DILexicalBlock(scope: !6652, file: !3, line: 227, column: 2)
!6665 = !DILocalVariable(name: "fpfn", scope: !6666, file: !3, line: 228, type: !199)
!6666 = distinct !DILexicalBlock(scope: !6667, file: !3, line: 227, column: 54)
!6667 = distinct !DILexicalBlock(scope: !6664, file: !3, line: 227, column: 2)
!6668 = !DILocalVariable(name: "lpfn", scope: !6666, file: !3, line: 230, type: !199)
!6669 = !DILocalVariable(name: "__mptr", scope: !6670, file: !3, line: 227, type: !221)
!6670 = distinct !DILexicalBlock(scope: !6667, file: !3, line: 227, column: 2)
!6671 = !DILocation(line: 207, column: 72, scope: !6652)
!6672 = !DILocation(line: 208, column: 29, scope: !6652)
!6673 = !DILocation(line: 209, column: 32, scope: !6652)
!6674 = !DILocation(line: 210, column: 15, scope: !6652)
!6675 = !DILocation(line: 212, column: 2, scope: !6652)
!6676 = !DILocation(line: 212, column: 34, scope: !6652)
!6677 = !DILocation(line: 212, column: 67, scope: !6652)
!6678 = !DILocation(line: 212, column: 45, scope: !6652)
!6679 = !DILocation(line: 213, column: 2, scope: !6652)
!6680 = !DILocation(line: 213, column: 33, scope: !6652)
!6681 = !DILocation(line: 213, column: 57, scope: !6652)
!6682 = !DILocation(line: 213, column: 40, scope: !6652)
!6683 = !DILocation(line: 214, column: 2, scope: !6652)
!6684 = !DILocation(line: 214, column: 20, scope: !6652)
!6685 = !DILocation(line: 214, column: 26, scope: !6652)
!6686 = !DILocation(line: 214, column: 32, scope: !6652)
!6687 = !DILocation(line: 215, column: 2, scope: !6652)
!6688 = !DILocation(line: 215, column: 26, scope: !6652)
!6689 = !DILocation(line: 217, column: 7, scope: !6690)
!6690 = distinct !DILexicalBlock(scope: !6652, file: !3, line: 217, column: 6)
!6691 = !DILocation(line: 217, column: 14, scope: !6690)
!6692 = !DILocation(line: 217, column: 19, scope: !6690)
!6693 = !DILocation(line: 217, column: 23, scope: !6690)
!6694 = !DILocation(line: 217, column: 30, scope: !6690)
!6695 = !DILocation(line: 217, column: 6, scope: !6652)
!6696 = !DILocation(line: 218, column: 3, scope: !6690)
!6697 = !DILocation(line: 222, column: 7, scope: !6698)
!6698 = distinct !DILexicalBlock(scope: !6652, file: !3, line: 222, column: 6)
!6699 = !DILocation(line: 222, column: 14, scope: !6698)
!6700 = !DILocation(line: 222, column: 19, scope: !6698)
!6701 = !DILocation(line: 223, column: 6, scope: !6698)
!6702 = !DILocation(line: 223, column: 13, scope: !6698)
!6703 = !DILocation(line: 223, column: 53, scope: !6698)
!6704 = !DILocation(line: 223, column: 21, scope: !6698)
!6705 = !DILocation(line: 223, column: 18, scope: !6698)
!6706 = !DILocation(line: 222, column: 6, scope: !6652)
!6707 = !DILocation(line: 224, column: 10, scope: !6698)
!6708 = !DILocation(line: 224, column: 20, scope: !6698)
!6709 = !DILocation(line: 224, column: 41, scope: !6698)
!6710 = !DILocation(line: 224, column: 38, scope: !6698)
!6711 = !DILocation(line: 224, column: 3, scope: !6698)
!6712 = !DILocation(line: 227, column: 2, scope: !6663)
!6713 = !DILocation(line: 227, column: 2, scope: !6664)
!6714 = !DILocation(line: 227, column: 2, scope: !6667)
!6715 = !DILocation(line: 228, column: 3, scope: !6666)
!6716 = !DILocation(line: 228, column: 17, scope: !6666)
!6717 = !DILocation(line: 229, column: 27, scope: !6666)
!6718 = !DILocation(line: 229, column: 4, scope: !6666)
!6719 = !DILocation(line: 229, column: 34, scope: !6666)
!6720 = !DILocation(line: 230, column: 3, scope: !6666)
!6721 = !DILocation(line: 230, column: 17, scope: !6666)
!6722 = !DILocation(line: 230, column: 24, scope: !6666)
!6723 = !DILocation(line: 231, column: 26, scope: !6666)
!6724 = !DILocation(line: 231, column: 30, scope: !6666)
!6725 = !DILocation(line: 231, column: 5, scope: !6666)
!6726 = !DILocation(line: 231, column: 37, scope: !6666)
!6727 = !DILocation(line: 230, column: 29, scope: !6666)
!6728 = !DILocation(line: 233, column: 7, scope: !6729)
!6729 = distinct !DILexicalBlock(scope: !6666, file: !3, line: 233, column: 7)
!6730 = !DILocation(line: 233, column: 14, scope: !6729)
!6731 = !DILocation(line: 233, column: 21, scope: !6729)
!6732 = !DILocation(line: 233, column: 12, scope: !6729)
!6733 = !DILocation(line: 233, column: 26, scope: !6729)
!6734 = !DILocation(line: 233, column: 29, scope: !6729)
!6735 = !DILocation(line: 233, column: 36, scope: !6729)
!6736 = !DILocation(line: 233, column: 43, scope: !6729)
!6737 = !DILocation(line: 233, column: 34, scope: !6729)
!6738 = !DILocation(line: 233, column: 7, scope: !6666)
!6739 = !DILocation(line: 234, column: 4, scope: !6729)
!6740 = !DILocation(line: 235, column: 2, scope: !6667)
!6741 = !DILocation(line: 235, column: 2, scope: !6666)
!6742 = !DILocation(line: 227, column: 2, scope: !6670)
!6743 = distinct !{!6743, !6713, !6744, !5687, !5688}
!6744 = !DILocation(line: 235, column: 2, scope: !6664)
!6745 = !DILocation(line: 237, column: 2, scope: !6652)
!6746 = !DILocation(line: 238, column: 1, scope: !6652)
!6747 = distinct !DISubprogram(name: "i915_ttm_buddy_man_debug", scope: !3, file: !3, line: 240, type: !5301, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6748)
!6748 = !{!6749, !6750, !6751, !6752, !6753, !6756}
!6749 = !DILocalVariable(name: "man", arg: 1, scope: !6747, file: !3, line: 240, type: !5288)
!6750 = !DILocalVariable(name: "printer", arg: 2, scope: !6747, file: !3, line: 241, type: !4695)
!6751 = !DILocalVariable(name: "bman", scope: !6747, file: !3, line: 243, type: !5448)
!6752 = !DILocalVariable(name: "block", scope: !6747, file: !3, line: 244, type: !5415)
!6753 = !DILocalVariable(name: "__mptr", scope: !6754, file: !3, line: 259, type: !221)
!6754 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 259, column: 2)
!6755 = distinct !DILexicalBlock(scope: !6747, file: !3, line: 259, column: 2)
!6756 = !DILocalVariable(name: "__mptr", scope: !6757, file: !3, line: 259, type: !221)
!6757 = distinct !DILexicalBlock(scope: !6758, file: !3, line: 259, column: 2)
!6758 = distinct !DILexicalBlock(scope: !6755, file: !3, line: 259, column: 2)
!6759 = !DILocation(line: 240, column: 67, scope: !6747)
!6760 = !DILocation(line: 241, column: 30, scope: !6747)
!6761 = !DILocation(line: 243, column: 2, scope: !6747)
!6762 = !DILocation(line: 243, column: 33, scope: !6747)
!6763 = !DILocation(line: 243, column: 57, scope: !6747)
!6764 = !DILocation(line: 243, column: 40, scope: !6747)
!6765 = !DILocation(line: 244, column: 2, scope: !6747)
!6766 = !DILocation(line: 244, column: 26, scope: !6747)
!6767 = !DILocation(line: 246, column: 14, scope: !6747)
!6768 = !DILocation(line: 246, column: 20, scope: !6747)
!6769 = !DILocation(line: 246, column: 2, scope: !6747)
!6770 = !DILocation(line: 247, column: 13, scope: !6747)
!6771 = !DILocation(line: 248, column: 6, scope: !6747)
!6772 = !DILocation(line: 248, column: 12, scope: !6747)
!6773 = !DILocation(line: 248, column: 30, scope: !6747)
!6774 = !DILocation(line: 247, column: 2, scope: !6747)
!6775 = !DILocation(line: 249, column: 13, scope: !6747)
!6776 = !DILocation(line: 250, column: 11, scope: !6747)
!6777 = !DILocation(line: 250, column: 17, scope: !6747)
!6778 = !DILocation(line: 250, column: 31, scope: !6747)
!6779 = !DILocation(line: 250, column: 45, scope: !6747)
!6780 = !DILocation(line: 249, column: 2, scope: !6747)
!6781 = !DILocation(line: 251, column: 13, scope: !6747)
!6782 = !DILocation(line: 252, column: 11, scope: !6747)
!6783 = !DILocation(line: 252, column: 17, scope: !6747)
!6784 = !DILocation(line: 252, column: 30, scope: !6747)
!6785 = !DILocation(line: 252, column: 44, scope: !6747)
!6786 = !DILocation(line: 251, column: 2, scope: !6747)
!6787 = !DILocation(line: 253, column: 13, scope: !6747)
!6788 = !DILocation(line: 254, column: 11, scope: !6747)
!6789 = !DILocation(line: 254, column: 17, scope: !6747)
!6790 = !DILocation(line: 254, column: 34, scope: !6747)
!6791 = !DILocation(line: 254, column: 48, scope: !6747)
!6792 = !DILocation(line: 253, column: 2, scope: !6747)
!6793 = !DILocation(line: 256, column: 19, scope: !6747)
!6794 = !DILocation(line: 256, column: 25, scope: !6747)
!6795 = !DILocation(line: 256, column: 29, scope: !6747)
!6796 = !DILocation(line: 256, column: 2, scope: !6747)
!6797 = !DILocation(line: 258, column: 13, scope: !6747)
!6798 = !DILocation(line: 258, column: 2, scope: !6747)
!6799 = !DILocation(line: 259, column: 2, scope: !6754)
!6800 = !DILocation(line: 259, column: 2, scope: !6755)
!6801 = !DILocation(line: 259, column: 2, scope: !6758)
!6802 = !DILocation(line: 260, column: 26, scope: !6758)
!6803 = !DILocation(line: 260, column: 32, scope: !6758)
!6804 = !DILocation(line: 260, column: 36, scope: !6758)
!6805 = !DILocation(line: 260, column: 43, scope: !6758)
!6806 = !DILocation(line: 260, column: 3, scope: !6758)
!6807 = !DILocation(line: 259, column: 2, scope: !6757)
!6808 = distinct !{!6808, !6800, !6809, !5687, !5688}
!6809 = !DILocation(line: 260, column: 50, scope: !6755)
!6810 = !DILocation(line: 261, column: 16, scope: !6747)
!6811 = !DILocation(line: 261, column: 22, scope: !6747)
!6812 = !DILocation(line: 261, column: 2, scope: !6747)
!6813 = !DILocation(line: 262, column: 1, scope: !6747)
!6814 = !DISubprogram(name: "ttm_resource_init", scope: !5167, file: !5167, line: 354, type: !6815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6815 = !DISubroutineType(types: !6816)
!6816 = !{null, !30, !5228, !5165}
!6817 = distinct !DISubprogram(name: "__ilog2_u64", scope: !6818, file: !6818, line: 30, type: !6819, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6821)
!6818 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!6819 = !DISubroutineType(types: !6820)
!6820 = !{!6, !304}
!6821 = !{!6822}
!6822 = !DILocalVariable(name: "n", arg: 1, scope: !6817, file: !6818, line: 30, type: !304)
!6823 = !DILocation(line: 30, column: 21, scope: !6817)
!6824 = !DILocation(line: 32, column: 15, scope: !6817)
!6825 = !DILocation(line: 32, column: 9, scope: !6817)
!6826 = !DILocation(line: 32, column: 18, scope: !6817)
!6827 = !DILocation(line: 32, column: 2, scope: !6817)
!6828 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !6818, file: !6818, line: 55, type: !6829, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6831)
!6829 = !DISubroutineType(types: !6830)
!6830 = !{!199, !199}
!6831 = !{!6832}
!6832 = !DILocalVariable(name: "n", arg: 1, scope: !6828, file: !6818, line: 55, type: !199)
!6833 = !DILocation(line: 55, column: 50, scope: !6828)
!6834 = !DILocation(line: 57, column: 25, scope: !6828)
!6835 = !DILocation(line: 57, column: 27, scope: !6828)
!6836 = !DILocation(line: 57, column: 16, scope: !6828)
!6837 = !DILocation(line: 57, column: 13, scope: !6828)
!6838 = !DILocation(line: 57, column: 2, scope: !6828)
!6839 = !DISubprogram(name: "drm_buddy_block_trim", scope: !5417, file: !5417, line: 146, type: !6840, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6840 = !DISubroutineType(types: !6841)
!6841 = !{!6, !5435, !304, !16}
!6842 = distinct !DISubprogram(name: "drm_buddy_block_offset", scope: !5417, file: !5417, line: 91, type: !6843, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6845)
!6843 = !DISubroutineType(types: !6844)
!6844 = !{!304, !5415}
!6845 = !{!6846}
!6846 = !DILocalVariable(name: "block", arg: 1, scope: !6842, file: !5417, line: 91, type: !5415)
!6847 = !DILocation(line: 91, column: 48, scope: !6842)
!6848 = !DILocation(line: 93, column: 9, scope: !6842)
!6849 = !DILocation(line: 93, column: 16, scope: !6842)
!6850 = !DILocation(line: 93, column: 23, scope: !6842)
!6851 = !DILocation(line: 93, column: 2, scope: !6842)
!6852 = distinct !DISubprogram(name: "drm_buddy_block_size", scope: !5417, file: !5417, line: 127, type: !6853, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6855)
!6853 = !DISubroutineType(types: !6854)
!6854 = !{!304, !5435, !5415}
!6855 = !{!6856, !6857}
!6856 = !DILocalVariable(name: "mm", arg: 1, scope: !6852, file: !5417, line: 127, type: !5435)
!6857 = !DILocalVariable(name: "block", arg: 2, scope: !6852, file: !5417, line: 128, type: !5415)
!6858 = !DILocation(line: 127, column: 40, scope: !6852)
!6859 = !DILocation(line: 128, column: 32, scope: !6852)
!6860 = !DILocation(line: 130, column: 9, scope: !6852)
!6861 = !DILocation(line: 130, column: 13, scope: !6852)
!6862 = !DILocation(line: 130, column: 49, scope: !6852)
!6863 = !DILocation(line: 130, column: 27, scope: !6852)
!6864 = !DILocation(line: 130, column: 24, scope: !6852)
!6865 = !DILocation(line: 130, column: 2, scope: !6852)
!6866 = !DISubprogram(name: "ttm_resource_fini", scope: !5167, file: !5167, line: 357, type: !5292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6867 = distinct !DISubprogram(name: "fls64", scope: !6868, file: !6868, line: 401, type: !6869, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6871)
!6868 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6869 = !DISubroutineType(types: !6870)
!6870 = !{!6, !305}
!6871 = !{!6872, !6873}
!6872 = !DILocalVariable(name: "x", arg: 1, scope: !6867, file: !6868, line: 401, type: !305)
!6873 = !DILocalVariable(name: "bitpos", scope: !6867, file: !6868, line: 403, type: !6)
!6874 = !DILocation(line: 401, column: 40, scope: !6867)
!6875 = !DILocation(line: 403, column: 2, scope: !6867)
!6876 = !DILocation(line: 403, column: 6, scope: !6867)
!6877 = !DILocation(line: 409, column: 2, scope: !6867)
!6878 = !DILocation(line: 411, column: 14, scope: !6867)
!6879 = !{i64 601210}
!6880 = !DILocation(line: 412, column: 9, scope: !6867)
!6881 = !DILocation(line: 412, column: 16, scope: !6867)
!6882 = !DILocation(line: 413, column: 1, scope: !6867)
!6883 = !DILocation(line: 412, column: 2, scope: !6867)
!6884 = distinct !DISubprogram(name: "fls_long", scope: !6885, file: !6885, line: 204, type: !6886, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6888)
!6885 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!6886 = !DISubroutineType(types: !6887)
!6887 = !{!53, !199}
!6888 = !{!6889}
!6889 = !DILocalVariable(name: "l", arg: 1, scope: !6884, file: !6885, line: 204, type: !199)
!6890 = !DILocation(line: 204, column: 47, scope: !6884)
!6891 = !DILocation(line: 208, column: 15, scope: !6884)
!6892 = !DILocation(line: 208, column: 9, scope: !6884)
!6893 = !DILocation(line: 208, column: 2, scope: !6884)
!6894 = distinct !DISubprogram(name: "drm_buddy_block_order", scope: !5417, file: !5417, line: 97, type: !6895, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6897)
!6895 = !DISubroutineType(types: !6896)
!6896 = !{!53, !5415}
!6897 = !{!6898}
!6898 = !DILocalVariable(name: "block", arg: 1, scope: !6894, file: !5417, line: 97, type: !5415)
!6899 = !DILocation(line: 97, column: 47, scope: !6894)
!6900 = !DILocation(line: 99, column: 9, scope: !6894)
!6901 = !DILocation(line: 99, column: 16, scope: !6894)
!6902 = !DILocation(line: 99, column: 23, scope: !6894)
!6903 = !DILocation(line: 99, column: 2, scope: !6894)
!6904 = distinct !DISubprogram(name: "to_ttm_buddy_resource", scope: !5428, file: !5428, line: 47, type: !6905, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6907)
!6905 = !DISubroutineType(types: !6906)
!6906 = !{!5426, !5165}
!6907 = !{!6908, !6909}
!6908 = !DILocalVariable(name: "res", arg: 1, scope: !6904, file: !5428, line: 47, type: !5165)
!6909 = !DILocalVariable(name: "__mptr", scope: !6910, file: !5428, line: 49, type: !221)
!6910 = distinct !DILexicalBlock(scope: !6904, file: !5428, line: 49, column: 9)
!6911 = !DILocation(line: 47, column: 44, scope: !6904)
!6912 = !DILocation(line: 49, column: 9, scope: !6910)
!6913 = !DILocation(line: 49, column: 9, scope: !6904)
!6914 = !DILocation(line: 49, column: 2, scope: !6904)
!6915 = !DISubprogram(name: "drm_printf", scope: !4697, file: !4697, line: 93, type: !6916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6916 = !DISubroutineType(types: !6917)
!6917 = !{null, !4695, !71, null}
!6918 = !DISubprogram(name: "drm_buddy_print", scope: !5417, file: !5417, line: 154, type: !6919, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6919 = !DISubroutineType(types: !6920)
!6920 = !{null, !5435, !4695}
!6921 = !DISubprogram(name: "drm_buddy_block_print", scope: !5417, file: !5417, line: 155, type: !6922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6922 = !DISubroutineType(types: !6923)
!6923 = !{null, !5435, !5415, !4695}
!6924 = distinct !DISubprogram(name: "list_empty", scope: !5625, file: !5625, line: 371, type: !6925, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6929)
!6925 = !DISubroutineType(types: !6926)
!6926 = !{!6, !6927}
!6927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6928, size: 64)
!6928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!6929 = !{!6930}
!6930 = !DILocalVariable(name: "head", arg: 1, scope: !6924, file: !5625, line: 371, type: !6927)
!6931 = !DILocation(line: 371, column: 54, scope: !6924)
!6932 = !DILocation(line: 373, column: 9, scope: !6933)
!6933 = distinct !DILexicalBlock(scope: !6924, file: !5625, line: 373, column: 9)
!6934 = !DILocation(line: 373, column: 9, scope: !6935)
!6935 = distinct !DILexicalBlock(scope: !6933, file: !5625, line: 373, column: 9)
!6936 = !DILocation(line: 373, column: 34, scope: !6924)
!6937 = !DILocation(line: 373, column: 31, scope: !6924)
!6938 = !DILocation(line: 373, column: 2, scope: !6924)
!6939 = !DISubprogram(name: "__compiletime_assert_295", scope: !9, file: !9, line: 286, type: !863, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6940 = !DISubprogram(name: "__compiletime_assert_294", scope: !9, file: !9, line: 278, type: !863, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6941 = distinct !DISubprogram(name: "dma_fence_put", scope: !5307, file: !5307, line: 293, type: !5332, scopeLine: 294, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6942)
!6942 = !{!6943}
!6943 = !DILocalVariable(name: "fence", arg: 1, scope: !6941, file: !5307, line: 293, type: !5305)
!6944 = !DILocation(line: 293, column: 52, scope: !6941)
!6945 = !DILocation(line: 295, column: 6, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6941, file: !5307, line: 295, column: 6)
!6947 = !DILocation(line: 295, column: 6, scope: !6941)
!6948 = !DILocation(line: 296, column: 13, scope: !6946)
!6949 = !DILocation(line: 296, column: 20, scope: !6946)
!6950 = !DILocation(line: 296, column: 3, scope: !6946)
!6951 = !DILocation(line: 297, column: 1, scope: !6941)
!6952 = distinct !DISubprogram(name: "kref_put", scope: !40, file: !40, line: 62, type: !6953, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6959)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{!6, !6955, !6956}
!6955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!6956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6957, size: 64)
!6957 = !DISubroutineType(types: !6958)
!6958 = !{null, !6955}
!6959 = !{!6960, !6961}
!6960 = !DILocalVariable(name: "kref", arg: 1, scope: !6952, file: !40, line: 62, type: !6955)
!6961 = !DILocalVariable(name: "release", arg: 2, scope: !6952, file: !40, line: 62, type: !6956)
!6962 = !DILocation(line: 62, column: 41, scope: !6952)
!6963 = !DILocation(line: 62, column: 54, scope: !6952)
!6964 = !DILocation(line: 64, column: 29, scope: !6965)
!6965 = distinct !DILexicalBlock(scope: !6952, file: !40, line: 64, column: 6)
!6966 = !DILocation(line: 64, column: 35, scope: !6965)
!6967 = !DILocation(line: 64, column: 6, scope: !6965)
!6968 = !DILocation(line: 64, column: 6, scope: !6952)
!6969 = !DILocation(line: 65, column: 3, scope: !6970)
!6970 = distinct !DILexicalBlock(scope: !6965, file: !40, line: 64, column: 46)
!6971 = !DILocation(line: 65, column: 11, scope: !6970)
!6972 = !DILocation(line: 66, column: 3, scope: !6970)
!6973 = !DILocation(line: 68, column: 2, scope: !6952)
!6974 = !DILocation(line: 69, column: 1, scope: !6952)
!6975 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !44, file: !44, line: 331, type: !6976, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6979)
!6976 = !DISubroutineType(types: !6977)
!6977 = !{!578, !6978}
!6978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!6979 = !{!6980}
!6980 = !DILocalVariable(name: "r", arg: 1, scope: !6975, file: !44, line: 331, type: !6978)
!6981 = !DILocation(line: 331, column: 67, scope: !6975)
!6982 = !DILocation(line: 333, column: 33, scope: !6975)
!6983 = !DILocation(line: 333, column: 9, scope: !6975)
!6984 = !DILocation(line: 333, column: 2, scope: !6975)
!6985 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !44, file: !44, line: 313, type: !6986, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !6988)
!6986 = !DISubroutineType(types: !6987)
!6987 = !{!578, !6978, !627}
!6988 = !{!6989, !6990}
!6989 = !DILocalVariable(name: "r", arg: 1, scope: !6985, file: !44, line: 313, type: !6978)
!6990 = !DILocalVariable(name: "oldp", arg: 2, scope: !6985, file: !44, line: 313, type: !627)
!6991 = !DILocation(line: 313, column: 69, scope: !6985)
!6992 = !DILocation(line: 313, column: 77, scope: !6985)
!6993 = !DILocation(line: 315, column: 36, scope: !6985)
!6994 = !DILocation(line: 315, column: 39, scope: !6985)
!6995 = !DILocation(line: 315, column: 9, scope: !6985)
!6996 = !DILocation(line: 315, column: 2, scope: !6985)
!6997 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !44, file: !44, line: 270, type: !6998, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !7000)
!6998 = !DISubroutineType(types: !6999)
!6999 = !{!578, !6, !6978, !627}
!7000 = !{!7001, !7002, !7003, !7004}
!7001 = !DILocalVariable(name: "i", arg: 1, scope: !6997, file: !44, line: 270, type: !6)
!7002 = !DILocalVariable(name: "r", arg: 2, scope: !6997, file: !44, line: 270, type: !6978)
!7003 = !DILocalVariable(name: "oldp", arg: 3, scope: !6997, file: !44, line: 270, type: !627)
!7004 = !DILocalVariable(name: "old", scope: !6997, file: !44, line: 272, type: !6)
!7005 = !DILocation(line: 270, column: 61, scope: !6997)
!7006 = !DILocation(line: 270, column: 76, scope: !6997)
!7007 = !DILocation(line: 270, column: 84, scope: !6997)
!7008 = !DILocation(line: 272, column: 2, scope: !6997)
!7009 = !DILocation(line: 272, column: 6, scope: !6997)
!7010 = !DILocation(line: 272, column: 37, scope: !6997)
!7011 = !DILocation(line: 272, column: 41, scope: !6997)
!7012 = !DILocation(line: 272, column: 44, scope: !6997)
!7013 = !DILocation(line: 272, column: 12, scope: !6997)
!7014 = !DILocation(line: 274, column: 6, scope: !7015)
!7015 = distinct !DILexicalBlock(scope: !6997, file: !44, line: 274, column: 6)
!7016 = !DILocation(line: 274, column: 6, scope: !6997)
!7017 = !DILocation(line: 275, column: 11, scope: !7015)
!7018 = !DILocation(line: 275, column: 4, scope: !7015)
!7019 = !DILocation(line: 275, column: 9, scope: !7015)
!7020 = !DILocation(line: 275, column: 3, scope: !7015)
!7021 = !DILocation(line: 277, column: 6, scope: !7022)
!7022 = distinct !DILexicalBlock(scope: !6997, file: !44, line: 277, column: 6)
!7023 = !DILocation(line: 277, column: 13, scope: !7022)
!7024 = !DILocation(line: 277, column: 10, scope: !7022)
!7025 = !DILocation(line: 277, column: 6, scope: !6997)
!7026 = !DILocation(line: 278, column: 3, scope: !7027)
!7027 = distinct !DILexicalBlock(scope: !7022, file: !44, line: 277, column: 16)
!7028 = !DILocation(line: 278, column: 3, scope: !7029)
!7029 = distinct !DILexicalBlock(scope: !7027, file: !44, line: 278, column: 3)
!7030 = !DILocation(line: 278, column: 3, scope: !7031)
!7031 = distinct !DILexicalBlock(scope: !7029, file: !44, line: 278, column: 3)
!7032 = !DILocation(line: 278, column: 3, scope: !7033)
!7033 = distinct !DILexicalBlock(scope: !7029, file: !44, line: 278, column: 3)
!7034 = !DILocation(line: 278, column: 3, scope: !7035)
!7035 = distinct !DILexicalBlock(scope: !7033, file: !44, line: 278, column: 3)
!7036 = !{i64 2150234013}
!7037 = !DILocation(line: 279, column: 3, scope: !7027)
!7038 = !DILocation(line: 282, column: 6, scope: !7039)
!7039 = distinct !DILexicalBlock(scope: !6997, file: !44, line: 282, column: 6)
!7040 = !DILocation(line: 282, column: 6, scope: !6997)
!7041 = !DILocation(line: 283, column: 26, scope: !7039)
!7042 = !DILocation(line: 283, column: 3, scope: !7039)
!7043 = !DILocation(line: 285, column: 2, scope: !6997)
!7044 = !DILocation(line: 286, column: 1, scope: !6997)
!7045 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !7046, file: !7046, line: 397, type: !7047, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !7050)
!7046 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!7047 = !DISubroutineType(types: !7048)
!7048 = !{!6, !6, !7049}
!7049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!7050 = !{!7051, !7052}
!7051 = !DILocalVariable(name: "i", arg: 1, scope: !7045, file: !7046, line: 397, type: !6)
!7052 = !DILocalVariable(name: "v", arg: 2, scope: !7045, file: !7046, line: 397, type: !7049)
!7053 = !DILocation(line: 397, column: 30, scope: !7045)
!7054 = !DILocation(line: 397, column: 43, scope: !7045)
!7055 = !DILocation(line: 399, column: 2, scope: !7045)
!7056 = !DILocation(line: 399, column: 2, scope: !7057)
!7057 = distinct !DILexicalBlock(scope: !7045, file: !7046, line: 399, column: 2)
!7058 = !DILocation(line: 400, column: 31, scope: !7045)
!7059 = !DILocation(line: 400, column: 2, scope: !7045)
!7060 = !DILocation(line: 401, column: 38, scope: !7045)
!7061 = !DILocation(line: 401, column: 41, scope: !7045)
!7062 = !DILocation(line: 401, column: 9, scope: !7045)
!7063 = !DILocation(line: 401, column: 2, scope: !7045)
!7064 = !DISubprogram(name: "refcount_warn_saturate", scope: !44, file: !44, line: 127, type: !7065, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!7065 = !DISubroutineType(types: !7066)
!7066 = !{null, !6978, !5405}
!7067 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !7068, file: !7068, line: 94, type: !7069, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !7074)
!7068 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!7069 = !DISubroutineType(types: !7070)
!7070 = !{null, !7071, !196}
!7071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7072, size: 64)
!7072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7073)
!7073 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!7074 = !{!7075, !7076}
!7075 = !DILocalVariable(name: "v", arg: 1, scope: !7067, file: !7068, line: 94, type: !7071)
!7076 = !DILocalVariable(name: "size", arg: 2, scope: !7067, file: !7068, line: 94, type: !196)
!7077 = !DILocation(line: 94, column: 79, scope: !7067)
!7078 = !DILocation(line: 94, column: 89, scope: !7067)
!7079 = !DILocation(line: 96, column: 20, scope: !7067)
!7080 = !DILocation(line: 96, column: 23, scope: !7067)
!7081 = !DILocation(line: 96, column: 2, scope: !7067)
!7082 = !DILocation(line: 97, column: 2, scope: !7067)
!7083 = !DILocation(line: 98, column: 1, scope: !7067)
!7084 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !7085, file: !7085, line: 928, type: !7047, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !7086)
!7085 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!7086 = !{!7087, !7088}
!7087 = !DILocalVariable(name: "i", arg: 1, scope: !7084, file: !7085, line: 928, type: !6)
!7088 = !DILocalVariable(name: "v", arg: 2, scope: !7084, file: !7085, line: 928, type: !7049)
!7089 = !DILocation(line: 928, column: 34, scope: !7084)
!7090 = !DILocation(line: 928, column: 47, scope: !7084)
!7091 = !DILocation(line: 936, column: 31, scope: !7084)
!7092 = !DILocation(line: 936, column: 34, scope: !7084)
!7093 = !DILocation(line: 936, column: 9, scope: !7084)
!7094 = !DILocation(line: 936, column: 2, scope: !7084)
!7095 = distinct !DISubprogram(name: "kasan_check_write", scope: !7096, file: !7096, line: 44, type: !7097, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !7099)
!7096 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!7097 = !DISubroutineType(types: !7098)
!7098 = !{!578, !7071, !53}
!7099 = !{!7100, !7101}
!7100 = !DILocalVariable(name: "p", arg: 1, scope: !7095, file: !7096, line: 44, type: !7071)
!7101 = !DILocalVariable(name: "size", arg: 2, scope: !7095, file: !7096, line: 44, type: !53)
!7102 = !DILocation(line: 44, column: 59, scope: !7095)
!7103 = !DILocation(line: 44, column: 75, scope: !7095)
!7104 = !DILocation(line: 46, column: 2, scope: !7095)
!7105 = distinct !DISubprogram(name: "kcsan_check_access", scope: !7106, file: !7106, line: 229, type: !7107, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !7109)
!7106 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!7107 = !DISubroutineType(types: !7108)
!7108 = !{null, !7071, !196, !6}
!7109 = !{!7110, !7111, !7112}
!7110 = !DILocalVariable(name: "ptr", arg: 1, scope: !7105, file: !7106, line: 229, type: !7071)
!7111 = !DILocalVariable(name: "size", arg: 2, scope: !7105, file: !7106, line: 229, type: !196)
!7112 = !DILocalVariable(name: "type", arg: 3, scope: !7105, file: !7106, line: 230, type: !6)
!7113 = !DILocation(line: 229, column: 60, scope: !7105)
!7114 = !DILocation(line: 229, column: 72, scope: !7105)
!7115 = !DILocation(line: 230, column: 15, scope: !7105)
!7116 = !DILocation(line: 230, column: 23, scope: !7105)
!7117 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !7118, file: !7118, line: 101, type: !7047, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !5388, retainedNodes: !7119)
!7118 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!7119 = !{!7120, !7121, !7122}
!7120 = !DILocalVariable(name: "i", arg: 1, scope: !7117, file: !7118, line: 101, type: !6)
!7121 = !DILocalVariable(name: "v", arg: 2, scope: !7117, file: !7118, line: 101, type: !7049)
!7122 = !DILocalVariable(name: "__ret", scope: !7123, file: !7118, line: 103, type: !6)
!7123 = distinct !DILexicalBlock(scope: !7117, file: !7118, line: 103, column: 9)
!7124 = !DILocation(line: 101, column: 54, scope: !7117)
!7125 = !DILocation(line: 101, column: 67, scope: !7117)
!7126 = !DILocation(line: 103, column: 9, scope: !7123)
!7127 = !{i64 2148943500, i64 2148943539, i64 2148943560, i64 2148943597, i64 2148943620, i64 2148943629}
!7128 = !DILocation(line: 103, column: 9, scope: !7117)
!7129 = !DILocation(line: 103, column: 2, scope: !7117)
